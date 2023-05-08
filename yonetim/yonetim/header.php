<?php 
require_once  __DIR__.'/../panel/config.php';

yetkikontrol(e);

$kulbilgi=$crud->tek("SELECT * FROM kullanicilar WHERE kul_id={$_SESSION['kul_id']}");
if (isset($_GET['tema'])) {
  setcookie("aksoyhlc_hesap_tema",$_GET['tema'],strtotime("+400 day"),"/");
}

if (isset($_GET['arkaplan'])) {
  setcookie("aksoyhlc_hesap_arkaplan",$_GET['arkaplan'],strtotime("+400 day"),"/");
}
?>
<!DOCTYPE html>
<html lang="tr">
<head>
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,700,800&display=swap" rel="stylesheet">
  <meta http-equiv=content-type content=text/html;charset=UTF-8>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <link rel="shortcut icon" type="image/png" href="../dosyalar/<?php echo $ayarcek['site_logo'] ?>">
  <title><?php echo $ayarcek['site_baslik'] ?></title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?php echo panel ?>/assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800&display=swap" rel="stylesheet">

  <!-- CSS Libraries -->

  <link rel="stylesheet" href="<?php echo panel ?>/assets/css/components.css">
  <link rel="stylesheet" href="<?php echo panel ?>/assets/modules/editor/summernote-bs4.css">
  <script src="<?php echo panel ?>/assets/modules/jquery-3.4.1.min.js"></script>
  <link rel="stylesheet" href="<?php echo panel ?>/assets/modules/select/bootstrap-select.min.css">
  <link rel="stylesheet" type="text/css" href="<?php echo panel ?>/assets/modules/md/dist/simplemde.min.css">
  <link rel="stylesheet" href="<?php echo panel ?>/assets/modules/izitoast/css/iziToast.min.css">
  <link href="<?php echo panel ?>/assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  <?php 

  if (!isset($_COOKIE['aksoyhlc_hesap_tema'])) {
    fileadd(panel."/assets/css/style1.css");
  } else {
    fileadd(panel."/assets/css/style".$_COOKIE['aksoyhlc_hesap_tema'].".css");
  }


  ?>


  <script>
    var dtDom="<'row mobilgizleexport gizlemeyiac'<'col-md-6'l><'col-md-6'f><'col-md-4 d-none d-print-block'B>>rtip";
  </script>
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
  
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo panel ?>/assets/css/aksoyhlc.css">

</head>
<body class="sidebar-gone">
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
          </ul>
          <div class="search-element"></div>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="" data-step="9" data-intro="Bu alan ile temayı değiştirebilir arkaplan görselini aktif veya pasif yapabilirsiniz">
            <div class="dropdown">
              <button class="btn btn-outline-light btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Tema
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="<?php echo yonetim ?>?tema=1">Tema - 1</a>
                <a class="dropdown-item" href="<?php echo yonetim ?>?tema=2">Tema - 2</a>
                <a class="dropdown-item" href="<?php echo yonetim ?>?tema=3">Tema - 3</a>
                <a class="dropdown-item" href="<?php echo yonetim ?>?tema=4">Tema - 4</a>
                <a class="dropdown-item" href="<?php echo yonetim ?>?tema=5">Tema - 5</a><!-- 
                <a class="dropdown-item" href="<?php echo yonetim ?>?arkaplan=1">Arkaplan Görseli <span class="badge badge-success">Aktif</span></a>
                <a class="dropdown-item" href="<?php echo yonetim ?>?arkaplan=0">Arkaplan Görseli <span class="badge badge-danger">Pasif</span></a> -->
              </div>
            </div>
          </li>
          <li class="dropdown dropdown-list-toggle"></li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
           <!--  <img alt="image" src="../dosyalar/<?php echo $ayarcek['site_logo'] ?>" class="rounded-circle mr-1"> -->
           <div class="d-sm-none d-lg-inline-block"><?php echo @$_SESSION['kul_tamisim'] ?></div></a>
           <div class="dropdown-menu dropdown-menu-right">
            <div class="dropdown-title">Kullanıcı İşlemleri</div>
            <a href="<?php echo site."profil" ?>" class="dropdown-item has-icon">
              <i class="far fa-user"></i> Profil
            </a>
            <div class="dropdown-divider"></div>
            <a href="<?php echo site."cikis" ?>" class="dropdown-item has-icon text-danger">
              <i class="fas fa-sign-out-alt"></i> Çıkış
            </a>
          </div>
        </li>
      </ul>
    </nav>
    <div class="main-sidebar sidebar-style-2" tabindex="1" style="overflow: hidden; outline: none;">
      <aside id="sidebar-wrapper">

       <div class="sidebar-brand">
        <a href="index.php"><span style="font-size: 1.5rem">Aksoyhlc</span></a>
      </div>

      <ul class="sidebar-menu">

        <li><a href="urunler" class="nav-link"><i class="fas fa-tasks"></i><span>Ürünler</span></a></li>

        <li><a href="hesaplar" class="nav-link"><i class="far fa-user-circle"></i><span>Hesaplar</span></a></li>

        <li><a href="siparisler" class="nav-link"><i class="fas fa-store"></i><span>Siparişler</span></a></li>

        <li><a href="bakiyeyuklemeleri" class="nav-link"><i class="fas fa-wallet"></i><span>Yüklenen Bakiyeler</span></a></li>

        <li><a href="magazalar" class="nav-link"><i class="fas fa-store-alt"></i><span>Mağazalar</span></a></li>
        <li><a href="basvurular" class="nav-link"><i class="fas fa-store-alt"></i><span>Mağaza Başvuruları</span></a></li>

        <li><a href="kullanicilar" class="nav-link"><i class="far fa-user-circle"></i><span>Kullanıcılar</span></a> </li>

        <li><a href="degerlendirmeler" class="nav-link"><i class="far fa-star"></i><span>Değerlendirmeler</span></a> </li>

        <li><a href="talepler" class="nav-link"><i class="fas fa-coins"></i><span>Para Çekim Talepleri</span></a> </li>

        <li class="dropdown">
          <a href="#" class="nav-link has-dropdown"><i class="fas fa-percent"></i><span>Kupon İşlemleri</span></a>
          <ul class="dropdown-menu">
           <li><a class="nav-link" href="kuponekle">Kupon Oluştur</a></li>
           <li><a class="nav-link" href="kuponlar">Kuponlar</a></li>
         </ul>
       </li>

       <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-align-left"></i><span>Kategoriler</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="kategoriekle.php">Kategori Ekle</a></li>
          <li><a class="nav-link" href="kategoriler.php">Kategoriler</a></li>
        </ul>
      </li>


      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="far fa-envelope"></i><span>Mail</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="mailgonder?mail=normal">Mail Gönder</a></li>
          <li><a class="nav-link" href="mailgonder?mail=toplumail">Kişilere Gönder</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-sms"></i><span>SMS</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="smsgonder?mail=normal">SMS Gönder</a></li>
          <li><a class="nav-link" href="smsler">Gönderilen SMS'ler</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="far fa-window-restore"></i><span>Popup Bildirim</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="popupbildirimekle">Bildirim Ekle</a></li>
          <li><a class="nav-link" href="popuplar">Bildirimler</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="far fa-sticky-note"></i><span>Notlar</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="notekle">Not Ekle</a></li>
          <li><a class="nav-link" href="notlar">Notlar</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-camera"></i><span>Hikayeler</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="hikayeekle">Hikaye Ekle</a></li>
          <li><a class="nav-link" href="hikayeler">Hikayeler</a></li>
        </ul>
      </li>


      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-file"></i><span>Blog</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="yaziekle">Yazı Ekle</a></li>
          <li><a class="nav-link" href="yazilar">Tüm Yazılar</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-ellipsis-h"></i><span>S.S.S</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="sssekle">S.S.S Ekle</a></li>
          <li><a class="nav-link" href="sss">S.S.S</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-file-alt"></i><span>Sayfalar</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="sayfaekle">Sayfa Ekle</a></li>
          <li><a class="nav-link" href="sayfalar">Sayfalar</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-bars"></i><span>Slider</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="sliderekle">Slider Ekle</a></li>
          <li><a class="nav-link" href="slider">Sliderlar</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-grip-lines"></i><span>Banner</span></a>
        <ul class="dropdown-menu">
          <li><a class="nav-link" href="bannerekle">Banner Ekle</a></li>
          <li><a class="nav-link" href="bannerler">Bannerler</a></li>
        </ul>
      </li>


      <li> <a href="rapor" class="nav-link"><i class="fas fa-chart-bar"></i><span>Rapor</span></a></li>


      <li class="">
        <a href="yedekler.php" class="nav-link"><i class="fas fa-database"></i><span>Yedekler</span></a>
      </li>


      <li class="">
        <a href="ayarlar" class="nav-link"><i class="fas fa-cogs"></i><span>Ayarlar</span></a>
      </li>

      <li class="">
        <a href="<?php echo site ?>profil" class="nav-link"><i class="far fa-user-circle"></i><span>Profil</span></a>
      </li>

      <li class="">
        <a href="<?php echo site ?>cikis" class="nav-link text-danger"><i class="fas fa-sign-out-alt"></i><span>Çıkış</span></a>
      </li>

    </ul>
  </aside>
</div>

<!-- Main Content -->
<div class="main-content" style="min-height: 600px;">


