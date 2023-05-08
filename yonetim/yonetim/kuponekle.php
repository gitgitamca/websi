<?php require_once 'header.php';

if (isset($_POST['kuponekle'])) {
	if ($kupon->ekle()) {
		git("kuponlar","ok");
	} else {
		git("kuponlar","no");
	}
}

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Kupon Ekle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Mağaza</label>
								<select required name="satici" class="form-control selectpicker" data-live-search="true">
									<option value="0">-- TÜM MAĞAZALARDA GEÇERLİ --</option>
									<?php foreach ($veri->magazalar() as $key => $value): ?>
										<option value="<?php echo $value->kul_id ?>"><?php echo $veri->isim($value) ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Kupon Kodu <small>(Türkçe Karakter Ve Küçük Harf Kullanamazsınız)</small></label>
								<input required="" placeholder="Kupon Kodu" type="text" id="kupon_kodu" name="kupon_kodu" class="form-control" minlength="4" maxlength="15">
							</div>
							<div class="form-group col-md-6">
								<label>Kupon Durumu</label>
								<select required name="kupon_durum" class="form-control">
									<option value="1">Aktif</option>
									<option value="0">Pasif</option>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Son Kullanma Tarihi</label>
								<input required="" placeholder="Son Kullanma Tarihi" type="text" name="son_kullanim" class="form-control tarihsaat">
							</div>
							<div class="col-md-6 form-group">
								<label>İndirim Yüzdesi</label>
								<input required="" placeholder="İndirim Yüzdesi" type="number" min="1" max="99" name="yuzde" class="form-control" value="1">
							</div>
							<div class="col-md-6 form-group">
								<label>Kullanım Limiti <small>(Sınırsız kullanım hakkı olacaksa boş bırakabilirsiniz)</small></label>
								<input placeholder="Kullanım Limiti" type="number" name="adet" class="form-control">
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="kuponekle"><i class="fa fa-save"></i> Kaydet</button>
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