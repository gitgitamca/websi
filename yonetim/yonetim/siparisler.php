<?php 
include'header.php';

if (isset($_GET['sil'])) {
	if ($crud->silme("siparis","sip_id",$_GET['sip'])) {
		header("location:siparisler?durum=ok");
		exit;
	} else {
		header("location:siparisler?durum=no");
		exit;
	}
}

?>

<!-- DataTales Giriş -->
<div class="card card-primary br-1 shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Siparişler</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<?php include 'disaaktar.php' ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="siparistablosu" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>#</th>
						<th>Ürün</th>
						<th>Kullanıcı İsmi</th>
						<th>Ücret</th>
						<th>Kazanç</th>
						<th>Alınan Komisyon (TL)</th>
						<th>Adet</th>
						<th>Tarih</th>
						<th>Durum</th>
						<th>İşlem</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($veri->siparisler() as $key => $var): ?>
						<tr>
							<td><?php echo $var->sip_id ?></td>
							<td><?php echo $var->urun_baslik ?></td>
							<td><?php echo $veri->isim($var,false); ?></td>
							<td><?php echo $var->ucret.para() ?></td>
							<td><?php echo ($var->ucret-$var->komisyon_alinan).para() ?></td>
							<td><?php echo $var->komisyon_alinan.para() ?></td>
							<td><?php echo $var->adet ?></td>
							<td><?php echo $var->tarih ?></td>
							<td><?php echo sip_durum()[$var->sip_durum] ?></td>
							<td>
								<div class="dropdown">
									<a class="btn btn-primary dropdown-toggle" href="#" role="button" id="siparis_islem_dropdown" data-toggle="dropdown" aria-expanded="false">
										<i class="fa fa-arrow-down"></i> İşlemler
									</a>

									<div class="dropdown-menu" aria-labelledby="siparis_islem_dropdown">
										<a class="dropdown-item" href="siparis?sip=<?php echo $var->sip_id ?>">Sipariş İçeriği / Hesap Bilgileri</a>
										<a class="dropdown-item silmebutonu" href="siparisler?sil=true&sip=<?php echo $var->sip_id ?>">Siparişi Sil</a>
										<a class="dropdown-item" href="siparisduzenle?s=<?php echo $var->sip_id ?>">Düzenle</a>
									</div>
								</div> 
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>


<script>
	$('#siparistablosu').DataTable({
		initComplete: filtre([1,2,3,6,8]),
		dom: dtDom,
		buttons: exBtn(9)
	});
</script>
