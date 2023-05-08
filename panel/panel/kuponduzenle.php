<?php require_once 'header.php';

if (isset($_POST['kuponguncelle'])) {
	if ($kupon->guncelle()) {
		git("kuponlar","ok");
	} else {
		git("kuponlar","no");
	}
}

$ku=$kupon->kod($_GET['k']);

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Edit Coupon</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Coupon Code <small>(Upper Case Only)</small></label>
								<input value="<?php echo $ku->kupon_kodu ?>" required="" placeholder="Coupon Code" type="text" id="kupon_kodu" name="kupon_kodu" class="form-control" minlength="4" maxlength="15">
							</div>
							<div class="form-group col-md-6">
								<label>Coupon Status</label>
								<select required name="kupon_durum" class="form-control">
									<option <?php slc($ku->kupon_durum,1) ?> value="1">Active</option>
									<option <?php slc($ku->kupon_durum,0) ?> value="0">Passive</option>
								</select>
							</div>
						</div>

						<input type="hidden" name="kupon_id" value="<?php echo $ku->kupon_id ?>">
						
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Expiry Date</label>
								<input value="<?php echo $ku->son_kullanim ?>" required="" placeholder="Expiry Date" type="text" name="son_kullanim" class="form-control tarihsaat">
							</div>
							<div class="col-md-6 form-group">
								<label>Discount Rate(%)</label>
								<input value="<?php echo $ku->yuzde ?>" required="" placeholder="Discount Rate(%)" type="number" min="1" max="99" name="yuzde" class="form-control" value="1">
							</div>
							<div class="col-md-6 form-group">
								<label>Usage Limit <small>(leave blank if there will be unlimited usage.)</small></label>
								<input value="<?php echo $ku->adet ?>" placeholder="Usage Limit" type="number" name="adet" class="form-control">
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="kuponguncelle"><i class="fa fa-save"></i> Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>
<script>
	$('#kupon_kodu').bind('keyup blur',function() { 
		$(this).val($(this).val().replace(/[^A-Z0-9]/g,''))
	});
</script>