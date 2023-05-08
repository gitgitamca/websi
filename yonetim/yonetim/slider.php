<?php 
include'header.php';
yetkikontrol("e");
if (isset($_POST['slidersilme'])) {
	if ($crud->silme("slider","slider_id",$_POST['slider_id'])) {
		header("location:slider.php?durum=ok");
		exit;
	} else {
		header("location:slider.php?durum=no");
		exit;
	}
}



?>

<!-- DataTales Giriş -->
<div class="container-fluid mt-4">
	<div class="card card-primary br-1 shadow">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Slider</h6>
		</div>
		<div class="card-body" style="width: 100%">
			<div class="table-responsive">
				<table class="table table-bordered" id="slidertablosu" width="100%" cellspacing="0">
					<thead>
						<tr> 
							<th>No</th>
							<th>Başlık</th>
							<th>Açıklama</th>
							<th>Resim</th>
							<th>Buton</th>
							<th>Sıra</th>	
							<th>Durum</th>					
							<th>İşlemler</th>
						</tr>
					</thead>
					
					<tbody  id="slidertablosu">
						<?php foreach ($veri->tum_sliderler() as $key => $var): ?>
							<tr style="border-left: 7px solid gray;" id="slidersiralama-<?php echo $var->slider_id ?>">
								<td><?php echo $var->slider_id ?></td>
								<td><?php echo $var->baslik ?></td>
								<td><?php echo $var->aciklama ?></td>
								<td><img src="<?php echo dosya.$var->resim ?>" style="width:220px;"></td>
								<td><?php echo $var->buton_yazi ?></td>
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

										<form action="sliderduzenle.php" method="POST">
											<input type="hidden" name="slider_id" value="<?php echo $var->slider_id ?>">
											<button type="submit" name="duzenleme" class="btn btn-success icon-split">
												<span class="icon text-white-60">
													<i class="fas fa-edit"></i>
												</span>
											</button>
										</form>

										<form class="ml-2" action="" method="POST">
											<input type="hidden" name="slider_id" value="<?php echo $var->slider_id ?>">
											<button type="submit" name="slidersilme" class="btn btn-danger icon-split">
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

<script src="assets/modules/jquery-ui/jquery-ui.min.js"></script>
<!-- JS Libraies -->
<script src="assets/modules/izitoast/js/iziToast.min.js"></script>

<!-- Page Specific JS File -->
<script src="assets/js/page/modules-toastr.js"></script>
<script>
/*	var dataTables = $('#slidertablosu').DataTable({
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true
	});*/

	$("#slidertablosu").sortable({
		update: function (event, ui) {
			var postdata=$(this).sortable('serialize')
			$.ajax({
				url: 'classes/ajax.php',
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