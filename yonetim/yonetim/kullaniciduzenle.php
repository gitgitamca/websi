<?php 
include 'header.php';
yetkikontrol("e");
$islem = new kullanici($db);
if (isset($_POST['kullaniciguncelle'])) {
  if ($islem->kullaniciguncelle($_POST,$_FILES)) {
    if (isset($_GET['magaza'])) {
      git("magazalar","ok");
    } else {
      git("kullanicilar","ok");
    }
    
  } else {
    git("kullanicilar","no");
  }
}

if (isset($_POST['kul_id'])) {  
  $kul=$veri->kullanici($_POST['kul_id']);
}

?>
<div class="card card-primary br-1 shadow">
  <div class="card-header">
    <h5 class="text-primary">Kullanıcı Düzenle</h5>
  </div>
  <div class="card-body">
    <form id="kulform" action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
      <div class="form-row">
        <div class="form-group col-md-4">
          <label>İsim</label>
          <input type="text" required class="form-control" value="<?php echo $kul->kul_isim ?>" name="kul_isim" placeholder="İsim">
        </div>
        <div class="form-group col-md-4">
          <label>Soyisim</label>
          <input type="text" required class="form-control" value="<?php echo $kul->kul_soyisim ?>" name="kul_soyisim" placeholder="Soyisim">
        </div>
        <div class="form-group col-md-4">
          <label>E-Posta</label>
          <input type="email" required="" class="form-control" value="<?php echo $kul->kul_mail ?>" name="kul_mail" placeholder="E-Mail">
        </div>
      </div>

      <div class="form-row">
        <div class="form-group col-md-4">
          <label>Telefon Numarası</label>
          <input required="" minlength="10" type="text" class="form-control" value="<?php echo $kul->kul_telefon ?>" name="kul_telefon" id="kul_telefon" placeholder="Telefon Numarası">
        </div>
        <div class="form-group col-md-4">
          <label>Bakiye</label>
          <input required="" type="number" min="0" step="any" class="form-control" value="<?php echo $kul->kul_bakiye ?>" name="kul_bakiye" placeholder="Bakiye">
        </div>
        <div class="col-md-4 form-group">
          <label>Yeni Şifre <small>(Boş Bırakırsanız Şifre Değişmez)</small></label>
          <input class="form-control" type="text" name="kul_sifre" placeholder="Yeni Şifre">
        </div>
      </div>

      <hr class="hr-text" data-content="Fatura/Adres Bilgileri">

      <div class="form-row">
        <div class="form-group col-md-4">
          <label>Ülke</label>
          <input type="text" class="form-control" value="<?php echo $kul->kul_ulke ?>" name="kul_ulke" placeholder="Ülke">
        </div>
        <div class="form-group col-md-4">
          <label>Şehir</label>
          <input type="text" class="form-control" value="<?php echo $kul->kul_sehir ?>" name="kul_sehir" placeholder="Şehir">
        </div>
        <div class="form-group col-md-4">
          <label>Posta Kodu</label>
          <input type="text" class="form-control" value="<?php echo $kul->kul_posta_kodu ?>" name="kul_posta_kodu" placeholder="Posta Kodu">
        </div>
        <div class="form-group col-md-4">
          <label>Adres</label>
          <input type="text" class="form-control" value="<?php echo $kul->kul_adres ?>" name="kul_adres" placeholder="Adres">
        </div>
        <div class="form-group col-md-4">
          <label>Fatura Bilgileri</label>
          <input type="text" class="form-control" value="<?php echo $kul->kul_fatura ?>" name="kul_fatura" placeholder="Fatura Bilgileri">
        </div>
      </div>

      <hr class="hr-text" data-content="Sosyal Medya Bilgileri">

      <div class="form-row">
        <div class="form-group col-md-4">
          <label>İnstagram Linki</label>
          <input type="text" class="form-control" value="<?php echo $kul->ig ?>" name="ig" placeholder="İnstagram Linki">
        </div>
        <div class="form-group col-md-4">
          <label>Twitter Linki</label>
          <input type="text" class="form-control" value="<?php echo $kul->tw ?>" name="tw" placeholder="Twitter Linki">
        </div>
        <div class="form-group col-md-4">
          <label>Facebook Link</label>
          <input type="text" class="form-control" value="<?php echo $kul->fb ?>" name="fb" placeholder="Facebook Link">
        </div>
        <div class="form-group col-md-4">
          <label>Linkedin Link</label>
          <input type="text" class="form-control" value="<?php echo $kul->linkedin ?>" name="linkedin" placeholder="Facebook Link">
        </div>
      </div>


      <hr class="hr-text" data-content="Premium Ayarları">

      <div class="form-row">
        <div class="form-group col-md-4">
          <label>Premium Üyelik</label> <br>
          <label class="switch switch-left-right onayalani">
            <input type="hidden" class="onayvalue" name="pre_durum" value="<?php echo $kul->pre_durum ?>">
            <input class="switch-input onaybox" <?php if ($kul->pre_durum==1) {echo "checked";} ?>  type="checkbox">
            <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
            <span class="switch-handle"></span> 
          </label>
        </div>
        <div class="form-group col-md-4">
          <label>Premium Üyelik Başlangıcı</label>
          <input type="text" class="form-control tarihsaat" value="<?php echo $kul->pre_bas ?>" name="pre_bas" placeholder="Premium Üyelik Başlangıcı">
        </div>
        <div class="form-group col-md-4">
          <label>Premium Üyelik Bitişi</label>
          <input type="text" class="form-control tarihsaat" value="<?php echo $kul->pre_bit ?>" name="pre_bit" placeholder="Premium Üyelik Bitişi">
        </div>
      </div>


      <hr class="hr-text" data-content="Onay Alanı">

      <div class="form-row">

       <div class="form-group col-md-2">
        <label>Kullanıcı Durumu</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="kul_durum" value="<?php echo $kul->kul_durum ?>">
          <input class="switch-input onaybox" <?php if ($kul->kul_durum==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

       <div class="form-group col-md-2">
        <label>Telefon Onayı</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="tel_onay" value="<?php echo $kul->tel_onay ?>">
          <input class="switch-input onaybox" <?php if ($kul->tel_onay==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>Mağazalar Sayfasındaki Manşet Durumu</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="manset_durum" value="<?php echo $kul->manset_durum ?>">
          <input class="switch-input onaybox" <?php if ($kul->manset_durum==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>Ticket Bildirim Onayı</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="ticket_bildirim_onay" value="<?php echo $kul->ticket_bildirim_onay ?>">
          <input class="switch-input onaybox" <?php if ($kul->ticket_bildirim_onay==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>Ticket Mail Onayı</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="ticket_mail_onay" value="<?php echo $kul->ticket_mail_onay ?>">
          <input class="switch-input onaybox" <?php if ($kul->ticket_mail_onay==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>Satıcı Durumu</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="satici" value="<?php echo $kul->satici ?>">
          <input class="switch-input onaybox" <?php if ($kul->satici==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>İki Adımlı Doğrulama</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="auth_onay" value="<?php echo $kul->auth_onay ?>">
          <input class="switch-input onaybox" <?php if ($kul->auth_onay==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>

      <div class="form-group col-md-2">
        <label>Mağaza API İşlemleri</label> <br>
        <label class="switch switch-left-right onayalani">
          <input type="hidden" class="onayvalue" name="api_durum" value="<?php echo $kul->api_durum ?>">
          <input class="switch-input onaybox" <?php if ($kul->api_durum==1) {echo "checked";} ?>  type="checkbox">
          <span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
          <span class="switch-handle"></span> 
        </label>
      </div>
    </div>
    <hr>

    <div class="form-row">
      <div class="col-md-12 form-group">
        <label>Mağaza Hakkında</label>
        <textarea name="magaza_bilgi" id="magaza_bilgi" class=""><?php echo $kul->magaza_bilgi ?></textarea>
      </div>
    </div>


    <input type="hidden" name="kul_id" value="<?php echo $kul->kul_id ?>">
    <div class="text-center">
      <button type="submit" name="kullaniciguncelle" class="btn btn-primary btn-lg guncelle"><i class="fa fa-save"></i> Kaydet</button>      
    </div>
  </form>
</div>
</div>


<?php include 'footer.php' ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/inputmask/4.0.9/jquery.inputmask.bundle.min.js"></script>
<script>

  editor_baslat("magaza_bilgi");

  $(document).ready(function() {
    $("#kul_telefon").inputmask({"mask": "0 (999) 999-9999"});
    $("#kul_telefon").focus(function(event) {
      $(this).inputmask({"mask": "0 (999) 999-9999"});
    });

  });

  

  $("#kulform").submit(function(event) {
   var telefon = $("#kul_telefon").inputmask("unmaskedvalue");
   $("#kul_telefon").inputmask('remove')
   $("#kul_telefon").val(telefon);
 });

</script>