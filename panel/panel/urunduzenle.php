<?php require_once 'header.php'; 
saticimi("e");
$islem = new urun($db);

urun_kontrol($_POST['urun_id']);

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
					<h5 class="font-weight-bold text-primary">Edit item</h5>
				</div>
				<div class="card-body p-1">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Item title</label>
								<input required="" class="form-control" value="<?php echo $urun['urun_baslik'] ?>" type="text" name="urun_baslik" placeholder="Item Title...">
							</div>
							<div class="col-md-4 form-group">
								<label>Category</label>
								<select required="" name="kat" class="form-control selectpicker" data-live-search="true">
									<?php 
									$k=$veri->kat_agac($veri->tum_katlar());
									$veri->kat_select($k,0,$urun['kat']); ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Delivery Type</label>
								<select onchange="teslim_tur_islem()" id="teslim_tur" required="" name="teslim_tur" class="form-control">
									<?php foreach (teslim_tur() as $key => $value): ?>
										<option <?php slc($key, $urun['teslim_tur']) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-4 form-group" id="stok_sayisi" style="display: none;">
								<label>Stock amount <span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="">
									?
								</span></label>
								<input type="number" name="stok" value="<?php echo $urun['stok'] ?>" min="0" class="form-control">
							</div>
						</div>

						<input type="hidden" name="urun_one_cikan_resim" value="<?php echo $urun['urun_one_cikan'] ?>">
						<input type="hidden" name="urun_id" value="<?php echo $_POST['urun_id'] ?>">

						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Price</label>
								<input required="" step=".01" min="1" class="form-control" type="number" value="<?php echo $urun['urun_fiyat'] ?>" name="urun_fiyat" placeholder="Price...">
							</div>
							<div class="col-md-4 form-group">
								<label>Discounted Amount</label>
								<input class="form-control" type="number" value="<?php echo $urun['indirimli_fiyat'] ?>" name="indirimli_fiyat" placeholder="Optional">
							</div>
							<div class="col-md-4 form-group">
								<label>Discount end date</label>
								<input autocomplete="off" class="form-control tarihsaat" type="text" value="<?php echo $urun['indirim_son_tarih'] ?>" name="indirim_son_tarih" placeholder="Discount end dat">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 form-group">
								<label>Item Status</label>
								<select disabled=""  class="form-control">
									<?php foreach (urun_durum() as $key => $value): ?>
										<option <?php slc($urun['urun_durum'], $key) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="col-md-4 form-group">
								<label>Main Image</label>
								<input class="form-control" type="file" name="urun_one_cikan" accept="image/*">
							</div>
							<div class="col-md-4 form-group">
								<label>Extra Images</label>
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
													<th>File-image</th>
													<th>Process</th>
												</tr>
											</thead>
											<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
											<tbody>
												<?php 
												$say=0;
												$resimsor=$db->prepare("SELECT * FROM urun_galeri WHERE urun={$_POST['urun_id']}");
												$resimsor->execute();
												while ($resimcek=$resimsor->fetch(PDO::FETCH_ASSOC)) { 
													$dosyayolu=$resimcek['isim'];
													$say++?>
													<?php $qwe=str_replace(".", "", $dosyayolu) ?>
													<tr id="<?php echo $qwe; ?>">
														<td class="text-center">
															<a class="acilanresim" href="<?php echo urun_galeri.$dosyayolu ?>" target="_blank" title="<?php echo $dosyayolu ?>">
																<?php 
																$gorseller = array("jpg", "png", "jpeg","gif","webp","bmp");
																if (in_array($resimcek['uzanti'],$gorseller)) { ?>
																	<img style="max-height: 100px; width: auto;" src="<?php echo urun_galeri.$dosyayolu ?>" class="img-fluid">
																<?php } else { ?>
																	<!--  <h6 class="badge badge-primary">Dosya Önizlemesi Yok</h6><br> -->
																	<span class="badge badge-primary"><?php echo $dosyayolu ?> <br> <small>No thumbnail</small></span>
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
						
						<?php if (isPre()): ?>
							<hr class="hr-text" data-content="For Premium's">
							<div class="form-row">
								<div class="col-md-4 form-group">
									<label>SEO Title <br><small>If you leave it blank it will be filled automatically.</small></label>
									<input class="form-control" value="<?php echo $urun['urun_seo_baslik'] ?>" type="text" name="urun_seo_baslik" placeholder="SEO title...">
								</div>
								<div class="col-md-4 form-group">
									<label>SEO Descr. <br><small>If you leave it blank it will be filled automatically.</small></label>
									<input class="form-control" maxlength="160" value="<?php echo $urun['urun_seo_aciklama'] ?>" type="text" name="urun_seo_aciklama" placeholder="SEO description">
								</div>
							</div>
							<hr class="hr-text" data-content="For Premium's">
						<?php endif ?>
						
						
						<div class="col-md-12 form-group mt-4">
							<label>Item Details</label>
							<textarea name="urun_detay" id="urun_detay" class="form-control" style="min-height: 10rem;"><?php echo $urun['urun_detay'] ?></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="urunguncelle"><i class="fa fa-save"></i> Save</button>
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

	$(".urungorselsilme").click(function(resimyolu) {
		resimyolu=this.id;
		$.ajax({
			url: 'classes/ajax.php',
			type: 'POST',
			data: "dosya_yolu="+resimyolu+"&urungorselsilme=urungorselsilme",
			success:function(donenveri){
				sonuc=JSON.parse(donenveri);
				if (sonuc.sonuc=="ok") {
					id="#"+sonuc.dosya;
					$(id).closest("tr").remove();

					Swal.fire({
						type: 'success',
						title: 'Success!',
						text: 'Deletion Successfull!',
						showConfirmButton: false,
						timer: 2000
					})
				}
			}
		});
	});

</script>