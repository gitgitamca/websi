<?php 

require_once __DIR__."/class-veri.php";


/**
 * Bildirim İşlemleri
 */
class bildirim extends veri
{
	public $mesaj;

	public function mesaj_islem($mesaj)
	{
		$this->mesaj = str_replace("<br>", "\n", $mesaj);
	}

	public function onesignal($baslik,$mesaj,$liste,$link="x")
	{
		$this->mesaj_islem($mesaj);
		$sonuc=bildirim($this->ayarlar,$this->mesaj,$baslik,$liste,$link);
		return $sonuc;
	}

	public function onesignal_web($baslik,$mesaj,$liste,$link="x")
	{
		$this->mesaj_islem($mesaj);
		$sonuc=bildirim_web($this->ayarlar,$this->mesaj,$baslik,$liste,$link);
		return $sonuc;
	}

	public function telegram($baslik,$mesaj,$id)
	{
		$this->mesaj_islem($mesaj);
		$tg = new tg($this->db);
		$sonuc = $tg->gonder($baslik,$this->mesaj,$id);
		pre($sonuc);
		return $sonuc;
	}

}

?>