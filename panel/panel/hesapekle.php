<?php require_once 'header.php';

if (isset($_POST['hesapekle'])) {
	urun_kontrol($_POST['urun']);
	if ($crud->direktekle("hesaplar",$_POST,"hesapekle")) {
		git("hesaplar","ok");
	} else {
		git("hesaplar","no");
	}
}

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Add Account</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Choose item</label>
								<select required="" name="urun" class="form-control selectpicker" data-live-search="true">
									<?php foreach ($crud->cok("SELECT * FROM urun WHERE satici={$_SESSION['kul_id']}") as $urun): ?>
										<option value="<?php echo $urun['urun_id'] ?>"><?php echo $urun['urun_baslik'] ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Account Status</label>
								<select required name="hesap_durum" class="form-control">
									<?php foreach (hesap_durum() as $key => $value): ?>
										<option value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Expiry Data</label>
								<input placeholder="Expiry Date" type="text" name="son_kullanim" class="form-control tarihsaat">
							</div>
						</div>
						<div class="form-row justify-content-center text-center">
							<div class="col-md-10 form-group">
								<label>Account Info <small>(Information to be Delivered to the Customer)</small></label>
								<textarea name="icerik" class="form-control" style="min-height: 10rem;"></textarea>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="hesapekle"><i class="fa fa-save"></i> Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>