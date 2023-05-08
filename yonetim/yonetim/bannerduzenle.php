<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['bannerguncelle'])) {
	if ($genel->bannerguncelle($_POST,$_FILES)) {
		git("bannerler.php","ok");
	} else {
		git("bannerler.php","no");
	}
}

$banner=$crud->tek("SELECT * FROM banner WHERE banner_id={$_POST['banner_id']}",true);

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Banner Düzenle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Resim Dosyası <small>(Boş bırakırsanız değişmez)</small></label>
								<input type="file" name="resim" class="form-control">
							</div>

							<input type="hidden" name="eski_resim" value="<?php echo $banner->resim ?>">
							<input type="hidden" name="banner_id" value="<?php echo $banner->banner_id ?>">

							<div class="col-md-6 form-group">
								<label>Tıklanınca Gidilecek Link</label>
								<input required="" value="<?php echo $banner->link ?>" type="url" name="link" placeholder="Tıklanınca Gidilecek Link" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Banner konumu</label>
								<select name="konum" class="form-control">
									<option <?php slc($banner->konum,0) ?> value="0">Üst slide altı</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option <?php slc($banner->durum,1) ?> value="1">Aktif</option>
									<option <?php slc($banner->durum,0) ?> value="0">Pasif</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Sıra</label>
								<input required="" value="<?php echo $banner->sira ?>" value="1" type="number" min="1" name="sira" placeholder="Bannerler arasında kaçıncı sırada gösterilecek" class="form-control">
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="bannerguncelle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>