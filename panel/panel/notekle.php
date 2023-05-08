<?php 
include 'header.php' ;
if (isset($_POST['notekle'])) {
	$_POST['ekleyen_id']=ses('kul_id');
	$sonuc=$crud->direktekle("notlar",$_POST,"notekle");
	if ($sonuc) {
		header("location:notlar?durum=ok");
		exit;
	} else {
		header("location:notlar?durum=no");
		exit;
	}
}
?>
<!-- Not Ekleme Alanı -->
<div class="container">
	<div class="card card-primary br-1 shadow mb-4">
		<div class="card-header py-3">
			<h5 class="m-0 font-weight-bold text-primary">Add Note</h5>
		</div>
		<div class="card-body text-center">
			<form action="" method="POST" class="needs-validation" novalidate="">
				<div class="form-row justify-content-center">
					<div class="form-group col-md-5">
						<label>Note Title</label>
						<input type="text" required class="form-control" placeholder="Note Title" name="not_baslik">
					</div>
				</div>
				<div class="form-row justify-content-center">
					<div class="form-group col-md-12">
						<label>Note Description</label>
						<textarea class="form-control" required="" style="min-height: 10rem" placeholder="Note Description..." name="not_detay"></textarea>
					</div>
				</div>
				<button type="submit" name="notekle" class="btn btn-primary">Save</button>
			</form>
		</div>
	</div>
</div>

<?php include 'footer.php' ?>