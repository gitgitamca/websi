<?php include'header.php' ;
$islem=$crud;
if (isset($_POST['notsilme'])) {
	$sonuc=$islem->silme("notlar","not_id",$_POST['not_id']);
	if ($sonuc['sonuc']) {
		header("location:notlar.php?durum=ok");
		exit;
	} else {
		header("location:notlar.php?durum=no");
		exit;
	}
} 

$goz_not_sayisi = 6; // goz_not_sayisi gösterilecek içerik miktarını belirtiyoruz.

$toplam_not_sayisi=$crud->satirsayisi("notlar", "ekleyen_id", $_SESSION['kul_id']);

$toplam_sayfa = ceil($toplam_not_sayisi / $goz_not_sayisi);

$sayfa = isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;

if($sayfa < 1) $sayfa = 1; 
if($sayfa > $toplam_sayfa) $sayfa = $toplam_sayfa; 

$limit = ($sayfa - 1) * $goz_not_sayisi;

$sorgu = $db->prepare('SELECT * FROM notlar WHERE ekleyen_id=:ekleyen_id ORDER BY not_id DESC LIMIT ' . $limit . ', ' . $goz_not_sayisi);
$sorgu->execute(array(
	'ekleyen_id' => $_SESSION['kul_id']
));

?>

<div class="container">
	<div class="row">
		<?php 
		while($icerik = $sorgu->fetch(PDO::FETCH_ASSOC)) { ?>
			<div class="col-md-4 mb-2 mt-2 text-center">
				<div class="card card-primary br-1 shadow">
					<div class="card-header shadow-sm">		
						<h5 class="text-primary font-weight-bold mt-2"><?php echo $icerik['not_baslik']; ?></h5>		
					</div>
					<div class="card-body">
						<p><?php echo mb_substr($icerik['not_detay'], 0, 100); ?></p>
					</div>
					<div class="card-footer">						
						<div class="d-flex justify-content-center">

							<form action="notduzenle" method="POST">
								<input type="hidden" name="not_id" value="<?php echo $icerik['not_id'] ?>">
								<button type="submit" name="duzenleme" class="btn btn-success btn-sm icon-split">
									<span class="icon text-white-60">
										<i class="fas fa-edit"></i>
									</span>
								</button>
							</form>
							<form class="mx-1" action="" method="POST">
								<input type="hidden" name="not_id" value="<?php echo $icerik['not_id'] ?>">
								<button type="submit" name="notsilme" class="btn btn-danger btn-sm icon-split silmebutonu">
									<span class="icon text-white-60">
										<i class="fas fa-trash"></i>
									</span>
								</button>
							</form>

							<form action="not" method="POST">
								<input type="hidden" name="not_id" value="<?php echo $icerik['not_id'] ?>">
								<button type="submit" name="not_bak" class="btn btn-primary btn-sm icon-split">
									<span class="icon text-white-60">
										<i class="fas fa-eye"></i>
									</span>
								</button>
							</form>
						</div>
						<div class="text-center mt-4"><b>Eklenme Tarihi:</b> <?php echo $icerik['eklenme_tarihi'] ?></div>
					</td>
				</tr>
			</div>
		</div>
	</div>
<?php } ?>
</div>
<div class="row d-flex justify-content-center mt-3">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<?php 

			$sayfa_goster = 6; 

			$en_az_orta = ceil($sayfa_goster/2);
			$en_fazla_orta = ($toplam_sayfa+1) - $en_az_orta;

			$sayfa_orta = $sayfa;
			if($sayfa_orta < $en_az_orta) $sayfa_orta = $en_az_orta;
			if($sayfa_orta > $en_fazla_orta) $sayfa_orta = $en_fazla_orta;

			$sol_sayfalar = round($sayfa_orta - (($sayfa_goster-1) / 2));
			$sag_sayfalar = round((($sayfa_goster-1) / 2) + $sayfa_orta); 

			if($sol_sayfalar < 1) $sol_sayfalar = 1;
			if($sag_sayfalar > $toplam_sayfa) $sag_sayfalar = $toplam_sayfa;

			if ($toplam_not_sayisi!=0) {				
				if($sayfa != 1) echo ' <li class="page-item"><a class="page-link" href="?sayfa=1">&lt;&lt;</a></li>';
				if($sayfa != 1) echo '<li class="page-item"> <a class="page-link" href="?sayfa='.($sayfa-1).'">&lt;</a></li> ';
			} else {
				echo "<h3>Not Bulunamadı</h3>";
			}

			for($s = $sol_sayfalar; $s <= $sag_sayfalar; $s++) {
				if($sayfa == $s) {
					echo '<li class="page-item active"><a class="page-link" href="?sayfa='.$s.'">'.$s.'</a></li>';
				} else {
					echo '<li class="page-item"><a class="page-link" href="?sayfa='.$s.'">'.$s.'</a> ';
				}
			}

			if($sayfa != $toplam_sayfa) echo ' <li class="page-item"><a class="page-link" href="?sayfa='.($sayfa+1).'">&gt;</a> </li>';
			if($sayfa != $toplam_sayfa) echo ' <li class="page-item"><a class="page-link" href="?sayfa='.$toplam_sayfa.'">&gt;&gt;</a></li>';
			?>

		</ul>
	</nav>
</div>

</div>


<?php include 'footer.php'; ?>

