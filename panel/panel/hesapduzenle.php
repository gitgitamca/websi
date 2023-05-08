<?php require_once 'header.php';

hesap_kontrol();

if (isset($_POST['hesapguncelle'])) {
	if ($crud->direktguncelle("hesaplar", "hesap_id", $_POST['hesap_id'], $_POST, "hesap_id", "hesapguncelle")) {
		git("hesaplar.php","ok");
	} else {
		git("hesaplar.php","no");
	}
}
$hesap=$veri->hesap($_POST['hesap_id']);

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Edit Account</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row justify-content-center text-center">
							<div class="col-md-6 form-group">
								<label>Choose Product</label>
								<select name="urun" class="form-control selectpicker" data-live-search="true">
									<?php foreach ($crud->cok("SELECT * FROM urun WHERE satici={$_SESSION['kul_id']}",true) as $urun): ?>
										<option <?php slc($urun->urun_id,$hesap->urun) ?> value="<?php echo $urun->urun_id ?>"><?php echo $urun->urun_baslik ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Account Status</label>
								<select required name="hesap_durum" class="form-control">
									<?php foreach (hesap_durum() as $key => $value): ?>
										<option <?php slc($key,$hesap->hesap_durum) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Expiry Date</label>
								<input value="<?php echo $hesap->son_kullanim ?>" placeholder="Expiry Date" type="text" name="son_kullanim" class="form-control tarihsaat">
							</div>
						</div>
						<input type="hidden" name="hesap_id" value="<?php echo $hesap->hesap_id ?>">
						<div class="form-row justify-content-center text-center">
							<div class="col-md-10 form-group">
								<label>Account Info</label>
								<textarea name="icerik" class="form-control" style="min-height: 10rem;"><?php echo $hesap->icerik ?></textarea>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="hesapguncelle"><i class="fa fa-save"></i> Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>