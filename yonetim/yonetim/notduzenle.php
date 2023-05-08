<?php 
include 'header.php' ;
$islem=$crud;
if (isset($_POST['not_id'])) {
	$notcek=$islem->tekil("notlar","not_id",$_POST['not_id']);
} else {
	header("location:notlar.php");
	exit;
}

if (isset($_POST['notguncelle'])) {
	$sonuc=$islem->direktguncelle("notlar","not_id",$_POST['not_id'],"not_id","notguncelle",$_POST);
	if ($sonuc) {
		header("location:notlar?durum=ok");
		exit;
	} else {
		header("location:notlar?durum=no");
		exit;
	}
}

?>
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<style type="text/css" media="screen">
	#not {
		width:100%;
		box-sizing:border-box;
		display:block;
		max-width:100%;
		line-height:1.5;
		padding:15px 15px 30px;
		border-radius:8px;
		border: 1px solid #d1d3e2;
	}
</style>
<!-- Not Ekleme Alanı -->
<div class="container">
	<div class="card card-primary br-1 shadow mb-4">
		<div class="card-header py-3">
			<h5 class="m-0 font-weight-bold text-primary">Not Düzenle</h5>
		</div>
		<div class="card-body">
			<div>
				<form class="" action="" method="POST">
					<div class="form-row justify-content-center">
						<div class="form-group col-md-4">
							<label>Not Başlığı</label>
							<input type="text" required class="form-control" value="<?php echo $notcek['not_baslik'] ?>" name="not_baslik">
						</div>
					</div>
				<!-- 	<div class="form-row justify-content-center">
						<div class="form-group col-md-5">
							<label>Hatırlatıcı Ekle</label>
							<input type="datetime-local" class="form-control" value="<?php echo str_replace(' ', 'T', $notcek['hatirlatici']) ?>" name="hatirlatici">
						</div>
					</div> -->
					<div class="form-row justify-content-center">
						<div class="form-group col-md-12">
							<label>Not Detayı</label>
							<textarea class="form-control" required id="editor" name="not_detay"><?php echo $notcek['not_detay'] ?></textarea>
						</div>
					</div>
					<input type="hidden" name="not_id" value="<?php echo guvenlik($_POST['not_id']) ?>">
					<div class="text-center">
						<button type="submit" name="notguncelle" class="btn btn-primary btn-lg"><i class="fa fa-save"></i> Kaydet</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include 'footer.php' ?>
