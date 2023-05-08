
</div>
<footer class="main-footer">
	<div class="footer-left">
		<div>Copyright &copy; 2019 <a href ="https://www.aksoyhlc.net" rel="follow"><?php echo $ayarcek['site_baslik'] ?></a></div>
	</div>
	<div class="footer-right">

	</div>
</footer>
</div>
</div>

<!-- General JS Scripts -->

<script src="<?php echo panel ?>/assets/modules/popper.js"></script>
<script src="<?php echo panel ?>/assets/modules/tooltip.js"></script>
<script src="<?php echo panel ?>/assets/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/moment.min.js"></script>
<script src="<?php echo panel ?>/assets/js/stisla.js"></script>
<script src="<?php echo panel ?>/assets/modules/editor/summernote-bs4.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/sweetalert/sweetalert.min.js"></script>

<script src="<?php echo panel ?>/assets/modules/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/dataTables.buttons.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/buttons.flash.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/jszip.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/pdfmake.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/vfs_fonts.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/buttons.html5.min.js"></script>
<script src="<?php echo panel ?>/assets/modules/datatables/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.3.0/js/responsive.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
<!-- Template JS File -->
<script src="<?php echo panel ?>/assets/js/scripts.js"></script>
<script src="<?php echo panel ?>/assets/modules/select/bootstrap-select.min.js"></script>
<script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.js"></script>

<script src="<?php echo panel ?>/assets/modules/jquery-ui/jquery-ui.min.js"></script>
<!-- JS Libraies -->
<script src="<?php echo panel ?>/assets/modules/izitoast/js/iziToast.min.js"></script>

<!-- Page Specific JS File -->
<script src="<?php echo panel ?>/assets/js/page/modules-toastr.js"></script>
<script src="<?php echo panel ?>/assets/js/aksoyhlc.js"></script>

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

 

  function editor_baslat(id) {
    var simplemde = new SimpleMDE({ 
      element: document.getElementById(id),
      placeholder: "Ürün detayı...",
      spellChecker: false,
    toolbar: ["bold", "italic","strikethrough", "|","quote","|","heading-smaller","heading-bigger","|","unordered-list","ordered-list","table","|","preview"],
    });
  }

  $('#editor').summernote({
    placeholder: "Metin Girin",
    height: 300,               
    focus: false,
    codeviewFilter: true,
    codeviewIframeFilter: true,
    toolbar: [
    ['geri', ['undo', 'redo']],
    ['style', ['bold', 'italic', 'underline', 'clear']],
    ['fontsize', ['fontsize']],
    ['fontname', ['fontname']],
    ['color', ['forecolor', 'backcolor']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['abc', ['link', 'picture', 'video', 'table','codeview']]
    ],
  });

  $('.summernote-editor').summernote({
    placeholder: "Metin Girin",
    height: 300,               
    focus: false,
    codeviewFilter: true,
    codeviewIframeFilter: true,
    toolbar: [
    ['geri', ['undo', 'redo']],
    ['style', ['bold', 'italic', 'underline', 'clear']],
    ['fontsize', ['fontsize']],
    ['fontname', ['fontname']],
    ['color', ['forecolor', 'backcolor']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['abc', ['link', 'picture', 'video', 'table']]
    ],
  });

  disabled_sonuc=$('#editor').hasClass('devredisi');
  if (disabled_sonuc) {
    $('#editor').summernote('disable');
  }

  disabled_sonuc2 = $('.summernote-editor').hasClass('devredisi');
  if (disabled_sonuc2) {
    $('.summernote-editor').summernote('disable');
  }

  $('#editor').summernote('fontSize', 16);
  $('.summernote-editor').summernote('fontSize', 16);

/*
  $(document).ready(function() {
    $(".durum").each(function(index, el) {
      var metin = $(el).text();
      if(metin=="Satışa Hazır"){
        $(el).addClass("badge badge-primary");
      } else if(metin=="Devre Dışı"){
        $(el).addClass("badge badge-danger");
      } else if(metin=="Satıldı"){
        $(el).addClass("badge badge-success");
      }
    });
  });*/


</script>
<?php if (isset($_GET['tema']))  {?>  
  <script>
    Swal.fire({
      title: "İşlem Başarılı",
      text: "Temanız Başarıyla Değiştirildi. Değişikliklerin Geçerli Olabilmesi İçin Aşağıdaki Butona Tıklayın",
      type: "success",
      showConfirmButton: true,
      confirmButtonText: 'Buraya Tıklayın'
    }).then((result) => {
      console.log(result);
      if (result.value) {
        window.location.href="<?php echo yonetim ?>"
      }
    })
  </script>
<?php } ?>


<?php if (@$_GET['durum']=="no")  {?>  
  <script>
    Swal.fire({
      type: 'error',
      title: 'İşlem Başarısız',
      text: 'Hata Detayı: '+"<?php echo json_encode($_SESSION['hata']) ?>",
      showConfirmButton: true,
      confirmButtonText: 'Kapat'
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="ok")  {?>  
  <script>
    Swal.fire({
      type: 'success',
      title: 'İşlem Başarılı',
      text: 'İşleminiz Başarıyla Gerçekleştirildi',
      showConfirmButton: false,
      timer: 2000
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="izin")  {?>  
  <script>
    Swal.fire({
      type: 'error',
      title: 'İzniniz Yok',
      text: 'Girme İzniniz olmayan bir alana girmeye çalıştınız',
      showConfirmButton: false,
      timer: 2000
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="yetersizbakiye")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'Yetersiz Bakiye',
      text: 'Bakiyeniz Yetersiz Olduğu İçin İşleminiz Gerçekleştirilemedi',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
<?php } ?>

<?php if (@$_GET['durum']=="yetersizstok")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'Stokta Yok',
      text: 'Seçtiğiniz Pakate Ait Hesap Bulunamadı',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
<?php } ?>


<?php if (@$_GET['durum']=="manuelyetersizbakiye")  {?>  
  <script>
    Swal.fire({
      type: 'warning',
      title: 'Yetersiz Bakiye',
      text: 'Kullanıcının Bakiyesi Bu Ürünü Almak İçin Yeterli Değil',
      showConfirmButton: false,
      timer: 2500
    })
  </script>
  <?php } ?>