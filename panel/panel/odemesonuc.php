<?php 
require_once 'header.php';

if ($_GET['sonuc']=='basarili') {
	$kul=$veri->kullanici(ses('kul_id'));
	foreach ($kul as $key => $value) {
		$_SESSION[$key]=$value;
	}
}

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Payment</h5>
				</div>
				<div class="card-body">
					<?php if ($_GET['sonuc']=='basarili'): ?>
						<div class="alert alert-success">
							<h3 class="text-center mb-0">Premium Membership Successful</h3>
						</div>
						<?php else: ?>
							<div class="alert alert-danger">
								<h3 class="text-center mb-0">Error Occurred During Payment Process</h3>
							</div>
						<?php endif ?>
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php require_once 'footer.php'; ?>