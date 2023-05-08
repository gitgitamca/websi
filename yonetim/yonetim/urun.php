<?php require_once 'header.php'; 
saticimi("e");
$urun=$crud->tekil("urun","urun_id",$_POST['urun_id']);
?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Ürün Detayı</h5>
				</div>
				<div class="card-body p-1">
					<form>
						<div class="col-md-9 form-group">
							<label>Ürün Başlığı</label>
							<input disabled="" class="form-control" value="<?php echo $urun['urun_baslik'] ?>" type="text" name="urun_baslik" placeholder="Ürün Başlığını Bu Alana Girin">
						</div>
						<div class="col-md-6 form-group">
							<label>Ürün Fiyatı <small>(Sadece Sayı)</small></label>
							<input disabled="" class="form-control" value="<?php echo $urun['urun_fiyat'] ?>" type="number" name="urun_fiyat" placeholder="Ürün Fiyatı">
						</div>
						<div class="col-md-6 form-group">
							<label>Ürün Resmi</label>
							<br><img class="img-fluid" src="../dosyalar/<?php echo $urun['urun_one_cikan'] ?>" style="max-width: 250px">
						</div>
						<div class="col-md-10 form-group">
							<label>Ürün Detayı</label>
							<textarea disabled="" name="urun_detay" id="urunguncellemealani" class="form-control" style="min-height: 10rem;"><?php echo $urun['urun_detay'] ?></textarea>
						</div>						
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>