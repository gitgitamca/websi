<?php 
include'header.php';


?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Store Orders</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="siparistablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>Order ID</th>
									<th>Store</th>
									<th>Fee</th>
									<th>Process Date</th>
									<th>Premium Start Date</th>
									<th>Premium End Date</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->magaza_siparisler() as $key => $var): ?>
									<tr>
										<td><?php echo $var->sip_id ?></td>
										<td><?php echo $var->sip_kod ?></td>
										<td><?php echo $veri->isim($var) ?></td>
										<td><?php echo para_yazi($var->ucret)." $" ?></td>
										<td><?php echo $var->eklenme_tarihi ?></td>
										<td><?php echo $var->odeme_tarih ?></td>
										<td><?php echo $var->bitis_tarih ?></td>
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
	var dataTables = $('#siparistablosu').DataTable({ 
		initComplete: filtre([0]),
		dom: dtDom,
		buttons: exBtn(5)
	});
</script>
