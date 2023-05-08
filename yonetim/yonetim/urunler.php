<?php 
include'header.php';

if (isset($_POST['urunsilme'])) {
	if ($crud->silme("urun","urun_id",$_POST['urun_id'])) {
		git("urunler","ok");
	} else {
		git("urunler","no");
	}
}
?>


<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Ürünler</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php include 'disaaktar.php'; ?>
		<button id="tum_urunler" type="button" class="btn btn-primary btn-sm mb-1 ml-2">Tüm Ürünler</button>
		<button id="onay_bekleyen" type="button" class="btn btn-danger btn-sm mb-1 ml-2"><i class="fa fa-hourglass-half"></i> Onay Bekleyen Ürünler</button>
		<button id="onaylanan_urunler" type="button" class="btn btn-success btn-sm mb-1 ml-2"><i class="fas fa-hourglass"></i> Onaylanan Ürünler</button>
		
		<div class="table-responsive">
			<table class="table table-bordered" id="uruntablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>ID</th>
						<th>Satıcı</th>
						<th>Ürün İsmi</th>
						<th>Ürün Fiyatı</th>
						<th>Ürün Görseli</th>
						<th>Stok Sayısı</th>
						<th>Satış Sayısı</th>
						<th>Toplam Ücret</th>
						<th>Değerlendirme</th>
						<th>Ürün Durumu</th>
						<th>Teslim Türü</th>
						<th>İşlemler</th>
					</tr>
				</thead>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
				<tbody>
					<?php 
					$say=0;
					foreach ($urun->tum_urunler() as $var) { $say++?>
						<tr>
							<td><?php echo $var->urun_id; ?></td>
							<td><?php echo $urun->isim($var); ?></td>
							<td><a target="_blank" class="btn-link badge badge-primary" href="<?php echo $veri->ul($var) ?>"><?php echo $var->urun_baslik ?></a></td>
							<td><?php echo $var->urun_fiyat; ?> $</td>
							<td><img class="img-fluid" style="max-width: 50px" src="<?php echo kucuk_resim.$var->urun_one_cikan; ?>" alt=""></td>
							<td class="text-center">
								<span class="badge badge-success">
									<?php echo $urun->stok_kontrol($var);?>
								</span>
							</td>
							<td class="text-center">
								<span class="badge badge-primary">
									<?php echo $urun->basarili_siparis($var->urun_id);?>
								</span>
							</td>
							<td class="text-center">
								<span class="badge badge-primary">
									<?php echo $rapor->tek_urun_kazanc($var->urun_id,true).para();?>
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
		initComplete: filtre([1,3,9,10]),
		dom: dtDom,
		buttons: exBtn(10)
	});

	$('#onay_bekleyen').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(9).search("Beklemede").draw();
	}); 
	$('#tum_urunler').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(9).search("").draw();
	}); 
	$('#onaylanan_urunler').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(9).search("Onaylandı").draw();
	}); 
</script>
