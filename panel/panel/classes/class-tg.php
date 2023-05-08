<?php 


/**
 * Telegram İşlemleri
 */
class tg extends veri
{
	public function gonder($baslik,$mesaj,$id)
	{
		return tg_bildirim($this->ayarlar, $baslik, $mesaj, $id);
	}	


	public function dogrulama($veri)
	{
		try {
			$check_hash = $veri['hash'];
			unset($veri['hash']);
			$data_check_arr = [];
			foreach ($veri as $key => $value) {
				$data_check_arr[] = $key . '=' . $value;
			}
			sort($data_check_arr);
			$data_check_string = implode("\n", $data_check_arr);
			$secret_key = hash('sha256', $this->ayarlar['tg_bot_id'], true);
			$hash = hash_hmac('sha256', $data_check_string, $secret_key);
			if (strcmp($hash, $check_hash) !== 0) {
				throw new Exception('Hash Doğrulaması Başarısız');
			}
			if ((time() - $veri['auth_date']) > 86400) {
				throw new Exception('Veri Zaman Aşımı');
			}

			$this->guncelle($veri);

			return ['durum' => 'ok', 'icerik' => $veri];
		} catch (Exception $e) {
			return ['durum' => 'no', 'mesaj' => $e->getMessage()];
		}
	}


	public function guncelle($veri)
	{
		$this->direktguncelle("kullanicilar", "kul_id", ses('kul_id'), ['tg_id' => $veri['id']]);

		if (yetkikontrol(h)) {
			$this->direktguncelle("ayarlar", "id", 1, ['admin_tg' => $veri['id']]);
		}

	}
}





?>