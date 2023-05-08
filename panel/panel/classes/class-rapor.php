<?php 
require_once 'class-veri.php';


class rapor extends veri
{
	public $kosul_sorgu;
	public $sip_tarih;
	public $hesap_satis_tarih;


	public function kosul($admin=false,$satici="x",$urun=x)
	{
		if ($admin) {
			if ($satici=="x") {
				$this->kosul_sorgu = "urun.satici!=0";
			} else {
				$this->kosul_sorgu = "urun.satici=$satici";
			}
		} else {
			if ($satici=="x") {
				$this->kosul_sorgu = "urun.satici={$_SESSION['kul_id']}";
			} else {
				$this->kosul_sorgu = "urun.satici=$satici";
			}
		}

		if ($urun!=x) {
			$this->kosul_sorgu.=" AND urun.urun_id=$urun";
		}

		$this->tarih();
	}

	public function tarih()
	{
		if (strlen(@$_GET['baslangic'])>4 AND strlen(@$_GET['bitis'])>4) {
			$this->sip_tarih="(tarih BETWEEN '{$_GET['baslangic']} 00:00:01' AND '{$_GET['bitis']} 23:59:59')";
			$this->hesap_satis_tarih="(satis_tarih BETWEEN '{$_GET['baslangic']} 00:00:01' AND '{$_GET['bitis']} 23:59:59')";
		} else {
			$this->sip_tarih="sip_id!=0";
			$this->hesap_satis_tarih="hesap_id!=0";
		}
	}

	public function toplam_gelir($sayi_fromat=false)
	{
		$sayi=$this->tek("SELECT SUM(ucret-komisyon_alinan) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND $this->sip_tarih AND sip_durum=2",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}

	public function satilan_hesap()
	{
		return $this->tek("SELECT COUNT(hesap_id) as sayi FROM hesaplar INNER JOIN urun ON hesaplar.urun=urun.urun_id WHERE $this->kosul_sorgu AND $this->hesap_satis_tarih AND hesap_durum=2",true)->sayi;
	}

	public function bekleyen_hesap()
	{
		return $this->tek("SELECT COUNT(hesap_id) as sayi FROM hesaplar INNER JOIN urun ON hesaplar.urun=urun.urun_id WHERE $this->kosul_sorgu AND $this->hesap_satis_tarih AND hesap_durum=1",true)->sayi;
	}


	public function toplam_hesap()
	{
		return $this->tek("SELECT COUNT(hesap_id) as sayi FROM hesaplar INNER JOIN urun ON hesaplar.urun=urun.urun_id WHERE $this->kosul_sorgu AND $this->hesap_satis_tarih",true)->sayi;
	}

	public function siparis_sayisi()
	{
		return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND $this->sip_tarih AND sip_durum=2",true)->sayi;
	}

	public function cekilen_bakiye($kul=x,$sayi_fromat=false)
	{
		if ($kul==x) {
			$kul=ses("kul_id");
		}

		$sayi = $this->tek("SELECT SUM(ucret) as sayi FROM talep WHERE kul=$kul AND (durum=2 OR durum=3) AND odeme_tarihi IS NOT NULL",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}


	public function genel_toplam_gelir($sayi_fromat=false)
	{
		/*return $this->tek("SELECT SUM(ucret) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND sip_durum=2",true)->sayi;*/
		$sayi = $this->tek("SELECT SUM(ucret-komisyon_alinan) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND sip_durum=2",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}

	public function kalan_bakiye($kul=x)
	{
		if ($kul==x) {
			$kul=ses("kul_id");
		}
		$cekilen=$this->tek("SELECT SUM(ucret) as sayi FROM talep WHERE kul=$kul AND (durum=2 OR durum=3) AND odeme_tarihi IS NOT NULL",true)->sayi;
		
		return para_yazi($this->genel_toplam_gelir(true)-$cekilen,2);
	}

	public function bugun_siparis()
	{
		$simdi = date("Y-m-d");
		return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND (tarih BETWEEN '$simdi 00:00:01' AND '$simdi 23:59:59') AND sip_durum=2",true)->sayi;
	}


	public function bugun_tl()
	{
		$simdi = date("Y-m-d");
		$sayi = $this->tek("SELECT SUM(ucret-komisyon_alinan) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND (tarih BETWEEN '$simdi 00:00:01' AND '$simdi 23:59:59') AND sip_durum=2",true)->sayi;
		return para_yazi($sayi);
	}

	public function buay_siparis()
	{
		$simdi = date("Y-m");
		return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND (tarih BETWEEN '$simdi-01 00:00:01' AND '$simdi-31 23:59:59') AND sip_durum=2",true)->sayi;
	}


	public function buay_tl()
	{
		$simdi = date("Y-m");
		$sayi = $this->tek("SELECT SUM(ucret-komisyon_alinan) as sayi FROM siparis INNER JOIN urun ON siparis.urun=urun.urun_id WHERE $this->kosul_sorgu AND (tarih BETWEEN '$simdi-01 00:00:01' AND '$simdi-31 23:59:59') AND sip_durum=2",true)->sayi;
		return para_yazi($sayi);
	}



	public function tek_urun_kazanc($urun_id,$toplam=false)
	{
		if ($toplam) {
			$sec="SUM(ucret)";
		} else {
			$sec="SUM(ucret-komisyon_alinan)";
		}

		$sayi=$this->tek("SELECT $sec as sayi FROM siparis WHERE urun=$urun_id AND sip_durum=2",true)->sayi;
		return para_yazi($sayi);
	}




	public function urun_bugun_inceleme($urun_id)
	{
		$tarih=date("Y-m-d");
		$oncekiler = $this->tek("SELECT SUM(inceleme_sayisi) AS sayi FROM inceleme_sayisi WHERE urun=$urun_id AND tarih < '$tarih' ")['sayi'];
		$toplam = $this->tek("SELECT urun_see FROM urun WHERE urun_id=$urun_id")['urun_see'];

		return $toplam-$oncekiler;
	}

	public function urun_sonyedi_inceleme($urun_id)
	{
		$simdi=date("Y-m-d");
		$once=date("Y-m-d",strtotime("-7 days"));
		$sayi = $this->tek("SELECT SUM(inceleme_sayisi) AS sayi FROM inceleme_sayisi WHERE urun=$urun_id AND (tarih BETWEEN '$once' AND '$simdi') ")['sayi'];

		return $sayi;
	}

	public function urun_buay_inceleme($urun_id)
	{
		$simdi=date("Y-m-d");
		$once=date("Y-m-d",strtotime("-1 month"));
		$sayi = $this->tek("SELECT SUM(inceleme_sayisi) AS sayi FROM inceleme_sayisi WHERE urun=$urun_id AND (tarih BETWEEN '$once' AND '$simdi') ")['sayi'];

		return $sayi;
	}


	public function toplam_inceleme($urun_id)
	{
		$toplam = $this->tek("SELECT urun_see FROM urun WHERE urun_id=$urun_id")['urun_see'];
		return $toplam;
	}

	public function bugun_bakiye($sayi_fromat=false)
	{
		$tarih=date("Y-m-d");
		$sayi = $this->tek("SELECT SUM(bakiye_ucret) as sayi FROM bakiye WHERE bakiye_tarih BETWEEN '$tarih 00:00:00' AND '$tarih 23:59:59'",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}


	public function buhafta_bakiye($sayi_fromat=false)
	{
		$simdi=date("Y-m-d")." 23:59:59";
		$once=date("Y-m-d",strtotime("-7 days"))." 00:00:00";
		$sayi = $this->tek("SELECT SUM(bakiye_ucret) as sayi FROM bakiye WHERE bakiye_tarih BETWEEN '$once' AND '$simdi'",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}


	public function buay_bakiye($sayi_fromat=false)
	{
		$tarih=date("Y-m");
		$sayi = $this->tek("SELECT SUM(bakiye_ucret) as sayi FROM bakiye WHERE bakiye_tarih BETWEEN '".$tarih."-01 00:00:00' AND '".$tarih."-31 23:59:59'",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}


	public function toplam_bakiye($sayi_fromat=false)
	{
		$tarih=date("Y-m-d");
		$sayi = $this->tek("SELECT SUM(bakiye_ucret) as sayi FROM bakiye",true)->sayi;
		if ($sayi_fromat) {
			return $sayi;
		} else {
			return para_yazi($sayi);
		}
	}




}


?>