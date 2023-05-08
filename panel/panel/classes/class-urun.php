<?php

include_once 'class-veri.php';

class urun extends veri
{



	public function urunekle($post,$file)
	{
		try {
			require_once __DIR__.'/class-bildirim.php';
			$bil = new bildirim($this->db);

			$_FILES=$file;
			$post['urun_link']=linkolustur("urun","urun_link",$post['urun_baslik']);
			$post['satici']=ses('kul_id');

			if (strlen(@$post['urun_seo_baslik'])<5) {
				$post['urun_seo_baslik']=$post['urun_baslik'];
			}

			if (strlen(@$post['urun_seo_aciklama'])<5) {
				$post['urun_seo_aciklama']=mb_substr(strip_tags(pd($post['urun_detay'])), 0,160);
			}

			if ($this->ayarlar['urun_baslangic_onay']==1) {
				$post['urun_durum']=1;
			} else {
				$post['urun_durum']=0;
			}

			$sonuc=$this->direktekle("urun", $post, "urunekle");
			$sonid=$this->sonid("urun", "urun_id");

			if (!$sonuc) {
				throw new Exception("Error while adding item");
			}


			if ($_FILES['urun_one_cikan']['error']==0) {
				$sonuc=$this->dosyayukle("urun_one_cikan",$_FILES['urun_one_cikan'],$sonid);
			} else {
				throw new Exception("Must be upload item image!", 1);
			}

			if (@$_FILES['urun_gorselleri']['error'][0]==0) {
				$sonuc=$this->dosyayukle("urun_gorselleri",$_FILES['urun_gorselleri'],$sonid);
			}

			$takipciler=$this->cok("SELECT * FROM kul_takip INNER JOIN kullanicilar ON kullanicilar.kul_id=kul_takip.takipci WHERE magaza=".ses('kul_id'), true);
			$tum_aboneler=$this->cok("SELECT * FROM abone", true);


			$mailicerigi="<table>
			<thead>
			<tr>
			<th style='border: 1px solid black; padding: 10px;'>Store</th>
			<th style='border: 1px solid black; padding: 10px;'>Item</th>
			</tr>
			</thead>
			<tbody>
			<td style='border: 1px solid black; padding: 10px;'>".ses('magaza_isim')."</td>
			<td style='border: 1px solid black; padding: 10px;'>".$post['urun_baslik']."</td>
			</tbody>
			</table><br>
			<a class='font-weight-bold' href='".$this->ayarlar['site_link']."'>".$this->ayarlar['site_baslik']."</a>
			";





			foreach ($tum_aboneler as $key => $value) {
				$liste=[
					'mail_baslik' => ses('magaza_isim')." publised a new item",
					'mail_isim' => $this->ayarlar['site_baslik'],
					'mail_adres' => $value->abone_mail,
					'mail_detay' => $mailicerigi
				];
				$this->mailgonder($liste, "New Item");
			}



			foreach ($takipciler as $key => $kul) {
				if ($kul->mail==1) {
					$liste=[
						'mail_baslik' => ses('magaza_isim')." publised a new item",
						'mail_isim' => $this->ayarlar['site_baslik'],
						'mail_adres' => $kul->kul_mail,
						'mail_detay' => $mailicerigi
					];
					$this->mailgonder($liste, "New Item");
				}

				if ($kul->bildirim==1) {
					$baslik=ses('magaza_isim')." publised a new item!";
					$mesaj='"'.$post['urun_baslik'].'" named product published.';
					$bil->onesignal($baslik,$mesaj, [$kul->uygulama_bildirim],urun.$post['urun_link']);
					$bil->onesignal_web($baslik,$mesaj, [$kul->web_bildirim],urun.$post['urun_link']);
					$bil->telegram($baslik,$mesaj."<br>".urun.$post['urun_link'], $kul->tg_id);
				}
			}




			return TRUE;
		} catch (Exception $e) {
			$this->silme("urun", "urun_id", $sonid);
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}


	public function urunguncelle($post,$file)
	{
		try {
			$_FILES=$file;

			echo $urun_one_cikan_resim=$post['urun_one_cikan_resim'];
			unset($post['urun_one_cikan_resim']);

			//exit;

			if (strlen(@$post['urun_seo_baslik'])<5) {
				$post['urun_seo_baslik']=$post['urun_baslik'];
			}

			if (strlen(@$post['urun_seo_aciklama'])<5) {
				$post['urun_seo_aciklama']=mb_substr(strip_tags(pd($post['urun_detay'])), 0,160);
			}
			$post['urun_son_guncelleme']=date("Y-m-d H:i:s");

			if (!$this->direktguncelle("urun", "urun_id", $post['urun_id'], $post, "urunguncelle", "urun_id")) {
				throw new Exception("Failed!: ".json_encode([$_SESSION['hata']]), 1);

			};

			if ($_FILES['urun_one_cikan']['error']==0) {
				$sonuc=$this->dosyayukle("urun_one_cikan",$_FILES['urun_one_cikan'],$post['urun_id']);
				unlink(__DIR__."/../../dosyalar/icerik/kucuk/".$urun_one_cikan_resim);
				unlink(__DIR__."/../../dosyalar/icerik/orta/".$urun_one_cikan_resim);
				unlink(__DIR__."/../../dosyalar/icerik/raw/".$urun_one_cikan_resim);
			}

			if ($_FILES['urun_gorselleri']['error'][0]==0) {
				$sonuc=$this->dosyayukle("urun_gorselleri",$_FILES['urun_gorselleri'],$post['urun_id']);
			}

			return TRUE;
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}


	public function degerlendir($sip,$deger,$edit=false)
	{
		global $rec;
		if (!$rec->dogrulama()) {
			git(yol,"bot_dogrulama_yapilmadi");
		}

		$deger['deger']=floatval($deger['deger']);
		sayi($deger['deger']);

		if (yetkikontrol(h)) {
			$kosul="yildiz_id={$deger['yildiz_id']} AND ";
		} else {
			$kosul="kullanici={$_SESSION['kul_id']} AND ";
		}


		if ($edit) {
			$this->tek("UPDATE yildiz SET deger={$deger['deger']}, icerik='{$deger['icerik']}' WHERE $kosul urun=$sip->urun");
			return true;
		} else {

			if (!$this->degerlendirme_kontrol($sip->urun)) {
				$liste=[
					'deger' => $deger['deger'],
					'kullanici' => ses("kul_id"),
					'urun' => $sip->urun,
					'icerik' => $deger['icerik']
				];
				$this->direktekle("yildiz", $liste, "", true);
				return true;
			} else {
				return false;
			}
		}

	}


	public function urunler($satici=x)
	{

		if ($satici==x) {
			$satici=ses("kul_id");
		}

		return $this->cok("SELECT * FROM urun WHERE satici=$satici ORDER BY urun_id DESC",true);
	}


	public function tum_urunler($manset=false)
	{
		if ($manset) {
			return $this->cok("SELECT urun.*, urun.manset_sira as urun_manset_sira FROM urun INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici ORDER BY urun_manset_sira DESC",true);
		} else {
			return $this->cok("SELECT * FROM urun LEFT JOIN kullanicilar ON kullanicilar.kul_id=urun.satici ORDER BY urun_id DESC",true);
		}
	}

	public function manset_urunler($limit=5)
	{
		return $this->cok("SELECT kullanicilar.*, urun.*, urun.manset_sira as urun_manset_sira FROM urun
			INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici
			WHERE urun.manset_durum=1
			ORDER BY RAND() ASC
			LIMIT 0, $limit",true);
	}

	public function basarili_siparis($urun)
	{
		return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis WHERE urun=$urun AND sip_durum=2",true)->sayi;
	}



}

?>