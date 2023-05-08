<?php 
include 'header.php' ;
yetkikontrol("e");
$islem = $crud;
if (isset($_POST['mailgonder'])) {
	if ($islem->mailgonder($_POST)) {
		header("location:index.php?durum=ok");
		exit;
	} else {
		header("location:index.php?durum=no");
		exit;
	}
}

if (isset($_POST['toplumailgonder'])) {
	if ($islem->toplumailgonder($_POST)) {
		header("location:index.php?durum=ok");
		exit;
	} else {
		header("location:index.php?durum=no");
		exit;
	}
}
?>
<!-- Begin Page Content -->
<?php 
if (isset($_POST['kul_mail_gonder'])) {?>
	<div class="container">
		<div class="card card-primary br-1 shadow mb-4">
			<div class="card-header py-3">
				<h5 class="m-0 font-weight-bold text-primary">Mail Gönder</h5>
			</div>
			<div class="card-body">
				<form action="" method="POST" class="needs-validation" novalidate="">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Mail Başlığı</label>
							<input type="text" required class="form-control" name="mail_baslik" placeholder="Mail Başlığı">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>İsminiz</label>
							<input type="text" required class="form-control" name="mail_isim" placeholder="İsminizi Girin">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Mail Adresi</label>
							<input type="text" required class="form-control" name="mail_adres" value="<?php echo $_POST['kul_mail'] ?>">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label>Mail İçeriği</label>
							<textarea class="form-control" required id="editor" name="mail_detay" placeholder="Mail Detayı" ></textarea>
						</div>
					</div>
					
					<button type="submit" name="mailgonder" class="btn btn-primary">Gönder</button>
				</form>
				<span id="sonuc"></span>
			</div>
		</div>
	</div>
<?php } elseif (@$_GET['mail']=="normal") { ?>
	<div class="container">
		<div class="card card-primary br-1 shadow mb-4">
			<div class="card-header py-3">
				<h5 class="m-0 font-weight-bold text-primary">Mail Gönder</h5>
			</div>
			<div class="card-body">
				<form action="" method="POST" class="needs-validation" novalidate="">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Mail Başlığı</label>
							<input type="text" required class="form-control" name="mail_baslik" placeholder="Mail Başlığı">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>İsim</label>
							<input type="text" required class="form-control" name="mail_isim" placeholder="Alıcının İsmi">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Mail Adresi</label>
							<input type="text" required class="form-control" name="mail_adres" placeholder="Mail Adresi">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label>Mail İçeriği</label>
							<textarea class="form-control" required id="editor" name="mail_detay" placeholder="Mail Detayı" ></textarea>
						</div>
					</div>
					<div class="text-center">
						<button type="submit" name="mailgonder" class="btn btn-primary btn-lg">Gönder</button>
					</div>
					
				</form>
				<span id="sonuc"></span>
			</div>
		</div>
	</div>

<?php } else { ?>
	<div class="container d-flex justify-content-center">
		<div class="col-md-10 justify-content-center">				
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h5 class="m-0 font-weight-bold text-primary">Mail Gönder</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Mail Başlığı</label>
								<input type="text" required class="form-control" name="mail_baslik" placeholder="Mail Başlığı">
							</div>
						</div>
						<input type="hidden" name="kullanicimail" value="kullanicimail">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Kişiler</label>
								<select multiple="" id="mail_kisi_adres" name="mail_kisi_adres[]" class="form-control selectpicker" data-live-search="true" data-actions-box="true" title="Mail Gönderilecek Kişileri Seçin">
									<?php 
									$kullanicisor=$db->prepare("SELECT * FROM kullanicilar");
									$kullanicisor->execute();
									while ($kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC)) { ?>
										<option value="<?php echo $kullanicicek['kul_mail'] ?>"><?php echo $kullanicicek['kul_isim']." ".$kullanicicek['kul_soyisim'] ?></option>
									<?php }?>
								</select>
							</div>
						</div>						
						<div class="form-row">
							<div class="form-group col-md-12">
								<label>Mail İçeriği</label>
								<textarea class="form-control" required id="editor" name="mail_detay" placeholder="Mail Detayı" ></textarea>
							</div>
						</div>
						<div class="text-center">
							<input type="hidden" name="islem" value="toplumailgonder">
							<button type="submit" name="toplumailgonder" class="btn btn-primary btn-lg">Gönder</button>
						</div>
						
					</form>
					<span id="sonuc"></span>
				</div>
			</div>
		</div>
	</div>
<?php } ?>
<?php include 'footer.php' ?>


