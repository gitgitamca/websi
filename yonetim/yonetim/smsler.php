<?php 
include'header.php';

if (isset($_POST['smssilme'])) {
  $sonuc=$crud->silme("sms","sms_id",$_POST['sms_id']);
  if ($sonuc['sonuc']) {
    git("smsler","ok");
  } else {
   git("smsler","no");
 }
} 
?>



<!-- Begin Page Content -->
<div class="container-fluid">
  <!-- DataTales Giriş -->
  <div class="row">
    <div class="col-md-12">
      <div class="card card-primary br-1 shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">SMS'ler</h6>
        </div>
        <div class="card-body" style="width: 100%">
          <?php include 'disaaktar.php' ?>
          <div class="table-responsive">
            <table class="table table-bordered" id="smstablosu" width="100%" cellspacing="0">
              <thead>
                <tr> 
                  <th>No</th>
                  <th>Numara</th>
                  <th>SMS İçeriği</th>
                  <th>Gönderilme Tarihi</th>
                  <th>İşlemler</th>
                </tr>
              </thead>
              <!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
              <tbody>
               <?php foreach ($veri->smsler() as $key => $value): ?>
                 <tr>
                  <td><?php echo $value['sms_id']; ?></td>
                  <td><?php echo $value['sms_numara']; ?></td>
                  <td><?php echo nl2br($value['sms_icerik']); ?></td>
                  <td><?php echo $value['gonderilme_tarihi']; ?></td>

                  <td>

                    <div class="d-flex justify-content-center">

                     <form class="mr-1" action="" method="POST">
                      <input type="hidden" name="sms_id" value="<?php echo $value['sms_id']?>">
                      <button type="submit" name="smssilme" class="btn btn-danger btn-sm icon-split silmebutonu">
                        <span class="icon text-white-60">
                          <i class="fas fa-trash"></i>
                        </span>
                      </button>
                    </form>
                  </div>
                </td>   
              </tr>
            <?php endforeach ?>
          </tbody>

        </table>
      </div>

    </div>
  </div>
</div>
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script>
  var dataTables = $('#smstablosu').DataTable({
    initComplete: filtre([1]),
    dom: dtDom,
    buttons: exBtn(8)
  });


</script>

