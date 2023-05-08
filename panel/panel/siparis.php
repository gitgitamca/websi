<?php 
require_once 'header.php';


sayi($_GET['sip']);
extract($_GET);
sip_kontrol($sip, true);




?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Order Details</h5>
				</div>
				<div class="card-body">
					<h3 class="mb-4 text-center fs-2_5">Order Infos</h3>
					<div class="table-responsive">
						<table class="table table-bordered haric">
							<thead>
								<tr>
									<th>#</th>
									<th>Item</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Date</th>
									<th>Status</th>
									<th>Payment withdrawal status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<?php $var=$veri->siparis($sip) ?>
									<td><?php echo $sip ?></td>
									<td><?php echo $var->urun_baslik ?></td>
									<td><?php echo $var->ucret." $" ?></td>
									<td><?php echo $var->adet ?></td>
									<td><?php echo $var->tarih ?></td>
									<td><?php echo sip_durum()[$var->sip_durum] ?></td>
									<td><?php echo cekim_durum()[$var->cekim] ?></td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
					<hr>
					<br>	

					<h3 class="mb-4 text-center fs-2_5">Customer Infos</h3>
					<div class="table-responsive">
						<table class="table table-bordered haric">
							<thead>
								<tr>
									<th>Name</th>
									<th>Surname</th>
									<th>E-Mail</th>
									<th>Invoice</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><?php echo $var->kul_isim ?></td>
									<td><?php echo $var->kul_soyisim ?></td>
									<td><?php echo $var->kul_mail ?></td>
									<td><?php echo nl2br($var->kul_fatura) ?></td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
					<hr>
					<br>

					<h3 class="mb-4 text-center fs-2_5">Account Information for the Order</h3>
					<div class="table-responsive">
						<table class="table table-bordered haric" id="excel_tablo">				
							<thead>
								<tr>
									<th>Account info</th>
									<th>Expiry Date</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->cok("SELECT * FROM hesaplar WHERE siparis=$sip",true) as $key => $var): ?>
									<tr>
										<td><?php echo nl2br($var->icerik) ?></td>
										<td><?php echo $var->son_kullanim ?></td>
										<td><?php echo hesap_durum()[$var->hesap_durum] ?></td>
									</tr>
								<?php endforeach ?>
							</tbody>
						</table>
					</div>
					<button id="excel_buton" type="button" class="btn btn-success btn-lg d-print-none"><i class="fa fa-file-excel mr-3"></i>Export as Excel</button>

				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>
<script src="assets/modules/excel/jquery.table2excel.min.js"></script>

<script>
	$("#excel_buton").click(function(){
		$("#excel_tablo").table2excel({
			name: "Worksheet Name",
			filename: "Hesaplar",
			fileext: ".xls" 
		}); 
	});

</script>