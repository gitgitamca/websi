<?php 
include'header.php';


?>

<div class="container-fluid">
	<div class="row">
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Bugünkü Yüklenen</h4>
					</div>
					<div class="card-body">						
						<?php echo $rapor->bugun_bakiye(); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Son 7 Günde Yüklenen</h4>
					</div>
					<div class="card-body">						
						<?php echo $rapor->buhafta_bakiye(); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Bu Ay Yüklenen</h4>
					</div>
					<div class="card-body">						
						<?php echo $rapor->buay_bakiye(); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Toplam Yüklenen</h4>
					</div>
					<div class="card-body">						
						<?php echo $rapor->toplam_bakiye(); ?>
					</div>
				</div>
			</div>
		</div>


	</div>

	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Yüklenen Bakiyeler</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="bakiyetablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>Sipariş ID</th>
									<th>Yükleyen</th>
									<th>Yüklenen Ücret</th>
									<th>Yükleme Tarihi</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->yuklenen_bakiyeler() as $key => $var): ?>
									<tr>
										<td><?php echo $var->bakiye_id ?></td>
										<td><?php echo $var->bakiye_order_id ?></td>
										<td><?php echo $veri->isim($var,false) ?></td>
										<td><?php echo yaz($var->bakiye_ucret,para()) ?></td>
										<td><?php echo $var->bakiye_tarih ?></td>
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
	var dataTables = $('#bakiyetablosu').DataTable({ 
		initComplete: filtre([2,3]),
		dom: dtDom,
		buttons: exBtn(5)
	});
</script>
