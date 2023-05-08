<?php

include_once 'class-crud.php';

class ticket extends crud
{

	public function log_yaz($metin)
	{
		$dosya = fopen(__DIR__.'/log.txt', 'a');
		fwrite($dosya, date("Y-m-d H:i:s")." - ".$metin."\n -- \n");
		fclose($dosya);
	}

/**
 * [ticketekle description]
 * @param  [type] $post     [description]
 * @param  string $gonderen 0 => Müşteri - 1 => Satıcı
 * @return [type]           [description]
 */
public function ticketekle($post,$gonderen="0")
{
	try {

		$bil = new bildirim($this->db);


		if (isset($_POST['sip'])) {
			sayi($_POST['sip']);
			if ($gonderen=="0") {
				sip_kontrol($_POST['sip']);
			} elseif ($gonderen=="1") {
				sip_kontrol($_POST['sip'],true);
			}
		} elseif (isset($_POST['satici'])) {
			sayi($_POST['satici']);
			sat_varmi($_POST['satici']);
		} else {
			$_POST['sip']=NULL;
		}



		if ($gonderen=="0") {
			if (isset($_POST['sip'])) {
				$satici=$this->tek("SELECT kullanicilar.*,urun.urun_baslik FROM siparis
					INNER JOIN urun ON urun.urun_id=siparis.urun
					INNER JOIN kullanicilar ON kullanicilar.kul_id=urun.satici
					WHERE siparis.sip_id={$_POST['sip']}
					");
				pre($satici);
			} else {
				$satici=$this->tek("SELECT * FROM kullanicilar WHERE kul_id={$_POST['satici']} AND satici=1");
			}

			if (count($satici)==0) {
				throw new Exception("Satıcı Bulunamadı");
			}

			$durum=1;
		} elseif ($gonderen=="1") {
			$satici['kul_id']=ses('kul_id');
			$durum=2;
			$satin_alan=$this->tek("SELECT * FROM siparis
				INNER JOIN kullanicilar ON kullanicilar.kul_id=siparis.kul
				WHERE siparis.sip_id={$_POST['sip']}
				");
		}

		$sorgu=$this->db->prepare("INSERT INTO ticket SET
			ticket_uye=:ticket_uye,
			ticket_konu=:ticket_konu,
			ticket_aciliyet=:ticket_aciliyet,
			ticket_durum=:ticket_durum,
			ticket_son_yanit_tarih=:ticket_son_yanit_tarih,
			ticket_departman=:ticket_departman,
			satici=:satici,
			sip=:sip
			");

		$ekleme=$sorgu->execute(array(
			'ticket_uye' => $gonderen=="0" ? $_SESSION['kul_id'] : $satin_alan['kul_id'],
			'ticket_konu' => $_POST['ticket_konu'],
			'ticket_aciliyet' => $_POST['ticket_aciliyet'],
			'ticket_durum' => $durum,
			'ticket_son_yanit_tarih' => date("Y-m-d H:i:s"),
			'ticket_departman' => $_POST['ticket_departman'],
			'satici' => $gonderen=="1" ? $_SESSION['kul_id'] : $satici['kul_id'],
			'sip' => $_POST['sip']
		));

		$sonid=$this->sonid("ticket","ticket_id");


		$sorgu=$this->db->prepare("INSERT INTO ticket_bag SET
			ticket_id=:ticket_id,
			ticket_gonderen=:ticket_gonderen,
			ticket_detay=:ticket_detay
			");

		$ekleme=$sorgu->execute(array(
			'ticket_id' => $sonid,
			'ticket_gonderen' => $gonderen,
			'ticket_detay' => $_POST['ticket_detay']
		));

		if ($_POST['ticket_departman']==0) {
			$departman="Teknik Destek";
		} elseif ($_POST['ticket_departman']==1) {
			$departman="Ödeme Bildirme";
		} else {
			$departman="Satış Öncesi";
		}

		$konu=$_POST['ticket_konu'];
		$aciliyet=$_POST['ticket_aciliyet'];

		require_once 'ticket-mail.php';

		$detay="<p>
		<span style='font-size: 18px;'></span>
		<b>
		<span style='font-size: 18px;'>New Support Ticket Created!</span>
		</b>
		</p>
		<p>
		</p>
		<p></p>
		<span style='font-size: 14px;'>
		<a href='".yol."' target='_blank'>".$this->ayarlar['site_baslik']."</a>

		</span>";


		if ($gonderen==1) {
			$satici=$satin_alan;
		}

		$maildetayi=array(
			'mail_baslik' => "New Support Ticket Created!",
			'mail_isim' => $this->ayarlar['site_baslik'],
			'mail_adres' => $satici['kul_mail'],
			'mail_detay' => $detay
		);


		if ($satici['ticket_mail_onay']==1) {
			$this->mailgonder($maildetayi);
		}

		if ($satici['ticket_bildirim_onay']==1) {
			$bil->onesignal_web("New Support Ticket Created!","'".$konu."' titled ticket created.",[$satici['web_bildirim']]);
			$bil->onesignal("New Support Ticket Created!","'".$konu."' titled ticket created.",[$satici['uygulama_bildirim']]);
			$bil->telegram("New Support Ticket Created!","'".$konu."' titled ticket created.",$satici['tg_id']);
		}

		if ($ekleme) {
			return TRUE;
		} else {
			throw new Exception(implode($sorgu->errorInfo()), 1);
		}

	} catch (Exception $e) {
		$_SESSION['hata']=$e->getMessage();
		return FALSE;
	}
}




public function ticketyanitla($post,$gonderen)
{
	try {



		$_POST=$post;

		sayi($_POST['ticket_id']);

		pre($post);

		if ($gonderen==0) {
			ticket_kontrol($_POST['ticket_id']);
			$kul=$this->tek("SELECT * FROM ticket INNER JOIN kullanicilar ON kullanicilar.kul_id=ticket.satici WHERE ticket_id={$_POST['ticket_id']}");
			$durum=1;
		} elseif ($gonderen==1) {
			ticket_kontrol($_POST['ticket_id'],true);
			$kul=$this->tek("SELECT * FROM ticket INNER JOIN kullanicilar ON kullanicilar.kul_id=ticket.ticket_uye WHERE ticket_id={$_POST['ticket_id']}");
			$durum=2;
		}

		if (count($kul)==0) {
			if ($gonderen==0) {
				throw new Exception("Satıcı Bulunamadı");
			} else {
				throw new Exception("Kullanıcı Bulunamadı");
			}
		}

		$sorgu=$this->db->prepare("INSERT INTO ticket_bag SET
			ticket_id=:ticket_id,
			ticket_gonderen=:ticket_gonderen,
			ticket_detay=:ticket_detay
			");

		$ekleme=$sorgu->execute(array(
			'ticket_id' => $_POST['ticket_id'],
			'ticket_gonderen' => $gonderen,
			'ticket_detay' => $_POST['ticket_detay']
		));

		$sorgu=$this->db->prepare("UPDATE ticket SET
			ticket_son_yanit_tarih=:ticket_son_yanit_tarih,
			ticket_durum=:ticket_durum WHERE ticket_id=:ticket_id
			");

		$ekleme=$sorgu->execute(array(
			'ticket_son_yanit_tarih' => date('Y.m.d H:i:s'),
			'ticket_durum' => $durum,
			'ticket_id' => $_POST['ticket_id']
		));


		$ticketdetay=$this->tekil("ticket", "ticket_id", $_POST['ticket_id'], "*");





		$detay="<p>
		<span style='font-size: 18px;'></span>
		<b>
		<span style='font-size: 18px;'>".$ticketdetay['ticket_konu']." titled support ticket replied</span>
		</b>
		</p>
		<p>
		<span style='font-size: 14px;'>
		See the reply with this <a href='".yol."' target='_blank'>".yol." </a> URL
		</span>
		</p>
		<p>
		<span style='font-size: 14px;'>".$this->ayarlar['site_baslik']."</span>
		</p>";

		$maildetayi=array(
			'mail_baslik' => "Support ticket replied",
			'mail_isim' => $this->ayarlar['site_baslik'],
			'mail_adres' => $kul['kul_mail'],
			'mail_detay' => $detay
		);

		$bil = new bildirim($this->db);

		if ($kul['ticket_mail_onay']==1) {
			$this->mailgonder($maildetayi, "Ticket Yanıt");
		}


		if ($kul['ticket_bildirim_onay']==1) {
			$bil->onesignal_web("Support ticket has been replied","'".$ticketdetay['ticket_konu']."' titled support ticket has been replied.",[$kul['web_bildirim']]);
			$bil->onesignal("Support ticket has been replied","'".$ticketdetay['ticket_konu']."' titled support ticket has been replied.",[$kul['uygulama_bildirim']]);
			$bil->telegram("Support ticket has been replied","'".$ticketdetay['ticket_konu']."' titled support ticket has been replied.",$kul['tg_id']);
		}

		if ($ekleme) {
			return TRUE;
		} else {
			throw new Exception(implode($sorgu->errorInfo()), 1);
		}


	} catch (Exception $e) {
		$_SESSION['hata']=$e->getMessage();
		return FALSE;
	}
}

public function ticketkapat($post, $saticimi=false)
{
	try {

		sayi($_POST['ticket_id']);
		ticket_kontrol($_POST['ticket_id'],$saticimi);

		$sorgu=$this->db->prepare("UPDATE ticket SET
			ticket_durum=:ticket_durum WHERE ticket_id=:ticket_id
			");

		$ekleme=$sorgu->execute(array(
			'ticket_durum' => 0,
			'ticket_id' => $_POST['ticket_id']
		));

		if ($ekleme) {
			return TRUE;
		} else {
			throw new Exception(implode($sorgu->errorInfo()), 1);
		}

	} catch (Exception $e) {
		$_SESSION['hata']=$e->getMessage();
		return FALSE;
	}
}
public function konusmalar($ticket_id)
{
	return $this->cok("SELECT * FROM ticket_bag WHERE ticket_id=$ticket_id ORDER BY ticket_bag_id DESC");
}


}

?>