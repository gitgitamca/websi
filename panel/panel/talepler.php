<?php 
include'header.php';

saticimi("e");

if (isset($_GET['talepsilme'])) {
	sayi($_GET['talep_id']);
	$sipler=$crud->tek("SELECT sip FROM talep WHERE talep_id={$_GET['talep_id']}")['sip'];
	foreach (explode(",", $sipler) as $key => $sip) {
		$crud->tek("UPDATE siparis SET cekim=1 WHERE sip_id=$sip");
	}


	$crud->tek("DELETE FROM talep WHERE talep_id={$_GET['talep_id']} AND kul={$_SESSION['kul_id']} AND durum=1");
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
						<h4>Total withdraw requests</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->satirsayisi("talep","kul",ses("kul_id")) ?>
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
						<h4>Accepted Requests(by admin)</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(talep_id) as sayi FROM talep WHERE kul={$_SESSION['kul_id']} AND (durum=2 OR durum=3)")['sayi'] ?>
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
						<h4>Rejected Requesets(by admin)</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(talep_id) as sayi FROM talep WHERE kul={$_SESSION['kul_id']} AND durum=0")['sayi'] ?>
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
						<h4>Total Accepted Amount </h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT SUM(ucret) as sayi FROM talep WHERE kul={$_SESSION['kul_id']} AND (durum=2 OR durum=3)")['sayi']." $" ?>
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
					<h6 class="m-0 font-weight-bold text-primary">Withdrawal Requests</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<span class="dropdown no-arrow">
						<button data-toggle="dropdown" aria-expanded="false" type="button" id="aktarmagizleme" style="margin-left: 4px; margin-bottom: 5px;" class="btn btn-sm btn-primary icon-split dropdown-toggle"><span class="icon text-white-65"><i class="fas fa-file-export"></i></span><span class="text">Export</span>
						</button> 


						<div class="dropdown-menu" aria-labelledby="aktarmagizleme">
							<a class="dropdown-item"> 
								<button type="button" onclick="fnAction('copy');" title="asdsad" attr="Copy table" class="btn btn-sm icon-split btn-dark">
									<span class="icon text-white-65">
										<i class="fas fa-copy"></i>
									</span>
									<span class="text">Copy</span>
								</button>
							</a>
							<a class="dropdown-item" title="">  
								<button type="button" onclick="fnAction('excel');" attr="Export as Excel Format" class="btn btn-sm icon-split btn-success">
									<span class="icon text-white-65">
										<i class="fas fa-file-excel"></i>
									</span>
									<span class="text">Excel</span>
								</button>
							</a>
							<a class="dropdown-item">
								<button type="button" onclick="fnAction('pdf');" attr="Export as PDF Format" class="btn btn-sm icon-split btn-danger">
									<span class="icon text-white-65">
										<i class="fas fa-file-pdf"></i>
									</span>
									<span class="text">PDF</span>
								</button>
							</a>
							<a class="dropdown-item">
								<button type="button" onclick="fnAction('csv');" attr="Export as CSV Format" class="btn btn-sm icon-split btn-primary">
									<span class="icon text-white-65">
										<i class="fas fa-file-csv"></i>
									</span>
									<span class="text">CSV</span>
								</button>
							</a>
						</div>
					</span>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="2">
							<thead>
								<tr> 
									<th>No</th>
									<th>Status</th>
									<th>Requsted Date</th>
									<th>Withdraw Date</th>
									<th>Amount</th>	
									<th>Crypto</th>	
									<th>Paypal</th>
									<th>Orders</th>
									<th>More</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								foreach ($veri->talepler() as $ta) { ?>
									<tr>
										<td><?php echo $ta->talep_id; ?></td>
										<td><?php echo talep_durum()[$ta->durum]; ?></td>
										<td><?php echo $ta->talep_tarihi; ?></td>
										<td><?php echo $ta->odeme_tarihi; ?></td>
										<td><?php echo $ta->ucret." $"; ?></td>
										<td><?php echo $ta->banka; ?></td>
										<td><?php echo $ta->iban; ?></td>
										<td><?php 
										foreach (explode(",", $ta->sip) as $key => $value) {
											echo "<a target='_blank' class='font-weight-bold' href='siparis?sip=$value'>#".$value."</a><br>";
										}
										?></td>
										<td>
											<div class="d-flex justify-content-center">
												<?php if ($ta->durum==1): ?>
													<a href="talepler?talepsilme=true&talep_id=<?php echo $ta->talep_id ?>">
														<button type="button" class="btn btn-danger btn-icon icon-left"><i class="fas fa-trash"></i></button>
													</a>
													<?php else: ?>
														----
													<?php endif ?>									
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
		var dataTables = $('#taleptablosu').DataTable({ 
			initComplete: filtre([1,5]),
			responsive: true,
			dom: dtDom,
			buttons: exBtn(8)
		});	
	</script>
