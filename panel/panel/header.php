<?php 
require_once 'config.php';
oturumkontrol(e);
saticimi(e);
mail_onay();
isOnay();

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
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="assets/css/components.css">
  <link rel="stylesheet" href="assets/modules/editor/summernote-bs4.css">
  <script src="assets/modules/jquery-3.4.1.min.js"></script>
  <link rel="stylesheet" href="assets/modules/select/bootstrap-select.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
  <link rel="stylesheet" href="assets/modules/izitoast/css/iziToast.min.css">
  <link href="assets/modules/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
  
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.css">

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="assets/css/aksoyhlc.css">

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
  <?php 

  if (!isset($_COOKIE['aksoyhlc_hesap_tema'])) {
    fileadd("assets/css/style1.css");
  } else {
    fileadd("assets/css/style".$_COOKIE['aksoyhlc_hesap_tema'].".css");
  }


  ?>



</head>
<body class="sidebar-gone">
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg  d-print-none"></div>
      <nav class="navbar navbar-expand-lg main-navbar d-print-none">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
          </ul>
          <div class="search-element"></div>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="">
            <?php if ($pre->isPre()): ?>
              <span class="badge badge-success mr-4"><i class="fas fa-crown"></i> Premium Seller</span>
              <?php else: ?>

              <a href="premiumol" class="badge badge-danger text-white mr-4"><i class="fas fa-crown"></i>Get Premium</a>
            <?php endif ?>
          </li>
          <li class="" data-step="9" data-intro="With this field, you can change the theme and make the background image active or passive.">
            <div class="dropdown">
              <button class="btn btn-outline-light btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Theme
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="<?php echo panel ?>?tema=1">Theme - 1</a>
                <a class="dropdown-item" href="<?php echo panel ?>?tema=2">Theme - 2</a>
                <a class="dropdown-item" href="<?php echo panel ?>?tema=3">Theme - 3</a>
                <a class="dropdown-item" href="<?php echo panel ?>?tema=4">Theme - 4</a>
                <a class="dropdown-item" href="<?php echo panel ?>?tema=5">Theme - 5</a><!-- 
                <a class="dropdown-item" href="<?php echo panel ?>?arkaplan=1">Arkaplan Görseli <span class="badge badge-success">Aktif</span></a>
                <a class="dropdown-item" href="<?php echo panel ?>?arkaplan=0">Arkaplan Görseli <span class="badge badge-danger">Pasif</span></a> -->
              </div>
            </div>
          </li>
          <li class="dropdown dropdown-list-toggle"></li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
             <img alt="image" src="<?php echo logo.ses('kul_logo') ?>" class="rounded-circle mr-1">
           <div class="d-sm-none d-lg-inline-block"><?php echo ses('magaza_isim')?></div></a>
           <div class="dropdown-menu dropdown-menu-right">
            <div class="dropdown-title">User Menu</div>
            <a href="<?php echo site."profil" ?>" class="dropdown-item has-icon">
              <i class="far fa-user"></i> Profile
            </a>
            <div class="dropdown-divider"></div>
            <a href="<?php echo site."cikis" ?>" class="dropdown-item has-icon text-danger">
              <i class="fas fa-sign-out-alt"></i> Log out
            </a>
          </div>
        </li>
      </ul>
    </nav>
    <div class="main-sidebar sidebar-style-2 d-print-none" tabindex="1" style="overflow: hidden; outline: none;">
      <aside id="sidebar-wrapper">

       <div class="sidebar-brand">
        <a href="<?php echo panel ?>"><span style="font-size: 1.5rem">Sellıgo</span></a>
      </div>

      <ul class="sidebar-menu">

       <li class="dropdown">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-tasks"></i><span>Items</span></a>
        <ul class="dropdown-menu">
         <li><a class="nav-link" href="urunekle">Add Item</a></li>
         <li><a class="nav-link" href="urunler">All Items</a></li>
       </ul>
     </li>

     <li class="dropdown">
      <a href="#" class="nav-link has-dropdown"><i class="far fa-user-circle"></i><span>Accounts</span></a>
      <ul class="dropdown-menu">
       <li><a class="nav-link" href="hesapekle">Add Account</a></li>
       <li><a class="nav-link" href="hesaplar">All Accounts</a></li>
       <li><a class="nav-link" href="hesapyukle">Bulk Upload</a></li>
     </ul>
   </li>

   <li><a href="siparisler" class="nav-link"><i class="fas fa-store"></i><span>Orders</span></a> </li>

   <li><a href="magazasiparis" class="nav-link"><i class="fas fa-store"></i><span>Sub. Orders</span></a> </li>

   <li><a href="degerlendirmeler" class="nav-link"><i class="far fa-star"></i><span>Feedbacks</span></a> </li>

   <li class="dropdown">
    <a href="#" class="nav-link has-dropdown"><i class="far fa-life-ring"></i><span>Support Tickets</span></a>
    <ul class="dropdown-menu">
     <li><a class="nav-link" href="destekbiletiolustur">Create Support Ticket</a></li>
     <li><a class="nav-link" href="destek-biletleri">Support Tickets</a></li>
   </ul>
 </li>

   <li class="dropdown">
    <a href="#" class="nav-link has-dropdown"><i class="fas fa-percent"></i><span>Coupons</span></a>
    <ul class="dropdown-menu">
     <li><a class="nav-link" href="kuponekle">Create Coupon</a></li>
     <li><a class="nav-link" href="kuponlar">Coupons</a></li>
   </ul>
 </li>

 <li class="dropdown">
  <a href="#" class="nav-link has-dropdown"><i class="fas fa-coins"></i><span>Withdraw Balance</span></a>
  <ul class="dropdown-menu">
   <li><a class="nav-link" href="talepolustur">Make Request</a></li>
   <li><a class="nav-link" href="talepler">Requests</a></li>
 </ul>
</li>


<?php if (isPre()): ?>
  <li class="">
  <a href="apibilgileri" class="nav-link"><i class="fas fa-link"></i><span>API Infos</span></a>
</li>
<?php endif ?>


<li class="">
  <a href="rapor" class="nav-link"><i class="fas fa-chart-bar"></i><span>Reports</span></a>
</li>


<li class="dropdown">
  <a href="#" class="nav-link has-dropdown"><i class="far fa-sticky-note"></i><span>Notes</span></a>
  <ul class="dropdown-menu">
    <li><a class="nav-link" href="notekle">Create Note</a></li>
    <li><a class="nav-link" href="notlar">Notes</a></li>
  </ul>
</li>

<li class="">
  <a href="<?php echo site ?>profil" class="nav-link"><i class="far fa-user-circle"></i><span>Profile</span></a>
</li>
<li class="">
  <a href="<?php echo site ?>cikis" class="nav-link text-danger"><i class="fas fa-sign-out-alt"></i><span>Log Out</span></a>
</li>

</ul>
</aside>
</div>

<!-- Main Content -->
<div class="main-content" style="min-height: 600px;">