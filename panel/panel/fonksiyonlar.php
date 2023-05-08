<?php



function html_substr($text, $length = 100, $ending = '...', $exact = true, $considerHtml = false) {
    if (is_array($ending)) {
        extract($ending);
    }
    if ($considerHtml) {
        if (mb_strlen(preg_replace('/<.*?>/', '', $text)) <= $length) {
            return $text;
        }
        $totalLength = mb_strlen($ending);
        $openTags = array();
        $truncate = '';
        preg_match_all('/(<\/?([\w+]+)[^>]*>)?([^<>]*)/', $text, $tags, PREG_SET_ORDER);
        foreach ($tags as $tag) {
            if (!preg_match('/img|br|input|hr|area|base|basefont|col|frame|isindex|link|meta|param/s', $tag[2])) {
                if (preg_match('/<[\w]+[^>]*>/s', $tag[0])) {
                    array_unshift($openTags, $tag[2]);
                } else if (preg_match('/<\/([\w]+)[^>]*>/s', $tag[0], $closeTag)) {
                    $pos = array_search($closeTag[1], $openTags);
                    if ($pos !== false) {
                        array_splice($openTags, $pos, 1);
                    }
                }
            }
            $truncate .= $tag[1];

            $contentLength = mb_strlen(preg_replace('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', ' ', $tag[3]));
            if ($contentLength + $totalLength > $length) {
                $left = $length - $totalLength;
                $entitiesLength = 0;
                if (preg_match_all('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', $tag[3], $entities, PREG_OFFSET_CAPTURE)) {
                    foreach ($entities[0] as $entity) {
                        if ($entity[1] + 1 - $entitiesLength <= $left) {
                            $left--;
                            $entitiesLength += mb_strlen($entity[0]);
                        } else {
                            break;
                        }
                    }
                }

                $truncate .= mb_substr($tag[3], 0 , $left + $entitiesLength);
                break;
            } else {
                $truncate .= $tag[3];
                $totalLength += $contentLength;
            }
            if ($totalLength >= $length) {
                break;
            }
        }

    } else {
        if (mb_strlen($text) <= $length) {
            return $text;
        } else {
            $truncate = mb_substr($text, 0, $length - strlen($ending));
        }
    }
    if (!$exact) {
        $spacepos = mb_strrpos($truncate, ' ');
        if (isset($spacepos)) {
            if ($considerHtml) {
                $bits = mb_substr($truncate, $spacepos);
                preg_match_all('/<\/([a-z]+)>/', $bits, $droppedTags, PREG_SET_ORDER);
                if (!empty($droppedTags)) {
                    foreach ($droppedTags as $closingTag) {
                        if (!in_array($closingTag[1], $openTags)) {
                            array_unshift($openTags, $closingTag[1]);
                        }
                    }
                }
            }
            $truncate = mb_substr($truncate, 0, $spacepos);
        }
    }

    $truncate .= $ending;

    if ($considerHtml) {
        foreach ($openTags as $tag) {
            $truncate .= '</'.$tag.'>';
        }
    }

    return $truncate;
}

function son_kullanim($metin)
{
	if (strpos($metin, "0000")!==FALSE) {
		return "----";
	} else {
		return $metin;
	}
}

function urun_durum()
{
	return [
		0 => "Pending",
		1 => "Accepted",
		2 => "Denied"
	];
}

function basvuru_durum()
{
	return [
		0 => "Denied",
		1 => "Pending",
		2 => "Accepted"
	];
}

function kare_reklam($alan)
{
	global $ayarcek;
	return "<div class='mx-auto text-center my-4'>{$ayarcek['kare_reklam']}</div>";
}

function yatay_reklam($alan)
{
	global $ayarcek;
	return "<div class='mx-auto text-center my-4'>{$ayarcek['yatay_reklam']}</div>";
}

function isOnay($yonlendirme=e, $kul_id=x){
	global $sms_onay;
	return $sms_onay->isOnay($yonlendirme, $kul_id);
}

function eksik_kontrol()
{
	if (empty(ses('kul_adres')) OR empty(ses('kul_telefon'))) {
		git(site."profil", "eksik_bilgi");
	}
}

function magaza_odeme_durum()
{
	return [
		0 => "Payment did not received",
		1 => "Pending",
		2 => "Payment Successful"
	];
}
function magaza_odeme_tur()
{
	return [
		0 => "Premium Membership",
		1 => "Products Page Headline",
		2 => "Stores Page Headline",
	];
}

function talep_durum()
{
	return [
		0 => "Denied",
		1 => "Pending",
		2 => "Accepted",
		3 => "Partially Approved"
	];
}

function cekim_durum()
{
	return [
		0 => "Denied",
		1 => "Not Requested",
		2 => "Pending",
		3 => "Accepted"
	];
}

function sip_durum()
{
	return [
		0 => "Canceled",
		1 => "Waiting for payment",
		2 => "Payment succeed",
		3 => "Buyer didnt received",
		4 => "Item is not working"
	];
}
function hesap_durum()
{
	return [
		1 => "Ready to sell",
		0 => "Not active",	
		2 => "Sold"
	];
}

function teslim_tur()
{
	return [
		0 => "Instant Delivery",
		1 => "Manuel Delivery",
		2 => "Phisical Product"
	];
}

function fiyatlar()
{
	return [
		0 => "All prices",
		1 => '0-50',
		2 => '50-100',
		3 => '100-200',
		4 => '200-500',
		5 => '500 and more'
	];
}


function yildizlar()
{
	return [
		0 => "By All Ratings",
		1 => '1 Star',
		2 => '2 Star',
		3 => '3 Star',
		4 => '4 Star',
		5 => '5 Star'
	];
}

function siralama()
{
	return [
		0 => "Review",
		1 => "By Rating",
		2 => "By Number of Sales",
		3 => "By Upload Date",
	];
}

function aktif_pasif()
{
	return [
		0 => "Passive",
		1 => "Active"
	];
}

function sms_firma()
{
	return [
		0 => "NetGSM",
		1 => "İletimerkezi"
	];
}

function pos_firma()
{
	return [
		0 => "PayTR",
		1 => "Paymax",
		//2 => "İyzico"
	];
}

function para_yazi($deger)
{
	return number_format($deger,2,",",".");
	//return number_format($deger,2);
}

function bakiye_durum()
{
	return [
		0 => "Başarısız",
		1 => "Başarılı"
	];
}


function sip_kod($tur=1)
{
	global $db;
	global $crud;

	if ($tur==0) {
		$bas=10000000;
		$bit=19999999;
	} elseif ($tur==1) {	
		$bas=20000000;
		$bit=99999999;
	} else {
		$bas=20000000;
		$bit=99999999;
	}


	$sayi=rand($bas,$bit);

	if ($tur==0) {
		$sonuc = $crud->satirsayisi("magaza_siparis","sip_kod",$sayi);
	} else {
		$sonuc = $crud->satirsayisi("bakiye","bakiye_order_id",$sayi);
	}
	
	
	while ($sonuc >= 1) {
		$sayi=rand($bas,$bit);
		if (@$xxxx!=0) {

			if ($tur==0) {
				$xxxx = $crud->satirsayisi("magaza_siparis","sip_kod",$sayi);
			} else {
				$xxxx = $crud->satirsayisi("bakiye","bakiye_order_id",$sayi);
			}

		} else {
			break; 
		}
	}

	return $sayi;
}


function guvenlik($gelen){
	$giden = htmlspecialchars($gelen);
	$giden = htmlentities($giden);	
//$giden = strip_tags($giden);
	return $giden;
};




?>