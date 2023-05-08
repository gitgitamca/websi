<?php 
include_once 'class-veri.php';

class recaptcha extends veri
{

	public function goster()
	{
		if ($this->ayarlar['bot_durum']==1) {
			echo '<div class="g-recaptcha" data-sitekey="'.$this->ayarlar['recaptcha_key'].'"></div>';
		}		
	}

	public function js_dogrulama($form_id)
	{
		if ($this->ayarlar['bot_durum']==1) {
			echo '
			<script type="text/javascript">
			$("#'.$form_id.'").submit(function () {
				if (grecaptcha.getResponse() == ""){
					event.preventDefault();
					bildirim("error","reCAPTCHA Verify","You need to verify that you are not a bot");
					} else {
						this.submit();
					}
					})
					</script>
					';
				}
			}



			public function dogrulama()
			{
				if ($this->ayarlar['bot_durum']==1) {
					try {
						if(isset($_POST['g-recaptcha-response'])){
							$captcha=$_POST['g-recaptcha-response'];
						}
						if(!$captcha){
							throw new Exception("Please verify you are not a bot");
						}

						$secretKey = $this->ayarlar['recaptcha_secret_key'];
						$ip = $_SERVER['REMOTE_ADDR'];
						
						$url="https://www.google.com/recaptcha/api/siteverify?secret=".$secretKey."&response=".$captcha."&remoteip=".$ip;




						$ch = curl_init($url);
						curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
						curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
						curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
						curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
						curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
						curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
						$http_response = curl_exec($ch);
						$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
						curl_close($ch);
						$responseKeys=json_decode($http_response,true);

						if(intval($responseKeys["success"]) !== 1) {
							throw new Exception("It may be spam, please verify that you are not a bot.", 1);
						} else {
							return true;
						}
					} catch (Exception $e) {
						$_SESSION['hata']=$e->getMessage();
						return false;
					}
				} else {
					return true;
				}

				
			}

		}

		?>