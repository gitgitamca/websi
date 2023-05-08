<span class="dropdown no-arrow">
	<button data-toggle="dropdown" aria-expanded="false" type="button" id="aktarmagizleme" style="margin-left: 4px; margin-bottom: 5px;" class="btn btn-sm btn-primary icon-split dropdown-toggle">
		<span class="icon text-white-65">
			<i class="fas fa-file-export"></i>
		</span>
		<span class="text">Dışa Aktar</span>
	</button> 


	<div class="dropdown-menu" aria-labelledby="aktarmagizleme">
		<a class="dropdown-item"> 
			<button type="button" onclick="fnAction('copy');" attr="Tabloyu Kopyala" class="btn btn-sm icon-split btn-dark">
				<span class="icon text-white-65">
					<i class="fas fa-copy"></i>
				</span>
				<span class="text">Kopyala</span>
			</button>
		</a>
		<a class="dropdown-item">  
			<button type="button" onclick="fnAction('excel');" attr="Excel Formatında Dışa Aktar" class="btn btn-sm icon-split btn-success">
				<span class="icon text-white-65">
					<i class="fas fa-file-excel"></i>
				</span>
				<span class="text">Excel</span>
			</button>
		</a>
		<a class="dropdown-item">
			<button type="button" onclick="fnAction('pdf');" attr="PDF Formatında Dışa Aktar" class="btn btn-sm icon-split btn-danger">
				<span class="icon text-white-65">
					<i class="fas fa-file-pdf"></i>
				</span>
				<span class="text">PDF</span>
			</button>
		</a>
		<a class="dropdown-item">
			<button type="button" onclick="fnAction('csv');" attr="CSV Formatında Dışa Aktar" class="btn btn-sm icon-split btn-primary">
				<span class="icon text-white-65">
					<i class="fas fa-file-csv"></i>
				</span>
				<span class="text">CSV</span>
			</button>
		</a>
	</div>
</span>