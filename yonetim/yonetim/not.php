<?php 
include 'header.php';
$islem=$crud;
if (isset($_POST['not_id'])) {
	$notcek=$islem->tekil("notlar","not_id",$_POST['not_id']);
} else {
	header("location:notlar.php");
	exit;
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
		transition:box-shadow 0.5s ease;
		box-shadow:0 4px 6px rgba(0,0,0,0.1);
		font-smoothing:subpixel-antialiased;
		background-color: #eaecf4;
		border: 1px solid #d1d3e2;
	}
</style>
<!-- Not Ekleme Alanı -->
<div class="container">
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h5 class="m-0 font-weight-bold text-primary">Not Detayı</h5>
		</div>
		<div class="card-body">
			<div>
				<form>
					<div class="form-row justify-content-center">
						<div class="form-group col-md-4">
							<label>Not Başlığı</label>
							<input type="text" disabled class="form-control" value="<?php echo $notcek['not_baslik'] ?>" name="not_baslik">
						</div>
					</div>
					<!-- <div class="form-row justify-content-center">
						<div class="form-group col-md-5">
							<label>Hatırlatıcı</label>
							<input type="datetime-local" disabled class="form-control" value="<?php echo str_replace(' ', 'T', $notcek['hatirlatici']) ?>" name="hatirlatici">
						</div>
					</div> -->
					<div class="form-row justify-content-center">
						<div class="form-group col-md-12">
							<label>Not Detayı</label>
							<textarea  class="devredisi" id="editor" name="not_Detay"><?php echo $notcek['not_detay'] ?></textarea>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include 'footer.php' ?>
<script>
	autosize(document.getElementById("not"));
</script>