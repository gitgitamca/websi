<?php 
include'header.php';
oturumkontrol("e");
$talep=$veri->talep($_GET['talep_id']);

if (isset($_POST['talepguncelle'])) {


	if ($talep->durum==2 OR $talep->durum==3) {
		$bildirim_onay=false;
	} else {
		if ($_POST['durum']==2 OR $_POST['durum']==3) {
			$bildirim_onay=true;
		} else {
			$bildirim_onay=false;;
		}
	}


	if ($bildirim_onay) {
		$fiyat=0;
		foreach ($_POST['sip'] as $key => $value) {
			sayi($value);
			$crud->tek("UPDATE siparis SET cekim=3 WHERE sip_id=$value");
			$ucret=$crud->tek("SELECT (ucret-komisyon_alinan) as uc FROM siparis WHERE sip_id=$value")['uc'];
			$fiyat=$fiyat+$ucret;
		}
	}


	$_POST['ucret']=$fiyat;
	$_POST['sip'] = implode(",",$_POST['sip']);

	if ($crud->direktguncelle("talep","talep_id",$_GET['talep_id'],$_POST,"talepguncelle")) {
		if ($bildirim_onay) {
			$kul=$veri->kullanici($talep->kul);

			$baslik="Para Çekim Talebi";
			$mesaj=$talep->talep_tarihi." Tarihinde başvurmuş olduğunuz ".para_yazi($talep->ucret).para()." değerindeki bakiye çekim talebiniz onaylanmıştır.";

			$bildirim->telegram($baslik,$mesaj, $kul->tg_id);
			$bildirim->onesignal($baslik,$mesaj, [$kul->uygulama_bildirim]);
			$bildirim->onesignal_web($baslik,$mesaj, [$kul->web_bildirim]);

		}

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
					<h5 class="text-primary">Para Çekim Talebi Düzenleme</h5>
					<div class="badge badge-success fs-1">
						Toplam Ücret: <span id="ucret_alani">-- Sipariş Seçin --</span> 
					</div>
				</div>
				<div class="card-body">
					<form action="" method="POST" accept-charset="utf-8">
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">	
								<label>Ücreti Alınacak Siparişler</label>			
								<select required="" onchange="hesapla()" id="sipler" name="sip[]" multiple="" class="form-control selectpicker" data-live-search="true" data-actions-box="true">
									<?php foreach ($veri->magaza_musteri_siparisler($talep->kul) as $key => $var): ?>
										<option 
										<?php if (in_array($var->sip_id, explode(",", $talep->sip))) { echo "selected=''"; } ?>
										data-ucret="<?php echo ($var->ucret-$var->komisyon_alinan) ?>" value="<?php echo $var->sip_id ?>"><?php echo ($var->ucret-$var->komisyon_alinan).para()."&nbsp;&nbsp; - &nbsp;&nbsp;#".$var->sip_id." - ".$var->urun_baslik ?></option>
									<?php endforeach ?>
								</select>								
							</div>
							<div class="form-group col-md-6 mx-auto">
								<label>İsim Soyisim</label>	
								<input required="" type="text" class="form-control" value="<?php echo $talep->isim ?>" name="isim" placeholder="İsim Soyisim">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">
								<label>Banka İsmi</label>	
								<input required="" type="text" class="form-control" value="<?php echo $talep->banka ?>" name="banka" placeholder="Banka İsmi">
							</div>
							<div class="form-group col-md-6 mx-auto">
								<label>IBAN</label>	
								<input required="" type="text" class="form-control" value="<?php echo $talep->iban ?>" name="iban" placeholder="IBAN">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">
								<label>Durum</label>	
								<select name="durum" class="form-control">
									<?php foreach (talep_durum() as $key => $value): ?>
										<option <?php slc($key, $talep->durum) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
									<?php endforeach ?>
								</select>
							</div>
							<div class="form-group col-md-6 mx-auto">
								<label>Ödeme Tarihi</label>	
								<input type="text" class="form-control tarihsaat" value="<?php echo $talep->odeme_tarihi ?>" name="odeme_tarihi" placeholder="Ödeme Tarihi">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6 mx-auto">
								<label>Mağaza</label>	
								<select name="kul" class="form-control selectpicker" data-live-search="true">
									<?php foreach ($veri->magazalar() as $key => $value): ?>
										<option <?php slc($value->kul_id, $talep->kul) ?> value="<?php echo $value->kul_id ?>"><?php echo $veri->isim($value) ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>	
						<div class="form-row mt-2">
							<div class="col-md-8 mx-auto form-group">
								<label>Ekstra Bilgilendirme</label>
								<textarea maxlength="480" placeholder="Buraya bize bildirmek istediğiniz bir şey varsa yazabilirsiniz..." name="icerik" style="min-height: 10rem" class="form-control"><?php echo $talep->icerik ?></textarea>
							</div>
						</div>	
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="talepguncelle"><i class="fa fa-save"></i> Güncelle</button>
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
		$("#ucret_alani").text(ucret+"<?php echo para() ?>");
	}

	$(document).ready(function() {
		hesapla();
	});

</script>