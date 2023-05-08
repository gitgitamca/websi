<?php 

class sepet extends veri
{

	public function bosmu()
	{
		$sepet=@json_decode(@$_COOKIE['aksoyhlc_hesap_sepet'],true);
		if (is_array($sepet)) {
			if (count($sepet)==0) {
				return true;
			} else {
				return false;
			}
		} else {
			return true;
		}
	}

	public function sepet_icerik()
	{
		if (isset($_COOKIE['aksoyhlc_hesap_sepet'])) {
			$sepet=json_decode($_COOKIE['aksoyhlc_hesap_sepet'],true);
		} else {
			$sepet=[];
		}

		return $sepet;
	}

	public function sepet_fiyat()
	{
		$ucret=0;
		foreach ($this->sepet_icerik() as $key => $value) {
			$fiyat=$this->urun_fiyat($value['urun']);
			$ucret+=($fiyat*$value['adet']);
		}

		return $ucret;
	}

	public function sepet_adet_degistir()
	{
		$sepet=$this->sepet_icerik();
		
		$sepet_urun=$sepet[$_POST['sepet_id']];

		$urun=$this->urun_getir($sepet_urun['urun'], true);

		$ileri=false;
//pre($urun);
		if ($urun->teslim_tur==0) {
			$hesap_sayisi=$this->hesap_sayisi($urun->urun_id);
			if ($hesap_sayisi < $_POST['adet']) {
				$ileri=false;
				return json_encode(['durum' => 'no','max' => $hesap_sayisi,'mesaj' => "You can add maximum  ".$hesap_sayisi." pieces of this item to your cart."]);
			} else {
				$ileri=true;
			}
			
		} else {
			if ($urun->stok < $_POST['adet']) {
				$ileri=false;
				return json_encode(['durum' => 'no','max' => $urun->stok,'mesaj' => "You can add maximum ".$urun->stok." pieces of this item to your cart."]);
			} else {
				$ileri=true;
			}
		}




		if ($ileri) {
			$urun_fiyat=$this->urun_fiyat($sepet_urun['urun']);

			$sepet[$_POST['sepet_id']]['urun']=$sepet_urun['urun'];
			$sepet[$_POST['sepet_id']]['adet']=$_POST['adet'];

			$this->sepet_guncelle($sepet);

			return json_encode(['durum' => 'ok', 'tek_ucret' => $urun_fiyat*$_POST['adet'], 'toplam_ucret' => $this->sepet_fiyat()]);
		}	
	}

	public function urun_fiyat($urun_id)
	{
		$urun=$this->tek("SELECT * FROM urun WHERE urun_id=$urun_id",true);
		return $this->fiyat($urun);
	}

	public function sepet_sil()
	{
		$sepet=$this->sepet_icerik();
		unset($sepet[$_POST['id']]);
		$this->sepet_guncelle($sepet);
		return json_encode(['durum' => 'ok', 'ucret' => $this->sepet_fiyat()]);
	}

	public function sepete_ekle()
	{
		$sepet=$this->sepet_icerik();

		$urun=$this->urun_getir($_POST['urun'], true);

		$ileri=false;

		if ($urun->teslim_tur==0) {
			$hesaplar=$this->random_hesap($urun->urun_id,$_POST['adet']);
			if (count($hesaplar) < $_POST['adet']) {
				$ileri=false;
				return json_encode(['durum' => 'no','mesaj' => "You can add maximum ".count($hesaplar)." pieces of this item to your cart."]);
			} else {
				$ileri=true;
			}
			
		} else {
			if ($urun->stok < $_POST['adet']) {
				$ileri=false;
				return json_encode(['durum' => 'no','mesaj' => "You can add maximum ".$urun->stok." pieces of this item to your cart."]);
			} else {
				$ileri=true;
			}
		}

		if ($ileri) {
			$sepet[rand(1000000,9999999)]=['urun' => $_POST['urun'], 'adet' => $_POST['adet']];

			$this->sepet_guncelle($sepet);
		}
		
		
		return json_encode(['durum' => 'ok']);
	}

	public function sepet_guncelle($sepet)
	{
		$_COOKIE['aksoyhlc_hesap_sepet']=json_encode(@$sepet);
		@setcookie("aksoyhlc_hesap_sepet",json_encode(@$sepet),strtotime("+20 day"),"/");
	}

	public function sepet_bosalt()
	{
		@setcookie("aksoyhlc_hesap_sepet",json_encode([]),strtotime("-20 day"),"/");
	}

	public function urunleri_teslim_et($kup="x")
	{
		try {
			$kupon = new kupon($this->db);
			$bil = new bildirim($this->db);

			$bilgilendirme_mesaji="";

			$simdi = date("Y-m-d H:i:s");
			$metin="";
			$liste=[];
			$sepet=$this->sepet_icerik();

			foreach ($sepet as $sepet_key => $value) {
				$urun=$this->urun_getir($value['urun'],true);

				if ($urun->teslim_tur==0) {
					$hesaplar=$this->random_hesap($urun->urun_id,$value['adet']);



					if (count($hesaplar)==0) {
						$metin.="<br><b>".$urun->urun_baslik."</b> - There is no stock for the titled product. The price for this product will not be deducted from your balance.";	
					} else {

						if (count($hesaplar) < $value['adet']) {
							$metin.="<br><b>".$urun->urun_baslik."</b> - başlıklı üründen ".$value['adet']." adet almak istediniz ancak stoklarda ".count($hesaplar)." adet hesap bulunmaktadır ve ".count($hesaplar)." adet hesap teslim edilmiştir." ;	
							$value['adet']=count($hesaplar);
						} else {
							$metin.="<br><b>".$urun->urun_baslik."</b> - item purchase has been successfully completed.";	
						}

						$urun->hesaplar=$hesaplar;
						$urun->sepet_id=$sepet_key;
						$urun->adet=$value['adet'];

						if ($kup=="x") {
							$urun->toplam_ucret=$this->fiyat($urun)*$value['adet'];
						} else {
							$kullan=$kupon->tek_kullan($kup, $urun->urun_id,$value['adet']);
							if ($kullan['durum']=='no') {
								$urun->toplam_ucret=$this->fiyat($urun)*$value['adet'];
							} else {
								$urun->toplam_ucret=$kullan['guncel_fiyat'];
								$urun->normal_fiyat=$kullan['normal_fiyat'];
								$urun->kupon=$kullan['kupon'];
								$urun->indirim_miktari=$kullan['indirim'];
								$urun->indirim_orani=$kullan['oran'];
								$urun->indirimli_fiyat=$kullan['guncel_fiyat'];
							}
						}
						$liste[$urun->urun_id]=$urun;

					}

				} else {
					
					if ($urun->stok < $value['adet']) {
						$metin.="<br><b>".$urun->urun_baslik."</b> - başlıklı üründen ".$value['adet']." adet almak istediniz ancak stoklarda ".$urun->stok." adet hesap bulunmaktadır ve ".$urun->stok." adet hesap teslim edilmiştir." ;	
						$value['adet']=$urun->stok;
					} else {
						$metin.="<br><b>".$urun->urun_baslik."</b> - item purchase has been successfully completed.";	
					}



					$urun->sepet_id=$sepet_key;
					$urun->adet=$value['adet'];
					if ($kup=="x") {
						$urun->toplam_ucret=$this->fiyat($urun)*$value['adet'];
					} else {
						$kullan=$kupon->tek_kullan($kup, $urun->urun_id,$value['adet']);
						if ($kullan['durum']=='no') {
							$urun->toplam_ucret=$this->fiyat($urun)*$value['adet'];
						} else {
							$urun->toplam_ucret=$kullan['guncel_fiyat'];
							$urun->normal_fiyat=$kullan['normal_fiyat'];
							$urun->kupon=$kullan['kupon'];
							$urun->indirim_miktari=$kullan['indirim'];
							$urun->indirim_orani=$kullan['oran'];
							$urun->indirimli_fiyat=$kullan['guncel_fiyat'];
						}
					}
					$liste[$urun->urun_id]=$urun;
					$metin.="<br><b>".$urun->urun_baslik."</b> - titled product will be sent manually by the seller. You can contact the seller by creating a support ticket in the My Orders section.";	
				}

			}

			$giris="<style>td,th,table{

				border: 1px solid grey;
				border-collapse: collapse;
				padding:10px;

				}</style><table>
				<thead>
				<tr>
				<th style='border: 1px solid black; padding: 10px;'>Item</th>		
				<th style='border: 1px solid black; padding: 10px;'>Item info</th>
				<th style='border: 1px solid black; padding: 10px;'>Purchase Date</th>
				<th style='border: 1px solid black; padding: 10px;'>Expiration date</th>
				</tr>
				</thead>
				<tbody>";
				$cikis="
				</tbody>
				</table>";

				$hesap_tablo="";
				$genel_toplam=0;

				foreach ($liste as $urun_key => $urun_var) {

					$komisyon_alinan=$urun_var->toplam_ucret*($this->ayarlar['komisyon_oran']/100);


					$this->direktekle("siparis", [
						'kul' => ses("kul_id"),
						'urun' => $urun_var->urun_id,
						'ucret' => $urun_var->toplam_ucret,
						'adet' => $urun_var->adet,
						'komisyon_oran' => $this->ayarlar['komisyon_oran'],
						'komisyon_alinan' => $komisyon_alinan,
						'normal_fiyat' => $urun_var->normal_fiyat,
						'kupon' => $urun_var->kupon,
						'indirim_miktari' => $urun_var->indirim_miktari,
						'indirim_orani' => $urun_var->indirim_orani,
						'indirimli_fiyat' => $urun_var->indirimli_fiyat
					]);

					$sip_id=$this->sonid("siparis", "sip_id");

					if (isset($urun_var->hesaplar)) {
						foreach ($urun_var->hesaplar as $key => $value) {
							$this->direktguncelle("hesaplar", "hesap_id", $value->hesap_id,[
								'hesap_durum' => 2,
								'satis_tarih' => $simdi,
								'satin_alan' => ses("kul_id"),
								'siparis' => $sip_id
							]);

							$hesap_tablo=$hesap_tablo."<tr>
							<td style='border: 1px solid black; padding: 10px;'>$urun_var->urun_baslik</td>
							<td style='border: 1px solid black; padding: 10px;'>".nl2br($value->icerik)."</td>
							<td style='border: 1px solid black; padding: 10px;'>".date('Y-m-d H:i')."</td>
							<td style='border: 1px solid black; padding: 10px;'>$value->son_kullanim</td>
							</tr>";
						}
					}

					$genel_toplam+=$urun_var->toplam_ucret;

					$this->bakiye_dus($urun_var->toplam_ucret);
					
					if ($urun_var->teslim_tur!=0) {
						$this->tek("UPDATE urun SET stok = stok - 1 WHERE urun_id = $urun_var->urun_id");
					}

					

					$satici=$this->tek("
						SELECT * FROM urun 
						INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
						WHERE urun.satici=$urun_var->satici 
						",true);
					$bilgilendirme_mesaji.='"'.$urun_var->urun_baslik.'" başlıklı ürün için "'.$urun_var->toplam_ucret.para().'" değerinde sipariş oluşturuldu. Sipariş içerisinde "'.$urun_var->adet.'" adet ürün bulunmaktadır.'."<br><br>";
					
				}


				$bil->onesignal("New Order Created", mb_substr($bilgilendirme_mesaji, 0,200), [$satici->uygulama_bildirim]);
				$bil->onesignal_web("New Order Created", mb_substr($bilgilendirme_mesaji, 0,200), [$satici->web_bildirim]);
				$bil->telegram("New Order Created", $bilgilendirme_mesaji, $satici->tg_id);
				$post=[
					'mail_baslik' => "New Order Created",
					'mail_isim' => $this->ayarlar['site_baslik'],
					'mail_adres' => $satici->kul_mail,
					'mail_detay' => "<h3>$bilgilendirme_mesaji</h3>"
				];
				$this->mailgonder($post, $tur);
				

				$hesap_tablo=$giris.$hesap_tablo.$cikis;
				$metin.="<h4>Total price you paid: ".$genel_toplam."$</h4>";
				$post=[
					'mail_baslik' => "Product Purchase Process",
					'mail_isim' => $this->ayarlar['site_baslik'],
					'mail_adres' => ses("kul_mail"),
					'mail_detay' => "<h3>Account Information and Additional Notes for the Products You Have Purchased</h3>".$hesap_tablo."<hr>$metin"
				];
				$this->mailgonder($post, $tur);

				//$this->sms("Sayın {$_SESSION['kul_isim']}, satın aldığınız ürünlere ait bilgilere panelinizden ulaşabilirsiniz.");
				$this->sepet_bosalt();
				return [
					'durum' => 'ok',
					'metin' => $metin,
					'ucret' => $genel_toplam
				];
			} catch (Exception $e) {
				$_SESSION['hata']=$e->getMessage();
				return [
					'durum' => 'no',
					'mesaj' => $e->getMessage()
				];
			}

		}



		
























	}


	?>