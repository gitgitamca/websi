<?php 
include'header.php';
oturumkontrol("e");
$islem = new ticket($db);
if (isset($_POST['ticketekle'])) {
	if ($islem->ticketekle($_POST,"1")) {
		header("location:destek-biletleri?durum=ok");
		exit;
	} else {
		header("location:destek-biletleri?durum=no");
		exit;
	}
}

?>
<link rel="stylesheet" href="assets/modules/editor/summernote-bs4.css">


<div class="container-fluid">
	<div class="row d-flex justify-content-center mt-2">
		<div class="col-md-11">
			<div class="card card-primary br-1 shadow" style="">
				<div class="card-header d-flex justify-content-between">
					<h5>Create Support Ticket</h5>
				</div>
				<div class="card-body">
					<form action="" method="POST" accept-charset="utf-8">
						<div class="form-row">
							<div class="form-group col-md-6">	
								<label>Order</label>						
								<select name="sip" class="form-control selectpicker" data-live-search="true">
									<?php foreach ($veri->satici_siparisler() as $key => $var): ?>
										<option 
										<?php 
										if (isset($_GET['sip'])) {
											if ($var->sip_id==$_GET['sip']) {
												echo "selected=''";
											}
										}
										?>
										value="<?php echo $var->sip_id ?>">#<?php echo $var->sip_id." - ".$var->urun_baslik ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="form-group col-md-6">	
								<label>Departmant</label>						
								<select required="" class="form-control" name="ticket_departman">
									<option value="0">Technical Support</option>
									<option value="2">Pre-sales</option>									
								</select>
							</div>
						</div>

						<div class="form-row">						
							<div class="form-group col-md-6">
								<label>Subject</label>	
								<input required="" type="text" class="form-control" name="ticket_konu" placeholder="Support Subject">
							</div>	
							<div class="form-group col-md-6">
								<label>Urgency</label>	
								<select required="" class="form-control" name="ticket_aciliyet">
									<option>Urgent</option>
									<option selected="">Normal</option>
									<option>Not Urgent</option>									
								</select>
							</div>	
						</div>

						<div class="form-row mt-2">
							<div class="col-md-12 form-group">
								<label>Your Message</label>
								<textarea required="" name="ticket_detay" style="min-height: 10rem" class="form-control"></textarea>
							</div>
						</div>	
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="ticketekle">Send</button>
						</div>
					</form>					
				</div>
				
			</div>
		</div>
	</div>
</div>

<?php require 'footer.php'; ?>
