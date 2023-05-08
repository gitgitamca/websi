<?php 
require_once __DIR__.'/../config.php';

/**
 * SMS Onay İşlemi
 */
class smsonay extends veri
{
	public $kul;
	public $mesaj;

	public function isOnay($yonlendirme=e, $kul_id=x)
	{
		if ($this->ayarlar['sms_onay']==1) {
			if ($kul_id==x) {
				$kul_id=ses('kul_id');
			}

			$this->kul=$this->kullanici($kul_id,"tel_onay,kul_telefon");

			if ($this->kul->tel_onay==0) {
				if ($yonlendirme==e) {
					git(site."smsonay","sms_dogrulama_yapilmamis");
				} else {
					return false;
				}
			} else {
				return true;
			}
		} else {
			return true;
		}
	}


	public function onay_kodu_gonder()
	{
		try {
			if ($this->isOnay(h)) {
				return ['durum' => 'ok']; 
			} else {
				$durum=true;
				$liste=array();
				if (isset($_SESSION['sms_tarih'])) {
					$sonuc=strtotime(date("Y-m-d H:i:s"))-$_SESSION['sms_tarih'];
					
					if ($sonuc < 120) {
						$durum=false;
						$fark=120-$sonuc;
						throw new Exception("Yeniden SMS Gönderebilmek İçin -- $fark -- Saniye Beklemeniz Gerekmektedir.");
					}
				} else {
					$_SESSION['sms_tarih']=strtotime(date("Y-m-d H:i:s"));
				}


				if ($durum) {		
					$_SESSION['sms_kodu']=rand(100000,999999);
					$metin=$this->ayarlar['site_baslik']." ONAY KODUNUZ: ".$_SESSION['sms_kodu'];

					if ($this->sms($metin,[$this->kul->kul_telefon])) {
						return ['durum' => 'ok'];
					} else {
						throw new Exception("SMS Gönderme İşlemi Başarısız. Lütfen Telefon Numaranızı Kontrol Edin Eğer Yanlışsa Profilinizden Güncelleyip Tekrar Deneyin. Sorunun Devamı Halinde İletişim Bölümünden Bizimle İletişime Geçin.<br>".ses('hata'));					
					}
				}
			}

			
		} catch (Exception $e) {
			$this->mesaj=$e->getMessage();
			return ['durum' => 'no', 'mesaj' => $this->mesaj];
		}
	}


	public function sms_kontrol()
	{
		if ($_SESSION['sms_kodu']==@guvenlik($_POST['sms_kodu'])) {
			$this->direktguncelle("kullanicilar", "kul_id", $_SESSION['kul_id'], ['tel_onay' => 1,'tel_onay_tarih' => date("Y-m-d H:i:s")]);
			return ['durum' => 'ok'];
		} else {
			return ['durum' => 'no'];
		}
	}

}

?>