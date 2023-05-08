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
					<h5 class="font-weight-bold text-primary">Ürün Ekle</h5>
				</div>
				<div class="card-body p-1">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün Başlığı</label>
								<input required="" class="form-control" type="text" name="urun_baslik" placeholder="Ürün Başlığını Bu Alana Girin">
							</div>
							<div class="col-md-4 form-group">
								<label>Kategori</label>
								<select required="" name="kat" class="form-control selectpicker" data-live-search="true">
									<?php $veri->kat_select($veri->kat_agac($veri->tum_katlar())) ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Ürün Teslim Türü</label>
								<select required="" name="teslim_tur" class="form-control">
									<?php foreach (teslim_tur() as $key => $value): ?>
										<option value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün Fiyatı</label>
								<input required="" step=".01" min="1" class="form-control" type="number" name="urun_fiyat" placeholder="Ürün Fiyatı">
							</div>
							<div class="col-md-4 form-group">
								<label>İndirimli Fiyat</label>
								<input class="form-control" type="number" name="indirimli_fiyat" placeholder="İndirimli Fiyat">
							</div>
							<div class="col-md-4 form-group">
								<label>İndirim Bitiş Tarihi</label>
								<input autocomplete="off" class="form-control tarihsaat" type="text" name="indirim_son_tarih" placeholder="İndirim Bitiş Tarihi">
							</div>
						</div>
						
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Ürün Kapak Görseli</label>
								<input required="" class="form-control" type="file" name="urun_one_cikan" accept="image/*">
							</div>
							<div class="col-md-6 form-group">
								<label>Ürün Görselleri</label>
								<input class="form-control" type="file" name="urun_gorselleri[]" multiple="" accept="image/*">
							</div>
						</div>
						
						<input type="hidden" name="urun_link">
						<div class="col-md-12 form-group">
							<label>Ürün Detayı</label>
							<textarea name="urun_detay" id="urun_detay" class="form-control" style="min-height: 10rem;"></textarea>
						</div>
						<button type="submit" class="btn btn-primary" name="urunekle">Kaydet</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>
<script>
	editor_baslat("urun_detay");
</script>