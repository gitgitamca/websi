<?php 
include'header.php';
saticimi("e");
$islem = new ticket($db);

if (isset($_POST['ticketsilme'])) {
	if ($islem->silme("ticket","ticket_id",$_POST['ticket_id'])) {
		header("location:yonetim-destek-biletleri.php?durum=ok");
		exit;
	} else {
		header("location:yonetim-destek-biletleri.php?durum=no");
		exit;
	}
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
						<h4>Total Tickets</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(ticket_id) as sayi FROM ticket WHERE satici={$_SESSION['kul_id']}")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-info">
					<i class="fas fa-user-clock"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Not Replied</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(ticket_id) as sayi FROM ticket WHERE satici={$_SESSION['kul_id']} AND ticket_durum=1")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-warning">
					<i class="fas fa-hourglass-half"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Acil Ticket Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(ticket_id) as sayi FROM ticket WHERE satici={$_SESSION['kul_id']} AND ticket_aciliyet='Acil'")['sayi'] ?>
					</div>
				</div>
			</div>
		</div>
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-danger">
					<i class="fas fa-door-closed"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Closed Tickets</h4>
					</div>
					<div class="card-body">
						<?php echo $crud->tek("SELECT COUNT(ticket_id) as sayi FROM ticket WHERE satici={$_SESSION['kul_id']} AND ticket_durum=0")['sayi'] ?>
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
					<h6 class="m-0 font-weight-bold text-primary">Support Tickets</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<!--Tablo filtreleme butonları mobilde gizlendiğinde gözükecek buton-->
					<button type="button"class="btn btn-sm btn-info icon-split mobilgoster">
						<span class="icon text-white-65">
							<i class="fas fa-edit"></i>
						</span>
						<span class="text">Options</span>
					</button>

					<div class="mobilgizle gizlemeyiac" style="margin-bottom: 10px;">
						<!--Tablo filtreleme butonları bölümü giriş-->
						<button type="button" id="hepsi" style="margin-bottom: 5px;" class="btn btn-sm btn-info icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-edit"></i>
							</span>
							<span class="text">All</span>
						</button>

						<button type="button" id="kapali" style="margin-bottom: 5px;" class="btn btn-sm btn-danger icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-power-off"></i>
							</span>
							<span class="text">Closed Tickets</span>
						</button>

						<button type="button" id="musteri-yanit" style="margin-bottom: 5px;" class="btn btn-sm btn-success icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-clock"></i>
							</span>
							<span class="text">Buyer's Replyı</span>
						</button>

						<button type="button" id="gorevli-yanit" style="margin-bottom: 5px;" class="btn btn-sm btn-primary icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-circle-notch"></i>
							</span>
							<span class="text">Seller's Reply</span>
						</button>

						<button type="button" id="acil" style="margin-bottom: 5px;" class="btn btn-sm btn-danger icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-hourglass-start"></i>
							</span>
							<span class="text">Urgent</span>
						</button>

						<button type="button" id="orta" style="margin-bottom: 5px;" class="btn btn-sm btn-info icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-hourglass-start"></i>
							</span>
							<span class="text">Normal</span>
						</button>

						<button type="button" id="acelesiyok" style="margin-bottom: 5px;" class="btn btn-sm btn-warning icon-split">
							<span class="icon text-white-65">
								<i class="fas fa-hourglass-start"></i>
							</span>
							<span class="text">Not Urgent</span>
						</button>
						<!--Tablo filtreleme butonları bölümü çıkış-->

						<!--Tabloyu excel-pdf-csv olarak dışa aktarma butonlarının olduğu alan giriş-->
						<span class="dropdown no-arrow">
							<button data-toggle="dropdown" aria-expanded="false" type="button" id="aktarmagizleme" style="margin-left: 4px; margin-bottom: 5px;" class="btn btn-sm btn-primary icon-split dropdown-toggle"><span class="icon text-white-65"><i class="fas fa-file-export"></i></span><span class="text">Dışa Aktar</span>
							</button> 


							<div class="dropdown-menu" aria-labelledby="aktarmagizleme">
								<a class="dropdown-item"> 
									<button type="button" onclick="fnAction('copy');" title="asdsad" attr="Copy Table" class="btn btn-sm icon-split btn-dark">
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
						<!--Tabloyu excel-pdf-csv olarak dışa aktarma butonlarının olduğu alan çıkış-->
					</div>
					<div class="table-responsive">
						<table class="table table-bordered" id="tickettablosu" width="100%" cellspacing="0">
							<thead>
								<tr> 
									<th>No</th>
									<th>Subject</th>
									<th>Creation Date</th>
									<th>Status</th>	
									<th>Urgency</th>	
									<th>Last Reply</th>	
									<th>Technical Support</th>						
									<th>More</th>
								</tr>
							</thead>
							<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
							<tbody>
								<?php 
								$say=0;

								foreach ($islem->cok("SELECT * FROM ticket WHERE satici={$_SESSION['kul_id']} ORDER BY ticket_son_yanit_tarih DESC") as $ticket) { $say++?>
									<tr>
										<td><?php echo $say; ?></td>
										<td><?php echo $ticket['ticket_konu']; ?></td>
										<td><?php echo $ticket['ticket_tarih']; ?></td>
										<td><?php 
										if ($ticket['ticket_durum']==0) {
											echo "<span class='badge badge-danger'>Closed</span>";
										} elseif ($ticket['ticket_durum']==1) {
											echo "<span class='badge badge-success'>Buyer Replied</span>";
										} elseif ($ticket['ticket_durum']==2) {
											echo "<span class='badge badge-primary'>Seller Replied</span>";
										} elseif ($ticket['ticket_durum']==3) {
											echo "<span class='badge badge-warning'>Pending</span>";
										}
										?></td>
										<td class="text-center"><?php 
										if ($ticket['ticket_aciliyet']=="Acil") {
											echo "<span class='badge badge-danger'>Urgent</span>";
										} else {
											echo $ticket['ticket_aciliyet'];
										}
										?></td>

										<td class="text-center"><?php 
										if ($ticket['ticket_son_yanit_tarih']=="0000-00-00 00:00:00") {
											echo "---";
										} else {
											echo $ticket['ticket_son_yanit_tarih'];
										}
										?></td>
										<td class="text-center"><?php 
										if ($ticket['ticket_departman']==0) {
											echo "<span class='badge badge-secondary'>Technical Support</span>";
										} elseif ($ticket['ticket_departman']==1) {
											echo "<span class='badge badge-warning'>Payment Info</span>";
										} elseif ($ticket['ticket_departman']==2) {
											echo "<span class='badge badge-info'>Pre-Sales</span>";
										}
										?></td>
										<td>
											<div class="d-flex justify-content-center">
												<a href="destek-bileti.php?ticket_id=<?php echo $ticket['ticket_id'] ?>">
													<button type="button" class="btn btn-primary btn-icon icon-left"><i class="fas fa-edit"></i>Reply</button>	
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
	var dataTables = $('#tickettablosu').DataTable({ 
		initComplete: filtre([3,4,6]),
		dom: dtDom,
		buttons: exBtn(7),
		responsive: true
	});

	$('#hepsi').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(3).search("").draw();
	}); 
	$('#kapali').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(3).search("Closed").draw();
	}); 
	$('#musteri-yanit').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(3).search("Buyer Replied").draw();
	}); 
	$('#gorevli-yanit').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(3).search("Seller Replied").draw();
	}); 
	$('#beklemede').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(3).search("Pending").draw();
	}); 
	$('#acil').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(4).search("Urgent").draw();
	}); 
	$('#orta').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(4).search("Normal").draw();
	}); 
	$('#acelesiyok').on('click', function () {
		dataTables
		.columns()
		.search( '' )
		.columns( '.sold_out' )
		.search( 'YES' )
		.draw();
		dataTables.column(4).search("Not Urgent").draw();
	}); 
</script>
