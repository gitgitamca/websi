<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['siparisguncelle'])) {
	if ($genel->direktguncelle("siparis","sip_id",$_GET['s'],$_POST,"siparisguncelle","sip_id")) {
		git("siparisler","ok");
	} else {
		git("siparisler","no");
	}
}

$sip=$veri->siparis($_GET['s']);

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Sipariş Düzenle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<input type="hidden" name="sip_id" value="<?php echo $_GET['s'] ?>">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Sipariş Durumu</label>
								<select name="sip_durum" class="form-control">
									<?php foreach (sip_durum() as $key => $value): ?>
										<option <?php slc($sip->sip_durum,$key) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Sipariş Kullanıcısı</label>
								<select name="kul" class="form-control selectpicker" data-live-search="true">
									<?php foreach ($veri->kullanicilar() as $key => $value): ?>
										<option <?php slc($value->kul_id,$sip->kul) ?> value="<?php echo $value->kul_id ?>"><?php echo $veri->isim($value,false) ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Sipariş Tarihi</label>
								<input type="text" value="<?php echo $sip->tarih ?>" name="tarih" placeholder="Sipariş Tarihi" class="form-control tarihsaat">
							</div>
							<div class="col-md-6 form-group">
								<label>Sipariş Ücreti</label>
								<input type="number" step="any" value="<?php echo $sip->ucret ?>" name="ucret" placeholder="Sipariş Ücreti" class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Bakiye Çekim Durumu</label>
								<select name="cekim" class="form-control">
									<?php foreach (cekim_durum() as $key => $value): ?>
										<option <?php slc($sip->cekim,$key) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label>Bakiye Çekim Tarihi</label>
								<input type="text" value="<?php echo $sip->cekim_tarih ?>" name="cekim_tarih" placeholder="Bakiye Çekim Tarihi" class="form-control tarihsaat">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Alınan Komisyon</label>
								<input type="number" step="any" value="<?php echo $sip->komisyon_alinan ?>" name="komisyon_alinan" placeholder="Alınan Komisyon" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Kupon</label>
								<input type="text" value="<?php echo $sip->kupon ?>" name="kupon" placeholder="Alınan Komisyon" class="form-control">
							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="siparisguncelle">Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>