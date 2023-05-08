<?php 
require_once 'panel/config.php';

if (!isset($_COOKIE['aksoyhlc_hesap_dark'])) {
  setcookie("aksoyhlc_hesap_dark","dark",strtotime("+400 day"),"/");
  $_COOKIE['aksoyhlc_hesap_dark']="dark";
}


if (isset($_GET['mail_dogrula'])) {
  if (!mail_onay(h)) {
    if ($crud->maildogrula(ses("kul_id"))) {
      git(yol,"gonderildi");
    } else {
      git(yol,"no");
    }
  } else {
    git(yol,"dogrulandi");
  }
}


$urun_kucuk_sosyal=false;
?>
<!DOCTYPE html>
<html>
<head>

  <base href="<?php echo yol ?>/">
  <meta charset=utf-8>
  <meta http-equiv=content-type content=text/html;charset=UTF-8>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <!-- Theme Style -->
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">

  <!-- Reponsive -->
  <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

  <!-- Favicon and Touch Icons  -->
  <link rel="shortcut icon" href="dosyalar/<?php echo $ayarcek['site_logo'] ?>">
  <link rel="apple-touch-icon-precomposed" href="dosyalar/<?php echo $ayarcek['site_logo'] ?>">
  <title><?php echo @$meta_baslik; ?></title>
  <meta name="description" content="<?php echo @$meta_aciklama ?>">
  <meta name="keywords" content="<?php echo @$meta_anahtar_kelime ?>">
  <meta name="author" content="<?php echo @$ayarcek['site_sahibi'] ?>"/>
  <meta property="og:locale" content="tr_TR"/>
  <meta property="og:site_name" content="<?php echo $ayarcek['site_baslik'] ?>"/>
  <meta property="og:title" content="<?php echo @$meta_baslik; ?>"/>
  <meta property="og:description" content="<?php echo @$meta_aciklama ?>"/>
  <meta property="og:url" content="<?php echo "https://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}" ?>"/>
  <meta property="og:image" content="<?php echo @$meta_one_cikan ?>"/>
  <meta property="og:image:width" content="750"/>
  <meta property="og:image:height" content="415"/>
  <meta name="twitter:card" content=summary/>
  <meta name="twitter:title" content="<?php echo @$meta_baslik; ?>"/>
  <meta name="twitter:description" content="<?php echo @$meta_aciklama ?>"/>
  <meta name="twitter:image" content="<?php echo @$meta_one_cikan ?>"/>
  
  <?php echo @$ekmeta ?>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flipclock/0.7.7/flipclock.min.css" integrity="sha512-mVGq8839CGwEny4qxCTdXWnfLhviAYLE5IG5d0swMNqwoWuC8jetxQoivyLEsS2MzmH0Yyuh5TzvRGRAPmPeNg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  
  <link rel="stylesheet" type="text/css" href="panel/assets/css/aksoyhlc.css">

  <script src="assets/js/jquery.min.js"></script>
  <script src='https://www.google.com/recaptcha/api.js' async defer></script>

  
  <?php if (strlen($ayarcek['analytics'])>5): ?>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $ayarcek['analytics'] ?>"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '<?php echo $ayarcek["analytics"] ?>');
    </script>
  <?php endif ?>



  <style type="text/css" media="screen">
    <?php 
    if ($ayarcek['top_durum']==0) {
      echo "#scroll-top{display:none;}";
    }

    ?>

    .swal2-popup {
      font-size: 1.8rem !important;
    }

    .btn-primary{
      background: #5142FC !important;
      border-color: #5142FC !important
    }

    .badges .badge {
      margin: 0 8px 10px 0;
    }

    .badge {
      vertical-align: middle;
      padding: 7px 12px;
      font-weight: 600;
      letter-spacing: .3px;
      border-radius: 30px;
      font-size: 12px; 
    }
    .badge.badge-warning {
      color: #fff; 
    }
    .badge.badge-primary {
      background-color: #6A7194;
    }
    .badge.badge-secondary {
      background-color: #34395e;
    }
    .badge.badge-success {
      background-color: #6A937B;
    }
    .badge.badge-info {
      background-color: #6A95BF; 
    }
    .badge.badge-danger {
      background-color: #BF6B7D; 
    }
    .badge.badge-light {
      background-color: #e3eaef;
      color: #264653; 
    }
    .badge.badge-white {
      background-color: #ffffff;
      color: #264653; 
    }
    .badge.badge-dark {
      background-color: #264653; 
    }

    h1 .badge {
      font-size: 24px;
      padding: 16px 21px; }

      h2 .badge {
        font-size: 22px;
        padding: 14px 19px; 
      }

      h3 .badge {
        font-size: 18px;
        padding: 11px 16px;
      }

      h4 .badge {
        font-size: 16px;
        padding: 8px 13px;
      }

      h5 .badge {
        font-size: 14px;
        padding: 5px 10px;
      }

      h6 .badge {
        font-size: 11px;
        padding: 3px 8px;
      }

      .btn .badge {
        margin-left: 5px;
        padding: 4px 7px; 
      }
      .btn .badge.badge-transparent {
        background-color: rgba(255, 255, 255, 0.25);
        color: #fff; 
      }

      .slider-img {
        display: flex;
        align-items: center;
      }
      .add-balance{
        color: white!important; 
        font-size: 2.4rem!important; 
        width: 50%!important; 
        text-align: center!important; 
        margin-bottom: 2rem!important; 
        height: 60px!important;
        display: inline-flex!important;
        justify-content: center!important; 
        align-items: center!important; 
        border-radius: 1rem !important; 
        z-index: 5;
      }
      .add-balance::after{
        color: white!important;
      }
      .add-balance:hover{
        color: white!important;
      }


    </style>


    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
    <script>


      window.OneSignal = window.OneSignal || [];
      OneSignal.push(function() {
       initConfig = OneSignal.init({
        appId: "<?php echo $ayarcek['onesignal_web_app_id'] ?>",
      });
       OneSignal.push(function () {
        OneSignal.SERVICE_WORKER_PARAM = { scope: '/smart/' };
        OneSignal.SERVICE_WORKER_PATH = 'smart/OneSignalSDKWorker.js'
        OneSignal.SERVICE_WORKER_UPDATER_PATH = 'smart/OneSignalSDKUpdaterWorker.js'
        OneSignal.init(initConfig);
      });

       OneSignal.getUserId(function(userId) {
        console.log("OneSignal User ID:", userId);
        localStorage.setItem("aksoyhlc_hesap_web_userid", userId);
      });
     });
   </script>

   <?php echo $ayarcek['header_kod'] ?>

 </head>

 <body class="body header-fixed <?php echo @$_COOKIE['aksoyhlc_hesap_dark']=='dark'?'is_dark':''; ?>" style="-webkit-print-color-adjust: exact;">
  <!-- <div class="alert alert-info text-center alert-dismissible fade show" id="ust_duyuru" style="display: none; position: fixed; z-index: 999999; width: 100%;" role="alert">
    <span id="ust_uyari_metin"></span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div> -->

  <div class="alert text-center alert-dismissible fade show" id="mail_ust_duyuru" style="
  display: none;
  position: fixed;
  z-index: 999999;
  width: 100%;
  color: white;
  background-color: #803d52;
  border-color: transparent;
  font-size: 2.2rem;
  " role="alert">
  <span id="ust_uyari_metin">Please Confirm Your Email Address<br><br> <a style="border-bottom: 1px dotted white !important; color:white; font-weight: bold;" href="<?php echo yol ?>?mail_dogrula=true">Submit Verification Code</a></span>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span style="font-size: 3rem" aria-hidden="true">&times;</span>
  </button>
</div>

<div class="topbar" id="ust_duyuru" style="display: none; position: fixed; z-index: 999999; width: 100%; background:var(--bg-topbar); max-height: 100px;">
 <span style="text-align: center;" id="ust_uyari_metin_alt"></span>
</div>

<?php 

$popupsonuc=$crud->satir_sayisi_sorgu("SELECT popup_id FROM popup WHERE popup_durum=1");

if ($popupsonuc!=0) { 
  $bildirimdetayi=$crud->tek("SELECT * FROM popup WHERE popup_durum=1");
  if (@$_COOKIE['aksoyhlc_hesap_bildirim_id']!=$bildirimdetayi['popup_id']) { 
    setcookie("aksoyhlc_hesap_bildirim_id",$bildirimdetayi['popup_id'],strtotime("+30 day"),"/");
    $gorulme=$bildirimdetayi['popup_gorulme']+1;
    $crud->direktguncelle("popup","popup_id",$bildirimdetayi['popup_id'],array('popup_gorulme' => $gorulme)); ?>

    <?php if ($bildirimdetayi['bildirim_tur']==1): ?>
      <script
      src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"
      integrity="sha256-lSjKY0/srUM9BE3dPm+c4fBo1dky2v27Gdjm2uoZaL0="
      crossorigin="anonymous"></script>
      <script>
        $(document).ready(function() {
          $.ajax({
            url: '<?php echo ajax ?>',  
            type: 'POST',
            data: {'bildirim_getir': <?php echo $bildirimdetayi['popup_id'] ?>},
            success:function (gelen) {
              var veri = $.parseJSON(gelen);
              var metin = veri.popup_detay;
              $("#ust_uyari_metin_alt").html(metin)
              $('.alert').alert();
              setTimeout(function () {
                $("#ust_duyuru").show('slide', { direction: "up" } , 500);
              },2000);
              setTimeout(function () {
                $("#ust_duyuru").hide('fast');
              },10000)
            }
          });


        });
      </script>
      <?php else: ?>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg" role="document">
           <div class="modal-content" style="background: <?php echo @$_COOKIE['aksoyhlc_hesap_dark']=='dark'?'var(--color-3)':'white'; ?>; border-radius: 1.5rem; padding:1rem">
            <div class="modal-body p-1">
              <div class="d-flex">
                <h4 style="color: var(--color-2)"><?php echo $bildirimdetayi['popup_baslik'] ?></h4> <button style="
                font-size: 2rem;
                background: var(--border-color-2);
                color: var(--color-2);

                " data-dismiss="modal" aria-label="Kapat" type="button" class="btn ml-auto">X</button>
              </div>
              <hr>
              <?php echo $bildirimdetayi['popup_detay'] ?>
            </div>      
          </div>
        </div>
      </div>

      <button id="modalbutonu" type="button" class="btn btn-primary d-none" data-toggle="modal" data-target="#exampleModal">
      Notification
      </button>

      <script type="text/javascript">
        $(document).ready(function() {
          $("#modalbutonu").trigger('click');
        });
      </script>
    <?php endif ?>


  <?php }
}

?>


<!-- preloade -->
    <!-- <div class="preload preload-container">
        <div class="preload-logo"></div>
      </div> -->
      <!-- /preload -->

      <div id="wrapper">
        <div id="page" class="clearfix">
