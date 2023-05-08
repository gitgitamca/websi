<?php 
include'header.php';

if (isset($_GET['talepsilme'])) {
	sayi($_GET['talep_id']);
	$sipler=$crud->tek("SELECT sip FROM talep WHERE talep_id={$_GET['talep_id']}")['sip'];
	foreach (explode(",", $sipler) as $key => $sip) {
		$crud->tek("UPDATE siparis SET cekim=1 WHERE sip_id=$sip");
	}


	$crud->tek("DELETE FROM talep WHERE talep_id={$_GET['talep_id']} AND durum=1");
	header("location:talepler?durum=ok");
	exit;
}



?>

<div class="container-fluid">
	<div class="row">
		
		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-life-ring"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Toplam Talep Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(talep_id) as sayi FROM talep")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-success">
					<i class="fas fa-check"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Onaylanan Talep Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(talep_id) as sayi FROM talep WHERE (durum=2 OR durum=3)")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-danger">
					<i class="fas fa-times"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Reddedilen Talep Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(talep_id) as sayi FROM talep WHERE durum=0")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-info">
					<i class="fas fa-check-circle"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Onaylanan Toplam Ücret</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT SUM(ucret) as sayi FROM talep WHERE (durum=2 OR durum=3)")['sayi'].para() ?>
					</div>
				</div>
			</div>
		</div>                  
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Para Çekim Talepleri</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="0">
							<thead>
								<tr> 
									<th>No</th>
									<th>Talep Eden</th>
									<th>Durum</th>
									<th>Talep Tarihi</th>
									<th>Ödeme Tarihi</th>
									<th>Ücret</th>	
									<th>Banka</th>	
									<th>IBAN</th>
									<th>Siparişler</th>
									<th>İşlemler</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								foreach ($veri->talepler(x,true) as $ta) { ?>
									<tr>
										<td><?php echo $ta->talep_id; ?></td>
										<td><?php echo $veri->isim($ta); ?></td>
										<td><?php echo talep_durum()[$ta->durum]; ?></td>
										<td><?php echo $ta->talep_tarihi; ?></td>
										<td><?php echo $ta->odeme_tarihi; ?></td>
										<td><?php echo $ta->ucret.para(); ?></td>
										<td><?php echo $ta->banka; ?></td>
										<td><?php echo $ta->iban; ?></td>
										<td><?php 
										foreach (explode(",", $ta->sip) as $key => $value) {
											echo "<a target='_blank' class='font-weight-bold' href='siparis?sip=$value'>#".$value."</a><br>";
										}
										?></td>
										<td>
											<div class="d-flex justify-content-center">
												<a href="talepduzenle?talep_id=<?php echo $ta->talep_id ?>">
													<button type="button" class="btn btn-success mr-2"><i class="fas fa-edit"></i></button>
												</a>
												<a href="talepler?talepsilme=true&talep_id=<?php echo $ta->talep_id ?>">
													<button type="button" class="btn btn-danger"><i class="fas fa-trash"></i></button>
												</a>								
											</div>
										</td>
									</tr>
								<?php } ?>
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
		initComplete: filtre([1,2,6]),
		dom: dtDom,
		buttons: exBtn(9)
	});
</script>
