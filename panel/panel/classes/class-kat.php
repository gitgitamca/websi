<?php 

require_once 'class-crud.php';
class kat extends crud
{

  public function kat_ekle($veri)
  {
    $veri['kat_link']=linkolustur("kategori", "kat_link", $veri['kat_isim']);
    return $this->direktekle("kategori", $veri, "kategoriekle");
  }

  public function kat_guncelle($veri)
  {
    return $this->direktguncelle("kategori", "kat_id", $veri['kat_id'], $veri, "kat_id", "kat_guncelle");
  }

  public function kat_bul($kat_id)
  {
    if ($this->tek("SELECT kat_ust FROM kategori WHERE kat_id=$kat_id")['kat_ust']==0) {

      $katlar=$this->cok("SELECT * FROM kategori WHERE kat_ust=$kat_id");
      $kat=[];

      foreach ($katlar as $key => $value) {
        array_push($kat,$value['kat_id']);
      }
      array_push($kat,$kat_id);
      return $kat;
    } else{
      return [$kat_id];
    }
  }

  public function alt_kat_bul($kat_id)
  {
    $katlar=[$kat_id];
    $sonuc=$this->cok("SELECT * FROM kategori WHERE kat_ust=$kat_id");

    if (count($sonuc)==0) {
     return $katlar;
   } else {
    foreach ($sonuc as $key => $value) {
        //array_push($katlar, $value['kat_id']);
      $son=$this->alt_kat_bul($value['kat_id']);
      array_push($katlar,$son);
    }
    return $katlar;
  }
}

public function ust_kat_bul($kat_id)
{
  $katlar=[$kat_id];
  $sonuc=$this->cok("SELECT * FROM kategori WHERE kat_id=$kat_id");

  if (count($sonuc)==0) {
   return $katlar;
 } else {
  foreach ($sonuc as $key => $value) {
        //array_push($katlar, $value['kat_id']);
    $son=$this->ust_kat_bul($value['kat_ust']);
    array_push($katlar,$son);
  }
  return $katlar;
}
}

public function alt_kat_son($dizi)
{
  $liste=[];
  if (is_array($dizi)) {
    foreach ($dizi as $key => $value) {
        //array_push($liste,$value);
      $var=$this->alt_kat_son($value);
      array_push($liste,$var);
    }
  } else {
   array_push($liste,$dizi);
 }
 return $liste;
}

public function kat_bilgi($kat_id)
{
  return $this->tek("SELECT * FROM kategori WHERE kat_id=$kat_id",true);
}

public function kat_isim($id)
{
  return $this->tek("SELECT kat_isim FROM kategori WHERE kat_id=$id",true)->kat_isim;
}

public function ust_kat($kat_id)
{
  return $this->tek("SELECT * FROM kategori WHERE kat_id=$kat_id",true);
}


public function kategoriler($kat_id=0)
{
  return $this->cok("SELECT * FROM kategori WHERE kat_ust=$kat_id",true);
}

public function tum_katlar($obj=false)
{
  return $this->cok("SELECT * FROM kategori",$obj);
}

    /**
     * [katlar description]
     * @param  boolean $rand [description]
     * @param  integer $tur  0: rastgele - 1:sadece ana kategoriler
     * @return [type]        [description]
     */
    public function katlar($rand=true,$tur=0)
    {
      return $this->cok("SELECT * FROM kategori ORDER BY RAND() DESC LIMIT 8",true);
    }

    public function kat_getir($deger,$id=false)
    {
     if ($id) {
       return $this->tek("SELECT * FROM kategori WHERE kat_id='$deger'",true);
     } else {
      return $this->tek("SELECT * FROM kategori WHERE kat_link='$deger'",true);
    }
  }

  public function kat_agac($dizi,$ustKategori=0)
  {
   $dal = array();
   foreach ($dizi as $eleman) {

    if ($eleman['kat_ust'] == $ustKategori) {

      $alt = $this->kat_agac($dizi, $eleman['kat_id']);
      if ($alt) {
        $eleman['alt'] = $alt;
      } else {
        $eleman['alt'] = array();
      }
      $dal[] = $eleman;
    }
  }
  return $dal;
}

public function yazdir($dizi){

  echo '<ul style="padding:revert">';
  foreach ($dizi as $kategori){
    echo '<li>'.$kategori['kat_isim'].'</li>';
    if($kategori['alt'])
      $this->yazdir($kategori['alt']);
  }
  echo '</ul>';
}

public function kat_select($dizi,$level=0,$secilen_id=0){

  foreach ($dizi as $id => $item)
  {
    if ($secilen_id==$item['kat_id']) {
      $sec="selected=''";
    } else {
      $sec="";
    }

    echo '<option '.$sec.' value="'.$item['kat_id'].'">'.str_repeat("&nbsp;", $level*7).$item['kat_isim'].'</option>';
    if (!empty($item['alt'])){ $this->kat_select($item['alt'],$level + 1,$secilen_id); }
  }
}

public function kat_liste($dizi,$level=0){
  foreach ($dizi as $id => $item)
  {
    echo '<li class="text-left" data-id="'.$item['kat_id'].'">'.str_repeat("&nbsp;", $level*7).$item['kat_isim'].'</li>';
    if (!empty($item['alt'])){$this->kat_liste($item['alt'],$level + 1); }
  }
}
}


?>