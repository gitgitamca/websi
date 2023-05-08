<?php 
include'header.php';

$islem = new crud($db);
if (isset($_POST['popupsilme'])) {
	if ($islem->silme("popup","popup_id",$_POST['popup_id'])) {
		git("popuplar","ok");
	} else {
		git("popuplar","no");
	}
}

if (@$_GET['islem']=="yayinlama") {
	$islem->tek("UPDATE popup SET popup_durum=0");
	$islem->tek("UPDATE popup SET popup_durum={$_GET['durum']} WHERE popup_id={$_GET['popup_id']}");
	git("popuplar.php","ok");
}


?>

<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<!-- DataTales Giriş -->
<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Popup Bildirimler</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php include 'disaaktar.php'; ?>
		<table class="table table-bordered" id="popuptablosu" width="100%" cellspacing="0">
			<thead>
				<tr> 
					<th>No</th>
					<th>Başlık</th>
					<th>Görüntülenme Sayısı</th>
					<th>Durum</th>
					<th>Yayın İşlemi</th>
					<th>İşlemler</th>
				</tr>
			</thead>
			<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
			<tbody>
				<?php 
				$say=0;
				foreach ($islem->tumtablo("popup") as $popup) { $say++?>
					<tr>
						<td><?php echo $say; ?></td>
						<td><?php echo $popup['popup_baslik']; ?></td>
						<td><?php echo $popup['popup_gorulme']; ?></td>
						<td><?php 
						if ($popup['popup_durum']==0) {
							echo '<span class="badge badge-danger"><i class="fas fa-times"></i></span>';
						} else {
							echo '<span class="badge badge-success"><i class="fas fa-check"></i></span>';
						}
						?></td>
						<td>
							<span class="text-center">


								<?php if ($popup['popup_durum']=="1"): ?>
									<a class="ml-1" href="popuplar?islem=yayinlama&popup_id=<?php echo $popup['popup_id'] ?>&durum=0">
										<button type="button" class="btn btn-warning btn-sm icon-split" value="<?php echo $popup['popup_id'] ?>">
											<span class="icon mr-1">
												<i class="fas fa-times"></i>
											</span>
										</button>
									</a>
									<?php else: ?>
										<a href="popuplar?islem=yayinlama&popup_id=<?php echo $popup['popup_id'] ?>&durum=1">
											<button type="button" class="btn btn-success btn-sm icon-split" value="<?php echo $popup['popup_id'] ?>">
												<span class="icon mr-1">
													<i class="fas fa-check"></i>
												</span>
											</button>
										</a>
									<?php endif ?>
								</span>
							</td>
							<td>

								<div class="d-flex justify-content-center">
									<form action="popupbildirimduzenle" method="POST">
										<input type="hidden" name="popup_id" value="<?php echo $popup['popup_id'] ?>">
										<button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
											<span class="icon text-white-60">
												<i class="fas fa-edit"></i>
											</span>
										</button>
									</form>

									<form class="mx-1" action="" method="POST">
										<input type="hidden" name="popup_id" value="<?php echo $popup['popup_id'] ?>">
										<button type="submit" name="popupsilme" class="btn btn-danger btn-sm icon-split silmebutonu">
											<span class="icon text-white-60">
												<i class="fas fa-trash"></i>
											</span>
										</button>
									</form>	
								</div>
							</td>
						</tr>
					<?php } ?>
				</tbody>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi çıkış-->
			</table>
		</div>
	</div>
	<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script src="assets/modules/datatables/jquery.dataTables.min.js"></script>
<script src="assets/modules/datatables/dataTables.bootstrap4.min.js"></script>

<script>
	var dataTables = $('#popuptablosu').DataTable({
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true,
		dom: "<'row '<'col-md-6'l><'col-md-6'f><'col-md-4 d-none d-print-block'B>>rtip",
	});
</script>
