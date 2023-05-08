<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['sliderguncelle'])) {
	if ($genel->sliderguncelle($_POST,$_FILES)) {
		git("slider.php","ok");
	} else {
		git("slider.php","no");
	}
}

$slider=$genel->tek("SELECT * FROM slider WHERE slider_id={$_POST['slider_id']}",true);

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Slider Düzenle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">

							<input type="hidden" name="eski_resim" value="<?php echo $slider->resim ?>">
							<input type="hidden" name="slider_id" value="<?php echo $slider->slider_id ?>">

							<div class="col-md-6 form-group">
								<label>Başlık</label>
								<input required="" type="text" value="<?php echo $slider->baslik ?>" name="baslik" placeholder="Başlık" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Sıra</label>
								<input required="" value="<?php echo $slider->sira ?>" type="number" min="0" name="sira" placeholder="Bannerler arasında kaçıncı sırada gösterilecek" class="form-control">
							</div>
							
							<div class="col-md-6 form-group">
								<label>Resim Dosyası <small>(Boş bırakırsanız resim değişmez)</small></label>
								<input type="file" name="resim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option <?php slc($slider->durum,1) ?> value="1">Aktif</option>
									<option <?php slc($slider->durum,0) ?> value="0">Pasif</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Buton Metni <small>(Boş bırakırsanız buton gözükmez)</small></label>
								<input type="text" value="<?php echo $slider->buton_yazi ?>" name="buton_yazi" placeholder="Buton Metni (Boş bırakırsanız buton gözükmez)" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Butona Tıklandığında Gidilecek Link</label>
								<input type="url" value="<?php echo $slider->buton_link ?>" name="buton_link" placeholder="Butona Tıklandığında Gidilecek Link" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-12">
								<label>Açıklama</label>
								<textarea name="aciklama" class="form-control" style="min-height: 15rem;"><?php echo $slider->aciklama ?></textarea>
							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="sliderguncelle"><i class="fa fa-save"></i> Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>