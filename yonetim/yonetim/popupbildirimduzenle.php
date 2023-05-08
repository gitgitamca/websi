<?php 
include 'header.php';
if (isset($_POST['bildirimguncelle'])) {
 if ($crud->direktguncelle("popup","popup_id",$_POST['popup_id'],$_POST,"bildirimguncelle","popup_id")) {
   git("popuplar","ok");
 } else {
  git("popuplar","no");
}
}

$bildirim=$crud->tekil("popup","popup_id",$_POST['popup_id']);

?>

<!-- Begin Page Content -->
<div class="container">
  <div class="card card-primary br-1 shadow mb-4">
    <div class="card-header py-3">
      <h5 class="m-0 font-weight-bold text-primary">Popup Bildirim Düzenle</h5>
    </div>
    <div class="card-body">
      <form action="" method="POST">       
        <div class="form-row">
          <div class="col-md-6 form-group">
            <input type="text" name="popup_baslik" placeholder="Bildirim Başlığı" class="form-control" value="<?php echo $bildirim['popup_baslik'] ?>">
          </div>
        </div>
        <div class="form-row">
          <div class="col-md-6 form-group">
            <select name="bildirim_tur" class="form-control">
              <option <?php if($bildirim['bildirim_tur']==0){echo "selected";} ?> value="0">Popup</option>
              <option <?php if($bildirim['bildirim_tur']==1){echo "selected";} ?> value="1">Üst Alan</option>
            </select>
          </div>
        </div>
        <input type="hidden" name="popup_id" value="<?php echo $_POST['popup_id'] ?>">
        <div class="form-row">
          <div class="form-group col-md-12">
            <label>Bildirim Detayı</label>
            <textarea required="" name="popup_detay" class="summernote-editor"><?php echo $bildirim['popup_detay'] ?></textarea>
          </div>
        </div>
        <button type="submit" name="bildirimguncelle" class="btn btn-primary mt-3">Kaydet</button>
      </form>     
    </div>
  </div>
</div>
<!-- End of Main Content -->
<?php include 'footer.php' ?>
