<?php 
$http="http://";
$mailicerigi='
<style>
	 @media only screen and (max-width: 700px) {
    .lead {
    	font-size:14px !important;
    }
  }
</style>

<div style="
background-color: #e9ecef;
padding: 2rem 1rem;
border-radius: .3rem;
"><center>
<h1 style="box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 2.5rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px; text-align: -webkit-center;">
Yeni Görev</h1>
<div class="lead" style="box-sizing: border-box;color: #212529;font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size: 1rem;margin-bottom: 1rem;text-align: -webkit-center;">
Yöneticiniz Tarafından Yeni Bir Göreve Atandınız&nbsp;<br style="box-sizing: border-box;">Oturum Açtıktan Sonra Görevlerinizi Yönetebilirsiniz</div>
<hr class="mr-3" style="border-bottom: 0px; border-image: initial; border-left: 0px; border-right: 0px; border-top-color: rgba(0, 0, 0, 0.1); border-top-style: solid; box-sizing: content-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; height: 0px; margin-bottom: 1rem; margin-right: 1rem !important; margin-top: 1rem; overflow: visible; text-align: -webkit-center;">
<table class="table table-bordered table-dark" style="background-color: #212529;border-collapse: collapse;border: 0px;box-sizing: border-box;color: white;font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;margin-bottom: 1rem;width: fit-content;min-width: 40%;"><thead style="box-sizing: border-box;">
<tr style="box-sizing: border-box;"><th colspan="2" scope="col" style="border-color: rgb(50, 56, 62); border-image: initial; border-style: solid; border-width: 1px 1px 2px; box-sizing: border-box; padding: 0.75rem; vertical-align: bottom;">Detaylar</th></tr>
</thead><tbody class="table-light text-dark" style="background-color: #fdfdfe; box-sizing: border-box; color: rgb(52, 58, 64) !important;">
<tr style="box-sizing: border-box;"><th scope="row" style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">Başlık</th><th style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">'.$baslik.'</th></tr>
<tr style="box-sizing: border-box;"><th scope="row" style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">Teslim Tarihi</th><th style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">'.$teslim_tarihi.'</th></tr>
<tr style="box-sizing: border-box;"><th scope="row" style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">Durum</th><th style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">'.$durum.'</th></tr>
<tr style="box-sizing: border-box;"><th scope="row" style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">Aciliyet</th><th style="border: 1px solid rgb(50, 56, 62); box-sizing: border-box; padding: 0.75rem; vertical-align: top;">'.$aciliyet.'</th></tr>
</tbody></table>
<h4 style="box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1.5rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px; text-align: -webkit-center;">
Görev Detayı</h4>
<div class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125) !important; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; margin-bottom: 1rem; text-align: -webkit-center;">'.$detay.'</div>

<a href="'.$siteadresi.'">
<button  class="btn btn-danger" style="background-color: #dc3545;border-color: rgb(220, 53, 69);border-radius: 0.25rem;border-style: solid;border-width: 1px;color: white;cursor: pointer;font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size: 1rem;line-height: 1.5;margin: 0px;overflow: visible;padding: 0.375rem 0.75rem;transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;user-select: none;vertical-align: middle;white-space: nowrap;" type="button">Oturum Aç</button>
</a> <br><br>
<span style="box-sizing: border-box; color: rgb(108, 117, 125) !important; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 13.6px; font-weight: bolder;">Aksoyhlc İş Takip Sistemi Tarafından Gönderilmiştir Lütfen Cevaplamayın</span>
</center>
</div>';

echo $mailicerigi;

?>
