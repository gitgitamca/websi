<?php 

require_once 'class-veri.php';

/**
 * Kupon Sistemi
 */
class kupon extends veri
{
	public function ekle()
	{
		$_POST['satici']=ses("kul_id");

		if (!$this->varmi($_POST['kupon_kodu'])) {

			if (strlen($_POST['adet'])==0) {
				$_POST['adet']=99999999;
			}

			if (yetkikontrol(h)) {
				$_POST['satici']=0;
			}
			

			return $this->direktekle("kuponlar", $_POST, "kuponekle", true);
		} else {
			$_SESSION['hata']="This coupon code is being used by someone else, please try a different coupon code";
			return false;
		}

		
	}

	public function varmi($kod)
	{
		$kod=guvenlik($kod);
		$sayi=$this->tek("SELECT COUNT(kupon_id) as sayi FROM kuponlar WHERE kupon_kodu='$kod'",true)->sayi;

		if ($sayi==0) {
			return false;
		} else {
			return true;
		}

	}

	public function guncelle()
	{
		if (!yetkikontrol(h)) {
			$this->kupon_kontrol($_POST['kupon_id']);
		}
		
		return $this->direktguncelle("kuponlar", "kupon_id", $_POST['kupon_id'], $_POST, "kupon_id", "kuponguncelle",true);
	}

	public function kupon_bilgi($kod, $id=false)
	{
		$kod=guvenlik($kod);
		if ($id) {
			sayi($kod);
			$kosul="kupon_id=$kod";
		} else {
			$kosul="kupon_kodu='$kod'";
		}

		return $this->tek("SELECT * FROM kuponlar WHERE $kosul",true);
	}

	public function durum($deger, $id=false)
	{
		try {

			$deger=guvenlik($deger);
			
			if ($id) {
				sayi($deger);
				$kosul="kupon_id=$deger";
			} else {
				$kosul="kupon_kodu='$deger'";
			}

			$ku=$this->tek("SELECT * FROM kuponlar WHERE $kosul",true);

			if (!isset($ku->kupon_id)) {
				throw new Exception("No Coupon Found", 1);
			}

			$simdi=strtotime(date("Y-m-d H:i:s"));
			$son=strtotime($ku->son_kullanim);
			$fark=$son-$simdi;


			if ($ku->kupon_durum==0) {
				throw new Exception("Coupon Code Inactive");
			} elseif ($fark <= 0) {
				throw new Exception("This Coupon Has Expired");
			} elseif ($ku->adet <= 0) {
				throw new Exception("Number of Persons to Use Exceeded");
			}


			return true;

		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return false;
		}

	}

	public function fiyat_hesapla($urun_fiyat,$kupon_yuzde)
	{
		$indirim=($urun_fiyat*$kupon_yuzde)/100;
		$guncel_fiyat=$urun_fiyat-$indirim;
		return ['i' => $indirim, 'g' => $guncel_fiyat];
	}

	public function tek_kullan($kod,$urun_id,$adet=1)
	{
		try {
			$kupon=$this->kupon_bilgi($kod);
			$sonuc=$this->durum($kod);
			$urun=$this->urun_getir($urun_id, true);

			if (!$sonuc) {
				throw new Exception($_SESSION['hata']);
			}

			if ($kupon->satici!=0) {
				if ($kupon->satici!=$urun->satici) {
					throw new Exception("The coupon code you want to use does not belong to the seller of the product in your cart.", 1);
				}
			}

			$urun_fiyat=$this->fiyat($urun)*$adet;

			$hesap=$this->fiyat_hesapla($urun_fiyat, $kupon->yuzde);

			return [
				'durum' => 'ok',
				'mesaj' => "Discount Applied Successfully",
				'indirim' => $hesap['i'],
				'guncel_fiyat' => $hesap['g'],
				'normal_fiyat' => $urun_fiyat,
				'oran' => $kupon->yuzde,
				'kupon' => $kod
			];

		} catch (Exception $e) {
			return ['durum' => 'no', 'mesaj' => $e->getMessage()];
		}

	}

	public function kullan($kod,$son=false)
	{
		try {
			global $sepet;

			$sepet_icerik=$sepet->sepet_icerik();
			$saticilar=[];

			$kupon=$this->kupon_bilgi($kod);
			$sonuc=$this->durum($kod);

			if (!$sonuc) {
				throw new Exception($_SESSION['hata']);
			}


			if ($kupon->satici!=0) {
				foreach ($sepet_icerik as $key => $value) {
					$satici=$this->tek("SELECT satici FROM urun WHERE urun_id={$value['urun']}",true)->satici;
					array_push($saticilar, $satici);
				}

				$saticilar=array_unique($saticilar);

				if (count($saticilar)==0) {
					throw new Exception("Please Check The Items In Your Cart", 1);
				} elseif (count($saticilar)!=1) {
					throw new Exception("There are products from different sellers, Only add the products of that seller to your cart to which the coupon code belongs to.", 1);
				} else {
					foreach ($sepet_icerik as $key => $value) {
						$satici=$this->tek("SELECT satici FROM urun WHERE urun_id={$value['urun']}",true)->satici;
						if ($satici!=$kupon->satici AND $kupon->satici!=0) {
							throw new Exception("This coupon code does not belong to the store that owns the items in your cart.", 1);
						}
					}
				}
			}

			$sepet_fiyat=$sepet->sepet_fiyat();

			$indirim=($sepet_fiyat*$kupon->yuzde)/100;
			$guncel_fiyat=$sepet_fiyat-$indirim;

			if ($son) {
				$this->tek("UPDATE kuponlar SET kullanim = kullanim + 1 WHERE kupon_id=$kupon->kupon_id");
			}

			return [
				'durum' => 'ok',
				'mesaj' => "Discount Applied Successfully",
				'indirim' => $indirim."$",
				'guncel_fiyat' => $guncel_fiyat."$",
				'normal_fiyat' => $sepet_fiyat."$",
				'oran' => "%".$kupon->yuzde,
				'kupon' => $kod
			];

		} catch (Exception $e) {
			return ['durum' => 'no', 'mesaj' => $e->getMessage()];
		}
	}

	public function kuponlar($admin=false,$kul=x)
	{

		if ($admin) {
			$kosul="satici!=-1";
		} else {
			if ($kul==x) {
				$kosul="satici={$_SESSION['kul_id']}";
			} else {
				$kosul="satici=$kul";
			}
		}

		return $this->cok("SELECT * FROM kuponlar WHERE $kosul",true);
	}

	public function kupon_siparis($kod)
	{
		return $this->cok("SELECT sip_id FROM siparis WHERE kupon='$kod'",true);
	}

	public function kod($id)
	{
		return $this->tek("SELECT * FROM kuponlar WHERE kupon_id=$id",true);
	}

	public function kullanim_adet($kupon)
	{
		return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis WHERE kupon='$kupon' ",true)->sayi;
	}

	public function kupon_kontrol($kod,$id=true,$yonlendirme=true)
	{
		if ($id) {
			$kosul=" kupon_id=$kod ";
		} else {
			$kosul=" kupon_kodu='$kod' ";
		}


		$sayi = $this->tek("SELECT COUNT(kupon_id) as sayi FROM kuponlar WHERE satici={$_SESSION['kul_id']} AND $kosul",true)->sayi;
		if ($sayi==0) {
			if ($yonlendirme) {
				git(yol, "izinsiz");
			} else {
				return false;
			}
			
		} else {
			return true;
		}


	}

}


?>