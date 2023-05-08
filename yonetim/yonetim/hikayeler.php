<?php 
include'header.php';
yetkikontrol("e");
if (isset($_POST['hikayesilme'])) {
	if ($genel->hikayesil($_POST['hik_id'])) {
		git("hikayeler","ok");
	} else {
		git("hikayeler","no");
	}
}



?>

<!-- DataTales Giriş -->
<div class="container-fluid mt-4">
	<div class="card card-primary br-1 shadow">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Hikayeler</h6>
		</div>
		<div class="card-body" style="width: 100%">
			<div class="text-right">
				<a href="hikayeekle" class="btn btn-success ml-auto mb-4"><i class="fa fa-plus"></i> Ekle</a>
			</div>
			<div class="table-responsive">
				<table class="table table-bordered" id="hikayetablosutable" width="100%" cellspacing="0">
					<thead>
						<tr> 
							<th>No</th>
							<th>Resim</th>
							<th>Link</th>
							<th>Ürün</th>
							<th>Sıra</th>	
							<th>Durum</th>					
							<th>İşlemler</th>
						</tr>
					</thead>
					
					<tbody id="hikayetablosu">
						<?php foreach ($veri->hikayeler() as $key => $var): ?>
							<tr style="border-left: 7px solid gray;" id="hikayesiralama-<?php echo $var->hik_id ?>">
								<td><?php echo $var->hik_id ?></td>
								<td>
									<?php if ($var->urun==0): ?>
										<img src="<?php echo hikaye.$var->kapak_resim ?>" style="width:120px;">
									<?php else: 
										$urun_bilgi=$veri->urun_getir($var->urun,true);
										?>
										<img src="<?php echo kucuk_resim.$urun_bilgi->urun_one_cikan ?>" style="width:120px;">
									<?php endif ?>
								</td>
								<td><a target="_blank" href="<?php echo $var->link; ?>"><?php echo $var->link; ?></a></td>
								<td>
									<?php if ($var->urun==0): ?>
										-----
									<?php else: 
										$urun_bilgi=$veri->urun_getir($var->urun,true);
										?>
										<a target="_blank" href="<?php echo $veri->ul($urun_bilgi); ?>"><?php echo $urun_bilgi->urun_baslik; ?></a>
									<?php endif ?>
									
								</td>
								<td><?php echo $var->sira ?></td>
								<td class="text-center"><?php 
								if ($var->durum==0) {
									echo "<span class='badge badge-danger'>Pasif</span>";
								} else {
									echo "<span class='badge badge-success'>Aktif</span>";
								}
								?></td>
								<td>
									<div class="d-flex justify-content-center">

										<form action="hikayeduzenle" method="POST">
											<input type="hidden" name="hik_id" value="<?php echo $var->hik_id ?>">
											<button type="submit" name="duzenleme" class="btn btn-success icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-edit"></i>
												</span>
											</button>
										</form>

										<form class="ml-2" action="" method="POST">
											<input type="hidden" name="hik_id" value="<?php echo $var->hik_id ?>">
											<button type="submit" name="hikayesilme" class="btn btn-danger icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-trash"></i>
												</span>
											</button>
										</form>	
										
									</div>
								</td>
							</tr>
						<?php endforeach ?>
					</tbody>

				</table>
			</div>
		</div>
	</div>
</div>
<!--Datatables çıkış-->



<?php include'footer.php' ?>

<script src="<?php echo panel ?>/assets/modules/jquery-ui/jquery-ui.min.js"></script>
<!-- JS Libraies -->
<script src="<?php echo panel ?>/assets/modules/izitoast/js/iziToast.min.js"></script>

<!-- Page Specific JS File -->
<script src="<?php echo panel ?>/assets/js/page/modules-toastr.js"></script>
<script>
/*	var dataTables = $('#hikayetablosu').DataTable({
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true
	});*/

	$("#hikayetablosu").sortable({
		update: function (event, ui) {
			var postdata=$(this).sortable('serialize')
			$.ajax({
				url: '<?php echo ajax ?>',
				type: 'POST',
				data: postdata,
				success:function(donenveri){   
					sonuc=JSON.parse(donenveri);        
					if (sonuc.sonuc=="ok") {
						iziToast.success({
							title: 'İşlem Başarılı!',
							message: 'Sıralama Başarıyla Değiştirildi',
							position: 'topRight' 
						})
					} else {
						iziToast.error({
							title: 'İşlem Başarısız!',
							message: 'Hata: '+sonuc.hata,
							position: 'topRight' 
						})
					}
				}
			});
		}
	});
</script>