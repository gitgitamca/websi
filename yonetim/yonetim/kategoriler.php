<?php 
include'header.php';

if (isset($_GET['sil'])) {
	sayi($_GET['k']);
	$sonuc=$kupon->silme("kategori","kat_id",$_GET['k']);
	if ($sonuc['sonuc']) {
		git("kategoriler","ok");
	} else {
		git("kategoriler","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Kategoriler</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<a href="kategoriekle" class="btn btn-success btn-sm mb-1"><i class="fa fa-plus"></i> Ekle</a>
					<div class="table-responsive">
						<table class="table table-bordered" id="kategoritablosu" width="100%" cellspacing="0">
							<thead>
								<tr> 
									<th>#</th>
									<th>İsim</th>
									<th>Üst Kategori</th>
									<th>İşlemler</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								foreach ($katClass->tum_katlar(true) as $ta) { ?>
									<tr>
										<td><?php echo $ta->kat_id; ?></td>
										<td><?php echo $ta->kat_isim; ?></td>
										<td><?php 
										if ($ta->kat_ust==0) {
											echo "----";;
										} else {
											echo $katClass->ust_kat($ta->kat_ust)->kat_isim;
										}
										?></td>
										<td>
											<div class="d-flex justify-content-center">
												<a href="kategoriduzenle?k=<?php echo $ta->kat_id ?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
												<a href="kategoriler?sil=true&k=<?php echo $ta->kat_id ?>" class="btn btn-danger ml-1"><i class="fa fa-trash"></i></a>
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
	var dataTables = $('#kategoritablosu').DataTable({ 
		initComplete: filtre([2]),
		dom: dtDom,
		buttons: exBtn(3)
	});
</script>
