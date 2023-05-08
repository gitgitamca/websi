<?php 
include'header.php';
?>

<!-- DataTales Giriş -->
<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Orders</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php require_once 'disaaktar.php'; ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="hesaptablosu" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>#</th>
						<th>Item</th>
						<th>User name</th>
						<th>Price</th>
						<th>Profit</th>
						<th>Fees (%)</th>
						<th>Quantity</th>
						<th>Date</th>
						<th>Status</th>
						<th>More</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($veri->satici_siparisler() as $key => $var): ?>
						<tr>
							<td><?php echo $var->sip_id ?></td>
							<td><?php echo $var->urun_baslik ?></td>
							<td><?php echo $veri->isim($var,false); ?></td>
							<td><?php echo para_yazi($var->ucret)." $" ?></td>
							<td><?php echo para_yazi($var->ucret-$var->komisyon_alinan)." $" ?></td>
							<td><?php echo para_yazi($var->komisyon_alinan,2)." $" ?></td>
							<td><?php echo $var->adet ?></td>
							<td><?php echo $var->tarih ?></td>
							<td><?php echo sip_durum()[$var->sip_durum] ?></td>
							<td>
								<div class="dropdown">
									<a class="btn btn-primary dropdown-toggle" href="#" role="button" id="siparis_islem_dropdown" data-toggle="dropdown" aria-expanded="false">
										<i class="fa fa-arrow-down"></i> More
									</a>

									<div class="dropdown-menu" aria-labelledby="siparis_islem_dropdown">
										<a class="dropdown-item" href="siparis?sip=<?php echo $var->sip_id ?>">Order - account infos</a>
										<a class="dropdown-item" href="destekbiletiolustur?sip=<?php echo $var->sip_id ?>">Message to buyer</a>
									</div>
								</div> 
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script>
	
	var dataTables = $('#hesaptablosu').DataTable({
		initComplete: filtre([1,2]),
		responsive: true,
		dom: dtDom,
		buttons: exBtn(9)
	});
</script>
