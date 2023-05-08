<?php 

require_once __DIR__.'/../config.php';

/*
 * Premium Üyelik İşlemleri
 */

class premium extends veri
{
	public function isPre($kul_id="x")
	{
		if ($kul_id=="x") {
			$t1=ses('pre_bit');
			$pre_durum=ses('pre_durum');
		} else {
			$sonuc=$this->tek("SELECT pre_durum, pre_bit FROM kullanicilar WHERE kul_id=$kul_id");			
			$t1=$sonuc['pre_bit'];
			$pre_durum=$sonuc['pre_durum'];
		}

		if ($pre_durum==1) {

			
			$t2=date("Y-m-d H:i:s");

			if (strlen($t1) > 4 AND strlen($t2) > 4) {
				$t1=strtotime($t1);
				$t2=strtotime($t2);
				$fark=$t1-$t2;

				if ($fark <= 0) {
					return false;
				} else {
					return true;
				}
			}

		} else {
			return false;
		}
	}

	
}


?>