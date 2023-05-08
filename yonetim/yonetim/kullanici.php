<?php 
include 'header.php';
yetkikontrol("e");
$islem = new kullanici($db);
if (isset($_POST['kullaniciguncelle'])) {
  if ($islem->direktguncelle("kullanicilar","kul_id",$_POST['kul_id'],$_POST,"kul_id","kullaniciguncelle")) {
    header("location:kullanicilar.php?durum=ok");
    exit;
  } else {
    header("location:kullanicilar.php?durum=no");
    exit;
  }
}

if (isset($_POST['kul_id'])) {  
  $kullanicicek=$islem->tekil("kullanicilar","kul_id",guvenlik($_POST['kul_id']));
}

?>

<div class="container">
  <form>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label>İsim</label>
        <input type="text" disabled="" class="form-control" value="<?php echo $kullanicicek['kul_isim'] ?>" name="kul_isim" placeholder="İsim">
      </div>
      <div class="form-group col-md-6">
        <label>Soyisim</label>
        <input type="text" disabled="" class="form-control" value="<?php echo $kullanicicek['kul_soyisim'] ?>" name="kul_soyisim" placeholder="Soyisim">
      </div>
    </div>

    <div class="form-row">
      <div class="form-group col-md-4">
      <label>E-Posta</label>
      <input type="email" disabled="" class="form-control" value="<?php echo $kullanicicek['kul_mail'] ?>" name="kul_mail" placeholder="E-Mail">
    </div>

    <div class="form-group col-md-4">
      <label>Telefon Numarası</label>
      <input type="number" disabled class="form-control" value="<?php echo $kullanicicek['kul_telefon'] ?>" name="kul_telefon" placeholder="Telefon Numarası">
    </div>
    <div class="form-group col-md-4">
      <label>Durumu</label>
      <select disabled="" name="kul_durum" class="form-control">
        <option <?php if($kullanicicek['kul_durum'] == 1){echo("selected");}?> value="1">Aktif</option>
        <option <?php if($kullanicicek['kul_durum'] == 0){echo("selected");}?> value="0">Pasif</option>
      </select>
    </div>
  </div>  
</form>
</div>


<?php include 'footer.php' ?>