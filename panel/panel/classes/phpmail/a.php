<?php 
$dizi=explode("/", $_SERVER['REQUEST_URI']);
$dizi=array_filter($dizi);
$yol=$_SERVER['DOCUMENT_ROOT']."/".array_shift($dizi);
include "$yol/".'a.php';
 ?>