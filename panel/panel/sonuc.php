<?php
include 'config.php';

$meta_baslik=$ayarcek['site_baslik'];
$ekmeta='<meta name="robots" content="nofollow,noindex"/>';


?>

<link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/aksoyhlc.css">

<div class="container-fluid">
	<div class="row">
		<div class="col-md-7 mx-auto mt-5">
			<div>




				<?php if ($_GET['sonuc']=="basarili"): ?>
					<div class="alert alert-info text-center fs-25">
						Payment successfully completed click <b>"Update Balance"</b> from left menu.
					</div>
					<?php else: ?>
						<div class="alert alert-danger text-center fs-25">
						Your payment failed contact system administrator.
						</div>
					<?php endif ?>

					

				</div>
				<div class="text-center">
					<a href="index.php" class="ml-2"><button type="button" class="btn btn-primary btn-lg">Home Page</button></a>
				</div>
			</div>
		</div>
	</div>


	<script src="assets/modules/popper.js"></script>
	<script src="assets/modules/tooltip.js"></script>
	<script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>

</body>
</html>