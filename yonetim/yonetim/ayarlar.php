<?php 
include 'header.php';
yetkikontrol("e");

if (isset($_POST['genelayarkaydet'])) {
	//pre($_POST);
	
	if ($crud->ayarkaydet($_POST,$_FILES)) {
		header("location:ayarlar.php?durum=ok");
		exit;
	} else {
		header("location:ayarlar.php?durum=no");
		exit;
	}
}

?>

<form action="" method="POST" enctype="multipart/form-data">	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<div class="card card-primary shadow br-0-50">
					<div class="card-body p-1">
						<div class="row">
							<div class="col-md-12">
								<ul class="nav nav-pills flex-column" id="myTab4" role="tablist">
									<li class="nav-item">
										<a class="nav-link active show" id="genelayarlar-tab4" data-toggle="tab" href="#genelayarlar" role="tab" aria-controls="contact" aria-selected="false">Genel Ayarlar</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="mailayarlari-tab4" data-toggle="tab" href="#mailayarlari" role="tab" aria-controls="contact" aria-selected="false">Mail Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="bildirimayarlari-tab4" data-toggle="tab" href="#bildirimayarlari" role="tab" aria-controls="contact" aria-selected="false">Bildirim/İletişim Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="sanalposayarlari-tab4" data-toggle="tab" href="#sanalposayarlari" role="tab" aria-controls="contact" aria-selected="false">Sanal Pos Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="sosyalmedyaayarlari-tab4" data-toggle="tab" href="#sosyalmedyaayarlari" role="tab" aria-controls="contact" aria-selected="false">Sosyal Medya Giriş</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="recaptcha-tab4" data-toggle="tab" href="#recaptcha" role="tab" aria-controls="contact" aria-selected="false">reCaptcha Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="reklamayarlari-tab4" data-toggle="tab" href="#reklamayarlari" role="tab" aria-controls="contact" aria-selected="false">Reklam Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="headerfooterkod-tab4" data-toggle="tab" href="#headerfooterkod" role="tab" aria-controls="contact" aria-selected="false">Header/Footer Kod</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="adminayharlari-tab4" data-toggle="tab" href="#adminayharlari" role="tab" aria-controls="contact" aria-selected="false">Admin Ayarları</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="onayalani-tab4" data-toggle="tab" href="#onayalani" role="tab" aria-controls="contact" aria-selected="false">Onay Alanı</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="cerezuyariayarlari-tab4" data-toggle="tab" href="#cerezuyariayarlari" role="tab" aria-controls="cerezuyariayarlari" aria-selected="false">Çerez Uyarı Ayarları</a>
									</li>
									<li class="nav-item">
										<!-- <input type="submit" id="sipariskaydetsubmit" class="d-none" name="siparisekle" value="siparisekle"> -->
										<button id="sipariskaydet" type="submit" name="genelayarkaydet" class="btn btn-danger btn-block mt-3">Ayarları Kaydet</button>
									</li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-md-10">
				<div class="card card-primary br-1 shadow mb-4">
					<div class="card-header py-3">
						<h5 class="m-0 font-weight-bold text-primary">Site Ayarları</h5>   
					</div>
					<div class="card-body">

						<div class="tab-content no-padding" id="myTab2Content">
							<div class="tab-pane fade active show" id="genelayarlar" role="tabpanel" aria-labelledby="genelayarlar-tab4">
								<div class="form-row mb-3">
									<div class="col-md-4 form-group">
										<label>Site Logo-Favicon</label>
										<input class="form-control" id="sitelogosu" name="site_logo" type="file" accept="image/*">
									</div>
									<div class="col-md-4 form-group">
										<label>Öne Çıkan Görsel</label>
										<input class="form-control" id="siteonecikan" name="site_one_cikan" type="file" accept="image/*">
									</div>
									<div class="col-md-4 form-group">
										<label>Sol Üst Menü Ve Footer Görseli</label>
										<input class="form-control" id="siteonecikan" name="sol_ust_logo" type="file" accept="image/*">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Site Linki <small>(Sonuna "/" işaretini koymayın)</small></label>
										<input type="text" required class="form-control" name="site_link" value="<?php echo $ayarcek['site_link'] ?>" placeholder="Site Linki">
									</div>
									<div class="form-group col-md-6">
										<label>Site Başlığı</label>
										<input type="text" required class="form-control" name="site_baslik" value="<?php echo $ayarcek['site_baslik'] ?>" placeholder="Site Başlığı">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Site Açıklaması</label>
										<input type="text" required class="form-control" name="site_aciklama" value="<?php echo $ayarcek['site_aciklama'] ?>" placeholder="Site Açıklaması (En Fazla 160 Karakter)" maxlength="160">
									</div>
									<div class="form-group col-md-6">
										<label>Google Analytics
											<span class="badge badge-primary" data-toggle="tooltip" data-placement="right" title="Bu alana Google Analytics kimliğinizi girin örnek: UA-XXXXX-Y">
												?
											</span>
										</label>
										<input type="text" class="form-control" name="analytics" value="<?php echo $ayarcek['analytics'] ?>">
									</div>
								</div>


								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Satın Alımlarda Mağazadan Kesilecek Komisyon Oranı (% Yüzde)</label>
										<input required="" min="1" max="100" type="number" class="form-control" name="komisyon_oran" value="<?php echo $ayarcek['komisyon_oran'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>Yüklenebilecek En Düşük Ücret</label>
										<input required="" type="number" class="form-control" placeholder="Yüklenebilecek Minimum Ücret" name="minimum_ucret" value="<?php echo $ayarcek['minimum_ucret'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>Hikaye Kaç Saniye Gösterilsin</label>
										<input required="" type="number" min="1" class="form-control" placeholder="Hikaye Kaç Saniye Gösterilsin" name="hik_sure" value="<?php echo $ayarcek['hik_sure'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>Disqus Site İsmi</label>
										<input type="text" class="form-control" name="disqus" value="<?php echo $ayarcek['disqus'] ?>">
									</div>
								</div>

								<hr class="hr-text" data-content="Sosyal Medya Linkleri">

								<div class="form-row">
									<div class="form-group col-md-3">
										<label>Facebook Link</label>
										<input type="url" class="form-control" name="site_fb" value="<?php echo $ayarcek['site_fb'] ?>">
									</div>

									<div class="form-group col-md-3">
										<label>İnstagram Link</label>
										<input type="url" class="form-control" name="site_ig" value="<?php echo $ayarcek['site_ig'] ?>">
									</div>

									<div class="form-group col-md-3">
										<label>Twitter Link</label>
										<input type="url" class="form-control" name="site_tw" value="<?php echo $ayarcek['site_tw'] ?>">
									</div>

									<div class="form-group col-md-3">
										<label>Linkedin Link</label>
										<input type="url" class="form-control" name="site_ln" value="<?php echo $ayarcek['site_ln'] ?>">
									</div>
								</div>

							</div>


							<div class="tab-pane fade" id="adminayharlari" role="tabpanel" aria-labelledby="adminayharlari-tab4">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Mail Adresi</label>
										<input type="text" class="form-control" name="admin_mail" value="<?php echo $ayarcek['admin_mail'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Mobil Uygulama Bildirim Kodu</label>
										<input type="text" class="form-control" name="admin_mobil" value="<?php echo $ayarcek['admin_mobil'] ?>">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Web Bildirim Kodu</label>
										<input type="text" class="form-control" name="admin_web" id="web_bildirim" value="<?php echo $ayarcek['admin_web'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Telegram Bildirimi</label>
										<div class="form-control">
											<script async src="https://telegram.org/js/telegram-widget.js?19" data-telegram-login="<?php echo $ayarcek['tg_bot_isim'] ?>" data-size="medium" data-onauth="onTelegramAuth(user)" data-request-access="write"></script>

										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="mailayarlari" role="tabpanel" aria-labelledby="mailayarlari-tab4">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Host Adresi</label>
										<input type="text" class="form-control" placeholder="Host Adresinizi Girin" name="host_adresi" value="<?php echo $ayarcek['host_adresi'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Port Numarası <small>(465 olmak zorunda)</small></label>
										<input type="number" class="form-control" name="port_numarasi" value="<?php echo $ayarcek['port_numarasi'] ?>">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Mail Adresi</label>
										<input type="mail" class="form-control" placeholder="Mail Adresinizi Girin" name="mail_adresi" value="<?php echo $ayarcek['mail_adresi'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Mail Şifresi</label>
										<input type="password" class="form-control" placeholder="Mail Şifresi" name="mail_sifre" value="<?php echo $ayarcek['mail_sifre'] ?>">
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="recaptcha" role="tabpanel" aria-labelledby="recaptcha-tab4">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>reCaptcha Key</label>
										<input type="text" class="form-control" name="recaptcha_key" value="<?php echo $ayarcek['recaptcha_key'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>reCaptcha Secret Key</label>
										<input type="text" class="form-control" name="recaptcha_secret_key" value="<?php echo $ayarcek['recaptcha_secret_key'] ?>">
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="cerezuyariayarlari" role="tabpanel" aria-labelledby="cerezuyariayarlari-tab4">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Çerez Uyarı Metni</label>
										<input type="text" class="form-control" name="cerez_metin" value="<?php echo $ayarcek['cerez_metin'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Buton Linki</label>
										<input type="text" class="form-control" name="cerez_link" value="<?php echo $ayarcek['cerez_link'] ?>">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-2">
										<label>Çerez Gösterme İşlemi</label><br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="cerez_onay" value="<?php echo $ayarcek['cerez_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['cerez_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="reklamayarlari" role="tabpanel" aria-labelledby="reklamayarlari-tab4">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Yatay Reklam Kodu</label>
										<textarea style="min-height: 8rem" name="yatay_reklam" class="form-control"><?php echo $ayarcek['yatay_reklam'] ?></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>Kare Reklam Kodu</label>
										<textarea style="min-height: 8rem" name="kare_reklam" class="form-control"><?php echo $ayarcek['kare_reklam'] ?></textarea>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="sanalposayarlari" role="tabpanel" aria-labelledby="sanalposayarlari-tab4">
								<div class="form-row">
									<div class="col-md-6 form-group">
										<label>Sanal Pos Firması</label>
										<select name="pos_firma" class="form-control">
											<?php foreach (pos_firma() as $key => $value): ?>
												<option <?php slc($ayarcek['pos_firma'], $key) ?> value="<?php echo $key ?>"><?php echo $value ?></option>
											<?php endforeach ?>
										</select>
									</div>
								</div>

								<hr class="hr-text" data-content="PayTR Ayarları">
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>PAYTR Mağaza No</label>
										<input type="text" class="form-control" name="paytr_no" value="<?php echo $ayarcek['paytr_no'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>PAYTR Mağaza Parola</label>
										<input type="text" class="form-control" name="paytr_parola" value="<?php echo $ayarcek['paytr_parola'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>PAYTR Mağaza Gizli Anahtar</label>
										<input type="text" class="form-control" name="paytr_gizli" value="<?php echo $ayarcek['paytr_gizli'] ?>">
									</div>
								</div>

								<!-- <hr class="hr-text" data-content="İyzico Ayarları">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>İyzico API Anahtarı</label>
										<input type="text" class="form-control" name="iyzico_api_key" value="<?php echo $ayarcek['iyzico_api_key'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>İyzico Güvenlik Anahtarı</label>
										<input type="text" class="form-control" name="iyzico_secret_key" value="<?php echo $ayarcek['iyzico_secret_key'] ?>">
									</div>
								</div> -->

								<hr class="hr-text" data-content="Paymax Ayarları">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Paymax Mağaza No</label>
										<input type="text" class="form-control" name="paymax_no" value="<?php echo $ayarcek['paymax_no'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Paymax Username</label>
										<input type="text" class="form-control" name="paymax_username" value="<?php echo $ayarcek['paymax_username'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Paymax API Key</label>
										<input type="text" class="form-control" name="paymax_sifre" value="<?php echo $ayarcek['paymax_sifre'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Paymax Hash</label>
										<input type="text" class="form-control" name="paymax_hash" value="<?php echo $ayarcek['paymax_hash'] ?>">
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="sosyalmedyaayarlari" role="tabpanel" aria-labelledby="sosyalmedyaayarlari-tab4">
								<hr class="hr-text" data-content="Google Ayarları">
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Google İle Oturum Açma/Kayıt Olma</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="gg_giris_onay" value="<?php echo $ayarcek['gg_giris_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['gg_giris_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>
									<div class="col-md-4 form-group">
										<label>Google Client ID</label>
										<input type="text" class="form-control" name="gg_client_id" value="<?php echo $ayarcek['gg_client_id'] ?>">
									</div>
									<div class="col-md-4 form-group">
										<label>Google Client ID</label>
										<input type="text" class="form-control" name="gg_client_secret" value="<?php echo $ayarcek['gg_client_secret'] ?>">
									</div>
								</div>

								<hr class="hr-text" data-content="Facebook Ayarları">
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Facebook İle Oturum Açma/Kayıt Olma</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="fb_giris_onay" value="<?php echo $ayarcek['fb_giris_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['fb_giris_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>
									<div class="col-md-4 form-group">
										<label>Facebook APP ID</label>
										<input type="text" class="form-control" name="fb_app_id" value="<?php echo $ayarcek['fb_app_id'] ?>">
									</div>
									<div class="col-md-4 form-group">
										<label>Facebook APP Secret</label>
										<input type="text" class="form-control" name="fb_app_secret" value="<?php echo $ayarcek['fb_app_secret'] ?>">
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="onayalani" role="tabpanel" aria-labelledby="onayalani-tab4">
								
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Hikaye Alanı Durumu</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="hik_durum" value="<?php echo $ayarcek['hik_durum'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['hik_durum']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>
									<div class="form-group col-md-4">
										<label>Mail Onay İşlemi</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="mail_onay" value="<?php echo $ayarcek['mail_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['mail_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>

									<div class="form-group col-md-4">
										<label>Mağazalar İçin SMS Onay Durumu</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="sms_onay" value="<?php echo $ayarcek['sms_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['sms_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>

									<div class="form-group col-md-4">
										<label>Mağaza Sayfasında Mağaza Whatsapp Butonu Gözükmesi</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="magaza_wp_onay" value="<?php echo $ayarcek['magaza_wp_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['magaza_wp_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Aktif" data-off="Pasif"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>

									<div class="form-group col-md-4">
										<label>Yukarı çık botunu gösterilsin mi?</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="top_durum" value="<?php echo $ayarcek['top_durum'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['top_durum']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Evet" data-off="Hayır"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>

									<div class="form-group col-md-4">
										<label>Yeni eklenen ürünler otomatik onaylansın mı?</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="urun_baslangic_onay" value="<?php echo $ayarcek['urun_baslangic_onay'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['urun_baslangic_onay']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Evet" data-off="Hayır"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>


									<div class="form-group col-md-4">
										<label>Google reCaptcha Bot Doğrulama</label> <br>
										<label class="switch switch-left-right onayalani">
											<input type="hidden" class="onayvalue" name="bot_durum" value="<?php echo $ayarcek['bot_durum'] ?>">
											<input class="switch-input onaybox" <?php if ($ayarcek['bot_durum']==1) {echo "checked";} ?>  type="checkbox">
											<span class="switch-label onaybutonu" data-on="Evet" data-off="Hayır"></span> 
											<span class="switch-handle"></span> 
										</label>
									</div>

									
								</div>
							</div>

							<div class="tab-pane fade" id="headerfooterkod" role="tabpanel" aria-labelledby="headerfooterkod-tab4">
								
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Header Kod</label>
										<textarea class="form-control" name="header_kod" style="min-height: 8rem;"><?php echo $ayarcek['header_kod'] ?></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>Footer Kod</label>
										<textarea class="form-control" name="footer_kod" style="min-height: 8rem;"><?php echo $ayarcek['footer_kod'] ?></textarea>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="bildirimayarlari" role="tabpanel" aria-labelledby="bildirimayarlari-tab4">
								<hr class="hr-text" data-content="Telegram Ayarları">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Telegram Bot İsmi</label>
										<input type="text" class="form-control" name="tg_bot_isim" value="<?php echo $ayarcek['tg_bot_isim'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Telegram Bot ID</label>
										<input type="text" class="form-control" name="tg_bot_id" value="<?php echo $ayarcek['tg_bot_id'] ?>">
									</div>
								</div>

								<hr class="hr-text" data-content="Onesignal Ayarları">

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Onesignal Mobil APP ID</label>
										<input type="text" class="form-control" name="onesignal_app_id" value="<?php echo $ayarcek['onesignal_app_id'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Onesignal Mobil API KEY</label>
										<input type="text" class="form-control" name="onesignal_api_key" value="<?php echo $ayarcek['onesignal_api_key'] ?>">
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<label>Onesignal Web Site ID</label>
										<input type="text" class="form-control" name="onesignal_web_app_id" value="<?php echo $ayarcek['onesignal_web_app_id'] ?>">
									</div>
									<div class="form-group col-md-6">
										<label>Onesignal Web API KEY</label>
										<input type="text" class="form-control" name="onesignal_web_api_key" value="<?php echo $ayarcek['onesignal_web_api_key'] ?>">
									</div>
								</div>

								<hr class="hr-text" data-content="SMS Ayarları">

								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Netgsm Kullanıcı Adı</label>
										<input type="text" class="form-control" name="netgsm_username" value="<?php echo $ayarcek['netgsm_username'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>Netgsm Şifre</label>
										<input type="text" class="form-control" name="netgsm_sifre" value="<?php echo $ayarcek['netgsm_sifre'] ?>">
									</div>
									<div class="form-group col-md-4">
										<label>Netgsm Başlık</label>
										<input type="text" class="form-control" name="netgsm_baslik" value="<?php echo $ayarcek['netgsm_baslik'] ?>">
									</div>
								</div>


							</div>





						</div>


					</div>
				</div>
			</div>

		</div>



	</div>
</div>
</div>
</form>	
<?php include 'footer.php' ?>

<script>
	$(document).ready(function() {
		var kod = localStorage.getItem("aksoyhlc_hesap_web_userid");
		console.log(kod);
		if (kod!="null" && kod!=null) {
			$("#web_bildirim").val(kod)
		}
	});

	function onTelegramAuth(user) {
		$.ajax({
			url: '<?php echo ajax ?>',
			type: 'POST',
			data: {'tg_giris':user},
			success:function (gelen) {
				var veri = $.parseJSON(gelen);
				if (veri.durum=='ok') {
					bildirim("success","İşlem Başarılı","Artık Sistemle Sizinle İlgili Gelişmeleri Telegram Üzerinden Bildirim Olarak Alabilirsiniz.");
				} else {
					bildirim("error","İşlem Başarısız","Üzgünüz, İşleminizi Şu Anda Gerçekleştiremiyoruz");
				}
			}
		});
	}
</script>
