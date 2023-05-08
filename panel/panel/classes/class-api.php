<?php 
require __DIR__.'/../config.php';
/**
 * API İşlemleri
 */
class api extends veri
{

	public $satici;
	public $kul_id;
	public $api_key;
	public $hata_mesaji;

	public function api_dogrula($api_key)
	{
		try {

			if (strlen($api_key)==0) {
				throw new Exception("API KEY cannot be empty");
			}


			if (strlen($api_key)!=40) {
				throw new Exception("API KEY Incorrect");
			}

			$sonuc=$this->tek("SELECT * FROM kullanicilar WHERE api_key='$api_key'",true);

			if (!isset($sonuc->kul_id)) {
				throw new Exception("The seller for this API KEY was not found");
			}

			if ($sonuc->satici==0) {
				throw new Exception("This seller's store is not active");
			}

			if ($sonuc->api_durum==0) {
				throw new Exception("This seller's API transactions are not active");
			}

			if ($sonuc->kul_durum==0) {
				throw new Exception("This seller's membership has been disabled, you cannot trade");
			}
			
			$this->satici=$sonuc;
			$this->kul_id=$sonuc->kul_id;

			return true;
		} catch (Exception $e) {
			$this->hata_mesaji=$e->getMessage();
			return false;
		}
	}

	public function urunler(): array
    {
		$urun = new urun($this->db);
		$rapor = new rapor($this->db);

		$urunler = $this->cok("SELECT * FROM urun WHERE satici=$this->kul_id",true);

		$icerik=[];

		foreach ($urunler as $key => $var) {

			$var->stok=$this->stok_kontrol($var);
			$var->kapak_resmi=[
				'kucuk' => kucuk_resim.$var->urun_one_cikan,
				'orta' => orta_resim.$var->urun_one_cikan,
				'buyuk' => resim.$var->urun_one_cikan,
			];

			$var->icerik_resimleri=[
				'link' => urun_galeri."isim_parametresi",
				'icerik' => $this->urun_galeri($var->urun_id, 9999)
			];

			$var->satis_sayisi=$urun->basarili_siparis($var->urun_id);
			$var->net_kazanc=$rapor->tek_urun_kazanc($var->urun_id).para();
			$var->degerlendirme=$this->yildiz($var->urun_id);


			array_push($icerik, $var);
		}

		return $icerik;

	}

	/**
	 * [api_siparisler description]
	 * @param  integer $tur 
	 * 0 => İptal Edilenler, 
	 * 1 => Ödeme Beklenenler, 
	 * 2 => Başarılı Siparişler 
	 * 3 => Müşteri Ürünü Almadı 
	 * 4 => Ürün Hatalı
	 */
	public function api_siparisler($tur=-1)
	{
		sayi($tur);
		if ($tur==-1) {
			$kosul="sip_id!=-1";
		} else {
			$kosul="sip_durum=$tur";
		}

		return [
			'sip_durum_parametreleri' => sip_durum() ,
			'icerik' => $this->cok("SELECT * FROM siparis WHERE $kosul",true)
		];
	}

	public function yorumlar($urun_id)
	{
		sayi($urun_id);
		urun_kontrol($urun_id, e, $this->kul_id);
		return [
			'profil_resim_link' => logo."kul_logo_parametresi",
			'yorumlar' => $this->cok("SELECT yildiz.*, kul_isim,kul_soyisim,kul_logo FROM yildiz INNER JOIN kullanicilar ON kullanicilar.kul_id=yildiz.kullanici WHERE urun=$urun_id",true
		)
		];
	}

	public function api_tek_urun($urun_id)
	{
		$urun = new urun($this->db);
		$rapor = new rapor($this->db);

		sayi($urun_id);
		urun_kontrol($urun_id, e, $this->kul_id);

		$var = $this->tek("SELECT * FROM urun WHERE urun_id=$urun_id",true);
		$var->stok=$this->stok_kontrol($var);
		$var->kapak_resmi=[
			'kucuk' => kucuk_resim.$var->urun_one_cikan,
			'orta' => orta_resim.$var->urun_one_cikan,
			'buyuk' => resim.$var->urun_one_cikan,
		];



		$var->icerik_resimleri=[
			'link' => urun_galeri."isim_parametresi",
			'icerik' => $this->urun_galeri($var->urun_id, 9999)
		];


		$var->satis_sayisi=$urun->basarili_siparis($var->urun_id);
		$var->net_kazanc=$rapor->tek_urun_kazanc($var->urun_id).para();
		$var->degerlendirme=$this->yildiz($var->urun_id);
		return $var;
	}

	public function api_hesaplar($urun_id,$durum=-1)
	{
		if ($durum==-1) {
			$kosul=" hesap_durum!=-1 ";
		} else {
			$kosul="hesap_durum=$durum";
		}
		
		return [
			'durum' => hesap_durum(),
			'icerik' => $this->cok("SELECT * FROM hesaplar WHERE urun=$urun_id AND $kosul",true)
		];
	}

	public function tickets()
	{
		$tickets=$this->cok("SELECT * FROM ticket WHERE satici=$this->kul_id",true);
		$tic=[];
		foreach ($tickets as $key => $var) {
			$var->ticket_uye=$this->kullanici($var->ticket_uye,"kul_id,kul_isim,kul_soyisim,kul_logo");
			array_push($tic, $var);
		}

		return $tic;
	}

	public function ticket($ticket_id)
	{
		sayi($ticket_id);
		ticket_kontrol($ticket_id, true, e, $this->kul_id);

		$var = $this->tek("SELECT * FROM ticket WHERE ticket_id=$ticket_id", true);
		$var->ticket_uye=$this->kullanici($var->ticket_uye,"kul_id,kul_isim,kul_soyisim,kul_logo");
		$var->konusmalar=$this->cok("SELECT * FROM ticket_bag WHERE ticket_id=$ticket_id");
		return $var;
	}


}






?>