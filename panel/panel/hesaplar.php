<?php 
include'header.php';
saticimi("e");
$islem = new crud($db);
if (isset($_POST['hesapsilme'])) {
	hesap_kontrol($_POST['hesap_id']);
	if ($islem->silme("hesaplar","hesap_id",$_POST['hesap_id'])) {
		git("hesaplar","ok");
	} else {
		git("hesaplar","no");
	}
}
?>

<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Accounts</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php require_once 'disaaktar.php' ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="hesaptablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>NO</th>
						<th>NAME</th>
						<th>PRICE</th>
						<th>STATUS</th>
						<th>ORDER</th>					
						<th>MORE</th>
					</tr>
				</thead>
				
				<tbody>
					<?php 
					$say=0;
					foreach ($islem->cok("SELECT * FROM hesaplar 
						INNER JOIN urun ON urun.urun_id=hesaplar.urun 
						WHERE urun.satici={$_SESSION['kul_id']} 
						ORDER BY hesap_id DESC
						") as $hesap) { $say++?>
							<tr>
								<td><?php echo $say; ?></td>
								<td><?php echo $hesap['urun_baslik']; ?></td>
								<td><?php echo $hesap['urun_fiyat']; ?> $</td>
								<td class="text-center"><span class="durum"><?php echo hesap_durum()[$hesap['hesap_durum']] ?></span></td>
								<td>
									<?php 
									if ($hesap['hesap_durum']==2) {
										echo "<a href='siparis?sip={$hesap['siparis']}'>#{$hesap['siparis']}</a>";
										//echo "#".$hesap['siparis'];
									} else {
										echo "---";
									}

									?>
								</td>
								<td>

									<div class="d-flex justify-content-center">

										<form action="hesapduzenle" method="POST">
											<input type="hidden" name="hesap_id" value="<?php echo $hesap['hesap_id'] ?>">
											<button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-edit"></i>
												</span>
											</button>
										</form>

										<form class="mx-1" action="" method="POST">
											<input type="hidden" name="hesap_id" value="<?php echo $hesap['hesap_id'] ?>">
											<button type="submit" name="hesapsilme" class="btn btn-danger btn-sm icon-split silmebutonu">
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
				</table>
			</div>
		</div>
	</div>
	<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script>
	var dataTables = $('#hesaptablosu').DataTable({
		initComplete: filtre([1,3]),
		responsive: true,  
		dom: dtDom,
		buttons: exBtn(5)
	});
</script>
