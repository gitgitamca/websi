<?php 
require 'header.php'; 
require_once 'classes/class-genel.php';

$crud = new genel($db);

if (isset($_POST['hesapyukle'])) {
	$gecici_isim = $_FILES['musteri_tablo']["tmp_name"];
	$dosya_ismi = $_FILES['musteri_tablo']["name"];
	$isim="hesaptablosu.xlsx";
	$sonuc=move_uploaded_file($gecici_isim, "$isim");		
	if ($sonuc) {
		echo "<div class='font-weight-bold fs-1 text-success'>1.File Upload Successful.</div> <hr> <div class='font-weight-bold fs-1 text-danger'>2.Control Process Started <b>DO NOT close the page</b></div>";
		include_once 'classes/class-excel.php';
		if ( $xlsx = SimpleXLSX::parse("$isim")) {
			$satirlar=$xlsx->rows();
			unset($satirlar[0]);
			foreach ($satirlar as $key => $value) {
				$so=urun_kontrol($value[0],h);
				
				if ($so) {
					$eklemesonuc=$crud->direktekle("hesaplar", [
						'urun' => $value[0],
						'hesap_durum' => 1,
						'son_kullanim' => $value[1],
						'icerik' => $value[2]
					]);
				} else {
					echo "<hr><div class='font-weight-bold fs-1 text-warning'>{$value[0]} The product with ID does not belong to you. Please only upload accounts for your products.</div>";
				}
				
			}

			
			echo "<hr><div class='font-weight-bold fs-1 text-primary'>3. The process is finished you can close the page <small>Make sure you don't upload the same file again</small></div>";
			
			unlink("".$isim);

		} else {
			echo SimpleXLSX::parseError();
		}
	} else {
		echo "<br><div class='font-weight-bold text-danger'>Operation Failed</div>";
	}
}


?>

<style>
	.fs-1{
		font-size: 1.2rem
	}
</style>

<div class="container-fluid mt-4">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-body">
					<form action="" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate="">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Excel File</label>
								<input type="file" name="musteri_tablo" class="form-control">
							</div>
						</div>
						<button type="submit" class="btn btn-primary" name="hesapyukle">Upload</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require 'footer.php'; ?>