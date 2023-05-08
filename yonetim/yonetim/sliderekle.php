<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['sliderekle'])) {
	if ($genel->sliderekle($_POST,$_FILES)) {
		git("slider.php","ok");
	} else {
		git("slider.php","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Slider Ekle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Başlık</label>
								<input required="" type="text" name="baslik" placeholder="Başlık" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Sıra</label>
								<input required="" value="1" type="number" min="1" name="sira" placeholder="Bannerler arasında kaçıncı sırada gösterilecek" class="form-control">
							</div>

							<div class="col-md-6 form-group">
								<label>Resim Dosyası <small>(660x630 boyut önerilir)</small></label>
								<input required="" type="file" name="resim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option value="1">Aktif</option>
									<option value="0">Pasif</option>
								</select>
							</div>
							
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Buton Metni <small>(Boş bırakırsanız buton gözükmez)</small></label>
								<input type="text" name="buton_yazi" placeholder="Buton Metni (Boş bırakırsanız buton gözükmez)" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Butona Tıklandığında Gidilecek Link</label>
								<input type="url" name="buton_link" placeholder="Butona Tıklandığında Gidilecek Link" class="form-control">
							</div>
						</div>

						<div class="col-md-6 form-group">
							<label>Açıklama</label>
							<input type="text" name="aciklama" placeholder="Açıklama" class="form-control">
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="sliderekle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>