<?php require_once 'header.php';

?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary br-1">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary mx-auto">API Infos</h5>
				</div>
				<div class="card-body text-center">
					<h4>API KEY: <span class="text-danger"><?php echo ses('api_key') ?></span></h4>
					<hr>
					<p>You can download the document about API access.</p>
					<br>
					<a href="api_dokuman.docx" download="" class="btn btn-primary"><i class="fa fa-download"></i> Download</a>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once 'footer.php'; ?>