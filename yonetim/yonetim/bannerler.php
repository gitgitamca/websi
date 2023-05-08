<?php 
include'header.php';
yetkikontrol("e");
if (isset($_POST['bannersilme'])) {
	if ($crud->silme("banner","banner_id",$_POST['banner_id'])) {
		git("bannerler.php","ok");
	} else {
		git("bannerler.php","no");
	}
}



?>

<!-- DataTales Giriş -->
<div class="container-fluid mt-4">
	<div class="card card-primary br-1 shadow">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Bannerler</h6>
		</div>
		<div class="card-body" style="width: 100%">
			<div class="table-responsive">
				<table class="table table-bordered" id="bannertablosutable" width="100%" cellspacing="0">
					<thead>
						<tr> 
							<th>No</th>
							<th>Resim</th>
							<th>Link</th>
							<th>Sıra</th>	
							<th>Durum</th>					
							<th>İşlemler</th>
						</tr>
					</thead>
					
					<tbody id="bannertablosu">
						<?php foreach ($veri->tum_bannerler() as $key => $var): ?>
							<tr style="border-left: 7px solid gray;" id="bannersiralama-<?php echo $var->banner_id ?>">
								<td><?php echo $var->banner_id ?></td>
								<td><img src="<?php echo banner.$var->resim ?>" style="width:270px;"></td>
								<td><a target="_blank" href="<?php echo $var->link; ?>"><?php echo $var->link; ?></a></td>
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

										<form action="bannerduzenle.php" method="POST">
											<input type="hidden" name="banner_id" value="<?php echo $var->banner_id ?>">
											<button type="submit" name="duzenleme" class="btn btn-success icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-edit"></i>
												</span>
											</button>
										</form>

										<form class="ml-2" action="" method="POST">
											<input type="hidden" name="banner_id" value="<?php echo $var->banner_id ?>">
											<button type="submit" name="bannersilme" class="btn btn-danger icon-split">
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
/*	var dataTables = $('#bannertablosu').DataTable({
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true
	});*/

	$("#bannertablosu").sortable({
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
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});


		}
	});
</script>