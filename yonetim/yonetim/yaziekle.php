<?php 
require 'header.php'; 
$islem = new Blog($db);

if (isset($_POST['yaziekle'])) {
	if ($islem->yaziekle($_POST,$_FILES)) {
		git("yazilar","ok");
	} else {
		git("yazilar","no");
	}
}

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
								<input required="" class="form-control" type="text" name="yazi_baslik" placeholder="Yazının Başlığını Yazın">
							</div>
							<div class="col-md-6 form-group">
								<label>Yazı Öne Çıkan Görsel <br> 
									<small>(Bu Görsel Yazı İçerisinde Gözükmez Yazı İçerisinde Gözükmesini İstediğiniz Görselleri Aşağıdaki Alandan Ekleyin)</small></label>
								<input required="" class="form-control" type="file" name="yazi_resim">
							</div>
						</div>
						<input type="hidden" name="yazi_link">
						<div class="form-row">
							<div class="col-md-12 form-group">
								<label>Yazı İçeriği</label>
								<textarea required="" name="yazi_detay" id="editor"></textarea>
							</div>
						</div>
						<div class="text-center">
							<button name="yaziekle" type="submit" class="btn btn-success btn-lg fs-1"><i class="fas fa-save"></i> Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require 'footer.php'; ?>