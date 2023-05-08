<?php 
include'header.php';
yetkikontrol("e");


if (isset($_POST['urunsilme'])) {
  $crud->direktguncelle("urun","urun_id", $_POST['urun_id'], ['manset_durum' => 0]);
}

if (isset($_POST['urunler'])) {
  $crud->tek("UPDATE urun SET manset_durum=0");
  foreach ($_POST['urunler'] as $key => $var) {
    $crud->direktguncelle("urun","urun_id", $var, ['manset_durum' => 1]);
  }
}

?>

<div class="container-fluid mt-4">
  <div class="row mb-4">
    <div class="col-md-4 mx-auto">
      <div class="card card-primary br-1 shadow">
        <div class="card-header">
          <h6 class="m-0 font-weight-bold text-primary">Manşette Gözükecek Ürünler</h6>
        </div>
        <div class="card-body">
          <form action="" method="POST" accept-charset="utf-8">
            <div class="form-row">
              <div class="col-md-12 form-group">
                <label>Gözükecek Ürünler</label>
                <select name="urunler[]" multiple class="form-control selectpicker" data-live-search="true" data-actions-box="true">
                  <?php foreach ($urun->tum_urunler(true) as $key => $var): ?>
                    <option <?php slc($var->manset_durum,1) ?> value="<?php echo $var->urun_id ?>"><?php echo $var->urun_baslik ?></option>
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
          <h6 class="m-0 font-weight-bold text-primary">Ürünler Sayfası Manşet Alanı</h6>
        </div>
        <div class="card-body" style="width: 100%">
          <div class="table-responsive">
            <table class="table table-bordered" id="uruntablosutable" width="100%" cellspacing="0">
              <thead>
                <tr> 
                  <th>ID</th>
                  <th>Sıra</th>
                  <th>Satıcı</th>
                  <th>Ürün İsmi</th>
                  <th>Ürün Fiyatı</th>
                  <th>Ürün Görseli</th>
                  <th>Stok Sayısı</th>
                  <th>Satış Sayısı</th>
                  <th>Toplam Ücret</th>
                  <th>Durum</th>
                  <th>Değerlendirme</th>
                </tr>
              </thead>

              <tbody id="uruntablosu">
                <?php foreach ($urun->manset_urunler() as $key => $var): ?>
                  <tr style="border-left: 7px solid gray;" id="urunsiralama-<?php echo $var->urun_id ?>">
                    <td><?php echo $var->urun_id; ?></td>
                    <td><?php echo $var->urun_manset_sira; ?></td>
                    <td><?php echo $urun->isim($var); ?></td>
                    <td><a target="_blank" class="btn-link badge badge-primary" href="<?php echo $veri->ul($var) ?>"><?php echo $var->urun_baslik ?></a></td>
                    <td><?php echo $var->urun_fiyat; ?> $</td>
                    <td><img class="img-fluid" style="max-width: 50px" src="<?php echo kucuk_resim.$var->urun_one_cikan; ?>" alt=""></td>
                    <td class="text-center">
                      <span class="badge badge-success">
                        <?php echo $urun->stok_kontrol($var);?>
                      </span>
                    </td>
                    <td class="text-center">
                      <span class="badge badge-primary">
                        <?php echo $urun->basarili_siparis($var->urun_id);?>
                      </span>
                    </td>
                    <td class="text-center">
                      <span class="badge badge-primary">
                        <?php echo $rapor->tek_urun_kazanc($var->urun_id,true).para();?>
                      </span>
                    </td>
                    <td class="text-center">
                      <?php echo aktif_pasif()[$var->urun_durum] ?>
                    </td>
                    <td class="text-center">
                      <div class="yildiz" data-yildiz="<?php echo $veri->yildiz($var->urun_id); ?>"></div>
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

  $("#uruntablosu").sortable({
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
      });

    }
  });
</script>