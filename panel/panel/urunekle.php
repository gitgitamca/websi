<?php require_once 'header.php'; 
saticimi("e");
$islem = new urun($db);

if (isset($_POST['urunekle'])) {
	if ($islem->urunekle($_POST,$_FILES)) {
		git("urunler.php","ok");
	} else {
		git("urunler.php","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">ADD ITEM</h5>
				</div>
				<div class="card-body p-1">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Item Title</label>
								<input required="" class="form-control" type="text" name="urun_baslik" placeholder="Item Title...">
							</div>
							<div class="col-md-4 form-group">
								<label>Category</label>
								<select required="" name="kat" class="form-control selectpicker" data-live-search="true">
									<?php $veri->kat_select($veri->kat_agac($veri->tum_katlar())) ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Delivery Type</label>
								<select onchange="teslim_tur_islem()" id="teslim_tur" required="" name="teslim_tur" class="form-control">
									<?php foreach (teslim_tur() as $key => $value): ?>
										<option value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-4 form-group" id="stok_sayisi" style="display: none;">
								<label>Stock amount <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="">
									?
								</span></label>
								<input type="number" name="stok" min="0" class="form-control" placeholder="Stock amount">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Price</label>
								<input required="" step=".01" min="1" class="form-control" type="number" name="urun_fiyat" placeholder="Price...">
							</div>
							<div class="col-md-4 form-group">
								<label>Discounted Amount</label>
								<input class="form-control" type="number" name="indirimli_fiyat" placeholder="Discounted Amount...">
							</div>
							<div class="col-md-4 form-group">
								<label>Discount end date</label>
								<input autocomplete="off" class="form-control tarihsaat" type="text" name="indirim_son_tarih" placeholder="Discount end date">
							</div>
						</div>
						
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Main Image</label>
								<input required="" class="form-control" type="file" name="urun_one_cikan" accept="image/*">
							</div>
							<div class="col-md-6 form-group">
								<label>Extra Images</label>
								<input class="form-control" type="file" name="urun_gorselleri[]" multiple="" accept="image/*">
							</div>
						</div>


						<?php if (isPre()): ?>
							<hr class="hr-text" data-content="For Premium's">
							<div class="form-row">
								<div class="col-md-4 form-group">
									<label>SEO Title <br><small>If you leave it blank it will be filled automatically.</small></label>
									<input class="form-control" type="text" name="urun_seo_baslik" placeholder="SEO title...">
								</div>
								<div class="col-md-4 form-group">
									<label>SEO Descrip. <br><small>If you leave it blank it will be filled automatically.</small></label>
									<input class="form-control" maxlength="160" type="text" name="urun_seo_baslik" placeholder="SEO description">
								</div>
							</div>
							<hr class="hr-text" data-content="For Premium's">
						<?php endif ?>
						
						<input type="hidden" name="urun_link">

						<div class="col-md-12 form-group">
							<label>Item details <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Premium members can use advanced editor (list, table creation, text view change etc.) in the item description section.">
								?
							</span></label>
							<textarea placeholder="Item details" name="urun_detay" id="urun_detay" class="form-control" style="min-height: 10rem;"></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="urunekle"><i class="fa fa-save"></i> Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>
<script>
	<?php if (ispre()): ?>
		editor_baslat("urun_detay");
	<?php endif ?>
</script>