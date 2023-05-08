<?php 
include_once 'class-veri.php';

class genel extends veri
{

	public function bannerekle($veri,$resim)
	{
		unset($veri['resim']);
		$sonuc=$this->direktekle("banner",$veri,"bannerekle");
		$sonid=$this->sonid("banner", "banner_id");
		$sonuc=$this->tekdosya("bannerekle",$resim['resim'],$sonid);
		return $sonuc['sonuc'];
	}

	public function bannerguncelle($veri,$resim)
	{
		$eski_resim=$veri['eski_resim'];
		unset($veri['resim']);
		unset($veri['eski_resim']);

		$sonuc=$this->direktguncelle("banner", "banner_id", $veri['banner_id'], $veri, "bannerguncelle", "banner_id");

		if ($resim['resim']['error']=="0") {
			@unlink(__DIR__."/../../dosyalar/banner/".$eski_resim);			
			$sonuc=$this->tekdosya("bannerekle",$resim['resim'],$veri['banner_id']);
		}

		return $sonuc;
	}



	public function hikayeekle($veri,$resim)
	{
		unset($veri['kapak_resim']);
		unset($veri['hikaye_resimleri']);
		unset($veri['ekbilgilink']);
		unset($veri['ekbilgiresim']);

		$sonuc=$this->direktekle("hikaye",$veri,"hikayeekle");
		$sonid=$this->sonid("hikaye", "hik_id");

		if ($resim['kapak_resim']["error"] == 0) {
			$this->tekdosya("hikayeekle",$resim['kapak_resim'],$sonid);
		}

		$files=[];
		foreach ($resim['ekbilgiresim'] as $k => $l) {
			foreach ($l as $i => $v) {
				if (!array_key_exists($i, $files))
					$files[$i] = array();
				$files[$i][$k] = $v;
			}
		}

		foreach ($files as $key => $value) {
			
			if ($value['error']==0) {
				$so=$this->tekdosya("hikaye_resim_ekle",$value, $sonid, $_POST['ekbilgilink'][$key]);
				if (!$so) {
					echo ses('hata');
				}
			}
		}

	/*	if ($resim['hikaye_resimleri']["error"][0] == 0) {
			$this->dosyayukle("hikaye_resimleri",$resim['hikaye_resimleri'],$sonid);
		}*/

		

		return $sonuc;
	}


	public function hikayeguncelle($veri,$resim)
	{
		unset($veri['kapak_resim']);
		unset($veri['hikaye_resimleri']);
		unset($veri['ekbilgilink']);
		unset($veri['ekbilgiresim']);
		
		$sonuc=$this->direktguncelle("hikaye", "hik_id", $_POST['hik_id'], $veri, "hik_id", "hikayeguncelle");

		if ($resim['kapak_resim']["error"] == 0) {
			$this->tekdosya("hikayeekle",$resim['kapak_resim'],$veri['hik_id']);
		}

		$files=[];
		foreach ($resim['ekbilgiresim'] as $k => $l) {
			foreach ($l as $i => $v) {
				if (!array_key_exists($i, $files))
					$files[$i] = array();
				$files[$i][$k] = $v;
			}
		}

		foreach ($files as $key => $value) {
			
			if ($value['error']==0) {
				$so=$this->tekdosya("hikaye_resim_ekle",$value, $veri['hik_id'], $_POST['ekbilgilink'][$key]);
				if (!$so) {
					echo ses('hata');
				}
			}
		}

		/*if ($resim['hikaye_resimleri']["error"][0] == 0) {
			$this->dosyayukle("hikaye_resimleri",$resim['hikaye_resimleri'],$veri['hik_id']);
		}*/

		return $sonuc;
	}

	public function hikayesil($id)
	{
		$galeri=$this->hikaye_resimler($id);
		$hik=$this->tek_hikaye($id);
		
		unlink(__DIR__."/../../dosyalar/hikaye/".$hik->kapak_resim);
		
		foreach ($galeri as $key => $value) {
			unlink(__DIR__."/../../dosyalar/hikaye/".$value->isim);
			$this->silme("hikaye_galeri", "dosya_id", $value->dosya_id);
		}

		return $this->silme("hikaye", "hik_id", $hik->hik_id);

	}

	
	public function sliderekle($veri,$resim)
	{
		unset($veri['resim']);
		$sonuc=$this->direktekle("slider",$veri,"sliderekle");
		$sonid=$this->sonid("slider", "slider_id");
		$sonuc=$this->tekdosya("sliderekle",$resim['resim'],$sonid);
		return $sonuc['sonuc'];
	}

	public function sliderguncelle($veri,$resim)
	{
		$eski_resim=$veri['eski_resim'];
		unset($veri['resim']);
		unset($veri['eski_resim']);

		$sonuc=$this->direktguncelle("slider", "slider_id", $veri['slider_id'], $veri, "sliderguncelle", "slider_id");

		if ($resim['resim']['error']=="0") {
			@unlink(__DIR__."/../../dosyalar/".$eski_resim);			
			$sonuc=$this->tekdosya("sliderekle",$resim['resim'],$veri['slider_id']);
		}

		return $sonuc;
	}


}

?>