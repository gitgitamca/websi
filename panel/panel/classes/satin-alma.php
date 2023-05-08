<?php
require_once '../config.php';
// Değişkene göre kendiniz düzenleyebilirsiniz.

include_once 'class-shopier.php'; // İndirdiğimiz dosyada bulunan sınıfımızı dosyaya dahil ediyoruz.
include_once 'class-crud.php';

$crud = new crud($db);

echo "<center style='margin-top:2rem;'><h1>Yükleniyor...</h1></center>";


$fiyat = floatval($_GET['bakiye_ucret']);

$kullanici=$crud->tekil("kullanicilar", "kul_id", $_SESSION['kul_id'], "*");

$shopier = new Shopier($ayarcek['shopier_api_key'], $ayarcek['shopier_secret_key']); // Kendi api bilgilerinizi gireceksiniz.
$shopier->setBuyer([ // Kullanıcı bilgileri
'id' => '23', // Sipariş kodu
'paket' => 'Paket Satışı', // Paket adı
'first_name' => @$kullanici['kul_isim'] , 'last_name' => @$kullanici['kul_soyisim'] , 'email' => @$kullanici['kul_mail'] , 'phone' => @$kullanici['kul_telefon'] ]); // Kullanıcının ad, soyad, telefon, email bilgileri
$shopier->setOrderBilling([
'billing_address' => @$kullanici['kul_adres'], //Kullanıcının adresi
'billing_city' =>  @$kullanici['kul_sehir'], // İl
'billing_country' =>  @$kullanici['kul_ulke'], //Ülke
'billing_postcode' =>  @$kullanici['kul_posta_kodu'], //Posta Kodu
]);
$shopier->setOrderShipping([
'shipping_address' => @$kullanici['kul_adres'], //Kullanıcının adresi
'shipping_city' => @$kullanici['kul_sehir'],// İl
'shipping_country' => @$kullanici['kul_ulke'], //Ülke
'shipping_postcode' => @$kullanici['kul_posta_kodu'], //Posta Kodu
]);


die($shopier->run($_SESSION['kul_id']."_bakiye_".$fiyat, $fiyat, $ayarcek['site_link'].'/panel/sonuc.php')); // Burada üç adet parametre göndermemiz gerekiyor ilk olarak paket id sonra fiyat daha sonrasında ise geri dönüş url mağazadaki girdiğiniz geri dönüş url ile aynı olması gerekiyor bu dosyamız da shopierNotfiy.php dosyamız oluyor.


?>
