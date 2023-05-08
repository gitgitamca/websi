<?php 
include 'header.php';
$islem = new crud($db); 
if (isset($_POST['sssekle'])) {
 if ($crud->direktekle("sss",$_POST,"sssekle")) {
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
      <h5 class="m-0 font-weight-bold text-primary">S.S.S Ekle</h5>
    </div>
    <div class="card-body">
      <form action="" method="POST">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label>Soru</label>
            <input type="text" class="form-control" name="soru" placeholder="Soru Detayı">
          </div>
          <div class="form-group col-md-6">
            <label>Cevap</label>
            <textarea class="form-control" name="cevap" placeholder="Sorunun Cevabı" style="height: auto;"></textarea>
          </div>
        </div>
        <button type="submit" name="sssekle" class="btn btn-primary mt-3">Kaydet</button>
      </form>     
    </div>
  </div>
</div>
<!-- End of Main Content -->
<?php include 'footer.php' ?>
