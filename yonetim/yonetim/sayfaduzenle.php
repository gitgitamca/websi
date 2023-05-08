<?php require_once 'header.php';
yetkikontrol(e);
$islem = new genel($db);
if (isset($_POST['sayfaguncelle'])) {
	if ($islem->direktguncelle("sayfalar","sayfa_id",$_POST['sayfa_id'], $_POST, "sayfaguncelle", "sayfa_id")) {

		$metin=file_get_contents("sayfa_metin.txt");
		$dosya_ismi=__DIR__."/../".$_POST["link"].'.php';

		touch($dosya_ismi);

		$dosya = fopen($dosya_ismi, 'w');
		fwrite($dosya, $metin);
		fclose($dosya);

		le(d,$_POST['link']." isimli sayfayı güncelledi.");

		git("sayfalar","ok");
	} else {
		git("sayfalar","no");
	}
}

$sayfa = $crud->tek("SELECT * FROM sayfalar WHERE sayfa_id={$_POST['sayfa_id']}");

?>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-10 mx-auto">
			<div class="card card-primary br-1 shadow mb-4" >
				<div class="card-header py-3">
					<h5 class="m-0 font-weight-bold text-primary">Sayfa Güncelle</h5>
				</div>
				<div class="card-body">
					<form id="form" action="" method="POST" accept-charset="utf-8" enctype="multipart/form-data" class="needs-validation">


						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Sayfa Başlığı</label>
								<input placeholder="Sayfa Başlığı" type="text" required="" id="baslik" value="<?php echo $sayfa['baslik'] ?>" name="baslik" class="form-control" autocomplete="off">
							</div>
							<div class="form-group col-md-6">
								<label>Sayfa Linki <small>(Sayfa Başlığına Göre Oluşturulur - Değiştirilemez)</small></label>
								<input value="<?php echo $sayfa['link'] ?>" type="text" class="form-control" disabled="" id="link" placeholder="Sayfa Linki" aria-label="Sayfa Linki" aria-describedby="olustur">
							</div>
						</div>

						<input type="hidden" name="sayfa_id" value="<?php echo $sayfa['sayfa_id'] ?>">

						<div class="form-row">
							<div class="form-group col-md-12">
								<label>Sayfa İçeriği</label>
								<textarea class="form-control" id="editor" placeholder="Sayfa İçeriği" name="icerik"><?php echo $sayfa['icerik'] ?></textarea>
							</div>
						</div>
						<div class="text-center">
							<button name="sayfaguncelle" type="submit" class="btn btn-primary btn-lg"><i class="fas fa-save"></i>&nbsp; Kaydet</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>

<script>


	$(document).ready(function() {

	/*	
		function kontrol() {
			$.ajax({
				url: 'classes/ajax.php',
				type: 'POST',
				data: {'sayfa_kontrol': 'sayfa_kontrol','link':$('#link').val()},
				success:function (gelenveri) {
					var veri = $.parseJSON(gelenveri);
					if (veri.sonuc!="ok") {
						bildirim("error","Varolan Sayfa","Bu linke ait bir sayfanız bulunmaktadır lütfen sayfa başlığını veya linkini değiştirin.");
						$("#onay").val("0");
					} else {
						$("#onay").val("1");
					}
				}
			});
		}
		

		$('#baslik').bind('keyup',function() { 
			$("#link").val(toSeoUrl($(this).val()));
			kontrol();

		});

		$('#link').bind('keyup',function() { 
			$(this).val(toSeoUrl($(this).val()));
			kontrol();
		});

		$("#olustur").click(function (event) {
			console.log()
			$("#link").val(toSeoUrl($("#baslik").val()));
			kontrol();
		});


		$("#form").submit(function(event) {
			if ($("#onay").val()=="0") {
				event.preventDefault();
				bildirim("error","Varolan Sayfa","Bu linke ait bir sayfanız bulunmaktadır lütfen sayfa başlığını veya linkini değiştirin.");
			}
		});
		*/


	});




</script>