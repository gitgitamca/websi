<?php 
require_once __DIR__.'/../config.php';

class paymax extends veri
{
	private $userName,$password,$shopCode,$hash;

	public function ayarla($hash="x")
	{
		$this->userName = $this->ayarlar['paymax_username'];
		$this->password = $this->ayarlar['paymax_sifre'];
		$this->shopCode = $this->ayarlar['paymax_no'];
		$this->hash = $this->ayarlar['paymax_hash'];
	}

	private function hash_generate($string)
	{
		$hash = base64_encode(pack('H*',sha1($this->userName.$this->password.$this->shopCode.$string.$this->hash)));
		return $hash;
	}
	public function create_payment_link($order_data)
	{
		$post_data = array(
			'userName' => $this->userName,
			'password' => $this->password,
			'shopCode' => $this->shopCode,
			'productName' => $order_data['productName'],
			'productData' => $order_data['productData'],
			'productType' => $order_data['productType'],
			'productsTotalPrice' => $order_data['productsTotalPrice'],
			'orderPrice' => $order_data['orderPrice'],
			'currency' => $order_data['currency'],
			'orderId' => $order_data['orderId'],
			'locale' => $order_data['locale'],
			'conversationId' => $order_data['conversationId'],
			'buyerName' => $order_data['buyerName'],
			'buyerSurName' => $order_data['buyerSurName'],
			'buyerGsmNo' => $order_data['buyerGsmNo'],
			'buyerIp' => $order_data['buyerIp'],
			'buyerMail' => $order_data['buyerMail'],
			'buyerAdress' => $order_data['buyerAdress'],
			'buyerCountry' => $order_data['buyerCountry'],
			'buyerCity' => $order_data['buyerCity'],
			'buyerDistrict' => $order_data['buyerDistrict'],
			'callbackOkUrl' => site."odemesonuc?sonuc=basarili",
			'callbackFailUrl' => site."odemesonuc?sonuc=basarisiz",
			'module'=>'NATIVE_PHP'
		);
		$post_data['hash'] = $this->hash_generate($post_data['orderId'].$post_data['currency'].$post_data['orderPrice'].$post_data['productsTotalPrice'].$post_data['productType'].$post_data['callbackOkUrl'].$post_data['callbackFailUrl']);
		
		$response = $this->send_post('https://apiv1.paymax.com.tr/api/create-payment-link',$post_data);
		
		if ($response['status']=='success' && isset($response['payment_page_url'])) {
			return [
				'durum' => true,
				'donus' => $response
			];
		} else {
			return [
				'durum' => false,
				'donus' => $response
			];
		}
	}

	private function send_post($post_url,$post_data)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$post_url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POST, 1) ;
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post_data));
		curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
		curl_setopt($ch, CURLOPT_TIMEOUT, 20);
		curl_setopt($ch, CURLOPT_REFERER, $_SERVER['SERVER_NAME']);
		
		$response = array();
		if (curl_errno($ch)) {
			/*Curl sırasında bir sorun oluştu*/
			$response = array(
				'status'=>'error',
				'errorMessage'=>'Curl Geçersiz bir cevap aldı',
			);
		} else {
			/*Curl Cevabını Alın*/
			$result_origin = curl_exec($ch);
			/*Curl Cevabını jsondan array'a dönüştür*/
			$result = json_decode($result_origin,true);
			if (is_array($result)) {
				$response = (array) $result;
			} else {
				$response = array(
					'status'=>'error',
					'errorMessage'=>'Dönen cevap Array değildi',
				);
			}
		}
		curl_close($ch);
		return $response;
	}

	public function odeme_baslat($sip_ucret,$tur=0)
	{
		$this->ayarla();
		
		if ($tur==0) {
			$order_id=sip_kod();

			$liste=[
				'islem_id' => $order_id,
				'kullanici' => ses('kul_id'),
				'ucret' => $sip_ucret
			];

			$this->direktekle("bakiye_gecici",$liste);
		} else {
			$order_id=$sip_ucret;
			$sip_ucret=$this->ayarlar['pre_ucret'];
		}
		

		$order_data = array(
			'productName' => 'Bakiye Yükleme',
			'productData' => array(
				array(
					'productName'=>$tur==0 ? "Premium Üyelik Satın Alma" : "Bakiye Yükleme",
					'productPrice'=>$sip_ucret,
					'productType'=>'DIJITAL_URUN',
				),
			),
			'productType' => 'DIJITAL_URUN',
			'productsTotalPrice' => $sip_ucret,
			'orderPrice' => $sip_ucret,
			'currency' => 'TRY',
			'orderId' => $order_id,
			'locale' => 'tr',
			'conversationId' => $order_id,
			'buyerName' => $_SESSION['kul_isim'],
			'buyerSurName' => $_SESSION['kul_soyisim'],
			'buyerGsmNo' => $_SESSION['kul_telefon'],
			'buyerIp' => $_SERVER['REMOTE_ADDR'],
			'buyerMail' => $_SESSION['kul_mail']
		);



		$request=$this->create_payment_link($order_data);

		if ($request['durum']) {
			$odeme_link = $request['donus']['payment_page_url'];
			return [
				'durum' => true,
				'link' => $odeme_link
			];
		} else {
			return [
				'durum' => false,
				'mesaj' => "Ödeme linki üretilirken bir sorun oluştu",
				'hata' => $request['donus']
			];
		}
		

	}

}
?>