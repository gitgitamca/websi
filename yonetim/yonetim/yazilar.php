<?php 
include'header.php';
$islem = new Blog($db);

if (isset($_POST['yazisilme'])) {
 if ($islem->silme("yazi","yazi_id",$_POST['yazi_id'])) {
  header("location:yazilar.php?durum=ok");
  exit;
} else {
 header("location:yazilar.php?durum=no");
 exit;
}
}

?>

<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- DataTales Giriş -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Yazılar</h6>
    </div>
    <div class="card-body" style="width: 100%">
      <?php include 'disaaktar.php' ?>
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr> 
              <th>No</th>
              <th>Resim</th>
              <th>Başlık</th>
              <th>Eklenme Tarihi</th>
              <th>Okunma Sayısı</th>
              <th>İşlemler</th>
            </tr>
          </thead>
          <!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
          <tbody>
           <?php 
           $say=0;
           foreach ($crud->tumtablo("yazi") as $key => $yazi) { $say++?>
             <tr>
              <td><?php echo $say; ?></td>
              <td><img src="<?php echo blog_resim.$yazi['yazi_resim']; ?>" style="width: 70px;"></td>
              <td class="font-weight-bold text-primary">
                <a target="_blank" href="<?php echo blog.$yazi['yazi_link']; ?>">
                  <?php echo $yazi['yazi_baslik']; ?>
                </a>
              </td>
              <td><?php echo $yazi['yazi_eklenme']; ?></td>
              <td><?php echo $yazi['yazi_okunma']; ?></td>
              <td>

                <div class="d-flex justify-content-center">

                  <form action="yaziduzenle.php" method="POST">
                    <input type="hidden" name="yazi_id" value="<?php echo $yazi['yazi_id'] ?>">
                    <button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
                      <span class="icon text-white-60">
                        <i class="fas fa-edit"></i>
                      </span>
                    </button>
                  </form>

                  <form class="mx-2" action="" method="POST">
                   <input type="hidden" name="silinecekbaslik" value="<?php echo $yazi['yazi_isim'] ?>">
                   <input type="hidden" name="yazi_id" value="<?php echo $yazi['yazi_id']?>">
                   <button type="submit" name="yazisilme" class="btn btn-danger btn-sm icon-split silmebutonu">
                    <span class="icon text-white-60">
                      <i class="fas fa-trash"></i>
                    </span>
                  </button>
                </form>

                <a target="_blank" href="<?php echo yol."/blog/".$yazi['yazi_link']; ?>">
                  <button type="submit" name="gor" class="btn btn-primary btn-sm icon-split">
                    <span class="icon text-white-60">
                      <i class="fas fa-eye"></i>
                    </span>
                  </button>
                </a>

              </div>
            </td>   
          </tr>
        <?php } ?>
      </tbody>
      <!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi çıkış-->
    </table>
  </div>
</div>
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script>
 $('#dataTable').DataTable({
  initComplete: filtre(),
  dom: dtDom,
  buttons: exBtn(5)
});
</script>
