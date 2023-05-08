<?php 
include 'header.php';
if (isset($_GET['yedekle'])) {
	echo $sitelink=$ayarcek['site_link']."/gorev/yedekle.php";
	$aksoyhlc_ch = curl_init($sitelink);

	curl_setopt($aksoyhlc_ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($aksoyhlc_ch, CURLOPT_FOLLOWLOCATION, TRUE);
	curl_setopt($aksoyhlc_ch, CURLOPT_URL, $sitelink);
	$gelen_icerik = curl_exec($aksoyhlc_ch);

	if($gelen_icerik === false) {
		echo 'Curl hatası: ' . curl_error($aksoyhlc_ch);
	} else {
		echo "<script>window.location='yedekler.php?durum=ok'</script>";
	}
	curl_close($aksoyhlc_ch);
}
?>
<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Begin Page Content -->
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-9">			
			<div class="card card-primary br-1 shadow mb-4">
				<div class="card-header py-3">
					<h5 class="m-0 font-weight-bold text-primary">Veritabanı Yedekleri</h5>
					<a class="ml-auto" href="yedekler.php?yedekle=true"><button type="button" class="btn btn-primary">Yedek Oluştur</button></a>
				</div>
				<div class="card-body">
					<div class="alert alert-danger fs-0-80">
						<strong>DİKKAT:</strong> Veritabanı yedeğini almak sizin sorumluluğunuzdadır. Script üzerinden oluşturduğunuz veritabanında herhangi bir sorun çıkma <b>ihtimaline</b> karşı manuel olarak Phpmyadmin üzerinden veya cpanelden vs. kendi yedeğinizi de almayı ihmal etmeyin.
					</div>		
					<div class="table-responsive">
						<table class="table table-bordered" id="yorumtablosu">
							<thead>
								<tr> 
									<th>No</th>
									<th>İsim</th>
									<th>Tarih</th>
									<th>İşlem</th>
								</tr>
							</thead>
							<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
							<tbody>
								<?php 
								$say=0;
								$yedeklistesi=array();
								if(is_dir("yedekler/"))
								{
									if($handle = opendir("yedekler/"))
									{
										while(($file = readdir($handle)) !== false)
										{
										if($file != "." && $file != ".." && $file != "Thumbs.db"/*Bazı sinir bozucu windows dosyaları.*/)
										{
											$dosya=array(
												'isim' => $file,
												'tarih' => filectime("yedekler/".$file)
											);
											array_push($yedeklistesi, $dosya);
										}
									}
									closedir($handle);
								}
							}

							array_multisort(array_column($yedeklistesi, 'tarih'), SORT_DESC, $yedeklistesi);

							foreach ($yedeklistesi as $yedek) { $say++?>
								<tr style="border-left: 7px solid gray;">
									<td><?php echo $say; ?></td>
									<td><a href="yedekler/<?php echo $yedek['isim'] ?>" download=""  class="font-weight-bold" style="font-size: 0.9rem"><?php echo $yedek['isim']; ?></a></td>
									<td><?php echo 
									date("Y-m-d H:i:s", $yedek['tarih']); ?></td>
									<td>
										<div class="d-flex justify-content-center">
											<a class="ml-2" href="yedekler/<?php echo $yedek['isim'] ?>" download="">
												<button type="button" class="btn btn-success icon-split">
													<span class="icon">
														<i class="fas fa-download"></i>
													</span>
												</button>
											</a>
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
	</div>
</div>
</div>
<!-- End of Main Content -->
<?php include 'footer.php' ?>

<script src="assets/modules/datatables/jquery.dataTables.min.js"></script>
<script src="assets/modules/datatables/dataTables.bootstrap4.min.js"></script>

<script>
	var dataTables = $('#yorumtablosu').DataTable({
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true,
	});
</script>

<?php if (@$_GET['durum']=="ok")  {?>  
	<script>
		Swal.fire({
			type: 'success',
			title: 'İşlem Başarılı',
			text: 'İşleminiz Başarıyla Gerçekleştirildi',
			showConfirmButton: false,
			timer: 2000
		})
	</script>
	<?php } ?>