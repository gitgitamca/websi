<?php 
include 'header.php';
$islem = new crud($db); 

if (isset($_POST['soru_id'])) {
  $soru=$islem->tekil("sss","soru_id",$_POST['soru_id']);
}




if (isset($_POST['sssguncelle'])) {
 if ($crud->direktguncelle("sss","soru_id",$_POST['soru_id'],$_POST,"sssguncelle","soru_id")) {
  header("location:sss.php?durum=ok");
  exit;
} else {
  header("location:sss.php?durum=no");
  exit;
}
}

?>

<!-- Begin Page Content -->
<div class="container">
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h5 class="m-0 font-weight-bold text-primary">S.S.S Düzenle</h5>
    </div>
    <div class="card-body">
      <form action="" method="POST">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label>Soru</label>
            <input type="text" class="form-control" name="soru" placeholder="Soru Detayı" value="<?php echo $soru['soru'] ?>">
          </div>
          <div class="form-group col-md-6">
            <label>Cevap</label>
            <textarea class="form-control" name="cevap" placeholder="Sorunun Cevabı" style="height: auto;"><?php echo $soru['cevap'] ?></textarea>
          </div>
        </div>
        <input type="hidden" name="soru_id" value="<?php echo $_POST['soru_id'] ?>">
        <button type="submit" name="sssguncelle" class="btn btn-primary mt-3">Kaydet</button>
      </form>     
    </div>
  </div>
</div>
<!-- End of Main Content -->
<?php include 'footer.php' ?>
