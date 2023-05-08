<?php 
include 'header.php';
oturumkontrol("e");
$islem = new kullanici($db);
if (isset($_POST['profilguncelle'])) {
  if ($islem->profilguncelle($_POST,$_FILES,"profil")) {
    header("location:profil.php?durum=ok");
    exit;
  } else {
    header("location:profil.php?durum=no");
    exit;
  }
}

$kullanicicek=$islem->tekil("kullanicilar","kul_id",guvenlik($_SESSION['kul_id']));

?>

<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" media="all" type="text/css" href="assets/modules/upload/css/fileinput.css">
<link rel="stylesheet" type="text/css" media="all" href="assets/modules/upload/themes/explorer-fas/theme.min.css">
<script src="assets/modules/upload/js/fileinput.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/modules/upload/themes/fas/theme.min.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/modules/upload/themes/explorer-fas/theme.minn.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css" media="screen">
  @media only screen and (max-width: 700px) {
    .mobilgizle {
      display: none;
    }
    .mobilgizleexport {
      display: none;
    }
    .mobilgoster {
      display: block;
    }
  }
  @media only screen and (min-width: 700px) {
    .mobilgizleexport {
      display: flex;
    }
    .mobilgizle {
      display: block;
    }
    .mobilgoster {
      display: none;
    }
  }
</style>

<div class="container">
  <form action="" method="POST" enctype="multipart/form-data"  class="needs-validation" novalidate="">
    <div class="form-row">
      <div class="form-group col-md-6">
        <label>İsim</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_isim'] ?>" name="kul_isim" placeholder="İsim">
      </div>
      <div class="form-group col-md-6">
        <label>Soyisim</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_soyisim'] ?>" name="kul_soyisim" placeholder="Soyisim">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label>E-Posta</label>
        <input disabled="" type="email" required class="form-control" value="<?php echo $kullanicicek['kul_mail'] ?>" name="kul_mail" placeholder="E-Mail">
      </div>
      <div class="form-group col-md-6">
        <label>Telefon Numarası</label>
        <input type="number" class="form-control" value="<?php echo $kullanicicek['kul_telefon'] ?>" name="kul_telefon" placeholder="Telefon Numarası">
      </div>      
    </div>
    <input type="hidden" name="kul_id" value="<?php echo $kullanicicek['kul_id'] ?>">

    <div class="form-row">
      <div class="form-group col-md-6">
        <label>Adres</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_adres'] ?>" name="kul_adres" placeholder="Adres">
      </div>
      <div class="form-group col-md-6">
        <label>Şehir</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_sehir'] ?>" name="kul_sehir" placeholder="Şehir">
      </div>
    </div>


    <div class="form-row">
      <div class="form-group col-md-6">
        <label>Ülke</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_ulke'] ?>" name="kul_ulke" placeholder="Ülke">
      </div>
      <div class="form-group col-md-6">
        <label>Posta Kodu</label>
        <input type="text" required class="form-control" value="<?php echo $kullanicicek['kul_posta_kodu'] ?>" name="kul_posta_kodu" placeholder="Posta Kodu">
      </div>
    </div>



    <div class="form-row mb-3">
      <div class="col-md-6 text-center">
        <label>Yeni Şifre <small>(Boş Bırakırsanız Şifre Değişmez)</small></label>
        <input class="form-control" type="text" name="kul_sifre">
      </div>
      <div class="col-md-6 text-center">
        <label>Profil Resmi</label>
        <input class="form-control" type="file" name="kul_logo">
      </div>
    </div>
    <input type="hidden" name="kul_id" value="<?php echo $_SESSION['kul_id'] ?>">
    <div class="row ml-1">
     <button type="submit" name="profilguncelle" class="btn btn-primary">Kaydet</button> 
   </form>
 </div>
</div>
<hr>


<?php include 'footer.php' ?>

<script>
  $(document).ready(function () {
    $("#profilresmi").fileinput({
      'theme': 'explorer-fas',
      'showUpload': false,
      'showRemove': true,
      'showCaption': true,
      'showPreview':false,
     // 'showPreview':false,
     allowedFileExtensions: ["jpg", "png", "jpeg"],
   });
  });
</script>