function teslim_tur_islem() {
    var deger = $("#teslim_tur").val();
    if (deger==0) {
      $("#stok_sayisi").hide('slow');
    } else {
      $("#stok_sayisi").show('slow');
    }
  }

  $(document).ready(function() {
    teslim_tur_islem();
  });

  

function toSeoUrl(url) {
  return url.toString()              
  .normalize('NFD')              
  .replace(/[\u0300-\u036f]/g,'')
  .replace(/\s+/g,'-')           
  .toLowerCase()                 
  .replace(/&/g,'-and-')         
  .replace(/[^a-z0-9\-]/g,'')    
  .replace(/-+/g,'-')            
  .replace(/^-*/,'')             
  .replace(/-*$/,'');            
}


var boxdeger = 0;
$('.onaybox').on('change', function() {
  var isChecked = $(this).is(':checked');
  alan = $(this).parent(".onayalani");

  var isChecked = $(this).is(':checked');

  if(isChecked) {
    boxdeger = 1;
  } else {
    boxdeger = 0;
  }

  alan.find('.onayvalue').val(boxdeger)
  xyz=alan.find('.onayvalue');
  /*x = $(alan+" > onayboxy").val();*/
  console.log(xyz.val()+" - "+xyz.attr('name'));
});



function exBtn(adet) {
  var sutunlar=[];
  for (var i = 0; i <= adet - 1; i++) {
    sutunlar.push(i);
  }
  return [
  {
    extend: 'copyHtml5', 
    className: 'kopyalama-buton',
    messageBottom: 'Created by Selligo Shop',
    exportOptions: {
      columns: sutunlar
    }
  },
  {
    extend: 'excelHtml5', 
    className: 'excel-buton',
    messageBottom: 'Created by Selligo Shop',
    exportOptions: {
      columns: sutunlar
    }
  },
  {
    extend: 'pdfHtml5',
    className: 'pdf-buton',
    messageBottom: 'Created by Selligo Shop',
    exportOptions: {
      columns: sutunlar
    }
  },
  {
    extend: 'csvHtml5',
    className: 'csv-buton',
    messageBottom: 'Created by Selligo Shop',
    exportOptions: {
      columns: sutunlar
    }
  }
  ];
}


function filtre(sutun=[0]) {
  return function () {
    this.api().columns(sutun).every( function () {
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
  }
}


function rastgeleSembol(uzunluk, semboller) {
  var maske = '';
  if (semboller.indexOf('a') > -1) maske += 'abcdefghijklmnopqrstuvwxyz';
  if (semboller.indexOf('A') > -1) maske += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  if (semboller.indexOf('0') > -1) maske += '0123456789-';
  var sonuc = '';

  for (var i = uzunluk; i > 0; --i) 
  {
    sonuc += maske[Math.floor(Math.random() * maske.length)];
  }
  return sonuc;
}


function bildirim(bildirimturu,bildirimbaslik,bildirimmetni) {
  Swal.fire({
    type: bildirimturu,
    title: bildirimbaslik,
    html: bildirimmetni,
    showConfirmButton: true,
    confirmButtonText: 'OK'
  })
}

function yorum_resim() {
 $(".bg_logo").each(function(index, el) {
  var url = $(el).attr("data-url");
  $(el).css('background-image', 'url('+url+')');
});

}

function yildiz_init() {
  $(".yildiz").each(function(index, el) {
    var aktif = $(el).hasClass('aktif');
    var buyuk = $(el).hasClass('buyuk');
    var multi = $(el).hasClass('multi');
    if (multi) {
      multi = {
        "startColor": "#FF0000",
        "endColor"  : "#00FF00"
      };
    } else {
     multi = {}
   }

   console.log(aktif);
   $(el).rateYo({
    rating: $(el).attr("data-yildiz"),
    starWidth: buyuk?"35px":"23px",
    multiColor: multi
  });
   $(el).rateYo("option", "readOnly", !aktif);
 });
}

function sepete_ekle(id) {
 $("#sepet_urun_id").val(id);
}

function sepet_kayit() {
  var id = $("#sepet_urun_id").val();
  var adet = $("#sepet_adet").val();

  if (adet<1) {
    event.preventDefault();
    $("#dismiss_modal").trigger("click")
    bildirim("error","Failed!","You need to add at least 1 item.");
  } else {
    $.ajax({
      url: 'panel/classes/ajax.php',
      type: 'POST',
      data: {'sepete_ekle': 'sepete_ekle','urun':id,'adet':adet},
      success:function (gelen) {
       var veri = $.parseJSON(gelen);
       $("#popup_bid").modal('hide');

       if (veri.durum=="ok") {
        $("#popup_bid_success").modal('show');
      } else {
        bildirim("error","No Stock",veri.mesaj);
      }





    }
  });
  }
}

function sepet_sil(id) {
  $.ajax({
    url: 'panel/classes/ajax.php',
    type: 'POST',
    data: {'sepet_sil': 'sepet_sil','id':id},
    success:function (gelen) {
     var veri = $.parseJSON(gelen);
     $("#sepet_satir_"+id).remove();
     $("#sepet_toplam").text(veri.ucret+" $");
   }
 }); 
}

function sepet_adet(kendisi) {
  var id = $(kendisi).attr('data-sepet_id');
  var adet = $(kendisi).val();
  $.ajax({
    url: 'panel/classes/ajax.php',
    type: 'POST',
    data: {'sepet_adet_degistir': 'sepet_adet_degistir','sepet_id':id, 'adet':adet},
    success:function (gelen) {
     var veri = $.parseJSON(gelen);
     if (veri.durum=="ok") {
       $("#sepet_fiyat_"+id).text(veri.tek_ucret+" $");
       $("#sepet_toplam").text(veri.toplam_ucret+" $");
     } else {
       bildirim("error","No stock",veri.mesaj);
       $(kendisi).val(veri.max);
       sepet_adet(kendisi);
     }
   }
 }); 
}

$(".navigation_buton").click(function(event) {
  var url = new URL(window.location.href);
  url.searchParams.set('sayfa', $(this).attr("data-sayfa"));
  window.location=url
});



$(document).ready(function() {
  yildiz_init();
  yorum_resim();
}); 

$(document).ready(function() {
  jQuery.datetimepicker.setLocale('tr');
  jQuery('.tarihsaat').datetimepicker({
    format:'Y-m-d H:i', 
    step:5
  });

  jQuery('.tarih').datetimepicker({
    format:'Y-m-d',
    timepicker:false
  });

  $(".tarihsaat, .tarih").attr('autocomplete', 'off');


});
$(document).ready(function() {
  $("input, select, textarea").each(function(index, el) {

    if($(el).is("[required]")){
      $(el).parent("div").find("label").append('<span class="zorunlu ml-1"></span>');
    }

    if(!$(el).is("[placeholder]")){
      var isim = $(el).parent("div").find("label").text();
      $(this).attr('placeholder', isim);
    }



  });
});

$(".silmebutonu").on('click', function(event) {
  event.preventDefault();

  var attr = $(this).attr('href');

  if (typeof attr !== 'undefined' && attr !== false) {
    console.log("This is a link");
  } else {
    var silinecekform=$(this).parent("form");
    var name = $(this).attr('name');
    silinecekform.append(' <input type="hidden" name="'+name+'" value="'+name+'">')
  }



  Swal.fire({
    type: 'warning',
    icon: 'warning',
    showConfirmButton: true,
    showCancelButton:true,
    confirmButtonColor:"rgb(0, 128, 0)",
    cancelButtonColor:"#fc544b",
    title: 'Are you sure?',
    text: 'Are you sure you want to delete?',
    customClass: {
      confirmButton: 'btn btn-success evetsil',
      cancelmButton: 'btn btn-danger hayirsilme'
    },
    confirmButtonText: 'Yes, Delete',
    cancelButtonText: 'No, Do not delete',
  })

  $(".evetsil").click(function () {
   if (typeof attr !== 'undefined' && attr !== false) {
    window.location.href=attr;
  } else {
   silinecekform.submit()
 }


})
});


