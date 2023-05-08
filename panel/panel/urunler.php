<?php 
include'header.php';

if (isset($_POST['urunsilme'])) {
	urun_kontrol($_POST['urun_id']);
	if ($crud->silme("urun","urun_id",$_POST['urun_id'])) {
		header("location:urunler?durum=ok");
		exit;
	} else {
		header("location:urunler?durum=no");
		exit;
	}
}

if (isset($_POST['manset'])) {
	urun_kontrol($_POST['urun_id']);
	if (isPre()) {
		$crud->tek("UPDATE urun SET manset_durum=0 WHERE satici={$_SESSION['kul_id']}");
		$crud->direktguncelle("urun","urun_id",$_POST['urun_id'],[
			'manset_durum' => 1,
			'manset_sira' => 9999
		]);
	}
}






?>


<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">ITEMS</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php require_once 'disaaktar.php' ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="uruntablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>ID</th>
						<th>NAMEE</th>
						<th>PRICE</th>
						<th>IMAGE</th>
						<th>STOCK</th>
						<th>SELLED</th>
						<th>PROFIT</th>
						<th>FEEDBACK</th>
						<th>STATUS</th>
						<th>DELIVERY TYPE</th>
						<th>ACTIONS</th>
					</tr>
				</thead>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
				<tbody>
					<?php 
					$say=0;
					foreach ($urun->urunler() as $var) { $say++?>
						<tr>
							<td><?php echo $var->urun_id; ?></td>
							<td><a target="_blank" class="btn-link badge badge-primary" href="<?php echo $veri->ul($var) ?>"><?php echo $var->urun_baslik ?></a></td>
							<td><?php echo $var->urun_fiyat; ?> $</td>
							<td><img class="img-fluid" style="max-width: 50px" src="<?php echo kucuk_resim.$var->urun_one_cikan; ?>" alt=""></td>
							<td class="text-center">
								<span class="badge badge-success">
									<?php echo $urun->stok_kontrol($var);?>
								</span>
							</td>
							<td class="text-center">
								<span class="badge badge-danger">
									<?php echo $urun->basarili_siparis($var->urun_id);?>
								</span>
							</td>
							<td class="text-center">
								<span class="badge badge-primary">
									<?php echo $rapor->tek_urun_kazanc($var->urun_id).para();?>
								</span>
							</td>
							<td class="text-center">
								<div class="yildiz" data-yildiz="<?php echo $veri->yildiz($var->urun_id); ?>"></div>
							</td>
							<td class="text-center"><?php echo urun_durum()[$var->urun_durum] ?></td>
							<td class="text-center"><?php echo teslim_tur()[$var->teslim_tur] ?></td>
							<td>
								<div class="d-flex justify-content-center">
									<form action="urunduzenle.php" method="POST">
										<input type="hidden" name="urun_id" value="<?php echo $var->urun_id ?>">
										<button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
											<span class="icon text-white-60">
												<i class="fas fa-edit"></i>
											</span>
										</button>
									</form>

									<form class="mx-1" action="" method="POST">
										<input type="hidden" name="urun_id" value="<?php echo $var->urun_id ?>">
										<button type="submit" name="urunsilme" class="btn btn-danger btn-sm icon-split silmebutonu">
											<span class="icon text-white-60">
												<i class="fas fa-trash"></i>
											</span>
										</button>
									</form>	

									<a target="_blank" href="urunrapor?urun=<?php echo $var->urun_id ?>" type="button" class="btn btn-info btn-sm"><i class="fas fa-chart-area"></i></a>

									<?php if (isPre() AND $var->manset_durum==0): ?>
										<form action="" method="POST">
											<input type="hidden" name="urun_id" value="<?php echo $var->urun_id ?>">
											<button type="submit" name="manset" class="btn btn-primary btn-sm icon-split ml-1">
												<span class="icon text-white-60">
													<i class="fas fa-crown"></i>
												</span>
											</button>
										</form>	
									<?php endif ?>
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

<?php require 'footer.php'; ?>


<script>
	var dataTables = $('#uruntablosu').DataTable({ 
		initComplete: filtre([2,8,9]),
		responsive: true,
		dom: dtDom,
		buttons: exBtn(10)
	});
</script>
