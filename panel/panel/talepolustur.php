<?php 
include'header.php';
oturumkontrol("e");
if (isset($_POST['talepolustur'])) {
	
	$fiyat=0;
	
	foreach ($_POST['sip'] as $key => $value) {
		sayi($value);
		$crud->tek("UPDATE siparis SET cekim=2 WHERE sip_id=$value");
		$ucret=$crud->tek("SELECT (ucret-komisyon_alinan) as uc FROM siparis WHERE sip_id=$value")['uc'];
		$fiyat=$fiyat+$ucret;
	}

	$_POST['kul']=ses("kul_id");
	$_POST['ucret']=$fiyat;
	$_POST['sip'] = implode(",",$_POST['sip']);

	if ($crud->direktekle("talep",$_POST,"talepolustur")) {

		$baslik="Withdrawal Request";
		$mesaj='"'.ses('magaza_isim').'" store wanted to withdraw '.$_POST['ucret']." $"."";

		$bildirim->telegram($baslik,$mesaj, $ayarcek['admin_tg']);
		$bildirim->onesignal($baslik,$mesaj, [$ayarcek['admin_mobil']]);
		$bildirim->onesignal_web($baslik,$mesaj, [$ayarcek['admin_web']]);

		git("talepler","ok");
	} else {
		git("talepler","no");
	}
}

?>


<div class="container-fluid">
	<div class="row d-flex justify-content-center mt-2">
		<div class="col-md-11">
			<div class="card card-primary br-1 shadow" style="">
				<div class="card-header d-flex justify-content-between">
					<h5 class="text-primary">Make withdraw request</h5>
					<div class="badge badge-success fs-1">
						Total amount: <span id="ucret_alani">-- Select Orders --</span> 
					</div>
				</div>
				<div class="card-body">
					<form action="" method="POST" accept-charset="utf-8">
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">	
								<label>Orders You Want To Withdraw For <small>(You can withdraw after 7 days)</small></label>			
								<select required="" onchange="hesapla()" id="sipler" name="sip[]" multiple="" class="form-control selectpicker" data-live-search="true" data-actions-box="true">
									<?php foreach ($veri->satici_siparisler(1) as $key => $var): ?>
										<option 
										<?php 
										if (isset($_GET['sip'])) {
											if ($var->sip_id==$_GET['sip']) {
												echo "selected=''";
											}
										}
										?>
										data-ucret="<?php echo ($var->ucret-$var->komisyon_alinan) ?>" value="<?php echo $var->sip_id ?>"><?php echo ($var->ucret-$var->komisyon_alinan)." $"."&nbsp;&nbsp; - &nbsp;&nbsp;#".$var->sip_id." - ".$var->urun_baslik ?></option>
									<?php endforeach ?>
								</select>								
							</div>
						</div>

						<div class="form-row">						
							<div class="form-group col-md-6 mx-auto">
								
								<label>Username</label>	
								<input required="" type="text" class="form-control" value="<?php echo ses('kul_isim')." ".ses('kul_soyisim') ?>" name="isim" placeholder="Username">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">
							<a>*Choose only one platform. "Paypal" or "Crypto".*</a></br>
								<label>Crypto Address</label>	
								<input type="text" class="form-control" name="banka" placeholder="Crypto Address">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">
								<label>Paypal</label>	
								<input  type="text" class="form-control" name="iban" placeholder="Paypal">
							</div>
						</div>
						<div class="form-row mt-2">
							<div class="col-md-8 mx-auto form-group">
								<label>More Informations</label>
								<textarea maxlength="480" placeholder="If there is anything you want to let us know, write here...." name="icerik" style="min-height: 10rem" class="form-control"></textarea>
							</div>
						</div>	
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="talepolustur">Make Request</button>
						</div>
					</form>					
				</div>
				
			</div>
		</div>
	</div>
</div>

<?php require 'footer.php'; ?>
<script>
	function hesapla() {
		var ucret = 0;
		$('#sipler option:selected').each(function(){
			var value = $(this).attr('data-ucret');
			ucret=parseFloat(ucret)+parseFloat(value);
			ucret=ucret.toFixed(2)
		});
		$("#ucret_alani").text(ucret+"<?php echo " $" ?>");
	}
</script>