<?php include 'header.php';

if (isset($_POST['smsgonder'])) {
	if ($crud->sms($_POST['sms_detay'],$_POST['sms_kullanicilar'])) {
		header("location:index.php?durum=ok");
		exit;
	} else {
		header("location:index.php?durum=no");
		exit;
	}
}

?>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h5 class="m-0 font-weight-bold text-primary">SMS Gönder</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST">
						<div class="form-row">
							<div class="form-group col-md-12">
								<label>Müşteriler</label>
								<select multiple="" class="form-control selectpicker" name="sms_kullanicilar[]" data-actions-box="true" data-live-search="true" title="SMS Gönderilecek Kişileri Seçin">
									<?php foreach ($veri->kullanicilar(true) as $key => $value): ?>
										<option <?php slc(@$_GET['kul_id'],$value->kul_id) ?> value="<?php echo $value->kul_telefon ?>"><?php echo $veri->isim($value,$value->satici)." - #".$value->kul_telefon ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
						<input type="hidden" name="toplu" value="toplu">
						<div class="form-row">
							<div class="form-group col-md-12">
								<label>SMS İçeriği</label>
								<textarea style="min-height: 7rem; height: auto;" class="form-control" required name="sms_detay" placeholder="SMS İçeriği" ></textarea>
							</div>
						</div>
						<button type="submit" name="smsgonder" class="btn btn-primary">Gönder</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php include 'footer.php' ?>
