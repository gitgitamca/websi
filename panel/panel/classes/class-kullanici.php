<?php 

include_once 'class-premium.php';

class kullanici extends premium
{

	public function giris($kul_mail,$kul_sifre,$beni_hatirla) {
		
		try {
			global $rec;
			if (!$rec->dogrulama()) {
				throw new Exception(ses('hata'));
			}

			$sorgu=$this->db->prepare("SELECT * FROM kullanicilar WHERE kul_mail=? AND kul_sifre=?");
			if (isset($_COOKIE['aksoyhlcoturum'])) {
				$liste=json_decode($_COOKIE['aksoyhlcoturum']);
				$cozulen=openssl_decrypt($liste->kul_sifre, "AES-128-ECB", "sifre_coz");

				if ($_POST['kul_sifre']==$liste->kul_sifre) {
					$sorgu->execute([$kul_mail,sifreleme($cozulen)]);
				} else {
					$sorgu->execute([$kul_mail,sifreleme($kul_sifre)]);
					
				}
			} else {
				$sorgu->execute([$kul_mail,sifreleme($kul_sifre)]);
			}

			

			if ($sorgu->rowCount()!=0) {
				
				$kullanici=$sorgu->fetch(PDO::FETCH_ASSOC);

				if ($kullanici['kul_durum']==0) {
					throw new Exception("This User Has Been Banned", 1);
				}


				foreach ($kullanici as $key => $value) {
					$_SESSION[$key]=$value;
				}

				if ($kullanici['auth_onay']==0) {
					$_SESSION['guvenlik']=true;
				}

				$_SESSION["kul_tamisim"]=$_SESSION["kul_isim"]." ".$_SESSION["kul_soyisim"];



				if (empty($beni_hatirla)) {
					@setcookie("aksoyhlcoturum",json_encode(@$kullanicilar),strtotime("-10 day"),"/");
				} elseif (isset($beni_hatirla)) {					
					if (empty($_COOKIE['aksoyhlcoturum'])) {
						$yenisifre=openssl_encrypt($kul_sifre, "AES-128-ECB", "sifre_coz");
					} else { 
						$liste=json_decode($_COOKIE['aksoyhlcoturum']);
						if ($_POST['kul_sifre']==$liste->kul_sifre) {
							$yenisifre=$liste->kul_sifre;
						} else {
							$yenisifre=openssl_encrypt($kul_sifre, "AES-128-ECB", "sifre_coz");
						}
						
					}

					$kullanicilar=
					[
						"kul_mail" => $kul_mail,
						"kul_sifre" => $yenisifre
					];

					setcookie("aksoyhlcoturum",json_encode($kullanicilar),strtotime("+10 day"),"/");
				}
				$this->direktguncelle("kullanicilar", "kul_id", ses("kul_id"), ['son_giris' => date("Y-m-d H:i:s"), 'ip_adresi' => $_SERVER['REMOTE_ADDR']]);

				return TRUE;
			} else {

				throw new Exception("Please Check Your Information", 1);
			}

		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}


	public function kullaniciguncelle($post,$dosya=[],$islem="")
	{
		try {
			if (isset($post['files'])) {
				unset($post["files"]);
			}
			


			$_POST=$post;
			$_FILES=$dosya;


			$sonuc=$this->direktguncelle("kullanicilar", "kul_id", $post['kul_id'], $post, "kul_id", "kullaniciguncelle");

			if (strlen(@$_POST['kul_sifre'])>1) {
				$sorgu=$this->db->prepare("UPDATE kullanicilar SET
					kul_sifre=:kul_sifre WHERE kul_id=:kul_id
					");
				$ekleme=$sorgu->execute(array(
					'kul_sifre' => sifreleme($_POST['kul_sifre']),				
					'kul_id' => guvenlik($_POST['kul_id'])
				));
			}

			if (isset($_FILES['kul_logo'])) {
				if (@$_FILES["kul_logo"]["error"] == 0) {
					$sonuc=$this->tekdosya("profil_logo_ekle",@$_FILES['kul_logo'],$_POST['kul_id']);
					if ($sonuc['sonuc']) {
						echo $_SESSION['hata'];
					}
				}
			}

			if ($sonuc) {
				$detay=$_SESSION['kul_isim']." kullanıcısı ".date('Y.m.d H:i:s')." tarihinde <b>".@$_POST['kul_isim']."</b> ismindeki kullanıcı bilgilerini güncelledi.";
				$this->log("d",$detay);	
				return TRUE;
			} else {
				throw new Exception($_SESSION['hata'], 1);	
			}

		} catch (Exception $e) {
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}
	}


	public function profilguncelle($post,$file)
	{
		$_POST=$post;
		$_FILES=$file;

		try {

			$sorgu=$this->db->prepare("UPDATE kullanicilar SET
				kul_isim=:kul_isim,
				kul_soyisim=:kul_soyisim,			
				kul_telefon=:kul_telefon,
				kul_adres=:kul_adres,
				kul_sehir=:kul_sehir,
				kul_ulke=:kul_ulke,
				kul_posta_kodu=:kul_posta_kodu,
				auth_code=:auth_code,
				uygulama_bildirim=:uygulama_bildirim,
				kul_fatura=:kul_fatura,
				web_bildirim=:web_bildirim,
				magaza_bilgi=:magaza_bilgi,
				magaza_isim=:magaza_isim,
				ig=:ig,
				fb=:fb,
				tw=:tw,
				linkedin=:linkedin,
				kul_fatura=:kul_fatura,
				wp=:wp,
				auth_onay=:auth_onay,
				ticket_mail_onay=:ticket_mail_onay,
				ticket_bildirim_onay=:ticket_bildirim_onay
				WHERE kul_id=:kul_id
				");
			$ekleme=$sorgu->execute(array(
				'kul_isim' => guvenlik($_POST['kul_isim']),		
				'kul_soyisim' => guvenlik($_POST['kul_soyisim']),					
				'kul_telefon' => mb_substr(ltrim(guvenlik(preg_replace('/\D/', '', $_POST['kul_telefon'])),"0"), 0,11),	
				'kul_adres' => guvenlik($_POST['kul_adres']),	
				'kul_sehir' => guvenlik($_POST['kul_sehir']),	
				'kul_ulke' => guvenlik($_POST['kul_ulke']),	
				'kul_posta_kodu' => guvenlik($_POST['kul_posta_kodu']),		
				'auth_code' => guvenlik($_POST['auth_code']),		
				'uygulama_bildirim' => guvenlik($_POST['uygulama_bildirim']),	
				'kul_fatura' => guvenlik($_POST['kul_fatura']),		
				'web_bildirim' => guvenlik($_POST['web_bildirim']),			
				'magaza_bilgi' => $_POST['magaza_bilgi'],			
				'magaza_isim' => guvenlik($_POST['magaza_isim']),			
				'ig' => guvenlik($_POST['ig']),			
				'tw' => guvenlik($_POST['tw']),			
				'fb' => guvenlik($_POST['fb']),			
				'linkedin' => guvenlik($_POST['linkedin']),		
				'wp' => guvenlik($_POST['wp']),			
				'kul_fatura' => guvenlik($_POST['kul_fatura']), 
				'auth_onay' => guvenlik($_POST['auth_onay']),
				'ticket_mail_onay' => guvenlik($_POST['ticket_mail_onay']),
				'ticket_bildirim_onay' => guvenlik($_POST['ticket_bildirim_onay']),
				'kul_id' => $_SESSION['kul_id']
			));

		
			if (strlen(@$_POST['kul_sifre'])>1) {
				$sorgu=$this->db->prepare("UPDATE kullanicilar SET
					kul_sifre=:kul_sifre WHERE kul_id=:kul_id
					");
				$ekleme=$sorgu->execute(array(
					'kul_sifre' => sifreleme($_POST['kul_sifre']),				
					'kul_id' => $_SESSION['kul_id']
				));
			}


			if ($_FILES["kul_logo"]["error"] == 0) {
				$sonuc=$this->tekdosya("profil_logo_ekle",$_FILES['kul_logo'],$_SESSION['kul_id']);
				if ($sonuc['sonuc']) {
					echo $_SESSION['hata'];
				}
			}


			$liste=$this->tek("SELECT * FROM kullanicilar WHERE kul_id={$_SESSION['kul_id']}");

			/*if ($liste['auth_onay']==1) {
				$_SESSION['guvenlik']=true;
			} else {
				$_SESSION['guvenlik']=false;
			}*/


			foreach ($liste as $key => $value) {
				$_SESSION[$key]=$value;
			}


			if ($ekleme) {
				$_SESSION['kul_isim']=$_POST['kul_isim'];
				return TRUE;
			} else {
				throw new Exception(implode($sorgu->errorInfo()), 1);
			}

		} catch (Exception $e) {			
			$_SESSION['hata']=$e->getMessage();
			return FALSE;
		}

	}


	public function magaza_takip($id)
	{
		$var=$this->tek("SELECT COUNT(takip_id) as sayi, takip_id FROM kul_takip WHERE magaza=$id AND takipci={$_SESSION['kul_id']}");
		if ($var['sayi']==0) {
			$this->direktekle("kul_takip", ['magaza' => $id, 'takipci' => $_SESSION['kul_id']]);
			return 1;
		} else {
			$this->silme("kul_takip", "takip_id", $var['takip_id']);
			return 0;
		}
	}

}

?>