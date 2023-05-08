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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;


INSERT INTO abone VALUES
("1","27aksoy27@gmail.com","2022-08-20 22:15:41","1"),
("2","batujano@gmail.com","2022-11-25 18:45:45","1"),
("3","maykilrowdy10@gmail.com","2022-11-27 10:29:32","1"),
("4","reklamlar8927@gmail.com","2022-11-27 10:30:18","1"),
("5","batuccanx@outlook.com","2022-12-10 14:22:11","1"),
("6","HABUJA@gmail.com","2022-12-14 06:20:34","1"),
("7","hakajamaka@gmail.com","2022-12-14 06:20:48","1");




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
("1","https://selligo.shop","Buy quality cheaper...","Netflix, Spotify, Tinder, Disney+ all accounts here for cheaper, trustful and more proffessional.","selligologo.png","selligologo.png","selligologo1.png","G-MDPW4R9PTR","----","465","staff.selligo@gmail.com","R@Fv4tX!gEmK94n","1","1","3","0","----","----","","----","----","----","----","5","0","staff.selligo@gmail.com","----","","","0","0","0","----","----","----","----","----","0","----","----","----","----","----","----","----","----","----","1","1","1","----","----","665833797323-q4rbi58qihtkt1jafftola319u2r6u3d.apps.googleusercontent.com","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","We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.","cookiepolicy","1","<img src=\"https://cdn.discordapp.com/attachments/1050056214383448084/1052543151790882866/selligo_ads_black_k.gif\" class=\"img-fluid\">","<img src=\"https://cdn.discordapp.com/attachments/1050056214383448084/1052543152122241024/selligo_ads_black.gif\" class=\"img-fluid\">","0","<!--Start of Tawk.to Script-->




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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO basvuru VALUES
("1","17","Animi ipsam alias b","2022-08-17 23:03:39","2","awdqwawqas"),
("2","19","Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.","2022-08-20 10:37:44","2","İyi satışlar"),
("3","23","YOK","2022-11-27 18:46:47","2","welcome"),
("4","26","dadda","2022-12-05 16:59:32","1",""),
("5","27","asdsad","2022-12-10 14:51:26","1",""),
("6","28","Write why you want to open store on Selligo and what kind of products you want to sell send list via this messagebox.","2022-12-12 07:17:38","2",""),
("7","30","Type here about your store.What kind of products would you sell generally and why should we accept you.","2022-12-12 07:28:50","0",""),
("8","31","dasd","2022-12-14 07:09:55","1","");




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
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
("785","0","2022-12-17","79");




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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO kullanicilar VALUES
("1","0","&Ouml;kkeş","Aksoy","","aksoy","aksoyhlc@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","1","2","T&uuml;rkiye","Gaziantep","27500","Eos aliquid rerum q","2019-04-09 21:18:59","default.png","Aksoyhlc","","","","","1","1","82e908f9-491c-4da6-b31d-a34071c7c6d2","","0","","","0","","","2022-12-15 13:58:26","0","0","","","1","","1","2022-08-10 17:35:46","4ca2a063cdadeae2024a2609e6463759","","","0","0","","0","","95.10.66.219","102653819093694057365"),
("17","0","Mağaza","Test","Mağaza - 1","magaza-1","magaza@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27500","Gaziantep","2022-08-17 23:02:20","215651479941screenshot_20png.png","","","","","","1","1","","","0","2022-08-17 23:05:21","","0","","","2022-12-07 23:52:13","1","1","#####  **Lorem Ipsum Nedir?**
("18","0","Normal","Kullanıcı","","aksoyhlc","kullanici@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","1","0","T&uuml;rkiye","Ankara","6666","Ankara","2022-08-18 12:16:48","default.png","","","","","","1","1","","","0","","E7SBFJJ5FNOWMPYC2JJ5DLHYDBJJOCSU","1","","","2022-12-14 14:27:18","0","0","","","1","","1","2022-08-18 12:18:17","9d89c776918c2caaf15205b89bc49720","","","0","1","2022-08-23 10:02:01","0","","84.239.49.40",""),
("19","0","Mağaza","Deneme","Mağaza - 2","magaza-2","magaza2@gmail.com","96de4eceb9a0c2b9b52c0b618819821b","5555555555","","0","0","Türkiye","Gaziantep","27000","Adres","2022-08-20 10:36:55","default.png","","","","","","1","1","","","0","2022-08-20 10:38:17","","0","","","2022-12-08 00:04:12","0","0","","","1","","1","2022-08-20 11:37:11","9e89c776918c2caaf15205b89bc49720","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","2022-08-24 00:11:27","0","","95.10.66.219",""),
("20","0","&Ouml;mer","Demirel","","DarthVader","omerdemrel419@gmail.com","b88ad862ecd8675d61da7aaf218e7b39","5050514988","","1","0","","","","","2022-11-15 11:46:51","default.png","","","","","","1","1","","","0","","","0","","","2022-11-15 19:55:07","0","0","","I4A5598JNCUWEZ3MXYVYJ2BNZO26GLSTD7YCTB1M","1","","0","","","","","0","0","","0","","37.155.145.12",""),
("21","0","akın","yar","","kuluxx","qdr22034@cdfaq.com","80d97c074bc0430a5d250ffdd93dffc2","5153123123","","1","0","","","","","2022-11-25 09:36:00","default.png","","","","","","1","1","","","0","","","0","","","2022-11-25 17:36:00","0","0","","6NMIKPNWQOR1SD6JIXW3QI3RV9DHHSNQAL7MAL9L","1","","0","","f4c3aa3083968612a2907e2ec058e951","","","0","0","","0","","78.168.8.199",""),
("22","0","hakan","papucuyarım","","crazyfrog","emre.supreme11@gmail.com","2e5c08c6a0054773ab2e1c8e42c01ef2","5366543939","","0","0","türkiye","ankara","ankara","ankara","2022-11-25 09:41:33","default.png","","","","","","1","1","","","0","","","1","","","2022-11-28 03:04:13","0","0","","HVZ92Z11YU19YIHUIG52NUQARRBB7MC1TFHG5TWY","1","","1","","","0000-00-00 00:00:00","0000-00-00 00:00:00","0","1","","0","","78.168.8.199",""),
("23","0","Admin","Selligo","Selligo","selligo-3764","reklamlar8927@gmail.com","cd2879586d74f739baa8d060fd2efaff","","","1","0","Turkey","llll","","","2022-11-27 17:37:24","23-6645478-adobe-creative-cloud.webp","","","","","","1","0","","","1","2022-11-28 02:48:03","UBLKUG2AFN2CSSD5HEG7T2RKR7CEVWHG","1","","","2022-12-15 15:42:14","0","0","","JDGEACK81U6EIZRMTG31XKQ9ZII7PV9ITAJEXWDH","1","","1","","a2530dc448076a3bb1978d8349329a21","0000-00-00 00:00:00","0000-00-00 00:00:00","1","1","","0","","62.248.48.239",""),
("24","0","hakan","kutlu","","kalulu111","owe00574@xcoxc.com","2e5c08c6a0054773ab2e1c8e42c01ef2","2334444444","","1","0","","","","","2022-11-27 19:07:12","default.png","","","","","","1","1","","","0","","","0","","","2022-11-28 03:07:12","0","0","","69XPKL7VO9V8KPATL7HHYAYN9VYSBXWZVPL5I5PS","1","","1","","b8e7a8fd49a9560daf36b69dd1b967d4","","","0","1","","0","","78.168.8.199",""),
("25","0","ASDASD","ASDASD","","AAAAAA","caneykf@karenkey.com","cd2879586d74f739baa8d060fd2efaff","5555555556","","1","0","","","","","2022-11-30 08:06:18","default.png","","","","","","1","1","","","0","","","0","","","2022-11-30 17:18:30","0","0","","4FHV6SU8YHNNI91ZXYN1FW8NISZYPDARW2LYRFDI","1","","1","","3550ac8d788894425476a1b57a23d6d2","","","0","1","","0","","62.248.48.239",""),
("26","0","Adam","koll","","adamcall","nwardibsefb@karenkey.com","cd2879586d74f739baa8d060fd2efaff","","","1","0","usa","lahb","","","2022-12-01 08:19:02","default.png","","","","","","1","1","","","0","","4UGVXMR5OKLVJUKT3KXYWFMLLOJJLELL","1","","yfyghjgukhk","2022-12-07 22:13:25","0","0","","CU3U3VIGMR1OV3A1Z6ML9W9L591TIFC1WBZPW3R8","1","","1","","1f2c1c0c0a90c68d6aec5338cb6a0931","","","0","0","","0","","62.248.48.239",""),
("27","0","asdas","dasdasd","asdsad","adamcalla","nxqzqvk@karenkey.com","cd2879586d74f739baa8d060fd2efaff","9999999999","","1","0","","","","","2022-12-07 18:10:40","default.png","","","","","","1","1","","","0","","","0","","","2022-12-14 15:07:10","0","0","","K4FXRX9CNUYWGI6KB2BHU2RNHTT4BZZMGNLW63UZ","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("28","0","Selligo ","Support","Top Up","top-up","support@selligo.shop","cd2879586d74f739baa8d060fd2efaff","9999909999","","1","0","New York","New York","","","2022-12-12 07:12:57","28-3778276-icon-round-question_mark.svg.webp","","","","","","1","1","","","1","2022-12-14 14:24:16","","0","","","2022-12-15 15:41:45","0","0","How do you top up (add balance)?
("29","0","Test","test","","test","1@1.com","cd2879586d74f739baa8d060fd2efaff","5555535555","","1","0","","","","","2022-12-12 07:24:09","default.png","","","","","","1","1","","","0","","","0","","","2022-12-12 15:24:09","0","0","","74KBRMEWJN9WRQDWA999HMOCCEHVNOMX9PJKHNI9","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("30","0","test","test","Type your store name here","Test1","test@test.com","cd2879586d74f739baa8d060fd2efaff","2222222222","","1","0","","","","","2022-12-12 07:26:20","default.png","","","","","","1","1","","","0","","","0","","","2022-12-12 15:27:40","0","0","","KY8YHMGSL85UFF7SWLE4KZ5IY43XVR9R89KFRI9G","1","","1","","","","","0","0","","0","","62.248.48.239",""),
("31","0","james","baley","ad","james12","tqk95493@cdfaq.com","c30c913c6e9a10850cb187d91621effd","1222132131","","1","0","","","","","2022-12-14 07:03:45","default.png","","","","","","1","1","","","0","","","0","","","2022-12-15 15:48:33","0","0","","6BU5X4648DW1MBVP9ZSAI7XDQFKOVAVVN2MJX9D7","1","","1","","9dd52c1ee47cc92f43710bb1c6b6dd9b","0000-00-00 00:00:00","0000-00-00 00:00:00","0","0","","0","","95.10.66.219",""),
("32","370","zippy","co","","zippy","uqsarsnvcvsjyox@nightorb.com","cd2879586d74f739baa8d060fd2efaff","8888888885","","1","0","","","","","2022-12-15 07:53:29","default.png","","","","","","1","1","","","0","","","0","","","2022-12-16 12:13:26","0","0","","2A84D5YDG5IAR5EWNPRZJLWXV9FRHV6VGL5EDVLM","1","","0","","","","","0","0","","0","","62.248.48.239","");




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
("21","Demo Başlık","<p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><span style=\"font-size: 18px;\">﻿</span><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><span style=\"font-size: 18px;\">Lorem Ipsum</span></strong><span style=\"font-size: 18px;\" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span></p><p><img src=\"https://lexa.yazilimdemo.net/popupdemo.jpg\" style=\"width: 100%;\"></p>","0","1352","2022-08-03 15:22:38","0"),
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
("13","Privacy Policy","privacypolicy","<h2 style=\"text-align: center;\">Privacy Policy for Selligo LLC</h2>
("14","Terms Of Service","termsofservice","<h3>Terms and Conditions</h3></br>
("15","Cookie Policy","cookiepolicy","<h3>Cookie Policy for Selligo</h3>




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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


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
("42","32","32","25","5","2022-12-16 04:14:09","2","","2022-12-16 04:14:09","3","0.75","1","","","","","","5");




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
("1","How to become seller status? ","You can change your profile to seller mode, than earn money by selling accounts, your old twitters, your fortnite accounts etc. Click button to read more about ","1-1713306-iiiiii.webp","Read more","https://selligo.shop/blog/how-to-become-a-seller-status","1","0","0","2022-04-26 22:02:31");




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
("1"," How can i become a seller ?","Not everyone can be a seller, only those who selected by us can become sellers. If you want to be a seller you need to be approved by us <a href=\"https://selligo.shop/kayit?satici=true\">




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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO ticket VALUES
("1","18","17","2022-08-18 14:39:01","0","0","Orta","Ürün Bilgileri","2022-08-18 14:39:01","1"),
("2","18","17","2022-08-18 14:44:23","0","1","Orta","Satış Öncesi Bilgi","2022-08-18 14:48:46","1"),
("3","18","17","2022-08-18 14:50:21","0","2","Acil","Mağaza Destek Bileti Test","2022-08-25 14:23:36","1"),
("6","24","23","2022-11-27 19:19:27","0","0","Orta","blabla","2022-11-28 03:19:48","19"),
("7","26","19","2022-12-04 17:57:49","0","1","Orta","aaa","2022-12-05 01:57:49",""),
("8","26","17","2022-12-05 17:07:07","0","1","Orta","saa","2022-12-06 01:07:07","23"),
("9","26","23","2022-12-06 14:46:39","0","1","Orta","asdasdasd","2022-12-06 22:46:39",""),
("10","27","23","2022-12-08 16:27:58","0","1","Normal","asd","2022-12-09 00:27:58",""),
("11","31","23","2022-12-15 08:07:49","0","1","Normal","gfgy","2022-12-15 16:07:49","36");




CREATE TABLE `ticket_bag` (
  `ticket_bag_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `ticket_gonderen` int(11) DEFAULT NULL,
  `ticket_gonderilme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `ticket_detay` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ticket_bag_id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `ticket_bag_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
("46","11","0","2022-12-15 08:07:49","vhbj");




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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO urun VALUES
("30","Netflix 12 Month Account","Netflix 12 Month Account","netflix-12-month","● Netflix 12 Month Account
("31","Spotify 1 Month Account","Spotify 1 Month Account","spotify-1-month-premium-account","● Spotify 1 Month Account
("32","Spotify 3 Month Account","Spotify 3 Month Account","spotify-3-month-premium-account","● Spotify 3 Month Account
("33","Spotify 6 Month Account","Spotify 6 Month Account","spotify-6-month-account","● Spotify 6 Month Account
("34","Spotify 12 Month Account","Spotify 12 Month Account","spotify-12-month-account","● Spotify 12 Month Account
("35","Youtube Premium 1 Month Account","Youtube Premium 1 Month Account","youtube-premium-1-month","● Youtube  1 Month Premium Account
("36","Youtube Premium 12 Month Account","Youtube Premium 12 Month Account","youtube-premium-12-month","● Youtube 12 Month Premium Account
("37","Discord 1 Month 100x Online Members ","Discord 1 Month 100x Online Members ","discord-100x-online-members","● Discord 1 month 100x online members
("38","Discord 100x Offline Members","Discord 100x Offline Members","discord-100x-offline-members","● Discord 1 month 100x offline members.
("39","Instagram 1K Followers","Instagram 1K Followers","instagram-1k-followers","● Simply send a instagram profile link.
("40","Instagram 1K Likes","Instagram 1K Likes","instagram-1k-likes","● Simply send a instagram post link.
("41","Instagram 5K Views","Instagram 5K Views","instagram-5k-views","● Simply send a instagram post link.
("42","Tiktok 1K Followers","Tiktok 1K Followers","tiktok-1k-followers","● Simply send a tiktok profile  link.
("43","Tiktok 1K Likes","Tiktok 1K Likes","tiktok-1k-likes","● Simply send a tiktok video link.
("44","Tiktok 1K Views","Tiktok 1K Views","tiktok-1k-views","● Simply send a tiktok video link.
("45","Disney Plus 1 Month Account","Disney Plus 1 Month Account","disney-plus-1-month","● Disney Plus 1 Month Account
("46","Disney Plus 12 Month Account","Disney Plus 12 Month Account","disney-plus-12-month","● Disney Plus 12 Month Account
("47","Xbox Gamepass 12 Month Account","Xbox Gamepass 12 Month Account","xbox-gamepass-12-month-accounts","● Xbox GamePass 12 Month Account
("48","Crunchyroll 1 Month Code","Crunchyroll 1 Month Code","crunchyroll-1-month-code","●  delivering as code","●  delivering as code","48-1615629-25.webp","3.99","3","2022-12-23 21:53:00","2022-12-08 13:56:07","1","23","72","0","6","1","0","0","50","2022-12-10 23:30:35"),
("49","Discord 14x 3Month Server Boost ","Discord 14x 3Month Server Boost ","discord-14x-3month-server-boost","●  Discord 14x 3 month server boost.
("50","LOL EUW 30LVL Unranked Account","LOL EUW 30LVL Unranked Account","lol-euw-30lvl-unranked-accounts","● Includes extra costume crystals
("51","Eset 12 Month Account","Eset 12 Month Account","eset-12month-accounts","● Eset 12 Month Account
("52","Kaspersky 12 Month Account","Kaspersky 12 Month Account","kaspersky-12-month","● Kaspersky 12 Month Account
("53","Canva Edu  Lifetime Account","Canva Edu  Lifetime Account","canva-edu-lifetime","● Canva Edu Lifetime
("54","Canva Teacher Lifetime Account","Canva Teacher Lifetime Account","canva-teacher-lifetime","● Canva Teacher Lifetime
("55","EA Play 1 Month Account","EA Play 1 Month Account","ea-play-1month","● Ea Play 1 Month Account
("56","Office 365 12 Month Account","Office 365 12 Month Account","office-365-12month","● Office 365 12 Month Account
("57","Office 365 Pro Plus 12 Month Account","Office 365 Pro Plus 12 Month Account","office-365-proplus-12month","● Office 365 Pro Plus 12 Month Account
("58","Windows 10 Home & Pro ","Windows 10 Home & Pro ","windows-10-home-pro","●  delivering as code
("59","Windows 11 Home & Pro Licence","Windows 11 Home & Pro Licence","windows-11-home-pro-licence","●  delivering as code","●  delivering as code","59-9806042-win11.webp","7.99","7","2022-12-23 22:57:00","2022-12-08 14:57:47","1","23","84","0","2","1","0","0","100","2022-12-10 22:49:00"),
("60","EA Play 12 Month  Account","EA Play 12 Month  Account","ea-play-12month","● Ea Play 12 Month Account
("61","IPVanish 1 Month Account","IPVanish 1 Month Account","ipvanish-1-month","● IPVanish 1 Month Account
("62","IPVanish 3 Month Account","IPVanish 3 Month Account","ipvanish-3-month","● IPVanish 3 Month Account
("63","IPVanish 6 Month Account","IPVanish 6 Month Account","ipvanish-6-month","● IPVanish 6 Month Account
("64","IPVanish 12 Month Account","IPVanish 12 Month Account","ipvanish-12-month","● IPVanish 12 Month Account
("65","ZenMate 1 Month Account","ZenMate 1 Month Account","zenmate-1-month","● ZenMate 1 Month Account
("66","ZenMate 3 Month Account","ZenMate 3 Month Account","zenmate-3-month","● ZenMate 3 Month Account
("67","ZenMate 6 Month Account","ZenMate 6 Month Account","zenmate-6-month","● ZenMate 6 Month Account
("68","ZenMate 12 Month Account","ZenMate 12 Month Account","zenmate-12-month","● ZenMate 12 Month Account
("69","Twitter 1K Followers","Twitter 1K Followers","twitter-1k-followers","● Simply send a twitter profile link.
("70","Twitter 1K Likes","Twitter 1K Likes","twitter-1k-likes","● Simply send a twitter post or video link.
("71","Twitter 1K Retweet","Twitter 1K Retweet","twitter-1k-retweet","● Simply send a twitter post or video link.
("72","Twitter 1K NFT Followers","Twitter 1K NFT Followers","twitter-1k-nft-followers","● Simply send a twitter profile link.
("73","Twitter 1K NFT Likes","Twitter 1K NFT Likes","twitter-1k-nft-likes","● Simply send a twitter post link.
("74","Twitter NFT 1K Retweet","Twitter NFT 1K Retweet","twitter-nft-1k-retweet","● Simply send a twitter post link.
("75","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","twitter-2009-2015-old-account","Twitter 2009 - 2015 Random Old Account","Twitter 2009 - 2015 Random Old Account","75-2281016-6.webp","5.99","5","2022-12-23 23:37:00","2022-12-08 15:37:56","1","23","22","0","4","1","0","0","1000","2022-12-10 23:24:47"),
("76","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","twitter-20016-2021-old-account","Twitter 2016 - 2021 Random Old Account","Twitter 2016 - 2021 Random Old Account","76-9182150-6.webp","3.99","3","2022-12-23 23:38:00","2022-12-08 15:38:55","1","23","22","0","5","1","0","0","1000","2022-12-10 23:23:29"),
("77","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","twitter-2022-2023-old-account","Twitter 2022 - 2023 Random Old Account","Twitter 2022 - 2023 Random Old Account","77-2202629-6.webp","1","0","2022-12-23 23:39:00","2022-12-08 15:39:54","1","23","22","0","6","1","0","0","100000","2022-12-10 23:24:31"),
("79","Read This","Read This","read-this","How do you top up (add balance)?




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO yazi VALUES
("3","How to become a seller status?","<p></p><p><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><b><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span><span style=\"font-size: 16px;\">﻿</span></b><span style=\"font-size: 16px;\"><b>﻿How to become a seller status and publish your items?</b></span></p><p><span style=\"font-size: 16px;\"><b><br></b><br></span><b>Well its easy to do it.But don\'t forget Selligo might be asks for fee to prevent scams and be sure that clients are safe here.</b></p><p><b><br></b></p><p></p><h1 class=\"scribe-title\">Introductions</h1><p class=\"scribe-author\"><br></p><p class=\"scribe-author\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"font-weight: bolder; font-size: 24px; color: rgb(255, 255, 255);\"><i>1. Click \"Register | Login\"</i></span><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/E6s-aKW9f9dNzuTubxWGhQTuPiS8lAt-V9eMcTfssVg/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:995:0/wm:0.8:nowe:255:27:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2ZkMDBhZWMwLTVhZjAtNGQ3Ny1hMTc2LWVkNDlmZTdjOTlkMi9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><span style=\"font-size: 24px; color: rgb(255, 255, 255);\"><i><b>2. Click \"Login\"</b></i></span><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/w9KDghGDCIkqvqZUycgrRoRh1OYSBDLs2OJbnTk7fBY/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:391:432/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2M2MWY2NjcxLWQwNTgtNDUzZi05NzUxLTVjZDM1OTllMDJjZS9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">3. Click \"Become a Seller\"</span></b></i><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/YSi6zhxUxMYcB6CNP_bIw1iDChyo9lQ9x1KGHh5wWJk/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:363:426/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2MwMGFkNmIwLTVkNGMtNGJjYi05NTM3LTA2ZGY1ZmU2ZjA3Yy9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">4. Type your store name.</span></b></i></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/mHR7aDYbB2EUxIl6TB30b_7E37tYZI1QmHfUSMgx-bk/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:334:288/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2Y2OGUxYWEwLWVjNTYtNGI4MC05ZmQ2LWQ1MmQzNWY3ODBhMS9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">5. Type what a list of kind of products will you sell.</span></b></i></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/JfEwvHgzpk9ICDFfwJOQYw32Wc0BKaM3rH1XGX-hCZM/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:3:405/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzc1ZmYwNGU0LWJhMmYtNGIyMS1iOWJiLWY3YTRjYjA0YTZlYi9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-screenshot-container\"><br></p><p class=\"scribe-screenshot-container\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">6. Click \"Submit Application\"</span></b></i><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/XBvEMZ0HKo7EWheoDNm-4e0q7mxgT0SIvOwEZaLAWHc/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:343:188/wm:0.8:nowe:365:192:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyL2NhZGZlZThiLThhNTktNDlmOS04YTVkLWViMzE3OWYzMWJmOC91c2VyX2Nyb3BwZWRfc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><b><i><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">7. Click \"OK\"</span></i></b><br></p><p class=\"scribe-screenshot-container\"><img class=\"scribe-screenshot\" width=\"560\" src=\"https://image.scribehow-prod.com/EzsiBp8iuWOAyG1g9wWKL5UyEl-osU43JCIBW5fNzRQ/zoom:0.7506702412868632/enlarge:true/crop:746:420:nowe:567:379/wm:0.8:nowe:255:132:0.17857142857142858/aHR0cHM6Ly9jb2xvbnktcmVjb3JkZXIuczMuYW1hem9uYXdzLmNvbS9maWxlcy8yMDIyLTEyLTEyLzc5Y2Y2MTY4LWE1OGUtNGFlZS1hMTYxLTk5MThkNTk0ZmY2Ny9hc2NyZWVuc2hvdC5qcGVn\"></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><br></p><p class=\"scribe-step\"><i><b><span style=\"font-size: 24px; color: rgb(255, 255, 255);\">8. Click \"Seller Application\"</span>




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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO yildiz VALUES
("13","31","32","5","2022-12-15 08:13:21","Perfectt.              ","1"),
("14","30","32","5","2022-12-15 08:13:54","Just bought second product all good. :3","1");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;