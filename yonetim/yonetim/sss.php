<?php 
include'header.php';

$islem = new crud($db);
if (isset($_POST['ssssilme'])) {
	if ($islem->silme("sss","soru_id",$_POST['soru_id'])) {
		header("location:sss.php?durum=ok");
		exit;
	} else {
		header("location:sss.php?durum=no");
		exit;
	}
}
?>

<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<!-- DataTales Giriş -->
<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">S.S.S</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php include 'disaaktar.php'; ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="sorutablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>No</th>
						<th>İsim</th>
						<th>Açıklama</th>
						<th>İşlemler</th>
					</tr>
				</thead>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
				<tbody>
					<?php 
					$say=0;
					foreach ($islem->tumtablo("sss") as $soru) { $say++?>
						<tr>
							<td><?php echo $say; ?></td>
							<td><?php echo $soru['soru']; ?></td>
							<td><?php echo $soru['cevap']; ?></td>
							<td>
								<div class="d-flex justify-content-center">

									<form action="sssduzenle.php" method="POST">
										<input type="hidden" name="soru_id" value="<?php echo $soru['soru_id'] ?>">
										<button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
											<span class="icon text-white-60">
												<i class="fas fa-edit"></i>
											</span>
										</button>
									</form>
									
									<form class="mx-1" action="" method="POST">
										<input type="hidden" name="silinecekbaslik" value="<?php echo $soru['kat_baslik'] ?>">
										<input type="hidden" name="soru_id" value="<?php echo $soru['soru_id'] ?>">
										<button type="submit" name="ssssilme" class="btn btn-danger btn-sm icon-split">
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
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script>
	$('#sorutablosu').DataTable({
		initComplete: filtre([0]),
		dom: dtDom,
		buttons: exBtn(3)
	});
</script>