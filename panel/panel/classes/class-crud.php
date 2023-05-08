<?php 
require_once 'simleimage/vendor/autoload.php';

class crud {

	public $db;
	public $ayarlar;
	public $host_adresi;
	public $port_numarasi;
	public $mail_adresiniz;
	public $mail_sifreniz;
	function __construct($db)
	{
		$this->db=$db;
		$this->ayarlar=$this->tekil("ayarlar","id","1");
		$this->host_adresi=@$this->ayarlar['host_adresi'];
		$this->port_numarasi=@$this->ayarlar['port_numarasi'];
		$this->mail_adresiniz=@$this->ayarlar['mail_adresi'];
		$this->mail_sifreniz=@$this->ayarlar['mail_sifre'];
	}

	public function dosya_log($metin)
	{
		$dosya = fopen(__DIR__.'/log.txt', 'a');
		
		if (is_array($metin)) {
			$metin=json_encode($metin);
		}

		fwrite($dosya, $metin);
		fclose($dosya);
	}

	public function ayarkaydet($post,$file)
	{	
		try {	

			$_FILES=$file;
			$_POST=$post;
			$ayarlar=$this->ayarlar;

			unset($_POST['genelayarkaydet']);

			$guncelle=$this->direktguncelle("ayarlar", "id", 1, $_POST,"genelayarkaydet");
			if ($_FILES['site_logo']["error"] == 0) {
				$sonuc=$this->dosyayukle("sitelogoekle",$_FILES['site_logo'],"1");
				if ($sonuc) {					
					unlink(__DIR__."/../../dosyalar/".$ayarlar['site_logo']);
				} else {
					throw new Exception("Dosya Yükleme Hatası: {$_SESSION['hata']}", 1);	
				}
			}

			if ($_FILES['site_one_cikan']["error"] == 0) {
				$sonuc=$this->dosyayukle("siteonecikanekle",$_FILES['site_one_cikan'],"1");
				if ($sonuc) {					
					unlink(__DIR__."/../../dosyalar/".$ayarlar['site_one_cikan']);
				} else {
					throw new Exception("Dosya Yükleme Hatası: {$_SESSION['hata']}", 1);	
				}
			}

			if ($_FILES['sol_ust_logo']["error"] == 0) {
				$sonuc=$this->dosyayukle("sol_ust_logo",$_FILES['sol_ust_logo'],"1");
				if ($sonuc) {					
					unlink(__DIR__."/../../dosyalar/".$ayarlar['sol_ust_logo']);
				} else {
					throw new Exception("Dosya Yükleme Hatası: {$_SESSION['hata']}", 1);	
				}
			}

			return $guncelle;
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}

	public function cevir($veri)
	{
		return json_decode(json_encode($veri));
	}

	public function satirsayisi($tablo,$sutun,$deger,$islem="")
	{
		try {		
			if ($islem=="hepsi") {
				$sorgu=$this->db->prepare("SELECT $sutun FROM $tablo");
				$sorgu->execute();
			} else {
				$sorgu=$this->db->prepare("SELECT $sutun FROM $tablo WHERE $sutun=?");
				$sorgu->execute([$deger]);
			}
			return $sorgu->rowcount();		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}

	public function satir_sayisi_sorgu($sql)
	{
		try {			
			$sorgu=$this->db->prepare($sql);
			$sorgu->execute();
			return $sorgu->rowcount();		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}

	public function arrayislemi($deger)
	{
		$sonuc=implode(",", array_map(function ($deg){
			return $deg."=?";
		},array_keys($deger)));

		return $sonuc;
	}

	
	public function tek($sorgu,$ob=false,$debug=false)
	{
		try {
			$sorgu=$this->db->prepare($sorgu);
			$sorgu->execute();
			$say=$sorgu->rowcount();
			if ($debug) {
				pre($sorgu->debugDumpParams());
				pre($sorgu->errorInfo());
			}
			if ($say==0) {
				throw new Exception(implode($sorgu->errorInfo()), 1);		
				//return ["sonuc"=> FALSE, "hata" => $sorgu->errorInfo()];				
			} else {
				if ($ob) {
					return $sorgu->fetch(PDO::FETCH_OBJ);
				} else {
					return $sorgu->fetch(PDO::FETCH_ASSOC);
				}
			}		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}

	public function tekil($tablo,$sutun,$deger,$cekilecek="*")
	{
		try {
			$sorgu=$this->db->prepare("SELECT $cekilecek FROM $tablo WHERE $sutun=?");
			$sorgu->execute([$deger]);
			$say=$sorgu->rowcount();
			if ($say==0) {
				throw new Exception(implode($sorgu->errorInfo()), 1);		
				//return ["sonuc"=> FALSE, "hata" => $sorgu->errorInfo()];				
			} else {
				return $sorgu->fetch(PDO::FETCH_ASSOC);
			}		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}

	public function cok($sorgu,$ob=false,$debug=false)
	{
		try {
			$token=token();
			$sorgu=$this->db->prepare($sorgu);
			$sorgu->execute();
			$say=$sorgu->rowcount();
			
			if ($debug) {
				pre($sorgu->debugDumpParams());
				pre($sorgu->errorInfo());
			}

			if ($say==0) {
				//throw new Exception(implode($sorgu->errorInfo()), 1);		
				return array();		
			} else {
				if ($ob) {
					return $sorgu->fetchAll(PDO::FETCH_OBJ);
				} else {
					return $sorgu->fetchAll(PDO::FETCH_ASSOC);
				}
				
			}		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}


	public function coklu($tablo,$sutun,$deger,$cekilecek="*")
	{
		try {
			$sorgu=$this->db->prepare("SELECT $cekilecek FROM $tablo WHERE $sutun=?");
			$sorgu->execute([$deger]);
			$say=$sorgu->rowcount();
			if ($say==0) {
				throw new Exception(implode($sorgu->errorInfo()), 1);		
				//return ["sonuc"=> FALSE, "hata" => $sorgu->errorInfo()];				
			} else {
				return $sorgu->fetchAll(PDO::FETCH_ASSOC);
			}		
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}		
	}

	

	public function tumtablo($tablo,$sutunlar="*",$siralama="")
	{
		try {

			$sorgu=$this->db->prepare("SELECT $sutunlar FROM $tablo $siralama");
			$sorgu->execute();
			return $sorgu->fetchAll(PDO::FETCH_ASSOC);

		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;

		}		
	}

	public function log($tur,$detay)
	{
		try {	
			if ($this->ayarlar['log_onay']==1) {				
				$sorgu=$this->db->prepare("INSERT INTO log SET yapilan_islem=:yapilan_islem, kullanici=:kullanici, islem_tur=:islem_tur ");
				$ekle=$sorgu->execute(array(
					'yapilan_islem' => $detay,
					'kullanici' => $_SESSION['kul_id'],
					'islem_tur' => $tur
				));

				if ($ekle) {
					return TRUE;
				} else {
					throw new Exception(implode($sorgu->errorInfo()), 1);	
				}
			} else {
				return TRUE;
			}
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}

	public function temizle($veri,$karisilmayacaklar=[])
	{
		foreach ($veri as $key => $value) {
			if (!in_array($key, $karisilmayacaklar)) {
				if (!is_array($value)) {
					$veri["$key"]=guvenlik($value);
				}
			}
		}
		return $veri;
	}

	public function direktekle($tablo,$deger,$silinecek="",$temizlik=false,$karisilmayacaklar=[])
	{
		try {
			$token=token();
			if (strlen($silinecek)!=0) {
				unset($deger["$silinecek"]);
			}

			if (isset($deger['files'])) {
				unset($deger["files"]);
			}		

			if ($temizlik) {
				$deger=$this->temizle($deger,$karisilmayacaklar);
			}
			
			$sorgu=$this->db->prepare("INSERT INTO $tablo SET {$this->arrayislemi($deger)} ");
			$ekle=$sorgu->execute(array_values($deger));
			//pre($sorgu->errorInfo());
			//pre($sorgu->debugDumpParams());

			if ($ekle) {
				return TRUE;
			} else {
				throw new Exception(implode($sorgu->errorInfo()), 1);	
			}
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}

	public function direktguncelle($tablo,$sutun,$id,$deger,$silinecek1="",$silinecek2="",$temizlik=false,$karisilmayacaklar=[])
	{
		
		unset($deger["$silinecek1"]);
		unset($deger["$silinecek2"]);
		if (isset($deger['files'])) {
			unset($deger["files"]);
		}

		if (isset($deger['kul_sifre'])) {
			if (strlen($deger['kul_sifre'])==0) {
				unset($deger["kul_sifre"]);
			} else {
				$deger['kul_sifre']=sifreleme($deger["kul_sifre"]);
			}
		}
		
		if ($temizlik) {
			$deger=$this->temizle($deger,$karisilmayacaklar);
		}

		try {		
			$sorgu=$this->db->prepare("UPDATE $tablo SET {$this->arrayislemi($deger)} WHERE $sutun='$id'");
			$ekle=$sorgu->execute(array_values($deger));

			//pre($sorgu->errorInfo());
			//pre($sorgu->debugDumpParams());

			if ($ekle) {
				return TRUE;
			} else {
				throw new Exception(implode($sorgu->errorInfo()), 1);	
			}
		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}



	public function silme($tablo,$sutun,$id)
	{
		try {
			$sorgu=$this->db->prepare("DELETE FROM $tablo WHERE $sutun=?");
			$kontrol=$sorgu->execute([$id]);
			if ($kontrol) {
				return ["sonuc"=> TRUE];
			} else {
				throw new Exception(implode($sorgu->errorInfo()), 1);	
			}
		} catch (Exception $e) {
			return ["sonuc"=> FALSE, "hata" => $e->getMessage()];
		}
	}

	public function sonid($tablo, $sutunismi)
	{
		try {
			$sorgu=$this->db->prepare("SELECT $sutunismi FROM $tablo ORDER BY $sutunismi DESC LIMIT 0, 1");
			$sorgu->execute();
			$sonuc=$sorgu->fetch(PDO::FETCH_ASSOC);
			return $sonuc["{$sutunismi}"];
		} catch (Exception $e) {
			return $_SESSION['hata']=["sonuc"=> FALSE, "hata" => $e->getMessage()];
		}
	}

	public function resim_png($dosyaklasoru,$dosyaismi)
	{
		$yenisim=str_replace(".", "", $dosyaismi).".png";
		$resim=file_get_contents($dosyaklasoru."/".$dosyaismi);
		$resim=imagecreatefromstring($resim);
		imagealphablending($resim, false);
		imagesavealpha($resim, true);
		imagepng($resim, $dosyaklasoru."/".$yenisim,8);
		unlink($dosyaklasoru."/".$dosyaismi);
		return $yenisim;
	}

	public function resim_webp($dosyaklasoru, $dosyaismi, $quality = 70)
	{

		$file_extension = pathinfo($dosyaklasoru."/".$dosyaismi, PATHINFO_EXTENSION);
		if ($file_extension == 'jpeg' || $file_extension == 'jpg') {
			$image = imagecreatefromjpeg($dosyaklasoru."/".$dosyaismi);
		} else if ($file_extension == 'gif') {
			$image = imagecreatefromgif($dosyaklasoru."/".$dosyaismi);
		} else if ($file_extension == 'png') {
			$image = imagecreatefrompng($dosyaklasoru."/".$dosyaismi);
		} else {
			die("Unsupported format!");
		}

		$yenisim=str_replace(".", "", $dosyaismi).".webp";

		imagewebp($image, $dosyaklasoru."/".$yenisim, $quality);
		unlink($dosyaklasoru."/".$dosyaismi);

		return $yenisim; 
	}

	public function resim_jpg($dosyaklasoru,$dosyaismi)
	{
		/*$resim=file_get_contents($dosyaklasoru."/".$dosyaismi);
		$resim=imagecreatefromstring($resim);
		imagealphablending($resim, false);
		imagesavealpha($resim, true);
		imagepng($resim, $dosyaklasoru."/".$yenisim,8);
		unlink($dosyaklasoru."/".$dosyaismi);*/
		$yenisim="G-".$dosyaismi;
		$img = imagecreatefromjpeg ($dosyaklasoru."/".$dosyaismi);
		imagejpeg ($img, $dosyaklasoru."/".$yenisim, 60);
		imagedestroy ($img);

		return $yenisim;
	}

	public function dosyayukle($islem,$gelenisim,$id)
	{	
		include_once 'class-upload.php';


		try {			

			$files = array();
			if ($islem=="urun_one_cikan") {
				$dosyaklasoru=__DIR__."/../../dosyalar/icerik/raw";
				$files=$gelenisim;
			} elseif ($islem=="urun_gorselleri" || $islem=="hikaye_resimleri") {
				
				if ($islem=="hikaye_resimleri") {
					$dosyaklasoru=__DIR__."/../../dosyalar/hikaye";
				} else {
					$dosyaklasoru=__DIR__."/../../dosyalar/icerik";
				}


				foreach ($gelenisim as $k => $l) {
					foreach ($l as $i => $v) {
						if (!array_key_exists($i, $files))
							$files[$i] = array();
						$files[$i][$k] = $v;
					}
				}
			} else {
				$dosyaklasoru=__DIR__."/../../dosyalar";
				$files=$gelenisim;
			}


			$sayi=0;
			foreach ($files as $file){
				$sayi++;

				if ($islem=="urun_gorselleri" OR $islem=="hikaye_resimleri" OR $islem=="ticket_dosya" OR $islem=="musteri_ticket_dosya") {
					$handle = new Upload($file);
				} else {
					$handle = new Upload($files);
				}

				if ($handle->uploaded) {					

					/*$handle->file_name_body_pre=$id."-".$num."-";
					$type=$handle->file_src_name_ext;
					$tmp_dosyaismi=turkce($handle->file_src_name_body);
					$handle->file_new_name_body=$tmp_dosyaismi;
					$handle->allowed = array('image/*');
					$dosyaturu=$handle->file_src_name_ext;		
					$boyut=$handle->file_src_size ;					
					$handle->Process("$dosyaklasoru");
					$dosyaismi=$handle->file_dst_name;*/

					$handle->allowed = array('image/*');
					$handle->image_convert = 'webp';
					$handle->webp_quality = 80;

					$num=rand(1000000,9999999);
					$handle->file_name_body_pre=$id."-".$num."-";
					$tmp_dosyaismi=turkce($handle->file_src_name_body);
					$handle->file_new_name_body=$tmp_dosyaismi;
					$handle->Process("$dosyaklasoru");

					$dosyaismi=$handle->file_dst_name;
					$dosyaturu=$handle->file_dst_name_ext;		
					$boyut=$handle->file_dst_size ;	


					if ($handle->processed) {
						if ($islem=="urun_kaynak_dosya") {
							$sorgu=$this->db->prepare("UPDATE urun SET 
								urun_kaynak_dosya=:urun_kaynak_dosya WHERE urun_id=:urun_id
								");

							$yukle=$sorgu->execute(array(
								'urun_id' => $id,
								'urun_kaynak_dosya' => $dosyaismi
							));
							$_SESSION['urundosyaismi']=$dosyaismi;
						} elseif ($islem=="sitelogoekle") {
							$sorgu=$this->db->prepare("UPDATE ayarlar SET 
								site_logo=:site_logo WHERE id=:id
								");

							$yukle=$sorgu->execute(array(
								'id' => 1,
								'site_logo' => $dosyaismi
							));	
							return TRUE;
						} elseif ($islem=="siteonecikanekle") {
							$sorgu=$this->db->prepare("UPDATE ayarlar SET 
								site_one_cikan=:site_one_cikan WHERE id=:id
								");

							$yukle=$sorgu->execute(array(
								'id' => 1,
								'site_one_cikan' => $dosyaismi
							));				
							return TRUE;
						} elseif ($islem=="sol_ust_logo") {
							$sorgu=$this->db->prepare("UPDATE ayarlar SET 
								sol_ust_logo=:sol_ust_logo WHERE id=:id
								");

							$yukle=$sorgu->execute(array(
								'id' => 1,
								'sol_ust_logo' => $dosyaismi
							));				
							return TRUE;
						} elseif ($islem=="hikaye_resimleri") {
							$sorgu=$this->db->prepare("INSERT INTO hikaye_galeri SET 
								isim=:isim, uzanti=:uzanti, hikaye=:hikaye, boyut=:boyut
								");

							$yukle=$sorgu->execute(array(
								'hikaye' => $id,
								'isim' => $dosyaismi,
								'uzanti' => $dosyaturu,
								'boyut' => $boyut
							));
							
						} elseif ($islem=="urun_gorselleri") {

							$image = new \claviska\SimpleImage();

							$resim=$image->fromFile("$dosyaklasoru/$dosyaismi");
							$yukseklik=$resim->getHeight();
							$genislik=$resim->getWidth();
							$dosyalar=__DIR__."/../../dosyalar/icerik/";

							$resim->autoOrient()                             
							->resize(500)                         
							->toFile("$dosyalar/$dosyaismi",null,70);

							$sorgu=$this->db->prepare("INSERT INTO urun_galeri SET 
								isim=:isim, uzanti=:uzanti, urun=:urun, boyut=:boyut
								");

							$yukle=$sorgu->execute(array(
								'urun' => $id,
								'isim' => $dosyaismi,
								'uzanti' => "png",
								'boyut' => $boyut
							));
							

							//return TRUE;
						} elseif ($islem=="urun_one_cikan") {



							$image = new \claviska\SimpleImage();

							$resim=$image->fromFile("$dosyaklasoru/$dosyaismi");
							$yukseklik=$resim->getHeight();
							$genislik=$resim->getWidth();
							$dosyalar=__DIR__."/../../dosyalar/icerik/";

							$resim->autoOrient()                             
							->resize(400)                         
							->toFile("$dosyalar/orta/$dosyaismi",null,70);        

							$resim->autoOrient()                             
							->resize(260)                         
							->toFile("$dosyalar/kucuk/$dosyaismi",null,70); 


							$sorgu=$this->db->prepare("UPDATE urun SET 
								urun_one_cikan=:urun_one_cikan WHERE urun_id=:urun_id
								");

							$yukle=$sorgu->execute(array(
								'urun_id' => $id,
								'urun_one_cikan' => $dosyaismi
							));


						}

						if (!$yukle) {
							//throw new Exception($sorgu->errorInfo(), 1);
							$_SESSION['hata']=$sorgu->errorInfo();
						}

					} else {
						throw new Exception($handle->error, 1);
					}

					$handle-> Clean();

				} else {
					throw new Exception($handle->error);
				}

			}
		} catch (Exception $e) {
			
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}

	}

	public function tekdosya($islem,$gelenisim,$id,$link="")
	{	
		try {

			require_once 'class-upload.php';
			$handle = new Upload($gelenisim);

			if ($islem=="profil_logo_ekle") {
				$yuklemeklasoru = __DIR__.'/../../dosyalar/logo';
			} else if ($islem=="yaziresimekle") {
				$yuklemeklasoru = __DIR__.'/../../dosyalar/blog';
			} else if ($islem=="bannerekle") {
				$yuklemeklasoru = __DIR__.'/../../dosyalar/banner';
			}  else if ($islem=="hikayeekle" OR $islem=="hikaye_resim_ekle") {
				$yuklemeklasoru = __DIR__.'/../../dosyalar/hikaye';
			} else {
				$yuklemeklasoru = __DIR__.'/../../dosyalar';
			}

			/*	$resim_yolu=$this->resim_webp($yuklemeklasoru, $resim_yolu);

			$handle = new Upload($gelenisim);*/

			if ($handle->uploaded) {

				$handle->allowed = array('image/*');
				$handle->image_convert = 'webp';
				$handle->webp_quality = 80;

				$num=rand(1000000,9999999);
				$handle->file_name_body_pre=$id."-".$num."-";
				$tmp_dosyaismi=turkce($handle->file_src_name_body);
				$handle->file_new_name_body=$tmp_dosyaismi;
				$handle->Process("$yuklemeklasoru");
				
				if ($handle->processed) {

					$resim_yolu=$handle->file_dst_name;
					$dosyaturu=$handle->file_dst_name_ext;		
					$boyut=$handle->file_dst_size ;	

					if ($islem=="kullanici_logo_ekle") {
						$sorgu=$this->db->prepare("UPDATE kullanicilar SET 
							kul_logo=:kul_logo WHERE kul_id=:kul_id
							");

						$yukle=$sorgu->execute(array(
							'kul_id' => $id,
							'kul_logo' => $resim_yolu
						));
					}

					if ($islem=="profil_logo_ekle") {
						$image = new \claviska\SimpleImage();

						$resim=$image->fromFile("$yuklemeklasoru/$resim_yolu");
						$yukseklik=$resim->getHeight();
						$genislik=$resim->getWidth();

						$resim->autoOrient()                             
						->resize(200)                         
						->toFile("$yuklemeklasoru/$resim_yolu",null,70);


						$sorgu=$this->db->prepare("UPDATE kullanicilar SET 
							kul_logo=:kul_logo WHERE kul_id=:kul_id
							");

						$yukle=$sorgu->execute(array(
							'kul_id' => $id,
							'kul_logo' => $resim_yolu
						));
						$_SESSION['kul_logo']=$resim_yolu;
					}


					if ($islem=="sitelogoekle") {
						$sorgu=$this->db->prepare("UPDATE ayarlar SET 
							site_logo=:site_logo WHERE id=:id
							");

						$yukle=$sorgu->execute(array(
							'id' => $id,
							'site_logo' => $resim_yolu
						));				
					}


					if ($islem=="yaziresimekle") {
						$sorgu=$this->db->prepare("UPDATE yazi SET 
							yazi_resim=:yazi_resim WHERE yazi_id=:yazi_id
							");

						$yukle=$sorgu->execute(array(
							'yazi_id' => $id,
							'yazi_resim' => $resim_yolu
						));				
					}

					if ($islem=="hikayeekle") {
						$sorgu=$this->db->prepare("UPDATE hikaye SET 
							kapak_resim=:kapak_resim WHERE hik_id=:hik_id
							");

						$yukle=$sorgu->execute(array(
							'hik_id' => $id,
							'kapak_resim' => $resim_yolu
						));			
					}

					if ($islem=="hikaye_resim_ekle") {

						$sorgu=$this->db->prepare("INSERT INTO hikaye_galeri SET 
							isim=:isim, uzanti=:uzanti, hikaye=:hikaye, boyut=:boyut, link=:link
							");

						$yukle=$sorgu->execute(array(
							'hikaye' => $id,
							'isim' => $resim_yolu,
							'uzanti' => $dosyaturu,
							'boyut' => $boyut,
							'link' => $link
						));

					}

					if ($islem=="bannerekle") {
						$sorgu=$this->db->prepare("UPDATE banner SET 
							resim=:resim WHERE banner_id=:banner_id
							");

						$yukle=$sorgu->execute(array(
							'banner_id' => $id,
							'resim' => $resim_yolu
						));				
					}
					if ($islem=="sliderekle") {
						//$yenisim=$this->resim_webp($yuklemeklasoru, $resim_yolu);

						$sorgu=$this->db->prepare("UPDATE slider SET 
							resim=:resim WHERE slider_id=:slider_id
							");

						$yukle=$sorgu->execute(array(
							'slider_id' => $id,
							'resim' => $resim_yolu
						));				
					}

					if ($yukle) {
						return true;
					} else {
						throw new Exception(implode($sorgu->errorInfo()), 1);	
					}
				} else {
					throw new Exception($handle->error);
				}
			} else {
				throw new Exception("Resim Yüklenemedi");
			}

		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return false;
		}	
	}


	public function mailkaydet($mailbaslik,$gonderenisim,$gonderilenmail,$mailicerigi,$mailtur)
	{

	}

	public function iletisimformu($post)
	{

		$liste=[
			'mail_baslik' => guvenlik($_POST['form_konu'])." | İletişim Formu",
			'mail_isim' => $_POST['form_isim'],
			'mail_adres' => $this->ayarlar['admin_mail'],
			'mail_detay' => $_POST['mail_detay']
		];

		return $this->mailgonder($liste, "İletişim");
	}

	public function mailgonder($post,$tur="Tekli")
	{
		try {
			$_POST=$post;

			$mailbasligi=$_POST['mail_baslik'];
			$isim=$_POST['mail_isim']; 
			$mailadresi=$_POST['mail_adres'];
			$mailicerigi=$_POST['mail_detay'];

			require_once 'phpmail/Exception.php';
			require_once 'phpmail/PHPMailer.php';
			require_once 'phpmail/SMTP.php';

			$mail = new PHPMailer\PHPMailer\PHPMailer(); 
			$mail->IsSMTP();					
			$mail->SMTPAuth = true;
			$mail->SMTPSecure = 'ssl'; 
			$mail->Host = $this->host_adresi;
			$mail->Port = $this->port_numarasi; 
			$mail->IsHTML(true);
			$mail->Username = $this->mail_adresiniz;
			$mail->Password = $this->mail_sifreniz; 
			$mail->SetFrom($mail->Username, $isim);	
			$mail->Subject = $mailbasligi;
			$mail->Body = $mailicerigi;		
			$mail->CharSet = 'UTF-8';
			$mail->AddAddress($mailadresi);			

			if($mail->Send()) {
				//$this->mailkaydet($mailbasligi, $isim, $mailadresi, $mailicerigi,$tur);
				return TRUE;
			} else {				
				throw new Exception($mail->ErrorInfo, 1);
			}

		} catch (Exception $e) {
			$_SESSION['hata'] = $e->getMessage();
			return FALSE;
		}

	}

	public function toplumailgonder($post)
	{
		try {

			$_POST=$post;

			$mailbasligi=$_POST['mail_baslik'];			
			$isim=$this->ayarlar['site_baslik'];
			$mailicerigi=$_POST['mail_detay'];

			require_once 'phpmail/Exception.php';
			require_once 'phpmail/PHPMailer.php';
			require_once 'phpmail/SMTP.php';

			$mail = new PHPMailer\PHPMailer\PHPMailer(); 
			$mail->IsSMTP();		
			$mail->SMTPDebug = 2;			
			$mail->SMTPAuth = true;
			$mail->SMTPSecure = 'ssl'; 
			$mail->Host = $this->host_adresi;
			$mail->Port = $this->port_numarasi; 
			$mail->IsHTML(true);
			$mail->Username = $this->mail_adresiniz;
			$mail->Password = $this->mail_sifreniz; 
			$mail->SetFrom($mail->Username, $isim);	
			$mail->Subject = $mailbasligi;
			$mail->Body = $mailicerigi;		
			$mail->CharSet = 'UTF-8';
			$maillistesi=array();

			if (isset($_POST['mail_kisi_adres'])) {
				foreach ($_POST['mail_kisi_adres'] as $deger) {			
					array_push($maillistesi, $deger);
				}
			}

			$liste = array_unique($maillistesi);
			foreach ($liste as $value) {
				$sonuc=$mail->AddBcc($value);
			}

			if ($mail->Send()) {
				return TRUE;
			} else {
				throw new Exception($mail->ErrorInfo, 1);
			}

		} catch (Exception $e) {
			unset($_SESSION['hata']);
			$_SESSION['hata'] = $e->getMessage();
			return FALSE;
		}
	}









	public function mailkoduret($mail,$id)
	{
		$onaykodu=sifreleme($mail.$id.date("Y-m-d"));
		return $onaykodu;
	}


	public function maildogrula($kul_id)
	{
		try {
			$kullanici=$this->tekil("kullanicilar", "kul_id", $kul_id, "kul_id,kul_mail,mail_onay_durum");
			$onaykodu=$this->mailkoduret($kullanici['kul_mail'],$kullanici['kul_id']);

			$mailicerik='
			<center style="box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">
			<div class="col-md-7" style="box-sizing: border-box; flex: 0 0 58.3333%; max-width: 100%; min-height: 1px; padding-left: 15px; padding-right: 15px; position: relative; width: 763.578px;">
			<div class="jumbotron" style="background-color: #d6f9ff; border-radius: 0.3rem; box-sizing: border-box; color: #3f4648; margin-bottom: 2rem; padding: 4rem 2rem;">
			<h1 style="box-sizing: border-box; font-family: inherit; font-size: 2.5rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px;">
			E-Mail Verification Request</h1>
			<div class="lead" style="box-sizing: border-box; font-size: 1.25rem; margin-bottom: 1rem;">
			Please Confirm Your E-mail To Use The System</div>
			<hr class="mr-3" style="border-bottom: 0px; border-image: initial; border-left: 0px; border-right: 0px; border-top-color: rgba(0, 0, 0, 0.1); border-top-style: solid; box-sizing: content-box; height: 0px; margin-bottom: 1rem; margin-right: 1rem !important; margin-top: 1rem; overflow: visible;" />

			<a href="'.$this->ayarlar['site_link'].'/mailonayla/'.$onaykodu.'">
			<button class="btn btn-dark" style="background-color: #343a40; border-color: rgb(52, 58, 64); border-radius: 0.25rem; border-style: solid; border-width: 1px; color: white; cursor: pointer; font-family: inherit; font-size: 1rem; line-height: 1.5; margin: 0px; overflow: visible; padding: 0.375rem 0.75rem; transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s; user-select: none; vertical-align: middle; white-space: nowrap; cursor:pointer" type="button">Confirm Email Address</button>
			</a>
			</div>
			</div>
			</center>';

			if ($this->ayarlar['mail_onay']==1) {
				if ($kullanici['mail_onay_durum']==0) {
					$liste = array(
						'mail_onay_kod' => $onaykodu
					);

					$this->direktguncelle("kullanicilar", "kul_id", $kul_id, $liste);

					$onaymail=array(
						'mail_baslik' => "E-Posta Onaylama İşlemi | ".$this->ayarlar['site_baslik'],
						'mail_isim' => $this->ayarlar['site_baslik'],
						'mail_adres' => $kullanici['kul_mail'],
						'mail_detay' => $mailicerik
					);

					$sonuc=$this->mailgonder($onaymail,"Email Verification");


					if ($sonuc) {
						return TRUE;
					} else {
						return FALSE;
					}
				} else {
					throw new Exception("You Have Already Verified Your Email Address", 1);
				}
			} else {
				throw new Exception("Mail Confirmation Process Off", 1);
			}
		} catch (Exception $e) {
			$_SESSION['hata'] = $e->getMessage();
			return FALSE;
		}

	}




	public function sms($mesaj,$kullanicilar)
	{
		return netgsm_sms($this->ayarlar, $mesaj, $kullanicilar);
	}



}


?>