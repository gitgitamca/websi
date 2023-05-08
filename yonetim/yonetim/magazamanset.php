<?php 
include'header.php';
yetkikontrol("e");


if (isset($_POST['magazasilme'])) {
  $crud->direktguncelle("kullanicilar","kul_id", $_POST['kul_id'], ['manset_durum' => 0]);
}

if (isset($_POST['magazalar'])) {
  $crud->tek("UPDATE kullanicilar SET manset_durum=0");
  foreach ($_POST['magazalar'] as $key => $var) {
    $crud->direktguncelle("kullanicilar","kul_id", $var, ['manset_durum' => 1]);
  }
}

?>

<div class="container-fluid mt-4">
  <div class="row mb-4">
    <div class="col-md-4 mx-auto">
      <div class="card card-primary br-1 shadow">
        <div class="card-header">
          <h6 class="m-0 font-weight-bold text-primary">Manşette Gözükecek Mağazalar</h6>
        </div>
        <div class="card-body">
          <form action="" method="POST" accept-charset="utf-8">
            <div class="form-row">
              <div class="col-md-12 form-group">
                <label>Gözükecek Mağazalar</label>
                <select name="magazalar[]" multiple class="form-control selectpicker" data-live-search="true" data-actions-box="true">
                  <?php foreach ($veri->magazalar() as $key => $var): ?>
                    <option <?php slc($var->manset_durum,1) ?> value="<?php echo $var->kul_id ?>"><?php echo $var->magaza_isim ?></option>
                  <?php endforeach ?>
                </select>
              </div>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Kaydet</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card card-primary br-1 shadow">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Mağazalar Sayfası Manşet Alanı</h6>
        </div>
        <div class="card-body" style="width: 100%">
          <div class="table-responsive">
            <table class="table table-bordered" id="magazatablosutable" width="100%" cellspacing="0">
              <thead>
                <tr> 
                  <th>No</th>
                  <th>Resim</th>
                  <th>İsim</th>
                  <th>Sıra</th>         
                  <th>İşlemler</th>
                </tr>
              </thead>

              <tbody id="magazatablosu">
                <?php foreach ($veri->manset_magazalar() as $key => $var): ?>
                  <tr style="border-left: 7px solid gray;" id="magazasiralama-<?php echo $var->kul_id ?>">
                    <td><?php echo $var->kul_id ?></td>
                    <td><img src="<?php echo $veri->kul_logo($var) ?>" style="width:100px;"></td>
                    <td><?php echo $var->magaza_isim ?></td>
                    <td><?php echo $var->manset_sira ?></td>
                    <td>
                      <div class="d-flex justify-content-center">
                        <form class="ml-2" action="" method="POST">
                          <input type="hidden" name="kul_id" value="<?php echo $var->kul_id ?>">
                          <button type="submit" name="magazasilme" class="btn btn-danger icon-split">
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
</div>



<?php include'footer.php' ?>

<script src="<?php echo panel ?>/assets/modules/jquery-ui/jquery-ui.min.js"></script>
<!-- JS Libraies -->
<script src="<?php echo panel ?>/assets/modules/izitoast/js/iziToast.min.js"></script>

<!-- Page Specific JS File -->
<script src="<?php echo panel ?>/assets/js/page/modules-toastr.js"></script>
<script>
/*  var dataTables = $('#magazatablosu').DataTable({
    "ordering": true,  
    "searching": true, 
    "lengthChange": true,
    "info": true
  });*/

  $("#magazatablosu").sortable({
    update: function (event, ui) {
      var postdata=$(this).sortable('serialize')
      $.ajax({
        url: '<?php echo ajax ?>',
        type: 'POST',
        data: postdata,
        success:function(donenveri){   
          sonuc=JSON.parse(donenveri);        
          if (sonuc.sonuc=="ok") {
            iziToast.success({
              title: 'İşlem Başarılı!',
              message: 'Sıralama Başarıyla Değiştirildi',
              position: 'topRight' 
            })
          } else {
            iziToast.error({
              title: 'İşlem Başarısız!',
              message: 'Hata: '+sonuc.hata,
              position: 'topRight' 
            })
          }
        }
      })
      .done(function() {
        console.log("success");
      })
      .fail(function() {
        console.log("error");
      })
      .always(function() {
        console.log("complete");
      });


    }
  });
</script>