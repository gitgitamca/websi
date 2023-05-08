<?php 



//@session_name("AksoyhlcHesap123456789");
//ini_set('session.cookie_samesite', 'None');
//session_set_cookie_params(['SameSite' => 'None', 'Secure' => true]);
@ob_start();
@session_start();

ini_set("display_errors", 0);


$host="localhost"; //Host adınızı girin varsayılan olarak Localhosttur eğer bilginiz yoksa bu şekilde bırakın
$veritabani_ismi="sellhqqh_lexa"; //Veritabanı İsminiz
$kullanici_adi="sellhqqh_lexa"; //Veritabanı kullanıcı adınız
$sifre="sellhqqh_lexa"; //Kullanıcı şifreniz

try {

	$db=new PDO("mysql:host=$host;dbname=$veritabani_ismi;charset=utf8",$kullanici_adi,$sifre);
	//echo "veritabanı bağlantısı başarılı";
}

catch (PDOExpception $e) {
	echo "Veritabanı Bağlantı Hatası, Lütfen Bilgilerinizi Kontrol Edin <hr>";
	echo $e->getMessage();
	exit;
}


$ayarsor=$db->prepare("SELECT * FROM ayarlar");
$ayarsor->execute();
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);

@define('yol', $ayarcek['site_link']);
@define('site', yol."/");

@define('magaza', site."magaza/");
@define('magazalar', yol."/magazalar");

@define('yonetim', yol."/yonetim/");
@define('panel', yol."/panel");
@define('ajax', panel."/classes/ajax.php");

@define('siparisler', yol."/siparisler/");

@define('blog', yol."/blog/");
@define('kat', yol."/kategori/");
@define('dosya', yol."/"."dosyalar/");

@define('urun_galeri', yol."/"."dosyalar/icerik/");
@define('hikaye', yol."/"."dosyalar/hikaye/");

@define('blog_resim', dosya."/blog/");
@define('banner', dosya."/banner/");

@define('kucuk_resim', dosya."icerik/kucuk/");
@define('orta_resim', dosya."icerik/orta/");
@define('resim', dosya."icerik/raw/");

@define('urun', yol."/"."urun/");
@define('logo', dosya."logo/");

date_default_timezone_set('Europe/Istanbul');

spl_autoload_register(function($sinif_ismi) {
	$sinif_adresi = __DIR__."/classes/class-".$sinif_ismi . ".php";
	if (is_readable($sinif_adresi)) {
		require_once $sinif_adresi;
	}
});

$crud = new crud($db);
$veri = new veri($db);
$sepet = new sepet($db);
$blog = new blog($db);
$genel = new genel($db);
$katClass = new kat($db);
$ticket = new ticket($db);
$rapor = new rapor($db);
$tg = new tg($db);
$kupon = new kupon($db);
$urun = new urun($db);
$rec = new recaptcha($db);
$pre = new premium($db);
$sms_onay = new smsonay($db);
$bildirim = new bildirim($db);

require_once __DIR__.'/fonksiyonlar.php';
require_once __DIR__.'/ext.php';


?>