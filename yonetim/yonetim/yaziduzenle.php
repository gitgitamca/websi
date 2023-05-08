<?php 
require 'header.php';
$islem = new Blog($db);

if (isset($_POST['yaziguncelle'])) {
	if ($islem->yaziguncelle($_POST,$_FILES)) {
		git("yazilar","ok");
	} else {
		git("yazilar","no");
	}
}

$yazi=$islem->tekil("yazi","yazi_id",$_POST['yazi_id']);
?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card bo-sm br-1 shadow-lg">
				<div class="card-body">
					<form action="" method="POST" accept-charset="utf-8" enctype="multipart/form-data">

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Yazı Başlığı</label>
								<input required="" class="form-control" type="text" name="yazi_baslik" placeholder="Yazının Başlığını Yazın" value="<?php echo $yazi['yazi_baslik'] ?>">
							</div>
							<div class="col-md-6 form-group">
								<img class="img-fluid" src="dosyalar/<?php echo $yazi['yazi_resim'] ?>" alt="">
								<label>Yazı Öne Çıkan Görsel</label>
								<input class="form-control" type="file" name="yazi_resim" accept="image/*">
							</div>
						</div>
						<input type="hidden" name="yazi_id" value="<?php echo $_POST['yazi_id'] ?>">
						<div class="form-row">
							<div class="col-md-12 form-group">
								<label>Yazı İçeriği</label>
								<textarea required="" name="yazi_detay" id="editor"><?php echo $yazi['yazi_detay'] ?></textarea>
							</div>
						</div>
						<div class="text-center">
							<button name="yaziguncelle" type="submit" class="btn btn-success btn-lg fs-1"><i class="fas fa-save"></i> Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require 'footer.php'; ?>