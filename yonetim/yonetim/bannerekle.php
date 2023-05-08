<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['bannerekle'])) {
	if ($genel->bannerekle($_POST,$_FILES)) {
		git("bannerler.php","ok");
	} else {
		git("bannerler.php","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Banner Ekle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Resim Dosyası</label>
								<input required="" type="file" name="resim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Tıklanınca Gidilecek Link</label>
								<input required="" type="url" name="link" placeholder="Tıklanınca Gidilecek Link" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Banner konumu</label>
								<select name="konum" class="form-control">
									<option value="0">Üst slide altı</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option value="1">Aktif</option>
									<option value="0">Pasif</option>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Sıra</label>
								<input required="" value="1" type="number" min="1" name="sira" placeholder="Bannerler arasında kaçıncı sırada gösterilecek" class="form-control">
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="bannerekle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>