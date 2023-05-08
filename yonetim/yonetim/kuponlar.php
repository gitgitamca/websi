<?php 
include'header.php';

if (isset($_GET['sil'])) {
	sayi($_GET['k']);
	$sonuc=$kupon->silme("kuponlar","kupon_id",$_GET['k']);
	if ($sonuc['sonuc']) {
		git("kuponlar","ok");
	} else {
		git("kuponlar","no");
	}
}

?>

<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Kuponlar</h6>
				</div>
				<div class="card-body" style="width: 100%">
					<?php include 'disaaktar.php' ?>
					<div class="table-responsive">
						<table class="table table-bordered" id="taleptablosu" width="100%" cellspacing="0">
							<thead>
								<tr> 
									<th>#</th>
									<th>Kod</th>
									<th>Durum</th>
									<th>İndirim Yüzdesi</th>
									<th>Son Kullanım Tarihi</th>	
									<th>Adet</th>	
									<th>Kullanım Sayısı</th>
									<th>Siparişler</th>
									<th>İşlemler</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								foreach ($kupon->kuponlar(true) as $ta) { ?>
									<tr>
										<td><?php echo $ta->kupon_id; ?></td>
										<td><?php echo $ta->kupon_kodu; ?></td>
										<td><?php echo aktif_pasif()[$ta->kupon_durum]; ?></td>
										<td><?php echo $ta->yuzde; ?></td>
										<td><?php echo $ta->son_kullanim; ?></td>
										<td><?php echo $ta->adet; ?></td>
										<td><?php echo $kupon->kullanim_adet($ta->kupon_kodu); ?></td>
										<td><?php 
										foreach ($kupon->kupon_siparis($ta->kupon_kodu) as $key => $var) {
											echo "<a target='_blank' href='siparis?sip=$var->sip_id'>#$var->sip_id</a><br>";
										}
										?></td>
										<td>
											<div class="d-flex justify-content-center">
												<a href="kuponduzenle?k=<?php echo $ta->kupon_id ?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
												<a href="kuponlar?sil=true&k=<?php echo $ta->kupon_id ?>" class="btn btn-danger ml-1"><i class="fa fa-trash"></i></a>
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
		initComplete: filtre([2,3,5,6]),
		dom: dtDom,
		buttons: exBtn(8)
	});
</script>
