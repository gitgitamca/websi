<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['hikayeekle'])) {
	if ($genel->hikayeekle($_POST,$_FILES)) {
		git("hikayeler","ok");
	} else {
		git("hikayeler","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Hikaye Ekle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Ürün <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Ürün seçmek zorunda değilsiniz, eğer ürün dışında bir şey göstermek istiyorsanız kapak görseli yükleyebilirsiniz.">
									?
								</span></label>
								<select name="urun" class="form-control selectpicker" data-live-search="true">
									<option value="0">-- ÜRÜN DEĞİL --</option>
									<?php foreach ($urun->tum_urunler() as $key => $value): ?>
										<option value="<?php echo $value->urun_id ?>"><?php echo $value->urun_baslik ?> - #<?php echo $value->magaza_isim ?></option>
									<?php endforeach ?>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label>Hikaye Türü <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Eğer ürün seçerseniz ürünün kapak görseli gösterilir ve tıklanınca ürün detay sayfasına gider.">
									?
								</span></label>
								<select required="" name="tur" class="form-control">
									<option value="0">Tıklanınca Girilen Linke Gitsin</option>
									<option value="1">Tıklanınca Hikaye Görsellerini Göstersin</option>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label>Kapak Görseli <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Eğer ürün seçerseniz buraya yüklediğiniz resim kullanılmaz. Ürün kapak görseli kullanılır">
									?
								</span></label>
								<input type="file" name="kapak_resim" class="form-control">
							</div>

							<div class="col-md-6 form-group">
								<label>Tıklanınca Gidilecek Link</label>
								<input type="url" name="link" placeholder="Tıklanınca Gidilecek Link" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option value="1">Aktif</option>
									<option value="0">Pasif</option>
								</select>
							</div>
						</div>

						<div class="urungrup mb-5">
							<div class="baslikdiv text-center">
								<span class="grupbaslik"><b>Hikayede Gösterilecek Resimler</b></span>
							</div>

							<div class="form-row mb-4">
								<div class="col-md-6 text-left text-primary font-weight-bold">
									<label>Resimler Ve Gidilecek Linkler</label><button type="button" class="btn btn-primary btn-sm ml-3" onclick="ekbilgiekle()"><i class="fas fa-plus"></i> Ekle</button>
								</div>
							</div>

							<div id="ekbilgialani">

							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="hikayeekle"><i class="fa fa-save"></i> Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>

<script type="text/javascript">
	eklenensayi=0;
	function ekbilgiekle() {
		eklenensayi=eklenensayi+1;
		var icerik = "<div class='form-row' id='ekbilgisatir-"+eklenensayi+"'> <div class='col-md-5 form-group'> <input type='file' name='ekbilgiresim[]' id='ekbilgiresim-"+eklenensayi+"' class='form-control'> </div><div class='col-md-6 form-group'> <input type='text' name='ekbilgilink[]' id='ekbilgilink-"+eklenensayi+"' placeholder='Değer' class='form-control'> </div><div class='col-md-1'><button type='button' class='btn btn-danger' value='"+eklenensayi+"' onclick='ekbilgisil(this.value)'><i class='fas fa-trash'></i></button></div></div><hr id='ekbilgicizgi-"+eklenensayi+"' class='d-md-none d-lg-none'>";
		$("#ekbilgialani").append(icerik);
	}

	function ekbilgisil(deger) {
		var satirid="#ekbilgisatir-"+deger;
		var cizgiid="#ekbilgicizgi-"+deger;
		$(satirid).remove();
		$(cizgiid).remove();
	}
</script>