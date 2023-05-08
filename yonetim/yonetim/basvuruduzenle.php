<?php 
include 'header.php';

$bas=$veri->tek("SELECT * FROM basvuru INNER JOIN kullanicilar ON kullanicilar.kul_id=basvuru.kul WHERE basvuru_id={$_GET['b']}",true);


if (isset($_POST['basvuruguncelle'])) {
	if ($crud->direktguncelle("basvuru","basvuru_id",$_GET['b'], $_POST,"basvuruguncelle")) {
		if ($_POST['durum']==2) {
			$crud->direktguncelle("kullanicilar", "kul_id", $bas->kul,[
				'satici' => 1,
				'satici_tarih' => date("Y-m-d H:i:s"),
				'kul_link' => linkolustur("kullanicilar", "kul_link", $bas->magaza_isim)
			]);
		}

		git("basvurular","ok");
	} else {
		git("basvurular","no");
	}
}

?>

<div class="container-fluid mt-4">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Bannerler</h6>
				</div>
				<div class="card-body">
					<form action="" method="POST" accept-charset="utf-8">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Mağaza İsmi</label>
								<input type="text" value="<?php echo $bas->magaza_isim ?>" class="form-control" disabled="">
							</div>
							<div class="col-md-4 form-group">
								<label>Başvuru Tarihi</label>
								<input type="text" value="<?php echo $bas->basvuru_tarih ?>" class="form-control" disabled="">
							</div>
							<div class="col-md-4 form-group">
								<label>Başvuru Durumu</label>
								<select name="durum" class="form-control form-group">
									<option <?php slc($bas->durum, 0) ?> value="0">Reddedildi</option>
									<option <?php slc($bas->durum, 1) ?> value="1">Beklemede</option>
									<option <?php slc($bas->durum, 2) ?> value="2">Onaylandı</option>
								</select>
							</div>
						</div>		
						<div class="form-row">
							<div class="col-md-12 form-group">
								<label>Başvuru İçeriği</label>
								<textarea name="icerik" class="form-control" style="min-height: 10rem"><?php echo $bas->icerik ?></textarea>
							</div>
						</div>	
						<br>
						<hr>
						<br>
						<div class="form-row">
							<div class="col-md-12 form-group">
								<label>Başvuru Hakkında Cevabınız</label>
								<textarea name="geri_donus" class="form-control" style="min-height: 10rem"><?php echo $bas->geri_donus ?></textarea>
							</div>
						</div>	
						<div class="text-center">
							<button name="basvuruguncelle" type="submit" class="btn btn-primary btn-lg"><i class="fa fa-save"></i> Kaydet</button>
						</div>	
					</form>
				</div>
			</div>
		</div>
	</div>
</div>



<?php include 'footer.php' ?>