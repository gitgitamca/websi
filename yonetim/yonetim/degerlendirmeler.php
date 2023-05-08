<?php 
include'header.php';

if (isset($_POST['yildiz_silme'])) {
	if ($crud->silme("yildiz","yildiz_id",$_POST['yildiz_id'])) {
		git("degerlendirmeler","ok");
	} else {
		git("degerlendirmeler","no");
	}
}

if (isset($_GET['yayinlama'])) {
	$crud->tek("UPDATE yildiz SET durum={$_GET['durum']} WHERE yildiz_id={$_GET['yildiz_id']}");
	git("degerlendirmeler","ok");
}



?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Değerlendirmeler</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>Kullanıcı</th>
									<th>Ürün</th>
									<th>Yıldız</th>
									<th>Yorum</th>
									<th>Durum</th>
									<th>Tarih</th>
									<th>Onay</th>
									<th>İşlem</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->tum_degerlendirmeler() as $key => $var): ?>
									<tr>
										<td><?php echo $var->yildiz_id ?></td>
										<td><?php echo $veri->isim($veri->kul($var->kullanici),false) ?></td>
										<td><a target="_blank" class="btn-link badge badge-primary" href="<?php echo $veri->ul($var) ?>"><?php echo $var->urun_baslik ?></a></td>
										<td><div class="yildiz" data-yildiz="<?php echo $var->deger; ?>"></div></td>
										<td><?php echo $var->icerik ?></td>
										<td><?php echo aktif_pasif()[$var->durum] ?></td>
										<td><?php echo $var->yildiz_tarih ?></td>
										<td>
											<span class="text-center">

												<?php if ($var->durum==1): ?>
													<a class="ml-1" href="degerlendirmeler?yayinlama=true&yildiz_id=<?php echo $var->yildiz_id ?>&durum=0">
														<button type="button" class="btn btn-warning btn-sm icon-split" value="<?php echo $var->yildiz_id ?>">
															<span class="icon mr-1">
																<i class="fas fa-times"></i>
															</span>
														</button>
													</a>
													<?php else: ?>
														<a href="degerlendirmeler?yayinlama=true&yildiz_id=<?php echo $var->yildiz_id ?>&durum=1">
															<button type="button" class="btn btn-success btn-sm icon-split" value="<?php echo $var->yildiz_id ?>">
																<span class="icon mr-1">
																	<i class="fas fa-check"></i>
																</span>
															</button>
														</a>
													<?php endif ?>
												</span>
											</td>
											<td>
												<div class="d-flex justify-content-center">
													<form action="../degerlendirmeduzenle" method="POST">
														<input type="hidden" name="yildiz_id" value="<?php echo $var->yildiz_id ?>">
														
													</form>

													<a target="_blank" href="<?php echo "degerlendirmeduzenle?d=".$var->yildiz_id ?>" type="button" class="btn btn-success btn-sm icon-split"><i class="fas fa-edit"></i></a>

													<form class="mx-1" action="" method="POST">
														<input type="hidden" name="yildiz_id" value="<?php echo $var->yildiz_id ?>">
														<button type="submit" name="yildiz_silme" class="btn btn-danger btn-sm icon-split silmebutonu">
															<span class="icon text-white-60">
																<i class="fas fa-trash"></i>
															</span>
														</button>
													</form>	
												</div>
											</td>
										</tr>
									<?php endforeach ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<?php require_once 'footer.php' ?>


	<script>
		$('#taleptablosu').DataTable({ 
			initComplete: filtre([1,2,5]),
			dom: dtDom,
			buttons: exBtn(7)
		});
	</script>