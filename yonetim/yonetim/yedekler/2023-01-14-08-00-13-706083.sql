SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*https:/www.aksoyhlc.net tarafından üretilmiştir - 'Ökkeş Aksoy | Aksoyhlc' */;
--
-- Database: `sellhqqh_lexa`
--




CREATE TABLE `abone` (
  `abone_id` int(11) NOT NULL AUTO_INCREMENT,
  `abone_mail` varchar(500) NOT NULL,
  `abonelik_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `abone_durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`abone_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;


INSERT INTO abone VALUES
("1","27aksoy27@gmail.com","2022-08-20 22:15:41","1"),
("2","batujano@gmail.com","2022-11-25 18:45:45","1"),
("3","maykilrowdy10@gmail.com","2022-11-27 10:29:32","1"),
("4","reklamlar8927@gmail.com","2022-11-27 10:30:18","1"),
("5","batuccanx@outlook.com","2022-12-10 14:22:11","1"),
("6","HABUJA@gmail.com","2022-12-14 06:20:34","1"),
("7","hakajamaka@gmail.com","2022-12-14 06:20:48","1"),
("8","uqsarsnvcvsjyox@nightorb.com","2022-12-18 07:14:08","1"),
("9","abc@abc.com","2022-12-18 07:48:42","1"),
("10","wewsyouqhnc@nightorb.com","2022-12-18 18:01:33","1"),
("11","qgddniivlcwq@nightorb.com","2022-12-20 14:35:59","1"),
("12","2seojin1208@gmail.com","2022-12-20 23:01:13","1"),
("13","ldovcrypto@gmail.com","2022-12-23 09:47:34","1"),
("14","zaxel7286@gmail.com","2022-12-28 19:12:42","1"),
("15","spookygz084@gmail.com","2022-12-28 19:13:55","1"),
("16","samcox1955@gmail.com","2023-01-01 22:18:02","1"),
("17","tweakerthom@gmail.com","2023-01-04 10:44:04","1");




CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_link` varchar(300) DEFAULT NULL,
  `site_baslik` varchar(300) DEFAULT NULL,
  `site_aciklama` varchar(300) DEFAULT NULL,
  `site_logo` varchar(250) DEFAULT NULL,
  `site_one_cikan` varchar(500) DEFAULT NULL,
  `sol_ust_logo` varchar(500) DEFAULT NULL,
  `analytics` varchar(80) DEFAULT NULL,
  `host_adresi` varchar(300) DEFAULT NULL,
  `port_numarasi` int(4) DEFAULT NULL,
  `mail_adresi` varchar(300) DEFAULT NULL,
  `mail_sifre` varchar(300) DEFAULT NULL,
  `log_onay` int(11) DEFAULT NULL,
  `minimum_ucret` int(11) NOT NULL DEFAULT 5,
  `komisyon_oran` int(11) NOT NULL DEFAULT 3,
  `bot_durum` int(11) NOT NULL DEFAULT 0,
  `tg_bot_id` varchar(100) DEFAULT NULL,
  `tg_bot_isim` varchar(100) DEFAULT NULL,
  `onesignal_web_id` varchar(100) DEFAULT NULL,
  `onesignal_web_app_id` varchar(500) DEFAULT NULL,
  `onesignal_web_api_key` varchar(500) DEFAULT NULL,
  `onesignal_app_id` varchar(500) DEFAULT NULL,
  `onesignal_api_key` varchar(500) DEFAULT NULL,
  `hik_sure` int(11) NOT NULL DEFAULT 1,
  `hik_durum` int(11) NOT NULL DEFAULT 1,
  `admin_mail` varchar(100) DEFAULT NULL,
  `admin_web` varchar(500) DEFAULT NULL,
  `admin_mobil` varchar(500) DEFAULT NULL,
  `admin_tg` varchar(100) DEFAULT NULL,
  `mail_onay` int(11) NOT NULL DEFAULT 0,
  `magaza_wp_onay` int(11) NOT NULL DEFAULT 1,
  `sms_firma` int(11) NOT NULL DEFAULT 0,
  `netgsm_username` varchar(50) DEFAULT NULL,
  `netgsm_sifre` varchar(50) DEFAULT NULL,
  `netgsm_baslik` varchar(50) DEFAULT NULL,
  `recaptcha_key` varchar(100) DEFAULT NULL,
  `recaptcha_secret_key` varchar(100) DEFAULT NULL,
  `pos_firma` int(11) NOT NULL DEFAULT 0,
  `paytr_no` varchar(100) DEFAULT NULL,
  `paytr_parola` varchar(100) DEFAULT NULL,
  `paytr_gizli` varchar(100) DEFAULT NULL,
  `paymax_no` varchar(100) DEFAULT NULL,
  `paymax_username` varchar(100) DEFAULT NULL,
  `paymax_sifre` varchar(100) DEFAULT NULL,
  `paymax_hash` varchar(100) DEFAULT NULL,
  `iyzico_secret_key` varchar(100) DEFAULT NULL,
  `iyzico_api_key` varchar(100) DEFAULT NULL,
  `pre_ucret` int(11) NOT NULL DEFAULT 0,
  `gg_giris_onay` int(11) NOT NULL DEFAULT 0,
  `fb_giris_onay` int(11) NOT NULL DEFAULT 0,
  `fb_app_id` varchar(530) DEFAULT NULL,
  `fb_app_secret` varchar(530) DEFAULT NULL,
  `gg_client_id` varchar(530) DEFAULT NULL,
  `gg_client_secret` varchar(530) DEFAULT NULL,
  `cerez_metin` text DEFAULT NULL,
  `cerez_link` text DEFAULT NULL,
  `cerez_onay` int(11) NOT NULL DEFAULT 1,
  `kare_reklam` text DEFAULT NULL,
  `yatay_reklam` text DEFAULT NULL,
  `sms_onay` int(11) NOT NULL DEFAULT 0,
  `footer_kod` mediumtext DEFAULT NULL,
  `header_kod` mediumtext DEFAULT NULL,
  `top_durum` int(11) NOT NULL DEFAULT 0,
  `urun_baslangic_onay` int(11) NOT NULL DEFAULT 0,
  `site_ln` varchar(500) DEFAULT NULL,
  `site_tw` varchar(500) DEFAULT NULL,
  `site_ig` varchar(500) DEFAULT NULL,
  `site_fb` varchar(500) DEFAULT NULL,
  `disqus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO ayarlar VALUES
("1","https://selligo.shop","Buy quality cheaper...","Netflix, Spotify, Tinder, Disney+ all accounts here for cheaper, trustful and more proffessional.","1-8422717-adsiz-tasarim.webp","1-5619602-adsiz-tasarim.webp","selligologo1.png","G-MDPW4R9PTR","ssl://smtp.gmail.com","465","staff.selligo@gmail.com","gjvzipcviozirvaq","1","1","3","0","----","----","NzI5OWUwYjAtNzFiMC00MmUxLWExYTMtNWQ3ZDczODE5MGFl\n","----","----","66646403-d3a8-44bf-bcba-a17f92702bbc","----","5","1","staff.selligo@gmail.com","----","","","1","0","0","----","----","----","----","----","0","----","----","----","----","----","----","----","----","----","1","0","0","----","----","665833797323-q4rbi58qihtkt1jafftola319u2r6u3d.apps.googleusercontent.com","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","We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.","cookiepolicy","1","<img src=\"https://cdn.discordapp.com/attachments/1050056214383448084/1052543151790882866/selligo_ads_black_k.gif\" class=\"img-fluid\">","<a href=\"https://trackproxies.com\">\n<img src=\"https://i.ibb.co/jhz3hZp/Signature-Track-Proxies.gif\" class=\"img-fluid\" style=\"max-width:30%\"></a>","0","<!--Start of Tawk.to Script-->\n<script type=\"text/javascript\">\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\n(function(){\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\ns1.async=true;\ns1.src=\'https://embed.tawk.to/639b8176daff0e1306dcdef9/1gkbn3dov\';\ns1.charset=\'UTF-8\';\ns1.setAttribute(\'crossorigin\',\'*\');\ns0.parentNode.insertBefore(s1,s0);\n})();\n</script>\n<!--End of Tawk.to Script-->","","0","1","https://discord.gg/selligo","https://twitter.com","https://instagram.com","https://facebook.com","Selligo LLC");




CREATE TABLE `bakiye` (
  `bakiye_id` int(11) NOT NULL AUTO_INCREMENT,
  `bakiye_ucret` int(11) DEFAULT NULL,
  `bakiye_kul` int(11) DEFAULT NULL,
  `bakiye_durum` int(11) NOT NULL DEFAULT 1,
  `bakiye_order_id` varchar(100) DEFAULT NULL,
  `bakiye_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `pos` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bakiye_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO bakiye VALUES
("1","100","18","1","23909081","2022-08-18 12:23:53","0"),
("2","500","18","1","75194540","2022-08-18 12:30:16","0"),
("3","150","18","1","22681195","2022-08-18 12:34:24","0"),
("4","30000","18","1","21166002","2022-08-18 15:11:18","0"),
("5","35000","18","1","50179650","2022-08-18 15:21:22","0"),
("6","40000","18","1","73547649","2022-08-18 15:32:33","0"),
("7","10","18","1","69391869","2022-08-25 14:02:04","0");




CREATE TABLE `bakiye_gecici` (
  `gecici_id` int(11) NOT NULL AUTO_INCREMENT,
  `ucret` varchar(100) DEFAULT NULL,
  `kullanici` int(11) DEFAULT NULL,
  `islem_id` varchar(100) DEFAULT NULL,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `detay` text DEFAULT NULL,
  `tur` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`gecici_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO bakiye_gecici VALUES
("5","150","18","64426739","2022-08-18 12:30:39","","0"),
("6","150","18","98274228","2022-08-18 12:32:27","","0"),
("11","1","19","15725025","2022-08-24 00:12:37","","1"),
("13","20","26","35200189","2022-12-06 14:32:32","","0");




CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `konum` int(11) NOT NULL DEFAULT 0,
  `resim` varchar(530) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `tiklanma` int(11) NOT NULL DEFAULT 0,
  `sira` int(11) NOT NULL DEFAULT 1,
  `durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO banner VALUES
("6","0","873476334722valorant-vp-mini-banner.webp","https://lexa.yazilimdemo.net/kategori/valorant-points","2022-04-26 01:26:55","0","1","1"),
("9","0","434691050840product-banner-small-lol-rp-78930.webp","https://lexa.yazilimdemo.net/urunler","2022-08-18 01:17:50","0","3","1"),
("12","0","539149927374valorant-hesap-58219.webp","https://lexa.yazilimdemo.net/kategori/valorant","2022-08-18 01:20:07","0","2","1");




CREATE TABLE `basvuru` (
  `basvuru_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul` int(11) NOT NULL,
  `icerik` text NOT NULL,
  `basvuru_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `durum` int(11) NOT NULL DEFAULT 1,
  `geri_donus` text DEFAULT NULL,
  PRIMARY KEY (`basvuru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO basvuru VALUES
("1","17","Animi ipsam alias b","2022-08-17 23:03:39","2","awdqwawqas"),
("2","19","Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.","2022-08-20 10:37:44","2","İyi satışlar"),
("3","23","YOK","2022-11-27 18:46:47","2","welcome"),
("4","26","dadda","2022-12-05 16:59:32","1",""),
("5","27","asdsad","2022-12-10 14:51:26","1",""),
("6","28","Write why you want to open store on Selligo and what kind of products you want to sell send list via this messagebox.","2022-12-12 07:17:38","2",""),
("7","30","Type here about your store.What kind of products would you sell generally and why should we accept you.","2022-12-12 07:28:50","0",""),
("8","31","dasd","2022-12-14 07:09:55","1",""),
("9","38","Here at bands shop, we sell the most high quality prodcuts for insanely low prices!","2022-12-20 08:50:54","1","I will check the products you sell. Send your old shop or list the products"),
("10","64","items and accounts","2022-12-27 07:28:43","2","all is yours"),
("11","63","sssss","2022-12-27 13:17:06","2","");




CREATE TABLE `favori` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul` int(11) NOT NULL,
  `urun` int(11) NOT NULL,
  `fav_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fav_id`),
  KEY `kul` (`kul`),
  KEY `urun` (`urun`),
  CONSTRAINT `favori_ibfk_1` FOREIGN KEY (`kul`) REFERENCES `kullanicilar` (`kul_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favori_ibfk_2` FOREIGN KEY (`urun`) REFERENCES `urun` (`urun_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO favori VALUES
("9","54","84","2022-12-23 08:12:45"),
("10","54","32","2022-12-23 08:13:01"),
("11","54","39","2022-12-23 08:13:02"),
("12","54","30","2022-12-23 08:13:08"),
("14","55","84","2022-12-23 08:35:06"),
("16","56","84","2022-12-23 08:43:09"),
("17","67","75","2022-12-28 12:35:29"),
("18","67","94","2022-12-28 12:35:38"),
("19","67","49","2022-12-28 12:36:43"),
("21","72","32","2022-12-29 06:43:16"),
("22","72","84","2022-12-29 06:43:23"),
("23","72","30","2022-12-29 06:43:31"),
("24","73","30","2022-12-29 12:20:21"),
("25","73","94","2022-12-29 12:20:28"),
("26","73","47","2022-12-29 12:47:54"),
("28","79","94","2023-01-02 07:21:42"),
("29","79","32","2023-01-02 07:32:27"),
("30","83","94","2023-01-07 20:42:54");




CREATE TABLE `hesaplar` (
  `hesap_id` int(11) NOT NULL AUTO_INCREMENT,
  `urun` int(11) DEFAULT NULL,
  `icerik` varchar(530) DEFAULT NULL,
  `hesap_eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `hesap_durum` int(11) NOT NULL DEFAULT 1,
  `satis_tarih` datetime DEFAULT NULL,
  `satin_alan` int(11) DEFAULT NULL,
  `siparis` int(11) DEFAULT NULL,
  `son_kullanim` datetime DEFAULT NULL,
  PRIMARY KEY (`hesap_id`),
  KEY `urun_id` (`urun`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO hesaplar VALUES
("4","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("5","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("6","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("7","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("8","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("9","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("10","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("11","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("12","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:11:52","18","5","2024-08-18 00:00:00"),
("13","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("14","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("15","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("16","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("17","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("18","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("19","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("20","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("21","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("22","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("23","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("24","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:32:38","18","13","2024-08-18 00:00:00"),
("25","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("26","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("27","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("28","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("29","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("30","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:21:34","18","10","2024-08-18 00:00:00"),
("31","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("32","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("33","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("34","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("35","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("36","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("37","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("38","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("39","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:11:52","18","3","2024-08-18 00:00:00"),
("40","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("41","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("42","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("43","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("44","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("45","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("46","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("47","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("48","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("49","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("50","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("51","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("52","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("53","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("54","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("55","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("56","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("57","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("58","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("59","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("60","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("61","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("62","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("63","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("64","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("65","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("66","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("67","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("68","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("69","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("70","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("71","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("72","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("73","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:32:38","18","14","0000-00-00 00:00:00"),
("74","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("75","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("76","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("77","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("78","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("79","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("80","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("81","4","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("82","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("83","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("84","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("85","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("86","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("87","5","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("88","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("89","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("90","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("91","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("92","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("93","9","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("94","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("95","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("96","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:32:38","18","13","2024-08-18 00:00:00"),
("97","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("98","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("99","11","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("100","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("101","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("102","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:11:52","18","4","2024-08-18 00:00:00"),
("103","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00");
INSERT INTO hesaplar VALUES
("104","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("105","2","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:11:52","18","4","2024-08-18 00:00:00"),
("106","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:32:38","18","14","0000-00-00 00:00:00"),
("107","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("108","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:11:52","18","3","2024-08-18 00:00:00"),
("109","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","0000-00-00 00:00:00"),
("110","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","2","2022-08-18 15:21:34","18","8","0000-00-00 00:00:00"),
("111","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("112","7","Demo Hesap Bilgileri","2022-08-18 12:59:50","1","","","","2024-08-18 00:00:00"),
("113","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("114","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("115","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","2024-08-18 00:00:00"),
("116","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("117","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("118","4","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","2024-08-18 00:00:00"),
("119","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("120","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("121","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","2024-08-18 00:00:00"),
("122","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("123","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","0000-00-00 00:00:00"),
("124","5","Demo Hesap Bilgileri","2022-08-21 23:30:10","1","","","","2024-08-18 00:00:00"),
("125","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("126","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("127","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("128","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("129","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("130","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("131","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("132","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("133","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("134","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("135","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("136","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("137","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("138","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("139","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("140","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("141","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("142","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("143","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("144","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("145","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("146","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("147","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("148","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("149","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("150","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("151","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("152","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("153","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("154","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("155","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("156","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("157","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("158","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("159","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("160","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("161","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("162","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("163","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("164","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("165","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("166","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("167","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("168","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("169","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("170","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("171","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("172","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("173","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("174","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("175","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("176","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("177","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("178","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("179","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("180","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("181","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("182","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("183","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("184","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("185","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("186","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("187","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("188","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("189","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("190","4","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("191","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("192","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("193","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("194","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("195","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("196","5","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("197","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("198","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("199","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("200","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("201","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("202","11","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("203","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00");
INSERT INTO hesaplar VALUES
("204","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("205","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("206","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("207","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("208","2","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("209","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("210","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("211","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("212","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("213","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","0000-00-00 00:00:00"),
("214","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("215","7","Demo Hesap Bilgileri","2022-08-21 23:31:57","1","","","","2024-08-18 00:00:00"),
("216","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("217","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("218","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("219","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("220","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("221","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("222","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("223","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("224","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("225","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("226","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("227","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("228","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("229","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("230","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("231","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("232","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("233","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("234","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("235","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("236","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("237","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("238","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("239","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("240","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("241","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("242","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("243","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("244","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("245","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("246","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("247","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("248","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("249","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("250","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("251","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("252","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("253","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("254","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("255","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("256","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("257","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("258","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("259","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("260","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("261","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("262","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("263","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("264","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("265","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("266","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("267","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("268","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("269","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("270","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("271","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("272","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("273","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("274","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("275","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("276","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("277","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("278","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("279","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("280","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("281","4","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("282","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("283","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("284","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("285","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("286","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("287","5","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("288","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("289","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("290","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("291","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("292","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("293","11","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("294","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("295","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("296","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("297","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("298","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("299","2","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("300","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("301","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00"),
("302","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("303","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","0000-00-00 00:00:00");
INSERT INTO hesaplar VALUES
("304","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","2","2022-08-25 14:13:03","18","15","0000-00-00 00:00:00"),
("305","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("306","7","Demo Hesap Bilgileri","2022-08-21 23:32:18","1","","","","2024-08-18 00:00:00"),
("307","20","EZİK","2022-11-27 19:08:39","1","","","","0000-00-00 00:00:00"),
("308","24","ezik","2022-11-27 19:09:37","2","2022-11-28 03:11:44","24","18","0000-00-00 00:00:00"),
("309","24","aaaa","2022-11-27 19:14:12","2","2022-11-28 03:15:39","24","19","0000-00-00 00:00:00"),
("310","32","epwkwjeotdlye@nightorb.com\nzu+WVxMV","2022-12-19 16:10:41","2","2022-12-20 17:00:30","34","43","2022-12-31 00:10:00"),
("311","32","wuaxwrpdmggye@nightorb.com\n,rF}g,%-","2022-12-19 16:10:57","2","2022-12-20 17:04:48","39","44","2022-12-31 00:10:00"),
("312","32","tjbigif@nightorb.com\n{en1C616","2022-12-20 09:06:25","2","2022-12-22 00:34:00","53","54","2023-01-31 17:06:00"),
("313","32","wuaxwrpdmggye@nightorb.com\n,rF}g,%-","2022-12-20 09:06:41","2","2022-12-20 22:34:19","40","45","2023-01-31 17:06:00"),
("314","32","epwkwjeotdlye@nightorb.com\nzu+WVxMV","2022-12-20 09:06:56","2","2022-12-23 22:50:42","58","64","2023-01-31 17:06:00");




CREATE TABLE `hikaye` (
  `hik_id` int(11) NOT NULL AUTO_INCREMENT,
  `urun` int(11) DEFAULT NULL,
  `tur` int(11) NOT NULL DEFAULT 0,
  `kapak_resim` varchar(530) DEFAULT NULL,
  `link` varchar(530) DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `tiklama` int(11) NOT NULL DEFAULT 0,
  `sira` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`hik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO hikaye VALUES
("31","0","1","31-2260806-join-discord-and-react-giveaway-bot.webp","https://discord.gg/selligo","1","2022-12-20 10:08:45","0","0");




CREATE TABLE `hikaye_galeri` (
  `dosya_id` int(11) NOT NULL AUTO_INCREMENT,
  `hikaye` int(11) DEFAULT NULL,
  `isim` varchar(530) DEFAULT NULL,
  `uzanti` varchar(15) DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `boyut` varchar(50) DEFAULT NULL,
  `sira` int(11) NOT NULL DEFAULT 0,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`dosya_id`),
  KEY `hikaye` (`hikaye`),
  CONSTRAINT `hikaye_galeri_ibfk_1` FOREIGN KEY (`hikaye`) REFERENCES `hikaye` (`hik_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO hikaye_galeri VALUES
("23","31","31-6533935-join-discord-and-react-giveaway-bot.webp","webp","2022-12-20 10:35:12","","0","");




CREATE TABLE `inceleme_sayisi` (
  `inceleme_sayisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `inceleme_sayisi` varchar(200) NOT NULL DEFAULT '0',
  `tarih` date DEFAULT NULL,
  `urun` int(11) DEFAULT NULL,
  PRIMARY KEY (`inceleme_sayisi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2305 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO inceleme_sayisi VALUES
("1","15","2022-08-21","1"),
("2","4","2022-08-21","2"),
("3","20","2022-08-21","3"),
("4","3","2022-08-21","4"),
("5","7","2022-08-21","5"),
("6","1","2022-08-21","6"),
("7","26","2022-08-21","7"),
("8","14","2022-08-21","8"),
("9","2","2022-08-21","9"),
("10","6","2022-08-21","10"),
("11","2","2022-08-21","11"),
("12","37","2022-08-21","12"),
("13","8","2022-08-21","13"),
("14","16","2022-08-25","1"),
("15","3","2022-08-25","2"),
("16","18","2022-08-25","3"),
("17","0","2022-08-25","4"),
("18","10","2022-08-25","5"),
("19","7","2022-08-25","6"),
("20","6","2022-08-25","7"),
("21","38","2022-08-25","8"),
("22","2","2022-08-25","9"),
("23","0","2022-08-25","10"),
("24","1","2022-08-25","11"),
("25","5","2022-08-25","12"),
("26","1","2022-08-25","13"),
("27","9","2022-11-16","1"),
("28","1","2022-11-16","2"),
("29","3","2022-11-16","3"),
("30","0","2022-11-16","4"),
("31","8","2022-11-16","5"),
("32","3","2022-11-16","6"),
("33","8","2022-11-16","7"),
("34","18","2022-11-16","8"),
("35","3","2022-11-16","9"),
("36","1","2022-11-16","10"),
("37","6","2022-11-16","11"),
("38","5","2022-11-16","12"),
("39","0","2022-11-16","13"),
("40","1","2022-11-17","1"),
("41","1","2022-11-17","2"),
("42","1","2022-11-17","3"),
("43","1","2022-11-17","4"),
("44","1","2022-11-17","5"),
("45","1","2022-11-17","6"),
("46","0","2022-11-17","7"),
("47","1","2022-11-17","8"),
("48","1","2022-11-17","9"),
("49","0","2022-11-17","10"),
("50","2","2022-11-17","11"),
("51","1","2022-11-17","12"),
("52","0","2022-11-17","13"),
("53","0","2022-11-18","1"),
("54","0","2022-11-18","2"),
("55","0","2022-11-18","3"),
("56","0","2022-11-18","4"),
("57","0","2022-11-18","5"),
("58","0","2022-11-18","6"),
("59","0","2022-11-18","7"),
("60","0","2022-11-18","8"),
("61","0","2022-11-18","9"),
("62","0","2022-11-18","10"),
("63","0","2022-11-18","11"),
("64","0","2022-11-18","12"),
("65","0","2022-11-18","13"),
("66","0","2022-11-19","1"),
("67","0","2022-11-19","2"),
("68","0","2022-11-19","3"),
("69","0","2022-11-19","4"),
("70","0","2022-11-19","5"),
("71","0","2022-11-19","6"),
("72","0","2022-11-19","7"),
("73","0","2022-11-19","8"),
("74","0","2022-11-19","9"),
("75","0","2022-11-19","10"),
("76","0","2022-11-19","11"),
("77","0","2022-11-19","12"),
("78","0","2022-11-19","13"),
("79","0","2022-11-20","1"),
("80","1","2022-11-20","2"),
("81","0","2022-11-20","3"),
("82","0","2022-11-20","4"),
("83","0","2022-11-20","5"),
("84","0","2022-11-20","6"),
("85","0","2022-11-20","7"),
("86","0","2022-11-20","8"),
("87","0","2022-11-20","9"),
("88","0","2022-11-20","10"),
("89","0","2022-11-20","11"),
("90","0","2022-11-20","12"),
("91","0","2022-11-20","13"),
("92","0","2022-11-21","1"),
("93","0","2022-11-21","2"),
("94","0","2022-11-21","3"),
("95","0","2022-11-21","4"),
("96","1","2022-11-21","5"),
("97","0","2022-11-21","6"),
("98","0","2022-11-21","7"),
("99","0","2022-11-21","8"),
("100","0","2022-11-21","9");
INSERT INTO inceleme_sayisi VALUES
("101","0","2022-11-21","10"),
("102","1","2022-11-21","11"),
("103","1","2022-11-21","12"),
("104","0","2022-11-21","13"),
("105","0","2022-11-22","1"),
("106","0","2022-11-22","2"),
("107","0","2022-11-22","3"),
("108","0","2022-11-22","4"),
("109","0","2022-11-22","5"),
("110","0","2022-11-22","6"),
("111","0","2022-11-22","7"),
("112","0","2022-11-22","8"),
("113","0","2022-11-22","9"),
("114","0","2022-11-22","10"),
("115","0","2022-11-22","11"),
("116","0","2022-11-22","12"),
("117","0","2022-11-22","13"),
("118","0","2022-11-23","1"),
("119","0","2022-11-23","2"),
("120","0","2022-11-23","3"),
("121","0","2022-11-23","4"),
("122","0","2022-11-23","5"),
("123","0","2022-11-23","6"),
("124","0","2022-11-23","7"),
("125","0","2022-11-23","8"),
("126","0","2022-11-23","9"),
("127","0","2022-11-23","10"),
("128","0","2022-11-23","11"),
("129","0","2022-11-23","12"),
("130","0","2022-11-23","13"),
("131","0","2022-11-24","1"),
("132","0","2022-11-24","2"),
("133","0","2022-11-24","3"),
("134","0","2022-11-24","4"),
("135","0","2022-11-24","5"),
("136","0","2022-11-24","6"),
("137","0","2022-11-24","7"),
("138","0","2022-11-24","8"),
("139","6","2022-11-24","9"),
("140","0","2022-11-24","10"),
("141","0","2022-11-24","11"),
("142","0","2022-11-24","12"),
("143","0","2022-11-24","13"),
("144","0","2022-11-25","1"),
("145","1","2022-11-25","2"),
("146","0","2022-11-25","3"),
("147","0","2022-11-25","4"),
("148","0","2022-11-25","5"),
("149","0","2022-11-25","6"),
("150","0","2022-11-25","7"),
("151","0","2022-11-25","8"),
("152","0","2022-11-25","9"),
("153","0","2022-11-25","10"),
("154","0","2022-11-25","11"),
("155","2","2022-11-25","12"),
("156","0","2022-11-25","13"),
("157","1","2022-11-26","1"),
("158","0","2022-11-26","2"),
("159","1","2022-11-26","3"),
("160","1","2022-11-26","4"),
("161","0","2022-11-26","5"),
("162","0","2022-11-26","6"),
("163","2","2022-11-26","7"),
("164","1","2022-11-26","8"),
("165","1","2022-11-26","9"),
("166","3","2022-11-26","10"),
("167","0","2022-11-26","11"),
("168","4","2022-11-26","12"),
("169","0","2022-11-26","13"),
("170","7","2022-11-26","19"),
("171","0","2022-11-27","1"),
("172","0","2022-11-27","2"),
("173","0","2022-11-27","3"),
("174","0","2022-11-27","4"),
("175","0","2022-11-27","5"),
("176","0","2022-11-27","6"),
("177","0","2022-11-27","7"),
("178","0","2022-11-27","8"),
("179","1","2022-11-27","9"),
("180","0","2022-11-27","10"),
("181","0","2022-11-27","11"),
("182","0","2022-11-27","12"),
("183","0","2022-11-27","13"),
("184","0","2022-11-27","19"),
("185","0","2022-11-28","1"),
("186","0","2022-11-28","2"),
("187","0","2022-11-28","3"),
("188","0","2022-11-28","4"),
("189","0","2022-11-28","5"),
("190","0","2022-11-28","6"),
("191","0","2022-11-28","7"),
("192","0","2022-11-28","8"),
("193","0","2022-11-28","9"),
("194","0","2022-11-28","10"),
("195","0","2022-11-28","11"),
("196","5","2022-11-28","12"),
("197","0","2022-11-28","13"),
("198","0","2022-11-28","19"),
("199","3","2022-11-28","20"),
("200","5","2022-11-28","21");
INSERT INTO inceleme_sayisi VALUES
("201","0","2022-11-29","1"),
("202","0","2022-11-29","2"),
("203","0","2022-11-29","3"),
("204","0","2022-11-29","4"),
("205","0","2022-11-29","5"),
("206","0","2022-11-29","6"),
("207","0","2022-11-29","7"),
("208","2","2022-11-29","8"),
("209","0","2022-11-29","9"),
("210","0","2022-11-29","10"),
("211","1","2022-11-29","11"),
("212","1","2022-11-29","12"),
("213","0","2022-11-29","13"),
("214","0","2022-11-29","19"),
("215","1","2022-11-29","20"),
("216","0","2022-11-29","21"),
("217","0","2022-11-30","1"),
("218","0","2022-11-30","2"),
("219","0","2022-11-30","3"),
("220","0","2022-11-30","4"),
("221","0","2022-11-30","5"),
("222","0","2022-11-30","6"),
("223","0","2022-11-30","7"),
("224","0","2022-11-30","8"),
("225","0","2022-11-30","9"),
("226","0","2022-11-30","10"),
("227","0","2022-11-30","11"),
("228","0","2022-11-30","12"),
("229","0","2022-11-30","13"),
("230","0","2022-11-30","19"),
("231","0","2022-11-30","20"),
("232","0","2022-11-30","21"),
("233","9","2022-11-30","25"),
("234","3","2022-12-01","1"),
("235","1","2022-12-01","2"),
("236","0","2022-12-01","3"),
("237","0","2022-12-01","4"),
("238","2","2022-12-01","5"),
("239","0","2022-12-01","6"),
("240","6","2022-12-01","7"),
("241","1","2022-12-01","8"),
("242","0","2022-12-01","9"),
("243","0","2022-12-01","10"),
("244","0","2022-12-01","11"),
("245","0","2022-12-01","12"),
("246","1","2022-12-01","13"),
("247","0","2022-12-01","19"),
("248","3","2022-12-01","20"),
("249","2","2022-12-01","21"),
("250","2","2022-12-01","25"),
("251","0","2022-12-02","1"),
("252","0","2022-12-02","2"),
("253","0","2022-12-02","3"),
("254","0","2022-12-02","4"),
("255","0","2022-12-02","5"),
("256","0","2022-12-02","6"),
("257","0","2022-12-02","7"),
("258","1","2022-12-02","8"),
("259","0","2022-12-02","9"),
("260","0","2022-12-02","10"),
("261","0","2022-12-02","11"),
("262","1","2022-12-02","12"),
("263","1","2022-12-02","13"),
("264","0","2022-12-02","19"),
("265","0","2022-12-02","20"),
("266","0","2022-12-02","21"),
("267","0","2022-12-02","25"),
("268","0","2022-12-03","1"),
("269","0","2022-12-03","2"),
("270","0","2022-12-03","3"),
("271","0","2022-12-03","4"),
("272","0","2022-12-03","5"),
("273","0","2022-12-03","6"),
("274","0","2022-12-03","7"),
("275","0","2022-12-03","8"),
("276","0","2022-12-03","9"),
("277","0","2022-12-03","10"),
("278","0","2022-12-03","11"),
("279","0","2022-12-03","12"),
("280","0","2022-12-03","13"),
("281","0","2022-12-03","19"),
("282","0","2022-12-03","20"),
("283","0","2022-12-03","21"),
("284","0","2022-12-03","25"),
("285","0","2022-12-04","1"),
("286","0","2022-12-04","2"),
("287","0","2022-12-04","3"),
("288","1","2022-12-04","4"),
("289","0","2022-12-04","5"),
("290","0","2022-12-04","6"),
("291","0","2022-12-04","7"),
("292","1","2022-12-04","8"),
("293","0","2022-12-04","9"),
("294","1","2022-12-04","10"),
("295","0","2022-12-04","11"),
("296","0","2022-12-04","12"),
("297","0","2022-12-04","13"),
("298","0","2022-12-04","19"),
("299","0","2022-12-04","20"),
("300","0","2022-12-04","21");
INSERT INTO inceleme_sayisi VALUES
("301","1","2022-12-04","25"),
("302","0","2022-12-05","1"),
("303","1","2022-12-05","2"),
("304","0","2022-12-05","3"),
("305","0","2022-12-05","4"),
("306","0","2022-12-05","5"),
("307","0","2022-12-05","6"),
("308","0","2022-12-05","7"),
("309","0","2022-12-05","8"),
("310","0","2022-12-05","9"),
("311","0","2022-12-05","10"),
("312","1","2022-12-05","11"),
("313","1","2022-12-05","12"),
("314","1","2022-12-05","13"),
("315","1","2022-12-05","19"),
("316","0","2022-12-06","1"),
("317","2","2022-12-06","2"),
("318","1","2022-12-06","3"),
("319","1","2022-12-06","4"),
("320","0","2022-12-06","5"),
("321","1","2022-12-06","6"),
("322","1","2022-12-06","7"),
("323","0","2022-12-06","8"),
("324","0","2022-12-06","9"),
("325","1","2022-12-06","10"),
("326","0","2022-12-06","11"),
("327","0","2022-12-06","12"),
("328","1","2022-12-06","13"),
("329","1","2022-12-06","19"),
("330","1","2022-12-07","1"),
("331","1","2022-12-07","2"),
("332","0","2022-12-07","3"),
("333","1","2022-12-07","4"),
("334","1","2022-12-07","5"),
("335","0","2022-12-07","6"),
("336","0","2022-12-07","7"),
("337","0","2022-12-07","8"),
("338","1","2022-12-07","9"),
("339","0","2022-12-07","10"),
("340","0","2022-12-07","11"),
("341","0","2022-12-07","12"),
("342","0","2022-12-07","13"),
("343","0","2022-12-07","19"),
("344","1","2022-12-07","27"),
("345","0","2022-12-08","19"),
("346","13","2022-12-08","28"),
("347","0","2022-12-09","19"),
("348","6","2022-12-09","30"),
("349","3","2022-12-09","31"),
("350","2","2022-12-09","32"),
("351","2","2022-12-09","33"),
("352","0","2022-12-09","34"),
("353","0","2022-12-09","35"),
("354","1","2022-12-09","36"),
("355","1","2022-12-09","37"),
("356","1","2022-12-09","38"),
("357","0","2022-12-09","39"),
("358","1","2022-12-09","40"),
("359","2","2022-12-09","41"),
("360","1","2022-12-09","42"),
("361","0","2022-12-09","43"),
("362","0","2022-12-09","44"),
("363","0","2022-12-09","45"),
("364","0","2022-12-09","46"),
("365","0","2022-12-09","47"),
("366","0","2022-12-09","48"),
("367","0","2022-12-09","49"),
("368","2","2022-12-09","50"),
("369","0","2022-12-09","51"),
("370","0","2022-12-09","52"),
("371","0","2022-12-09","53"),
("372","0","2022-12-09","54"),
("373","0","2022-12-09","55"),
("374","0","2022-12-09","56"),
("375","1","2022-12-09","57"),
("376","0","2022-12-09","58"),
("377","0","2022-12-09","59"),
("378","0","2022-12-09","60"),
("379","0","2022-12-09","61"),
("380","0","2022-12-09","62"),
("381","0","2022-12-09","63"),
("382","0","2022-12-09","64"),
("383","0","2022-12-09","65"),
("384","0","2022-12-09","66"),
("385","0","2022-12-09","67"),
("386","0","2022-12-09","68"),
("387","0","2022-12-09","69"),
("388","0","2022-12-09","70"),
("389","0","2022-12-09","71"),
("390","0","2022-12-09","72"),
("391","0","2022-12-09","73"),
("392","0","2022-12-09","74"),
("393","0","2022-12-09","75"),
("394","0","2022-12-09","76"),
("395","1","2022-12-09","77"),
("396","0","2022-12-10","19"),
("397","0","2022-12-10","30"),
("398","1","2022-12-10","31"),
("399","1","2022-12-10","32"),
("400","1","2022-12-10","33");
INSERT INTO inceleme_sayisi VALUES
("401","1","2022-12-10","34"),
("402","1","2022-12-10","35"),
("403","1","2022-12-10","36"),
("404","1","2022-12-10","37"),
("405","1","2022-12-10","38"),
("406","1","2022-12-10","39"),
("407","1","2022-12-10","40"),
("408","0","2022-12-10","41"),
("409","2","2022-12-10","42"),
("410","1","2022-12-10","43"),
("411","1","2022-12-10","44"),
("412","2","2022-12-10","45"),
("413","1","2022-12-10","46"),
("414","2","2022-12-10","47"),
("415","1","2022-12-10","48"),
("416","1","2022-12-10","49"),
("417","0","2022-12-10","50"),
("418","1","2022-12-10","51"),
("419","1","2022-12-10","52"),
("420","1","2022-12-10","53"),
("421","1","2022-12-10","54"),
("422","1","2022-12-10","55"),
("423","1","2022-12-10","56"),
("424","1","2022-12-10","57"),
("425","1","2022-12-10","58"),
("426","1","2022-12-10","59"),
("427","1","2022-12-10","60"),
("428","2","2022-12-10","61"),
("429","1","2022-12-10","62"),
("430","2","2022-12-10","63"),
("431","2","2022-12-10","64"),
("432","1","2022-12-10","65"),
("433","1","2022-12-10","66"),
("434","2","2022-12-10","67"),
("435","1","2022-12-10","68"),
("436","1","2022-12-10","69"),
("437","1","2022-12-10","70"),
("438","2","2022-12-10","71"),
("439","2","2022-12-10","72"),
("440","1","2022-12-10","73"),
("441","1","2022-12-10","74"),
("442","1","2022-12-10","75"),
("443","1","2022-12-10","76"),
("444","1","2022-12-10","77"),
("445","0","2022-12-11","19"),
("446","8","2022-12-11","30"),
("447","16","2022-12-11","31"),
("448","9","2022-12-11","32"),
("449","6","2022-12-11","33"),
("450","5","2022-12-11","34"),
("451","9","2022-12-11","35"),
("452","6","2022-12-11","36"),
("453","6","2022-12-11","37"),
("454","4","2022-12-11","38"),
("455","7","2022-12-11","39"),
("456","1","2022-12-11","40"),
("457","2","2022-12-11","41"),
("458","1","2022-12-11","42"),
("459","1","2022-12-11","43"),
("460","0","2022-12-11","44"),
("461","1","2022-12-11","45"),
("462","0","2022-12-11","46"),
("463","2","2022-12-11","47"),
("464","4","2022-12-11","48"),
("465","3","2022-12-11","49"),
("466","1","2022-12-11","50"),
("467","1","2022-12-11","51"),
("468","1","2022-12-11","52"),
("469","0","2022-12-11","53"),
("470","0","2022-12-11","54"),
("471","1","2022-12-11","55"),
("472","0","2022-12-11","56"),
("473","3","2022-12-11","57"),
("474","1","2022-12-11","58"),
("475","0","2022-12-11","59"),
("476","1","2022-12-11","60"),
("477","2","2022-12-11","61"),
("478","0","2022-12-11","62"),
("479","0","2022-12-11","63"),
("480","0","2022-12-11","64"),
("481","0","2022-12-11","65"),
("482","0","2022-12-11","66"),
("483","1","2022-12-11","67"),
("484","0","2022-12-11","68"),
("485","0","2022-12-11","69"),
("486","0","2022-12-11","70"),
("487","0","2022-12-11","71"),
("488","0","2022-12-11","72"),
("489","1","2022-12-11","73"),
("490","1","2022-12-11","74"),
("491","1","2022-12-11","75"),
("492","1","2022-12-11","76"),
("493","0","2022-12-11","77"),
("494","0","2022-12-12","19"),
("495","0","2022-12-12","30"),
("496","1","2022-12-12","31"),
("497","0","2022-12-12","32"),
("498","0","2022-12-12","33"),
("499","0","2022-12-12","34"),
("500","0","2022-12-12","35");
INSERT INTO inceleme_sayisi VALUES
("501","0","2022-12-12","36"),
("502","0","2022-12-12","37"),
("503","0","2022-12-12","38"),
("504","0","2022-12-12","39"),
("505","0","2022-12-12","40"),
("506","0","2022-12-12","41"),
("507","0","2022-12-12","42"),
("508","0","2022-12-12","43"),
("509","0","2022-12-12","44"),
("510","0","2022-12-12","45"),
("511","0","2022-12-12","46"),
("512","0","2022-12-12","47"),
("513","0","2022-12-12","48"),
("514","0","2022-12-12","49"),
("515","0","2022-12-12","50"),
("516","0","2022-12-12","51"),
("517","0","2022-12-12","52"),
("518","0","2022-12-12","53"),
("519","0","2022-12-12","54"),
("520","0","2022-12-12","55"),
("521","0","2022-12-12","56"),
("522","0","2022-12-12","57"),
("523","0","2022-12-12","58"),
("524","0","2022-12-12","59"),
("525","0","2022-12-12","60"),
("526","0","2022-12-12","61"),
("527","0","2022-12-12","62"),
("528","0","2022-12-12","63"),
("529","0","2022-12-12","64"),
("530","0","2022-12-12","65"),
("531","0","2022-12-12","66"),
("532","0","2022-12-12","67"),
("533","0","2022-12-12","68"),
("534","0","2022-12-12","69"),
("535","0","2022-12-12","70"),
("536","0","2022-12-12","71"),
("537","0","2022-12-12","72"),
("538","0","2022-12-12","73"),
("539","0","2022-12-12","74"),
("540","0","2022-12-12","75"),
("541","0","2022-12-12","76"),
("542","0","2022-12-12","77"),
("543","1","2022-12-13","30"),
("544","0","2022-12-13","31"),
("545","2","2022-12-13","32"),
("546","1","2022-12-13","33"),
("547","1","2022-12-13","34"),
("548","0","2022-12-13","35"),
("549","0","2022-12-13","36"),
("550","1","2022-12-13","37"),
("551","0","2022-12-13","38"),
("552","0","2022-12-13","39"),
("553","0","2022-12-13","40"),
("554","1","2022-12-13","41"),
("555","1","2022-12-13","42"),
("556","0","2022-12-13","43"),
("557","0","2022-12-13","44"),
("558","0","2022-12-13","45"),
("559","0","2022-12-13","46"),
("560","1","2022-12-13","47"),
("561","1","2022-12-13","48"),
("562","1","2022-12-13","49"),
("563","0","2022-12-13","50"),
("564","0","2022-12-13","51"),
("565","0","2022-12-13","52"),
("566","0","2022-12-13","53"),
("567","0","2022-12-13","54"),
("568","0","2022-12-13","55"),
("569","1","2022-12-13","56"),
("570","0","2022-12-13","57"),
("571","0","2022-12-13","58"),
("572","0","2022-12-13","59"),
("573","0","2022-12-13","60"),
("574","1","2022-12-13","61"),
("575","0","2022-12-13","62"),
("576","1","2022-12-13","63"),
("577","0","2022-12-13","64"),
("578","0","2022-12-13","65"),
("579","0","2022-12-13","66"),
("580","0","2022-12-13","67"),
("581","0","2022-12-13","68"),
("582","0","2022-12-13","69"),
("583","1","2022-12-13","70"),
("584","0","2022-12-13","71"),
("585","0","2022-12-13","72"),
("586","0","2022-12-13","73"),
("587","1","2022-12-13","74"),
("588","1","2022-12-13","75"),
("589","0","2022-12-13","76"),
("590","0","2022-12-13","77"),
("591","1","2022-12-14","30"),
("592","1","2022-12-14","31"),
("593","1","2022-12-14","32"),
("594","2","2022-12-14","33"),
("595","0","2022-12-14","34"),
("596","2","2022-12-14","35"),
("597","1","2022-12-14","36"),
("598","0","2022-12-14","37"),
("599","1","2022-12-14","38"),
("600","2","2022-12-14","39");
INSERT INTO inceleme_sayisi VALUES
("601","2","2022-12-14","40"),
("602","1","2022-12-14","41"),
("603","1","2022-12-14","42"),
("604","1","2022-12-14","43"),
("605","1","2022-12-14","44"),
("606","1","2022-12-14","45"),
("607","1","2022-12-14","46"),
("608","0","2022-12-14","47"),
("609","0","2022-12-14","48"),
("610","0","2022-12-14","49"),
("611","2","2022-12-14","50"),
("612","2","2022-12-14","51"),
("613","1","2022-12-14","52"),
("614","1","2022-12-14","53"),
("615","2","2022-12-14","54"),
("616","1","2022-12-14","55"),
("617","1","2022-12-14","56"),
("618","1","2022-12-14","57"),
("619","1","2022-12-14","58"),
("620","1","2022-12-14","59"),
("621","1","2022-12-14","60"),
("622","0","2022-12-14","61"),
("623","1","2022-12-14","62"),
("624","0","2022-12-14","63"),
("625","0","2022-12-14","64"),
("626","1","2022-12-14","65"),
("627","1","2022-12-14","66"),
("628","1","2022-12-14","67"),
("629","0","2022-12-14","68"),
("630","0","2022-12-14","69"),
("631","0","2022-12-14","70"),
("632","1","2022-12-14","71"),
("633","1","2022-12-14","72"),
("634","1","2022-12-14","73"),
("635","1","2022-12-14","74"),
("636","1","2022-12-14","75"),
("637","1","2022-12-14","76"),
("638","2","2022-12-14","77"),
("639","1","2022-12-15","30"),
("640","6","2022-12-15","31"),
("641","1","2022-12-15","32"),
("642","1","2022-12-15","33"),
("643","2","2022-12-15","34"),
("644","0","2022-12-15","35"),
("645","1","2022-12-15","36"),
("646","1","2022-12-15","37"),
("647","1","2022-12-15","38"),
("648","2","2022-12-15","39"),
("649","0","2022-12-15","40"),
("650","0","2022-12-15","41"),
("651","0","2022-12-15","42"),
("652","0","2022-12-15","43"),
("653","0","2022-12-15","44"),
("654","0","2022-12-15","45"),
("655","0","2022-12-15","46"),
("656","1","2022-12-15","47"),
("657","0","2022-12-15","48"),
("658","1","2022-12-15","49"),
("659","0","2022-12-15","50"),
("660","0","2022-12-15","51"),
("661","1","2022-12-15","52"),
("662","0","2022-12-15","53"),
("663","0","2022-12-15","54"),
("664","0","2022-12-15","55"),
("665","0","2022-12-15","56"),
("666","0","2022-12-15","57"),
("667","0","2022-12-15","58"),
("668","0","2022-12-15","59"),
("669","1","2022-12-15","60"),
("670","1","2022-12-15","61"),
("671","1","2022-12-15","62"),
("672","1","2022-12-15","63"),
("673","1","2022-12-15","64"),
("674","1","2022-12-15","65"),
("675","1","2022-12-15","66"),
("676","2","2022-12-15","67"),
("677","2","2022-12-15","68"),
("678","1","2022-12-15","69"),
("679","1","2022-12-15","70"),
("680","1","2022-12-15","71"),
("681","1","2022-12-15","72"),
("682","0","2022-12-15","73"),
("683","0","2022-12-15","74"),
("684","0","2022-12-15","75"),
("685","1","2022-12-15","76"),
("686","0","2022-12-15","77"),
("687","7","2022-12-15","79"),
("688","2","2022-12-16","30"),
("689","3","2022-12-16","31"),
("690","6","2022-12-16","32"),
("691","1","2022-12-16","33"),
("692","0","2022-12-16","34"),
("693","0","2022-12-16","35"),
("694","1","2022-12-16","36"),
("695","0","2022-12-16","37"),
("696","0","2022-12-16","38"),
("697","0","2022-12-16","39"),
("698","0","2022-12-16","40"),
("699","0","2022-12-16","41"),
("700","0","2022-12-16","42");
INSERT INTO inceleme_sayisi VALUES
("701","0","2022-12-16","43"),
("702","0","2022-12-16","44"),
("703","0","2022-12-16","45"),
("704","0","2022-12-16","46"),
("705","0","2022-12-16","47"),
("706","0","2022-12-16","48"),
("707","0","2022-12-16","49"),
("708","0","2022-12-16","50"),
("709","0","2022-12-16","51"),
("710","0","2022-12-16","52"),
("711","0","2022-12-16","53"),
("712","0","2022-12-16","54"),
("713","1","2022-12-16","55"),
("714","0","2022-12-16","56"),
("715","1","2022-12-16","57"),
("716","0","2022-12-16","58"),
("717","0","2022-12-16","59"),
("718","0","2022-12-16","60"),
("719","0","2022-12-16","61"),
("720","0","2022-12-16","62"),
("721","0","2022-12-16","63"),
("722","0","2022-12-16","64"),
("723","0","2022-12-16","65"),
("724","0","2022-12-16","66"),
("725","0","2022-12-16","67"),
("726","0","2022-12-16","68"),
("727","0","2022-12-16","69"),
("728","0","2022-12-16","70"),
("729","0","2022-12-16","71"),
("730","0","2022-12-16","72"),
("731","0","2022-12-16","73"),
("732","0","2022-12-16","74"),
("733","0","2022-12-16","75"),
("734","0","2022-12-16","76"),
("735","1","2022-12-16","77"),
("736","1","2022-12-16","79"),
("737","0","2022-12-17","30"),
("738","1","2022-12-17","31"),
("739","6","2022-12-17","32"),
("740","1","2022-12-17","33"),
("741","1","2022-12-17","34"),
("742","0","2022-12-17","35"),
("743","1","2022-12-17","36"),
("744","1","2022-12-17","37"),
("745","1","2022-12-17","38"),
("746","2","2022-12-17","39"),
("747","0","2022-12-17","40"),
("748","1","2022-12-17","41"),
("749","0","2022-12-17","42"),
("750","0","2022-12-17","43"),
("751","0","2022-12-17","44"),
("752","0","2022-12-17","45"),
("753","1","2022-12-17","46"),
("754","0","2022-12-17","47"),
("755","0","2022-12-17","48"),
("756","0","2022-12-17","49"),
("757","0","2022-12-17","50"),
("758","0","2022-12-17","51"),
("759","0","2022-12-17","52"),
("760","1","2022-12-17","53"),
("761","0","2022-12-17","54"),
("762","0","2022-12-17","55"),
("763","0","2022-12-17","56"),
("764","0","2022-12-17","57"),
("765","0","2022-12-17","58"),
("766","0","2022-12-17","59"),
("767","1","2022-12-17","60"),
("768","0","2022-12-17","61"),
("769","1","2022-12-17","62"),
("770","0","2022-12-17","63"),
("771","0","2022-12-17","64"),
("772","0","2022-12-17","65"),
("773","0","2022-12-17","66"),
("774","0","2022-12-17","67"),
("775","0","2022-12-17","68"),
("776","0","2022-12-17","69"),
("777","1","2022-12-17","70"),
("778","0","2022-12-17","71"),
("779","0","2022-12-17","72"),
("780","0","2022-12-17","73"),
("781","0","2022-12-17","74"),
("782","0","2022-12-17","75"),
("783","1","2022-12-17","76"),
("784","1","2022-12-17","77"),
("785","0","2022-12-17","79"),
("786","1","2022-12-18","30"),
("787","4","2022-12-18","31"),
("788","0","2022-12-18","32"),
("789","0","2022-12-18","33"),
("790","0","2022-12-18","34"),
("791","2","2022-12-18","35"),
("792","0","2022-12-18","36"),
("793","0","2022-12-18","37"),
("794","0","2022-12-18","38"),
("795","0","2022-12-18","39"),
("796","1","2022-12-18","40"),
("797","0","2022-12-18","41"),
("798","0","2022-12-18","42"),
("799","1","2022-12-18","43"),
("800","0","2022-12-18","44");
INSERT INTO inceleme_sayisi VALUES
("801","0","2022-12-18","45"),
("802","0","2022-12-18","46"),
("803","0","2022-12-18","47"),
("804","0","2022-12-18","48"),
("805","0","2022-12-18","49"),
("806","0","2022-12-18","50"),
("807","0","2022-12-18","51"),
("808","1","2022-12-18","52"),
("809","0","2022-12-18","53"),
("810","0","2022-12-18","54"),
("811","0","2022-12-18","55"),
("812","0","2022-12-18","56"),
("813","0","2022-12-18","57"),
("814","0","2022-12-18","58"),
("815","1","2022-12-18","59"),
("816","1","2022-12-18","60"),
("817","0","2022-12-18","61"),
("818","0","2022-12-18","62"),
("819","0","2022-12-18","63"),
("820","0","2022-12-18","64"),
("821","0","2022-12-18","65"),
("822","0","2022-12-18","66"),
("823","0","2022-12-18","67"),
("824","1","2022-12-18","68"),
("825","1","2022-12-18","69"),
("826","0","2022-12-18","70"),
("827","1","2022-12-18","71"),
("828","1","2022-12-18","72"),
("829","1","2022-12-18","73"),
("830","1","2022-12-18","74"),
("831","1","2022-12-18","75"),
("832","0","2022-12-18","76"),
("833","0","2022-12-18","77"),
("834","0","2022-12-18","79"),
("835","0","2022-12-19","30"),
("836","4","2022-12-19","31"),
("837","2","2022-12-19","32"),
("838","2","2022-12-19","33"),
("839","0","2022-12-19","34"),
("840","0","2022-12-19","35"),
("841","0","2022-12-19","36"),
("842","0","2022-12-19","37"),
("843","0","2022-12-19","38"),
("844","0","2022-12-19","39"),
("845","0","2022-12-19","40"),
("846","0","2022-12-19","41"),
("847","0","2022-12-19","42"),
("848","0","2022-12-19","43"),
("849","1","2022-12-19","44"),
("850","2","2022-12-19","45"),
("851","0","2022-12-19","46"),
("852","0","2022-12-19","47"),
("853","1","2022-12-19","48"),
("854","0","2022-12-19","49"),
("855","2","2022-12-19","50"),
("856","0","2022-12-19","51"),
("857","2","2022-12-19","52"),
("858","0","2022-12-19","53"),
("859","0","2022-12-19","54"),
("860","0","2022-12-19","55"),
("861","1","2022-12-19","56"),
("862","3","2022-12-19","57"),
("863","1","2022-12-19","58"),
("864","0","2022-12-19","59"),
("865","2","2022-12-19","60"),
("866","0","2022-12-19","61"),
("867","1","2022-12-19","62"),
("868","0","2022-12-19","63"),
("869","0","2022-12-19","64"),
("870","0","2022-12-19","65"),
("871","0","2022-12-19","66"),
("872","0","2022-12-19","67"),
("873","0","2022-12-19","68"),
("874","0","2022-12-19","69"),
("875","0","2022-12-19","70"),
("876","0","2022-12-19","71"),
("877","0","2022-12-19","72"),
("878","0","2022-12-19","73"),
("879","0","2022-12-19","74"),
("880","0","2022-12-19","75"),
("881","0","2022-12-19","76"),
("882","0","2022-12-19","77"),
("883","3","2022-12-19","80"),
("884","9","2022-12-20","30"),
("885","5","2022-12-20","31"),
("886","8","2022-12-20","32"),
("887","5","2022-12-20","33"),
("888","7","2022-12-20","34"),
("889","2","2022-12-20","35"),
("890","3","2022-12-20","36"),
("891","11","2022-12-20","37"),
("892","5","2022-12-20","38"),
("893","3","2022-12-20","39"),
("894","2","2022-12-20","40"),
("895","3","2022-12-20","41"),
("896","2","2022-12-20","42"),
("897","1","2022-12-20","43"),
("898","2","2022-12-20","44"),
("899","2","2022-12-20","45"),
("900","2","2022-12-20","46");
INSERT INTO inceleme_sayisi VALUES
("901","4","2022-12-20","47"),
("902","3","2022-12-20","48"),
("903","2","2022-12-20","49"),
("904","16","2022-12-20","50"),
("905","2","2022-12-20","51"),
("906","2","2022-12-20","52"),
("907","1","2022-12-20","53"),
("908","2","2022-12-20","54"),
("909","1","2022-12-20","55"),
("910","1","2022-12-20","56"),
("911","3","2022-12-20","57"),
("912","3","2022-12-20","58"),
("913","1","2022-12-20","59"),
("914","4","2022-12-20","60"),
("915","3","2022-12-20","61"),
("916","1","2022-12-20","62"),
("917","3","2022-12-20","63"),
("918","2","2022-12-20","64"),
("919","1","2022-12-20","65"),
("920","1","2022-12-20","66"),
("921","1","2022-12-20","67"),
("922","2","2022-12-20","68"),
("923","2","2022-12-20","69"),
("924","2","2022-12-20","70"),
("925","1","2022-12-20","71"),
("926","2","2022-12-20","72"),
("927","1","2022-12-20","73"),
("928","1","2022-12-20","74"),
("929","1","2022-12-20","75"),
("930","1","2022-12-20","76"),
("931","1","2022-12-20","77"),
("932","2","2022-12-20","80"),
("933","7","2022-12-21","30"),
("934","4","2022-12-21","31"),
("935","11","2022-12-21","32"),
("936","1","2022-12-21","33"),
("937","3","2022-12-21","34"),
("938","1","2022-12-21","35"),
("939","3","2022-12-21","36"),
("940","8","2022-12-21","37"),
("941","2","2022-12-21","38"),
("942","15","2022-12-21","39"),
("943","0","2022-12-21","40"),
("944","1","2022-12-21","41"),
("945","5","2022-12-21","42"),
("946","1","2022-12-21","43"),
("947","0","2022-12-21","44"),
("948","2","2022-12-21","45"),
("949","1","2022-12-21","46"),
("950","1","2022-12-21","47"),
("951","0","2022-12-21","48"),
("952","1","2022-12-21","49"),
("953","2","2022-12-21","50"),
("954","0","2022-12-21","51"),
("955","0","2022-12-21","52"),
("956","1","2022-12-21","53"),
("957","1","2022-12-21","54"),
("958","1","2022-12-21","55"),
("959","0","2022-12-21","56"),
("960","1","2022-12-21","57"),
("961","0","2022-12-21","58"),
("962","1","2022-12-21","59"),
("963","2","2022-12-21","60"),
("964","0","2022-12-21","61"),
("965","0","2022-12-21","62"),
("966","0","2022-12-21","63"),
("967","1","2022-12-21","64"),
("968","1","2022-12-21","65"),
("969","1","2022-12-21","66"),
("970","0","2022-12-21","67"),
("971","0","2022-12-21","68"),
("972","1","2022-12-21","69"),
("973","0","2022-12-21","70"),
("974","0","2022-12-21","71"),
("975","2","2022-12-21","72"),
("976","2","2022-12-21","73"),
("977","0","2022-12-21","74"),
("978","0","2022-12-21","75"),
("979","0","2022-12-21","76"),
("980","1","2022-12-21","77"),
("981","1","2022-12-21","80"),
("982","20","2022-12-22","30"),
("983","2","2022-12-22","31"),
("984","10","2022-12-22","32"),
("985","2","2022-12-22","33"),
("986","4","2022-12-22","34"),
("987","4","2022-12-22","35"),
("988","5","2022-12-22","36"),
("989","5","2022-12-22","37"),
("990","12","2022-12-22","38"),
("991","12","2022-12-22","39"),
("992","1","2022-12-22","40"),
("993","0","2022-12-22","41"),
("994","0","2022-12-22","42"),
("995","0","2022-12-22","43"),
("996","0","2022-12-22","44"),
("997","0","2022-12-22","45"),
("998","0","2022-12-22","46"),
("999","1","2022-12-22","47"),
("1000","3","2022-12-22","48");
INSERT INTO inceleme_sayisi VALUES
("1001","78","2022-12-22","49"),
("1002","3","2022-12-22","50"),
("1003","1","2022-12-22","51"),
("1004","1","2022-12-22","52"),
("1005","0","2022-12-22","53"),
("1006","0","2022-12-22","54"),
("1007","0","2022-12-22","55"),
("1008","0","2022-12-22","56"),
("1009","1","2022-12-22","57"),
("1010","0","2022-12-22","58"),
("1011","1","2022-12-22","59"),
("1012","3","2022-12-22","60"),
("1013","1","2022-12-22","61"),
("1014","0","2022-12-22","62"),
("1015","0","2022-12-22","63"),
("1016","1","2022-12-22","64"),
("1017","1","2022-12-22","65"),
("1018","0","2022-12-22","66"),
("1019","1","2022-12-22","67"),
("1020","0","2022-12-22","68"),
("1021","0","2022-12-22","69"),
("1022","0","2022-12-22","70"),
("1023","0","2022-12-22","71"),
("1024","2","2022-12-22","72"),
("1025","0","2022-12-22","73"),
("1026","2","2022-12-22","74"),
("1027","1","2022-12-22","75"),
("1028","8","2022-12-22","76"),
("1029","1","2022-12-22","77"),
("1030","5","2022-12-22","80"),
("1031","5","2022-12-23","30"),
("1032","0","2022-12-23","31"),
("1033","0","2022-12-23","32"),
("1034","0","2022-12-23","33"),
("1035","3","2022-12-23","34"),
("1036","0","2022-12-23","35"),
("1037","1","2022-12-23","36"),
("1038","0","2022-12-23","37"),
("1039","1","2022-12-23","38"),
("1040","3","2022-12-23","39"),
("1041","0","2022-12-23","40"),
("1042","0","2022-12-23","41"),
("1043","1","2022-12-23","42"),
("1044","0","2022-12-23","43"),
("1045","0","2022-12-23","44"),
("1046","0","2022-12-23","45"),
("1047","0","2022-12-23","46"),
("1048","1","2022-12-23","47"),
("1049","0","2022-12-23","48"),
("1050","1","2022-12-23","49"),
("1051","1","2022-12-23","50"),
("1052","0","2022-12-23","51"),
("1053","1","2022-12-23","52"),
("1054","1","2022-12-23","53"),
("1055","1","2022-12-23","54"),
("1056","0","2022-12-23","55"),
("1057","0","2022-12-23","56"),
("1058","1","2022-12-23","57"),
("1059","0","2022-12-23","58"),
("1060","0","2022-12-23","59"),
("1061","2","2022-12-23","60"),
("1062","0","2022-12-23","61"),
("1063","0","2022-12-23","62"),
("1064","0","2022-12-23","63"),
("1065","0","2022-12-23","64"),
("1066","0","2022-12-23","65"),
("1067","0","2022-12-23","66"),
("1068","1","2022-12-23","67"),
("1069","0","2022-12-23","68"),
("1070","0","2022-12-23","69"),
("1071","0","2022-12-23","70"),
("1072","0","2022-12-23","71"),
("1073","0","2022-12-23","72"),
("1074","0","2022-12-23","73"),
("1075","0","2022-12-23","74"),
("1076","0","2022-12-23","75"),
("1077","0","2022-12-23","76"),
("1078","0","2022-12-23","77"),
("1079","2","2022-12-23","80"),
("1080","8","2022-12-24","30"),
("1081","4","2022-12-24","31"),
("1082","4","2022-12-24","32"),
("1083","2","2022-12-24","33"),
("1084","1","2022-12-24","34"),
("1085","3","2022-12-24","35"),
("1086","1","2022-12-24","36"),
("1087","3","2022-12-24","37"),
("1088","2","2022-12-24","38"),
("1089","6","2022-12-24","39"),
("1090","0","2022-12-24","40"),
("1091","0","2022-12-24","41"),
("1092","0","2022-12-24","42"),
("1093","0","2022-12-24","43"),
("1094","0","2022-12-24","44"),
("1095","0","2022-12-24","45"),
("1096","1","2022-12-24","46"),
("1097","1","2022-12-24","47"),
("1098","1","2022-12-24","48"),
("1099","2","2022-12-24","49"),
("1100","2","2022-12-24","50");
INSERT INTO inceleme_sayisi VALUES
("1101","0","2022-12-24","51"),
("1102","0","2022-12-24","52"),
("1103","0","2022-12-24","53"),
("1104","1","2022-12-24","54"),
("1105","1","2022-12-24","55"),
("1106","0","2022-12-24","56"),
("1107","0","2022-12-24","57"),
("1108","0","2022-12-24","58"),
("1109","0","2022-12-24","59"),
("1110","0","2022-12-24","60"),
("1111","0","2022-12-24","61"),
("1112","0","2022-12-24","62"),
("1113","0","2022-12-24","63"),
("1114","0","2022-12-24","64"),
("1115","0","2022-12-24","65"),
("1116","0","2022-12-24","66"),
("1117","0","2022-12-24","67"),
("1118","0","2022-12-24","68"),
("1119","0","2022-12-24","70"),
("1120","0","2022-12-24","71"),
("1121","4","2022-12-24","72"),
("1122","2","2022-12-24","73"),
("1123","0","2022-12-24","74"),
("1124","2","2022-12-24","75"),
("1125","0","2022-12-24","76"),
("1126","1","2022-12-24","77"),
("1127","1","2022-12-24","80"),
("1128","116","2022-12-24","84"),
("1129","5","2022-12-25","30"),
("1130","0","2022-12-25","31"),
("1131","1","2022-12-25","32"),
("1132","0","2022-12-25","33"),
("1133","2","2022-12-25","34"),
("1134","0","2022-12-25","35"),
("1135","2","2022-12-25","36"),
("1136","3","2022-12-25","37"),
("1137","0","2022-12-25","38"),
("1138","6","2022-12-25","39"),
("1139","1","2022-12-25","40"),
("1140","1","2022-12-25","41"),
("1141","0","2022-12-25","42"),
("1142","0","2022-12-25","43"),
("1143","0","2022-12-25","44"),
("1144","0","2022-12-25","45"),
("1145","0","2022-12-25","46"),
("1146","1","2022-12-25","47"),
("1147","0","2022-12-25","48"),
("1148","4","2022-12-25","49"),
("1149","0","2022-12-25","50"),
("1150","0","2022-12-25","51"),
("1151","1","2022-12-25","52"),
("1152","0","2022-12-25","53"),
("1153","0","2022-12-25","54"),
("1154","0","2022-12-25","55"),
("1155","0","2022-12-25","56"),
("1156","0","2022-12-25","57"),
("1157","0","2022-12-25","58"),
("1158","0","2022-12-25","59"),
("1159","1","2022-12-25","60"),
("1160","0","2022-12-25","61"),
("1161","1","2022-12-25","62"),
("1162","0","2022-12-25","63"),
("1163","0","2022-12-25","64"),
("1164","0","2022-12-25","65"),
("1165","0","2022-12-25","66"),
("1166","1","2022-12-25","67"),
("1167","1","2022-12-25","68"),
("1168","1","2022-12-25","70"),
("1169","2","2022-12-25","71"),
("1170","1","2022-12-25","72"),
("1171","0","2022-12-25","73"),
("1172","1","2022-12-25","74"),
("1173","0","2022-12-25","75"),
("1174","1","2022-12-25","76"),
("1175","0","2022-12-25","77"),
("1176","3","2022-12-25","80"),
("1177","5","2022-12-25","84"),
("1178","3","2022-12-26","30"),
("1179","1","2022-12-26","31"),
("1180","1","2022-12-26","32"),
("1181","1","2022-12-26","33"),
("1182","0","2022-12-26","34"),
("1183","2","2022-12-26","35"),
("1184","1","2022-12-26","36"),
("1185","0","2022-12-26","37"),
("1186","1","2022-12-26","38"),
("1187","3","2022-12-26","39"),
("1188","1","2022-12-26","40"),
("1189","2","2022-12-26","41"),
("1190","3","2022-12-26","42"),
("1191","0","2022-12-26","43"),
("1192","1","2022-12-26","44"),
("1193","1","2022-12-26","45"),
("1194","1","2022-12-26","46"),
("1195","0","2022-12-26","47"),
("1196","0","2022-12-26","48"),
("1197","1","2022-12-26","49"),
("1198","2","2022-12-26","50"),
("1199","1","2022-12-26","51"),
("1200","1","2022-12-26","52");
INSERT INTO inceleme_sayisi VALUES
("1201","1","2022-12-26","53"),
("1202","1","2022-12-26","54"),
("1203","1","2022-12-26","55"),
("1204","0","2022-12-26","56"),
("1205","1","2022-12-26","57"),
("1206","1","2022-12-26","58"),
("1207","1","2022-12-26","59"),
("1208","0","2022-12-26","60"),
("1209","0","2022-12-26","61"),
("1210","1","2022-12-26","62"),
("1211","0","2022-12-26","63"),
("1212","0","2022-12-26","64"),
("1213","1","2022-12-26","65"),
("1214","1","2022-12-26","66"),
("1215","1","2022-12-26","67"),
("1216","0","2022-12-26","68"),
("1217","0","2022-12-26","70"),
("1218","1","2022-12-26","71"),
("1219","2","2022-12-26","72"),
("1220","0","2022-12-26","73"),
("1221","1","2022-12-26","74"),
("1222","2","2022-12-26","75"),
("1223","1","2022-12-26","76"),
("1224","2","2022-12-26","77"),
("1225","4","2022-12-26","80"),
("1226","4","2022-12-26","84"),
("1227","3","2022-12-27","30"),
("1228","1","2022-12-27","31"),
("1229","4","2022-12-27","32"),
("1230","1","2022-12-27","33"),
("1231","2","2022-12-27","34"),
("1232","0","2022-12-27","35"),
("1233","0","2022-12-27","36"),
("1234","7","2022-12-27","37"),
("1235","1","2022-12-27","38"),
("1236","3","2022-12-27","39"),
("1237","0","2022-12-27","40"),
("1238","0","2022-12-27","41"),
("1239","0","2022-12-27","42"),
("1240","1","2022-12-27","43"),
("1241","0","2022-12-27","44"),
("1242","1","2022-12-27","45"),
("1243","0","2022-12-27","46"),
("1244","0","2022-12-27","47"),
("1245","1","2022-12-27","48"),
("1246","2","2022-12-27","49"),
("1247","1","2022-12-27","50"),
("1248","0","2022-12-27","51"),
("1249","0","2022-12-27","52"),
("1250","0","2022-12-27","53"),
("1251","0","2022-12-27","54"),
("1252","0","2022-12-27","55"),
("1253","1","2022-12-27","56"),
("1254","0","2022-12-27","57"),
("1255","0","2022-12-27","58"),
("1256","0","2022-12-27","59"),
("1257","1","2022-12-27","60"),
("1258","1","2022-12-27","61"),
("1259","0","2022-12-27","62"),
("1260","1","2022-12-27","63"),
("1261","0","2022-12-27","64"),
("1262","0","2022-12-27","65"),
("1263","0","2022-12-27","66"),
("1264","0","2022-12-27","67"),
("1265","0","2022-12-27","68"),
("1266","1","2022-12-27","70"),
("1267","0","2022-12-27","71"),
("1268","0","2022-12-27","72"),
("1269","0","2022-12-27","73"),
("1270","0","2022-12-27","74"),
("1271","0","2022-12-27","75"),
("1272","0","2022-12-27","76"),
("1273","1","2022-12-27","77"),
("1274","1","2022-12-27","80"),
("1275","3","2022-12-27","84"),
("1276","29","2022-12-27","85"),
("1277","29","2022-12-27","86"),
("1278","24","2022-12-27","87"),
("1279","8","2022-12-28","30"),
("1280","3","2022-12-28","31"),
("1281","2","2022-12-28","32"),
("1282","1","2022-12-28","33"),
("1283","3","2022-12-28","34"),
("1284","1","2022-12-28","35"),
("1285","3","2022-12-28","36"),
("1286","2","2022-12-28","37"),
("1287","2","2022-12-28","38"),
("1288","6","2022-12-28","39"),
("1289","1","2022-12-28","40"),
("1290","1","2022-12-28","41"),
("1291","1","2022-12-28","42"),
("1292","1","2022-12-28","43"),
("1293","1","2022-12-28","44"),
("1294","4","2022-12-28","45"),
("1295","4","2022-12-28","46"),
("1296","1","2022-12-28","47"),
("1297","1","2022-12-28","48"),
("1298","3","2022-12-28","49"),
("1299","4","2022-12-28","50"),
("1300","1","2022-12-28","51");
INSERT INTO inceleme_sayisi VALUES
("1301","2","2022-12-28","52"),
("1302","3","2022-12-28","53"),
("1303","1","2022-12-28","54"),
("1304","1","2022-12-28","55"),
("1305","2","2022-12-28","56"),
("1306","2","2022-12-28","57"),
("1307","3","2022-12-28","58"),
("1308","1","2022-12-28","59"),
("1309","1","2022-12-28","60"),
("1310","1","2022-12-28","61"),
("1311","1","2022-12-28","62"),
("1312","1","2022-12-28","63"),
("1313","1","2022-12-28","64"),
("1314","1","2022-12-28","65"),
("1315","1","2022-12-28","66"),
("1316","1","2022-12-28","67"),
("1317","1","2022-12-28","68"),
("1318","1","2022-12-28","70"),
("1319","1","2022-12-28","71"),
("1320","1","2022-12-28","72"),
("1321","1","2022-12-28","73"),
("1322","1","2022-12-28","74"),
("1323","1","2022-12-28","75"),
("1324","1","2022-12-28","76"),
("1325","1","2022-12-28","77"),
("1326","3","2022-12-28","80"),
("1327","6","2022-12-28","84"),
("1328","2","2022-12-28","85"),
("1329","2","2022-12-28","86"),
("1330","2","2022-12-28","87"),
("1331","3","2022-12-28","88"),
("1332","5","2022-12-28","90"),
("1333","3","2022-12-28","91"),
("1334","4","2022-12-29","30"),
("1335","1","2022-12-29","31"),
("1336","4","2022-12-29","32"),
("1337","1","2022-12-29","33"),
("1338","0","2022-12-29","34"),
("1339","0","2022-12-29","35"),
("1340","1","2022-12-29","36"),
("1341","1","2022-12-29","37"),
("1342","0","2022-12-29","38"),
("1343","6","2022-12-29","39"),
("1344","0","2022-12-29","40"),
("1345","0","2022-12-29","41"),
("1346","2","2022-12-29","42"),
("1347","0","2022-12-29","43"),
("1348","1","2022-12-29","44"),
("1349","0","2022-12-29","45"),
("1350","1","2022-12-29","46"),
("1351","1","2022-12-29","47"),
("1352","0","2022-12-29","48"),
("1353","6","2022-12-29","49"),
("1354","0","2022-12-29","50"),
("1355","0","2022-12-29","51"),
("1356","2","2022-12-29","52"),
("1357","1","2022-12-29","53"),
("1358","1","2022-12-29","54"),
("1359","0","2022-12-29","55"),
("1360","0","2022-12-29","56"),
("1361","0","2022-12-29","57"),
("1362","0","2022-12-29","58"),
("1363","0","2022-12-29","59"),
("1364","0","2022-12-29","60"),
("1365","1","2022-12-29","61"),
("1366","1","2022-12-29","62"),
("1367","1","2022-12-29","63"),
("1368","0","2022-12-29","64"),
("1369","0","2022-12-29","65"),
("1370","0","2022-12-29","66"),
("1371","0","2022-12-29","67"),
("1372","0","2022-12-29","68"),
("1373","0","2022-12-29","70"),
("1374","0","2022-12-29","71"),
("1375","0","2022-12-29","72"),
("1376","0","2022-12-29","73"),
("1377","0","2022-12-29","74"),
("1378","1","2022-12-29","75"),
("1379","2","2022-12-29","76"),
("1380","0","2022-12-29","77"),
("1381","1","2022-12-29","80"),
("1382","5","2022-12-29","84"),
("1383","1","2022-12-29","85"),
("1384","1","2022-12-29","86"),
("1385","1","2022-12-29","87"),
("1386","1","2022-12-29","88"),
("1387","2","2022-12-29","90"),
("1388","2","2022-12-29","91"),
("1389","2","2022-12-29","92"),
("1390","1","2022-12-29","93"),
("1391","121","2022-12-29","94"),
("1392","4","2022-12-30","30"),
("1393","2","2022-12-30","31"),
("1394","3","2022-12-30","32"),
("1395","0","2022-12-30","33"),
("1396","0","2022-12-30","34"),
("1397","0","2022-12-30","35"),
("1398","3","2022-12-30","36"),
("1399","4","2022-12-30","37"),
("1400","0","2022-12-30","38");
INSERT INTO inceleme_sayisi VALUES
("1401","5","2022-12-30","39"),
("1402","0","2022-12-30","40"),
("1403","0","2022-12-30","41"),
("1404","2","2022-12-30","42"),
("1405","1","2022-12-30","43"),
("1406","0","2022-12-30","44"),
("1407","1","2022-12-30","45"),
("1408","0","2022-12-30","46"),
("1409","5","2022-12-30","47"),
("1410","0","2022-12-30","48"),
("1411","2","2022-12-30","49"),
("1412","1","2022-12-30","50"),
("1413","0","2022-12-30","51"),
("1414","0","2022-12-30","52"),
("1415","0","2022-12-30","53"),
("1416","0","2022-12-30","54"),
("1417","0","2022-12-30","55"),
("1418","0","2022-12-30","56"),
("1419","0","2022-12-30","57"),
("1420","0","2022-12-30","58"),
("1421","0","2022-12-30","59"),
("1422","0","2022-12-30","60"),
("1423","0","2022-12-30","61"),
("1424","0","2022-12-30","62"),
("1425","0","2022-12-30","63"),
("1426","1","2022-12-30","64"),
("1427","1","2022-12-30","65"),
("1428","1","2022-12-30","66"),
("1429","0","2022-12-30","67"),
("1430","1","2022-12-30","68"),
("1431","0","2022-12-30","70"),
("1432","0","2022-12-30","71"),
("1433","0","2022-12-30","72"),
("1434","0","2022-12-30","73"),
("1435","0","2022-12-30","74"),
("1436","1","2022-12-30","75"),
("1437","0","2022-12-30","76"),
("1438","0","2022-12-30","77"),
("1439","0","2022-12-30","80"),
("1440","7","2022-12-30","84"),
("1441","1","2022-12-30","85"),
("1442","3","2022-12-30","86"),
("1443","1","2022-12-30","87"),
("1444","0","2022-12-30","88"),
("1445","0","2022-12-30","90"),
("1446","1","2022-12-30","91"),
("1447","1","2022-12-30","92"),
("1448","3","2022-12-30","93"),
("1449","22","2022-12-30","94"),
("1450","2","2022-12-31","30"),
("1451","2","2022-12-31","31"),
("1452","1","2022-12-31","32"),
("1453","2","2022-12-31","33"),
("1454","1","2022-12-31","34"),
("1455","1","2022-12-31","35"),
("1456","1","2022-12-31","36"),
("1457","0","2022-12-31","37"),
("1458","1","2022-12-31","38"),
("1459","6","2022-12-31","39"),
("1460","0","2022-12-31","40"),
("1461","0","2022-12-31","41"),
("1462","0","2022-12-31","42"),
("1463","0","2022-12-31","43"),
("1464","0","2022-12-31","44"),
("1465","1","2022-12-31","45"),
("1466","0","2022-12-31","46"),
("1467","0","2022-12-31","47"),
("1468","0","2022-12-31","48"),
("1469","0","2022-12-31","49"),
("1470","0","2022-12-31","50"),
("1471","0","2022-12-31","51"),
("1472","0","2022-12-31","52"),
("1473","0","2022-12-31","53"),
("1474","0","2022-12-31","54"),
("1475","1","2022-12-31","55"),
("1476","0","2022-12-31","56"),
("1477","0","2022-12-31","57"),
("1478","0","2022-12-31","58"),
("1479","0","2022-12-31","59"),
("1480","1","2022-12-31","60"),
("1481","0","2022-12-31","61"),
("1482","0","2022-12-31","62"),
("1483","0","2022-12-31","63"),
("1484","1","2022-12-31","64"),
("1485","0","2022-12-31","65"),
("1486","0","2022-12-31","66"),
("1487","0","2022-12-31","67"),
("1488","0","2022-12-31","68"),
("1489","0","2022-12-31","70"),
("1490","0","2022-12-31","71"),
("1491","1","2022-12-31","72"),
("1492","1","2022-12-31","73"),
("1493","1","2022-12-31","74"),
("1494","1","2022-12-31","75"),
("1495","1","2022-12-31","76"),
("1496","1","2022-12-31","77"),
("1497","2","2022-12-31","84"),
("1498","0","2022-12-31","85"),
("1499","0","2022-12-31","86"),
("1500","0","2022-12-31","87");
INSERT INTO inceleme_sayisi VALUES
("1501","0","2022-12-31","88"),
("1502","0","2022-12-31","90"),
("1503","0","2022-12-31","91"),
("1504","0","2022-12-31","92"),
("1505","1","2022-12-31","93"),
("1506","2","2022-12-31","94"),
("1507","3","2023-01-01","30"),
("1508","2","2023-01-01","31"),
("1509","2","2023-01-01","32"),
("1510","2","2023-01-01","33"),
("1511","2","2023-01-01","34"),
("1512","1","2023-01-01","35"),
("1513","0","2023-01-01","36"),
("1514","2","2023-01-01","37"),
("1515","1","2023-01-01","38"),
("1516","0","2023-01-01","39"),
("1517","0","2023-01-01","40"),
("1518","0","2023-01-01","41"),
("1519","1","2023-01-01","42"),
("1520","0","2023-01-01","43"),
("1521","0","2023-01-01","44"),
("1522","0","2023-01-01","45"),
("1523","0","2023-01-01","46"),
("1524","0","2023-01-01","47"),
("1525","0","2023-01-01","48"),
("1526","2","2023-01-01","49"),
("1527","1","2023-01-01","50"),
("1528","0","2023-01-01","51"),
("1529","1","2023-01-01","52"),
("1530","8","2023-01-01","53"),
("1531","2","2023-01-01","54"),
("1532","1","2023-01-01","55"),
("1533","0","2023-01-01","56"),
("1534","0","2023-01-01","57"),
("1535","1","2023-01-01","58"),
("1536","1","2023-01-01","59"),
("1537","1","2023-01-01","60"),
("1538","0","2023-01-01","61"),
("1539","0","2023-01-01","62"),
("1540","0","2023-01-01","63"),
("1541","0","2023-01-01","64"),
("1542","0","2023-01-01","65"),
("1543","0","2023-01-01","66"),
("1544","1","2023-01-01","67"),
("1545","0","2023-01-01","68"),
("1546","1","2023-01-01","70"),
("1547","1","2023-01-01","71"),
("1548","0","2023-01-01","72"),
("1549","0","2023-01-01","73"),
("1550","1","2023-01-01","74"),
("1551","0","2023-01-01","75"),
("1552","0","2023-01-01","76"),
("1553","0","2023-01-01","77"),
("1554","6","2023-01-01","84"),
("1555","0","2023-01-01","85"),
("1556","1","2023-01-01","86"),
("1557","1","2023-01-01","87"),
("1558","2","2023-01-01","88"),
("1559","0","2023-01-01","90"),
("1560","1","2023-01-01","91"),
("1561","1","2023-01-01","92"),
("1562","1","2023-01-01","93"),
("1563","6","2023-01-01","94"),
("1564","0","2023-01-02","30"),
("1565","0","2023-01-02","31"),
("1566","2","2023-01-02","32"),
("1567","0","2023-01-02","33"),
("1568","0","2023-01-02","34"),
("1569","0","2023-01-02","35"),
("1570","0","2023-01-02","36"),
("1571","0","2023-01-02","37"),
("1572","0","2023-01-02","38"),
("1573","0","2023-01-02","39"),
("1574","1","2023-01-02","40"),
("1575","1","2023-01-02","41"),
("1576","0","2023-01-02","42"),
("1577","0","2023-01-02","43"),
("1578","0","2023-01-02","44"),
("1579","0","2023-01-02","45"),
("1580","0","2023-01-02","46"),
("1581","1","2023-01-02","47"),
("1582","1","2023-01-02","48"),
("1583","0","2023-01-02","49"),
("1584","1","2023-01-02","50"),
("1585","1","2023-01-02","51"),
("1586","0","2023-01-02","52"),
("1587","1","2023-01-02","53"),
("1588","0","2023-01-02","54"),
("1589","0","2023-01-02","55"),
("1590","0","2023-01-02","56"),
("1591","0","2023-01-02","57"),
("1592","0","2023-01-02","58"),
("1593","0","2023-01-02","59"),
("1594","1","2023-01-02","60"),
("1595","0","2023-01-02","61"),
("1596","0","2023-01-02","62"),
("1597","0","2023-01-02","63"),
("1598","0","2023-01-02","64"),
("1599","0","2023-01-02","65"),
("1600","0","2023-01-02","66");
INSERT INTO inceleme_sayisi VALUES
("1601","0","2023-01-02","67"),
("1602","1","2023-01-02","68"),
("1603","0","2023-01-02","70"),
("1604","0","2023-01-02","71"),
("1605","0","2023-01-02","72"),
("1606","0","2023-01-02","73"),
("1607","0","2023-01-02","74"),
("1608","0","2023-01-02","75"),
("1609","0","2023-01-02","76"),
("1610","0","2023-01-02","77"),
("1611","2","2023-01-02","84"),
("1612","0","2023-01-02","85"),
("1613","0","2023-01-02","86"),
("1614","0","2023-01-02","87"),
("1615","1","2023-01-02","88"),
("1616","2","2023-01-02","90"),
("1617","0","2023-01-02","91"),
("1618","1","2023-01-02","92"),
("1619","0","2023-01-02","93"),
("1620","76","2023-01-02","94"),
("1621","3","2023-01-03","30"),
("1622","4","2023-01-03","31"),
("1623","2","2023-01-03","32"),
("1624","1","2023-01-03","33"),
("1625","1","2023-01-03","34"),
("1626","0","2023-01-03","35"),
("1627","3","2023-01-03","36"),
("1628","2","2023-01-03","37"),
("1629","2","2023-01-03","38"),
("1630","1","2023-01-03","39"),
("1631","0","2023-01-03","40"),
("1632","1","2023-01-03","41"),
("1633","0","2023-01-03","42"),
("1634","0","2023-01-03","43"),
("1635","0","2023-01-03","44"),
("1636","1","2023-01-03","45"),
("1637","0","2023-01-03","46"),
("1638","1","2023-01-03","47"),
("1639","0","2023-01-03","48"),
("1640","3","2023-01-03","49"),
("1641","1","2023-01-03","50"),
("1642","0","2023-01-03","51"),
("1643","0","2023-01-03","52"),
("1644","1","2023-01-03","53"),
("1645","0","2023-01-03","54"),
("1646","0","2023-01-03","55"),
("1647","0","2023-01-03","56"),
("1648","0","2023-01-03","57"),
("1649","0","2023-01-03","58"),
("1650","1","2023-01-03","59"),
("1651","1","2023-01-03","60"),
("1652","0","2023-01-03","61"),
("1653","0","2023-01-03","62"),
("1654","1","2023-01-03","63"),
("1655","0","2023-01-03","64"),
("1656","0","2023-01-03","65"),
("1657","0","2023-01-03","66"),
("1658","1","2023-01-03","67"),
("1659","0","2023-01-03","68"),
("1660","0","2023-01-03","70"),
("1661","0","2023-01-03","71"),
("1662","1","2023-01-03","72"),
("1663","0","2023-01-03","73"),
("1664","0","2023-01-03","74"),
("1665","0","2023-01-03","75"),
("1666","0","2023-01-03","76"),
("1667","0","2023-01-03","77"),
("1668","1","2023-01-03","84"),
("1669","0","2023-01-03","85"),
("1670","1","2023-01-03","86"),
("1671","1","2023-01-03","87"),
("1672","5","2023-01-03","88"),
("1673","0","2023-01-03","90"),
("1674","0","2023-01-03","91"),
("1675","0","2023-01-03","92"),
("1676","0","2023-01-03","93"),
("1677","15","2023-01-03","94"),
("1678","4","2023-01-04","30"),
("1679","0","2023-01-04","31"),
("1680","0","2023-01-04","32"),
("1681","1","2023-01-04","33"),
("1682","2","2023-01-04","34"),
("1683","0","2023-01-04","35"),
("1684","3","2023-01-04","36"),
("1685","1","2023-01-04","37"),
("1686","0","2023-01-04","38"),
("1687","5","2023-01-04","39"),
("1688","1","2023-01-04","40"),
("1689","1","2023-01-04","41"),
("1690","1","2023-01-04","42"),
("1691","0","2023-01-04","43"),
("1692","0","2023-01-04","44"),
("1693","0","2023-01-04","45"),
("1694","0","2023-01-04","46"),
("1695","0","2023-01-04","47"),
("1696","2","2023-01-04","48"),
("1697","2","2023-01-04","49"),
("1698","0","2023-01-04","50"),
("1699","0","2023-01-04","51"),
("1700","3","2023-01-04","52");
INSERT INTO inceleme_sayisi VALUES
("1701","2","2023-01-04","53"),
("1702","0","2023-01-04","54"),
("1703","0","2023-01-04","55"),
("1704","0","2023-01-04","56"),
("1705","0","2023-01-04","57"),
("1706","0","2023-01-04","58"),
("1707","1","2023-01-04","59"),
("1708","0","2023-01-04","60"),
("1709","0","2023-01-04","61"),
("1710","0","2023-01-04","62"),
("1711","0","2023-01-04","63"),
("1712","1","2023-01-04","64"),
("1713","0","2023-01-04","65"),
("1714","0","2023-01-04","66"),
("1715","0","2023-01-04","67"),
("1716","0","2023-01-04","68"),
("1717","0","2023-01-04","70"),
("1718","0","2023-01-04","71"),
("1719","0","2023-01-04","72"),
("1720","1","2023-01-04","73"),
("1721","0","2023-01-04","74"),
("1722","0","2023-01-04","75"),
("1723","1","2023-01-04","76"),
("1724","0","2023-01-04","77"),
("1725","0","2023-01-04","84"),
("1726","1","2023-01-04","85"),
("1727","1","2023-01-04","86"),
("1728","2","2023-01-04","87"),
("1729","1","2023-01-04","88"),
("1730","1","2023-01-04","90"),
("1731","1","2023-01-04","91"),
("1732","2","2023-01-04","92"),
("1733","0","2023-01-04","93"),
("1734","16","2023-01-04","94"),
("1735","6","2023-01-05","30"),
("1736","4","2023-01-05","31"),
("1737","4","2023-01-05","32"),
("1738","1","2023-01-05","33"),
("1739","2","2023-01-05","34"),
("1740","2","2023-01-05","35"),
("1741","2","2023-01-05","36"),
("1742","3","2023-01-05","37"),
("1743","3","2023-01-05","38"),
("1744","5","2023-01-05","39"),
("1745","0","2023-01-05","40"),
("1746","0","2023-01-05","41"),
("1747","1","2023-01-05","42"),
("1748","0","2023-01-05","43"),
("1749","1","2023-01-05","44"),
("1750","0","2023-01-05","45"),
("1751","0","2023-01-05","46"),
("1752","0","2023-01-05","47"),
("1753","0","2023-01-05","48"),
("1754","2","2023-01-05","49"),
("1755","2","2023-01-05","50"),
("1756","0","2023-01-05","51"),
("1757","3","2023-01-05","52"),
("1758","0","2023-01-05","53"),
("1759","0","2023-01-05","54"),
("1760","0","2023-01-05","55"),
("1761","1","2023-01-05","56"),
("1762","3","2023-01-05","57"),
("1763","0","2023-01-05","58"),
("1764","0","2023-01-05","59"),
("1765","3","2023-01-05","60"),
("1766","0","2023-01-05","61"),
("1767","0","2023-01-05","62"),
("1768","2","2023-01-05","63"),
("1769","0","2023-01-05","64"),
("1770","1","2023-01-05","65"),
("1771","0","2023-01-05","66"),
("1772","0","2023-01-05","67"),
("1773","0","2023-01-05","68"),
("1774","0","2023-01-05","70"),
("1775","1","2023-01-05","71"),
("1776","0","2023-01-05","72"),
("1777","0","2023-01-05","73"),
("1778","0","2023-01-05","74"),
("1779","1","2023-01-05","75"),
("1780","3","2023-01-05","76"),
("1781","1","2023-01-05","77"),
("1782","4","2023-01-05","84"),
("1783","8","2023-01-05","85"),
("1784","6","2023-01-05","86"),
("1785","2","2023-01-05","87"),
("1786","2","2023-01-05","88"),
("1787","3","2023-01-05","90"),
("1788","2","2023-01-05","91"),
("1789","2","2023-01-05","92"),
("1790","2","2023-01-05","93"),
("1791","13","2023-01-05","94"),
("1792","3","2023-01-06","30"),
("1793","4","2023-01-06","31"),
("1794","3","2023-01-06","32"),
("1795","0","2023-01-06","33"),
("1796","1","2023-01-06","34"),
("1797","0","2023-01-06","35"),
("1798","1","2023-01-06","36"),
("1799","1","2023-01-06","37"),
("1800","3","2023-01-06","38");
INSERT INTO inceleme_sayisi VALUES
("1801","5","2023-01-06","39"),
("1802","0","2023-01-06","40"),
("1803","1","2023-01-06","41"),
("1804","1","2023-01-06","42"),
("1805","0","2023-01-06","43"),
("1806","0","2023-01-06","44"),
("1807","0","2023-01-06","45"),
("1808","1","2023-01-06","46"),
("1809","2","2023-01-06","47"),
("1810","0","2023-01-06","48"),
("1811","1","2023-01-06","49"),
("1812","0","2023-01-06","50"),
("1813","1","2023-01-06","51"),
("1814","0","2023-01-06","52"),
("1815","1","2023-01-06","53"),
("1816","0","2023-01-06","54"),
("1817","0","2023-01-06","55"),
("1818","1","2023-01-06","56"),
("1819","0","2023-01-06","57"),
("1820","0","2023-01-06","58"),
("1821","1","2023-01-06","59"),
("1822","0","2023-01-06","60"),
("1823","1","2023-01-06","61"),
("1824","0","2023-01-06","62"),
("1825","1","2023-01-06","63"),
("1826","1","2023-01-06","64"),
("1827","0","2023-01-06","65"),
("1828","1","2023-01-06","66"),
("1829","0","2023-01-06","67"),
("1830","0","2023-01-06","68"),
("1831","1","2023-01-06","70"),
("1832","0","2023-01-06","71"),
("1833","0","2023-01-06","72"),
("1834","0","2023-01-06","73"),
("1835","0","2023-01-06","74"),
("1836","0","2023-01-06","75"),
("1837","0","2023-01-06","76"),
("1838","0","2023-01-06","77"),
("1839","2","2023-01-06","84"),
("1840","0","2023-01-06","85"),
("1841","0","2023-01-06","86"),
("1842","1","2023-01-06","87"),
("1843","0","2023-01-06","88"),
("1844","0","2023-01-06","90"),
("1845","1","2023-01-06","91"),
("1846","1","2023-01-06","92"),
("1847","2","2023-01-06","93"),
("1848","3","2023-01-06","94"),
("1849","3","2023-01-07","30"),
("1850","0","2023-01-07","31"),
("1851","1","2023-01-07","32"),
("1852","1","2023-01-07","33"),
("1853","1","2023-01-07","34"),
("1854","1","2023-01-07","35"),
("1855","3","2023-01-07","36"),
("1856","1","2023-01-07","37"),
("1857","1","2023-01-07","38"),
("1858","3","2023-01-07","39"),
("1859","1","2023-01-07","40"),
("1860","0","2023-01-07","41"),
("1861","0","2023-01-07","42"),
("1862","2","2023-01-07","43"),
("1863","1","2023-01-07","44"),
("1864","3","2023-01-07","45"),
("1865","1","2023-01-07","46"),
("1866","2","2023-01-07","47"),
("1867","1","2023-01-07","48"),
("1868","1","2023-01-07","49"),
("1869","0","2023-01-07","50"),
("1870","0","2023-01-07","51"),
("1871","2","2023-01-07","52"),
("1872","1","2023-01-07","53"),
("1873","1","2023-01-07","54"),
("1874","0","2023-01-07","55"),
("1875","2","2023-01-07","56"),
("1876","0","2023-01-07","57"),
("1877","3","2023-01-07","58"),
("1878","1","2023-01-07","59"),
("1879","4","2023-01-07","60"),
("1880","1","2023-01-07","61"),
("1881","1","2023-01-07","62"),
("1882","1","2023-01-07","63"),
("1883","0","2023-01-07","64"),
("1884","0","2023-01-07","65"),
("1885","0","2023-01-07","66"),
("1886","0","2023-01-07","67"),
("1887","0","2023-01-07","68"),
("1888","2","2023-01-07","70"),
("1889","0","2023-01-07","71"),
("1890","1","2023-01-07","72"),
("1891","1","2023-01-07","73"),
("1892","2","2023-01-07","74"),
("1893","1","2023-01-07","75"),
("1894","1","2023-01-07","76"),
("1895","2","2023-01-07","77"),
("1896","2","2023-01-07","84"),
("1897","0","2023-01-07","85"),
("1898","0","2023-01-07","86"),
("1899","0","2023-01-07","87"),
("1900","1","2023-01-07","88");
INSERT INTO inceleme_sayisi VALUES
("1901","0","2023-01-07","90"),
("1902","0","2023-01-07","91"),
("1903","0","2023-01-07","92"),
("1904","1","2023-01-07","93"),
("1905","5","2023-01-07","94"),
("1906","9","2023-01-08","30"),
("1907","3","2023-01-08","31"),
("1908","3","2023-01-08","32"),
("1909","2","2023-01-08","33"),
("1910","2","2023-01-08","34"),
("1911","1","2023-01-08","35"),
("1912","3","2023-01-08","36"),
("1913","5","2023-01-08","37"),
("1914","2","2023-01-08","38"),
("1915","5","2023-01-08","39"),
("1916","1","2023-01-08","40"),
("1917","1","2023-01-08","41"),
("1918","3","2023-01-08","42"),
("1919","0","2023-01-08","43"),
("1920","1","2023-01-08","44"),
("1921","1","2023-01-08","45"),
("1922","0","2023-01-08","46"),
("1923","0","2023-01-08","47"),
("1924","3","2023-01-08","48"),
("1925","5","2023-01-08","49"),
("1926","3","2023-01-08","50"),
("1927","0","2023-01-08","51"),
("1928","1","2023-01-08","52"),
("1929","1","2023-01-08","53"),
("1930","1","2023-01-08","54"),
("1931","2","2023-01-08","55"),
("1932","0","2023-01-08","56"),
("1933","1","2023-01-08","57"),
("1934","1","2023-01-08","58"),
("1935","1","2023-01-08","59"),
("1936","0","2023-01-08","60"),
("1937","1","2023-01-08","61"),
("1938","1","2023-01-08","62"),
("1939","0","2023-01-08","63"),
("1940","0","2023-01-08","64"),
("1941","2","2023-01-08","65"),
("1942","0","2023-01-08","66"),
("1943","2","2023-01-08","67"),
("1944","0","2023-01-08","68"),
("1945","0","2023-01-08","70"),
("1946","2","2023-01-08","71"),
("1947","1","2023-01-08","72"),
("1948","0","2023-01-08","73"),
("1949","0","2023-01-08","74"),
("1950","2","2023-01-08","75"),
("1951","1","2023-01-08","76"),
("1952","0","2023-01-08","77"),
("1953","6","2023-01-08","84"),
("1954","1","2023-01-08","85"),
("1955","2","2023-01-08","86"),
("1956","0","2023-01-08","87"),
("1957","1","2023-01-08","88"),
("1958","0","2023-01-08","90"),
("1959","1","2023-01-08","91"),
("1960","0","2023-01-08","92"),
("1961","0","2023-01-08","93"),
("1962","10","2023-01-08","94"),
("1963","1","2023-01-09","30"),
("1964","0","2023-01-09","31"),
("1965","2","2023-01-09","32"),
("1966","1","2023-01-09","33"),
("1967","0","2023-01-09","34"),
("1968","1","2023-01-09","35"),
("1969","0","2023-01-09","36"),
("1970","0","2023-01-09","37"),
("1971","1","2023-01-09","38"),
("1972","2","2023-01-09","39"),
("1973","0","2023-01-09","40"),
("1974","0","2023-01-09","41"),
("1975","0","2023-01-09","42"),
("1976","0","2023-01-09","43"),
("1977","0","2023-01-09","44"),
("1978","2","2023-01-09","45"),
("1979","0","2023-01-09","46"),
("1980","1","2023-01-09","47"),
("1981","0","2023-01-09","48"),
("1982","0","2023-01-09","49"),
("1983","1","2023-01-09","50"),
("1984","1","2023-01-09","51"),
("1985","0","2023-01-09","52"),
("1986","0","2023-01-09","53"),
("1987","0","2023-01-09","54"),
("1988","0","2023-01-09","55"),
("1989","0","2023-01-09","56"),
("1990","0","2023-01-09","57"),
("1991","0","2023-01-09","58"),
("1992","1","2023-01-09","59"),
("1993","0","2023-01-09","60"),
("1994","0","2023-01-09","61"),
("1995","0","2023-01-09","62"),
("1996","0","2023-01-09","63"),
("1997","0","2023-01-09","64"),
("1998","0","2023-01-09","65"),
("1999","0","2023-01-09","66"),
("2000","0","2023-01-09","67");
INSERT INTO inceleme_sayisi VALUES
("2001","0","2023-01-09","68"),
("2002","0","2023-01-09","70"),
("2003","0","2023-01-09","71"),
("2004","0","2023-01-09","72"),
("2005","0","2023-01-09","73"),
("2006","0","2023-01-09","74"),
("2007","0","2023-01-09","75"),
("2008","0","2023-01-09","76"),
("2009","0","2023-01-09","77"),
("2010","1","2023-01-09","84"),
("2011","0","2023-01-09","85"),
("2012","0","2023-01-09","86"),
("2013","0","2023-01-09","87"),
("2014","0","2023-01-09","88"),
("2015","0","2023-01-09","90"),
("2016","0","2023-01-09","91"),
("2017","0","2023-01-09","92"),
("2018","0","2023-01-09","93"),
("2019","2","2023-01-09","94"),
("2020","1","2023-01-10","30"),
("2021","3","2023-01-10","31"),
("2022","0","2023-01-10","32"),
("2023","0","2023-01-10","33"),
("2024","0","2023-01-10","34"),
("2025","0","2023-01-10","35"),
("2026","0","2023-01-10","36"),
("2027","0","2023-01-10","37"),
("2028","0","2023-01-10","38"),
("2029","2","2023-01-10","39"),
("2030","1","2023-01-10","40"),
("2031","0","2023-01-10","41"),
("2032","0","2023-01-10","42"),
("2033","0","2023-01-10","43"),
("2034","0","2023-01-10","44"),
("2035","1","2023-01-10","45"),
("2036","0","2023-01-10","46"),
("2037","1","2023-01-10","47"),
("2038","1","2023-01-10","48"),
("2039","5","2023-01-10","49"),
("2040","0","2023-01-10","50"),
("2041","0","2023-01-10","51"),
("2042","0","2023-01-10","52"),
("2043","0","2023-01-10","53"),
("2044","0","2023-01-10","54"),
("2045","0","2023-01-10","55"),
("2046","0","2023-01-10","56"),
("2047","0","2023-01-10","57"),
("2048","0","2023-01-10","58"),
("2049","1","2023-01-10","59"),
("2050","0","2023-01-10","60"),
("2051","0","2023-01-10","61"),
("2052","0","2023-01-10","62"),
("2053","0","2023-01-10","63"),
("2054","1","2023-01-10","64"),
("2055","0","2023-01-10","65"),
("2056","1","2023-01-10","66"),
("2057","1","2023-01-10","67"),
("2058","2","2023-01-10","68"),
("2059","0","2023-01-10","70"),
("2060","0","2023-01-10","71"),
("2061","0","2023-01-10","72"),
("2062","0","2023-01-10","73"),
("2063","0","2023-01-10","74"),
("2064","0","2023-01-10","75"),
("2065","0","2023-01-10","76"),
("2066","0","2023-01-10","77"),
("2067","3","2023-01-10","84"),
("2068","2","2023-01-10","85"),
("2069","2","2023-01-10","86"),
("2070","1","2023-01-10","87"),
("2071","0","2023-01-10","88"),
("2072","0","2023-01-10","90"),
("2073","0","2023-01-10","91"),
("2074","0","2023-01-10","92"),
("2075","0","2023-01-10","93"),
("2076","8","2023-01-10","94"),
("2077","8","2023-01-11","30"),
("2078","7","2023-01-11","31"),
("2079","2","2023-01-11","32"),
("2080","0","2023-01-11","33"),
("2081","0","2023-01-11","34"),
("2082","1","2023-01-11","35"),
("2083","4","2023-01-11","36"),
("2084","1","2023-01-11","37"),
("2085","1","2023-01-11","38"),
("2086","1","2023-01-11","39"),
("2087","1","2023-01-11","40"),
("2088","1","2023-01-11","41"),
("2089","1","2023-01-11","42"),
("2090","0","2023-01-11","43"),
("2091","0","2023-01-11","44"),
("2092","3","2023-01-11","45"),
("2093","0","2023-01-11","46"),
("2094","3","2023-01-11","47"),
("2095","2","2023-01-11","48"),
("2096","1","2023-01-11","49"),
("2097","5","2023-01-11","50"),
("2098","0","2023-01-11","51"),
("2099","1","2023-01-11","52"),
("2100","0","2023-01-11","53");
INSERT INTO inceleme_sayisi VALUES
("2101","0","2023-01-11","54"),
("2102","0","2023-01-11","55"),
("2103","2","2023-01-11","56"),
("2104","3","2023-01-11","57"),
("2105","1","2023-01-11","58"),
("2106","1","2023-01-11","59"),
("2107","0","2023-01-11","60"),
("2108","0","2023-01-11","61"),
("2109","1","2023-01-11","62"),
("2110","0","2023-01-11","63"),
("2111","2","2023-01-11","64"),
("2112","0","2023-01-11","65"),
("2113","0","2023-01-11","66"),
("2114","0","2023-01-11","67"),
("2115","1","2023-01-11","68"),
("2116","1","2023-01-11","70"),
("2117","0","2023-01-11","71"),
("2118","1","2023-01-11","72"),
("2119","1","2023-01-11","73"),
("2120","1","2023-01-11","74"),
("2121","0","2023-01-11","75"),
("2122","0","2023-01-11","76"),
("2123","0","2023-01-11","77"),
("2124","2","2023-01-11","84"),
("2125","1","2023-01-11","85"),
("2126","3","2023-01-11","86"),
("2127","1","2023-01-11","87"),
("2128","3","2023-01-11","88"),
("2129","2","2023-01-11","90"),
("2130","2","2023-01-11","91"),
("2131","0","2023-01-11","92"),
("2132","1","2023-01-11","93"),
("2133","8","2023-01-11","94"),
("2134","7","2023-01-12","30"),
("2135","2","2023-01-12","31"),
("2136","1","2023-01-12","32"),
("2137","0","2023-01-12","33"),
("2138","0","2023-01-12","34"),
("2139","0","2023-01-12","35"),
("2140","0","2023-01-12","36"),
("2141","1","2023-01-12","37"),
("2142","1","2023-01-12","38"),
("2143","4","2023-01-12","39"),
("2144","0","2023-01-12","40"),
("2145","0","2023-01-12","41"),
("2146","0","2023-01-12","42"),
("2147","0","2023-01-12","43"),
("2148","0","2023-01-12","44"),
("2149","1","2023-01-12","45"),
("2150","0","2023-01-12","46"),
("2151","0","2023-01-12","47"),
("2152","0","2023-01-12","48"),
("2153","2","2023-01-12","49"),
("2154","1","2023-01-12","50"),
("2155","1","2023-01-12","51"),
("2156","1","2023-01-12","52"),
("2157","0","2023-01-12","53"),
("2158","0","2023-01-12","54"),
("2159","0","2023-01-12","55"),
("2160","0","2023-01-12","56"),
("2161","0","2023-01-12","57"),
("2162","0","2023-01-12","58"),
("2163","0","2023-01-12","59"),
("2164","0","2023-01-12","60"),
("2165","0","2023-01-12","61"),
("2166","0","2023-01-12","62"),
("2167","0","2023-01-12","63"),
("2168","0","2023-01-12","64"),
("2169","0","2023-01-12","65"),
("2170","0","2023-01-12","66"),
("2171","0","2023-01-12","67"),
("2172","0","2023-01-12","68"),
("2173","0","2023-01-12","70"),
("2174","0","2023-01-12","71"),
("2175","0","2023-01-12","72"),
("2176","0","2023-01-12","73"),
("2177","0","2023-01-12","74"),
("2178","0","2023-01-12","75"),
("2179","0","2023-01-12","76"),
("2180","0","2023-01-12","77"),
("2181","4","2023-01-12","84"),
("2182","0","2023-01-12","85"),
("2183","1","2023-01-12","86"),
("2184","0","2023-01-12","87"),
("2185","0","2023-01-12","88"),
("2186","0","2023-01-12","90"),
("2187","1","2023-01-12","91"),
("2188","1","2023-01-12","92"),
("2189","2","2023-01-12","93"),
("2190","2","2023-01-12","94"),
("2191","1","2023-01-13","30"),
("2192","4","2023-01-13","31"),
("2193","3","2023-01-13","32"),
("2194","0","2023-01-13","33"),
("2195","1","2023-01-13","34"),
("2196","0","2023-01-13","35"),
("2197","0","2023-01-13","36"),
("2198","1","2023-01-13","37"),
("2199","1","2023-01-13","38"),
("2200","1","2023-01-13","39");
INSERT INTO inceleme_sayisi VALUES
("2201","0","2023-01-13","40"),
("2202","0","2023-01-13","41"),
("2203","0","2023-01-13","42"),
("2204","0","2023-01-13","43"),
("2205","0","2023-01-13","44"),
("2206","0","2023-01-13","45"),
("2207","0","2023-01-13","46"),
("2208","0","2023-01-13","47"),
("2209","0","2023-01-13","48"),
("2210","2","2023-01-13","49"),
("2211","0","2023-01-13","50"),
("2212","0","2023-01-13","51"),
("2213","1","2023-01-13","52"),
("2214","1","2023-01-13","53"),
("2215","0","2023-01-13","54"),
("2216","0","2023-01-13","55"),
("2217","1","2023-01-13","56"),
("2218","1","2023-01-13","57"),
("2219","0","2023-01-13","58"),
("2220","0","2023-01-13","59"),
("2221","0","2023-01-13","60"),
("2222","0","2023-01-13","61"),
("2223","0","2023-01-13","62"),
("2224","0","2023-01-13","63"),
("2225","0","2023-01-13","64"),
("2226","0","2023-01-13","65"),
("2227","0","2023-01-13","66"),
("2228","0","2023-01-13","67"),
("2229","0","2023-01-13","68"),
("2230","0","2023-01-13","70"),
("2231","0","2023-01-13","71"),
("2232","0","2023-01-13","72"),
("2233","1","2023-01-13","73"),
("2234","0","2023-01-13","74"),
("2235","0","2023-01-13","75"),
("2236","1","2023-01-13","76"),
("2237","0","2023-01-13","77"),
("2238","0","2023-01-13","84"),
("2239","0","2023-01-13","85"),
("2240","0","2023-01-13","86"),
("2241","0","2023-01-13","87"),
("2242","0","2023-01-13","88"),
("2243","0","2023-01-13","90"),
("2244","0","2023-01-13","91"),
("2245","1","2023-01-13","92"),
("2246","0","2023-01-13","93"),
("2247","4","2023-01-13","94"),
("2248","0","2023-01-14","30"),
("2249","2","2023-01-14","31"),
("2250","0","2023-01-14","32"),
("2251","1","2023-01-14","33"),
("2252","2","2023-01-14","34"),
("2253","0","2023-01-14","35"),
("2254","0","2023-01-14","36"),
("2255","1","2023-01-14","37"),
("2256","0","2023-01-14","38"),
("2257","0","2023-01-14","39"),
("2258","0","2023-01-14","40"),
("2259","0","2023-01-14","41"),
("2260","0","2023-01-14","42"),
("2261","0","2023-01-14","43"),
("2262","0","2023-01-14","44"),
("2263","0","2023-01-14","45"),
("2264","0","2023-01-14","46"),
("2265","0","2023-01-14","47"),
("2266","0","2023-01-14","48"),
("2267","0","2023-01-14","49"),
("2268","0","2023-01-14","50"),
("2269","0","2023-01-14","51"),
("2270","0","2023-01-14","52"),
("2271","0","2023-01-14","53"),
("2272","0","2023-01-14","54"),
("2273","0","2023-01-14","55"),
("2274","0","2023-01-14","56"),
("2275","0","2023-01-14","57"),
("2276","0","2023-01-14","58"),
("2277","0","2023-01-14","59"),
("2278","1","2023-01-14","60"),
("2279","0","2023-01-14","61"),
("2280","0","2023-01-14","62"),
("2281","0","2023-01-14","63"),
("2282","0","2023-01-14","64"),
("2283","0","2023-01-14","65"),
("2284","0","2023-01-14","66"),
("2285","0","2023-01-14","67"),
("2286","0","2023-01-14","68"),
("2287","1","2023-01-14","70"),
("2288","0","2023-01-14","71"),
("2289","1","2023-01-14","72"),
("2290","0","2023-01-14","73"),
("2291","1","2023-01-14","74"),
("2292","1","2023-01-14","75"),
("2293","0","2023-01-14","76"),
("2294","1","2023-01-14","77"),
("2295","1","2023-01-14","84"),
("2296","0","2023-01-14","85"),
("2297","0","2023-01-14","86"),
("2298","0","2023-01-14","87"),
("2299","0","2023-01-14","88"),
("2300","0","2023-01-14","90");
INSERT INTO inceleme_sayisi VALUES
("2301","0","2023-01-14","91"),
("2302","0","2023-01-14","92"),
("2303","1","2023-01-14","93"),
("2304","1","2023-01-14","94");




CREATE TABLE `kategori` (
  `kat_id` int(11) NOT NULL AUTO_INCREMENT,
  `kat_isim` varchar(100) NOT NULL,
  `kat_link` varchar(100) NOT NULL,
  `kat_ust` int(11) NOT NULL DEFAULT 0,
  `kat_see` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO kategori VALUES
("16","Social Media","social-media","0","0"),
("17","Instagram","instagram","16","0"),
("18","Instagram Followers","instagram-follower","17","0"),
("19","Instagram Likes","instagram-likes","17","0"),
("20","Instagram Views","instagram-views","17","0"),
("21","Twitter","twitter","16","0"),
("22","Twitter Accounts","twitter-accounts","21","0"),
("23","Twitter Likes","twitter-likes","21","0"),
("24","Twitter Followers","twitter-followers","21","0"),
("25","Twitter Retweet","twitter-retweet","21","0"),
("26","Tiktok ","tiktok","16","0"),
("27","Tiktok Followers","tiktok-followers","26","0"),
("29","Tiktok Likes","tiktok-likes","26","0"),
("30","Tiktok views","tiktok-views","26","0"),
("31","Tinder","tinder","16","0"),
("32","Youtube","youtube","16","0"),
("33","Telegram","telegram","16","0"),
("34","Whatsapp","whatsapp","16","0"),
("35","Youtube Accounts","youtube-accounts","32","0"),
("36","Youtube Subscriber","youtube-subscribe","32","0"),
("37","Youtube Likes","youtube-likes","32","0"),
("38","Youtube Views","youtube-views","32","0"),
("39","Youtube Comments","youtube-comments","32","0"),
("40","Streaming","streaming","0","0"),
("41","Netflix","netflix","40","0"),
("42","Disney Plus","disney-plus","40","0"),
("43","Spotify","spotify","40","0"),
("44","Netflix Gift Card","netflix-gift-card","41","0"),
("45","Netflix Accounts","netflix-accounts","41","0"),
("46","Spotify Accounts","spotify-accounts","43","0"),
("47","Spotify Followers","spotify-followers","43","0"),
("49","Spotify Listeners","spotify-listen","43","0"),
("50","Gaming","gaming","0","0"),
("51","Steam","steam","50","0"),
("52","Discord","discord","0","0"),
("53","Discord Accounts","discord-accounts","52","0"),
("55","Discord Boost","discord-boost","52","0"),
("56","Discord Nitro","discord-nitro","52","0"),
("57","Discord Member","discord-member","52","0"),
("58","Discord  Server","discord-server","52","0"),
("59","Steam Random keys","steam-random-keys","51","0"),
("60","Steam Accounts","steam-accounts","51","0"),
("61","Steam Game Keys","steam-game-keys","51","0"),
("62","Xbox Game Pass","xbox-game-pass","50","0"),
("63","League Of Legends","league-of-legends","50","0"),
("64","League of Legends Rp","league-of-legends-rp","63","0"),
("65","League Of Legends Accounts","league-of-legends-accounts","63","0"),
("66","Valorant","valorant","50","0"),
("67","Valorant Vp","valorant-vp","66","0"),
("68","Valorant Accounts","valorant-accounts","66","0"),
("69","Minecraft","minecraft","50","0"),
("70","Roblox","roblox","50","0"),
("71","EA Play","ea-play","50","0"),
("72","Crunchyroll","crunchyroll","40","0"),
("73","CS GO","cs-go","50","0"),
("74","Pubg","pubg","50","0"),
("75","Fortnite","fortnite","50","0"),
("76","Lost Ark","lost-ark","50","0"),
("77","Software","software","0","0"),
("78","Mails","mails","0","0"),
("79","Outlook","outlook","78","0"),
("80","Gmail","gmail","78","0"),
("81","Edu Mail","edu-mail","78","0"),
("82","Windows","windows","77","0"),
("83","Windows 10","windows-10","82","0"),
("84","Windows 11","windows-11","82","0"),
("85","Vpns","vpn","77","0"),
("86","Antivirus","antivirus","77","0"),
("87","Kaspersky","kaspersky","86","0"),
("88","Eset","eset","86","0"),
("89","Adobe","adobe","77","0"),
("90","Design","design","77","0"),
("91","Canva","canva","90","0"),
("92","IPVanish","ipvanish","85","0"),
("93","Windscribe","windscribe","85","0"),
("94","Surfshark","surfshark","85","0"),
("95","ZenMate","zenmate","85","0"),
("96","Microsoft Office","office-365","77","0"),
("97","Playstation","playstation","50","0");




CREATE TABLE `kul_kupon` (
  `kul_kupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul_id` int(11) DEFAULT NULL,
  `kupon_id` int(11) DEFAULT NULL,
  `kullanma_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`kul_kupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;






CREATE TABLE `kul_takip` (
  `takip_id` int(11) NOT NULL AUTO_INCREMENT,
  `magaza` int(11) NOT NULL,
  `takipci` int(11) NOT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `mail` int(11) NOT NULL DEFAULT 1,
  `uygulama` int(11) NOT NULL DEFAULT 1,
  `web` int(11) NOT NULL DEFAULT 1,
  `bildirim` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`takip_id`),
  KEY `magaza` (`magaza`),
  KEY `takipci` (`takipci`),
  CONSTRAINT `kul_takip_ibfk_1` FOREIGN KEY (`magaza`) REFERENCES `kullanicilar` (`kul_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kul_takip_ibfk_2` FOREIGN KEY (`takipci`) REFERENCES `kullanicilar` (`kul_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO kul_takip VALUES
("1","17","26","2022-12-05 16:55:06","1","1","1","1");




CREATE TABLE `kullanicilar` (
  `kul_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul_bakiye` float NOT NULL DEFAULT 0,
  `kul_isim` varchar(400) DEFAULT NULL,
  `kul_soyisim` varchar(400) DEFAULT NULL,
  `magaza_isim` varchar(100) DEFAULT NULL,
  `kul_link` varchar(100) DEFAULT NULL,
  `kul_mail` varchar(400) DEFAULT NULL,
  `kul_sifre` varchar(100) DEFAULT NULL,
  `kul_telefon` varchar(50) DEFAULT NULL,
  `kul_dogum_tarihi` date DEFAULT NULL,
  `kul_durum` int(11) NOT NULL DEFAULT 1,
  `kul_yetki` int(11) NOT NULL DEFAULT 0,
  `kul_ulke` varchar(100) DEFAULT NULL,
  `kul_sehir` varchar(100) DEFAULT NULL,
  `kul_posta_kodu` varchar(20) DEFAULT NULL,
  `kul_adres` varchar(500) DEFAULT NULL,
  `kul_kayit_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `kul_logo` varchar(100) NOT NULL DEFAULT 'default.png',
  `alt_isim` varchar(100) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `ig` varchar(500) DEFAULT NULL,
  `tw` varchar(500) DEFAULT NULL,
  `fb` varchar(500) DEFAULT NULL,
  `ticket_bildirim_onay` int(11) NOT NULL DEFAULT 1,
  `ticket_mail_onay` int(11) NOT NULL DEFAULT 1,
  `uygulama_bildirim` varchar(50) DEFAULT NULL,
  `web_bildirim` varchar(50) DEFAULT NULL,
  `satici` int(11) NOT NULL DEFAULT 0,
  `satici_tarih` datetime DEFAULT NULL,
  `auth_code` varchar(100) DEFAULT NULL,
  `auth_onay` int(11) NOT NULL DEFAULT 0,
  `tg_id` varchar(20) DEFAULT NULL,
  `kul_fatura` text DEFAULT NULL,
  `son_giris` datetime DEFAULT NULL,
  `manset_sira` int(11) NOT NULL DEFAULT 0,
  `manset_durum` int(1) NOT NULL DEFAULT 0,
  `magaza_bilgi` text DEFAULT NULL,
  `api_key` varchar(50) DEFAULT NULL,
  `api_durum` int(11) NOT NULL DEFAULT 1,
  `wp` varchar(20) DEFAULT NULL,
  `mail_onay_durum` int(11) NOT NULL DEFAULT 0,
  `mail_onay_zaman` datetime DEFAULT NULL,
  `mail_onay_kod` varchar(100) DEFAULT NULL,
  `pre_bas` datetime DEFAULT NULL,
  `pre_bit` datetime DEFAULT NULL,
  `pre_durum` int(11) NOT NULL DEFAULT 0,
  `tel_onay` int(11) NOT NULL DEFAULT 0,
  `tel_onay_tarih` datetime DEFAULT NULL,
  `kul_kaynak` int(11) NOT NULL DEFAULT 0,
  `kul_fb_id` varchar(100) DEFAULT NULL,
  `ip_adresi` varchar(100) DEFAULT NULL,
  `kul_gg_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO kullanicilar VALUES
("1","0","Selligo","Admin","","aksoy","staff.selligo@gmail.com","174728ed330dac81ced10a234291abdc","5555555555","","1","2","USA","New York","10005","Space","2019-04-09 21:18:59","default.png","Aksoyhlc","","","","","1","1","82e908f9-491c-4da6-b31d-a34071c7c6d2","","0","","","0","","","2023-01-12 20:49:49","0","0","","","1","","1","2022-08-10 17:35:46","4ca2a063cdadeae2024a2609e6463759","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","5.47.181.76","102653819093694057365"),
("17","0","Mağaza","Test","Mağaza - 1","magaza-1","magaza@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27500","Gaziantep","2022-08-17 23:02:20","215651479941screenshot_20png.png","","","","","","1","1","","","0","2022-08-17 23:05:21","","0","","","2022-12-07 23:52:13","1","1","#####  **Lorem Ipsum Nedir?**\n**Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. **\n*Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı*\n1500\'lerden beri endüstri standardı sahte ~~metinler olarak kullanılmıştır~~. \nBeşyüz yıl boyunca varlığını sürdürmekle kalmamış. \n> 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda.\n\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text     | Text     |\n\n\n1. Liste öğesi\n2. Liste öğesi\n3. Liste öğresi\n","9QPI7COQKAO3K8JQN1W65S6DNZ4BODKXG4BS9LQS","1","05555555555","1","2022-08-17 23:03:10","ec7cef4b6d3d172e32dcc3aafa126f0c","2022-08-17 23:08:24","2023-08-17 23:08:24","1","1","","0","","95.10.66.219","112661495406491164710"),
("18","0","Normal","Kullanıcı","","aksoyhlc","kullanici@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","1","0","T&uuml;rkiye","Ankara","6666","Ankara","2022-08-18 12:16:48","default.png","","","","","","1","1","","","0","","E7SBFJJ5FNOWMPYC2JJ5DLHYDBJJOCSU","1","","","2022-12-14 14:27:18","0","0","","","1","","1","2022-08-18 12:18:17","9d89c776918c2caaf15205b89bc49720","","","0","1","2022-08-23 10:02:01","0","","84.239.49.40",""),
("19","0","Mağaza","Deneme","Mağaza - 2","magaza-2","magaza2@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27000","Adres","2022-08-20 10:36:55","default.png","","","","","","1","1","","","0","2022-08-20 10:38:17","","0","","","2022-12-08 00:04:12","0","0","","","1","","1","2022-08-20 11:37:11","9e89c776918c2caaf15205b89bc49720","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","2022-08-24 00:11:27","0","","95.10.66.219",""),
("20","0","&Ouml;mer","Demirel","","DarthVader","omerdemrel419@gmail.com","b88ad862ecd8675d61da7aaf218e7b39","5050514988","","1","0","","","","","2022-11-15 11:46:51","default.png","","","","","","1","1","","","0","","","0","","","2022-11-15 19:55:07","0","0","","I4A5598JNCUWEZ3MXYVYJ2BNZO26GLSTD7YCTB1M","1","","0","","","","","0","0","","0","","37.155.145.12",""),
("21","0","akın","yar","","kuluxx","qdr22034@cdfaq.com","80d97c074bc0430a5d250ffdd93dffc2","5153123123","","1","0","","","","","2022-11-25 09:36:00","default.png","","","","","","1","1","","","0","","","0","","","2022-11-25 17:36:00","0","0","","6NMIKPNWQOR1SD6JIXW3QI3RV9DHHSNQAL7MAL9L","1","","0","","f4c3aa3083968612a2907e2ec058e951","","","0","0","","0","","78.168.8.199",""),
("22","0","hakan","papucuyarım","","crazyfrog","emre.supreme11@gmail.com","2e5c08c6a0054773ab2e1c8e42c01ef2","5366543939","","0","0","türkiye","ankara","ankara","ankara","2022-11-25 09:41:33","default.png","","","","","","1","1","","","0","","","1","","","2022-11-28 03:04:13","0","0","","HVZ92Z11YU19YIHUIG52NUQARRBB7MC1TFHG5TWY","1","","1","","","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","","0","","78.168.8.199",""),
("23","0","Admin","Selligo","Selligo","selligo-3764","reklamlar8927@gmail.com","cd2879586d74f739baa8d060fd2efaff","5555515554","","1","0","USA","New York","","","2022-11-27 17:37:24","23-6645478-adobe-creative-cloud.webp","","","","","","1","0","","","1","2022-11-28 02:48:03","UBLKUG2AFN2CSSD5HEG7T2RKR7CEVWHG","0","","","2023-01-09 23:32:33","0","1","","JDGEACK81U6EIZRMTG31XKQ9ZII7PV9ITAJEXWDH","1","","1","","a2530dc448076a3bb1978d8349329a21","2022-12-26 18:37:00","2023-12-26 18:37:00","1","1","","0","","85.110.46.140",""),
("24","0","hakan","kutlu","","kalulu111","owe00574@xcoxc.com","2e5c08c6a0054773ab2e1c8e42c01ef2","2334444444","","1","0","","","","","2022-11-27 19:07:12","default.png","","","","","","1","1","","","0","","","0","","","2022-11-28 03:07:12","0","0","","69XPKL7VO9V8KPATL7HHYAYN9VYSBXWZVPL5I5PS","1","","1","","b8e7a8fd49a9560daf36b69dd1b967d4","","","0","1","","0","","78.168.8.199",""),
("25","0","ASDASD","ASDASD","","AAAAAA","caneykf@karenkey.com","cd2879586d74f739baa8d060fd2efaff","5555555556","","1","0","","","","","2022-11-30 08:06:18","default.png","","","","","","1","1","","","0","","","0","","","2022-11-30 17:18:30","0","0","","4FHV6SU8YHNNI91ZXYN1FW8NISZYPDARW2LYRFDI","1","","1","","3550ac8d788894425476a1b57a23d6d2","","","0","1","","0","","62.248.48.239",""),
("26","0","Adam","koll","","adamcall","nwardibsefb@karenkey.com","cd2879586d74f739baa8d060fd2efaff","","","1","0","usa","lahb","","","2022-12-01 08:19:02","default.png","","","","","","1","1","","","0","","4UGVXMR5OKLVJUKT3KXYWFMLLOJJLELL","1","","yfyghjgukhk","2022-12-07 22:13:25","0","0","","CU3U3VIGMR1OV3A1Z6ML9W9L591TIFC1WBZPW3R8","1","","1","","1f2c1c0c0a90c68d6aec5338cb6a0931","","","0","0","","0","","62.248.48.239",""),
("27","0","asdas","dasdasd","asdsad","adamcalla","nxqzqvk@karenkey.com","cd2879586d74f739baa8d060fd2efaff","9999999999","","1","0","","","","","2022-12-07 18:10:40","default.png","","","","","","1","1","","","0","","","0","","","2022-12-19 18:38:55","0","0","","K4FXRX9CNUYWGI6KB2BHU2RNHTT4BZZMGNLW63UZ","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("28","0","Selligo ","Support","Top Up","top-up","support@selligo.shop","cd2879586d74f739baa8d060fd2efaff","9999909999","","1","0","New York","New York","","","2022-12-12 07:12:57","28-1413302-question-mark.webp","","","","","","1","1","","","1","2022-12-14 14:24:16","","0","","","2022-12-26 18:31:09","0","0","How do you top up (add balance)?\n\nYou can simply top up by sending crypto to this addresses.\n\nThen open ticket from Top Up store.(this store)\n\nType your TransactionID with your ticket and the amount you sended.\n\nOnce we accepted, you will get balance and buy whatever you want.\n\n\nBesides, unfortunately we are still editing our automatic top up system.Once we finished we will announce in our discord and also in this website.\n\nAnd also PayPal will be adding soon.\n\n\n\n                                                                          Official Crypto Addresses\n\nBTC: bc1q2z0yxnvfrf4zu929e7v6vpz8v27pg7uf8c3ltv\n\nETH: 0x34ADfc7219C0756BB5Bb5e4323c917808e972F5e\n\nLTC: ltc1qmskrv7gh0hlllx9d023paluq77l0pj5tawgure\n\nPax: SelligoShop\n\nBNB(Bep-20): bnb1xx55n68xpne4rmqusl8u09sm3p7cr5p8np4vt2\n\nUSDT(Trc20): TXCTv6kP1RGiakEdbQS2UcLLwLtWPS5u7R ","VOTE47I681I22GC7T2VHVQFJPWFFXZON4M33LSUD","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("29","0","Test","test","","test","1@1.com","cd2879586d74f739baa8d060fd2efaff","5555535555","","1","0","","","","","2022-12-12 07:24:09","default.png","","","","","","1","1","","","0","","","0","","","2022-12-12 15:24:09","0","0","","74KBRMEWJN9WRQDWA999HMOCCEHVNOMX9PJKHNI9","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("30","0","test","test","Type your store name here","Test1","test@test.com","cd2879586d74f739baa8d060fd2efaff","2222222222","","1","0","","","","","2022-12-12 07:26:20","default.png","","","","","","1","1","","","0","","","0","","","2022-12-12 15:27:40","0","0","","KY8YHMGSL85UFF7SWLE4KZ5IY43XVR9R89KFRI9G","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("31","0","james","baley","ad","james12","tqk95493@cdfaq.com","c30c913c6e9a10850cb187d91621effd","1222132131","","1","0","","","","","2022-12-14 07:03:45","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 15:39:14","0","0","","6BU5X4648DW1MBVP9ZSAI7XDQFKOVAVVN2MJX9D7","1","","1","","9dd52c1ee47cc92f43710bb1c6b6dd9b","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","84.239.49.213",""),
("32","0","zippy","co","","zippy","uqsarsnvcvsjyox@nightorb.com","cd2879586d74f739baa8d060fd2efaff","8888888885","","1","0","","","","","2022-12-15 07:53:29","default.png","","","","","","1","1","","","0","","","0","","","2022-12-17 16:13:15","0","0","","2A84D5YDG5IAR5EWNPRZJLWXV9FRHV6VGL5EDVLM","1","","0","","","","","0","0","","0","","62.248.48.239",""),
("33","0","Xkoko","xx","","xKOko","suaekyxkmu@nightorb.com","cd2879586d74f739baa8d060fd2efaff","5555459999","","1","0","","","","","2022-12-18 07:16:18","default.png","","","","","","1","1","","","0","","","0","","","2022-12-18 15:16:18","0","0","","8H4BBVA9JKP9E2E7L24R74BWBZSP4YVNYKROAKS1","1","","1","2022-12-18 15:17:39","51cec9af8f5aa0651e53ca2001a2b0ec","","","0","0","","0","","62.248.48.239",""),
("34","0","leython","no","","asdasd","wewsyouqhnc@nightorb.com","69005bb62e9622ee1de61958aacf0f63","1111112323","","1","0","morocco","marakesh","","","2022-12-19 09:13:24","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 16:59:37","0","0","","NGWNTHUPR4CZ3I5XPBZQSQHNSSNNXPZK1UYMU12K","1","","1","2022-12-19 17:13:42","0c380b1ac7e5862c900edd22abc0140e","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("35","1","Daniel","Suarez","","Danielyteo","danielovd655@icloud.com","74a6cc5ceb336de9a8a50b5072ff23dd","677988630","","1","0","","","","","2022-12-19 14:27:07","default.png","","","","","","1","1","","","0","","","0","","","2022-12-19 22:27:07","0","0","","MNI121FIXRCL2H7HA3Z2G96O6J9RHT96I96O9A9T","1","","1","2022-12-19 22:28:23","c7afe9da80df6ab5fde72ba74175a7b7","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","79.116.73.221",""),
("36","1","Anthony","Blue788","","Blue","anthonymorales6778@gmal.com","bdf84cd2b4624c84322ae246243eb582","8189191577","","1","0","","","","","2022-12-19 16:19:23","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 00:19:23","0","0","","H89SQJLCJDAIN596YE8J9PPHOJ9G3TSWH9VNFR8V","1","","0","","d1f12855d2e10a9a53e89f46d3c7e3c5","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","172.58.30.209",""),
("37","1","Jeremy","Blue7990","","Jeremy","anthonymorales6778@Gmail.com","bdf84cd2b4624c84322ae246243eb582","7472816904","","1","0","","","","","2022-12-19 17:18:03","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 01:18:03","0","0","","CLXQ9WBVYF4O92FF9PJVEF6JVQUQ3UVB463N4QS3","1","","1","2022-12-20 02:28:46","67d1915538690c8e1a6b44e198cfc202","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","172.58.30.209",""),
("38","1","bob","joe","bands4I","YangerOne","sciencenerdjj@gmail.com","a8c39b8d8e34f9ce9c306cbf3f47fc85","4438001071","","1","0","","","","","2022-12-20 08:48:46","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 16:48:46","0","0","","YJ7QA7L79U815Z9JDNIELX959A1F6LDL23PVJSHH","1","","1","2022-12-20 16:49:36","63e799a089d097484e75cbcd6b3936c0","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","104.28.240.37",""),
("39","0","noone","aaaa","","Naughty","lcjfruhoa@nightorb.com","69005bb62e9622ee1de61958aacf0f63","1231231232","","1","0","","","","","2022-12-20 09:01:41","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 17:04:35","0","0","","4K6TR42LSKQT9896Z1RFVX4UXNX4FVJSEAXTLEQB","1","","1","2022-12-20 17:02:11","0567661ef6ec03c98992cf533cca2825","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("40","0","sasha","durnyk","","sasha","qgddniivlcwq@nightorb.com","69005bb62e9622ee1de61958aacf0f63","1235551231","","1","0","","","","","2022-12-20 09:03:01","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 22:34:04","0","0","","1TQHAQZ9U9EMNCIQJLNPGOCM9EJU5C89KMPL1P9E","1","","1","2022-12-20 17:03:20","9ee446a43c6127c282e563b1b4e012dc","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("41","0","BETTEL","BETTEL","","BETTEL","givose5305@nazyno.com","d34aa33495e49185ba37dba6fdce38e4","00000000","","1","0","","","","","2022-12-20 15:27:19","default.png","","","","","","1","1","","","0","","","0","","","2022-12-20 23:27:19","0","0","","BKLSJY7HXQUE9ZXU92O5KPN9634H6DL8T3CVWHAR","1","","1","2022-12-20 23:28:59","815ae25670c74545fad98c92ab7994bd","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","84.75.98.10",""),
("42","1","BIGGEST 5LIME 4KT","Big5","","Big 5lime4kt","JMInfiniteBox@gmail.com","021a29273e9c5786c3dd0825ae6ad0b6","000000000","","1","0","","","","","2022-12-20 16:06:03","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 00:06:03","0","0","","TNC6JB3297TAZ95PQFBRY3N46SKJSN89968MHIAD","1","","0","","","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","173.47.135.247",""),
("43","1","flakooo","flakooo","","flakooo","flakooo@gmail.com","567e857e37c9f77680f9b40f260124f8","2313213213","","1","0","","","","","2022-12-20 20:34:21","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 04:34:21","0","0","","PTH9GGWJHPAYY54OLOMO8KUU9OCZQATZWND1YIED","1","","0","","","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","146.70.134.179",""),
("44","1","Snsu","Qjixjsm","","2seojin1208","2seojin1208@gmail.com","72fee719cb654fb87a05f2b9c883546a","1036683442","","1","0","","","","","2022-12-20 22:59:30","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 06:59:30","0","0","","BFA85C2O6ZC38IAS8AYEXS8F2J26CHTXHS23317R","1","","1","2022-12-21 07:00:44","98e2a8f1500cb882f16e3a34568a87a2","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","58.137.176.30",""),
("45","1","sungyong","Kim","","Merit","sungyong100101@naver.com","ea5b39d458ec0d67f2b2fa02f92eb688","3322212233","","1","0","","","","","2022-12-21 01:08:27","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 10:00:37","0","0","","LNLEJORH1NT5XEOLGM19957JY5O9JXXW18EH444T","1","","1","2022-12-21 09:09:44","ca0a57c4ee339b91702cedcbd97d5286","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","125.185.76.24",""),
("46","1","XMR","Xenos","","XMR","XMR-Cracked@tutanota.com","1b23682b4e857b9b20aa2106698bd091","6669996666","","1","0","","","","","2022-12-21 08:00:35","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 16:00:35","0","0","","VRKYG9P9O79NK7N9VRQOWFMNNWVP7OGP2YZTC67X","1","","1","2022-12-21 16:01:13","3055b829cd9335c92a2ce86b3cf5b28c","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","84.191.188.205",""),
("47","0","Ian","Green","","IanG","IanTheG@protonmail.com","f75dfb5d2197a451f8f5026a3923d390","7015168317","","1","0","","","","","2022-12-21 08:24:37","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 16:24:37","0","0","","6WGG94Z9E4IOCLGG9D5YGQXJ19DLXODNM1CCMN45","1","","1","2022-12-21 16:26:44","5be45104c90147de6444d221a4dd8706","","","0","0","","0","","5.180.209.217",""),
("48","1","ionia","lol","","ionialol","sxsikygfphrypy@nightorb.com","cd2879586d74f739baa8d060fd2efaff","5555597777","","1","0","","","","","2022-12-21 08:39:19","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 17:13:39","0","0","","9BWM849Y8298Q788THIQKYMCMCT62PBTASZSN9D9","1","","1","2022-12-21 16:39:46","56fc683167454c075f7dcbfef5dbb5b1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("49","1","jeffrey","water","","cat","jeffreywatt48@gmail.com","c30c913c6e9a10850cb187d91621effd","8334481403","","1","0","","","","","2022-12-21 09:13:47","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 17:13:47","0","0","","EYDNU9EXFXQ5R9ZJA2E9GRSHVSF9LDD5UQXMP9JI","1","","0","","022ef5f3a6fa57616017b2c0fa1edc4c","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","156.146.59.43",""),
("50","1","Nicolas","Munoz","","XoroMota","nmunozschmidt@gmail.com","5984492a813803f8d8afde29ff70a569","5693563792","","1","0","","","","","2022-12-21 13:24:07","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 21:24:07","0","0","","YY3OZ93MVFN694CPIBEPX7S9BCIDDO3945PYH9NJ","1","","1","2022-12-21 21:26:44","1a1fce5a5132db1190cc8799ef6c777b","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","152.230.6.133",""),
("51","37","santa","baby","","santababy","nztuycfw@nightorb.com","cd2879586d74f739baa8d060fd2efaff","1222222112","","1","0","","","","","2022-12-21 15:40:35","default.png","","","","","","1","1","","","0","","","0","","","2022-12-21 23:40:35","0","0","","S36TXBKHXGL6AONWNRN8MECZQ7HA2MQBUWVJI9B1","1","","1","2022-12-21 23:40:54","8ef8202f5a129c7a3402c92bf578bcb8","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("52","0","Jeff","Henderson","","Hendo","emnanbgm@gmail.com","1a74091dddba064d7b7957b1588c61af","2738971289","","1","0","","","","","2022-12-21 15:43:08","default.png","","","","","","1","1","","","0","","","0","","","2022-12-22 21:09:12","0","0","","29P6XPH97KSFDBE33DTNKAXFLVGUBGY2FA67MA2R","1","","1","2022-12-22 05:51:27","914e707fbf0d4bd894d693c9761a5e96","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","77.241.136.67",""),
("53","11","cracked kO","Ko","","Ko","hljjrxfmbydksal@nightorb.com","cd2879586d74f739baa8d060fd2efaff","1111112312","","1","0","","","","","2022-12-21 16:32:52","default.png","","","","","","1","1","","","0","","","0","","","2022-12-22 00:32:52","0","0","","LOQDM83CG9JJRSZN5F2Q2MFXQU9VDJHOU49Y6UYE","1","","1","2022-12-22 00:33:02","d483dbfb95fb1d04e90b2b8db6160f86","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("54","19","namaste","sergio","","ctonamaste","pecmzidlmrvlfx@triots.com","cd2879586d74f739baa8d060fd2efaff","5555545155","","1","0","","","","","2022-12-23 08:07:05","default.png","","","","","","1","1","","","0","","","0","","","2022-12-23 16:07:05","0","0","","8CTGUX2W9182JETVIBC66PXP3BE9Y1AONDMANN1J","1","","1","2022-12-23 16:07:54","7016bb8cea4fa9bc89d9cee0eb17ba05","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("55","0","sango","kek","","sangokek","zeyfolvareibcex@triots.com","cd2879586d74f739baa8d060fd2efaff","4545645455","","1","0","","","","","2022-12-23 08:34:38","default.png","","","","","","1","1","","","0","","","0","","","2022-12-23 16:34:38","0","0","","TTE294M9KFK5UAZYMU3QQMAUVAXV4SVBBS7VE76X","1","","1","2022-12-23 16:34:52","c17fce2616e8ee1f186f5b2a6425f288","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("56","43","shitposter","0","","shitposter","jsbmaucyrvpx@triots.com","cd2879586d74f739baa8d060fd2efaff","5165156156","","1","0","","","","","2022-12-23 08:42:23","default.png","","","","","","1","1","","","0","","","0","","","2022-12-23 20:38:11","0","0","","GKN14FV86XQT9TZVUWB8F9TEYEJQHEQ99QZVM8EV","1","","1","2022-12-23 16:42:50","8a32633ef35a48e27be4a74df7255ef9","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("57","0","Niks","Funtyil","","cliquant","wenxy221@gmail.com","0a3a840a13e6258f8e29a58239b2d18b","1231231312","","1","0","","","","","2022-12-23 10:29:08","default.png","","","","","","1","1","","","0","","","0","","","2022-12-23 18:29:09","0","0","","F3FP8L97JS3LJ2OZ66ZDHUVSPBZBOJDLC5GFIW7F","1","","1","2022-12-23 18:30:18","3a625053db70acf13d446119c1acec96","","","0","0","","0","","104.28.222.33",""),
("58","4","joshua","1","","joshua","wrlkary@triots.com","cd2879586d74f739baa8d060fd2efaff","4454545454","","1","0","","","","","2022-12-23 14:32:00","default.png","","","","","","1","1","","","0","","","0","","","2022-12-27 23:10:39","0","0","","SZM2XX51PPACTGRN1MAJNX9FCBX66QURCVB5QZCZ","1","","1","2022-12-23 22:32:47","a931860c272d6379be569ae711ac78d3","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("59","2","Hannah","Wilkins","","Raisen","remorsehfw@gmail.com","0a9881cca360cb3fb2300a0bb04eecb7","7818665306","","1","0","","","","","2022-12-23 18:07:20","default.png","","","","","","1","1","","","0","","","0","","","2022-12-24 02:07:20","0","0","","YY9VSNU96AR95LEQ3V869BR67XU3M9DI449K3UDY","1","","1","2022-12-24 09:30:01","6c5af9fe89c16a68a99a720426b4c8f3","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","193.243.190.232",""),
("60","0","Krzysztof","Makiewicz","","BladyChris","krzysiumark@gmail.com","cc4d3f5524cf9cd27e0821e47d4a48e6","4509157667","","1","0","","","","","2022-12-25 15:19:33","default.png","","","","","","1","1","","","0","","","0","","","2022-12-25 23:19:33","0","0","","9T66SKF18Z5SNKH7Z9KHNMCXV94WIQMEL7S9DEOA","1","","1","2022-12-25 23:23:30","d7f6e066fd170b941ae870646f39a60e","","","0","0","","0","","5.173.49.12",""),
("61","0","donny","ste","","don","ftkidd99@gmail.com","6bc1d200e8afca386886f093ae22cbe5","2404241335","","1","0","","","","","2022-12-25 23:58:34","default.png","","","","","","1","1","","","0","","","0","","","2022-12-26 07:58:34","0","0","","VVKP97156JSAV419KMQXJ1ZHRK99JNIJXVEV95ZY","1","","1","2022-12-26 07:59:57","8f35119f00dbe30d2644030fd842c47b","","","0","0","","0","","73.173.216.232",""),
("62","0","George","Nut","","lilnutdaddy","george.gonzalezps4@gmail.com","f9ed7aa4b936cc5809b6e6ad4bd2c656","8622392730","","1","0","","","","","2022-12-26 04:45:14","default.png","","","","","","1","1","","","0","","","0","","","2022-12-26 12:45:14","0","0","","L12FQ3HW8WBBP5BD5FFYVWI9BRFC1Z88Z4XO6SL9","1","","1","2022-12-26 12:52:15","36bf7f7dcccc96b171da4aa73974d375","","","0","0","","0","","216.49.53.103",""),
("63","0","Best","Keys","Best Keys","best-keys","nxaapzqaju@triots.com","cd2879586d74f739baa8d060fd2efaff","1111165165","","1","0","Germany","Berlin","","","2022-12-27 06:40:57","63-5608618-best-keys.webp","","","","","","1","1","","","1","2022-12-27 21:33:04","","0","","","2022-12-27 22:31:30","0","0","","QVCF45NYRHH99LMIBNMZLEQ7J4FL7V7QYBGSSIYT","1","","1","2022-12-27 15:22:30","863945595a24a7fd024c3c6eb4ab7ce1","2022-12-27 23:09:00","2023-02-15 23:09:00","1","0","","0","","78.168.153.186",""),
("64","0","jhon","McGin","Flared","flared-8038","flared@post.com","c5abd9b72840f3a17240b2365442502e","1425424244","","1","0","","","","","2022-12-27 07:26:52","default.png","","","","","","1","1","","","1","2022-12-27 15:29:28","","0","","","2022-12-27 16:07:56","0","0","","7MXJNDHPXY8FHBOPYCJ91H79UZC3VVNXEMCJBAC3","1","","1","2022-12-27 15:27:40","1463d232c33275371c1de5e584c51bfb","2022-12-27 23:03:00","2023-02-27 23:03:00","1","0","","0","","141.11.124.43",""),
("65","0","asdas","dasdasd","","asdasdaaa","sgkkyixzgkqfbxr@triots.com","cd2879586d74f739baa8d060fd2efaff","1231231231","","1","0","","","","","2022-12-27 14:01:30","default.png","","","","","","1","1","","","0","","","0","","","2022-12-27 22:01:30","0","0","","Y9N3F7ZJ3FMP3D8CEBVWR1EQZWEOV1ICKFW62TZY","1","","1","2022-12-27 22:01:48","7651fff6865af65a48aee593b032c284","","","0","0","","0","","62.248.48.239",""),
("66","1","Tim","Tom","","TingTonTon","rawile6541@haikido.com","47c11138558feed211e2b9c2aee49fa8","3134048290","","1","0","","","","","2022-12-27 15:05:00","default.png","","","","","","1","1","","","0","","","0","","","2022-12-27 23:05:00","0","0","","4BOYY97WCZ9VFX9MY9EGMPM97VR8US7MTMZ61X1Y","1","","1","2022-12-27 23:05:21","fa2753b2f65e4aaaea5bde660e24d85b","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","73.136.50.13",""),
("67","4","radio","head","","radiohead","wnmnizoyznf@triots.com","cd2879586d74f739baa8d060fd2efaff","4446545645","","1","0","","","","","2022-12-28 11:48:01","default.png","","","","","","1","1","","","0","","","0","","","2022-12-28 19:48:01","0","0","","ZFV1NRA35RZ7QUYTUCVXT67E6TKRIEG1JAZ64RPI","1","","1","2022-12-28 19:48:16","49fce710671c33d86ba9b3caa416b1e9","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("68","0","Rock",".","","M","wesmodz2006@gmail.com","e5ff2be9983798aaac03fc49338ee9d4","9375432456","","1","0","","","","","2022-12-28 15:51:08","default.png","","","","","","1","1","","","0","","","0","","","2022-12-28 23:51:08","0","0","","BTKBSGR2IWZXJVAZV1AHCGG995MZ14ABDQWFPJY9","1","","1","2022-12-29 08:33:16","62d9241bd2b53151ad91d4b91ea38dfe","","","0","0","","0","","174.97.106.45",""),
("69","1","Joe","Mama","","lucky12345","12345lucky12345@protonmail.com","913db96bfe9a5f244e68b6bba345ad72","8818188273","","1","0","","","","","2022-12-28 16:00:01","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 00:00:01","0","0","","UXBBR8CYS3TB1N1TELD7LV4YG2FZW961L6F6UDTL","1","","1","2022-12-29 00:00:35","e930928d5ab720cc2c386e626a3081ad","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","172.93.132.252",""),
("70","1","Spooky","SPooky","","Spooky","spookygz084@gmail.com","135a2636c560f0e9cdab8a7d987a7f9e","9294174871","","1","0","","","","","2022-12-28 19:05:44","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 03:13:26","0","0","","J6VBL949E19YGMGOYS95XPCF65Y6ZLZT4SK8R459","1","","1","2022-12-29 11:08:49","1d879f0f0172305f12cdd849230ad0c1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","68.193.3.84",""),
("71","1","axel","zarate","","axel","zaxel7286@gmail.com","fb83e10b60e37255141afefc83ae10a1","3478526760","","1","0","","","","","2022-12-28 19:13:32","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 03:13:32","0","0","","PO7KG9DDNGTHKZUU2URT1XZS46YTBNWW1BBIJTTX","1","","1","2022-12-29 07:26:11","78b7082af822492ba1a88cf7cf26d989","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","24.184.59.51",""),
("72","2","zoe","main","","zoe","rgvaxstzgfvr@triots.com","cd2879586d74f739baa8d060fd2efaff","5581747525","","1","0","","","","","2022-12-29 06:39:16","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 17:07:05","0","0","","49U77NVF79GL8APCPUPTIPFU5UB1BK5XOHV3JJQT","1","","1","2022-12-29 14:40:27","f3828b4a4e87b908d0dbb111e8b749db","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("73","7","boss"," ","","boss ","dtmxuypv@triots.com","cd2879586d74f739baa8d060fd2efaff","4565646545","","1","0","","","","","2022-12-29 12:19:27","default.png","","","","","","1","1","","","0","","","0","","","2022-12-29 20:19:27","0","0","","T61G9YR4HAAC8K8Q3DBSA596J5Z4RAODX9LB46XH","1","","1","2022-12-29 20:19:53","fc3470123df34c48bdcddf173edfa453","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","62.248.48.239",""),
("74","0","Slime","Z","","Slimez","clampgod840@gmail.com","7b0a3b76382fab7427ad3d98dafac8a1","6789341563","","1","0","","","","","2022-12-30 04:02:52","default.png","","","","","","1","1","","","0","","","0","","","2022-12-30 12:05:14","0","0","","H6SCN23974VB3RN1O8V9M6T1LXKHVQNOHHWR6ADH","1","","1","2022-12-30 12:04:04","a74f3873828d5f01b09fd660cb7a3398","","","0","0","","0","","104.59.128.254",""),
("75","0","HelpMe","HelpMe","","HelpMe","Vohrer@gmx.de","a168e51aa81edffe811823eb5fa2c2af","0000000000","","1","0","","","","","2022-12-31 15:40:40","default.png","","","","","","1","1","","","0","","","0","","","2022-12-31 23:40:40","0","0","","QSHU7S9FNC5ORR5LK6RE8WAWBYWF294N8936A1L9","1","","1","2022-12-31 23:41:42","8ab44559efc8a72ceb25eea8e9dcf218","","","0","0","","0","","92.117.181.241",""),
("76","1.01","Joao","Martinez Caviedes","","Kenita","joao.10.martinez@gmail.com","2720f128032598a88a2f3b35968b2022","3165456165","","1","0","","","","","2022-12-31 16:16:23","default.png","","","","","","1","1","","","0","","","0","","","2023-01-01 00:16:23","0","0","","ZI4REK45UD5K2FHXZFE7YAV76ZWKT92UEZNF46W7","1","","1","2023-01-01 00:17:25","83c052e3722495fd7c815d2ccc9d26ef","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","201.223.53.82",""),
("77","0","Michal","Jastrzebski","","michgal","MichalJastrzebski2029@gmail.com","dbecf6e318a173c21ba30c5252c86d2d","1201665672","","1","0","","","","","2022-12-31 19:24:33","default.png","","","","","","1","1","","","0","","","0","","","2023-01-01 03:24:33","0","0","","968C5MV1IPNAM1J4K6VUOXVCGWIEU79JX99AHU4P","1","","1","2023-01-01 03:25:09","604057f3c385b590e29bb30df837644a","","","0","0","","0","","173.70.41.24",""),
("78","0","SAVOIE","ALAIN","","CONTACT73","achats73200@gmail.com","13b8df86e14906487b36913c09365503","3333365874","","1","0","","","","","2023-01-02 05:38:28","default.png","","","","","","1","1","","","0","","","0","","","2023-01-02 13:38:28","0","0","","OCNV7BWV4ZDEXPIC4RPPTUASRBX3A62EHWJ9YLP9","1","","1","2023-01-02 13:51:26","f7bd335ed2c66dc6a6c1a23c4bafee83","","","0","0","","0","","109.6.108.228",""),
("79","81","almasha"," ","","almasha","ssstziuthcmsri@emergentvillage.org","cd2879586d74f739baa8d060fd2efaff","8484561515","","1","0","","","","","2023-01-02 06:46:09","default.png","","","","","","1","1","","","0","","","0","","","2023-01-02 14:46:09","0","0","","9L2NQ84KJZJMH9DJEW93DBTRZHWQI9M39X3P1GWZ","1","","1","2023-01-02 14:47:28","61a0e3d34be5f15c76da6f2cd42858c7","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","5.25.151.178",""),
("80","0","Maurice","Davis","","Mo","mikimoreese@gmail.com","9c631c6bf8bf242cf9390a4e737421ea","9412377195","","1","0","","","","","2023-01-03 00:36:35","default.png","","","","","","1","1","","","0","","","0","","","2023-01-03 08:36:35","0","0","","YGFMEQ8BKPZ49C7PGV1ZF7PIIQDA6OXQAB2ZE28D","1","","1","2023-01-03 10:46:51","5cf38da01c2c45c673520fcb30b31a91","","","0","0","","0","","172.58.191.129",""),
("81","5","Yanis","Ben","","Yanks442","yanks44300@gmail.com","5ba5b1ea8d7c7e4a1774844b178a750f","780647399","","1","0","","","","","2023-01-04 12:31:27","default.png","","","","","","1","1","","","0","","","0","","","2023-01-05 03:06:05","0","0","","ARZKAZWQLN7BNUEZPAE71ZDRMAVQKIK2QXAKR7P9","1","","1","2023-01-04 22:58:02","6fcbef7c0d115b776bfe09747538872f","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","92.88.240.76",""),
("82","0","alminnz","nu","","xklyjxybk","qvunich@gmail.com","fbc27e607239073b0d1a508dde5df881","5162381263","","1","0","","","","","2023-01-05 16:38:05","default.png","","","","","","1","1","","","0","","","0","","","2023-01-06 00:38:05","0","0","","YMQ2YM9KPTISKK69CWUMY2BL99P79IPE6QILYHSO","1","","1","2023-01-06 00:38:49","24a4d84d087a79d4111fa0e983e17d9f","","","0","0","","0","","109.237.43.154",""),
("83","180","glasskov"," ","","glasskov","obizxsdlxj@triots.com","9ad711b94767c7264454de02b4ac19a9","3637294729","","1","0","Russia","Russia","","","2023-01-07 20:40:04","default.png","","","","","","1","1","","","0","","","0","","","2023-01-08 04:49:59","0","0","","SYU6TQQWA62PBBAAGQFNA1425B4U8QX45SWAYLMW","1","","1","2023-01-08 04:40:21","2ce4ab5d9338b5a6e52be6d1f50fc457","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","141.11.124.43",""),
("84","1","mohamed","khloufi","","5loufi","khloufi.ed@gmail.com","5fc8a7de2da54fcd95759d9fa2c40c02","6025647546","","1","0","","","","","2023-01-10 20:26:45","default.png","","","","","","1","1","","","0","","","0","","","2023-01-11 04:26:45","0","0","","INKKOJM9X1UD6O9KKOTE6KY7QG7IWY6FQZOW4Y25","1","","1","2023-01-11 04:27:20","99f3faa50a6165d280765c346859b3f4","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","196.64.228.5",""),
("85","1","Hamza","Wardi","","Sigma","Hamzawardi378@gmail.com","416947baec99a2e583fcc4c50a72e679","52513940","","1","0","","","","","2023-01-11 07:30:28","default.png","","","","","","1","1","","","0","","","0","","","2023-01-11 15:30:28","0","0","","MR7RWTEXHVOZIPW8SMML8PNK2RKZ7PZ8MUEL3W5Q","1","","1","2023-01-11 15:32:18","a53f4d1b139a29f886cff09b488623c1","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","197.144.89.73",""),
("86","6","Garofalakis","George","","noname90s","nonamegeo31@gmail.com","02fc2b400931a8b4b23fb16939c6ffab","6936699407","","1","0","","","","","2023-01-11 14:04:12","default.png","","","","","","1","1","","","0","","","0","","","2023-01-11 23:42:11","0","0","","OPDCE7NS3ESJNQQ19D23VV2SII2SWCQH993HI797","1","","1","2023-01-11 22:05:04","996d4597b80327c8bb17fc939ccca1ff","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","185.51.134.197",""),
("87","1","Andrei","David","","Drpepper","lolpro560lol@gmail.com","bc170d73e7942f2140e223bf39120eea","733971005","","1","0","","","","","2023-01-12 12:05:04","default.png","","","","","","1","1","","","0","","","0","","","2023-01-12 20:05:04","0","0","","TFU43H8ZVL579NKWOPT2BYX35NGOM3GYS3QJXASU","1","","1","2023-01-12 20:05:31","2d4d5a057bb578d0e565cb240ea46f40","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","188.24.14.62","");




CREATE TABLE `kuponlar` (
  `kupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `kupon_kodu` varchar(20) DEFAULT NULL,
  `urunler` varchar(530) DEFAULT NULL,
  `kupon_durum` int(1) NOT NULL DEFAULT 0,
  `yuzde` int(11) NOT NULL,
  `satici` int(11) NOT NULL,
  `son_kullanim` datetime NOT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `adet` int(11) NOT NULL DEFAULT 99999999,
  `kullanim` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kupon_id`),
  KEY `satici` (`satici`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `magaza_siparis` (
  `sip_id` int(11) NOT NULL AUTO_INCREMENT,
  `sip_kod` int(11) DEFAULT NULL,
  `magaza` int(11) NOT NULL,
  `ucret` float NOT NULL DEFAULT 0,
  `tur` int(11) NOT NULL DEFAULT 0,
  `durum` int(11) NOT NULL DEFAULT 1,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `bitis_tarih` datetime DEFAULT NULL,
  `odeme_tarih` datetime DEFAULT NULL,
  `pos` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO magaza_siparis VALUES
("1","11804654","17","1","0","1","2022-08-17 23:08:24","2023-08-17 23:08:24","2022-08-17 23:08:24","0");




CREATE TABLE `notlar` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_baslik` varchar(300) DEFAULT NULL,
  `not_detay` text DEFAULT NULL,
  `hatirlatici` datetime DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `sms_durum` int(11) DEFAULT NULL,
  `mail_durum` int(11) DEFAULT NULL,
  `ekleyen_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`not_id`),
  KEY `ekleyen_id` (`ekleyen_id`),
  CONSTRAINT `notlar_ibfk_1` FOREIGN KEY (`ekleyen_id`) REFERENCES `kullanicilar` (`kul_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO notlar VALUES
("1","Cupiditate omnis ex ","Sint numquam soluta","","2022-08-25 14:49:37","","","17");




CREATE TABLE `popup` (
  `popup_id` int(11) NOT NULL AUTO_INCREMENT,
  `popup_baslik` varchar(500) NOT NULL,
  `popup_detay` mediumtext NOT NULL,
  `popup_durum` int(11) NOT NULL DEFAULT 0,
  `popup_gorulme` varchar(50) NOT NULL DEFAULT '0',
  `popup_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `bildirim_tur` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`popup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO popup VALUES
("21","Demo Başlık","<p><span style=\"font-size: 16px;\">﻿</span><br></p>","0","1352","2022-08-03 15:22:38","0"),
("22","Test","<p><br></p>","0","42","2022-08-25 15:04:21","1");




CREATE TABLE `sayfalar` (
  `sayfa_id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(530) DEFAULT NULL,
  `link` varchar(530) DEFAULT NULL,
  `icerik` longtext DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `guncellenme_tarihi` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `footer` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sayfa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO sayfalar VALUES
("13","Privacy Policy","privacypolicy","<h2 style=\"text-align: center;\">Privacy Policy for Selligo LLC</h2>\n\n<p>At Selligo, accessible from https://www.selligo.shop, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Selligo and how we use it.</p>\n\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\n\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Selligo. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the .</p>\n<br/>\n<a style=\"font-size: 25px;\">Consent</a>\n\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\n<br/>\n<a style=\"font-size: 25px;\">Information we collect</a>\n<br/>\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\n<br/>\n<a style=\"font-size: 25px;\">How we use your information</a>\n<br/>\n<p>We use the information we collect in various ways, including to:</p>\n\n<ul>\n<li>Provide, operate, and maintain our website</li>\n<li>Improve, personalize, and expand our website</li>\n<li>Understand and analyze how you use our website</li>\n<li>Develop new products, services, features, and functionality</li>\n<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\n<li>Send you emails</li>\n<li>Find and prevent fraud</li>\n</ul>\n<br/>\n<a style=\"font-size: 25px;\">Log Files</a>\n<br/>\n<p>Selligo follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\n<br/>\n<a style=\"font-size: 25px;\">Cookies and Web Beacons</a>\n<br/>\n<p>Like any other website, Selligo uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p>\n\n<br/>\n<a style=\"font-size: 25px;\">Our Advertising Partners</a>\n<br/>\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\n\n<ul>\n    <li>\n        <p>Google</p>\n        <p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\n    </li>\n</ul>\n<br/>\n<a style=\"font-size: 25px;\">Advertising Partners Privacy Policies</a>\n<br/>\n<P>You may consult this list to find the Privacy Policy for each of the advertising partners of Selligo.</p>\n\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Selligo, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\n\n<p>Note that Selligo has no access to or control over these cookies that are used by third-party advertisers.</p>\n<br/>\n<a style=\"font-size: 25px;\">Third Party Privacy Policies</a>\n<br/>\n<p>Selligo\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p>\n\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\n<br/>\n<a style=\"font-size: 25px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</a>\n<br/>\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\n<br/>\n<a style=\"font-size: 25px;\">GDPR Data Protection Rights</a>\n<br/>\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\n<p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\n<p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\n<p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>\n<p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\n<p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p>\n<p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\n<br/>\n<a style=\"font-size: 25px;\">Children\'s Information</a>\n<br/>\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\n\n<p>Selligo does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>","2022-08-24 14:06:13","2022-11-28 08:23:51","0"),
("14","Terms Of Service","termsofservice","<h3>Terms and Conditions</h3></br>\n<p>Welcome to the Selligo site!<p>\n</br>\nThese terms and conditions summarize the rules and regulations regarding the use of Selligo LLC\'s Website located at https://selligo.shop/.\n</br>\nBy accessing this website, we assume that you accept these terms and conditions. If you do not accept all the terms and conditions stated on this page, do not continue to use the Selligo product.\nCookies:\nThe website uses cookies to help you personalize your online experience. By accessing the Selligo site, you agree to the use of necessary cookies.\n</br>\nA cookie is a text file saved on your hard drive by a web page server. Cookies cannot be used to run programs or infect your computer. Cookies are specially assigned to you and can only be read by the web servers of the domain name they come from.\n</br>\nWe may use cookies to collect, store and track information for statistical or marketing purposes to operate our website. You have the right to accept or reject optional Cookies. There are some necessary Cookies that are necessary for our website to work. These cookies do not require your consent as they always work. Please note that by accepting Necessary Cookies, for example, when you use a video viewing window provided by third parties and integrated into our website, you also accept third-party Cookies that can be used through services provided by third parties.\n</br>\nLicence:</br>\nUnless otherwise stated, Selligo LLC and/or its licensors own the intellectual property rights in all materials on Selligo. All intellectual property rights reserved. You can access it at Selligo for your own personal use, subject to the restrictions set in these terms and conditions.\n</br>\nThe following are prohibited:\n</br>\ncopy or republish material on the Selligo site;\nSelling, renting or sublicensing material from the Selligo site;\nImitate, reproduce or copy the material on the Selligo site,\nRedistribute content from the Selligo site.\nThis Agreement will begin on the date of this Agreement.\n</br>\nSections of this website offer users the opportunity to exchange and post ideas and information on specific areas of the website. Selligo LLC does not filter, edit, publish or review Comments before they appear on the website. Comments do not reflect the views and opinions of Selligo LLC, its agents and/or affiliates. Comments reflect the views and opinions of the person posting their views and opinions. To the extent permitted by applicable law, Selligo LLC is not liable for the Comments or for any liability, loss or expense arising and/or incurred by any use and/or posting and/or viewing of the comments on this website.\n</br>\nSelligo LLC reserves the right to monitor all Comments and to remove Comments that may be deemed inappropriate, offensive or a violation of these Terms and Conditions.\nYou warrant and represent that:\n</br>\nYou have the right and all necessary licenses and permissions to post the comments on our website;\nThe Comments do not infringe any intellectual property rights, including but not limited to the copyright, patent or trademark of any third party;\nComments do not contain material that violates privacy, is defamatory, defamatory, offensive, indecent or otherwise illegal.\nComments will not be used to offer or promote business activities or customs, or to present commercial or illegal activities.\nYou hereby grant Selligo LLC a non-exclusive permission to use, reproduce, edit and authorize others to use, reproduce and edit your Comments in any form, in any form, format or medium.\n</br>\nHyperlinking to Our Content:\nThe following organizations may link to our Website without our prior written consent:\n</br>\nGovernment agencies;\nsearch engines;\nnews organizations;\nOnline directory distributors may link to our Website as they hyperlink to the Websites of other listed businesses; and\nSystem-Wide Accredited Businesses, with the exception of nonprofits, charitable malls, and charities, may not hyperlink to our Website.\nThese organizations link to: (a) not misleading; (b) does not falsely state sponsorship, endorsement or endorsement of the linking party and its products and/or services; and (c) the linking party\'s site may link to our homepage, publications or other Website information as long as it fits the context.\n</br>\nWe can evaluate and approve other link requests from the following types of organizations:\nwidely known consumer and/or business information sources;\ndot.com community sites;\nassociations or other groups representing charities;\nonline directory distributors;\ninternet portals;\naccounting, law and consulting firms and\neducational institutions and trade associations.\nWe approve link requests from these organizations if: (a) the link does not make ourselves or our accredited businesses appear disreputable; (b) the organization has no negative records with us; (c) the visibility of the hyperlink benefits us, compensating for Selligo LLC\'s absence; and (d) the link is in the context of general resource information.\n</br>\nThese organizations link to: (a) that it is in no way misleading; (b) does not falsely imply sponsorship or endorsement of the linking party and its products or services; and (c) the linking party\'s site may link to our homepage as long as it fits the context.\n</br>\nIf you are one of the entities listed in paragraph 2 above and are interested in linking to our website, you must notify us by sending an email to Selligo LLC. Please include your name, the name of your organization, your contact information and the URL of your site, a list of any URLs you intend to link to our Website, and a list of the URL you wish to feature on our site. Wait 2-3 weeks for response.\n</br>\nApproved organizations may hyperlink to our Website as follows:</br>\n\nUse of our corporate name; or \nUsing a single type of resource locator that is linked; or \nUse of another description of our Website in a way that is meaningful within the context and format of the content on the linking party\'s site\nThe use of the Selligo LLC logo or other artwork to create links without a trademark license agreement will not be permitted.\nContent Responsibility:\nWe are not responsible for any content that appears on your Website. You agree to protect and defend us against all claims made on your Website. Any Web Site must not contain any links that could be construed as libelous, obscene or criminal, or that infringe any third party rights or advocate other violations.\n</br>\nRetention of Rights:\nWe reserve the right to request that you remove all links or any specific link to our Website. You agree to immediately remove all links to our Website upon request. We also reserve the right to change these terms and conditions and the link policy at any time. By continually linking to our Website, you agree to be bound by and abide by these linking terms and conditions.\n</br>\nRemoving links from our website:\nIf you find any link on our Website that is offensive for any reason, you may contact and inform us at any time. We will consider requests to remove links, but are under no obligation to respond directly to you.\nWe do not guarantee the accuracy of the information on this website. We do not guarantee its consistency or accuracy, and we do not undertake to ensure that the website remains available or that the material on the website is kept up to date.\n</br>\nDisclaimer:</br>\nTo the fullest extent permitted by applicable law, we exclude all representations, warranties and conditions regarding our website and use of this website. Nothing in this disclaimer:\n</br>\ndoes not limit or exclude our or your liability for death or personal injury;\ndoes not limit or exclude our or your liability for fraud or fraudulent misrepresentation;\nlimit any of our or your obligations in any way not permitted by applicable law; or\ndoes not exclude our obligations under applicable law or your obligations.\nThe limitations and prohibitions of liability set forth in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph and (b) govern all liability arising from the disclaimer, including liability arising from contract, tort, and breach of statutory duty.\n</br>\nAs long as the website and the information and services on the website are provided free of charge, we cannot be held responsible for any loss or damage.","2022-08-24 14:06:58","2022-11-28 09:08:13","0"),
("15","Cookie Policy","cookiepolicy","<h3>Cookie Policy for Selligo</h3>\n</br>\n<p>This is the Cookie Policy for Selligo, accessible from https://www.selligo.shop</p>\n</br>\n\n<p style=\"font-size: 18px;\"><strong>What Are Cookies</strong></p>\n\n\n<p>As is common practice with almost all professional websites this site uses cookies, which are tiny files that are downloaded to your computer, to improve your experience. This page describes what information they gather, how we use it and why we sometimes need to store these cookies. We will also share how you can prevent these cookies from being stored however this may downgrade or \'break\' certain elements of the sites functionality.</p>\n</br>\n\n<p style=\"font-size: 18px;\"><strong>How We Use Cookies</strong></p>\n\n\n<p>We use cookies for a variety of reasons detailed below. Unfortunately in most cases there are no industry standard options for disabling cookies without completely disabling the functionality and features they add to this site. It is recommended that you leave on all cookies if you are not sure whether you need them or not in case they are used to provide a service that you use.</p>\n</br>\n\n<p style=\"font-size: 18px;\"><strong>Disabling Cookies</strong></p>\n\n\n<p style=\"font-size: 18px;\">You can prevent the setting of cookies by adjusting the settings on your browser (see your browser Help for how to do this). Be aware that disabling cookies will affect the functionality of this and many other websites that you visit. Disabling cookies will usually result in also disabling certain functionality and features of the this site. Therefore it is recommended that you do not disable cookies.</p></br>\n\n<p style=\"font-size: 18px;\"><strong>The Cookies We Set</strong></p>\n\n\n<ul>\n\n<li>\n    <p style=\"font-size: 18px;\">Account related cookies</p>\n    <p style=\"font-size: 18px;\">If you create an account with us then we will use cookies for the management of the signup process and general administration. These cookies will usually be deleted when you log out however in some cases they may remain afterwards to remember your site preferences when logged out.</p>\n</li>\n\n<li>\n\n    <p style=\"font-size: 18px;\">Login related cookies</p>\n\n    <p style=\"font-size: 18px;\">We use cookies when you are logged in so that we can remember this fact. This prevents you from having to log in every single time you visit a new page. These cookies are typically removed or cleared when you log out to ensure that you can only access restricted features and areas when logged in.</p>\n</li>\n\n\n\n\n\n\n</ul>\n</br>\n\n<p style=\"font-size: 18px;\"><strong>Third Party Cookies</strong></p>\n\n\n<p style=\"font-size: 18px;\">In some special cases we also use cookies provided by trusted third parties. The following section details which third party cookies you might encounter through this site.</p>\n\n<ul>\n\n\n\n\n\n\n\n\n\n\n</ul>\n</br>\n\n<p style=\"font-size: 18px;\"><strong>More Information</strong></p>\n\n\n<p>Hopefully that has clarified things for you and previously mentioned if there is something that you aren\'t sure whether you need or not it\'s usually safer to leave cookies enabled in case it does interact with one of the features you use on our site.</p>\n\n\n<p style=\"font-size: 18px;\">However if you are still looking for more information then you can contact us through one of our preferred contact methods:</p>\n</br>\n\n<ul>\n\n<li>By visiting this link: https://www.selligo.shop/</li>\n</ul>\n","2022-08-24 14:07:19","2022-11-29 17:13:03","0");




CREATE TABLE `siparis` (
  `sip_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul` int(11) NOT NULL,
  `urun` int(11) DEFAULT NULL,
  `ucret` double NOT NULL DEFAULT 0,
  `adet` int(11) NOT NULL DEFAULT 0,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `sip_durum` int(11) NOT NULL DEFAULT 2,
  `detay` text DEFAULT NULL,
  `sip_eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `komisyon_oran` int(11) NOT NULL DEFAULT 0,
  `komisyon_alinan` double NOT NULL DEFAULT 0,
  `cekim` int(11) NOT NULL DEFAULT 1,
  `cekim_tarih` datetime DEFAULT NULL,
  `kupon` varchar(25) DEFAULT NULL,
  `normal_fiyat` float DEFAULT NULL,
  `indirim_miktari` float DEFAULT NULL,
  `indirim_orani` float DEFAULT NULL,
  `indirimli_fiyat` float DEFAULT NULL,
  PRIMARY KEY (`sip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO siparis VALUES
("1","18","1","90","1","2022-08-18 12:24:09","2","","2022-08-18 12:24:09","3","2.7","1","","","","","","90"),
("2","18","8","212.5","5","2022-08-18 15:11:52","2","","2022-08-18 15:11:52","3","6.375","1","","DEMO1","250","37.5","15","212.5"),
("3","18","7","20400","2","2022-08-18 15:11:55","2","","2022-08-18 15:11:55","3","612","1","","DEMO1","24000","3600","15","20400"),
("4","18","2","425","2","2022-08-18 15:11:58","2","","2022-08-18 15:11:58","3","12.75","1","","DEMO1","500","75","15","425"),
("5","18","5","170","1","2022-08-18 15:12:00","2","","2022-08-18 15:12:00","3","5.1","1","","DEMO1","200","30","15","170"),
("6","18","12","1275","3","2022-08-18 15:12:03","2","","2022-08-18 15:12:03","3","38.25","1","","DEMO1","1500","225","15","1275"),
("7","18","1","216","3","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","6.48","1","","MAGAZA1OZEL","270","54","20","216"),
("8","18","7","9600","1","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","288","1","","MAGAZA1OZEL","12000","2400","20","9600"),
("9","18","8","240","6","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","7.2","1","","MAGAZA1OZEL","300","60","20","240"),
("10","18","2","200","1","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","6","1","","MAGAZA1OZEL","250","50","20","200"),
("11","18","6","11400","15","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","342","1","","MAGAZA1OZEL","14250","2850","20","11400"),
("12","18","13","6400","8","2022-08-18 15:21:34","2","","2022-08-18 15:21:34","3","192","3","","MAGAZA1OZEL","8000","1600","20","6400"),
("13","18","11","200","2","2022-08-18 15:32:38","2","","2022-08-18 15:32:38","3","6","3","","","","","","0"),
("14","18","7","24000","2","2022-08-18 15:32:38","2","","2022-08-18 15:32:38","3","720","3","","","","","","0"),
("15","18","7","10200","1","2022-08-25 14:13:03","2","","2022-08-25 14:13:03","3","306","1","","DEMO1","12000","1800","15","10200"),
("16","18","8","42.5","1","2022-08-25 14:13:03","2","","2022-08-25 14:13:03","3","1.275","1","","DEMO1","50","7.5","15","42.5"),
("17","18","1","76.5","1","2022-08-25 14:13:03","2","","2022-08-25 14:13:03","3","2.295","1","","DEMO1","90","13.5","15","76.5"),
("18","24","24","12","1","2022-11-27 19:11:44","2","","2022-11-27 19:11:44","3","0.36","1","","","","","","12"),
("19","24","24","12","1","2022-11-27 19:15:39","2","","2022-11-27 19:15:39","3","0.36","1","","","","","","12"),
("20","25","25","15","1","2022-11-30 09:27:27","2","","2022-11-30 09:27:27","3","0.45","1","","","","","","0"),
("21","25","20","100","1","2022-11-30 09:59:02","2","","2022-11-30 09:59:02","3","3","1","","","","","","80"),
("22","25","20","100","1","2022-11-30 10:04:17","2","","2022-11-30 10:04:17","3","3","1","","","","","","80"),
("23","26","8","50","1","2022-12-01 08:21:18","2","","2022-12-01 08:21:18","3","1.5","1","","","","","","0"),
("24","26","28","1","1","2022-12-07 15:34:02","2","","2022-12-07 15:34:02","3","0.03","1","","","","","","0"),
("25","27","32","5","1","2022-12-10 14:38:25","2","","2022-12-10 14:38:25","3","0.15","1","","","","","","5"),
("26","27","30","25","1","2022-12-10 14:47:09","2","","2022-12-10 14:47:09","3","0.75","1","","","","","","25"),
("27","27","31","2","1","2022-12-10 14:48:16","2","","2022-12-10 14:48:16","3","0.06","1","","","","","","2"),
("28","27","32","4.5","1","2022-12-10 17:08:52","2","","2022-12-10 17:08:52","3","0.135","1","","FAST","5","0.5","10","4.5"),
("29","27","79","9999999","1","2022-12-14 07:09:58","2","","2022-12-14 07:09:58","3","299999.97","1","","","","","","0"),
("30","31","39","6","6","2022-12-14 07:17:12","2","","2022-12-14 07:17:12","3","0.18","1","","","","","","1"),
("31","31","30","50","2","2022-12-14 07:17:12","2","","2022-12-14 07:17:12","3","1.5","1","","","","","","25"),
("32","31","60","16","1","2022-12-14 07:17:12","2","","2022-12-14 07:17:12","3","0.48","1","","","","","","16"),
("33","31","52","15","1","2022-12-14 07:17:12","2","","2022-12-14 07:17:12","3","0.45","1","","","","","","15"),
("34","31","36","912","24","2022-12-14 07:17:12","2","","2022-12-14 07:17:12","3","27.36","1","","","","","","38"),
("35","31","34","19","1","2022-12-14 07:19:34","2","","2022-12-14 07:19:34","3","0.57","1","","","","","","19"),
("36","31","39","1","1","2022-12-14 07:19:34","2","","2022-12-14 07:19:34","3","0.03","1","","","","","","1"),
("37","32","31","8","4","2022-12-15 08:03:36","2","","2022-12-15 08:03:36","3","0.24","1","","","","","","2"),
("38","32","30","50","2","2022-12-15 08:03:36","2","","2022-12-15 08:03:36","3","1.5","1","","","","","","25"),
("39","32","32","5","1","2022-12-16 03:04:10","2","","2022-12-16 03:04:10","3","0.15","1","","","","","","5"),
("40","32","60","32","2","2022-12-16 03:04:10","2","","2022-12-16 03:04:10","3","0.96","1","","","","","","16"),
("41","32","32","10","2","2022-12-16 03:06:12","2","","2022-12-16 03:06:12","3","0.3","1","","","","","","5"),
("42","32","32","25","5","2022-12-16 04:14:09","2","","2022-12-16 04:14:09","3","0.75","1","","","","","","5"),
("43","34","32","3","1","2022-12-20 09:00:30","2","","2022-12-20 09:00:30","3","0.09","1","","","","","","3"),
("44","39","32","3","1","2022-12-20 09:04:48","2","","2022-12-20 09:04:48","3","0.09","1","","","","","","3"),
("45","40","32","3","1","2022-12-20 14:34:19","2","","2022-12-20 14:34:19","3","0.09","1","","","","","","3"),
("46","41","39","1","1","2022-12-20 15:29:13","2","","2022-12-20 15:29:13","3","0.03","1","","","","","","1"),
("47","47","38","-38","38","2022-12-21 08:27:24","2","","2022-12-21 08:27:24","3","-1.14","1","","","","","","-1"),
("48","47","36","38","1","2022-12-21 08:27:24","2","","2022-12-21 08:27:24","3","1.14","1","","","","","","38"),
("49","48","39","1","1","2022-12-21 09:14:10","2","","2022-12-21 09:14:10","3","0.03","1","","","","","","1"),
("50","51","39","1","1","2022-12-21 15:42:02","2","","2022-12-21 15:42:02","3","0.03","1","","","","","","1"),
("51","51","49","12","1","2022-12-21 15:42:02","2","","2022-12-21 15:42:02","3","0.36","1","","","","","","12"),
("52","52","76","15","5","2022-12-21 16:09:41","2","","2022-12-21 16:09:41","3","0.45","1","","","","","","3"),
("53","52","77","1","1","2022-12-21 16:09:41","2","","2022-12-21 16:09:41","3","0.03","1","","","","","","0"),
("54","53","32","3","1","2022-12-21 16:34:00","2","","2022-12-21 16:34:00","3","0.09","1","","","","","","3"),
("55","53","49","12","1","2022-12-21 16:34:00","2","","2022-12-21 16:34:00","3","0.36","1","","","","","","12"),
("56","54","84","2","1","2022-12-23 08:08:00","2","","2022-12-23 08:08:00","3","0.06","1","","","","","","2"),
("57","54","84","2","1","2022-12-23 08:08:12","2","","2022-12-23 08:08:12","3","0.06","1","","","","","","2"),
("58","54","84","2","1","2022-12-23 08:08:24","2","","2022-12-23 08:08:24","3","0.06","1","","","","","","2"),
("59","54","84","2","1","2022-12-23 08:08:36","2","","2022-12-23 08:08:36","3","0.06","1","","","","","","2"),
("60","54","84","2","1","2022-12-23 08:12:25","2","","2022-12-23 08:12:25","3","0.06","1","","","","","","2"),
("61","55","84","2","1","2022-12-23 08:35:41","2","","2022-12-23 08:35:41","3","0.06","1","","","","","","2"),
("62","56","84","2","1","2022-12-23 08:43:24","2","","2022-12-23 08:43:24","3","0.06","1","","","","","","2"),
("63","58","84","2","1","2022-12-23 14:33:02","2","","2022-12-23 14:33:02","3","0.06","1","","","","","","2"),
("64","58","32","3","1","2022-12-23 14:50:42","2","","2022-12-23 14:50:42","3","0.09","1","","","","","","3"),
("65","58","88","5","1","2022-12-27 15:11:13","2","","2022-12-27 15:11:13","3","0.15","1","","","","","","0"),
("66","67","94","80","1","2022-12-28 11:51:19","2","","2022-12-28 11:51:19","3","2.4","1","","","","","","80"),
("67","72","94","80","1","2022-12-29 06:40:48","2","","2022-12-29 06:40:48","3","2.4","1","","","","","","80"),
("68","72","37","5","1","2022-12-29 06:44:07","2","","2022-12-29 06:44:07","3","0.15","1","","","","","","5"),
("69","73","94","60","1","2022-12-29 12:23:07","2","","2022-12-29 12:23:07","3","1.8","1","","","","","","60"),
("70","76","53","2.99","1","2022-12-31 17:07:10","2","","2022-12-31 17:07:10","3","0.0897","1","","","","","","2"),
("71","79","94","60","1","2023-01-02 06:54:22","2","","2023-01-02 06:54:22","3","1.8","1","","","","","","60"),
("72","81","86","31","1","2023-01-04 18:45:50","2","","2023-01-04 18:45:50","3","0.93","1","","","","","","31"),
("73","83","94","900","15","2023-01-07 20:44:46","2","","2023-01-07 20:44:46","3","27","1","","","","","","60"),
("74","83","30","320","20","2023-01-07 20:44:46","2","","2023-01-07 20:44:46","3","9.6","1","","","","","","16");




CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(530) DEFAULT NULL,
  `aciklama` varchar(530) DEFAULT NULL,
  `resim` varchar(530) DEFAULT NULL,
  `buton_yazi` varchar(530) DEFAULT NULL,
  `buton_link` varchar(530) DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  `sira` int(11) NOT NULL DEFAULT 0,
  `sadece_resim` int(11) NOT NULL DEFAULT 0,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO slider VALUES
("1","How to become seller status? ","You can change your profile to seller mode, than earn money by selling accounts, your old twitters, your fortnite accounts etc. Click button to read more about ","1-8565421-iiiiii.webp","Read more","https://selligo.shop/blog/how-to-become-a-seller-status","1","0","0","2022-04-26 22:02:31");




CREATE TABLE `sms` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_icerik` varchar(500) DEFAULT NULL,
  `gonderilme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `sms_numara` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sms_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;


INSERT INTO sms VALUES
("3","Lexa Dijital Ürün Satış Yazılımı ONAY KODUNUZ: 476518","2022-08-25 14:15:52","5555555555");




CREATE TABLE `sss` (
  `soru_id` int(11) NOT NULL AUTO_INCREMENT,
  `soru` varchar(500) NOT NULL,
  `cevap` text NOT NULL,
  PRIMARY KEY (`soru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO sss VALUES
("3","Will there be special day discounts?","Of course, will have special discounts for special days.");




CREATE TABLE `talep` (
  `talep_id` int(11) NOT NULL AUTO_INCREMENT,
  `kul` int(11) DEFAULT NULL,
  `isim` varchar(530) DEFAULT NULL,
  `banka` varchar(530) DEFAULT NULL,
  `iban` varchar(100) DEFAULT NULL,
  `sip` varchar(530) DEFAULT NULL,
  `ucret` double NOT NULL DEFAULT 0,
  `talep_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `odeme_tarihi` datetime DEFAULT NULL,
  `icerik` varchar(500) DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`talep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO talep VALUES
("1","17","Sed perferendis id n","Non accusantium cons","Aute nemo doloremque","14,13,12","0","2022-08-21 01:20:54","2022-08-25 15:00:00","Et reiciendis sunt qui maxime minus commodor aut quidem quis laborum Consequat Suscipit et tempore","2");




CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_uye` int(11) DEFAULT NULL,
  `satici` int(11) DEFAULT NULL,
  `ticket_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `ticket_departman` int(11) DEFAULT NULL,
  `ticket_durum` int(2) NOT NULL DEFAULT 1,
  `ticket_aciliyet` varchar(50) DEFAULT NULL,
  `ticket_konu` varchar(300) DEFAULT NULL,
  `ticket_son_yanit_tarih` datetime DEFAULT NULL,
  `sip` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO ticket VALUES
("1","18","17","2022-08-18 14:39:01","0","0","Orta","Ürün Bilgileri","2022-08-18 14:39:01","1"),
("2","18","17","2022-08-18 14:44:23","0","1","Orta","Satış Öncesi Bilgi","2022-08-18 14:48:46","1"),
("3","18","17","2022-08-18 14:50:21","0","2","Acil","Mağaza Destek Bileti Test","2022-08-25 14:23:36","1"),
("6","24","23","2022-11-27 19:19:27","0","0","Orta","blabla","2022-11-28 03:19:48","19"),
("7","26","19","2022-12-04 17:57:49","0","1","Orta","aaa","2022-12-05 01:57:49",""),
("8","26","17","2022-12-05 17:07:07","0","1","Orta","saa","2022-12-06 01:07:07","23"),
("9","26","23","2022-12-06 14:46:39","0","1","Orta","asdasdasd","2022-12-06 22:46:39",""),
("10","27","23","2022-12-08 16:27:58","0","1","Normal","asd","2022-12-09 00:27:58",""),
("11","31","23","2022-12-15 08:07:49","0","1","Normal","gfgy","2022-12-15 16:07:49","36"),
("12","31","23","2022-12-19 09:31:18","0","1","Normal","fafd","2022-12-19 17:31:18",""),
("13","41","23","2022-12-20 15:49:39","0","2","Orta","1K Instagram Follower","2022-12-20 23:49:39","46"),
("14","47","23","2022-12-21 08:30:24","0","2","Normal","Account","2022-12-21 16:35:39","48"),
("15","47","23","2022-12-21 08:32:05","0","2","Orta","Orders","2022-12-21 16:32:05","48"),
("16","52","23","2022-12-21 15:46:31","0","1","Normal","top up","2022-12-21 23:46:31",""),
("17","60","23","2022-12-25 15:26:38","2","1","Urgent","i want add 3$","2022-12-25 23:26:38",""),
("18","76","23","2022-12-31 17:14:59","0","2","Orta","Canva Edu Account","2023-01-01 01:14:59","70"),
("19","81","23","2023-01-04 19:55:13","0","2","Orta","PSN Plus","2023-01-05 03:55:13","72");




CREATE TABLE `ticket_bag` (
  `ticket_bag_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `ticket_gonderen` int(11) DEFAULT NULL,
  `ticket_gonderilme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `ticket_detay` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ticket_bag_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `ticket_bag_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO ticket_bag VALUES
("1","1","0","2022-08-18 14:39:01","Merhaba, ürün bilgilerimi teslim alabilir miyim?"),
("2","2","0","2022-08-18 14:44:23","Ürün BilgileriÜrün BilgileriÜrün Bilgileri"),
("3","2","1","2022-08-18 14:48:17","test "),
("4","2","0","2022-08-18 14:48:46","test cevap"),
("5","3","1","2022-08-18 14:50:21","Mağaza, destek bileti oluşturma işlemi."),
("38","3","0","2022-08-25 14:10:16","qweqwe"),
("39","3","1","2022-08-25 14:23:36","tyrty6tr"),
("40","6","0","2022-11-27 19:19:27","blabla"),
("41","6","1","2022-11-27 19:19:48","kes lan"),
("42","7","0","2022-12-04 17:57:49","aaa"),
("43","8","0","2022-12-05 17:07:07","asdas"),
("44","9","0","2022-12-06 14:46:39","asdasd"),
("45","10","0","2022-12-08 16:27:58","asd"),
("46","11","0","2022-12-15 08:07:49","vhbj"),
("47","12","0","2022-12-19 09:31:18","sgdsgfg"),
("48","13","1","2022-12-20 15:49:39","kindly provide us instagram link."),
("49","14","0","2022-12-21 08:30:24","Hi I´ve bought an account and in the e-mail i´ve got, it said i should contact you."),
("50","15","1","2022-12-21 08:32:05","Hey i see you buy things from my store how can i help you"),
("51","14","1","2022-12-21 08:35:39","hey how did you buy without adding balance? xD"),
("52","16","0","2022-12-21 15:46:31","i need to top up"),
("53","17","0","2022-12-25 15:26:38","i want add3$"),
("54","18","1","2022-12-31 17:14:59","Use this code to get Canva Pro features.\nBQ9MQRAM8\n\nIf code doesnt work, use this link instead.\nhttps://www.canva.com/brand/join?token=uSjNeSzSN7W00zi-Gh-Q3A&brandingVariant=edu&referrer=team-invite"),
("55","19","1","2023-01-04 19:55:13","psnn12@mail.com\nSelligo1.\nThanks for choosing us.");




CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_baslik` varchar(530) DEFAULT NULL,
  `urun_seo_baslik` varchar(500) DEFAULT NULL,
  `urun_link` varchar(455) DEFAULT NULL,
  `urun_detay` text DEFAULT NULL,
  `urun_seo_aciklama` varchar(500) DEFAULT NULL,
  `urun_one_cikan` varchar(530) DEFAULT NULL,
  `urun_fiyat` double DEFAULT NULL,
  `indirimli_fiyat` double NOT NULL DEFAULT 0,
  `indirim_son_tarih` datetime DEFAULT NULL,
  `urun_eklenme_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `urun_durum` int(11) NOT NULL DEFAULT 0,
  `satici` int(11) NOT NULL DEFAULT 1,
  `kat` int(11) DEFAULT NULL,
  `satis` int(11) NOT NULL DEFAULT 0,
  `urun_see` int(11) NOT NULL DEFAULT 0,
  `teslim_tur` int(11) NOT NULL,
  `manset_sira` int(11) NOT NULL DEFAULT 0,
  `manset_durum` int(11) NOT NULL DEFAULT 0,
  `stok` int(11) NOT NULL DEFAULT 0,
  `urun_son_guncelleme` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`urun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO urun VALUES
("30","Netflix 12 Month Account","Netflix 12 Month Account","netflix-12-month","● Netflix 12 Month Account\n\n● Mail Full Access\n\n● 1 Year Warranty","● Netflix 12 Month Account● Mail Full Access● 1 Year Warranty","30-5160015-1.webp","27.99","16","2023-01-23 20:27:00","2022-12-08 12:32:17","1","23","45","0","147","1","0","0","96","2023-01-07 21:42:46"),
("31","Spotify 1 Month Account","Spotify 1 Month Account","spotify-1-month-premium-account","● Spotify 1 Month Account\n\n● Mail Full Access\n\n● 1 Month Warranty\n\n\n","● Spotify 1 Month Account\n● Mail Full Access\n● 1 Month Warranty","31-2093019-2.webp","2.99","2","2023-01-23 20:33:00","2022-12-08 12:35:52","1","23","46","0","100","1","0","0","98","2022-12-23 20:43:34"),
("32","Spotify 3 Month Account","Spotify 3 Month Account","spotify-3-month-premium-account","● Spotify 3 Month Account\n\n● Mail Full Access\n\n● 3 Month Warranty","● Spotify 3 Month Account\n● Mail Full Access\n● 3 Month Warranty","32-7568939-2.webp","6.99","3","2023-01-23 20:37:00","2022-12-08 12:38:10","1","23","46","0","104","0","0","0","95","2022-12-23 20:43:56"),
("33","Spotify 6 Month Account","Spotify 6 Month Account","spotify-6-month-account","● Spotify 6 Month Account\n\n● Mail Full Access\n\n● 6 Months Warranty","● Spotify 6 Month Account\n● Mail Full Access\n● 6 Months Warranty","33-2066584-2.webp","11.99","9","2023-01-23 20:41:00","2022-12-08 12:48:03","1","23","46","0","43","1","0","0","100","2022-12-23 20:45:00"),
("34","Spotify 12 Month Account","Spotify 12 Month Account","spotify-12-month-account","● Spotify 12 Month Account\n\n● Mail Full Access\n\n● 1 Year Warranty\n","● Spotify 12 Month Account\n● Mail Full Access\n● 1 Year Warranty","34-7804804-2.webp","20.99","19","2023-01-23 20:59:00","2022-12-08 12:59:47","1","23","46","0","50","1","0","0","99","2022-12-23 20:45:20"),
("35","Youtube Premium 1 Month Account","Youtube Premium 1 Month Account","youtube-premium-1-month","● Youtube  1 Month Premium Account\n\n● Mail Full Access\n\n● 1 Month Warranty","● Youtube  1 Month Premium Account\n● Mail Full Access\n● 1 Month Warranty","35-5454345-3.webp","4.99","3","2023-01-23 21:01:00","2022-12-08 13:02:09","1","23","35","0","35","1","0","0","100","2022-12-23 20:45:42"),
("36","Youtube Premium 12 Month Account","Youtube Premium 12 Month Account","youtube-premium-12-month","● Youtube 12 Month Premium Account\n\n● Mail Full Access\n\n● 1 Year Warranty","● Youtube 12 Month Premium Account\n● Mail Full Access\n● 1 Year Warranty","36-5124203-3.webp","35","28","2023-01-23 21:02:00","2022-12-08 13:03:50","1","23","35","0","55","1","0","0","98","2022-12-23 20:47:06"),
("37","Discord 1 Month 100x Online Members ","Discord 1 Month 100x Online Members ","discord-100x-online-members","● Discord 1 Month 100x Online Members\n\n● Send us your Discord server link.\n\n● They are active 24/7.\n\n● It will not harm your account or discord server.\n\n● Users have different names.","● Discord 1 Month 100x Online Members\n● Send us your Discord server link.\n● They are active 24/7.\n● It will not harm your account or discord server.\n● Users hav","37-3084904-4.webp","5.99","5","2023-01-23 21:06:00","2022-12-08 13:06:32","1","23","57","0","74","1","0","0","99","2022-12-23 20:47:30"),
("38","Discord 100x Offline Members","Discord 100x Offline Members","discord-100x-offline-members","● Discord 100x Offline members.\n\n● 1 month warranty.\n\n● Send us your Discord server link.\n\n● They are active 24/7.\n\n● It will not harm your account or discord server.\n\n● Users have different names.","● Discord 100x Offline members.\n● 1 month warranty.\n● Send us your Discord server link.\n● They are active 24/7.\n● It will not harm your account or discord serve","38-2236412-4.webp","7.99","5","2023-01-23 21:08:00","2022-12-08 13:08:56","1","23","57","0","52","1","0","0","99","2022-12-23 20:48:08"),
("39","Instagram 1K Followers","Instagram 1K Followers","instagram-1k-followers","● Simply send a instagram profile link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a instagram profile link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","39-8885139-5.webp","1.99","1","2023-01-23 21:10:00","2022-12-08 13:12:42","1","23","18","0","122","1","0","0","95","2022-12-23 20:48:32"),
("40","Instagram 1K Likes","Instagram 1K Likes","instagram-1k-likes","● Simply send a instagram post link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a instagram post link.\n● There will never be a problem with your account.\n● Your account must not be private.","40-4614432-5.webp","1.99","1","2023-01-23 21:16:00","2022-12-08 13:16:37","1","23","19","0","18","1","0","0","100","2022-12-23 20:48:56"),
("41","Instagram 5K Views","Instagram 5K Views","instagram-5k-views","● Simply send a instagram post link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a instagram post link.\n● There will never be a problem with your account.\n● Your account must not be private.","41-4015880-5.webp","1.99","1","2023-01-23 20:49:00","2022-12-08 13:21:57","1","23","20","0","21","1","0","0","100","2022-12-23 20:49:22"),
("42","Tiktok 1K Followers","Tiktok 1K Followers","tiktok-1k-followers","● Simply send a tiktok profile  link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok profile  link.\n● There will never be a problem with your account.\n● Your account must not be private.","42-2460177-7.webp","3.99","3","2023-01-23 21:23:00","2022-12-08 13:24:03","1","23","27","0","30","1","0","0","100","2022-12-23 20:49:39"),
("43","Tiktok 1K Likes","Tiktok 1K Likes","tiktok-1k-likes","● Simply send a tiktok video link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok video link.\n● There will never be a problem with your account.\n● Your account must not be private.","43-2847646-7.webp","3.99","3","2023-01-23 21:32:00","2022-12-08 13:32:35","1","23","29","0","11","1","0","0","100","2022-12-23 20:49:57"),
("44","Tiktok 1K Views","Tiktok 1K Views","tiktok-1k-views","● Simply send a tiktok video link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok video link.\n● There will never be a problem with your account.\n● Your account must not be private.","44-9251731-7.webp","1.99","1","2023-01-23 20:50:00","2022-12-08 13:35:35","1","23","30","0","11","1","0","0","100","2022-12-23 20:50:25"),
("45","Disney Plus 1 Month Account","Disney Plus 1 Month Account","disney-plus-1-month","● Disney Plus 1 Month Account\n\n● Changeable account information\n","● Disney Plus 1 Month Account\n● Changeable account information","45-8642548-8.webp","5.99","4","2023-01-23 21:39:00","2022-12-08 13:44:19","1","23","42","0","30","1","0","0","100","2022-12-23 20:50:55"),
("46","Disney Plus 12 Month Account","Disney Plus 12 Month Account","disney-plus-12-month","● Disney Plus 12 Month Account\n\n●  Changeable account information\n","● Disney Plus 12 Month Account\n●  Changeable account information","46-1929567-8.webp","29.99","24","2022-12-23 21:45:00","2022-12-08 13:45:46","1","23","42","0","15","1","0","0","100","2022-12-23 20:52:21"),
("47","XBOX Game Pass Ultimate 1 Year ","XboxGamepass1yearAccount","xbox-gamepass-12-month-accounts","●  Full Access\n\n●  Fully Private\n\n●  Upgrading on your own mail.\n\n●  1 Year Full warranty prepaid.\n\n","●  Full Access  ●  Fully Private  ●  Upgrading on your own mail.  ●  1 Year Full warranty prepaid.","47-6081222-xbox-1.webp","39.99","38","2023-01-23 21:49:00","2022-12-08 13:51:13","1","23","62","0","33","1","0","0","50","2023-01-02 02:03:47"),
("48","Crunchyroll 1 Month Code","Crunchyroll 1 Month Code","crunchyroll-1-month-code","●  delivering as code","●  delivering as code","48-3532487-24.webp","3.99","2","2023-01-23 21:53:00","2022-12-08 13:56:07","1","23","72","0","26","1","0","0","50","2022-12-23 20:55:15"),
("49","Discord 14x 3Month Server Boost ","Discord 14x 3Month Server Boost ","discord-14x-3month-server-boost","●  Discord 14x 3 month server boost.\n\n● Simply send a discord invite link.\n\n● It will not harm your account or discord server.","●  Discord 14x 3 month server boost.\n● Simply send a discord invite link.\n● It will not harm your account or discord server.","49-6991950-25.webp","19.99","12","2023-01-23 22:05:00","2022-12-08 14:07:24","1","23","55","0","134","1","0","0","98","2022-12-23 20:55:43"),
("50","LOL EUW 30LVL Unranked Account","LOL EUW 30LVL Unranked Account","lol-euw-30lvl-unranked-accounts","● Includes extra costume crystals\n\n● 0% Ban Risk\n\n● Accounts have 68-100K+ Blue Core\n\n● The loot contains costume crystals.\n\n● After the information is transmitted, you can enter the league of legends site and directly change the mail, user name and password.","● Includes extra costume crystals\n● 0% Ban Risk\n● Accounts have 68-100K+ Blue Core\n● The loot contains costume crystals.\n● After the information is transmitted,","50-1428142-28.webp","3.99","3","2023-01-23 22:15:00","2022-12-08 14:15:35","1","23","65","0","54","1","0","0","100","2022-12-23 20:56:02"),
("51","Eset 12 Month Account","Eset 12 Month Account","eset-12month-accounts","● Eset 12 Month Account\n\n● 12 month warranty","● Eset 12 Month Account\n● 12 month warranty","51-3902738-14.webp","15.99","15","2022-12-23 22:20:00","2022-12-08 14:20:25","1","23","88","0","13","1","0","0","100","2022-12-23 20:56:15"),
("52","Kaspersky 12 Month Account","Kaspersky 12 Month Account","kaspersky-12-month","● Kaspersky 12 Month Account\n\n● 12 month warranty","● Kaspersky 12 Month Account\n● 12 month warranty","52-4907451-12.webp","15.99","15","2022-12-23 22:24:00","2022-12-08 14:24:51","1","23","87","0","30","1","0","0","99","2022-12-22 00:26:59"),
("53","Canva Edu  Lifetime Account","Canva Edu  Lifetime Account","canva-edu-lifetime","● Canva Edu Lifetime\n\n● Changeable account information","● Canva Edu Lifetime\n● Changeable account information","53-4457567-30.webp","2.99","2","2022-12-23 22:30:00","2022-12-08 14:30:22","1","23","91","0","27","1","0","0","99","2022-12-22 00:27:19"),
("54","Canva Teacher Lifetime Account","Canva Teacher Lifetime Account","canva-teacher-lifetime","● Canva Teacher Lifetime\n\n","● Canva Teacher Lifetime","54-1119730-30.webp","12.99","11","2022-12-23 22:31:00","2022-12-08 14:31:37","1","23","91","0","15","1","0","0","100","2022-12-22 00:27:34"),
("55","EA Play 1 Month Account","EA Play 1 Month Account","ea-play-1month","● Ea Play 1 Month Account\n\n● Changeable account information","● Ea Play 1 Month Account\n● Changeable account information","55-6771308-28.webp","3.99","3","2023-01-23 22:33:00","2022-12-08 14:33:39","1","23","71","0","13","1","0","0","100","2022-12-23 20:57:22"),
("56","Office 365 12 Month Account","Office 365 12 Month Account","office-365-12month","● Office 365 12 Month Account\n\n● 12 month warranty","● Office 365 12 Month Account\n● 12 month warranty","56-1788891-29.webp","4.99","4","2022-12-23 22:37:00","2022-12-08 14:37:12","1","23","96","0","15","1","0","0","100","2022-12-22 00:28:18"),
("57","Office 365 Pro Plus 12 Month Account","Office 365 Pro Plus 12 Month Account","office-365-proplus-12month","● Office 365 Pro Plus 12 Month Account\n\n● 12 month warranty","● Office 365 Pro Plus 12 Month Account\n● 12 month warranty","57-3679109-29.webp","6.99","6","2022-12-23 22:38:00","2022-12-08 14:38:22","1","23","96","0","27","1","0","0","100","2022-12-22 00:28:30"),
("58","Windows 10 Home & Pro ","Windows 10 Home & Pro ","windows-10-home-pro","●  delivering as code\n\n","●  delivering as code","58-9265955-31.webp","6.99","6","2022-12-23 22:49:00","2022-12-08 14:49:51","1","23","83","0","17","1","0","0","100","2022-12-22 00:28:52"),
("59","Windows 11 Home & Pro Licence","Windows 11 Home & Pro Licence","windows-11-home-pro-licence","●  delivering as code","●  delivering as code","59-4974651-32.webp","7.99","7","2022-12-23 22:57:00","2022-12-08 14:57:47","1","23","84","0","17","1","0","0","100","2022-12-22 00:29:17"),
("60","EA Play 12 Month  Account","EA Play 12 Month  Account","ea-play-12month","● Ea Play 12 Month Account\n\n● Changeable account information","● Ea Play 12 Month Account\n● Changeable account information","60-2010644-28.webp","17.99","16","2023-01-23 23:03:00","2022-12-08 15:03:21","1","23","71","0","34","1","0","0","98","2022-12-23 20:57:42"),
("61","IPVanish 1 Month Account","IPVanish 1 Month Account","ipvanish-1-month","● IPVanish 1 Month Account\n\n● 1 month warranty","● IPVanish 1 Month Account\n● 1 month warranty","61-7103985-16.webp","6.99","6","2022-12-23 23:08:00","2022-12-08 15:09:32","1","23","92","0","16","1","0","0","50","2022-12-22 00:30:13"),
("62","IPVanish 3 Month Account","IPVanish 3 Month Account","ipvanish-3-month","● IPVanish 3 Month Account\n\n● 3 month warranty","● IPVanish 3 Month Account\n● 3 month warranty","62-5340200-16.webp","9.99","9","2022-12-23 23:10:00","2022-12-08 15:11:08","1","23","92","0","13","1","0","0","100","2022-12-22 00:31:01"),
("63","IPVanish 6 Month Account","IPVanish 6 Month Account","ipvanish-6-month","● IPVanish 6 Month Account\n\n● 6 month warranty","● IPVanish 6 Month Account\n● 6 month warranty","63-2761702-16.webp","14.99","14","2022-12-23 23:11:00","2022-12-08 15:12:00","1","23","92","0","15","1","0","0","100","2022-12-22 00:31:22"),
("64","IPVanish 12 Month Account","IPVanish 12 Month Account","ipvanish-12-month","● IPVanish 12 Month Account\n\n● 12 month warranty","● IPVanish 12 Month Account\n● 12 month warranty","64-7469699-16.webp","19.99","18","2022-12-23 23:13:00","2022-12-08 15:13:34","1","23","92","0","15","1","0","0","100","2022-12-22 00:31:38"),
("65","ZenMate 1 Month Account","ZenMate 1 Month Account","zenmate-1-month","● ZenMate 1 Month Account\n\n● 1 month warranty","● ZenMate 1 Month Account\n● 1 month warranty","65-6675489-17.webp","6.99","6","2022-12-23 23:14:00","2022-12-08 15:15:11","1","23","95","0","12","1","0","0","100","2022-12-22 00:32:05"),
("66","ZenMate 3 Month Account","ZenMate 3 Month Account","zenmate-3-month","● ZenMate 3 Month Account\n\n● 3 month warranty","● ZenMate 3 Month Account\n● 3 month warranty","66-4641693-17.webp","9.99","8","2022-12-23 23:15:00","2022-12-08 15:16:09","1","23","95","0","10","1","0","0","100","2022-12-22 00:32:46"),
("67","ZenMate 6 Month Account","ZenMate 6 Month Account","zenmate-6-month","● ZenMate 6 Month Account\n\n● 6 month warranty","● ZenMate 6 Month Account\n● 6 month warranty","67-2156653-17.webp","14.99","14","2022-12-23 23:16:00","2022-12-08 15:17:12","1","23","95","0","17","1","0","0","100","2022-12-22 00:33:06"),
("68","ZenMate 12 Month Account","ZenMate 12 Month Account","zenmate-12-month","● ZenMate 12 Month Account\n\n● 12 month warranty","● ZenMate 12 Month Account\n● 12 month warranty","68-5686422-17.webp","19.99","18","2022-12-23 23:17:00","2022-12-08 15:19:27","1","23","95","0","13","1","0","0","100","2022-12-22 00:33:25"),
("70","Twitter 1K Likes","Twitter 1K Likes","twitter-1k-likes","● Simply send a twitter post or video link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post or video link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","70-9111553-6.webp","4.99","4","2023-01-23 23:29:00","2022-12-08 15:30:10","1","23","23","0","15","1","0","0","100000","2022-12-23 21:02:01"),
("71","Twitter 1K Retweet","Twitter 1K Retweet","twitter-1k-retweet","● Simply send a twitter post or video link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post or video link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","71-1798383-6.webp","4.99","4","2023-01-23 23:31:00","2022-12-08 15:32:03","1","23","25","0","14","1","0","0","100000","2022-12-23 21:02:18"),
("72","Twitter 1K NFT Followers","Twitter 1K NFT Followers","twitter-1k-nft-followers","● Simply send a twitter profile link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter profile link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","72-8002054-6.webp","19.99","15","2023-01-23 23:33:00","2022-12-08 15:33:37","1","23","24","0","25","1","0","0","100000","2022-12-23 21:04:04"),
("73","Twitter 1K NFT Likes","Twitter 1K NFT Likes","twitter-1k-nft-likes","● Simply send a twitter post link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","73-6962093-6.webp","19.99","15","2023-01-23 23:35:00","2022-12-08 15:35:26","1","23","23","0","15","1","0","0","100000","2022-12-23 21:04:27"),
("74","Twitter NFT 1K Retweet","Twitter NFT 1K Retweet","twitter-nft-1k-retweet","● Simply send a twitter post link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","74-8791195-6.webp","19.99","15","2022-12-23 23:36:00","2022-12-08 15:36:18","1","23","25","0","17","1","0","0","1000000","2022-12-23 21:04:42"),
("75","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","twitter-2009-2015-old-account","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","75-8211883-6.webp","5.99","5","2023-01-23 23:37:00","2022-12-08 15:37:56","1","23","22","0","20","1","0","0","1000","2022-12-23 21:05:02"),
("76","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","twitter-20016-2021-old-account","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","76-3654295-6.webp","3.99","3","2023-01-23 23:38:00","2022-12-08 15:38:55","1","23","22","0","27","1","0","0","999","2022-12-23 21:05:36"),
("77","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","twitter-2022-2023-old-account","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","77-3062768-6.webp","2","1","2023-01-23 23:39:00","2022-12-08 15:39:54","1","23","22","0","19","1","0","0","99999","2022-12-23 21:06:13"),
("84","Telegram Premium 1 Month","Telegram Premium 1 Month","telegram-premium-1-month-5181","● Delivering as a gift \n\n●  Simply send a Telegram username.\n\n● 1 Month premium\n","● Delivering as a gift \n●  Simply send a Telegram username.\n● 1 Month premium","84-2542055-telegram.webp","4","2","2023-01-23 15:35:00","2022-12-23 07:36:06","1","23","33","0","182","1","0","0","0","2022-12-24 15:49:17"),
("85","Playstation Plus 1 Year Deluxe","Playstation Plus 1 Year Deluxe","playstation-plus-1-year-deluxe","• 1 Year Subscription\n\nDelivery Types \n\n• Prepaid account. \n• Adding to your own account\n\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscriptions","• 1 Year Subscription\nDelivery Types \n• Prepaid account. \n• Adding to your own account\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscription","85-2926654-18.webp","40","35","2023-01-26 18:34:00","2022-12-26 10:43:22","1","23","97","0","46","1","0","0","100","2022-12-26 10:43:22"),
("86","Playstation Plus 1 Year Extra","Playstation Plus 1 Year Extra","playstation-plus-1-year-extra","• 1 Year Subscription\n\nDelivery Types \n\n• Prepaid account. \n• Adding to your own account\n\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscriptions","• 1 Year Subscription\nDelivery Types \n• Prepaid account. \n• Adding to your own account\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscription","86-9917953-20.webp","35","31","2023-01-26 18:41:00","2022-12-26 10:44:35","1","23","97","0","52","1","0","0","99","2022-12-26 10:44:35"),
("87","Playstation Plus 1 Year Essential","Playstation Plus 1 Year Essential","playstation-plus-1-year-essential","• 1 Year Subscription\n\nDelivery Types \n\n• Prepaid account. \n• Adding to your own account\n\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscriptions","• 1 Year Subscription\nDelivery Types \n• Prepaid account. \n• Adding to your own account\nCheck for details https://www.playstation.com/tr-tr/ps-plus/#subscription","87-6894426-19.webp","26","22","2023-01-26 18:41:00","2022-12-26 10:45:41","1","23","97","0","37","1","0","0","100","2022-12-26 10:45:41"),
("88","Office 2019 Pro Plus Key","Office 2019 Pro Plus Key","office-2019-pro-plus-key","Lifetime use\n1 PC\nLicense Key must be used within 24 hours.","Lifetime use\n1 PC\nLicense Key must be used within 24 hours.","88-9840046-office-2019-key-92905013.webp","5","0","0000-00-00 00:00:00","2022-12-27 13:46:24","1","63","96","0","20","1","0","0","49","2022-12-27 13:46:24"),
("90","Driver Booster 10 Pro Key","Driver Booster 10 Pro Key","driver-booster-10-pro-key-4130","Driver Booster 10 PRO KEY\n\n﻿\n\nDriver Booster 10 PRO BENEFITS\n\nDriver Database: 8,500,000+\n\nDriver Download Speed: 100% Faster\n\nAutomatically Update, Backup and Restore Drivers\n\nGet Necessary Game Components\n\nOne Click Fix for 35+ Hardware Issues\n\nUpdate and Install Network Drivers Offline\n\nPriority to Update Game Ready Drivers","Driver Booster 10 PRO KEY\n﻿\nDriver Booster 10 PRO BENEFITS\nDriver Database: 8,500,000+\nDriver Download Speed: 100% Faster\nAutomatically Update, Backup and Resto","90-4921078-driver-booster-9-key-18020327.webp","6","0","0000-00-00 00:00:00","2022-12-27 13:51:58","1","63","86","0","15","1","0","0","4","2022-12-27 22:33:55"),
("91","Advanced SystemCare 16 Pro Key","Advanced SystemCare 16 Pro Key","advanced-systemcare-16-pro-key","Features of Advanced SystemCare 16 Pro\n\nInternet Connection: 300% Faster\n\nAccelerate PC Performance: 200% Faster\n\nThoroughly Cleans PC\n\nReal-Time Protection Against Virus Infection\n\nStop Tracking Online and Protect Your Privacy\n\nAutomatic Maintenance for PC as scheduled\n\nKeeps All Software Up-to-Date with 1 Click\n\nAutomatic Update to Latest Version\n","Features of Advanced SystemCare 16 Pro\nInternet Connection: 300% Faster\nAccelerate PC Performance: 200% Faster\nThoroughly Cleans PC\nReal-Time Protection Against","91-5393126-asc_96.webp","6","0","0000-00-00 00:00:00","2022-12-27 14:33:21","1","63","86","0","15","1","0","0","8","2022-12-27 14:33:21"),
("92","Paramount+ Lifetime Upgrade","lifetime paramount account","paramount-lifetime-upgrade","Full access.\nFully private on your own mail.","Full access.\nFully private on your own mail.","92-6887391-37.webp","30","28","2023-01-31 18:09:00","2022-12-28 10:14:25","1","23","40","0","12","1","0","0","100","2022-12-28 10:14:25"),
("93","HBO Max 1 Year Upgrade","HBO Max 1 Year Upgrade","hbo-max-1-year-upgrade","Full access\nFully private on your own mail.","Full access\nFully private on your own mail.","93-8454718-36.webp","25","24","2023-01-31 18:11:00","2022-12-28 10:14:48","1","23","40","0","15","1","0","0","100","2022-12-28 10:14:48"),
("94","XBOX Game Pass Ultimate 3 Year","XBOX Game Pass Ultimate 3 Year","xbox-game-pass-ultimate-3-year","* 3 Year original price = 180$ + 40$.\n* **Full Access**\n* **Fully Private **\n* **Upgrading on your own mail.**\n* \n* **3 Year Full warranty prepaid.**","3 Year original price = 180$ + 40$.Full AccessFully Private Upgrading on your own mail.3 Year Full warranty prepaid.","94-4755573-3year_xbox.webp","180","60","2023-01-31 18:30:00","2022-12-28 10:33:40","1","23","62","0","314","1","0","0","95","2022-12-29 20:22:17");




CREATE TABLE `urun_galeri` (
  `dosya_id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(530) DEFAULT NULL,
  `uzanti` varchar(530) DEFAULT NULL,
  `boyut` varchar(530) DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `urun` int(11) DEFAULT NULL,
  `sira` int(11) NOT NULL DEFAULT 999,
  PRIMARY KEY (`dosya_id`),
  KEY `urun` (`urun`),
  CONSTRAINT `urun_galeri_ibfk_1` FOREIGN KEY (`urun`) REFERENCES `urun` (`urun_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `yazi` (
  `yazi_id` int(11) NOT NULL AUTO_INCREMENT,
  `yazi_baslik` varchar(455) DEFAULT NULL,
  `yazi_detay` longtext DEFAULT NULL,
  `yazi_resim` varchar(455) DEFAULT NULL,
  `yazi_eklenme` datetime DEFAULT current_timestamp(),
  `yazi_okunma` int(11) NOT NULL DEFAULT 0,
  `yazi_link` varchar(455) DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`yazi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO yazi VALUES
("3","How to become a seller status?","<p></p><p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><b><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span></b><span style=\"font-size: 16px;\"><b>﻿How to become a seller status and publish your items?</b></span></p><p><span style=\"font-size: 16px;\"><b><br></b><br></span><b>Well its easy to do it.But don\'t forget Selligo might be asks for fee to prevent scams and be sure that clients are safe here.</b></p><p><b><br></b></p><p></p><h1 class=\"scribe-title\">Introductions</h1><p class=\"scribe-author\"><br></p><p class=\"scribe-author\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"font-weight: bolder; font-size: 24px;\"><i>1. Click \"Register | Login\"</i></span><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/E6s-aKW9f9dNzuTubxWGhQTuPiS8lAt-V9eMcTfssVg/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:995:0/wm:0.8:nowe:255:27:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2ZkMDBhZWMwLTVhZjAtNGQ3Ny1hMTc2LWVkNDlmZTdjOTlkMi9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"background-color: inherit;\"><span style=\"font-size: 24px;\"><i><b>2. Click \"Login\"</b></i></span><br></span></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/w9KDghGDCIkqvqZUycgrRoRh1OYSBDLs2OJbnTk7fBY/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:391:432/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2M2MWY2NjcxLWQwNTgtNDUzZi05NzUxLTVjZDM1OTllMDJjZS9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"background-color: inherit;\"><i><b><span style=\"font-size: 24px;\">3. Click \"Become a Seller\"</span></b></i><br></span></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/YSi6zhxUxMYcB6CNP_bIw1iDChyo9lQ9x1KGHh5wWJk/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:363:426/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2MwMGFkNmIwLTVkNGMtNGJjYi05NTM3LTA2ZGY1ZmU2ZjA3Yy9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px;\">4. Type your store name.</span></b></i></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/mHR7aDYbB2EUxIl6TB30b_7E37tYZI1QmHfUSMgx-bk/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:334:288/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2Y2OGUxYWEwLWVjNTYtNGI4MC05ZmQ2LWQ1MmQzNWY3ODBhMS9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px;\">5. Type what a list of kind of products will you sell.</span></b></i></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/JfEwvHgzpk9ICDFfwJOQYw32Wc0BKaM3rH1XGX-hCZM/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:3:405/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzc1ZmYwNGU0LWJhMmYtNGIyMS1iOWJiLWY3YTRjYjA0YTZlYi9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-screenshot-container\"><br></p><p class=\"scribe-screenshot-container\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px;\">6. Click \"Submit Application\"</span></b></i><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/XBvEMZ0HKo7EWheoDNm-4e0q7mxgT0SIvOwEZaLAWHc/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:343:188/wm:0.8:nowe:365:192:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2NhZGZlZThiLThhNTktNDlmOS04YTVkLWViMzE3OWYzMWJmOC91c2VyX2Nyb3BwZWRfc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"background-color: inherit;\"><b><i><span style=\"font-size: 24px;\">7. Click \"OK\"</span></i></b><br></span></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/EzsiBp8iuWOAyG1g9wWKL5UyEl-osU43JCIBW5fNzRQ/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:567:379/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzc5Y2Y2MTY4LWE1OGUtNGFlZS1hMTYxLTk5MThkNTk0ZmY2Ny9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px;\">8. Click \"Seller Application\"</span>\n</b></i></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/cktTI4p7XHWJo10M_QDQr9bQquJff96LC5NPQIsUJos/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:478:332/wm:0.8:nowe:255:171:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzg1YzVkNDI1LTRhZjctNDc2MC1iNzg2LTQ4Y2UyYzk3MWM0NS91c2VyX2Nyb3BwZWRfc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><b style=\"box-sizing: border-box; font-weight: bolder;\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" left;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><i style=\"box-sizing: border-box;\"><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">9. Check your status.</span></i></b></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/2vjoStwki8lqEUXz2uuDYggzjuKX9wopqhvdF9s-UtE/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:660:287/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzk4ZjA3NzlmLWVhZmMtNGFkYi1hMzJhLWRjNDdlMTJjZWNkNy9hc2NyZWVuc2hvdC5qcGVn\"></p><h4 class=\"scribe-footer\"><br>10. After approval.\nCongratulations! Now you can access the panel and add new products to sell. By the way, don\'t forget the rules!</h4><span style=\"background-color: rgb(255, 255, 0);\"><b><i><br></i></b></span><br><p></p><p></p>","3-2270729-blog-how-to-seller.webp","2022-12-12 07:47:46","51","how-to-become-a-seller-status","1"),
("4","Epic Games Store giving away daily free games – here’s what they are","<p><span style=\"background-color: inherit;\"><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 16px;\">﻿</span><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 16px;\">The Epic Games Store is running a</span><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 16px;\">&nbsp;</span><font face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 16px; padding-bottom: 0.3em; background-image: linear-gradient(90deg, rgba(246, 80, 2, 0.8) 70%, transparent 0px); background-size: 4px 1px; background-position: 0px 1.2em; background-repeat: repeat no-repeat;\">free games</span></font><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 16px;\">&nbsp;</span><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 16px;\">giveaway over the festive season, with a new game being given away to all every day for a 15-day period. You don’t have long then to get each game you want, so we’re putting together a list of what’s currently free to help you keep track of what you can&nbsp;pick up during the Christmas period.</span><br></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"background-color: inherit;\">You only have 24 hours to redeem each free game from the Epic Games Store in your library, with<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;the new game becoming available at 8am PST / 11am EST / 4pm GMT / 5pm CET / 3am AEDT</span>&nbsp;(the next morning).</span></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 15px 0px 0px; border: 0px; vertical-align: baseline; line-height: 28px; font-family: Helvetica, Arial, sans-serif; font-size: 24px !important;\"><span style=\"background-color: inherit;\">Current Epic Games Store free game</span></h2><ul style=\"margin-right: 0px; margin-bottom: 23px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; list-style: none; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(\" wp-content=\"\" themes=\"\" pcgamesn=\"\" dist=\"\" images=\"\" bullet.svg\");=\"\" background-position:=\"\" 0px=\"\" 10px;=\"\" background-size:=\"\" initial;=\"\" background-repeat:=\"\" no-repeat;=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" line-height:=\"\" 22px;\"=\"\"><span style=\"background-color: inherit;\">The free game right now&nbsp;is<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><b style=\"\">&nbsp;</b><a href=\"https://launcher.store.epicgames.com/tr/p/mortal-shell\" target=\"_blank\"><b style=\"\"><u>Mortal Shell</u></b></a><br></span></span></li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"background-color: inherit;\">Looking at the preview for tomorrow, it seems likely that the next free game will be a Dishonored game, as the wrapping paper features the symbol of the Outsider from the immersive sim Bethesda RPG game.</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"background-color: inherit;\">The free game giveaway started on December 15, which means you should check back in every day at around the same time until December 30 to nab your games. Here are the games that have already been given away by the Epic Games Store.</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Bloons Tower Defence 6</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Horizon Chase Turbo</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Costume Quest 2</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Sable</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Them’s Fightin’ Herds</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Wolfenstein: The New Order</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>LEGO Builder’s Journey</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Fallout: A Post Nuclear Role Playing Game, Fallout 2, Fallout Tactics: Brotherhood of Steel</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Encased</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Metro Last Light: Redux</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(&quot;&quot;);\" \");\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>Death Stranding</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(\" \");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•&nbsp;</span>FIST: Forged in Shadow Torch</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(\" \");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><span style=\"background-color: inherit;\"><span style=\"font-family: arial, sans-serif; font-weight: bolder;\">•</span><b style=\"font-family: arial, sans-serif;\">&nbsp;</b>Severed Steel</span></p><p style=\"margin: 0px 0px 5px; padding: 5px 0px 0px 20px; border: 0px; vertical-align: baseline; background-image: url(\" \");=\"\" background-position:=\"\" initial;=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><span style=\"background-color: inherit;\"><b style=\"font-family: arial, sans-serif;\">•&nbsp;</b>Mortal Shell</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;You can find the Epic Games Store free game of the day over on the&nbsp;<a href=\"https://store.epicgames.com/en-US/free-games\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"text_link\" style=\"margin: 0px; padding: 0px 0px 0.3em; border: 0px; vertical-align: baseline; background-image: linear-gradient(90deg, rgba(246, 80, 2, 0.8) 70%, transparent 0px); background-position: 0px 1.2em; background-repeat: repeat-x; background-size: 4px 1px;\">store page</a>, but remember that it changes every day.</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; font-family: Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;It looks like the weekly free game model has been replaced with this daily iteration over the festive period, which certainly isn’t a problem, as more free games are always good. Just keep in mind that you don’t need to be thinking about it on a weekly basis.<span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span></span></p>","4-9157998-epic-games-store-1373862.webp","2022-12-29 06:23:44","22","epic-games-store-giving-away-daily-free-games-here-s-what-they-are","1"),
("5","This Minecraft map is straight out of Nier Automata","<p><span style=\"background-color: inherit;\"><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">A custom Minecraft map of a ruined city is haunting and beautiful, reminiscent of the decaying, crumbling vision of the future of Earth in Nier Automata</span> &nbsp; &nbsp; &nbsp; </span></p><p><span style=\"background-color: inherit;\">&nbsp;&nbsp;&nbsp;&nbsp;The sun-drenched ruins of Nier Automata seem to have inspired a custom Minecraft Map, which you can download and explore in your own copy of the massively popular sandbox game. ‘Abandoned City’ is an ambitious and impressive map that looks even better with some choice Minecraft mods and shaders installed. &nbsp;Abandoned City was created by Minecraft modder Viator. It’s an expansive city map, featuring ruined office buildings and skyscrapers that have become overgrown with moss and other foliage, while water has covered the pavement below. It’s strikingly similar in tone and architecture to the City Ruins zone in Nier Automata, even including some buildings that have slumped over to the side. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The tilted buildings are always neat to see, but they’re particularly impressive rendered so well in Minecraft’s rigid cube-based grid. Buildings lean at varying angles, too – the ways they lean look surprisingly natural in this map, which must have taken a lot of attention to get right. &nbsp;There’s lots to explore in <a href=\"https://www.planetminecraft.com/project/abandoned-city-5804681/\" target=\"_blank\">Abandoned City</a>, including an NPC village. Viator – who’s been working on this map for more than a year – recommends using the <a href=\"https://www.optifine.net/home\" target=\"_blank\">OptiFine optimisation</a> <a href=\"https://www.optifine.net/home\" target=\"_blank\">mod</a>, version 3.0 of the <a href=\"https://www.curseforge.com/minecraft/customization/nostalgia-shader\" target=\"_blank\">Nostalgia Shader</a> to get the best results with the map. &nbsp;If you’re looking for the best Minecraft Christmas builds and seeds, you guessed it – we’ve got a guide all about them. &nbsp; &nbsp;﻿﻿</span><br></p>","5-8810710-minecraft-map-nier-automata-550x309.webp","2022-12-29 06:34:35","17","this-minecraft-map-is-straight-out-of-nier-automata","1"),
("6","This keyboard runs the Unreal Engine to display full interactive video","<p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\"><br></span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"background-color: inherit;\"> &nbsp;&nbsp;</span><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/OIIYxlIEEt0\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p><p><span style=\"background-color: inherit;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Modern keyboards are often a colour-shifting RGB feast sitting right at the front of your desk. So why not just make the whole thing a screen? Or include a CPU and GPU that can run Unreal Engine? Why not indeed, says finalmouse, makers of the upcoming Centerpiece keyboard that does exactly this.<br></span></p><p><span style=\"background-color: inherit;\">The announcement video for the Centrepiece is embedded at the top of this article, and really shows off the idea. Displaying a whole interactive screen behind crystal clear keys gives an amazing visual. Not only are the animations beautiful, but it can respond to key presses. LED-lit keyboards can have modes to do this today, but it definitely hits different when the result is rippling water as opposed to just coloured lights.<br></span></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(237,=\"\" 237,=\"\" 237);\"=\"\"><span style=\"background-color: inherit;\">Featuring a CPU, GPU, and clear graphical capabilities, the Centrepiece ends up looking a bit more like a weird all-in-one PC rather than just a keyboard. When you consider that, the $349 USD price tag makes a bit of sense. That\'s a pricy keyboard, but given how flashy it looks it could be worth it. Or, depending on the actual capabilities of this unit it could be a very cheap and unique PC.&nbsp;</span></p><div id=\"ad-unit-2\" class=\"ad-unit\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(237,=\"\" 237,=\"\" 237);\"=\"\"></div><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(237,=\"\" 237,=\"\" 237);\"=\"\"><span style=\"background-color: inherit;\">Either way, I really want one. If it is anything at all like the video, the Centrepiece will be beautiful. There are little minigames you can play in the keyboard, and it even boasts a skin store, though that seems a little early. Still, it could take those in-game keyboard effects to a new level I\'d be very keen to see.</span></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(237,=\"\" 237,=\"\" 237);\"=\"\"><span style=\"background-color: inherit;\">Even if it\'s not everything the video promises, which is very likely, it\'s a cool idea and I\'m always keen to see more of those. Especially if they help to bring a nice aesthetic touch to the world of gaming. I\'m hoping to have digital fish swimming around my keyboard when the Centrepiece launches sometime in 2023.<span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span></span></p>","6-6357466-keybord.webp","2022-12-29 06:52:35","29","this-keyboard-runs-the-unreal-engine-to-display-full-interactive-video","1");




CREATE TABLE `yildiz` (
  `yildiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `urun` int(11) NOT NULL,
  `kullanici` int(11) NOT NULL,
  `deger` varchar(3) NOT NULL DEFAULT '0',
  `yildiz_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `icerik` text DEFAULT NULL,
  `durum` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`yildiz_id`),
  KEY `urun` (`urun`),
  KEY `kullanici` (`kullanici`),
  CONSTRAINT `yildiz_ibfk_1` FOREIGN KEY (`urun`) REFERENCES `urun` (`urun_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yildiz_ibfk_2` FOREIGN KEY (`kullanici`) REFERENCES `kullanicilar` (`kul_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO yildiz VALUES
("13","31","32","5","2022-12-15 08:13:21","Perfectt.              ","1"),
("14","30","32","5","2022-12-15 08:13:54","Just bought second product all good. :3","1"),
("15","32","34","4.8","2022-12-20 09:01:02","super fast delivered.Thanks selligo","1"),
("16","32","40","5","2022-12-20 14:35:00","auto delivery. no problem with my account.","1"),
("17","49","51","5","2022-12-21 15:42:29","got it really quick maaan you know your business.","1"),
("18","39","51","5","2022-12-21 15:42:54","free 1$ gotcha &amp;lt;3","1"),
("19","49","53","5","2022-12-21 16:34:34","very fast thanks","1"),
("20","32","53","4.8","2022-12-21 16:34:57","delivered instantly will buy later again","1"),
("21","84","54","5","2022-12-23 08:09:24","Bought 5x without a problem good service","1"),
("22","84","55","4.8","2022-12-23 08:36:33","ez                                           ","1"),
("23","84","56","5","2022-12-23 08:43:56","fast            ","1"),
("24","84","58","4.7","2022-12-23 14:33:35","smooth :3      ","1"),
("25","32","58","5","2022-12-23 14:50:58","dopeeeee           ","1"),
("26","88","58","4.6","2022-12-27 15:11:45","nothing to complain ","1"),
("27","94","67","4.9","2022-12-28 11:51:57","Delivered after 20 min. And yes its 3 year prepaid. Thanks","1"),
("28","94","72","5","2022-12-29 06:42:42","process was very well. Bought %10 discounted.\nChecked account details and yes, its true.","1"),
("29","37","72","4.9","2022-12-29 06:44:52","got exactly 153 members :kek: \nsuper fast.","1"),
("30","94","73","5","2022-12-29 12:23:30","this price is insane lol.","1"),
("31","94","79","5","2023-01-02 06:54:52","fucking good       ","1"),
("32","30","83","4.9","2023-01-07 20:51:36","fast and i loved customer support","1"),
("33","94","83","4.8","2023-01-07 20:52:18","works great    ","1");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;