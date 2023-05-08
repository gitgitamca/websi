<?php 
include 'header.php';

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
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Feedbacks</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>USER</th>
									<th>ITEM</th>
									<th>STARS</th>
									<th>COMMENTS</th>
									<th>STATUS</th>
									<th>DATE</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->magaza_degerlendirmeler($_SESSION['kul_id'],"0,99999") as $key => $var): ?>
									<tr>
										<td><?php echo $var->yildiz_id ?></td>
										<td><?php echo $veri->isim($veri->kul($var->kullanici),false) ?></td>
										<td><a target="_blank" class="btn-link badge badge-primary" href="<?php echo $veri->ul($var) ?>"><?php echo $var->urun_baslik ?></a></td>
										<td><div class="yildiz" data-yildiz="<?php echo $var->deger; ?>"></div></td>
										<td><?php echo $var->icerik ?></td>
										<td><?php echo aktif_pasif()[$var->durum] ?></td>
										<td><?php echo $var->yildiz_tarih ?></td>
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
	var dataTables = $('#taleptablosu').DataTable({ 
		initComplete: filtre([1,2,5]),
		dom: dtDom,
		buttons: exBtn(8)
	});
</script>
