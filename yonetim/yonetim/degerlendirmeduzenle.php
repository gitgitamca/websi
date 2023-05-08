<?php require_once 'header.php';
yetkikontrol("e");

$yildiz=$veri->degerlendirme($_GET['d']);

if (isset($_POST['yildizguncelle'])) {
	if ($urun->degerlendir($yildiz,$_POST,true)) {
		git("degerlendirmeler","ok");
	} else {
		git("degerlendirmeler","no");
	}
}



?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Yıldız Düzenle</h5>
				</div>
				<div class="card-body">
					
					<div class="row align-items-center ml-1">
						<img src="<?php echo $veri->ur($yildiz) ?>" style="max-width: 100px; width: 100%; height: auto; margin-left: 2rem; margin-right: 2rem" class="img-fluid">
						<div>
							<h5><a href="<?php echo $veri->ul($yildiz) ?>" target="_blank"><?php echo $yildiz->urun_baslik ?></a></h5>
							<p><b>Değerlendirme Tarihi:</b> <?php echo $yildiz->yildiz_tarih ?></p>
						</div>
					</div>
					<hr>
					<form class="degerlendirme_formu" action="" method="POST" accept-charset="utf-8">
						<input type="hidden" name="yildiz_id" value="<?php echo $_GET['d'] ?>">
						<div class="form-group">
							<label>Yorumunuz:</label>
							<textarea required="" placeholder="Sipariş Hakkında Düşünceleriniz..." name="icerik" class="form-control"><?php echo $yildiz->icerik ?></textarea>
						</div>
						<div class="form-group">
							<label>Değerlendirmeniz: </label>
							<div id="yildiz" data-yildiz="<?php echo $yildiz->deger ?>"></div>
							<input type="hidden" name="deger" value="<?php echo $yildiz->deger ?>" id="yildiz_deger">
						</div>
						
						<div class="text-center">
							<button name="yildizguncelle" type="submit" class="btn btn-info"><i class="fas fa-save mr-2"></i> Gönder</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>

<script>
	$(document).ready(function() {
		$("#yildiz").rateYo({
			starWidth: "35px",
			rating:<?php echo $yildiz->deger ?>,
			onSet: function (rating, rateYoInstance) {
				$("#yildiz_deger").val(rating);
			}
		});
		$("#yildiz").rateYo("option", "readOnly", false);
	});
</script>