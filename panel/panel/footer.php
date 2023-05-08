
</div>
<footer class="main-footer">
	<div class="footer-left">
    Copyright © 2022 <b>by</b> Selligo | Powered By <a rel="nofollow" target="_blank" href="https://discord.gg/selligo">Selligo</a> 
  </div>
  <div class="footer-right">

  </div>
</footer>
</div>
</div>

<!-- General JS Scripts -->

<script src="assets/modules/popper.js"></script>
<script src="assets/modules/tooltip.js"></script>
<script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="assets/modules/moment.min.js"></script>
<script src="assets/js/stisla.js"></script>
<script src="assets/modules/editor/summernote-bs4.min.js"></script>
<script src="assets/modules/sweetalert/sweetalert.min.js"></script>

<script src="assets/modules/datatables/jquery.dataTables.min.js"></script>
<script src="assets/modules/datatables/dataTables.bootstrap4.min.js"></script>
<script src="assets/modules/datatables/dataTables.buttons.min.js"></script>
<script src="assets/modules/datatables/buttons.flash.min.js"></script>
<script src="assets/modules/datatables/jszip.min.js"></script>
<script src="assets/modules/datatables/pdfmake.min.js"></script>
<script src="assets/modules/datatables/vfs_fonts.js"></script>
<script src="assets/modules/datatables/buttons.html5.min.js"></script>
<script src="assets/modules/datatables/buttons.print.min.js"></script>

<script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.3.0/js/responsive.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
<!-- Template JS File -->
<script src="assets/js/scripts.js"></script>

<script src="assets/modules/select/bootstrap-select.min.js"></script>
<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.js"></script>


<script src="assets/js/aksoyhlc.js"></script>
<script>

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

function editor_baslat(id) {
  var simplemde = new SimpleMDE({ 
    element: document.getElementById(id),
    placeholder: "Ürün detayı...",
    spellChecker: false,
    toolbar: ["bold", "italic","strikethrough", "|","quote","|","unordered-list","ordered-list","table","|","preview"],
  });
}


$(document).ready(function() {
  $.each($(".btn"), function(index, val) {
    var attr = $(val).attr('onclick');
    if (typeof attr !== 'undefined') {
      if (attr.indexOf("fnAction")!=-1) {
        $(val).addClass("w-100").removeClass('btn-sm');
      }
    }
  });
});

$("table").not(".haric").each(function(index, el) {
  var thead = $(this).find("thead").html();
  var tfoot = '<tfoot>'+thead+'</tfoot>';
  $(this).find('tbody').after(tfoot)
});



</script>

<?php if (isset($_GET['tema']))  {?>  
  <script>
    Swal.fire({
      title: "Process Success",
      text: "Your Theme Has Been Successfully Changed. Click the button below for the changes to take effect.",
      type: "success",
      showConfirmButton: true,
      confirmButtonText: 'Click here'
    }).then((result) => {
      console.log(result);
      if (result.value) {
        window.location.href="<?php echo panel ?>"
      }
    })
  </script>
<?php } ?>

<script type="text/javascript">
  $("#aktarmagizleme").click(function(){
    $(".dt-buttons").toggle();
  });
  $(".mobilgoster").click(function(){
    $(".gizlemeyiac").toggle();
  });
</script>



<?php if (@$_GET['durum']=="no")  {?>  
  <script>bildirim("error","Failed!","Error: <?php echo $_SESSION['hata'] ?>");</script>
<?php } ?>


<?php if (@$_GET['durum']=="premium_true")  {?>  
  <script>bildirim("info","","You are already a Premium member. <br>Premium membership expiration date: <?php echo ses('pre_bit') ?>");</script>
<?php } ?>


<?php if (@$_GET['durum']=="no")  {?>  
  <script>bildirim("error","Failed!","Error: <?php echo $_SESSION['hata'] ?>");</script>
<?php } ?>


<?php if (@$_GET['durum']=="no")  {?>  
  <script>bildirim("error","Failed!","Error: <?php echo $_SESSION['hata'] ?>");</script>
<?php } ?>












<?php if (@$_GET['durum']=="ok")  {?>  
  <script>
    Swal.fire({
      type: 'success',
      title: 'Success',
      text: 'Operation was successfully finished',
      showConfirmButton: false,
      timer: 2000
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="izin")  {?>  
  <script>
    Swal.fire({
      type: 'error',
      title: 'No permition',
      text: 'You tried to enter an area that you do not have permission to enter',
      showConfirmButton: false,
      timer: 2000
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="yetersizbakiye")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'Insufficient Balance',
      text: 'Proccess could not be performed because your balance is insufficient',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="yetersizstok")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'No Stock',
      text: 'No Account Found for the Package You Have Selected',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
<?php } ?>


<?php if (@$_GET['durum']=="manuelyetersizbakiye")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'No Stock',
      text: 'Users Balance Is Not Enough to Buy This Product',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
  <?php } ?>