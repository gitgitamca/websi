   <header id="header_main" class="header_1 js-header">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="mobile-button"><span></span></div>
          <div id="site-header-inner" class="flex">
            <div id="site-logo" class="clearfix">
              <div id="site-logo-inner">
                <a href="<?php echo yol ?>" rel="home" class="main-logo">
                  <img id ="logo_header" src="<?php echo dosya.$ayarcek['sol_ust_logo'] ?>"
                  alt="<?php echo $ayarcek['site_baslik'] ?>" width="151" height="45"
                  data-retina="<?php echo dosya.$ayarcek['sol_ust_logo'] ?>" data-width="151"
                  data-height="45">
                </a>
              </div>
            </div>
            <form id="arama_form" onsubmit="arama_yap()" method="GET" class="form-search">
              <input id="aranacak_metin" type="text" placeholder="Search...">
              <button><i class="far fa-search"></i></button>
            </form>

            <div id="site-menu">
              <nav id="main-nav" class="main-nav">
                <ul id="menu-primary-menu" class="menu">
                  <li class="menu-item ">
                    <a href="<?php echo yol ?>"><i class="fa fa-home"></i> Home Page</a>
                  </li>
                  <li class="menu-item menu-item-has-children ">
                    <a href="#">Items </a>
                    <ul class="sub-menu">
                      <li class="menu-item "><a href="urunler">All Items</a></li>
                      <li class="menu-item"><a href="urunler/indirimdekiler">On Sale</a></li>
                      <li class="menu-item"><a href="urunler/en-cok-satilanlar">Best Sellers</a></li>
                      <li class="menu-item"><a href="urunler/son-yayinlananlar">Recently Posted</a></li>
                      <li class="menu-item"><a href="urunler/en-cok-incelenenler">Most Viewed</a></li>
                    </ul>
                  </li>

                  <li class="menu-item ">
                    <a href="urunler?katlar">Categories</a>
                  </li>

                  <li class="menu-item ">
                    <a href="blog">Blog</a>
                  </li>
                  <li class="menu-item ">
                    <a href="magazalar">Stores</a>
                  </li>
                  <li class="menu-item ">
                    <a href="iletisim">Contact</a>
                  </li>
                  <?php if (oturumkontrol(h)): ?>
                   <?php if (saticimi()): ?>
                    <li class="menu-item ">
                      <a href="panel/">Panel</a>
                    </li>
                    <?php else: ?>
                     <?php if (yetkikontrol(h)): ?>
                       <li class="menu-item ">
                        <a href="yonetim/">Management Panel</a>
                      </li>
                      <?php else: ?>
                       <li class="menu-item menu-item-has-children ">
                        <a href="#"><i class="fa fa-ellipsis-v mr-2"></i> Transactions</a>
                        <ul class="sub-menu">
                         <li class="menu-item"><a href="bakiyeyuklemelerim">Balance: <span class="badge badge-primary fs-75"><?php echo number_format($veri->bakiye(),2,",",".") ?>$</span></a></li>
                         <li class="menu-item"><a href="profil"><i class="far fa-user"></i> Profile</a></li>
                         <li class="menu-item"><a href="destekbiletleri"><i class="far fa-ticket-alt"></i> Support Tickets</a></li>
                         <li class="menu-item"><a href="siparisler"><i class="far fa-bags-shopping"></i> My Orders</a></li>
                         <li class="menu-item"><a href="degerlendirmeler"><i class="far fa-star"></i> My Ratings</a></li>
                         <li class="menu-item"><a href="favoriler"><i class="far fa-heart"></i> Favorites</a></li>
                         <li class="menu-item"><a href="bakiyeyuklemelerim"><i class="far fa-wallet"></i> Top Up History</a></li>
                         <li class="menu-item"><a href="magaza-basvuru"><i class="far fa-store mr-2"></i> Seller Application</a></li>
                         <li class="menu-item"><a href="cikis" style="color:var(--primary-color3)"><i class="far fa-sign-out-alt mr-2"></i> Log out</a></li>
                       </ul>
                     </li>
                   <?php endif ?>
                 <?php endif ?>

                 <?php else: ?>
                  <li class="menu-item ">
                    <a href="giris">Register | Login</a>
                  </li>
                <?php endif ?>
              </ul>
            </nav><!-- /#main-nav -->
          </div>
          <?php if (!saticimi(h)): ?>
            <div class="button-connect-wallet">
              <a href="sepet" class="sc-button wallet style-2">
               <i class="fa fa-shopping-basket"></i>
               <span>Cart</span>
             </a>
           </div>
         <?php endif ?>

         <div class="mode_switcher">
          <a href="#" class="light d-flex align-items-center <?php echo @$_COOKIE['aksoyhlc_hesap_dark']!='dark'?'is_active':''; ?>">
            <img src="assets/images/icon/sun.png" alt="">
          </a>
          <a href="#" class="dark d-flex align-items-center <?php echo @$_COOKIE['aksoyhlc_hesap_dark']=='dark'?'is_active':''; ?>">
            <img id="moon_dark" src="assets/images/icon/moon.png" alt="">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

</header>