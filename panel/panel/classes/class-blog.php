<?php 
include_once 'class-veri.php';

class blog extends veri
{

	public function yazi_getir($deger,$id=false)
	{
		if ($id) {
			$kosul="yazi_id=$deger";
		} else {
			$kosul="yazi_link='$deger'";
		}

		return $this->tek("SELECT * FROM yazi WHERE $kosul ",true);
	}

	public function okunma_artir($id)
	{
		$this->tek("UPDATE yazi SET yazi_okunma=yazi_okunma+1 WHERE yazi_id=$id");
	}
	
	public function kisa_yazi($metin,$sinir=160)
	{
		return mb_substr(strip_tags($metin), 0,$sinir);
	}
	public function yazilar()
	{
		return $this->cok("SELECT * FROM yazi WHERE durum=1 ORDER BY yazi_id DESC");
	}

	public function yaziekle($veri,$resim)
	{
		unset($veri['yazi_resim']);
		$veri['yazi_link']=linkolustur("yazi","yazi_link",$veri['yazi_baslik']);
		$sonuc=$this->direktekle("yazi",$veri,"yaziekle");
		$sonid=$this->sonid("yazi", "yazi_id");
		$this->tekdosya("yaziresimekle",$resim['yazi_resim'],$sonid);
		return $sonuc;
	}



	public function yaziguncelle($veri,$resim)
	{
		unset($veri['yazi_resim']);

		$sonuc=$this->direktguncelle("yazi", "yazi_id", $veri['yazi_id'], $veri, "yaziguncelle", "yazi_id");

		if ($resim['yazi_resim']['error']=="0") {				
			$sonuc=$this->tekdosya("yaziresimekle",$resim['yazi_resim'],$veri['yazi_id']);
		}
		return $sonuc;
	}
	

}

?>