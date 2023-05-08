<?php 

require_once 'panel/config.php';
$meta_baslik="Register | ".$ayarcek['site_baslik'];
$meta_aciklama="Register | ".$ayarcek['site_aciklama'];
$meta_one_cikan=dosya.$ayarcek['site_logo'];

require_once 'header.php'; 
require_once 'topbar.php';
require_once 'ust_menu.php';

if (oturumkontrol("h")) {
	if (isset($_GET['satici'])) {
		git(site."magaza-basvuru","islem");
	}
};


$_SESSION['fb_kayit_token']=token_olustur();
$_SESSION['gg_kayit_token']=token_olustur();

unset($_SESSION['access_token']);
unset($_SESSION['FBRLH_state']);

$islem = new kullanici($db);
if (isset($_POST['oturumac'])) {
	$sonuc=$islem->giris($_POST['kul_mail'],$_POST['kul_sifre'],@$_POST['beni_hatirla']);
}
if (isset($_COOKIE['aksoyhlcoturum'])) {
	$giris=json_decode($_COOKIE['aksoyhlcoturum']);
}


?>

<section class="tf-section login-page">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="form-create-item-content">
					<div class="form-create-item">
						<div class="sc-heading">
							<h3>Register</h3>
							<!-- <p class="desc">Most popular gaming digital nft market place </p> -->
						</div>
						<form id="create-item-1" action="" onsubmit="return false;" method="POST" accept-charset="utf-8">
							<div class="form-row">
								<div class="col-md-6">
									<input name="kul_isim" autocomplete="off" type="text" placeholder="Name" required="">
								</div>
								<div class="col-md-6">
									<input name="kul_soyisim" autocomplete="off" type="text" placeholder="Surname" required="">
								</div>
							</div>
							<div class="form-row">
							<div class="col-md-6">
									<input id="kul_telefon" name="kul_telefon" autocomplete="off" type="text" placeholder="Phone Number">
								</div>
								<div class="col-md-6">
									<input name="username" autocomplete="off" type="text" placeholder="Nickname" required="">
								</div>
							</div>
							<input name="kul_mail" autocomplete="off" type="email" placeholder="E-mail address" required="">
							<input name="kul_sifre" autocomplete="off" type="password" placeholder="Password" required="">
							
							<div class="input-group style-2 ">
								<div class="btn-check">
									<input type="checkbox" value="1" id="html" name="sozlesme">
									<label for="html"> By registering, you agree to our </label><a target="_blank" href="privacypolicy" style="color: var(--primary-color3) !important">&nbsp;Privacy Policy</a>
								</div>
							</div>
							<div class="input-group style-2 ">
								<div class="btn-check">
									<input type="checkbox" value="1" id="html" name="sozlesme">
									<label for="html"> By registering, you agree to our </label><a target="_blank" href="user-policy" style="color: var(--primary-color3) !important">&nbsp;User Policy</a>
								</div>
							</div>
							<div class="d-flex justify-content-center mb-4">
								<?php $rec->goster() ?>
							</div>
							<button name="oturumac" type="button" class="sc-button style letter style-2 kayit_buton"><span>Register</span> </button>
							<div class="text-center mt-4">
								<?php if ($ayarcek['fb_giris_onay']==1): ?>
									<a href="facebook/index.php?token=<?php echo $_SESSION['fb_kayit_token'] ?>&islem=kayit" type="button" class="btn btn-primary fs-50 br-1 p-3"><i class="fab fa-facebook"></i> Register via Facebook</a>
								<?php endif ?>


								<?php if ($ayarcek['gg_giris_onay']==1): ?>
									<a href="google/index.php?token=<?php echo $_SESSION['gg_kayit_token'] ?>&islem=kayit" type="button" class="btn btn-danger fs-50 br-1 p-3"><i class="fab fa-google"></i> Register via Google</a>
								<?php endif ?>
							</div>
							<div class="text-center mt-4">
								<a href="giris" type="button" class="sc-button style letter style-2 fs-2">Login</a>
							</div>
						</form>
						
						<div class="form-group">
							<?php 
							if (isset($_POST['oturumac'])) {                  
								if (@!$sonuc) { ?>
									<div class="alert alert-danger p-4 text-center">
										<?php  echo "<b>Failed!:</b> ".$_SESSION['hata']; ?>
									</div>
								<?php } else { ?>
									<div class="alert alert-success text-center fs-2 p-5 font-weight-bold">
										<?php echo "Successfuly Logged in!"; ?>
										<script type="text/javascript">
											function yonlendir() {
												location.href="index.php"
											}
											setTimeout(function(){yonlendir(); }, 1000);
										</script>                   
									</div>
								<?php }} ?>
							</div>
						</div>
						<!--<div class="form-background">
							<img src="register.webp" alt="">
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<?php require_once 'footer.php'; ?>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/inputmask/4.0.9/jquery.inputmask.bundle.min.js"></script>
	<?php $rec->js_dogrulama("create-item-1"); ?>
	<script>
		
		$(document).ready(function() {
			$("#kul_telefon").inputmask({"mask": "0 (999) 999-9999"});
		});

		$(document).ready(function() {


			
			$(".kayit_buton").on("click", function () {     

				<?php if ($ayarcek['bot_durum']==1): ?>
					if (grecaptcha.getResponse() == ""){
						bildirim("error"," Verify reCAPTCHA","You need to verify that you are not a bot");
					} else {
						kayit_asamasi();
					}
					<?php else: ?>
						kayit_asamasi();
				<?php endif ?>


				
			});
		});

		function kayit_asamasi() {
			var telefon = $("#kul_telefon").inputmask("unmaskedvalue");
			$("#kul_telefon").inputmask('remove')
			$("#kul_telefon").val(telefon);


			sozlesme = "0";
			$(":checkbox").each(function () {
				ischecked = $(this).is(":checked");
				if (ischecked) {
					sozlesme = $(this).val();
				} else {
					sozlesme = "0";
				}
			});
			$.ajax({
				type:"POST",
				url:"panel/classes/ajax.php",
				data: $('#create-item-1').serialize() + "&islem=kayitol&gizlilik_sozlesme=" + sozlesme,
				success:function(donenveri){
					var veri = $.parseJSON(donenveri);
					if (veri.durum=="ok") {

						bildirim("success","Registration Successful","Please wait redirecting...");

						setTimeout(function () {
							window.location.href="<?php echo yol ?>/?kayit_basarili"
						}, 1000);

					} else {
						$("#kul_telefon").inputmask({"mask": "0 (999) 999-9999"});
						bildirim("error","Failed!",veri.mesaj);
					}

				}
			});
		}
	</script>