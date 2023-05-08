<?php require 'header.php';

if (!isset($_GET['satici'])) {
	$_GET['satici']="x";
	$satici_bilgi="!=0";
} else {
	if ($_GET['satici']=="x") {
		$satici_bilgi="!=0";
	} else {
		$satici_bilgi="={$_GET['satici']}";
	}
}


$rapor->kosul(true,$_GET['satici']);
?>


<div class="container-fluid my-2">
	<div class="row">
		<div class="col-md-8 mx-auto">
			<div class="card card-primary shadow br-1">
				<div class="card-body">
					<div class="row">
						<div class="col-md-6 form-group mx-auto">
							<label>Mağaza</label>
							<select id="filtre_magaza" name="satici" class="form-control selectpicker" data-live-search="true">
								<option <?php slc($_GET['satici'], "x") ?> value="x">-- TÜM MAĞAZALAR --</option>
								<?php foreach ($veri->magazalar() as $key => $value): ?>
									<option <?php slc($_GET['satici'], $value->kul_id) ?> value="<?php echo $value->kul_id ?>"><?php echo $veri->isim($value) ?></option>
								<?php endforeach ?>
							</select>
						</div>
					</div>
					<div class="row d-flex justify-content-center">
						<div class="col-md-6">
							<label>Başlangıç Tarihi</label>
							<input value="<?php echo @$_GET['baslangic'] ?>" type="text" class="form-control baslangic-tarih tarih" autocomplete="off" placeholder="-----" id="filtrele">
						</div>
						<div class="col-md-6">
							<label>Bitiş Tarihi</label>
							<input value="<?php echo @$_GET['bitis'] ?>" type="text" class="form-control bitis-tarih tarih" autocomplete="off" placeholder="-----">
						</div>    
					</div>
					<div class="row d-flex justify-content-center">
						<div class="text-center mt-3">      
							<a href="rapor"><button type="button" class="btn btn-danger">Hepsini Göster</button></a>
							<button type="button" class="btn btn-primary filtrele">Filtrele</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-danger">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Toplam Gelir</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->toplam_gelir(),para()); ?>
					</div>
				</div>
			</div>
		</div> 


		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-shopping-cart"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Sipariş Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->siparis_sayisi() ?>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-info">
					<i class="fas fa-check"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Satılan Hesap Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->satilan_hesap() ?>
					</div>
				</div>
			</div>
		</div>          


		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-dark">
					<i class="fas fa-user-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Satılmayı Bekleyen Hesap Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->bekleyen_hesap() ?>
					</div>
				</div>
			</div>
		</div>   


		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-success">
					<i class="fas fa-ticket-alt"></i>
				</div> 
				<div class="card-wrap">
					<div class="card-header">
						<h4>Toplam Hesap Sayısı</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->toplam_hesap() ?>
					</div>
				</div>
			</div>
		</div>  
	</div>
</div>

<hr>

<div class="container-fluid">
	<div class="row">
		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Toplam Gelir</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->genel_toplam_gelir(),para()); ?>
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
						<h4>Çekilen Bakiye</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->cekilen_bakiye().para() ?>
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
						<h4>Kalan Bakiye</h4>
					</div>
					<div class="card-body">
						<?php echo $rapor->kalan_bakiye().para() ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		

		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="card card-statistic-1 shadow">
				<div class="card-icon bg-primary">
					<i class="fas fa-money-bill-alt"></i>
				</div>
				<div class="card-wrap">
					<div class="card-header">
						<h4>Bugünkü Yapılan Satış Sayısı</h4>
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
						<h4>Bugünkü Kazanılan Miktar</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->bugun_tl(),para()); ?>
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
						<h4>Bu Ayki Yapılan Satış Sayısı</h4>
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
						<h4>Bu Ayki Kazanılan Miktar</h4>
					</div>
					<div class="card-body">						
						<?php yaz($rapor->buay_tl(),para()); ?>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>

<hr>

<div class="container-fluid">
	<div class="row d-flex justify-content-center">
		<div class="col-md-6">
			<div class="card card-dark br-1 shadow">
				<div class="card-header">
					<h4 class="text-dark">Ürün İnceleme Sayıları <small>(Bu Yıl İçin Geçerlidir)</small></h4>
				</div>
				<div class="card-body">
					<canvas id="okunmagrafik"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card card-primary br-1 shadow">
				<div class="card-header">
					<h4 class="text-primary">Gelirler <small>(Bu Yıl İçin Geçerlidir)</small></h4>
				</div>
				<div class="card-body">
					<canvas id="gelirgrafik"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card card-info br-1 shadow">
				<div class="card-header">
					<h4 class="text-info">Satılan Hesaplar <small>(Bu Yıl İçin Geçerlidir)</small></h4>
				</div>
				<div class="card-body">
					<canvas id="hesapgrafik"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card card-danger br-1 shadow">
				<div class="card-header">
					<h4 class="text-danger">Sipariş Sayısı <small>(Bu Yıl İçin Geçerlidir)</small></h4>
				</div>
				<div class="card-body">
					<canvas id="sipgrafik"></canvas>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="card card-success br-1 shadow">
				<div class="card-header">
					<h4 class="text-success">Ticket Sayısı <small>(Bu Yıl İçin Geçerlidir)</small></h4>
				</div>
				<div class="card-body">
					<canvas id="ticketgrafigi"></canvas>
				</div>
			</div>
		</div>
	</div>

	
</div>


<?php 


$okunmasayisigrafigi=array();	
for ($i=1; $i < 13; $i++) { 
	if (strlen($i)==1) {
		$i="0".$i;
	}
	$tarih=date("Y-").$i;
	$sonuc=$crud->tek("SELECT SUM(inceleme_sayisi) AS inceleme_sayisi FROM inceleme_sayisi WHERE tarih BETWEEN '$tarih-01 00:00:00' AND '$tarih-31 23:59:59'")['inceleme_sayisi'];

	if (strlen($sonuc)==0) {
		array_push($okunmasayisigrafigi,0);
	} else {
		array_push($okunmasayisigrafigi,$sonuc);
	}
}



$gelirgrafigi=array();	
for ($i=1; $i < 13; $i++) { 
	if (strlen($i)==1) {
		$i="0".$i;
	}
	$tarih=date("Y-").$i;
	$sonuc=$crud->tek("SELECT SUM(ucret-komisyon_alinan) as ucret FROM siparis LEFT JOIN urun ON urun.urun_id=siparis.urun WHERE urun.satici{$satici_bilgi} AND (tarih BETWEEN '$tarih-01 00:00:00' AND '$tarih-31 23:59:59')")['ucret'];

	if (strlen($sonuc)==0) {
		array_push($gelirgrafigi,0);
	} else {
		array_push($gelirgrafigi,$sonuc);
	}
}

?>


<?php 
$sorgu=$db->prepare("
	SELECT satis_tarih FROM hesaplar 
	INNER JOIN urun ON urun.urun_id=hesaplar.urun 
	WHERE urun.satici{$satici_bilgi} AND hesap_durum=2
	");
$sorgu->execute();
//pre($sorgu->debugDumpParams());
$tarihler=array();
while ($hesap=$sorgu->fetch(PDO::FETCH_ASSOC)) {	
	if (explode("-", $hesap['satis_tarih'])['0']==date("Y")) {
		array_push($tarihler, explode("-", $hesap['satis_tarih'])['1']);
	}

}


$hesapgrafigi=grafikfonksiyon($tarihler);
?>

<?php 
$sorgu=$db->prepare("
	SELECT tarih FROM siparis 
	INNER JOIN urun ON urun.urun_id=siparis.urun 
	WHERE urun.satici{$satici_bilgi} AND sip_durum=2
	");
$sorgu->execute();

$tarihler=array();
while ($hesap=$sorgu->fetch(PDO::FETCH_ASSOC)) {	
	if (explode("-", $hesap['tarih'])['0']==date("Y")) {
		array_push($tarihler, explode("-", $hesap['tarih'])['1']);
	}

}

$sipgrafik=grafikfonksiyon($tarihler);

?>



<?php 
$sorgu=$db->prepare("SELECT ticket_tarih FROM ticket WHERE satici{$satici_bilgi}");
$sorgu->execute();
$tarihler=array();
while ($hesap=$sorgu->fetch(PDO::FETCH_ASSOC)) {	
	if (explode("-", $hesap['ticket_tarih'])['0']==date("Y")) {
		array_push($tarihler, explode("-", $hesap['ticket_tarih'])['1']);
	}

}


$ticketgrafigi=grafikfonksiyon($tarihler);
?>

<?php require 'footer.php'; ?>
<!-- JS Libraies -->
<script src="<?php echo panel ?>/assets/modules/chart.min.js"></script>
<script type="text/javascript">


	$(document).ready(function() {
		$(".filtrele").click(function () {
			var bas=$(".baslangic-tarih").val();
			var bit=$(".bitis-tarih").val();
			var magaza=$("#filtre_magaza").val();
			window.location="rapor?islem=tarih&satici="+magaza+"&baslangic="+bas+"&bitis="+bit
		})

	});

	$(document).ready(function() {
		var gelirgrafikctx = document.getElementById("gelirgrafik").getContext('2d');
		var gelirgrafik = new Chart(gelirgrafikctx, {
			type: 'line',
			data: {
				labels: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
				datasets: [{
					label: 'Kazanç',
					data: <?php echo "[".implode(",", $gelirgrafigi)."]" ?>,
					borderWidth: 2,
					backgroundColor: '#6A7194',
					borderColor: '#6A7194',
					borderWidth: 2.5,
					pointBackgroundColor: '#ffffff',
					pointRadius: 4
				}]
			},
			options: {
				tooltips: {
					callbacks: {
						label: function(tooltipItem, data) {
							console.log(tooltipItem);
							return "Kazaç: "+tooltipItem.yLabel.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,')+"<?php echo para() ?>";
						}
					}
				}
			}
		});

		var hesapgrafikctx = document.getElementById("hesapgrafik").getContext('2d');
		var hesapgrafik = new Chart(hesapgrafikctx, {
			type: 'line',
			data: {
				labels: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
				datasets: [{
					label: 'Hesap Sayısı',
					data: <?php echo "[".implode(",", $hesapgrafigi)."]" ?>,
					borderWidth: 2,
					backgroundColor: '#6A95BF',
					borderColor: '#6A95BF',
					borderWidth: 2.5,
					pointBackgroundColor: '#ffffff',
					pointRadius: 4
				}]
			}
		});


		var sipgrafikctx = document.getElementById("sipgrafik").getContext('2d');
		var sipgrafik = new Chart(sipgrafikctx, {
			type: 'line',
			data: {
				labels: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
				datasets: [{
					label: 'Sipariş Sayısı',
					data: <?php echo "[".implode(",", $sipgrafik)."]" ?>,
					borderWidth: 2,
					backgroundColor: '#BF6B7D',
					borderColor: '#BF6B7D',
					borderWidth: 2.5,
					pointBackgroundColor: '#ffffff',
					pointRadius: 4
				}]
			}		
		});




		var okunmagrafikctx = document.getElementById("okunmagrafik").getContext('2d');
		var okunmagrafik = new Chart(okunmagrafikctx, {
			type: 'line',
			data: {
				labels: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
				datasets: [{
					label: 'Ürün İnceleme Sayısı',
					data: <?php echo "[".implode(",", $okunmasayisigrafigi)."]" ?>,
					borderWidth: 2,
					backgroundColor: '#264653',
					borderColor: '#264653',
					borderWidth: 2.5,
					pointBackgroundColor: '#ffffff',
					pointRadius: 4
				}]
			}		
		});





		var ticketgrafigictx = document.getElementById("ticketgrafigi").getContext('2d');
		var ticketgrafigi = new Chart(ticketgrafigictx, {
			type: 'line',
			data: {
				labels: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
				datasets: [{
					label: 'Ticket Sayısı',
					data: <?php echo "[".implode(",", $ticketgrafigi)."]" ?>,
					borderWidth: 2,
					backgroundColor: '#6A937B',
					borderColor: '#6A937B',
					borderWidth: 2.5,
					pointBackgroundColor: '#ffffff',
					pointRadius: 4
				}]
			},
			/*options: {
				legend: {
					display: false
				},

				scales: {
					yAxes: [{
						gridLines: {
							drawBorder: false,
							color: '#f2f2f2',
						},
						ticks: {
							beginAtZero: true,
							stepSize: 150,							
							//max:100,
							stepSize:2,
							callback: function(value, index, values) {
								return value;
							}
						},
						scaleLabel: {
							display: true,
							labelString: 'Ticket Sayısı'
						},
					}],
					xAxes: [{
						ticks: {
							display: true
						},
						gridLines: {
							display: true
						}
					}]
				},
			}*/
		});


	});
</script>