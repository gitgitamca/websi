<?php 

require_once 'panel/config.php';
$meta_baslik="Login | ".$ayarcek['site_baslik'];
$meta_aciklama="Login | ".$ayarcek['site_aciklama'];

require_once 'header.php'; 
require_once 'topbar.php';
require_once 'ust_menu.php';

if (oturumkontrol("h")) {
	header("location:index.php?oturum_var");
	exit;
};


$islem = new kullanici($db);
if (isset($_POST['oturumac'])) {
	$sonuc=$islem->giris($_POST['kul_mail'],$_POST['kul_sifre'],@$_POST['beni_hatirla']);
}
if (isset($_COOKIE['aksoyhlcoturum'])) {
	$giris=json_decode($_COOKIE['aksoyhlcoturum']);
}


?>

<style type="text/css" media="screen">
	.pinlogin-field{
		padding: 0px !important;
		font-size: 2.7rem !important;
		margin-right: 3px;
		text-align: center;
		border-radius: 0.5rem;
		width: 100%;
		border:1px solid white !important;
		height: 45px;
	}

	#lock {
		width: 100%;
		height: calc(100% - 15vh);

		min-height: 120px;
	}

	.stars {
		margin: auto;
		display: block;
	}
	.guvenlik-kodu-alani{
		background: #232234;
		background-image: linear-gradient(245deg, #6345ED 38.12%, #DC39FC 81.74%);
		padding: 2rem; 
		border-radius: 2rem;
	}

	.swal2-container{
		z-index: 9999999999;
	}
	#pinlogin{
		max-width: 30rem !important;
	}
</style>
<section class="tf-section login-page">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="form-create-item-content">
					<div class="form-create-item">
						<div class="sc-heading">
							<h3>Login</h3>
							<!-- <p class="desc">Most popular gaming digital nft market place </p> -->
						</div>
						<form id="girisformu" class="form" action="" method="POST" accept-charset="utf-8">
							<input  class="form-control mt-4" name="kul_mail" autocomplete="off" value="<?php echo isset($_COOKIE['aksoyhlcoturum'])?$giris->kul_mail:'' ?>" type="email" placeholder="E-Mail Adress"
							required="">
							<input class="form-control mt-4" name="kul_sifre" autocomplete="off" value="<?php echo isset($_COOKIE['aksoyhlcoturum'])?$giris->kul_sifre:'' ?>" type="password" placeholder="Password"
							required="">
							<div class="d-flex justify-content-around">
								<div class="input-group style-2 p-0">
									<div class="btn-check">
										<input  <?php if (isset($_COOKIE['aksoyhlcoturum'])) {echo "checked" ;} ?>  type="checkbox" value="1" id="html" name="beni_hatirla">
										<label for="html">Remember details</label>
									</div>
								</div>
								<div class="w-100 d-flex justify-content-end align-items-center text-right">
									<a href="sifresifirla">Forgot Password?</a>
								</div>
							</div>
							<div class="d-flex justify-content-center mb-4">
								<?php $rec->goster() ?>
							</div>
							<button name="oturumac" type="submit" class="sc-button style letter style-2"><span>Login</span> </button>
							<div class="text-center mt-4">
								<?php if ($ayarcek['fb_giris_onay']==1): ?>
									<a href="facebook/index.php?token=<?php echo $_SESSION['fb_kayit_token'] ?>&islem=giris" type="button" class="btn btn-primary fs-50 br-1 p-3"><i class="fab fa-facebook"></i> Login via Facebook</a>
								<?php endif ?>


								<?php if ($ayarcek['gg_giris_onay']==1): ?>
									<a href="google/index.php?token=<?php echo $_SESSION['gg_kayit_token'] ?>&islem=giris" type="button" class="btn btn-danger fs-50 br-1 p-3"><i class="fab fa-google"></i> Login via Google</a>
								<?php endif ?>
							</div>
							<div class="text-center mt-4">
								<a href="kayit" type="button" class="sc-button style letter style-2 fs-2">Register</a>
							</div>
						</form>
						<div class="form-group">
							<?php 
							if (isset($_POST['oturumac'])) {                  
								if (@!$sonuc) { ?>
									<div class="alert alert-danger mt-4 p-4 text-center">
										<?php  echo "<b>Failed!:</b> ".$_SESSION['hata']; ?>
									</div>
								<?php } else { ?>
									<div class="alert alert-success mt-4 text-center fs-2 p-5 font-weight-bold">
										<?php echo "Sign in Successful"; ?>
										<script type="text/javascript">
											function yonlendir() {
												<?php if (@$_SESSION['auth_onay']==1): ?>
													$('#exampleModal').modal({backdrop: 'static', keyboard: false})
													<?php else: ?>
														location.href="<?php echo yol ?>";
													<?php endif ?>

												}
												setTimeout(function(){yonlendir(); }, 1000);
											</script>                   
										</div>
									<?php }} ?>
								</div>
							</div>
							<!--<div class="form-background">
								<img src="dosyalar/img-login.webp" alt="<?php echo $ayarcek['site_baslik'] ?>">
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</section>

		<?php if (@$_SESSION['auth_onay']=="1"): ?>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content guvenlik-kodu-alani mx-auto">
						<div class="modal-body">
							<div class="justify-content-center text-center">
								<div class="text-center mb-3">
									<h5>Enter Security Code</h5>
								</div>
								<div class="d-flex justify-content-center">
									<!-- <input type="text" name="mycode" id="pincode-input1"> -->
									<div id="pinwrapper"></div>

								</div>
								<div class="text-center mt-3">
								If you do not know the security code, contact with the mail you are a member of the site.
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		<?php endif ?>
		<!-- General JS Scripts -->


		<?php require_once 'footer.php'; ?>

		<script src="panel/assets/modules/pin/jquery.pinlogin.js"></script>

		<?php $rec->js_dogrulama("girisformu");	?>


		<?php if (@$_SESSION['auth_onay']==1): ?>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#pinwrapper').pinlogin({
						fields : 6,
						autofocus :false,
						reset :true,
						hideinput :false,
						complete :function(pin){
							console.log("code entered: " + pin);
							$.ajax({
								url: '<?php echo ajax ?>',
								type: 'POST',
								data: "kimlikdogrulama=kimlikdogrulama&kod="+pin,
								success:function (donenveri) {
									var veri = $.parseJSON(donenveri);
									if (veri.durum=="ok") {
										$('#exampleModal').modal('hide');
										location.href="index.php";
									} else {
										bildirim("error","Code Error","Your security code is incorrect if you don't know the security code, contact system administrator")
									}
								}
							});
						},
					});


					$("#pinlogin").addClass("d-flex flex-row");
					$("#pinlogin").css('max-width', '20rem');
				});

			</script>
			<?php endif ?>