<?php 
include 'header.php' ;
if (isset($_POST['notekle'])) {
	if ($crud->direktekle("notlar",$_POST,"notekle")) {
		git("notlar","ok");
	} else {
		git("notlar","no");
	}
}
?>
<!-- Not Ekleme Alanı -->
<div class="container">
	<div class="card card-primary br-1 shadow mb-4">
		<div class="card-header py-3">
			<h5 class="m-0 font-weight-bold text-primary">Not Ekle</h5>
		</div>
		<div class="card-body">
			<form action="" method="POST" class="needs-validation" novalidate="">
				<div class="form-row justify-content-center">
					<div class="form-group col-md-5">
						<label>Not Başlığı</label>
						<input type="text" required class="form-control" placeholder="Not Başlığı" name="not_baslik">
					</div>
				</div>
				<!-- <div class="form-row justify-content-center">
					<div class="form-group col-md-6">
						<label>Hatırlatıcı Ekle <small>(Boş bırakırsanız tarih eklenmez)</small></label>
						<input type="datetime-local" class="form-control" name="hatirlatici">
					</div>
				</div> -->
				<div class="form-row">
					<div class="form-group col-md-12">
						<label>Not Detayı</label>
						<textarea class="form-control" required id="editor" placeholder="Not Detayı" name="not_detay"></textarea>
					</div>
				</div>
				<input type="hidden" name="ekleyen_id" value="<?php echo $_SESSION['kul_id'] ?>">
				<div class="text-center">
					<button type="submit" name="notekle" class="btn btn-primary btn-lg"><i class="fa fa-save"></i> Kaydet</button>
				</div>
			</form>
		</div>
	</div>
</div>

<?php include 'footer.php' ?>