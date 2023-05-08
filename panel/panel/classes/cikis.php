<?php 
require __DIR__.'/../config.php';
session_destroy();
setcookie("aksoyhlcoturum",json_encode(@$kullanicilar),strtotime("-10 day"),"/");
header("location:../../index.php");
exit;
 ?>