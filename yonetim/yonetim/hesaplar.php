<?php 

include'header.php';

if (isset($_POST['hesapsilme'])) {
	if ($crud->silme("hesaplar","hesap_id",$_POST['hesap_id'])) {
		git("hesaplar","ok");
	} else {
		git("hesaplar","no");
	}
}
?>

<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Hesaplar</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php include 'disaaktar.php' ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="hesaptablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>No</th>
						<th>Ürün İsmi</th>
						<th>Ürün Fiyatı</th>
						<th>Mağaza</th>
						<th>Hesap Durum</th>
						<th>Sipariş</th>					
						<th>İşlemler</th>
					</tr>
				</thead>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
				<tbody>
					<?php 
					$say=0;
					foreach ($crud->cok("SELECT hesaplar.*,urun_baslik,urun_fiyat,magaza_isim FROM hesaplar 
						LEFT JOIN urun ON urun.urun_id=hesaplar.urun 
						LEFT JOIN kullanicilar ON kullanicilar.kul_id=urun.satici 
						ORDER BY hesap_id DESC
						") as $hesap) { $say++?>
							<tr>
								<td><?php echo $hesap['hesap_id']; ?></td>
								<td><?php echo $hesap['urun_baslik']; ?></td>
								<td><?php echo $hesap['urun_fiyat'].para(); ?></td>
								<td><?php echo $hesap['magaza_isim']; ?></td>
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
											<button type="submit" name="duzenleme" class="btn btn-success icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-edit"></i>
												</span>
											</button>
										</form>

										<form class="mx-1" action="" method="POST">
											<input type="hidden" name="hesap_id" value="<?php echo $hesap['hesap_id'] ?>">
											<button type="submit" name="hesapsilme" class="btn btn-danger icon-split silmebutonu">
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
	var dataTables = $('#hesaptablosu').DataTable({ 
		initComplete: filtre([1,3,4]),
		dom: dtDom,
		buttons: exBtn(9)
	});
</script>
