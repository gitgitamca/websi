<?php 
include'header.php';

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
					<h6 class="m-0 font-weight-bold text-primary">Mağaza Başvuruları</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>#</th>
									<th>Mağaza İsmi</th>
									<th>E-Mail</th>
									<th>Telefon</th>
									<th>Durum</th>
									<th>İşlem</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($veri->basvurular() as $key => $var): ?>
									<tr>
										<td><?php echo $var->basvuru_id ?></td>
										<td><?php echo $var->magaza_isim ?></td>
										<td><?php echo $var->kul_mail ?></td>
										<td><?php echo $var->kul_telefon ?></td>
										<td><?php echo basvuru_durum()[$var->durum] ?></td>
										<td>
											<?php if ($var->durum!=2): ?>
												
											<div class="d-flex justify-content-center">
												<a target="_blank" href="<?php echo "basvuruduzenle?b=".$var->basvuru_id ?>" type="button" class="btn btn-success btn-sm icon-split"><i class="fas fa-edit"></i></a>

												<form class="mx-1" action="" method="POST">
													<input type="hidden" name="basvuru_id" value="<?php echo $var->basvuru_id ?>">
													<button type="submit" name="popupsilme" class="btn btn-danger btn-sm icon-split silmebutonu">
														<span class="icon text-white-60">
															<i class="fas fa-trash"></i>
														</span>
													</button>
												</form>	
											</div>
										
											<?php endif ?>
										</td>
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
	$('#taleptablosu').DataTable({ 
		initComplete: filtre([4]),
		dom: dtDom,
		buttons: exBtn(5)
	});
</script>