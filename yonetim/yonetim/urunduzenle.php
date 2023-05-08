<?php require_once 'header.php'; 

$islem = new urun($db);

if (isset($_POST['urunguncelle'])) {
	if ($islem->urunguncelle($_POST,$_FILES)) {
		git("urunler.php","ok");
	} else {
		git("urunler.php","no");
	}
}
$urun=$islem->tekil("urun","urun_id",$_POST['urun_id']);

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Ürün Düzenle</h5>
				</div>
				<div class="card-body p-1">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün Başlığı</label>
								<input required="" class="form-control" value="<?php echo $urun['urun_baslik'] ?>" type="text" name="urun_baslik" placeholder="Ürün Başlığını Bu Alana Girin">
							</div>
							<div class="col-md-4 form-group">
								<label>Kategori</label>
								<select required="" name="kat" class="form-control selectpicker" data-live-search="true">
									<?php 
									$k=$veri->kat_agac($veri->tum_katlar());
									$veri->kat_select($k,0,$urun['kat']); ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Ürün Teslim Türü</label>
								<select onchange="teslim_tur_islem()" id="teslim_tur" required="" name="teslim_tur" class="form-control">
									<?php foreach (teslim_tur() as $key => $value): ?>
										<option <?php slc($key, $urun['teslim_tur']) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-4 form-group" id="stok_sayisi" style="display: none;">
								<label>Stok Sayısı <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Ürün teslim türünü 'Hesaplar Arasından Rastgele' olarak seçerseniz stok takibi eklediğinizi hesap sayısına göre yapılır bu alana göre değil. 'Fiziksel Ürün - Manuel İletilecek' seçeneklerini seçerseniz aşağıya girdiğiniz değer baz alınır.">
									?
								</span></label>
								<input type="number" name="stok" value="<?php echo $urun['stok'] ?>" min="0" class="form-control">
							</div>
						</div>

						<input type="hidden" name="urun_one_cikan_resim" value="<?php echo $urun['urun_one_cikan'] ?>">
						<input type="hidden" name="urun_id" value="<?php echo $_POST['urun_id'] ?>">

						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün Fiyatı</label>
								<input required="" step=".01" min="1" class="form-control" type="number" value="<?php echo $urun['urun_fiyat'] ?>" name="urun_fiyat" placeholder="Ürün Fiyatı">
							</div>
							<div class="col-md-4 form-group">
								<label>İndirimli Fiyat</label>
								<input class="form-control" type="number" value="<?php echo $urun['indirimli_fiyat'] ?>" name="indirimli_fiyat" placeholder="İndirimli Fiyat">
							</div>
							<div class="col-md-4 form-group">
								<label>İndirim Bitiş Tarihi</label>
								<input autocomplete="off" class="form-control tarihsaat" type="text" value="<?php echo $urun['indirim_son_tarih'] ?>" name="indirim_son_tarih" placeholder="İndirim Bitiş Tarihi">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün Durumu</label>
								<select name="urun_durum" class="form-control">
									<?php foreach (urun_durum() as $key => $value): ?>
										<option <?php slc($urun['urun_durum'], $key) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Ürün Kapak Resmi</label>
								<input class="form-control" type="file" name="urun_one_cikan" accept="image/*">
							</div>
							<div class="col-md-4 form-group">
								<label>Ürün Resimleri</label>
								<input class="form-control" type="file" name="urun_gorselleri[]" multiple="" accept="image/*">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<?php if (strlen($urun['urun_one_cikan'])>3): ?>
									<img src="<?php echo orta_resim.$urun['urun_one_cikan'] ?>" style="max-width: 200px;">
								<?php endif ?>
							</div>

							<div class="col-md-6 form-group">
								<div class="resimalani form-row justify-content-center">
									<div class="table-responsive col-md-12">
										<table id="resimtablosu" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
											<thead>
												<tr> 
													<th>Dosya-Resim</th>
													<th>İşlem</th>
												</tr>
											</thead>
											<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
											<tbody id="urun_galeri_tablosu">
												<?php 
												$say=0;
												$resimsor=$db->prepare("SELECT * FROM urun_galeri WHERE urun={$_POST['urun_id']} ORDER BY sira ASC");
												$resimsor->execute();
												while ($resimcek=$resimsor->fetch(PDO::FETCH_ASSOC)) { 
													$dosyayolu=$resimcek['isim'];
													$say++?>
													<?php $qwe=str_replace(".", "", $dosyayolu) ?>
													<tr style="border-left: 7px solid gray;" id="urun_icerik_resim_siralama-<?php echo $resimcek['dosya_id'] ?>"  class="<?php echo $qwe; ?>">
														<td class="text-center">
															<a class="acilanresim" href="<?php echo urun_galeri.$dosyayolu ?>" target="_blank" title="<?php echo $dosyayolu ?>">
																<?php 
																$gorseller = array("jpg", "png", "jpeg","gif","webp","bmp");
																if (in_array($resimcek['uzanti'],$gorseller)) { ?>
																	<img style="max-height: 100px; width: auto;" src="<?php echo urun_galeri.$dosyayolu ?>" class="img-fluid">
																<?php } else { ?>
																	<!--  <h6 class="badge badge-primary">Dosya Önizlemesi Yok</h6><br> -->
																	<span class="badge badge-primary"><?php echo $dosyayolu ?> <br> <small>Dosya Önizlemesi Yok</small></span>
																<?php } ?>                            
															</a>
														</td>
														<td> 
															<div class="d-flex justify-content-center">
																<a id="<?php echo $dosyayolu ?>" class="urungorselsilme">
																	<span class="btn btn-danger icon-split">
																		<span class="icon text-white-60">
																			<i class="fas fa-trash"></i>
																		</span>
																	</span>
																</a>
																<a href="<?php echo urun_galeri.$dosyayolu ?>" target="_blank" download>
																	<span class="ml-2 btn btn-success icon-split">
																		<span class="icon text-white-60">
																			<i class="fas fa-download"></i>
																		</span>
																	</span>
																</a>
															</div>
														</td>
													</tr>
												<?php } ?>
											</tbody>
											<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi çıkış-->
										</table>
									</div>
								</div>
							</div>

						</div>

						<?php if (isPre() OR yetkikontrol(h)): ?>
						<hr class="hr-text" data-content="Premium Özel">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Ürün SEO Başlığı <br><small>Boş bırakırsanız otomatik doldurulur</small></label>
								<input class="form-control" value="<?php echo $urun['urun_seo_baslik'] ?>" type="text" name="urun_seo_baslik" placeholder="Ürün SEO Başlığı">
							</div>
							<div class="col-md-4 form-group">
								<label>Ürün SEO Açıklaması <br><small>Boş bırakırsanız otomatik doldurulur</small></label>
								<input class="form-control" maxlength="160" value="<?php echo $urun['urun_seo_aciklama'] ?>" type="text" name="urun_seo_aciklama" placeholder="Ürün SEO Açıklaması">
							</div>
						</div>
						<hr class="hr-text" data-content="Premium Özel">
					<?php endif ?>



					<div class="col-md-12 form-group mt-4">
						<label>Ürün Detayı</label>
						<textarea name="urun_detay" id="urun_detay" class="form-control" style="min-height: 10rem;"><?php echo $urun['urun_detay'] ?></textarea>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary btn-lg" name="urunguncelle"><i class="fa fa-save"></i> Kaydet</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>

<?php require_once 'footer.php'; ?>
<script>
	editor_baslat("urun_detay");

	

	$(".urungorselsilme").click(function(resimyolu) {
		resimyolu=this.id;
		$.ajax({
			url: 'classes/ajax.php',
			type: 'POST',
			data: "dosya_yolu="+resimyolu+"&urungorselsilme=urungorselsilme",
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


<script>
$("#urun_galeri_tablosu").sortable({
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
</script>