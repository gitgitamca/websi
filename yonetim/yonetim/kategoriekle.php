<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['kategoriekle'])) {
	if ($katClass->kat_ekle($_POST,$_FILES)) {
		git("kategoriler","ok");
	} else {
		git("kategoriler","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Kategori Ekle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Kategori İsmi</label>
								<input required="" type="text" name="kat_isim" placeholder="Kategori İsmi" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Üst Kategori</label>
								<select name="kat_ust" class="form-control">
									<option value="0">-- ÜST KATEGORİ YOK --</option>
									<?php 
									$k=$veri->kat_agac($veri->tum_katlar());
									$veri->kat_select($k); ?>
								</select>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="kategoriekle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>