<?php require_once 'header.php'; ?>

<?php $rapor->kosul(); ?>
<style type="text/css" media="screen">
	.xxxxxx{
		width: 6rem !important;
		height: 6rem !important;
		border-radius:0.5rem;
	}
	.yyyyy{
		font-size: 1rem !important;
	}
	.icon {
		margin-top: 2rem;
		font-size: 2rem;
	}
</style>


<hr class="hr-text" data-content="Reports">

<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Total Profit</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->genel_toplam_gelir()," $"); ?>
					</div>
				</div>
			</div>
		</div> 


		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-danger">
					<i class="fas fa-hand-holding-usd"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Total Withdraw</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->cekilen_bakiye()." $" ?>
					</div>
				</div>
			</div>
		</div>


		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-success">
					<i class="fas fa-wallet"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Current Balance</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->kalan_bakiye()." $" ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row justify-content-center">
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Today's Sales</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->bugun_siparis()); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Today's Profit</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->bugun_tl()," $"); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Sales (this month)</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->buay_siparis()); ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Profit (this month)</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->buay_tl()," $"); ?>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>

<hr class="hr-text" data-content="Modüller">

<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<a href="urunler">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-primary icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-tasks icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Items</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="hesaplar">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-success icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-user-circle icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Accounts</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>

		<div class="col-md-3">
			<a href="siparisler">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-warning icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-store icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Orders</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="degerlendirmeler">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-danger icon-split xxxxxx">
								<span class="icon text-white">
									<i class="far fa-star icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Feedbacks</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="destek-biletleri">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-info icon-split xxxxxx">
								<span class="icon text-white">
									<i class="far fa-life-ring icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Support Tickets</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="kuponlar">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-primary icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-percent icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Coupon Menu</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="apibilgileri">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-success icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-coins icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">API Infos</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


		<div class="col-md-3">
			<a href="talepler">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-secondary icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-coins icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Balance Withdrawal Requests</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>

		<div class="col-md-3">
			<a href="rapor">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-danger icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-chart-bar icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Reports</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>

		<div class="col-md-3">
			<a href="notlar">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-warning icon-split xxxxxx">
								<span class="icon text-white">
									<i class="fas fa-file-alt icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Notes</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>

		<div class="col-md-3">
			<a target="_blank" href="<?php echo site."profil" ?>">
				<div class="card shadow br-1">
					<div class="card-body">
						<div class="product-item">
							<div class="product-image br-1 bg-info icon-split xxxxxx">
								<span class="icon text-white">
									<i class="far fa-user-circle icon"></i>
								</span>
							</div>
							<div class="product-details">
								<div class="product-name yyyyy">Profile</div>
							</div>  
						</div>
					</div>
				</div>
			</a>
		</div>


	</div>
</div>

<?php require_once 'footer.php'; ?>