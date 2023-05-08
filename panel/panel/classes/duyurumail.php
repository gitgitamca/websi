<?php
$http="http://";
$duyurudetayi='
<center style="box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">
<div class="col-md-7" style="box-sizing: border-box; flex: 0 0 58.3333%; max-width: 100%; min-height: 1px; padding-left: 15px; padding-right: 15px; position: relative; width: 763.578px;">
<div class="jumbotron" style="background-color: #d6f9ff; border-radius: 0.3rem; box-sizing: border-box; color: #3f4648; margin-bottom: 2rem; padding: 4rem 2rem;">
<h1 style="box-sizing: border-box; font-family: inherit; font-size: 2.5rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px;">
New Announcement Released</h1>
<div class="lead" style="box-sizing: border-box; font-size: 1.25rem; margin-bottom: 1rem;">
Your System Administrator Has Posted a New Announcement</div>
<hr class="mr-3" style="border-bottom: 0px; border-image: initial; border-left: 0px; border-right: 0px; border-top-color: rgba(0, 0, 0, 0.1); border-top-style: solid; box-sizing: content-box; height: 0px; margin-bottom: 1rem; margin-right: 1rem !important; margin-top: 1rem; overflow: visible;" />
<h3 style="box-sizing: border-box; color: inherit; font-family: inherit; font-size: 1.75rem; font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem; margin-top: 0px;">'.$duyurubasligi.'</h3>
<div class="text-muted" style="box-sizing: border-box; color: #343a40; margin-bottom: 1rem;">'.$duyurudetayi.'</div>
<a href="'.$http.$_SERVER["SERVER_NAME"].'">
<button class="btn btn-dark" style="background-color: #343a40; border-color: rgb(52, 58, 64); border-radius: 0.25rem; border-style: solid; border-width: 1px; color: white; cursor: pointer; font-family: inherit; font-size: 1rem; line-height: 1.5; margin: 0px; overflow: visible; padding: 0.375rem 0.75rem; transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s; user-select: none; vertical-align: middle; white-space: nowrap;" type="button">Log in</button>
</a>
</div>
</div>
</center>';

echo $duyurudetayi;

?>