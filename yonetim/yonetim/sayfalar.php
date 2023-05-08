<?php 
include'header.php';
yetkikontrol(e);
$islem = new kullanici($db);
if (isset($_POST['sayfasilme'])) {
  if ($islem->silme("sayfalar","sayfa_id",$_POST['sayfa_id'])) {
    $sayfa=__DIR__."/../".$_POST['link'].".php";
    unlink($sayfa);
    le(s,$_POST['link']." başlıklı sayfayı sildi.");
    header("location:sayfalar?durum=ok");
    exit;
  } else {
   header("location:sayfalar?durum=no");
   exit;
 }
}
?>

<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-primary br-1 shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Sayfalar</h6>
        </div>
        <div class="card-body" style="width: 100%">
         <?php include_once 'disaaktar.php' ?>
         <div class="">
          <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr> 
                <th>No</th>
                <th>Başlık</th>
                <th>Git</th>
                <th>İşlemler</th>
              </tr>
            </thead>
            <tbody>
             <?php 
             $say=0;
             $sonuc=$islem->cok("SELECT * FROM sayfalar");
             foreach ($sonuc as $key => $value) { $say++ ?>
               <tr>
                <td><?php echo $say; ?></td>
                <td><?php echo $value['baslik']; ?></td>
                <td><a target="_blank" href="<?php echo yol."/".$value['link'] ?>" type="button" class="btn btn-info">Sayfaya Git</a></td>
                <td>

                  <div class="d-flex justify-content-center">

                    <form action="sayfaduzenle" method="POST">
                      <input type="hidden" name="sayfa_id" value="<?php echo $value['sayfa_id'] ?>">
                      <button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
                        <span class="icon text-white-60">
                          <i class="fas fa-edit"></i>
                        </span>
                      </button>
                    </form>

                    <form class="mx-2" action="" method="POST">
                     <input type="hidden" name="silinecekbaslik" value="<?php echo $value['baslik'] ?>">
                     <input type="hidden" name="link" value="<?php echo $value['link'] ?>">
                     <input type="hidden" name="sayfa_id" value="<?php echo $value['sayfa_id']?>">
                     <button type="submit" name="sayfasilme" class="btn btn-danger btn-sm icon-split silmebutonu">
                      <span class="icon text-white-60">
                        <i class="fas fa-trash"></i>
                      </span>
                    </button>
                  </form>



                </div>
              </td>   
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>
</div>
</div>


<?php include'footer.php' ?>




<script>
  var dataTables = $('#dataTable').DataTable({
    responsive: {
      details: true
    },

    dom: "<'row mobilgizleexport gizlemeyiac'<'col-md-6'l><'col-md-6'f><'col-md-4 d-none d-print-block'B>>rtip",
    buttons: [
    {
      extend: 'copyHtml5', 
      className: 'kopyalama-buton'
    },
    {
      extend: 'excelHtml5', 
      className: 'excel-buton'
    },
    {
     extend: 'pdfHtml5',
     className: 'pdf-buton'
   },
   {
    extend: 'csvHtml5',
    className: 'csv-buton'
  }
  ]
});
</script>
