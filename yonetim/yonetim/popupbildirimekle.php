<?php 
include 'header.php';

if (isset($_POST['bildirimekle'])) {
 if ($crud->direktekle("popup",$_POST,"bildirimekle")) {
  git("popuplar","ok");
} else {
  git("popuplar","no");
}
}

?>

<!-- Begin Page Content -->
<div class="container">
  <div class="card card-primary br-1 shadow mb-4">
    <div class="card-header py-3">
      <h5 class="m-0 font-weight-bold text-primary">Popup Bildirim Ekle</h5>
    </div>
    <div class="card-body">
      <form action="" method="POST">       
        <div class="form-row">
          <div class="col-md-6 form-group">
            <input type="text" name="popup_baslik" placeholder="Bildirim Başlığı" class="form-control">
          </div>
        </div>
        <div class="form-row">
          <div class="col-md-6 form-group">
            <select name="bildirim_tur" class="form-control">
              <option value="0">Popup (Açılır Pencere)</option>
              <option value="1">Sitenin En Üst Alanı</option>
            </select>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-12">
            <label>Bildirim Detayı</label>
            <textarea required="" name="popup_detay" class="summernote-editor"></textarea>
          </div>
        </div>
        <button type="submit" name="bildirimekle" class="btn btn-primary mt-3">Kaydet</button>
      </form>     
    </div>
  </div>
</div>
<!-- End of Main Content -->
<?php include 'footer.php' ?>
