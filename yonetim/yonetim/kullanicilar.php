<?php require 'header.php'; ?>


<div class="container-fluid mt-4">
  <div class="card card-primary br-1 shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Kullanıcılar</h6>
    </div>
    <div class="card-body" style="width: 100%">
      <?php include "disaaktar.php" ?>
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr> 
              <th>No</th>
              <th>İsim Soyisim</th>
              <th>E-Mail</th>
              <th>Telefon</th>
              <th>Durum</th>
              <th>Kayıt Tarihi</th>
              <th>Son Giriş Tarihi</th>
              <th>İki Adımlı Doğrulama</th>
              <th>Bakiye</th>
              <th>İşlemler</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($veri->kullanicilar() as $key => $var): ?>
              <tr>
                <td><?php echo $var->kul_id ?></td>
                <td><?php echo $veri->isim($var,false) ?></td>
                <td><?php echo $var->kul_mail ?></td>
                <td><?php echo $var->kul_telefon ?></td>
                <td><?php echo aktif_pasif()[$var->kul_durum] ?></td>
                <td><?php echo $var->kul_kayit_tarih ?></td>
                <td><?php echo $var->son_giris ?></td>
                <td><?php echo aktif_pasif()[$var->auth_onay] ?></td>
                <td><?php echo para_yazi($var->kul_bakiye) ?></td>
                <td>
                  <div class="d-flex justify-content-center">
                    <form class="mx-1" action="mailgonder" method="POST">
                      <input type="hidden" name="kul_mail" value="<?php echo $var->kul_mail ?>">
                      <button type="submit" name="kul_mail_gonder" class="btn btn-warning btn-sm icon-split">
                        <span class="icon text-white-60">
                          <i class="fas fa-envelope"></i>
                        </span>
                      </button>
                    </form>

                    <form action="kullaniciduzenle" method="POST">
                      <input type="hidden" name="kul_id" value="<?php echo $var->kul_id ?>">
                      <button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
                        <span class="icon text-white-60">
                          <i class="fas fa-edit"></i>
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


<?php include'footer.php' ?>

<script>
  var dataTables = $('#dataTable').DataTable({
    initComplete: filtre([4,7]),
    dom: dtDom,
    buttons: exBtn(9)
  });
</script>