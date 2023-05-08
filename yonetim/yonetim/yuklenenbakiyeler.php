<?php 
include'header.php';
yetkikontrol("e");
?>

<link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<!-- DataTales Giriş -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Yüklenen Bakiyeler</h6>
	</div>
	<div class="card-body" style="width: 100%">
		<span class="dropdown no-arrow">
			<button data-toggle="dropdown" aria-expanded="false" type="button" id="aktarmagizleme" style="margin-left: 4px; margin-bottom: 5px;" class="btn btn-sm btn-primary icon-split dropdown-toggle"><span class="icon text-white-65"><i class="fas fa-file-export"></i></span><span class="text">Dışa Aktar</span>
			</button> 
			<div class="dropdown-menu" aria-labelledby="aktarmagizleme">
				<a class="dropdown-item" href="#"> 
					<button type="button" onclick="fnAction('copy');" title="asdsad" attr="Tabloyu Kopyala" class="btn btn-sm icon-split btn-dark">
						<span class="icon text-white-65">
							<i class="fas fa-copy"></i>
						</span>
						<span class="text">Kopyala</span>
					</button>
				</a>
				<a class="dropdown-item" title="">  
					<button type="button" onclick="fnAction('excel');" attr="Excel Formatında Dışa Aktar" class="btn btn-sm icon-split btn-success">
						<span class="icon text-white-65">
							<i class="fas fa-file-excel"></i>
						</span>
						<span class="text">Excel</span>
					</button>
				</a>
				<a class="dropdown-item" href="#">
					<button type="button" onclick="fnAction('pdf');" attr="PDF Formatında Dışa Aktar" class="btn btn-sm icon-split btn-danger">
						<span class="icon text-white-65">
							<i class="fas fa-file-pdf"></i>
						</span>
						<span class="text">PDF</span>
					</button>
				</a>
				<a class="dropdown-item" href="#">
					<button type="button" onclick="fnAction('csv');" attr="CSV Formatında Dışa Aktar" class="btn btn-sm icon-split btn-primary">
						<span class="icon text-white-65">
							<i class="fas fa-file-csv"></i>
						</span>
						<span class="text">CSV</span>
					</button>
				</a>
			</div>
		</span>
		<div class="table-responsive">
			<table class="table table-bordered" id="bakiyetablosu" width="100%" cellspacing="0">
				<thead>
					<tr> 
						<th>No</th>
						<th>Yükleyen Kişi</th>
						<th>Yüklenen Miktar</th>
						<th>Sipariş ID</th>
						<th>Yükleme Tarihi</th>			
					</tr>
				</thead>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi giriş-->
				<tbody>
					<?php 
					$say=0;
					foreach ($crud->cok("SELECT * FROM bakiye LEFT JOIN kullanicilar ON kullanicilar.kul_id=bakiye.bakiye_kul ORDER BY bakiye_tarih DESC") as $hesap) { $say++?>
						<tr>
							<td><?php echo $say; ?></td>
							<td><?php yaz($hesap['kul_isim']." ".$hesap['kul_soyisim']); ?></td>
							<td><?php yaz($hesap['bakiye_ucret']," TL"); ?></td>
							<td><?php echo $hesap['bakiye_order_id'];; ?></td>
							<td><?php echo $hesap['bakiye_tarih']; ?></td>
						</tr>
					<?php } ?>
				</tbody>
				<tfoot>
					<tr> 
						<th>No</th>
						<th>Yükleyen Kişi</th>
						<th>Yüklenen Miktar</th>
						<th>Sipariş ID</th>
						<th>Yükleme Tarihi</th>			
					</tr>
				</tfoot>
				<!--While döngüsü ile veritabanında ki verilerin tabloya çekilme işlemi çıkış-->
			</table>
		</div>
	</div>
</div>
<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>

<script src="assets/modules/datatables/jquery.dataTables.min.js"></script>
<script src="assets/modules/datatables/dataTables.bootstrap4.min.js"></script>
<script src="assets/modules/datatables/dataTables.buttons.min.js"></script>
<script src="assets/modules/datatables/buttons.flash.min.js"></script>
<script src="assets/modules/datatables/jszip.min.js"></script>
<script src="assets/modules/datatables/pdfmake.min.js"></script>
<script src="assets/modules/datatables/vfs_fonts.js"></script>
<script src="assets/modules/datatables/buttons.html5.min.js"></script>
<script src="assets/modules/datatables/buttons.print.min.js"></script>

<script type="text/javascript">
	$("#aktarmagizleme").click(function(){
		$(".dt-buttons").toggle();
	});
</script>
<script type="text/javascript">
	$(".mobilgoster").click(function(){
		$(".gizlemeyiac").toggle();
	});
</script>
<script>
	var dataTables = $('#bakiyetablosu').DataTable({
		initComplete: function () {
			this.api().columns([1,2]).every( function () {
				var column = this;
				var select = $('<select class="filtre"><option value=""></option></select>')
				.appendTo( $(column.footer()).empty() )
				.on( 'change', function () {
					var val = $.fn.dataTable.util.escapeRegex(
						$(this).val()
						);

					column
					.search( val ? '^'+val+'$' : '', true, false )
					.draw();
				});

				column.data().unique().sort().each( function ( d, j ) {
					var val = $('<div/>').html(d).text();
					
					if (val.length>29) {
						filtremetin =  val.substr(0,30)+"...";
					} else {
						filtremetin=val;
					}
					select.append( '<option value="' + val + '">' + filtremetin + '</option>' )
				});
			});
		},
		"ordering": true,  
		"searching": true, 
		"lengthChange": true,
		"info": true,
		dom: "<'row mobilgizleexport gizlemeyiac'<'col-md-6'l><'col-md-6'f><'col-md-4 d-none d-print-block'B>>rtip",
		buttons: [
		{
			extend: 'copyHtml5', 
			className: 'kopyalama-buton',
			messageBottom: 'Aksoyhlc Hesap Satış Sistemi Tarafından Üretilmiştir'
		},
		{
			extend: 'excelHtml5', 
			className: 'excel-buton',
			messageBottom: 'Aksoyhlc Hesap Satış Sistemi Tarafından Üretilmiştir'
		},
		{
			extend: 'pdfHtml5',
			className: 'pdf-buton',
			messageBottom: 'Aksoyhlc Hesap Satış Sistemi Tarafından Üretilmiştir'
		},
		{
			extend: 'csvHtml5',
			className: 'csv-buton',
			messageBottom: 'Aksoyhlc Hesap Satış Sistemi Tarafından Üretilmiştir'
		}
		]
	});

	function fnAction(action) {
		switch (action) {
			case "excel":
			$('.excel-buton').trigger('click');
			break;
			case "pdf":
			$('.pdf-buton').trigger('click');
			break;
			case "copy":
			$('.kopyalama-buton').trigger('click');
			break;
			case "csv":
			$('.csv-buton').trigger('click');
			break;
		}
	}
</script>