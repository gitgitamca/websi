<?php 

require_once __DIR__."/../config.php";
$api = new api($db);

try {
	$sonuc=$api->api_dogrula(@$_GET['api_key']);
	if (!$sonuc) {
		throw new Exception("İşlem Başarısız");
	}

	if (isset($_GET['tum_urunler'])) {

		goster($api->urunler());

	} elseif (isset($_GET['siparisler'])) {

		if (!isset($_GET['tur'])) {
			$_GET['tur']=-1;
		}

		goster($api->api_siparisler($_GET['tur']));
		
	} elseif (isset($_GET['hesaplar'])) {

		if (!isset($_GET['tur'])) {
			$_GET['tur']=-1;
		}

		if (!isset($_GET['urun_id'])) {
			$api->hata_mesaji="<urun_id> parametresi eksik. Hangi ürüne ait hesapları çekmek istediğinizi belirtmeniz gerekiyor.";
			throw new Exception("İşlem Başarısız");
		}

		goster($api->api_hesaplar($_GET['urun_id'], $_GET['tur']));
		
	} elseif (isset($_GET['yorumlar'])) {

		if (!isset($_GET['urun_id'])) {
			$api->hata_mesaji="<urun_id> parametresi eksik. Hangi ürüne ait yorumları çekmek istediğinizi belirtmeniz gerekiyor.";
			throw new Exception("İşlem Başarısız");
		}

		goster($api->yorumlar($_GET['urun_id']));
		
	} elseif (isset($_GET['tek_urun'])) {

		if (!isset($_GET['urun_id'])) {
			$api->hata_mesaji="<urun_id> parametresi eksik.";
			throw new Exception("İşlem Başarısız");
		}

		goster($api->api_tek_urun($_GET['urun_id']));
		
	} elseif (isset($_GET['tickets'])) {
		
		goster($api->tickets());	

	} elseif (isset($_GET['ticket'])) {

		if (!isset($_GET['ticket_id'])) {
			$api->hata_mesaji="<ticket_id> parametresi eksik.";
			throw new Exception("İşlem Başarısız");
		}

		goster($api->ticket($_GET['ticket_id']));
		
	} else {
		$api->hata_mesaji="Geçersiz Parametre";
		throw new Exception("İşlem Başarısız");
	}




} catch (Exception $e) {
	echo json_encode(['durum' => 'no','mesaj' => $api->hata_mesaji],JSON_NUMERIC_CHECK | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE | JSON_FORCE_OBJECT);
}


function goster($icerik)
{
	echo json_encode(['durum' => 'ok', 'icerik' => $icerik],JSON_NUMERIC_CHECK | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE | JSON_FORCE_OBJECT);
}


?>