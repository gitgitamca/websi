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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;


INSERT INTO abone VALUES
("1","27aksoy27@gmail.com","2022-08-20 22:15:41","1"),
("2","batujano@gmail.com","2022-11-25 18:45:45","1"),
("3","maykilrowdy10@gmail.com","2022-11-27 10:29:32","1"),
("4","reklamlar8927@gmail.com","2022-11-27 10:30:18","1"),
("5","batuccanx@outlook.com","2022-12-10 14:22:11","1");




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
("1","https://selligo.shop","Buy quality cheaper...","Netflix, Spotify, Tinder, Disney+ all accounts here for cheaper, trustful and more proffessional.","selligologo.png","selligologo.png","selligologo1.png","G-MDPW4R9PTR","----","465","staff.selligo@gmail.com","R@Fv4tX!gEmK94n","1","1","3","0","----","----","","----","----","----","----","5","1","staff.selligo@gmail.com","----","","","1","0","0","----","----","----","----","----","0","----","----","----","----","----","----","----","----","----","1","1","1","----","----","665833797323-q4rbi58qihtkt1jafftola319u2r6u3d.apps.googleusercontent.com","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","We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.","cerez-politikasi","1","<img src=\"https://lexa.yazilimdemo.net/assets/images/kare_reklam.png\" class=\"img-fluid\">","<img src=\"https://lexa.yazilimdemo.net/assets/images/yatay_reklam.png\" class=\"img-fluid\">","0","<!--Start of Tawk.to Script-->\n<script type=\"text/javascript\">\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\n(function(){\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\ns1.async=true;\ns1.src=\'https://embed.tawk.to/62fcf41a54f06e12d88f2c87/1gam1j239\';\ns1.charset=\'UTF-8\';\ns1.setAttribute(\'crossorigin\',\'*\');\ns0.parentNode.insertBefore(s1,s0);\n})();\n</script>\n<!--End of Tawk.to Script-->","","0","1","https://discord.gg/selligo","https://twitter.com","https://instagram.com","https://facebook.com","Selligo LLC");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO basvuru VALUES
("1","17","Animi ipsam alias b","2022-08-17 23:03:39","2","awdqwawqas"),
("2","19","Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.","2022-08-20 10:37:44","2","İyi satışlar"),
("3","23","YOK","2022-11-27 18:46:47","2","welcome"),
("4","26","dadda","2022-12-05 16:59:32","1",""),
("5","27","asdsad","2022-12-10 14:51:26","1","");




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
("309","24","aaaa","2022-11-27 19:14:12","2","2022-11-28 03:15:39","24","19","0000-00-00 00:00:00");




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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `inceleme_sayisi` (
  `inceleme_sayisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `inceleme_sayisi` varchar(200) NOT NULL DEFAULT '0',
  `tarih` date DEFAULT NULL,
  `urun` int(11) DEFAULT NULL,
  PRIMARY KEY (`inceleme_sayisi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=494 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
("493","0","2022-12-11","77");




CREATE TABLE `kategori` (
  `kat_id` int(11) NOT NULL AUTO_INCREMENT,
  `kat_isim` varchar(100) NOT NULL,
  `kat_link` varchar(100) NOT NULL,
  `kat_ust` int(11) NOT NULL DEFAULT 0,
  `kat_see` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`kat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


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
("96","Office 365","office-365","77","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO kullanicilar VALUES
("1","-326.5","&Ouml;kkeş","Aksoy","","aksoy","aksoyhlc@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","1","2","T&uuml;rkiye","Gaziantep","27500","Eos aliquid rerum q","2019-04-09 21:18:59","default.png","Aksoyhlc","","","","","1","1","82e908f9-491c-4da6-b31d-a34071c7c6d2","","0","","","0","","","2022-12-08 23:59:25","0","0","","","1","","1","2022-08-10 17:35:46","4ca2a063cdadeae2024a2609e6463759","","","0","0","","0","","95.10.66.219","102653819093694057365"),
("17","-36.5","Mağaza","Test","Mağaza - 1","magaza-1","magaza@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27500","Gaziantep","2022-08-17 23:02:20","215651479941screenshot_20png.png","","","","","","1","1","","","0","2022-08-17 23:05:21","","0","","","2022-12-07 23:52:13","1","1","#####  **Lorem Ipsum Nedir?**\n**Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. **\n*Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı*\n1500\'lerden beri endüstri standardı sahte ~~metinler olarak kullanılmıştır~~. \nBeşyüz yıl boyunca varlığını sürdürmekle kalmamış. \n> 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda.\n\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text     | Text     |\n\n\n1. Liste öğesi\n2. Liste öğesi\n3. Liste öğresi\n","9QPI7COQKAO3K8JQN1W65S6DNZ4BODKXG4BS9LQS","1","05555555555","1","2022-08-17 23:03:10","ec7cef4b6d3d172e32dcc3aafa126f0c","2022-08-17 23:08:24","2023-08-17 23:08:24","1","1","","0","","95.10.66.219","112661495406491164710"),
("18","20286","Normal","Kullanıcı","","aksoyhlc","kullanici@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","1","0","T&uuml;rkiye","Ankara","6666","Ankara","2022-08-18 12:16:48","default.png","","","","","","1","1","","","0","","E7SBFJJ5FNOWMPYC2JJ5DLHYDBJJOCSU","1","","","2022-11-28 01:35:29","0","0","","","1","","1","2022-08-18 12:18:17","9d89c776918c2caaf15205b89bc49720","","","0","1","2022-08-23 10:02:01","0","","62.248.48.239",""),
("19","-36.5","Mağaza","Deneme","Mağaza - 2","magaza-2","magaza2@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27000","Adres","2022-08-20 10:36:55","default.png","","","","","","1","1","","","0","2022-08-20 10:38:17","","0","","","2022-12-08 00:04:12","0","0","","","1","","1","2022-08-20 11:37:11","9e89c776918c2caaf15205b89bc49720","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","2022-08-24 00:11:27","0","","95.10.66.219",""),
("20","-326.5","&Ouml;mer","Demirel","","DarthVader","omerdemrel419@gmail.com","b88ad862ecd8675d61da7aaf218e7b39","5050514988","","1","0","","","","","2022-11-15 11:46:51","default.png","","","","","","1","1","","","0","","","0","","","2022-11-15 19:55:07","0","0","","I4A5598JNCUWEZ3MXYVYJ2BNZO26GLSTD7YCTB1M","1","","0","","","","","0","0","","0","","37.155.145.12",""),
("21","-326.5","akın","yar","","kuluxx","qdr22034@cdfaq.com","80d97c074bc0430a5d250ffdd93dffc2","5153123123","","1","0","","","","","2022-11-25 09:36:00","default.png","","","","","","1","1","","","0","","","0","","","2022-11-25 17:36:00","0","0","","6NMIKPNWQOR1SD6JIXW3QI3RV9DHHSNQAL7MAL9L","1","","0","","f4c3aa3083968612a2907e2ec058e951","","","0","0","","0","","78.168.8.199",""),
("22","-36.5","hakan","papucuyarım","","crazyfrog","emre.supreme11@gmail.com","2e5c08c6a0054773ab2e1c8e42c01ef2","5366543939","","0","0","türkiye","ankara","ankara","ankara","2022-11-25 09:41:33","default.png","","","","","","1","1","","","0","","","1","","","2022-11-28 03:04:13","0","0","","HVZ92Z11YU19YIHUIG52NUQARRBB7MC1TFHG5TWY","1","","1","","","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","","0","","78.168.8.199",""),
("23","-36.5","Admin","Selligo","Selligo","selligo-3764","reklamlar8927@gmail.com","cd2879586d74f739baa8d060fd2efaff","","","1","0","Turkey","llll","","","2022-11-27 17:37:24","23-6645478-adobe-creative-cloud.webp","","","","","","1","0","","","1","2022-11-28 02:48:03","UBLKUG2AFN2CSSD5HEG7T2RKR7CEVWHG","1","","","2022-12-11 01:00:16","0","0","","JDGEACK81U6EIZRMTG31XKQ9ZII7PV9ITAJEXWDH","1","","1","","a2530dc448076a3bb1978d8349329a21","0000-00-00 00:00:00","0000-00-00 00:00:00","1","1","","0","","95.10.66.219",""),
("24","-276.5","hakan","kutlu","","kalulu111","owe00574@xcoxc.com","2e5c08c6a0054773ab2e1c8e42c01ef2","2334444444","","1","0","","","","","2022-11-27 19:07:12","default.png","","","","","","1","1","","","0","","","0","","","2022-11-28 03:07:12","0","0","","69XPKL7VO9V8KPATL7HHYAYN9VYSBXWZVPL5I5PS","1","","1","","b8e7a8fd49a9560daf36b69dd1b967d4","","","0","1","","0","","78.168.8.199",""),
("25","-87.5","ASDASD","ASDASD","","AAAAAA","caneykf@karenkey.com","cd2879586d74f739baa8d060fd2efaff","5555555556","","1","0","","","","","2022-11-30 08:06:18","default.png","","","","","","1","1","","","0","","","0","","","2022-11-30 17:18:30","0","0","","4FHV6SU8YHNNI91ZXYN1FW8NISZYPDARW2LYRFDI","1","","1","","3550ac8d788894425476a1b57a23d6d2","","","0","1","","0","","62.248.48.239",""),
("26","32.5","Adam","koll","","adamcall","nwardibsefb@karenkey.com","cd2879586d74f739baa8d060fd2efaff","","","1","0","usa","lahb","","","2022-12-01 08:19:02","default.png","","","","","","1","1","","","0","","4UGVXMR5OKLVJUKT3KXYWFMLLOJJLELL","1","","yfyghjgukhk","2022-12-07 22:13:25","0","0","","CU3U3VIGMR1OV3A1Z6ML9W9L591TIFC1WBZPW3R8","1","","1","","1f2c1c0c0a90c68d6aec5338cb6a0931","","","0","0","","0","","62.248.48.239",""),
("27","13.5","asdas","dasdasd","asdsad","adamcalla","nxqzqvk@karenkey.com","cd2879586d74f739baa8d060fd2efaff","9999999999","","1","0","","","","","2022-12-07 18:10:40","default.png","","","","","","1","1","","","0","","","0","","","2022-12-11 00:59:56","0","0","","K4FXRX9CNUYWGI6KB2BHU2RNHTT4BZZMGNLW63UZ","1","","1","","","","","0","0","","0","","62.248.48.239","");




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO kuponlar VALUES
("1","DEMO1","","1","15","0","2023-04-30 14:52:00","2022-08-18 14:52:24","99999999","0"),
("2","DEMO2","","1","1","0","2022-08-01 14:50:00","2022-08-18 14:52:44","10","0"),
("3","MAGAZA1OZEL","","1","20","17","2023-03-30 15:00:00","2022-08-18 14:53:15","99999999","0"),
("5","FAST","","1","10","23","2022-12-12 01:00:00","2022-12-10 17:01:13","1","0");




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
("21","Demo Başlık","<p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><span style=\"font-size: 18px;\">Lorem Ipsum</span></strong><span style=\"font-size: 18px;\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span></p><p><img src=\"https://lexa.yazilimdemo.net/popupdemo.jpg\" style=\"width: 100%;\"></p>","1","1059","2022-08-03 15:22:38","0"),
("22","Test","<p><span style=\"font-size: 16px;\">﻿test içerik metin</span><br></p>","0","42","2022-08-25 15:04:21","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


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
("28","27","32","4.5","1","2022-12-10 17:08:52","2","","2022-12-10 17:08:52","3","0.135","1","","FAST","5","0.5","10","4.5");




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
("1","Başlık - 1","Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri ","1-5709355-aksoyhlc-logopng.webp","View","https://aksoyhlc.net","1","0","0","2022-04-26 22:02:31"),
("2","Başlık - 2","Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri ","2-9011805-aksoyhlc-logo.webp","Go to link","https://satis.aksoyhlc.net","1","1","0","2022-04-26 23:24:29");




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO sss VALUES
("1"," How can i become a seller ?","Not everyone can be a seller, only those who selected by us can become sellers. If you want to be a seller you need to be approved by us <a href=\"https://selligo.shop/kayit?satici=true\">\nby filling this form.</a>");




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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO ticket VALUES
("1","18","17","2022-08-18 14:39:01","0","0","Orta","Ürün Bilgileri","2022-08-18 14:39:01","1"),
("2","18","17","2022-08-18 14:44:23","0","1","Orta","Satış Öncesi Bilgi","2022-08-18 14:48:46","1"),
("3","18","17","2022-08-18 14:50:21","0","2","Acil","Mağaza Destek Bileti Test","2022-08-25 14:23:36","1"),
("6","24","23","2022-11-27 19:19:27","0","0","Orta","blabla","2022-11-28 03:19:48","19"),
("7","26","19","2022-12-04 17:57:49","0","1","Orta","aaa","2022-12-05 01:57:49",""),
("8","26","17","2022-12-05 17:07:07","0","1","Orta","saa","2022-12-06 01:07:07","23"),
("9","26","23","2022-12-06 14:46:39","0","1","Orta","asdasdasd","2022-12-06 22:46:39",""),
("10","27","23","2022-12-08 16:27:58","0","1","Normal","asd","2022-12-09 00:27:58","");




CREATE TABLE `ticket_bag` (
  `ticket_bag_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `ticket_gonderen` int(11) DEFAULT NULL,
  `ticket_gonderilme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `ticket_detay` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ticket_bag_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `ticket_bag_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
("45","10","0","2022-12-08 16:27:58","asd");




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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO urun VALUES
("19","twitter","twitter","twitter","twitter","twitter","19-5041655-paragraf-metniniz.webp","11","22","2022-11-16 18:02:00","2022-11-25 10:04:52","1","22","1","0","9","1","0","0","15","2022-11-25 10:04:52"),
("30","Netflix 12 Month Account","Netflix 12 Month Account","netflix-12-month","● Netflix 12 Month Account\n\n●  Changeable account information","● Netflix 12 Month Account\n●  Changeable account information","30-8815735-1.webp","28.99","25","2022-12-23 20:27:00","2022-12-08 12:32:17","1","23","45","0","14","1","0","0","99","2022-12-10 22:57:17"),
("31","Spotify 1 Month Account","Spotify 1 Month Account","spotify-1-month-premium-account","● Spotify 1 Month Account\n\n● Changeable account information\n\n\n","● Spotify 1 Month Account\n● Changeable account information","31-9138592-2.webp","2.99","2","2022-12-23 20:33:00","2022-12-08 12:35:52","1","23","46","0","20","1","0","0","99","2022-12-10 22:57:23"),
("32","Spotify 3 Month Account","Spotify 3 Month Account","spotify-3-month-premium-account","● Spotify 3 Month Account\n\n●  Changeable account information","● Spotify 3 Month Account\n●  Changeable account information","32-7273545-2.webp","6.99","5","2022-12-23 20:37:00","2022-12-08 12:38:10","1","23","46","0","12","1","0","0","98","2022-12-10 22:33:05"),
("33","Spotify 6 Month Account","Spotify 6 Month Account","spotify-6-month-account","● Spotify 6 Month Account\n\n●  Changeable account information","● Spotify 6 Month Account\n●  Changeable account information","33-4422816-2.webp","11.99","10","2022-12-23 20:41:00","2022-12-08 12:48:03","1","23","46","0","9","1","0","0","100","2022-12-10 22:33:14"),
("34","Spotify 12 Month Account","Spotify 12 Month Account","spotify-12-month-account","● Spotify 12 Month Account\n\n● Account information may change\n","● Spotify 12 Month Account\n● Account information may change","34-4592401-2.webp","20.99","19","2022-12-23 20:59:00","2022-12-08 12:59:47","1","23","46","0","6","1","0","0","100","2022-12-10 22:04:47"),
("35","Youtube Premium 1 Month Account","Youtube Premium 1 Month Account","youtube-premium-1-month","● Youtube  1 Month Premium Account\n\n●  Changeable account information\n","● Youtube  1 Month Premium Account\n●  Changeable account information","35-8321334-3.webp","4.99","3","2022-12-23 21:01:00","2022-12-08 13:02:09","1","23","35","0","10","1","0","0","100","2022-12-10 23:04:46"),
("36","Youtube Premium 12 Month Account","Youtube Premium 12 Month Account","youtube-premium-12-month","● Youtube 12 Month Premium Account\n\n●  Changeable account information\n","● Youtube 12 Month Premium Account\n●  Changeable account information","36-8725792-3.webp","39.99","38","2022-12-23 21:02:00","2022-12-08 13:03:50","1","23","35","0","8","1","0","0","100","2022-12-10 23:04:59"),
("37","Discord 1 Month 100x Online Members ","Discord 1 Month 100x Online Members ","discord-100x-online-members","● Discord 1 month 100x online members\n\n● Send us your Discord server link.\n\n● They are active 24/7.\n\n● It will not harm your account or discord server.\n\n● Users have different names.","● Discord 1 month 100x online members\n● Send us your Discord server link.\n● They are active 24/7.\n● It will not harm your account or discord server.\n● Users hav","37-9359278-4.webp","5.99","5","2022-12-23 21:06:00","2022-12-08 13:06:32","1","23","57","0","8","1","0","0","100","2022-12-10 21:51:06"),
("38","Discord 100x Offline Members","Discord 100x Offline Members","discord-100x-offline-members","● Discord 1 month 100x offline members.\n\n● 1 month warranty.\n\n● Send us your Discord server link.\n\n● They are active 24/7.\n\n● It will not harm your account or discord server.\n\n● Users have different names.","● Discord 1 month 100x offline members.\n● 1 month warranty.\n● Send us your Discord server link.\n● They are active 24/7.\n● It will not harm your account or disco","38-3752389-4.webp","3.99","3","2022-12-23 21:08:00","2022-12-08 13:08:56","1","23","57","0","6","1","0","0","100","2022-12-10 21:42:47"),
("39","Instagram 1K Followers","Instagram 1K Followers","instagram-1k-followers","● Simply send a instagram profile link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a instagram profile link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","39-1959428-5.webp","1.5","1","2022-12-23 21:10:00","2022-12-08 13:12:42","1","23","18","0","8","1","0","0","100","2022-12-10 23:12:26"),
("40","Instagram 1K Likes","Instagram 1K Likes","instagram-1k-likes","● Simply send a instagram post link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a instagram post link.\n● There will never be a problem with your account.\n● Your account must not be private.","40-8949936-5.webp","1.5","1","2022-12-23 21:16:00","2022-12-08 13:16:37","1","23","19","0","3","1","0","0","100","2022-12-10 23:12:40"),
("41","Instagram 5K Views","Instagram 5K Views","instagram-5k-views","● Simply send a instagram post link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a instagram post link.\n● There will never be a problem with your account.\n● Your account must not be private.","41-1064756-5.webp","1.5","1","0000-00-00 00:00:00","2022-12-08 13:21:57","1","23","20","0","4","1","0","0","100","2022-12-10 23:12:56"),
("42","Tiktok 1K Followers","Tiktok 1K Followers","tiktok-1k-followers","● Simply send a tiktok profile  link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok profile  link.\n● There will never be a problem with your account.\n● Your account must not be private.","42-5139909-7.webp","3.99","3","2022-12-23 21:23:00","2022-12-08 13:24:03","1","23","27","0","4","1","0","0","100","2022-12-10 22:24:16"),
("43","Tiktok 1K Likes","Tiktok 1K Likes","tiktok-1k-likes","● Simply send a tiktok video link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok video link.\n● There will never be a problem with your account.\n● Your account must not be private.","43-4857455-7.webp","3.99","3","2022-12-23 21:32:00","2022-12-08 13:32:35","1","23","29","0","2","1","0","0","100","2022-12-10 22:24:46"),
("44","Tiktok 1K Views","Tiktok 1K Views","tiktok-1k-views","● Simply send a tiktok video link.\n\n● There will never be a problem with your account.\n\n● Your account must not be private.","● Simply send a tiktok video link.\n● There will never be a problem with your account.\n● Your account must not be private.","44-9701298-7.webp","1","0","0000-00-00 00:00:00","2022-12-08 13:35:35","1","23","30","0","1","1","0","0","100","2022-12-10 22:24:56"),
("45","Disney Plus 1 Month Account","Disney Plus 1 Month Account","disney-plus-1-month","● Disney Plus 1 Month Account\n\n● Changeable account information\n","● Disney Plus 1 Month Account\n● Changeable account information","45-8761223-8.webp","5.99","4","2022-12-23 21:39:00","2022-12-08 13:44:19","1","23","42","0","3","1","0","0","100","2022-12-10 22:55:54"),
("46","Disney Plus 12 Month Account","Disney Plus 12 Month Account","disney-plus-12-month","● Disney Plus 12 Month Account\n\n●  Changeable account information\n","● Disney Plus 12 Month Account\n●  Changeable account information","46-4763254-8.webp","21.99","20","2022-12-23 21:45:00","2022-12-08 13:45:46","1","23","42","0","1","1","0","0","100","2022-12-10 22:56:08"),
("47","Xbox Gamepass 12 Month Account","Xbox Gamepass 12 Month Account","xbox-gamepass-12-month-accounts","● Xbox GamePass 12 Month Account\n\n●  Changeable account information","● Xbox GamePass 12 Month Account\n●  Changeable account information","47-8333675-24.webp","39.99","38","2022-12-23 21:49:00","2022-12-08 13:51:13","1","23","62","0","4","1","0","0","50","2022-12-10 22:57:32"),
("48","Crunchyroll 1 Month Code","Crunchyroll 1 Month Code","crunchyroll-1-month-code","●  delivering as code","●  delivering as code","48-1615629-25.webp","3.99","3","2022-12-23 21:53:00","2022-12-08 13:56:07","1","23","72","0","5","1","0","0","50","2022-12-10 23:30:35"),
("49","Discord 14x 3Month Server Boost ","Discord 14x 3Month Server Boost ","discord-14x-3month-server-boost","●  Discord 14x 3 month server boost.\n\n● Simply send a discord invite link.\n\n● It will not harm your account or discord server.","●  Discord 14x 3 month server boost.\n● Simply send a discord invite link.\n● It will not harm your account or discord server.","49-7130465-26.webp","19.99","18","2022-12-23 22:05:00","2022-12-08 14:07:24","1","23","55","0","4","1","0","0","100","2022-12-10 22:21:55"),
("50","LOL EUW 30LVL Unranked Account","LOL EUW 30LVL Unranked Account","lol-euw-30lvl-unranked-accounts","● Includes extra costume crystals\n● 0% Ban Risk\n● Accounts have 68-100K+ Blue Core\n● The loot contains costume crystals.\n● After the information is transmitted, you can enter the league of legends site and directly change the mail, user name and password.","● Includes extra costume crystals\n● 0% Ban Risk\n● Accounts have 68-100K+ Blue Core\n● The loot contains costume crystals.\n● After the information is transmitted,","50-1428142-28.webp","3.99","3","2022-12-23 22:15:00","2022-12-08 14:15:35","1","23","65","0","3","1","0","0","100","2022-12-10 22:56:42"),
("51","Eset 12 Month Account","Eset 12 Month Account","eset-12month-accounts","● Eset 12 Month Account\n\n● 12 month warranty","● Eset 12 Month Account\n● 12 month warranty","51-3514286-14.webp","15.99","15","2022-12-23 22:20:00","2022-12-08 14:20:25","1","23","88","0","2","1","0","0","100","2022-12-10 22:57:43"),
("52","Kaspersky 12 Month Account","Kaspersky 12 Month Account","kaspersky-12-month","● Kaspersky 12 Month Account\n\n● 12 month warranty","● Kaspersky 12 Month Account\n● 12 month warranty","52-6750882-12.webp","15.99","15","2022-12-23 22:24:00","2022-12-08 14:24:51","1","23","87","0","2","1","0","0","100","2022-12-10 22:58:21"),
("53","Canva Edu  Lifetime Account","Canva Edu  Lifetime Account","canva-edu-lifetime","● Canva Edu Lifetime\n\n● Changeable account information","● Canva Edu Lifetime\n● Changeable account information","53-6843651-32.webp","2.99","2","2022-12-23 22:30:00","2022-12-08 14:30:22","1","23","91","0","1","1","0","0","100","2022-12-10 22:58:36"),
("54","Canva Teacher Lifetime Account","Canva Teacher Lifetime Account","canva-teacher-lifetime","● Canva Teacher Lifetime\n\n","● Canva Teacher Lifetime","54-5512294-32.webp","12.99","11","2022-12-23 22:31:00","2022-12-08 14:31:37","1","23","91","0","1","1","0","0","100","2022-12-10 22:58:47"),
("55","EA Play 1 Month Account","EA Play 1 Month Account","ea-play-1month","● Ea Play 1 Month Account\n\n● Changeable account information","● Ea Play 1 Month Account\n● Changeable account information","55-5619875-29.webp","3.99","3","2022-12-23 22:33:00","2022-12-08 14:33:39","1","23","71","0","2","1","0","0","100","2022-12-10 22:59:03"),
("56","Office 365 12 Month Account","Office 365 12 Month Account","office-365-12month","● Office 365 12 Month Account\n\n● 12 month warranty","● Office 365 12 Month Account\n● 12 month warranty","56-8616638-31.webp","4.99","4","2022-12-23 22:37:00","2022-12-08 14:37:12","1","23","96","0","1","1","0","0","100","2022-12-10 22:59:23"),
("57","Office 365 Pro Plus 12 Month Account","Office 365 Pro Plus 12 Month Account","office-365-proplus-12month","● Office 365 Pro Plus 12 Month Account\n\n● 12 month warranty","● Office 365 Pro Plus 12 Month Account\n● 12 month warranty","57-2800671-31.webp","6.99","6","2022-12-23 22:38:00","2022-12-08 14:38:22","1","23","96","0","5","1","0","0","100","2022-12-10 22:59:40"),
("58","Windows 10 Home & Pro ","Windows 10 Home & Pro ","windows-10-home-pro","●  delivering as code\n\n","●  delivering as code","58-7659975-adobe-creative-cloud.webp","6.99","6","2022-12-23 22:49:00","2022-12-08 14:49:51","1","23","83","0","2","1","0","0","100","2022-12-10 22:48:48"),
("59","Windows 11 Home & Pro Licence","Windows 11 Home & Pro Licence","windows-11-home-pro-licence","●  delivering as code","●  delivering as code","59-9806042-win11.webp","7.99","7","2022-12-23 22:57:00","2022-12-08 14:57:47","1","23","84","0","1","1","0","0","100","2022-12-10 22:49:00"),
("60","EA Play 12 Month  Account","EA Play 12 Month  Account","ea-play-12month","● Ea Play 12 Month Account\n\n● Changeable account information","● Ea Play 12 Month Account\n● Changeable account information","60-6641957-29.webp","17.99","16","2022-12-23 23:03:00","2022-12-08 15:03:21","1","23","71","0","2","1","0","0","100","2022-12-10 23:00:23"),
("61","IPVanish 1 Month Account","IPVanish 1 Month Account","ipvanish-1-month","● IPVanish 1 Month Account\n\n● 1 month warranty","● IPVanish 1 Month Account\n● 1 month warranty","61-6190527-17.webp","6.99","6","2022-12-23 23:08:00","2022-12-08 15:09:32","1","23","92","0","4","1","0","0","50","2022-12-10 23:01:32"),
("62","IPVanish 3 Month Account","IPVanish 3 Month Account","ipvanish-3-month","● IPVanish 3 Month Account\n\n● 3 month warranty","● IPVanish 3 Month Account\n● 3 month warranty","62-8031917-17.webp","9.99","9","2022-12-23 23:10:00","2022-12-08 15:11:08","1","23","92","0","1","1","0","0","100","2022-12-10 23:01:18"),
("63","IPVanish 6 Month Account","IPVanish 6 Month Account","ipvanish-6-month","● IPVanish 6 Month Account\n\n● 6 month warranty","● IPVanish 6 Month Account\n● 6 month warranty","63-6691342-17.webp","14.99","14","2022-12-23 23:11:00","2022-12-08 15:12:00","1","23","92","0","2","1","0","0","100","2022-12-10 23:01:57"),
("64","IPVanish 12 Month Account","IPVanish 12 Month Account","ipvanish-12-month","● IPVanish 12 Month Account\n\n● 12 month warranty","● IPVanish 12 Month Account\n● 12 month warranty","64-2601978-17.webp","19.99","18","2022-12-23 23:13:00","2022-12-08 15:13:34","1","23","92","0","2","1","0","0","100","2022-12-10 23:02:38"),
("65","ZenMate 1 Month Account","ZenMate 1 Month Account","zenmate-1-month","● ZenMate 1 Month Account\n\n● 1 month warranty","● ZenMate 1 Month Account\n● 1 month warranty","65-3872806-18.webp","6.99","6","2022-12-23 23:14:00","2022-12-08 15:15:11","1","23","95","0","1","1","0","0","100","2022-12-10 23:03:42"),
("66","ZenMate 3 Month Account","ZenMate 3 Month Account","zenmate-3-month","● ZenMate 3 Month Account\n\n● 3 month warranty","● ZenMate 3 Month Account\n● 3 month warranty","66-4378262-18.webp","9.99","8","2022-12-23 23:15:00","2022-12-08 15:16:09","1","23","95","0","1","1","0","0","100","2022-12-10 23:04:20"),
("67","ZenMate 6 Month Account","ZenMate 6 Month Account","zenmate-6-month","● ZenMate 6 Month Account\n\n● 6 month warranty","● ZenMate 6 Month Account\n● 6 month warranty","67-7991258-18.webp","14.99","14","2022-12-23 23:16:00","2022-12-08 15:17:12","1","23","95","0","3","1","0","0","100","2022-12-10 23:05:24"),
("68","ZenMate 12 Month Account","ZenMate 12 Month Account","zenmate-12-month","● ZenMate 12 Month Account\n\n● 12 month warranty","● ZenMate 12 Month Account\n● 12 month warranty","68-3879056-18.webp","19.99","18","2022-12-23 23:17:00","2022-12-08 15:19:27","1","23","95","0","1","1","0","0","100","2022-12-10 23:05:44"),
("69","Twitter 1K Followers","Twitter 1K Followers","twitter-1k-followers","● Simply send a twitter profile link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter profile link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","69-9050823-6.webp","4.99","4","2022-12-23 23:27:00","2022-12-08 15:29:07","1","23","24","0","1","1","0","0","1000","2022-12-10 23:06:46"),
("70","Twitter 1K Likes","Twitter 1K Likes","twitter-1k-likes","● Simply send a twitter post or video link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post or video link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","70-7501674-6.webp","4.99","4","2022-12-23 23:29:00","2022-12-08 15:30:10","1","23","23","0","1","1","0","0","100000","2022-12-10 23:08:30"),
("71","Twitter 1K Retweet","Twitter 1K Retweet","twitter-1k-retweet","● Simply send a twitter post or video link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post or video link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","71-2095341-6.webp","4.99","4","2022-12-23 23:31:00","2022-12-08 15:32:03","1","23","25","0","2","1","0","0","100000","2022-12-10 23:08:15"),
("72","Twitter 1K NFT Followers","Twitter 1K NFT Followers","twitter-1k-nft-followers","● Simply send a twitter profile link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter profile link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","72-2103262-6.webp","19.99","18","2022-12-23 23:33:00","2022-12-08 15:33:37","1","23","24","0","2","1","0","0","100000","2022-12-10 23:09:06"),
("73","Twitter 1K NFT Likes","Twitter 1K NFT Likes","twitter-1k-nft-likes","● Simply send a twitter post link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","73-8550953-6.webp","19.99","18","2022-12-23 23:35:00","2022-12-08 15:35:26","1","23","23","0","2","1","0","0","100000","2022-12-10 23:12:18"),
("74","Twitter NFT 1K Retweet","Twitter NFT 1K Retweet","twitter-nft-1k-retweet","● Simply send a twitter post link.\n\n●  There will never be a problem with your account.\n\n●  Your account must not be private.","● Simply send a twitter post link.\n●  There will never be a problem with your account.\n●  Your account must not be private.","74-7895961-6.webp","19.99","18","2022-12-23 23:36:00","2022-12-08 15:36:18","1","23","25","0","2","1","0","0","1000000","2022-12-10 23:11:41"),
("75","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","twitter-2009-2015-old-account","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","75-2281016-6.webp","5.99","5","2022-12-23 23:37:00","2022-12-08 15:37:56","1","23","22","0","2","1","0","0","1000","2022-12-10 23:24:47"),
("76","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","twitter-20016-2021-old-account","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","76-9182150-6.webp","3.99","3","2022-12-23 23:38:00","2022-12-08 15:38:55","1","23","22","0","2","1","0","0","1000","2022-12-10 23:23:29"),
("77","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","twitter-2022-2023-old-account","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","77-2202629-6.webp","1","0","2022-12-23 23:39:00","2022-12-08 15:39:54","1","23","22","0","2","1","0","0","100000","2022-12-10 23:24:31");




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


INSERT INTO urun_galeri VALUES
("39","19-7831609-paragraf-metniniz.webp","png","","2022-11-25 10:04:53","19","999");




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO yazi VALUES
("1","Blog Yazı - 1","<p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed cursus purus. Phasellus blandit bibendum consequat. Maecenas sit amet rutrum magna, non lobortis odio. Vestibulum a enim ipsum. Pellentesque fermentum luctus felis, at volutpat elit convallis vel. Sed porttitor convallis viverra. In pretium vulputate blandit. Praesent non urna accumsan, malesuada tortor id, feugiat felis. Praesent eget consectetur diam. Nulla sed ipsum sit amet mi dapibus fringilla sed at sapien. Praesent lectus lacus, interdum sit amet turpis eget, malesuada placerat magna. Mauris mollis arcu libero, id ultrices felis pellentesque eu. Sed sit amet bibendum dui.</p><p><br></p><p>Ut vitae enim posuere, pretium turpis vel, iaculis turpis. Fusce eu rhoncus velit. Suspendisse dignissim ante eget nibh porttitor bibendum. Mauris laoreet pellentesque diam, id pretium ante vehicula ac. Nam congue ante eget est vestibulum, quis ultricies orci blandit. Sed rutrum orci lorem. Sed vel ligula cursus odio ullamcorper venenatis eget quis odio. Fusce lacus velit, vestibulum ac tortor nec, consequat euismod tortor. Duis risus lacus, interdum aliquet lorem blandit, dignissim lacinia nisl. Vestibulum interdum vel augue sed pretium. Duis ac arcu arcu. Donec consectetur quam nisl, ut rutrum mauris venenatis eu. Donec venenatis tortor eget massa aliquam efficitur.</p><p><br></p><p>Sed finibus, erat vulputate imperdiet ultricies, turpis ex congue nulla, quis cursus ex ante a sapien. Nulla non pulvinar metus. Vestibulum hendrerit mi at vulputate porttitor. Aliquam sit amet elementum massa. Mauris faucibus lacinia sapien, ut congue ligula sagittis vulputate. In eleifend porttitor justo eget interdum. Aenean suscipit non orci et tempor. Vivamus vel blandit eros, vitae consectetur purus. Donec dapibus diam ac nibh ullamcorper viverra. Etiam vel tincidunt tortor. Proin nisl erat, aliquet vel facilisis at, mollis at leo. Fusce scelerisque justo id efficitur tincidunt.</p>","1-8713485-aad9b28e9b69dcfac66af7ab0aaa921a.jpg","2022-08-23 01:19:28","12","blog-yazi-1","1"),
("2","Blog Yazı - 2","<p><span style=\"font-size: 16px;\">﻿Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed cursus purus. Phasellus blandit bibendum consequat. Maecenas sit amet rutrum magna, non lobortis odio. Vestibulum a enim ipsum. Pellentesque fermentum luctus felis, at volutpat elit convallis vel. Sed porttitor convallis viverra. In pretium vulputate blandit. Praesent non urna accumsan, malesuada tortor id, feugiat felis. Praesent eget consectetur diam. Nulla sed ipsum sit amet mi dapibus fringilla sed at sapien. Praesent lectus lacus, interdum sit amet turpis eget, malesuada placerat magna. Mauris mollis arcu libero, id ultrices felis pellentesque eu. Sed sit amet bibendum dui.<br></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">Ut vitae enim posuere, pretium turpis vel, iaculis turpis. Fusce eu rhoncus velit. Suspendisse dignissim ante eget nibh porttitor bibendum. Mauris laoreet pellentesque diam, id pretium ante vehicula ac. Nam congue ante eget est vestibulum, quis ultricies orci blandit. Sed rutrum orci lorem. Sed vel ligula cursus odio ullamcorper venenatis eget quis odio. Fusce lacus velit, vestibulum ac tortor nec, consequat euismod tortor. Duis risus lacus, interdum aliquet lorem blandit, dignissim lacinia nisl. Vestibulum interdum vel augue sed pretium. Duis ac arcu arcu. Donec consectetur quam nisl, ut rutrum mauris venenatis eu. Donec venenatis tortor eget massa aliquam efficitur.</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">Sed finibus, erat vulputate imperdiet ultricies, turpis ex congue nulla, quis cursus ex ante a sapien. Nulla non pulvinar metus. Vestibulum hendrerit mi at vulputate porttitor. Aliquam sit amet elementum massa. Mauris faucibus lacinia sapien, ut congue ligula sagittis vulputate. In eleifend porttitor justo eget interdum. Aenean suscipit non orci et tempor. Vivamus vel blandit eros, vitae consectetur purus. Donec dapibus diam ac nibh ullamcorper viverra. Etiam vel tincidunt tortor. Proin nisl erat, aliquet vel facilisis at, mollis at leo. Fusce scelerisque justo id efficitur tincidunt.</span></p>","2-5133997-304ebaa7114b0e34536e8510f760d22a.jpg","2022-08-23 01:24:47","7","blog-yazi-2","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;