<?php 
include_once 'class-kat.php';

class gecici extends kat {}

class veri extends gecici
{

  public function isim($veri,$satici=true)
  {

    if ($satici) {
      return $veri->magaza_isim;
    } else {
      return $veri->kul_isim." ".$veri->kul_soyisim;
    }
  }

  public function ul($veri)
  {
    return urun.$veri->urun_link;
  }

  public function kl($veri)
  {
    return kat.$veri->kat_link;
  }

  public function bl($veri)
  {
    return blog.$veri->yazi_link;
  }

  public function br($veri)
  {
    return blog_resim.$veri->yazi_resim;
  }

  public function kul_logo($veri)
  {
    return logo.$veri->kul_logo;
  }

  public function pl($veri)
  {
    return yol."/magaza/".$veri->kul_link;
  }

  public function takip_kontrol($magaza)
  {

    $sayi=$this->tek("SELECT COUNT(takip_id) as sayi FROM kul_takip WHERE takipci={$_SESSION['kul_id']} AND magaza=$magaza",true)->sayi;

    if ($sayi==0) {
      return false;
    } else {
      return true;
    }
    
  }

  public function kullanici($kul_id,$cekilecek="*")
  {
    return $this->tek("SELECT $cekilecek FROM kullanicilar WHERE kul_id=$kul_id",true);
  }

  public function smsler()
  {
    return $this->cok("SELECT * FROM sms ORDER BY sms_id DESC");
  }
  
  public function talep($talep_id)
  {
    sayi($talep_id);
    return $this->tek("SELECT * FROM talep WHERE talep_id=$talep_id",true);
  }

  public function kul($kul_id,$istenen="kul_isim,kul_soyisim")
  {
    sayi($kul_id);
    return $this->tek("SELECT $istenen FROM kullanicilar WHERE kul_id=$kul_id",true);
  }

  public function bakiye($kul_id="x")
  {
    if ($kul_id=="x") {
      $kul_id=ses("kul_id");
    }

    return $this->tek("SELECT kul_bakiye FROM kullanicilar WHERE kul_id=$kul_id",true)->kul_bakiye;
  }


  public function slider_random_urun($adet=3,$obj=false)
  {
    return $this->cok("SELECT urun_baslik,urun_one_cikan,urun_link,urun_id,magaza_isim,kul_link FROM urun 
      INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
      WHERE urun_durum=1 AND kul_durum=1 AND kullanicilar.satici=1
      ORDER BY RAND() DESC 
      LIMIT $adet",$obj);


  }

/**
 * Ürün resim gösterme işlemi
 * @param  [mixed]  $var   Bilgiler
 * @param  integer $boyut boyut
 * @return [String]         link
 */

public function ur($var,$boyut=1)
{
  if ($boyut==0) {
    return kucuk_resim.$var->urun_one_cikan;
  } elseif ($boyut==1) {
    return orta_resim.$var->urun_one_cikan;
  } else {
   return resim.$var->urun_one_cikan;
 }
}

public function urun_okunma($id)
{
  $this->tek("UPDATE urun SET urun_see=urun_see+1 WHERE urun_id=$id");
}

public function yildiz($id)
{
  $sayi=$this->tek("SELECT AVG(deger) as sayi FROM yildiz WHERE urun=$id")['sayi'];
  return number_format($sayi,1,".",",");
}

public function son_urunler()
{
 return $this->cok("SELECT urun.*,kategori.*,kul_isim,kul_soyisim,alt_isim,kul_logo,kul_id,kul_link,magaza_isim,fb,tw,ig,linkedin FROM urun 
  INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
  INNER JOIN kategori ON kategori.kat_id=urun.kat 
  WHERE urun_durum=1 AND kul_durum=1 AND kullanicilar.satici=1 
  ORDER BY urun_id DESC 
  LIMIT 0,10",true
);
}  


public function en_cok_incelenen()
{
 return $this->cok("SELECT urun.*,kategori.*,kul_isim,kul_soyisim,alt_isim,kul_logo,kul_id,kul_link,magaza_isim,fb,tw,ig,linkedin FROM urun 
  INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
  INNER JOIN kategori ON kategori.kat_id=urun.kat 
  WHERE urun_durum=1 AND kul_durum=1 AND kullanicilar.satici=1 
  ORDER BY urun_see DESC 
  LIMIT 0,10",true
);
}  

public function cok_satanlar()
{
  return $this->cok("SELECT urun.*,kategori.*,kul_isim,kul_soyisim,alt_isim,kul_logo,kul_id,kul_link,magaza_isim,fb,tw,ig,linkedin, COUNT(sip_id) as urun_siparis  FROM urun 
    INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
    INNER JOIN kategori ON kategori.kat_id=urun.kat 
    LEFT JOIN siparis ON siparis.urun=urun.urun_id 
    WHERE urun_durum=1 AND kul_durum=1  AND kullanicilar.satici=1 
    GROUP BY urun.urun_id 
    ORDER BY urun_siparis DESC 
    LIMIT 0,12",true
  );
}




public function kullanicilar($hepsi=false)
{
  if ($hepsi) {
    $kosul="";
  } else {
    $kosul="WHERE satici=0";
  }
  
  return $this->cok("SELECT * FROM kullanicilar $kosul",true);
}

public function manset_magazalar()
{
  return $this->cok("SELECT * FROM kullanicilar WHERE satici=1 AND manset_durum=1 ORDER BY RAND() ASC",true);
}

public function magazalar()
{
  return $this->cok("SELECT * FROM kullanicilar WHERE satici=1",true);
}

public function sip_sayi($urun_id)
{
  return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis WHERE urun=$urun_id",true)->sayi;
}

public function magaza_isim($urun_id)
{
  return $this->tek("SELECT magaza_isim FROM urun INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici WHERE urun.urun_id=$urun_id",true)->magaza_isim;
}

public function urun_durum($deger,$id=false)
{
 if ($id) {
  $kosul="urun.urun_id=$deger";
} else {
  $kosul="urun.urun_link='$deger'";
}

return $this->tek("SELECT urun_durum FROM urun WHERE $kosul",true)->urun_durum;

}

public function urun_getir($deger,$id=false)
{
  if ($id) {
    $kosul="urun.urun_id=$deger";
  } else {
    $kosul="urun.urun_link='$deger'";
  }

  $sonuc=$this->tek("SELECT 
    urun.*,kategori.*,
    kul_isim,kul_soyisim,alt_isim,kul_logo,kul_id,kul_link,magaza_isim,  
    ROUND(AVG(deger),1) as yildiz_sayi, COUNT(siparis.sip_id)
    FROM urun 
    INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
    INNER JOIN kategori ON kategori.kat_id=urun.kat 
    LEFT JOIN yildiz ON yildiz.urun=urun.urun_id 
    LEFT JOIN siparis ON siparis.urun=urun.urun_id 
    WHERE urun_durum=1 AND kul_durum=1 AND kullanicilar.satici=1 AND $kosul
    ",true);

  $sonuc->fav_sayi=$this->fav_sayisi($sonuc->urun_id);

  return $sonuc;
}

public function magaza_ortalama($kul_id)
{
  return $this->tek("SELECT ROUND(AVG(yildiz.deger),1) as sayi FROM yildiz INNER JOIN urun ON yildiz.urun=urun.urun_id WHERE urun.satici=$kul_id",true)->sayi;
}

public function hesap($id)
{
  sayi($id);
  return $this->tek("SELECT * FROM hesaplar WHERE hesap_id=$id",true);
}

public function magaza_sip_sayi($id)
{
  return $this->tek("SELECT COUNT(sip_id) as sayi FROM siparis INNER JOIN urun ON urun.urun_id=siparis.urun WHERE urun.satici=$id",true)->sayi;
}

public function magaza_urun_sayisi($id)
{
  return $this->tek("SELECT COUNT(urun_id) as sayi FROM urun WHERE urun.satici=$id",true)->sayi;
}

public function satici_getir($deger,$id=false)
{

  if ($id) {
    $kosul="satici=1 AND kul_id=$deger";
  } else {
    $kosul="satici=1 AND kul_link='$deger'";
  }

  return $this->tek("SELECT * FROM kullanicilar WHERE $kosul",true);
}




public function tek_dizi($dizi)
{
  $katlar = [];

  array_walk_recursive($dizi, function($v, $k) use (&$katlar){
    $katlar[] = $v;
  });

  return $katlar;
}


public function benzer_urunler($kat_id,$urun_id)
{

  $dizi=$this->alt_kat_bul($kat_id);
  $katlar=$this->tek_dizi($dizi);


 // $katlar=$this->kat_bul($kat_id);
  $kategori="urun.kat=".implode(" OR urun.kat=",$katlar);


  return $this->cok("SELECT urun.*,kategori.*,
    kul_isim,kul_soyisim,alt_isim,kul_logo,kul_id,kul_link, magaza_isim, 
    AVG(yildiz_id) as yildiz_sayi 
    FROM urun 
    INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
    INNER JOIN kategori ON kategori.kat_id=urun.kat 
    LEFT JOIN favori ON favori.urun=urun.urun_id 
    LEFT JOIN yildiz ON yildiz.urun=urun.urun_id 
    WHERE urun.urun_id!=$urun_id AND (urun_durum=1 AND kul_durum=1 AND kullanicilar.satici=1) AND ($kategori)
    GROUP BY urun.urun_id 
    ORDER BY RAND() 
    DESC LIMIT 4",true);
}

public function basvurular()
{
  return $this->cok("SELECT * FROM basvuru INNER JOIN kullanicilar ON kullanicilar.kul_id=basvuru.kul ORDER BY basvuru_id DESC",true);
}

public function tum_degerlendirmeler()
{
  return $this->cok("SELECT * FROM yildiz 
    LEFT JOIN kullanicilar ON kullanicilar.kul_id=yildiz.kullanici 
    LEFT JOIN urun ON urun.urun_id=yildiz.urun 
    ORDER BY yildiz_id DESC",true
  );
}

public function degerlendirmeler($urun_id,$limit="0,1")
{
  return $this->cok("SELECT * FROM yildiz 
    INNER JOIN kullanicilar ON kullanicilar.kul_id=yildiz.kullanici 
    WHERE durum=1 AND yildiz.urun=$urun_id 
    ORDER BY yildiz_id DESC 
    LIMIT $limit ",true
  );
}

public function magaza_degerlendirmeler($kul_id,$limit="0,1")
{
 return $this->cok("SELECT * FROM yildiz 
  INNER JOIN kullanicilar ON kullanicilar.kul_id=yildiz.kullanici 
  INNER JOIN urun ON urun.urun_id=yildiz.urun 
  WHERE durum=1 AND urun.satici=$kul_id
  ORDER BY yildiz_id DESC 
  LIMIT $limit ",true
);
}

public function brcr($dizi)
{

  $metin="";
  $sayi=count($dizi);

  foreach ($dizi as $key => $value) {
    $sayi--;
    $sonuc=$this->tek("SELECT * FROM kategori WHERE kat_id=$value",true);
    $metin='<li itemprop="itemListElement" itemscope
          itemtype="https://schema.org/ListItem"><a itemprop="item" href="'.$this->kl($sonuc).'"><span itemprop="name">'.$sonuc->kat_isim.'</span></a><meta itemprop="position" content="'.$sayi.'" /></li>'.$metin;
  }

  return $metin;
}

public function fav_durum($id){
  if (oturumkontrol("h")) {
    return $this->tek("SELECT fav_id,COUNT(fav_id) as sayi FROM favori WHERE kul={$_SESSION['kul_id']} AND urun=$id",true);
  } else {
    return $this->cevir(
      [
        'sayi' => 0
      ]
    );
  }
}

public function best_magaza($limit=6)
{
  return $this->cok("SELECT COUNT(siparis.sip_id) as sip_sayi,kul_isim,kul_soyisim,kul_id,kul_link,kul_logo,magaza_isim  FROM siparis 
    INNER JOIN urun ON siparis.urun=urun.urun_id 
    INNER JOIN kullanicilar ON urun.satici=kullanicilar.kul_id 
    WHERE kul_durum=1 AND kullanicilar.satici=1 
    GROUP BY kullanicilar.kul_id 
    ORDER BY sip_sayi DESC , RAND() DESC
    LIMIT $limit
    ",true);
}



public function fav_sayisi($id){
  return $this->tek("SELECT COUNT(fav_id) as sayi FROM favori WHERE urun=$id",true)->sayi;
}

public function bannerler($konum=0)
{
  return $this->cok("SELECT * FROM banner WHERE konum=$konum AND durum=1 ORDER BY sira ASC",true);
}

public function tum_bannerler()
{
  return $this->cok("SELECT * FROM banner ORDER BY sira ASC",true);
}

public function slider_ogeler($limit=5)
{
  return $this->cok("SELECT * FROM slider WHERE durum=1 ORDER BY sira ASC",true);
}

public function tum_sliderler()
{
  return $this->cok("SELECT * FROM slider ORDER BY sira ASC",true);
}


public function urun_sayisi($kat_id)
{
  return $this->tek("SELECT COUNT(urun_id) as sayi FROM urun WHERE kat=$kat_id")['sayi'];
}


public function urun_galeri($urun_id,$limit=10)
{
 return $this->cok("SELECT * FROM urun_galeri WHERE urun=$urun_id ORDER BY sira, dosya_id ASC LIMIT $limit",true);
}

public function rastgele_yazilar($limit=5)
{
 return $this->cok("SELECT * FROM yazi WHERE durum=1 ORDER BY RAND() ASC LIMIT $limit",true);
}

public function fiyat($urun)
{
  if ($this->indirimlimi($urun)) {
    return $urun->indirimli_fiyat;
  } else {
    return $urun->urun_fiyat;
  }
}

public function indirimlimi($urun)
{
  //$urun=$this->tek("SELECT urun_fiyat,indirimli_fiyat,indirim_son_tarih FROM urun WHERE urun_id=".$urun->urun_id,true);

  if ($urun->indirimli_fiyat==0) {
    return false;
  } else {
    if ($urun->urun_fiyat==$urun->indirimli_fiyat) {

      return false;
    } else {
      $simdi=strtotime(date("Y-m-d H:i:s"));
      $tarih=strtotime($urun->indirim_son_tarih);
      $fark=$tarih-$simdi;

      if ($fark<1) {
        return false;
      } else {
        return true;
      }

    }
  }

}


public function indirim_bitis_saniye($urun){
  $simdi=strtotime(date("Y-m-d H:i:s"));
  $bitis=strtotime($urun->indirim_son_tarih);
  $fark=round(($bitis-$simdi));
  return $fark;
}


public function hesap_sayisi($urun_id)
{
   $simdi = date("Y-m-d H:i:s");
  return $this->tek("SELECT COUNT(hesap_id) as sayi FROM hesaplar WHERE hesap_durum=1 AND (son_kullanim > '$simdi' OR son_kullanim IS NULL OR son_kullanim LIKE '%0000%') AND urun=$urun_id",true)->sayi;
}

public function random_hesap($urun,$adet)
{
  $simdi = date("Y-m-d H:i:s");
  return $this->cok("SELECT * FROM hesaplar WHERE hesap_durum=1 AND (son_kullanim > '$simdi' OR son_kullanim IS NULL OR son_kullanim LIKE '%0000%') AND urun=$urun ORDER BY RAND() ASC LIMIT $adet",true);
}

public function bakiye_dus($ucret)
{
  sayi($ucret);
  $this->tek("UPDATE kullanicilar SET kul_bakiye=kul_bakiye-$ucret WHERE kul_id={$_SESSION['kul_id']}");
}

public function yuklenen_bakiyeler($admin=true)
{
  if ($admin) {
    $kosul=" LEFT JOIN kullanicilar ON kullanicilar.kul_id=bakiye.bakiye_kul ";
  } else {
    $kosul=" WHERE bakiye_kul={$_SESSION['kul_id']} ";
  }
  
  return $this->cok("SELECT * FROM bakiye $kosul ORDER BY bakiye_id DESC",true);

}

public function favoriler()
{
  return $this->cok("SELECT favori.*,urun_baslik,urun_link FROM favori INNER JOIN urun ON urun.urun_id=favori.urun WHERE kul={$_SESSION['kul_id']}",true);
}

public function siparisler()
{
  if (yetkikontrol(h)) {
    $kosul="urun.urun_id!=0";
  } else {
    $kosul="siparis.kul=".ses('kul_id');
  }


  return $this->cok("SELECT siparis.*,urun.*,kul_isim,kul_soyisim,magaza_isim FROM siparis 
    LEFT JOIN urun ON urun.urun_id=siparis.urun 
    LEFT JOIN kullanicilar ON kullanicilar.kul_id=siparis.kul 
    WHERE $kosul ORDER BY sip_id DESC",true);
}

public function magaza_musteri_siparisler($magaza_id)
{
  return $this->cok("SELECT siparis.*,urun.*,kul_isim,kul_soyisim,magaza_isim FROM siparis 
    LEFT JOIN urun ON urun.urun_id=siparis.urun 
    LEFT JOIN kullanicilar ON kullanicilar.kul_id=siparis.kul 
    WHERE urun.satici=$magaza_id ORDER BY sip_id DESC",true);
}

public function satici_siparisler($tur=0)
{

  global $pre;
  $kosul="";

  if ($tur==1) {
    $tarih=date("Y-m-d H:i:s",strtotime(date("Y-m-d H:i:s").$pre->isPre() ? "-2 day" : "-7 day"));
    $kosul="AND cekim=1 AND sip_durum=2 AND siparis.tarih <= '$tarih' ";
  }

  return $this->cok("SELECT siparis.*,urun.*,kul_isim,kul_soyisim,magaza_isim FROM siparis 
    LEFT JOIN urun ON urun.urun_id=siparis.urun 
    LEFT JOIN kullanicilar ON kullanicilar.kul_id=siparis.kul 
    WHERE urun.satici={$_SESSION['kul_id']} $kosul 
    ORDER BY sip_id DESC",true);
}

public function siparis($sip_id)
{
  sayi($sip_id);
  return $this->tek("SELECT siparis.*,urun.*,kul_isim,kul_soyisim,kul_mail,kul_id,kul_fatura FROM siparis 
    LEFT JOIN urun ON urun.urun_id=siparis.urun 
    LEFT JOIN kullanicilar ON kullanicilar.kul_id=siparis.kul 
    WHERE sip_id=$sip_id",true);
}



public function talepler($satici="x",$admin=false)
{
  if ($satici=="x") {
    $satici=ses("kul_id");
  }

  if ($admin) {
    return $this->cok("SELECT * FROM talep LEFT JOIN kullanicilar ON kullanicilar.kul_id=talep.kul",true);
  } else {
   return $this->cok("SELECT * FROM talep WHERE kul=$satici",true);
 }



}


public function kul_degerlendirmeler()
{
  return $this->cok("SELECT * FROM yildiz INNER JOIN urun ON urun.urun_id=yildiz.urun WHERE yildiz.kullanici={$_SESSION['kul_id']}",true);
}


public function degerlendirme($id)
{
  sayi($id);

  if (!yetkikontrol(h)) {
    $kosul=" AND kullanici={$_SESSION['kul_id']}";
  } else {
    $kosul="";
  }

  return $this->tek("SELECT * FROM yildiz INNER JOIN urun ON urun.urun_id=yildiz.urun WHERE yildiz_id=$id $kosul",true);
}



public function stok_kontrol($urun)
{


  if ($urun->teslim_tur==0) {
    $simdi = date("Y-m-d H:i:s");
    $sayi=$this->tek("SELECT COUNT(hesap_id) as sayi FROM hesaplar WHERE hesap_durum=1 AND (son_kullanim > '$simdi' OR son_kullanim IS NULL OR son_kullanim LIKE '%0000%') AND urun=$urun->urun_id")['sayi'];
    
    return $sayi;
  } else {
    return $urun->stok;
  }

}



public function degerlendirme_kontrol($urun)
{
  $sayi=$this->tek("SELECT COUNT(yildiz_id) as sayi FROM yildiz WHERE urun=$urun AND kullanici={$_SESSION['kul_id']}",true)->sayi;

  if ($sayi==0) {
    return false;
  } else {
    return true;
  }
}



public function degerlendirme_sil($yildiz_id)
{
  sayi($yildiz_id);
  $sayi=$this->tek("SELECT COUNT(yildiz_id) as sayi FROM yildiz WHERE yildiz_id=$yildiz_id AND kullanici={$_SESSION['kul_id']}")['sayi'];
  if ($sayi==0) {
   return false;
 } else {
   return $this->silme("yildiz", "yildiz_id", $yildiz_id)['sonuc'];
 }

}


public function hikayeler()
{
  return $this->cok("SELECT * FROM hikaye ORDER BY sira ASC",true);
}

public function tek_urun($id,$cekilecek="*")
{
  sayi($id);
  return $this->tek("SELECT $cekilecek FROM urun WHERE urun_id=$id",true);
}

public function tek_hikaye($id)
{
  sayi($id);
  return $this->tek("SELECT * FROM hikaye WHERE hik_id=$id",true);
}

public function hikaye_resimler($id)
{
  sayi($id);
  return $this->cok("SELECT * FROM hikaye_galeri WHERE hikaye=$id ORDER BY sira ASC",true);
}


public function sayfalar()
{
  return $this->cok("SELECT * FROM sayfalar",true);
}

public function magaza_siparisler($kul_id=x)
{
  if ($kul_id==x) {
    $kosul="";
  } else {
    $kosul=" WHERE magaza_siparis.satici=$kul_id";
  }

  return $this->cok("SELECT * FROM magaza_siparis LEFT JOIN kullanicilar ON kullanicilar.kul_id=magaza_siparis.magaza",true);
}



}

?>