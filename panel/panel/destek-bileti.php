<?php 
require 'header.php';
saticimi("e");
$islem = new ticket($db);

if (isset($_GET['ticket_id'])) {
	sayi($_GET['ticket_id']);
}


if (isset($_GET['ticket_id'])) {
	ticket_kontrol($_GET['ticket_id'],true);
	$ticketbilgi=$islem->tekil("ticket","ticket_id",$_GET['ticket_id']);
}

$kullanici=$islem->tekil("kullanicilar","kul_id",$ticketbilgi['ticket_uye']);


if (isset($_POST['ticketyanitla'])) {
	if ($islem->ticketyanitla($_POST,1,$_FILES)) {
		git("destek-biletleri","ok");
	} else {
		git("destek-biletleri","no");
	}
}

if (isset($_POST['ticketkapat'])) {
	if ($islem->ticketkapat($_POST,true)) {
		git("destek-biletleri","ok");
	} else {
		git("destek-biletleri","no");
	}
}



if (!$ticket=$islem->coklu("ticket_bag", "ticket_id", $_GET['ticket_id'])) {
	git(panel,"no");
} 
?>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Reply Support Ticket</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="" method="POST" accept-charset="utf-8" enctype="multipart/form-data">					
					<input type="hidden" name="ticket_id" value="<?php echo $_GET['ticket_id'] ?>">
					<div class="form-row mt-2">
						<div class="form-group col-md-12">
							<label>Your Message</label>
							<textarea name="ticket_detay" class="form-control" style="min-height: 10rem"></textarea>
						</div>
					</div>
					<div class="form-row">
						<button type="submit" class="btn btn-primary btn-lg" name="ticketyanitla">Reply</button>
					</div>
				</div>		
			</form>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row mt-4 ticket-reverse">
		<div class="col-md-9">
			<div class="card br-1 card-primary shadow-lg">
				<div class="card-header d-flex justify-content-between">
					<h5><?php echo $ticketbilgi['ticket_konu'] ?></h5>
					<?php 
					if (strlen($ticketbilgi['sip'])!=0) { ?>
						<a target="_blank" href="siparis?sip=<?php echo $ticketbilgi['sip'] ?>" type="button" class="btn btn-info"><i class="far fa-bags-shopping mr-2"></i>Order Details</a>
					<?php }

					?>
					<?php if ($ticketbilgi['ticket_durum']==0): ?>
						<span class="badge badge-danger">Support Ticket Closed | Reply Ticket To Open Again</span>
						<?php else: ?>
							
						<?php endif ?>
						<div class="d-flex flex-row">
							<?php if ($ticketbilgi['ticket_durum']!=0): ?>
								<form action="" method="POST" accept-charset="utf-8">							
									<input type="hidden" name="ticket_id" value="<?php echo $_GET['ticket_id'] ?>">
									<button type="submit" class="btn btn-danger btn-lg btn-icon icon-left" name="ticketkapat"><i class="fas fa-power-off"></i>Close Support Ticket</button>
								</form>
							<?php endif ?>
							<button type="button" class="btn btn-primary btn-lg btn-icon icon-left ml-2" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i>Reply</button>
						</div>
					</div>

					<div class="card-body">
						<?php 
						rsort($ticket);
						foreach ($ticket as $value) { 			
							$resimler=$islem->coklu("ticket_bag_dosya", "ticket_mesaj_id", $value['ticket_bag_id']);
							if ($value['ticket_gonderen']=="0") { ?>
								<div class="col-md-11 col-sm-12 mx-auto my-4">
									<div class="card br-1 card-success">
										<div class="card-header d-flex justify-content-between text-success" style="color: #28a745!important">
											<div>
												<h6><i class="fas fa-user"></i> <?php echo $kullanici['kul_isim']." ".$kullanici['kul_soyisim'] ?> <small>(Buyer)</small> </h6>				
											</div>
											<span><?php echo $value['ticket_gonderilme_tarihi'] ?></span>
										</div>

										<div class="card-body">
											<?php echo nl2br($value['ticket_detay']) ?>
										</div>
									</div>
								</div>

							<?php } else { ?>

								<div class="col-md-11 col-sm-12 mx-auto my-4">
									<div class="card br-1 card-info" style="background-color: rgba(160, 243, 255, 0.3)!important;">
										<div class="card-header d-flex justify-content-between text-info" style="">
											<div>
												<h6><i class="fas fa-user"></i> <?php echo $ayarcek['site_baslik'] ?> <small>(Seller)</small> </h6>				
											</div>
											<span><?php echo $value['ticket_gonderilme_tarihi'] ?></span>
										</div>

										<div class="card-body">
											<?php echo nl2br($value['ticket_detay']) ?>
										</div>
									</div>
								</div>
							<?php }
						}	
						?>
					</div>
				</div>
			</div>
			<div class="col-md-3 ticket-detay-alani">
				<div class="card br-1 card-primary shadow-lg">
					<div class="card-header">
						<div>
							<h6>Support Ticket Details</h6>
						</div>
					</div>

					<div class="card-body">
						<b>Urgency: </b><?php echo $ticketbilgi['ticket_aciliyet'] ?> 
						<hr>
						<b>Subject: </b><?php echo $ticketbilgi['ticket_konu'] ?> 
						<hr>
						<b>Date of upload: </b><?php echo $ticketbilgi['ticket_tarih'] ?> 
						<hr>
						<b>Status: </b><?php if ($ticketbilgi['ticket_durum']==0) {
							echo "<span class='badge badge-danger'>Closed</span>";
						} elseif ($ticketbilgi['ticket_durum']==1) {
							echo "<span class='badge badge-success'>Customer Answered</span>";
						} elseif ($ticketbilgi['ticket_durum']==2) {
							echo "<span class='badge badge-primary'>Seller Answered</span>";
						} elseif ($ticketbilgi['ticket_durum']==3) {
							echo "<span class='badge badge-warning'>On Hold</span>";
						} ?> 
						<hr>
						<b>Last Reply: </b><?php	echo $ticketbilgi['ticket_son_yanit_tarih']; 
						?> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php require 'footer.php'; ?>