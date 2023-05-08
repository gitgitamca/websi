<?php 
require_once __DIR__.'/../config.php';

//SMTP Mail Ayarları
$host_adresi=$ayarcek['host_adresi'];
$port_numarasi=$ayarcek['port_numarasi'];
@$mail_adresiniz=$ayarcek['mail_adresi'];
@$mail_sifreniz=$ayarcek['mail_sifre'];

$islem = new kullanici($db);
$tg = new tg($db);
/******************************************/

if (isset($_POST['bildirim_id_kaydet'])) {
	$durum=false;
	$id = guvenlik($_POST['bildirim_id_kaydet']);

	if (oturumkontrol(h)) {
		if (strlen($id)>3) {
			$durum=$crud->direktguncelle("kullanicilar", "kul_id", ses('kul_id'), ['uygulama_bildirim' => $id]);
		}
	}

	echo json_encode(['durum' => $durum]);

}

/******************************************/

if (isset($_POST['site_abone_ol'])) {
	$_POST['mail']=guvenlik($_POST['mail']);
	try {
		if (filter_var($_POST['mail'],FILTER_VALIDATE_EMAIL)) {
			
			$sayi=$crud->tek("SELECT COUNT(abone_id) as sayi FROM abone WHERE abone_mail='{$_POST['mail']}'",true)->sayi;

			if ($sayi==0) {
				$liste=[
					'abone_mail' => $_POST['mail']
				];

				$crud->direktekle("abone",$liste);
				echo json_encode(['durum' => 'ok']);
			} else {
				throw new Exception("This e-mail address has been already subscribed");
			}
			
		} else {
			throw new Exception("Invalid Mail Format");
		}
	} catch (Exception $e) {
		echo json_encode(['durum' => 'no', 'mesaj' => $e->getMessage()]);
	}
}

/******************************************/

if (isset($_POST['smsgonder'])) {
	echo json_encode($sms_onay->onay_kodu_gonder());
}

/******************************************/

if (isset($_POST['smskontrol'])) {
	echo json_encode($sms_onay->sms_kontrol());
}

/******************************************/


if (isset($_POST['kimlikdogrulama'])) {
	echo kod_kontrol($_POST['kod']);
}
/********************************************************************************/


if (isset($_POST['autholustur'])) {
	echo kod_uret();
}

/********************************************************************************/


if (isset($_POST['tg_giris'])) {
	echo json_encode($tg->dogrulama($_POST['tg_giris']));
}


/********************************************************************************/

if (isset($_POST['sayfa_kontrol'])) {
	yetkikontrol(e);
	
	if (file_exists(__DIR__."/../../".$_POST['link'].".php")) {
		$liste['sonuc']="no";
	} else {
		$liste['sonuc']="ok";
	}

	echo json_encode($liste);
}



/********************************************************************************/


if (isset($_POST['hikaye_resim_cek'])) {
	sayi($_POST['hik_id']);
	$resimler=$veri->hikaye_resimler($_POST['hik_id']);
	$resim_metin="";
	$sayi=-1;
	foreach ($resimler as $key => $value) {
		$sayi++;
		if ($sayi!=0) {
			$gozukme="d-none";
		} else {
			$gozukme="";
		}

		if (strlen($value->link)>5) {
			$buton="<a target='_blank' href='".$value->link."' class='buton-outline ml-3 mt-4 btn-block text-center'>
			<i class='far fa-paper-plane mr-3'></i> Go
			</a>";
		} else {
			$buton="";
		}

		$resim_metin.="
		<div class='hikaye_icerik_gorsel hikaye_icerik_sira_$sayi $gozukme'>
		<img src='".hikaye.$value->isim."' class='hikaye_icerik_gorsel_resim'> 
		<div class='d-flex justify-content-center text-center'>
		$buton
		</div>
		</div>
		";
	}



	echo json_encode([
		'adet' => count($resimler),
		'resimler' => $resim_metin
	]);
}


/********************************************************************************/


if (isset($_POST['hikaye_urun_cek'])) {
	echo json_encode([
		'link' => $veri->ul($veri->tek_urun($_POST['urun_id'],"urun_link"))
	]);
}


/********************************************************************************/


if (isset($_POST['bildirim_getir'])) {
	$sonuc=$crud->tek("SELECT popup_detay FROM popup WHERE popup_id={$_POST['bildirim_getir']}");
	echo json_encode($sonuc);

}


/********************************************************************************/


if (isset($_POST['kupon_kullan'])) {
	echo json_encode($kupon->kullan(guvenlik($_POST['kupon'])));

}

/********************************************************************************/


if (isset($_POST['magaza_takip'])) {
	if (oturumkontrol()) {
		$sonuc=$islem->magaza_takip($_POST['magaza']);
		if ($sonuc==0) {
			echo json_encode(['durum' => 'ok', 'mesaj' => 'Store successfully unfollowed']);
		} else {
			echo json_encode(['durum' => 'ok', 'mesaj' => 'Congratulations, you are now following the store. You will receive an e-mail when the store releases a new product. You can change this setting from your profile.']);
		}
	} else {
		echo json_encode(['durum' => 'no', 'mesaj' => 'You Cannot Perform This Operation Without Login']);
	}
}

/********************************************************************************/

if (isset($_POST['urungorselsilme'])) {
	$sil=$db->prepare("DELETE FROM urun_galeri WHERE isim=:isim");
	$kontrol=$sil->execute(array(
		'isim' => $_POST['dosya_yolu']
	));
	unlink(__DIR__."/../../dosyalar/icerik/".$_POST['dosya_yolu']);
	$sonuc=str_replace(".", "", $_POST['dosya_yolu']);
	echo json_encode(['sonuc' => 'ok', 'dosya' => $sonuc]);
	exit;
}

/********************************************************************************/

if (isset($_POST['hikayeresimsilme'])) {
	yetkikontrol(e);
	$sil=$db->prepare("DELETE FROM hikaye_galeri WHERE isim=:isim");
	$kontrol=$sil->execute(array(
		'isim' => $_POST['dosya_yolu']
	));
	unlink(__DIR__."/../../dosyalar/hikaye/".$_POST['dosya_yolu']);
	$sonuc=str_replace(".", "", $_POST['dosya_yolu']);
	echo json_encode(['sonuc' => 'ok', 'dosya' => $sonuc]);
	exit;
}


/********************************************************************************/


if (isset($_POST['kat_getir'])) {
	$yenideger = $_POST['deger']+1;
	$kat_sayisi = 0;
	$secenekler = $veri->cok("SELECT * FROM kategori WHERE kat_ust={$_POST['kat_id']}",true);
	$kat_sayisi = count($secenekler);

	if ($kat_sayisi==0) {
		echo json_encode(['durum' => 'no']);
	} else {

		$metin="<option value='0'>-- Choose --</option>";

		foreach ($secenekler as $key => $value) {
			$metin.="<option value='".$value->kat_id."'>".$value->kat_isim."</option>";
		}

		$metin="<div class='col-md-3'><select class='form-control silinebilir kat_select' onchange='kat_getir($yenideger)' id='kat_$yenideger' name='kat_$yenideger'>".$metin."</select></div>";
		echo json_encode(['durum' => 'ok', 'select' => $metin, 'deger' => $yenideger, 'sayi' => $kat_sayisi]);
	}
}


/********************************************************************************/

if (isset($_POST['slidersiralama'])) {
	yetkikontrol(e);
	foreach ($_POST['slidersiralama'] as $key => $value) {
		$deger=array(
			'sira'=>$key
		);
		$sonuc=$islem->direktguncelle("slider","slider_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['bannersiralama'])) {
	yetkikontrol(e);
	foreach ($_POST['bannersiralama'] as $key => $value) {
		$deger=array(
			'sira'=>$key
		);
		$sonuc=$islem->direktguncelle("banner","banner_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['hikayesiralama'])) {
	yetkikontrol(e);
	foreach ($_POST['hikayesiralama'] as $key => $value) {
		$deger=array(
			'sira'=>$key
		);
		$sonuc=$islem->direktguncelle("hikaye","hik_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['hikaye_icerik_resim_siralama'])) {
	yetkikontrol(e);
	foreach ($_POST['hikaye_icerik_resim_siralama'] as $key => $value) {
		$deger=array(
			'sira'=>$key
		);
		$sonuc=$islem->direktguncelle("hikaye_galeri","dosya_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['urun_icerik_resim_siralama'])) {

	foreach ($_POST['urun_icerik_resim_siralama'] as $key => $value) {
		$deger=array(
			'sira'=>$key
		);
		$sonuc=$islem->direktguncelle("urun_galeri","dosya_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['magazasiralama'])) {
	yetkikontrol(e);
	foreach ($_POST['magazasiralama'] as $key => $value) {
		$deger=array(
			'manset_sira'=>$key
		);
		$sonuc=$islem->direktguncelle("kullanicilar","kul_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}
/********************************************************************************/

if (isset($_POST['urunsiralama'])) {
	yetkikontrol(e);
	foreach ($_POST['urunsiralama'] as $key => $value) {
		$deger=array(
			'manset_sira'=>$key
		);
		$sonuc=$islem->direktguncelle("urun","urun_id",$value,$deger);
	}
	if ($sonuc) {
		echo '{"sonuc":"ok"}';
	} else {
		echo json_encode(['sonuc' => 'no', 'hata' => $_SESSION['hata']]);
	}
	exit;
}

/********************************************************************************/

if (isset($_POST['sepet_fiyat'])) {
	echo json_encode(['durum' => 'ok', 'ucret' => $sepet->sepet_fiyat()]);

}

/********************************************************************************/

if (isset($_POST['sepet_adet_degistir'])) {
	echo $sepet->sepet_adet_degistir();
}

/********************************************************************************/

if (isset($_POST['sepet_sil'])) {
	echo $sepet->sepet_sil();
}


/********************************************************************************/

if (isset($_POST['sepete_ekle'])) {
	echo $sepet->sepete_ekle();
}


/********************************************************************************/

if (isset($_POST['fav_islem'])) {

	$durum="ok";
	$mesaj="";
	$son_durum=0;
	if (oturumkontrol("h")) {
		$sonuc=$veri->fav_durum($_POST['id']);
		if ($sonuc->sayi==0) {
			$liste=[
				'kul' => $_SESSION['kul_id'],
				'urun' => $_POST['id']
			];
			$ekleme=$islem->direktekle("favori", $liste);
			if ($ekleme) {
				$son_durum=1;
				$durum="ok";
			} else {
				$son_durum=1;
				$durum="no";
				$mesaj="We are unable to process your request at this time";
			}

		} else {
			$islem->silme("favori", "fav_id", $sonuc->fav_id);
			$durum="ok";
			$son_durum=0;
		}
	} else {
		$durum="no";
		$mesaj="You must be logged in to add this product to your favourites.";
		$son_durum=0;
	}
	$fav_sayi=$veri->fav_sayisi($_POST['id']);

	echo json_encode(['durum' => $durum, 'mesaj' => $mesaj, 'son_durum' => $son_durum,'fav_sayisi' => $fav_sayi]);

}

/********************************************************************************/
if (isset($_POST['yorum_getir'])) {
	$kac_yorum=5;
	$yorumlar=$veri->degerlendirmeler($_POST['urun_id'],$_POST['bit'].",".$kac_yorum);
	$metin="";

	foreach ($yorumlar as $key => $var) {
		$metin.='<div class="media my-4 text-left kutu">
		<div class="bg_logo" data-url="'.logo.$var->kul_logo .'"></div>
		<div class="media-body ml-3 mt-1">

		<h4 class="mt-0">'.$veri->isim($var,false).'  | <small> '.$var->yildiz_tarih.'</small></h4>
		<p class="fs-75 mt-2">'.$var->icerik.'</p>
		<div class="yildiz ml-auto disabled" data-yildiz="'.$var->deger.'"></div>
		</div>
		</div>';
	}

	if (count($yorumlar)==0) {
		echo json_encode(['durum' => 'no','yorumlar' => $metin, 'bas' => $_POST['bas'], 'bit' => $_POST['bit']]);
	} else {
		echo json_encode(['durum' => 'ok','yorumlar' => $metin, 'bas' => $_POST['bas'], 'bit' => $_POST['bit']+$kac_yorum]);
	}

}


/********************************************************************************/

if (isset($_POST['magaza_yorum_getir'])) {
	$kac_yorum=5;
	$yorumlar=$veri->magaza_degerlendirmeler($_POST['kul_id'],$_POST['bit'].",".$kac_yorum);
	$metin="";

	foreach ($yorumlar as $key => $var) {
		$metin.='<div class="media my-4 text-left kutu">
		<div class="d-block align-self-center"><a href="'.$veri->pl($var).'">
		<div class="bg_logo" data-url="'.logo.$var->kul_logo .'"></div>
		</a></div>
		
		<div class="media-body ml-3 mt-1">
		<h3 class="fs-75 mt-2 bg_mor d-inline-block p-2 px-4 br-1"><a href="'.$veri->ul($var).'">'.$var->urun_baslik.'</a></h3>
		<hr>
		<h4 class="mt-0 font-weight-normal">'.$veri->isim($var,false).'  | <small> '.$var->yildiz_tarih.'</small></h4>
		<p class="fs-75 mt-2">'.$var->icerik.'</p>
		

		<div class="yildiz ml-auto disabled" data-yildiz="'.$var->deger.'"></div>
		</div>
		</div>';
	}

	if (count($yorumlar)==0) {
		echo json_encode(['durum' => 'no','yorumlar' => $metin, 'bas' => $_POST['bas'], 'bit' => $_POST['bit']]);
	} else {
		echo json_encode(['durum' => 'ok','yorumlar' => $metin, 'bas' => $_POST['bas'], 'bit' => $_POST['bit']+$kac_yorum]);
	}

}



/********************************************************************************/



if (@$_POST['islem']=="sifresifirlamamail") {
	try {
		$mailsor=$db->prepare("SELECT * FROM kullanicilar WHERE kul_mail=:kul_mail");
		$mailsor->execute(array(
			'kul_mail'=> guvenlik($_POST['mail_adres'])));
		$say=$mailsor->rowcount();
		if ($say > 0) {
			$_SESSION['gecici_mail']=guvenlik($_POST['mail_adres']);
			$mailadresi=guvenlik($_POST['mail_adres']);
			$mailbasligi=$ayarcek['site_baslik']." Password Reset Request";
			$isim=$ayarcek['site_baslik'];
			$sayi=rand(1000000, 9999999);
			$mailicerigi='<center style="box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">
			<div class="col-md-7" style="box-sizing: border-box; flex: 0 0 58.3333%; max-width: 100%; min-height: 1px; padding-left: 15px; padding-right: 15px; position: relative; width: 100%;">
			<div class="jumbotron" style="background-color: #d6f9ff; border-radius: 0.3rem; box-sizing: border-box; color: #3f4648; margin-bottom: 2rem; padding: 4rem 2rem;">
			<h1 style="box-sizing: border-box; font-family: inherit; font-size: 2.5rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px;">
			Password Reset Request</h1>
			<div class="lead" style="box-sizing: border-box; font-size: 1.25rem; margin-bottom: 1rem;">Type the Code Below on the Password Reset Page</div>
			<hr class="mr-3" style="border-bottom: 0px; border-image: initial; border-left: 0px; border-right: 0px; border-top-color: rgba(0, 0, 0, 0.1); border-top-style: solid; box-sizing: content-box; height: 0px; margin-bottom: 1rem; margin-right: 1rem !important; margin-top: 1rem; overflow: visible;" />
			<h3 style="box-sizing: border-box; color: inherit; font-family: inherit; font-size: 1.75rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px;">'.$sayi.'</h3>
			<button style="background-color: #343a40; margin-top: 10px !important; border-color: rgb(52, 58, 64); border-radius: 0.25rem; border-style: solid; border-width: 1px; color: white; cursor: pointer; font-family: inherit; font-size: 1rem; line-height: 1.5; margin: 0px; overflow: visible; padding: 0.375rem 0.75rem; transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s; user-select: none; vertical-align: middle; white-space: nowrap;" type="button">Login</button>
			</a>
			</div>
			</div>
			</center>';
			$_SESSION['kod']=$sayi;

			$liste=[
				'mail_baslik' => $mailbasligi,
				'mail_isim' => $isim,
				'mail_adres' => $mailadresi,
				'mail_detay' => $mailicerigi
			];

			$sonuc = $crud->mailgonder($liste,"Password Reset");



			if($sonuc) { 
				echo json_encode(['sonuc' => 'tamam']);
			} else {
				throw new Exception(ses('hata'));
			}

		} else {
			throw new Exception("There is no such e-mail address, please check your e-mail address");
		}
		return true;
	} catch (Exception $e) {
		echo json_encode(['sonuc' => 'no', 'mesaj' => $e->getMessage()]);
		return false;
	}
}


#=======================================================#


if (@$_POST['islem']=="sifresifirlamakontrol") {
	try {
		if ($_SESSION['kod']==guvenlik($_POST['guvenlik_kodu'])) {
			$_SESSION['sifremail']=$_SESSION['gecici_mail'];
			$_SESSION['sifre_degisme_durum']="tamam";
			echo json_encode(['sonuc' => 'tamam']);
		} else {
			throw new Exception("The Security Code You Entered Is Wrong Please Enter A Correct Security Code");
		}
	} catch (Exception $e) {
		echo json_encode(['sonuc' => 'no', 'mesaj' => $e->getMessage()]);
		return false;
	}
}


#=======================================================#


if (@$_POST['islem']=="sifresifirlamason") {

	try {
		if ($_SESSION['sifre_degisme_durum']!="tamam") {
			throw new Exception("An Error Encountered Please Refresh the Page and Try Again");
		}

		$yenisifre_bir=guvenlik($_POST['yeni_sifre']); 
		$yenisifre_iki=guvenlik($_POST['yeni_sifre_tekrar']);

		$kul_sifre=sifreleme($eskisifre);

		if ($yenisifre_bir==$yenisifre_iki) {
			if (strlen($yenisifre_bir)>=8) {
				$sifre=sifreleme($yenisifre_bir);
				$uyekaydet=$db->prepare("UPDATE kullanicilar SET
					kul_sifre=:kul_sifre
					WHERE kul_mail=:kul_mail");

				$insert=$uyekaydet->execute(array(
					'kul_sifre' => $sifre,
					'kul_mail'=> $_SESSION['sifremail']
				));

				if ($insert) {
					echo json_encode(['sonuc' => 'tamam']);
				} else {
					throw new Exception("An Error Encountered Please Refresh the Page and Try Again");
				}

			} else {
				throw new Exception("Your password must be at least 8 characters");
			}

		} else {
			throw new Exception("The Passwords You Just Entered Doesnt Match");
		}
		exit;
	} catch (Exception $e) {
		echo json_encode(['sonuc' => 'no', 'mesaj' => $e->getMessage()]);
		exit;
	}

}



/********************************************************************************/

if (isset($_POST['satinalmadomain'])) {
	$_SESSION['domain_adresi']=$_GET['domain'];
	echo '{"sonuc":"ok"}';
	exit;
}

/********************************************************************************/

if (isset($_POST['satinalma'])) {
	if (@$_SESSION['satin_alma_sonuc']=="ok") {
		unset($_SESSION['satin_alma_sonuc']);
		echo '{"sonuc":"ok"}';

	} else {
		echo '{"sonuc":"no"}';
	}
	exit;
}

/********************************************************************************/
/*

if (!empty($_FILES['summernotedosya'])) {
$errorImgFile = "asdasd";
$temp = explode(".", $_FILES["summernotedosya"]["name"]);
$newfilename = round(microtime(true)) . '.' . end($temp);
$destinationFilePath = '../../dosyalar/ticket/'.$newfilename ;
if(!move_uploaded_file($_FILES['summernotedosya']['tmp_name'], $destinationFilePath)){
echo $errorImgFile;
}
else{
echo "./dosyalar/ticket/".$newfilename;
}
exit;
}
*/
/********************************************************************************/

if (isset($_POST['islem'])) {
	if ($_POST['islem']=="kayitol") {
		unset($_POST['islem']);

		foreach ($_POST as $key => $value) {
			$_POST[$key]=guvenlik($value);
		}

		$sonuc=['durum' => 'no'];

		extract($_POST);

		if (strlen($kul_isim)==0 OR strlen($kul_soyisim)==0 OR strlen($kul_mail)==0 OR strlen($kul_sifre)==0 OR strlen($kul_telefon)==0 OR strlen($username)==0) {
			$sonuc['mesaj']="Please Fill All Fields";
		} else {
			if (filter_var($kul_mail, FILTER_VALIDATE_EMAIL)) {
				if (strlen($kul_sifre)>=8) {
					if ($gizlilik_sozlesme==1) {
						$say=$islem->satirsayisi("kullanicilar","kul_mail",$kul_mail);
						if ($say==0) {
							$say=$islem->satirsayisi("kullanicilar","kul_telefon",$kul_telefon);
							if ($say==0) {
								$say=$islem->satirsayisi("kullanicilar","kul_link",$username);
								if ($say==0) {
									$uyeekle=$db->prepare("INSERT INTO kullanicilar SET 
										kul_isim=:kul_isim,
										kul_soyisim=:kul_soyisim,
										kul_mail=:kul_mail,
										kul_sifre=:kul_sifre, 
										kul_link=:kul_link,	
										kul_telefon=:kul_telefon,
										api_key=:api_key					
										");

									$uyeekle->execute(array(
										'kul_isim' => $kul_isim,
										'kul_soyisim' => $kul_soyisim,
										'kul_mail'=> $kul_mail,
										'kul_sifre'=> sifreleme($kul_sifre),
										'kul_link' => $username,
										'kul_telefon' => $kul_telefon,
										'api_key' => token_olustur(40)
									));

									if ($uyeekle) {
										$sonuc['durum']="ok";
										$islem->giris($kul_mail,$kul_sifre,0);
									} else {
										$sonuc['hata']=$uyeekle->errorInfo();
									}
								} else {
									$sonuc['mesaj']="This Username is Used by Someone Else";
								}
							} else {
								$sonuc['mesaj']="This Phone Number is Used by Someone Else";
							}
						} else {
							$sonuc['mesaj']="This Email Address is Used by Someone Else";
						}
					} else {
						$sonuc['mesaj']="You Must Accept the Privacy Policy";
					}	
				} else {				
					$sonuc['mesaj']="Your Password Must Have At Least 8 Characters";
				}
				
			} else {
				$sonuc['mesaj']="Please Enter Correct Email Address";
			}
		}
		echo json_encode($sonuc);
	} 
	
}


?>