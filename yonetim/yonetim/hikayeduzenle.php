<?php require_once 'header.php';
yetkikontrol("e");
if (isset($_POST['hikayeguncelle'])) {

	if ($genel->hikayeguncelle($_POST,$_FILES)) {
		git("hikayeler","ok");
	} else {
		git("hikayeler","no");
	}
}

$hik=$veri->tek_hikaye($_POST['hik_id']);

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Hikaye Düzenle</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<input type="hidden" name="hik_id" value="<?php echo $hik->hik_id ?>">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Ürün <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Ürün seçmek zorunda değilsiniz, eğer ürün dışında bir şey göstermek istiyorsanız kapak görseli yükleyebilirsiniz.">
									?
								</span></label>
								<select name="urun" class="form-control selectpicker" data-live-search="true">
									<option value="0">-- ÜRÜN DEĞİL --</option>
									<?php foreach ($urun->tum_urunler() as $key => $value): ?>
										<option <?php slc($hik->urun, $value->urun_id) ?> value="<?php echo $value->urun_id ?>"><?php echo $value->urun_baslik ?> - #<?php echo $value->magaza_isim ?></option>
									<?php endforeach ?>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label>Hikaye Türü <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Eğer ürün seçerseniz ürünün kapak görseli gösterilir ve tıklanınca ürün detay sayfasına gider.">
									?
								</span></label>
								<select required="" name="tur" class="form-control">
									<option <?php slc($hik->tur,0) ?> value="0">Tıklanınca Girilen Linke Gitsin</option>
									<option <?php slc($hik->tur,1) ?> value="1">Tıklanınca Hikaye Görsellerini Göstersin</option>
								</select>
							</div>

							<div class="col-md-6 form-group">
								<label>Kapak Görseli <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Eğer ürün seçerseniz buraya yüklediğiniz resim kullanılmaz. Ürün kapak görseli kullanılır">
									?
								</span></label>
								<input type="file" name="kapak_resim" class="form-control">
								<?php if ($hik->urun==0): ?>
									<img src="<?php echo hikaye.$hik->kapak_resim ?>" style="max-height: 200px; width: auto;">
								<?php endif ?>
							</div>
							<div class="col-md-6 form-group">
								<div class="resimalani form-row justify-content-center">
									<div class="table-responsive col-md-12">
										<table id="resimtablosu" class="table table-bordered mt-2" width="100%" cellspacing="0">
											<thead>
												<tr> 
													<th>Resim</th>
													<th>Link</th>
													<th>İşlem</th>
												</tr>
											</thead>
											<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
											<tbody id="hikaye_resim_tablosu">
												<?php 

												foreach ($veri->hikaye_resimler($hik->hik_id) as $key => $resimcek) {
													$dosyayolu=$resimcek->isim;
													$qwe=str_replace(".", "", $dosyayolu); ?>

													<tr style="border-left: 7px solid gray;" id="hikaye_icerik_resim_siralama-<?php echo $resimcek->dosya_id ?>" class="<?php echo $qwe; ?>">
														<td class="text-center">
															<a class="acilanresim" href="<?php echo hikaye.$dosyayolu ?>" target="_blank" title="<?php echo $dosyayolu ?>">
																<?php 
																$gorseller = array("jpg", "png", "jpeg","gif","webp","bmp");
																if (in_array($resimcek->uzanti,$gorseller)) { ?>
																	<img style="max-height: 100px; width: auto;" src="<?php echo hikaye.$dosyayolu ?>" class="img-fluid">
																<?php } else { ?>
																	<span class="badge badge-primary"><?php echo $dosyayolu ?> <br> <small>Dosya Önizlemesi Yok</small></span>
																<?php } ?>                            
															</a>
														</td>
														<td><?php echo $resimcek->link ?></td>
														<td> 
															<div class="d-flex justify-content-center">
																<a id="<?php echo $dosyayolu ?>" class="hikayeresimsilme">
																	<span class="btn btn-danger icon-split">
																		<i class="fas fa-trash"></i>
																	</span>
																</a>
																<a href="<?php echo hikaye.$dosyayolu ?>" target="_blank" download>
																	<span class="ml-2 btn btn-success icon-split">
																		<i class="fas fa-download"></i>
																	</span>
																</a>
															</div>
														</td>
													</tr>

												<?php }
												?>
											</tbody>
											<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi çıkış-->
										</table>
									</div>
								</div>
							</div>

							<div class="col-md-6 form-group">
								<label>Tıklanınca Gidilecek Link</label>
								<input type="url" value="<?php echo $hik->link ?>" name="link" placeholder="Tıklanınca Gidilecek Link" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Durum</label>
								<select name="durum" class="form-control">
									<option <?php slc($hik->durum,1) ?> value="1">Aktif</option>
									<option <?php slc($hik->durum,0) ?> value="0">Pasif</option>
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
								<?php foreach ($veri->hikaye_resimler($hik->hik_id) as $key => $value): ?>

								<?php endforeach ?>
							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="hikayeguncelle"><i class="fa fa-save"></i> Kaydet</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>
<script src="<?php echo panel ?>/assets/modules/jquery-ui/jquery-ui.min.js"></script>
<!-- JS Libraies -->
<script src="<?php echo panel ?>/assets/modules/izitoast/js/iziToast.min.js"></script>

<script type="text/javascript">
	var eklenensayi=0;
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
<!-- Page Specific JS File -->
<script src="<?php echo panel ?>/assets/js/page/modules-toastr.js"></script>
<script>
	$("#hikaye_resim_tablosu").sortable({
		update: function (event, ui) {
			var postdata=$(this).sortable('serialize')
			$.ajax({
				url: '<?php echo ajax ?>',
				type: 'POST',
				data: postdata,
				success:function(donenveri){   
					sonuc=JSON.parse(donenveri);        
					if (sonuc.sonuc=="ok") {
						iziToast.success({
							title: 'İşlem Başarılı!',
							message: 'Sıralama Başarıyla Değiştirildi',
							position: 'topRight' 
						})
					} else {
						iziToast.error({
							title: 'İşlem Başarısız!',
							message: 'Hata: '+sonuc.hata,
							position: 'topRight' 
						})
					}
				}
			});
		}
	});


	$(".hikayeresimsilme").click(function(resimyolu) {
		resimyolu=this.id;
		$.ajax({
			url: '<?php echo ajax ?>',
			type: 'POST',
			data: "dosya_yolu="+resimyolu+"&hikayeresimsilme=hikayeresimsilme",
			success:function(donenveri){
				sonuc=JSON.parse(donenveri);
				if (sonuc.sonuc=="ok") {
					id="."+sonuc.dosya;
					$(id).closest("tr").remove();

					Swal.fire({
						type: 'success',
						title: 'İşlem Başarılı',
						text: 'Silme İşlemi Başarılı!',
						showConfirmButton: false,
						timer: 2000
					})
				}
			}
		});
	});
</script>