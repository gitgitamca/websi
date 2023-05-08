<?php 
include'header.php';


?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Mağaza Siparişleri</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="siparistablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>Sipariş ID</th>
									<th>Mağaza</th>
									<th>Ücret</th>
									<th>İşlem Tarihi</th>
									<th>Premium Başlangıç Tarihi</th>
									<th>Premium Bitiş Tarihi</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->magaza_siparisler() as $key => $var): ?>
									<tr>
										<td><?php echo $var->sip_id ?></td>
										<td><?php echo $var->sip_kod ?></td>
										<td><?php echo $veri->isim($var) ?></td>
										<td><?php echo para_yazi($var->ucret).para() ?></td>
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
		initComplete: filtre([2,3]),
		dom: dtDom,
		buttons: exBtn(7)
	});
</script>
