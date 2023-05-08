<?php require_once 'header.php';

if (isset($_GET['onay'])) {
	if (isPre()) {
		git(panel,"premium_true");
	}

	eksik_kontrol();

	$sip_kod=sip_kod(0);

	$liste=[
		'kullanici' => ses('kul_id'),
		'tur' => 1,
		'islem_id' => $sip_kod,
		'ucret' => $ayarcek['pre_ucret']
	];

	$veri->direktekle("bakiye_gecici",$liste);


}

?>
<style type="text/css">
	.list-item{
		padding: 5px;
		padding-bottom: 15px;
		font-size: 1.1rem;
		border-bottom: 1px solid lightgray;
	}
</style>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Premium Membership Purchase Process</h5>
				</div>
				<div class="card-body">
					<?php if (isset($_GET['onay'])): ?>
						<?php 
						sayi($ayarcek['pre_ucret']);
						$sip_ucret=$ayarcek['pre_ucret'];

						if ($ayarcek['pos_firma']==0) {
							$tur=1;
							require_once __DIR__.'/../paytr_sayfasi.php'; 
						} elseif ($ayarcek['pos_firma']==1) {
							$pay = new paymax($db);
							$sonuc=$pay->odeme_baslat($sip_kod, 1);

							if ($sonuc['durum']) {
								echo "<iframe src='{$sonuc['link']}' style='width:100%; height:100vh' frameborder='0'></iframe>";
							} else {
								echo '<h4 class="text-center text-danger mb-4 fs-2_5">'.$sonuc['hata']['errorMessage'].'</h4>';
							}
						} elseif ($ayarcek['pos_firma']==2) {
							require_once 'iyzico_sayfasi.php'; 
						}

						?>
						<?php else: ?>
							<div class="text-center">
								<h3><?php echo $ayarcek['pre_ucret']." $" ?> / <small>Yıllık</small></h3>
								<hr>
								<ul class="pricing-feature-list list-unstyled  pl-0 text-center;">
									<li class="list-item">API usage permission, you can process your data in the system with API</li>
									<li class="list-item">You do not need to wait 7 days to create a withdrawal request, you can create a request within 2 days.</li>
									<li class="list-item">Using advanced editor while adding/editing products</li>
									<li class="list-item">SEO title and SEO description field while adding/editing products</li>
									<li class="list-item">Show products in the headline area on the products page</li>
									<li class="list-item">Show your shop in the shop page banner area</li>
								</ul>
								<a href="<?php echo panel ?>/premiumol?onay=true" type="button" class="btn btn-info btn-lg"><i class="fas fa-crown"></i> Buy</a>
							</div>
						<?php endif ?>

					</div>
				</div>
			</div>
		</div>
	</div>

	<?php require_once 'footer.php'; ?>