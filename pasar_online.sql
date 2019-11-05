-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 05:12 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasar_online_dev_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `uuid`, `title`, `slug`, `description`, `thumbnail`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3c06f7a0-fec1-11e9-b741-7d69e2779613', '5 Fakta Penting Makanan Sehat', '5-fakta-penting-makanan-sehat', '<p><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Kita sering menganggap makanan sehat boleh kita makan sebanyak-banyaknya.&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Informasi gizi yang tertera dalam kemasan kalau tidak kita pahami dengan baik, usaha mencapai berat&nbsp;ideal pun tinggal mimpi.</span></p>\r\n<div class=\"google-auto-placed ap_container\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff; text-align: center; width: 660px; height: auto; clear: none;\"><ins class=\"adsbygoogle adsbygoogle-noablate\" style=\"box-sizing: border-box; padding: 0px; margin: auto; display: block; background-color: transparent;\" data-ad-format=\"auto\" data-ad-client=\"ca-pub-1162303976437150\" data-adsbygoogle-status=\"done\"><ins id=\"aswift_1_expand\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; display: inline-table; border: none; height: 132px; position: relative; visibility: visible; width: 526px; background-color: transparent;\"><ins id=\"aswift_1_anchor\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; display: block; border: none; height: 132px; position: relative; visibility: visible; width: 526px; background-color: transparent;\"><iframe id=\"aswift_1\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; left: 0px; position: absolute; top: 0px; border-width: 0px; border-style: initial; width: 526px; height: 132px;\" name=\"aswift_1\" width=\"526\" height=\"132\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></ins></ins></ins></div>\r\n<p><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Ketahui fakta penting di balik makanan atau camilan yang sering dianggap sehat. Ternyata, banyak&nbsp;bohongnya juga, tuh.</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">1. Cereal bar dalam berbagai merek dengan tulisan \"rendah gula\" atau \"rendah lemak\"</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Bisa juga tulisan \"tanpa bahan tambahan artifisial\" dan lain sebagainya. Informasi gizinya bisa benar&nbsp;bisa tidak, karena sangat tergantung merek.&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Kenyataannya, camilan ini mengandung lemak jenuh dan gula, yang akan diubah menjadi kolesterol jahat&nbsp;di dalam darah. Camilan ini bukannya tidak baik, tetapi menggunakan banyak gula supaya bisa melekat.&nbsp;Pahami kandungannya kalau Anda sedang berusaha menurunkan berat badan.</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">2. Buah kering semacam kismis atau cranberry</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Untuk proses ini, mereka mengalami penambahan gula. Mengonsumsi 60 gram buah kering, kita mendapatkan&nbsp;30 gram gula.&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Betul bahwa buah kering mengandung serat yang kita butuhkan. Namun buah segar masih mengandung air.&nbsp;Kandungan fruktosa (gula alami) di dalam buah segar akan ikut terbuang bersama air ketika kita makan.&nbsp;Sedangkan pada buah kering, kita akan mendapatkan gula seluruhnya. &nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">3. Jus buah di supermarket&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Jus kemasan ini mengandung 50 gram gula dan nol serat.Tapi kalaupun kita ingin membuatnya sendiri,&nbsp;itu pun bukan jaminan akan jadi minuman sehat.&nbsp;Buah yang dikupas kulitnya kehilangan sebagian besar gizinya, terutama serat. Padahal serat inilah&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">yang kita perlukan untuk menahan lapar.</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">4. Frozen yogurt yang kita anggap lebih baik dari es krim</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Tidak semua merek menjual frozen yogurt rendah kalori. Ada frozen yogurt yang mengandung tinggi&nbsp;kalori. Misalnya saja dalam setiap 60 gram mengandung 120 kkal, 42 gram lemak jenuh, dan 4,2 gram.&nbsp;Sementara ada es krim yang hanya mengandung 96 kkal dalam setiap 60 gram, 3,6 lemak jenuh, dan 9,4&nbsp;gram gula.&nbsp;</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: bold; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">5. Zero sugar soft drink</span><br style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"font-family: Raleway-Medium, sans-serif; font-size: 14px; background-color: #ffffff;\">Banyak orang menganggap bahwa otak kita dapat dibohongi dengan minuman zero sugar. Kalau tubuh kita perlu, kita akan minum beberapa kaleng. Soft drink semacam ini malah meningkatkan kemungkinan obesitas sebesar 42%.</span></p>', 'blogs/xhkCqa4N1DChXuPR3JrHBt5PUPQtEvJd0J20xeMh.jpeg', 5, 2, '2019-11-04 05:09:10', '2019-11-04 05:09:10', NULL),
(2, 'b665a510-fec1-11e9-bcdf-cb7858ebb11a', 'Ini 8 Buah-buahan yang Paling Sehat, yang Mana Buah Favoritmu?', 'ini-8-buah-buahan-yang-paling-sehat-yang-mana-buah-favoritmu', '<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1. Jeruk</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">Buah</a>-buahan sitrus atau keluarga jeruk memang dikenal banyak manfaatnya, teman-teman. Cari tahu kandungan beberapa jenis&nbsp;<a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">buah</a>&nbsp;sitrus, yuk.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Jeruk</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jeruk adalah salah satu&nbsp;<a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">buah</a>&nbsp;yang banyak terdapat di seluruh dunia.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">Buah</a>&nbsp;jeruk memiliki kandungan vitamin C dan potasium, teman-teman. Selain itu ada juga vitamin B.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Kandungan&nbsp;<a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">buah</a>&nbsp;jeruk bisa meningkatkan penyerapan zat besi dan mencegah anemia, lo.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Lemon</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jenis&nbsp;<a style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"https://bobo.grid.id/tag/buah\">buah</a>&nbsp;jeruk yang dikenal paling sehat adalah lemon.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Ini karena lemon punya kandungan vitamin C yang tinggi, teman-teman.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Penelitian menemukan kalau kandungan asam sitrat lemon bisa membantu mengobat batu ginjal.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Baca Juga :&nbsp;<a class=\"inner-link\" style=\"box-sizing: border-box; vertical-align: top; text-decoration-line: none; color: #00aeef; outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\" href=\"http://bobo.grid.id/read/081650786/kecil-tapi-kaya-manfaat-inilah-6-manfaat-jeruk-nipis-untuk-tubuh-kita\" target=\"_blank\" rel=\"noopener\">Kecil tapi Kaya Manfaat, Inilah 6 Manfaat Jeruk Nipis untuk Tubuh Kita</a></span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Jeruk Bali Merah</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Buah jeruk bali merah atau&nbsp;<em style=\"box-sizing: border-box;\">grapefruit&nbsp;</em>mengandung vitamin dan mineral.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jeruk Bali merah mengandung antioksidan flavonoid yang bisa melawan peradangan, sel kanker, dan obesitas.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Buah dalam keluarga sitrus punya antioksidan yang menjaga tubuh dari radikal bebas.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">2. Apel</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Selain jeruk, apel juga merupakan buah yang populer. Apel mengandung serat, potasium, vitamin C, K, dan B.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Kandungan antioksidan dalam apel bisa membantu kesehatan jantung, menurangi risiko diabetes tipe 2, kanker, dan Amzheimer.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Pada hewan, antioksidan apel juga terbukti meningkatkan kepadatan tulang, lo.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Apel juga mengandung pectin, prebiotik atau bakteri baik yang membantu pencernaan dan metabolisme kita.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">3. Alpukat</span></p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Jika kebanyakan buah tinggi karbohidrat, alpukat ini rendah karbohidrat, lo.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Di dalam alpukat ada banyak sekali lemak baik. Kandungan lemak baik terbesar dalam alpukat adalah asam oleat.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Asam oleat bisa mengurangi peradangan dan baik untuk kesehatan jantung.</p>\r\n<p style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">Selain itu, alpukat mengandung potasium untuk mengurangi tekanan darah dan menurunkan risiko stroke.</p>', 'blogs/nR5ozEK0wab1qztltPcbyLr3IbLL2RlxLlpuEGHt.jpeg', 5, 2, '2019-11-04 05:12:35', '2019-11-04 05:12:35', NULL),
(3, '0fccbd80-fec2-11e9-9162-5dfe7410a5c3', '4 Manfaat Mengejutkan Buah Nanas untuk Pencernaan', '4-manfaat-mengejutkan-buah-nanas-untuk-pencernaan', '<h2 style=\"box-sizing: inherit; clear: both; font-size: 28px; margin-top: 0px; box-shadow: #f4f4f4 0px 1px 0px -0.1px; padding-bottom: 15px; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">Manfaat buah nanas untuk pencernaan</h2>\r\n<h3 style=\"box-sizing: inherit; clear: both; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">1. Mengandung enzim baik untuk pencernaan</h3>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Menurut Medical Center di Maryland Universiy, buah nanas juga memiliki enzim pencernaan baik, yang disebut bromelain. Enzim ini merupakan campuran dari enzim proteolitik yang membantu usus Anda memecah dan menyerap protein lebih banyak. Manfaat lain dari bromelain ini juga mampu meringankan masalah perut seperti, sakit perut dan&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #3389f0; text-decoration-line: none;\" title=\"Diare\" href=\"https://hellosehat.com/penyakit/diare/\" target=\"_blank\" rel=\"noopener\">diare</a>.</span></p>\r\n<h3 style=\"box-sizing: inherit; clear: both; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">2. Melancarkan sistem pencernaan</h3>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Buah nanas secara alami memiliki kandungan yag kaya serat. Fungsi kaya serat ini, baik untuk meningkatkan sistem pencernaan. Biasanya, makanan yang tinggi serat agak susah larut dicerna, tapi tidak dengan buah nanas.</span></p>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Manfaat buah nanas untuk pencernaan ini tidak sampai situ saja, nanas memiliki sejumlah kandungan vitamin dan mineral yang mampu menyerap air pada usus Anda. Untuk sistem penceranaan yang normal , Anda perlu mengonsumsi 14 gram total serat dari 1000 kalori perharinya, dan itu bisa Anda dapatkan pada buah nanas. Menurut Colorado State University Extension, makan buah nanas setengah potong mengandung 2,2 gram total serat makanan.</span></p>\r\n<h3 style=\"box-sizing: inherit; clear: both; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">3. Buah nanas menangkal sakit akibat perut kembung</h3>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Biasanya,&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #3389f0; text-decoration-line: none;\" title=\"Perut Kembung\" href=\"https://hellosehat.com/penyakit/perut-kembung/\" target=\"_blank\" rel=\"noopener\">kembung&nbsp;</a>ditandai dengan perut yang membesar dan ada tekanan gas yang&nbsp;lebih kuat. Anda tidak perlu pusing mengobatinya. Cukup dengan makan buah nanas makanan lain yang menyebabkan refluks atau gas pada pencernaan muncul, bisa diredakan secara alami. &nbsp;</span><span style=\"box-sizing: inherit;\">Kembali lagi dengan kandungan bromelain dan fiber dari buah nanas yang bermanfaat untuk sistem pencernaan, bromelain memiliki sifat yang menenangkan pada perut Anda.</span></p>\r\n<h3 style=\"box-sizing: inherit; clear: both; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">4. Mencegah kanker usus</h3>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Makan buah nanas untuk pencernaan juga bagus untuk mencegah<a style=\"box-sizing: inherit; background-color: transparent; color: #3389f0; text-decoration-line: none;\" title=\"Mencegah Kanker Dengan Bakteri di Dalam Usus\" href=\"https://hellosehat.com/mencegah-kanker-dengan-bakteri-di-dalam-usus/\" target=\"_blank\" rel=\"noopener\">&nbsp;kanker pada usus</a>. Kandungan antioksidan dari vitamin C mampu melawan sel-sel kanker di dalam tubuh. Selain itu buah nanas juga kaya kandungan antioksidan lainnya, termasuk vitamin A, beta karoten, bromelain, dan berbagai senyawa flavonoid. Buah nanas juga mampu menangkal radikal bebas yang kuat akan penyebab pertumbuhan kankernya.</span></p>\r\n<h2 style=\"box-sizing: inherit; clear: both; font-size: 28px; margin-top: 0px; box-shadow: #f4f4f4 0px 1px 0px -0.1px; padding-bottom: 15px; font-family: \'open sans\', sans-serif; background-color: #ffffff;\">Efek samping kebanyakan makan buah nanas</h2>\r\n<p style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\"><span style=\"box-sizing: inherit;\">Selain buah nanas baik untuk pencernaan, tapi tidak baik juga kalau mengonsumsinya berlebihan. Anda mungkin akan merasakan bengkak dan agak gatal di bagian, bibir, lidah, dan pipi bagian dalam. Hal ini disebabkan oleh sifat daging nanas itu sendiri yang panas, biasanya akan hilang dalam beberapa jam. Tapi kalau disertai gatal-gatal sampai sulit bernapas, bisa jadi Anda memang alergi buah nanas.</span></p>\r\n<p class=\"end-of-article\" style=\"box-sizing: inherit; margin-bottom: 1em; color: #555555; font-family: \'open sans\', sans-serif; font-size: 14.76px; background-color: #ffffff;\" data-gtm-vis-recent-on-screen-1957258_91=\"43400\" data-gtm-vis-first-on-screen-1957258_91=\"43401\" data-gtm-vis-total-visible-time-1957258_91=\"100\" data-gtm-vis-has-fired-1957258_91=\"1\"><span style=\"box-sizing: inherit;\">Sedangkan untuk wanita hamil, asupan kandungan bromelain yang berlebihan akan mengakibatkan kontraksi rahim yang berpotensi menimbulkan keguguran. Tentu saja bukan berarti&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #3389f0; text-decoration-line: none;\" href=\"https://hellosehat.com/ibu-hamil-makan-nanas/\" target=\"_blank\" rel=\"noopener\">ibu hamil tidak boleh makan nanas</a>. Bromelain dalam level membahayakan ini baru bisa didapat jika Anda melahap dua buah nanas utuh sekaligus.</span></p>', 'blogs/feV4Asvdcexu5ZqujjyRGEOCJHre4C82koMFpSmS.jpeg', 5, 2, '2019-11-04 05:15:05', '2019-11-04 05:15:05', NULL),
(4, '872254a0-fec2-11e9-8462-1df124224ca4', 'Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!', 'kebanyakan-makan-sayur-itu-sehat-atau-tidak-ya-ini-7-fakta-ilmiahnya', '<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Sering kali kita mendengar ujaran orang-orang di sekitar kita untuk makan sayur karena itu sehat. Alasannya adalah karena banyak kandungan zat besi hingga serat yang terkandung di dalamnya dan itu membuat tubuhmu lebih fit. Jika dipikir-pikir, itu sama artinya tidak mungkin kamu sakit lantaran makan sayur walaupun makan sebanyak-banyaknya.</p>\r\n<div class=\"inarticle-ads\" style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; margin: 10px auto; outline: none !important;\">\r\n<div id=\"div-gpt-ad-inarticle1\" class=\"\" style=\"box-sizing: border-box; outline: none !important; width: 728px; max-width: 100%; margin: 0px auto; text-align: center;\" data-google-query-id=\"CL6qjP7nz-UCFdaQcAodUTcBdw\">\r\n<div id=\"google_ads_iframe_/253109699/IDNTimesDesktop/Health_3__container__\" style=\"box-sizing: border-box; outline: none !important; border: 0pt none; display: inline-block; width: 728px; height: 90px;\"><iframe id=\"google_ads_iframe_/253109699/IDNTimesDesktop/Health_3\" style=\"box-sizing: border-box; border-width: 0px; border-style: initial; vertical-align: bottom; outline: none !important;\" title=\"3rd party ad content\" src=\"https://tpc.googlesyndication.com/safeframe/1-0-36/html/container.html\" name=\"\" width=\"728\" height=\"90\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-pointer-lock allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-is-safeframe=\"true\" data-google-container-id=\"4\" data-load-complete=\"true\"></iframe></div>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Hmmm... Benarkah demikian? Apakah memang boleh untuk makan sayuran sebanyak-banyaknya dan itu tidak memiliki efek samping? Yuk, kita cari tahu. Berikut ini ulasan selengkapnya!</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">1. Makan sayur memang sehat</h2>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/how-to-get-kids-to-eat-vegetables-29a3eb56eaa5a59ccee78871914d0dcf.png\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">dealdashreviewed.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Tidak bisa mengubah kenyataan jika sayuran memiliki banyak kandungan yang menyehatkan. Vitamin, serat, zat besi, protein, sebutkan saja semuanya. Faktanya hasil sebuah studi mengatakan jika memakan sayur-sayuran berwarna ungu dapat mengurangi risiko terkena serangan asma, serta beberapa macam kanker.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">2. Tapi jika terlalu banyak akan memiliki efek sebaliknya</h2>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/getting-kids-to-eat-veggies-1170x650-c49bb0342b8f17ad88a9e6c63f252a65.jpg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">smartlifebites.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Namun karena manfaat itu, bukan berarti kamu bisa berlebihan dalam memakan sayuran. Terlalu banyak makan tumbuh-tumbuhan tersebut dapat membuat perutmu sakit, seperti sering buang angin dan bersendawa hingga gangguan pencernaan.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">3. Terlalu banyak serat di tubuhmu</h2>\r\n<div class=\"inarticle-ads\" style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; margin: 10px auto; outline: none !important;\">\r\n<div id=\"div-gpt-ad-inarticle2\" class=\"\" style=\"box-sizing: border-box; outline: none !important; width: 728px !important; height: 90px !important;\" data-google-query-id=\"COrUhv7nz-UCFdaQcAodUTcBdw\">\r\n<div id=\"google_ads_iframe_/253109699/IDNTimesDesktop/Health_4__container__\" style=\"box-sizing: border-box; outline: none !important;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/viral-norovirus-infection-fae4412990e01869e69bf6a6c1744c6e.jpg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">buoyhealth.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Apakah kamu tahu jika tubuhmu perlu memiliki serat setidaknya 25 gram per harinya? Rata-rata untuk satu gelas sayuran memiliki serat kurang lebih delapan gram, yang berarti seratmu sudah terpenuhi jika setidaknya kamu sudah makan empat gelas sayuran. Lebih dari itu, tubuhmu sudah kelebihan serat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #ed2126; text-decoration-line: none; outline: none !important;\" href=\"https://www.idntimes.com/food/recipe/liem-ling/5-tips-mudah-memasak-sayur-c1c2\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; outline: none !important; font-weight: bold;\"><em style=\"box-sizing: border-box; outline: none !important;\">Baca Juga: 5 Tips Mudah Memasak Sayur yang Bikin Semua Orang Jatuh Cinta</em></span></a></p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">4. Hasilnya nutrisi sayuran tidak dapat diserap tubuh</h2>\r\n<div class=\"editors-pick\" style=\"box-sizing: border-box; padding-bottom: 14px; border-bottom: 1px solid gray; margin-bottom: 30px; text-transform: capitalize; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">\r\n<div class=\"title\" style=\"box-sizing: border-box; width: 765px; position: relative; margin: 0px 0px 15px; text-align: center; text-transform: uppercase; outline: none !important;\"><span style=\"box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding: 0px 25px; z-index: 2; position: relative; font-size: 15px; outline: none !important;\">LANJUTKAN MEMBACA ARTIKEL DI BAWAH</span></div>\r\n<h3 class=\"title-editors-pick\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #ed2126; margin-top: 20px; margin-bottom: 10px; font-size: 18px; outline: none !important;\">Editor&rsquo;s Picks</h3>\r\n<ul style=\"box-sizing: border-box; outline: none !important; margin-top: 0px; margin-bottom: 10px; padding-left: 20px;\">\r\n<li style=\"box-sizing: border-box; outline: none !important; list-style: square; margin-bottom: 15px;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #333333; text-decoration-line: none; outline: none !important;\" href=\"https://www.idntimes.com/health/fitness/izza-namira-1/manfaat-kesehatan-asmr\">ASMR Punya Manfaat Kesehatan Menurut Riset, Ini Penjelasan Para Ahli!</a></li>\r\n<li style=\"box-sizing: border-box; outline: none !important; list-style: square; margin-bottom: 15px;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #333333; text-decoration-line: none; outline: none !important;\" href=\"https://www.idntimes.com/health/medical/nena-zakiah-1/fakta-unik-bayi-baru-lahir\">Pertama Kali Jadi Orangtua? Wajib Tahu 10 Fakta Unik Bayi Baru Lahir</a></li>\r\n<li style=\"box-sizing: border-box; outline: none !important; list-style: square; margin-bottom: 15px;\"><a style=\"box-sizing: border-box; background-color: transparent; color: #333333; text-decoration-line: none; outline: none !important;\" href=\"https://www.idntimes.com/health/fitness/abraham-herdyanto/manfaat-kesehatan-menanam-tumbuhan-di-dalam-rumah\">7 Manfaat Kesehatan Menanam Tumbuhan Di Dalam Rumah, Sudah Coba?</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/wide-wasted-food-f3e3a43e6731d99a14e6ee39b27e9c7e.jpg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">shape.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Perutmu pun memiliki kapasitas makanan yang bisa dicerna. Saat berusaha mencerna sayur yang berjumlah banyak tersebut, perutmu tidak memiliki kemampuan untuk menyerap seluruh nutrisinya. Hasilnya, kamu hanya membuang nutrisi tersebut.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">5. Katanya sih kebanyakan sayur juga dapat membuat kulitmu menjadi oranye</h2>\r\n<div class=\"inarticle-ads\" style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; margin: 10px auto; outline: none !important;\">\r\n<div id=\"div-gpt-ad-inarticle3\" class=\"\" style=\"box-sizing: border-box; outline: none !important; width: 765px;\" data-google-query-id=\"COvUhv7nz-UCFdaQcAodUTcBdw\">\r\n<div id=\"google_ads_iframe_/253109699/IDNTimesDesktop/Health_5__container__\" style=\"box-sizing: border-box; outline: none !important; width: 765px;\">\r\n<div style=\"box-sizing: border-box; outline: none !important;\"><ins class=\"adsbygoogle\" style=\"box-sizing: border-box; outline: none !important; display: block; text-align: center; height: 192px;\" data-ad-layout=\"in-article\" data-ad-format=\"fluid\" data-ad-client=\"ca-pub-9495011498622514\" data-ad-slot=\"5240918668\" data-adsbygoogle-status=\"done\"><ins id=\"aswift_0_expand\" style=\"box-sizing: border-box; outline: none !important; display: inline-table; border: none; height: 192px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 765px; background-color: transparent;\"><ins id=\"aswift_0_anchor\" style=\"box-sizing: border-box; outline: none !important; display: block; border: none; height: 192px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 765px; background-color: transparent;\"><iframe id=\"aswift_0\" style=\"box-sizing: border-box; left: 0px; position: absolute; top: 0px; border-width: 0px; border-style: initial; width: 765px; height: 192px; outline: none !important;\" name=\"aswift_0\" width=\"765\" height=\"192\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></ins></ins></ins></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/dermatologists-share-the-craziest-things-theyve-ever-seen-main1-v2-6ce9aa56eec3773c3759288168b6a36c.jpeg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">plasticsurgerypractice.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Sayuran memiliki banyak kandungan karotin yang sehat untuk matamu. Akan tetapi, jika terlalu banyak kandungan itu, akhirnya dapat masuk ke dalam darahmu dan dapat keluar di kulitmu. Hasilnya kulitmu akan berwarna agak jingga. Santai, ini hanya bersifat sementara, tapi tetap saja akan membuatmu tampak aneh.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">6. Dan kamu bisa terus menerus kenyang hingga membuatmu kekurangan nutrisi</h2>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/say-no-to-junk-food-92c9ad74f9c779becb02d3e4abfbbccd.jpg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">liveloveraw.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Merasa kenyang itu adalah hal yang baik, terlebih jika kamu sudah kelebihan berat badan. Akan tetapi jika kekurangan nutrisi, kondisi itu bisa berbahaya. Sayuran memiliki kemampuan untuk menunda rasa lapar. Jika kebanyakan, itu akan menipu otakmu merasa kenyang yang padahal itu belum waktunya. Karena kamu sangat membutuhkan nutrisi lainnya, seperti lemak dan protein.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: \'Roboto Slab\', serif; font-weight: 500; line-height: 1.5; color: #333333; margin: 20px 0px 4px; font-size: 30px; background-color: #ffffff; outline: none !important;\">7. Karena itu, makanlah sayuran secukupnya</h2>\r\n<div class=\"embed-image\" style=\"box-sizing: border-box; position: relative; margin-bottom: 12px; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\"><img style=\"box-sizing: border-box; outline: none !important; border: 0px; vertical-align: middle; max-width: 100%; width: 765px; height: auto !important;\" src=\"https://cdn.idntimes.com/content-images/post/20190121/asian-girl-with-vegetable-1080x675-ea452e859bb22230c22aec665e539a2e.jpg\" alt=\"Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!\" /><span class=\"main-article-source\" style=\"box-sizing: border-box; outline: none !important; font-size: 12px; display: block; position: absolute; bottom: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.4); text-align: center; color: #ffffff; font-style: italic; padding: 4px 10px;\">blog.organwiseguys.com</span></div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Menurut beberapa studi, porsi maksimal memakan sayuran adalah tiga hingga empat porsi. Lebih dari itu, nutrisi yang ada di dalam sayuran itu tidak akan diserap oleh tubuh. Jadi batasi ya makanmu. Boleh saja menjadi vegetarian yang hanya memakan sayuran, namun terlalu banyak hanya akan tidak sehat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 1.89; color: #333333; font-family: Roboto, sans-serif; font-size: 18px; background-color: #ffffff; outline: none !important;\">Yang vegetarian, hati-hati ya. Imbangi saja nutrisimu walaupun kamu memiliki pantangan memakan daging. Seperti kata orang-orang, hal berlebih itu memang tidak baik.</p>', 'blogs/NfnY6Jhg4xrUNaHyfWBtQpViySl1kk6ORo8ZPB3H.jpeg', 5, 2, '2019-11-04 05:18:25', '2019-11-04 05:18:25', NULL);
INSERT INTO `blogs` (`id`, `uuid`, `title`, `slug`, `description`, `thumbnail`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '189e1e50-fec3-11e9-9f29-6977ceffc822', 'Fakta Menarik Tentang Vegetarian', 'fakta-menarik-tentang-vegetarian', '<p class=\"MsoListParagraphCxSpFirst\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">1.</span><span style=\"box-sizing: border-box;\">Ada beberapa jenis</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Kebanyakan orang memahami bahwa vegetarian tidak makan daging, tapi salah satu fakta tentang vegetarian yang harus Anda ketahui adalah bahwa pola makan vegetarian terdiri dari beberapa jenis. Beberapa vegetarian hanya menghindari daging, unggas dan ikan sementara yang lain juga melupakan telur, susu atau seluruh jenis produk hewani.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">2.</span><span style=\"box-sizing: border-box;\">Sehat</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Beberapa orang menjadi takut dan khawatir kekurangan nutrisi protein ketika harus meninggalkan daging atau beberapa makanan dengan kandungan hewani. Namun tidak perlu khawatir, seluruh makanan yang berasal dari tumbuhn dan buah ternyata disinyalir dapat memenuhi kebutuhan gizi manusia.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">3.</span><span style=\"box-sizing: border-box;\">Masih dapat menaikkan bobot badan.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Tidak berarti dengan menghindari daging maka berat badan anda dapat turun begitu saja. Bila anda meninggalkan daging dari porsi makan anda setiap harinya, namu tetap mengkonsumsi keju dan banyak jenis kacang &ndash; kacangan maka tentu berat badan anda dapat terus bertambah.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Berat badan anda dapat berkurang ketika jumlah kalori yang anda bakar lebih besar dari pada jumlah kalori yang asup setiap harinya.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">4.</span><span style=\"box-sizing: border-box;\">Ramah lingkungan</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Memang benar saat menanam sayuran dan buahan cukup menguras energi, namun memelihara sapi, ayam dan beberapa jenis unggas lain nya terbukti menguras energi lebih banyak lagi. Begitu juga dengan pengemasan produk nya, akan lebih mudah mengemas produk sayuran dan buah dibandingkan dengan mengemas daging dan unggas yang memerlukan banyak hal penunjang agar tetap segar.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">5.</span><span style=\"box-sizing: border-box;\">Menurunkan risiko penyakit</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Di berbagai segi dalam kesehatan mengurangi konsumsi daging dalam porsi makanan harian anda terbukti dapat mengurangi resiko penyakit. Seperti yang telah diinformasikan oleh peneliti dari Brown University bahwa menjadi vegetarian dapat mengurangi resiko terkena kanker, penyakit jantung, obesitas, diabetes dan tekanan darah tinggi.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">6.</span><span style=\"box-sizing: border-box;\">Anda mungkin butuh suplemen tambahan</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Seperti yang telah disampaikan diatas, menjadi seorang vegetarian dapat membuat anda lebih sehat. Namun bagaimanapun tidak dapat dipungkiri ada banyak nutrisi yang hanya bisa didapatkan dari makanan hewani. Oleh karna itu, bila anda memutskan untuk menjadi seorang vegetarian berkonsultasilah dengan dokter anda untuk mendapatkan rekomendasian suplemen tambahan.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">7.</span><span style=\"box-sizing: border-box;\">Tidak sulit</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"box-sizing: border-box; margin: 0px 0px 25px; color: #525252; font-family: Merriweather, serif; font-size: 16px; background-color: #f5f5f5;\"><span style=\"box-sizing: border-box;\">Bila Anda harus menghindari makanan tertentu karena alergi atau masalah kesehatan lainnya, itu bisa sangat sulit untuk menghindari makanan tersebut. Namun, menjadi seorang vegetarian tidak terlalu sulit. Setelah Anda memutuskan mana makanan yang Anda tidak ingin makan, itu hanya sekedar perkara membaca label makanan dan memahami makanan mana yang dapat diterima dan mana yang tidak.</span></p>', 'blogs/4wlXJFzEvUXw6suJgmrAZyhjqwUozd4KjtN8zpgz.jpeg', 5, 2, '2019-11-04 05:22:29', '2019-11-04 05:22:29', NULL),
(6, 'c30da2e0-fec4-11e9-bb7e-0f1b1f554ba2', 'What Is GreenLand ?', 'what-is-greenland', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: #222222; font-family: sans-serif; background-color: #ffffff;\"><strong>Greenland</strong>&nbsp;(<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Greenlandic language (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Greenlandic_language&amp;action=edit&amp;redlink=1\">Greenlandic</a>:&nbsp;<em><span lang=\"kl\">Kalaallit Nunaat</span></em>,&nbsp;<small style=\"font-size: 11.9px;\">diucapkan&nbsp;</small><span class=\"IPA\" title=\"Representasi dalam Alfabet Fonetis Internasional (IPA)\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"WP:IPA\" href=\"https://id.wikipedia.org/wiki/WP:IPA\">[kalaːɬit nunaːt]</a></span>;&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Bahasa Denmark\" href=\"https://id.wikipedia.org/wiki/Bahasa_Denmark\">bahasa Denmark</a>:&nbsp;<span lang=\"da\"><em>Gr&oslash;nland</em></span>,&nbsp;<small style=\"font-size: 11.9px;\">diucapkan&nbsp;</small><span class=\"IPA\" title=\"Representasi dalam Alfabet Fonetis Internasional (IPA)\"><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Wikipedia:IPA untuk bahasa Arab\" href=\"https://id.wikipedia.org/wiki/Wikipedia:IPA_untuk_bahasa_Arab\">[ˈkʁɶnˌl&aelig;nˀ]</a></span>) adalah&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Pembagian administratif otonom (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Pembagian_administratif_otonom&amp;action=edit&amp;redlink=1\">negara otonom</a>&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Kerajaan Denmark\" href=\"https://id.wikipedia.org/wiki/Kerajaan_Denmark\">Kerajaan Denmark</a><sup id=\"cite_ref-Suksi2011_9-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-Suksi2011-9\">[9]</a></sup><sup id=\"cite_ref-gfbv_10-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-gfbv-10\">[10]</a></sup>&nbsp;yang terletak di antara&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Samudra Arktik\" href=\"https://id.wikipedia.org/wiki/Samudra_Arktik\">Samudra Arktik</a>&nbsp;dan&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Samudra Atlantik\" href=\"https://id.wikipedia.org/wiki/Samudra_Atlantik\">Atlantik</a>, sebelah timur&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Kepulauan Arktik Kanada\" href=\"https://id.wikipedia.org/wiki/Kepulauan_Arktik_Kanada\">Kepulauan Arktik Kanada</a>. Meski&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Geografi fisik\" href=\"https://id.wikipedia.org/wiki/Geografi_fisik\">secara fisiogeografis</a>&nbsp;merupakan bagian dari benua&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Amerika Utara\" href=\"https://id.wikipedia.org/wiki/Amerika_Utara\">Amerika Utara</a>, Greenland sangat erat secara politik dan budaya dengan Eropa (khususnya&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Norwegia\" href=\"https://id.wikipedia.org/wiki/Norwegia\">Norwegia</a>&nbsp;dan Denmark,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Kolonialisme\" href=\"https://id.wikipedia.org/wiki/Kolonialisme\">negara-negara kolonial</a>, dan pulau&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Islandia\" href=\"https://id.wikipedia.org/wiki/Islandia\">Islandia</a>) selama lebih dari seribu tahun.<sup id=\"cite_ref-Brown2000_11-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-Brown2000-11\">[11]</a></sup>&nbsp;Mayoritas penduduknya suku&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Inuit\" href=\"https://id.wikipedia.org/wiki/Inuit\">Inuit</a>. Leluhur mereka pindah dari daratan Kanada pada abad ke-13 dan perlahan menyebar ke seluruh pulau ini.</p>\r\n<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: #222222; font-family: sans-serif; background-color: #ffffff;\">Greenland adalah&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Daftar pulau menurut luas\" href=\"https://id.wikipedia.org/wiki/Daftar_pulau_menurut_luas\">pulau terbesar di dunia</a>&nbsp;(<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Australia\" href=\"https://id.wikipedia.org/wiki/Australia\">Australia</a>&nbsp;dan&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Antarktika\" href=\"https://id.wikipedia.org/wiki/Antarktika\">Antarktika</a>, sama-sama lebih besar daripada Greenland, umumnya dianggap sebagai benua).<sup id=\"cite_ref-jc_12-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-jc-12\">[12]</a></sup>&nbsp;Tiga per empat Greenland ditutupi oleh satu-satunya&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Lempeng es Greenland (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Lempeng_es_Greenland&amp;action=edit&amp;redlink=1\">lempeng es</a>&nbsp;abadi selain&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Antarktika\" href=\"https://id.wikipedia.org/wiki/Antarktika\">Antarktika</a>. Dengan jumlah penduduk 56.480 jiwa (2013),<sup id=\"cite_ref-Greenland_in_Figures_2013_5-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-Greenland_in_Figures_2013-5\">[5]</a></sup>&nbsp;Greenland adalah&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Daftar negara dan dependensi menurut kepadatan penduduk (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Daftar_negara_dan_dependensi_menurut_kepadatan_penduduk&amp;action=edit&amp;redlink=1\">wilayah berpenduduk terjarang</a>&nbsp;di dunia.<sup id=\"cite_ref-popden_13-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-popden-13\">[13]</a></sup>&nbsp;Kurang lebih sepertiga penduduknya tinggal di&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Nuuk\" href=\"https://id.wikipedia.org/wiki/Nuuk\">Nuuk</a>, ibu kota sekaligus kota terbesar. Kapal feri&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Arctic Umiaq Line (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Arctic_Umiaq_Line&amp;action=edit&amp;redlink=1\">Arctic Umiaq Line</a>&nbsp;menghubungkan berbagai kota dan permukiman dan menjadi transportasi utama di Greenland barat.</p>\r\n<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: #222222; font-family: sans-serif; background-color: #ffffff;\">Greenland dihuni secara musiman selama kurang lebih 4.500 tahun terakhir oleh suku-suku Arktik yang leluhurnya berasal dari&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Kanada\" href=\"https://id.wikipedia.org/wiki/Kanada\">Kanada</a>.<sup id=\"cite_ref-natmus_14-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-natmus-14\">[14]</a></sup><sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-15\">[15]</a></sup>&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Bangsa Viking\" href=\"https://id.wikipedia.org/wiki/Bangsa_Viking\">Bangsa Viking</a>&nbsp;mulai menetap di bagian selatan Greenland pada abad ke-10 setelah sebelumnya menghuni&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Islandia\" href=\"https://id.wikipedia.org/wiki/Islandia\">Islandia</a>&nbsp;untuk menghindari persekusi&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Monarki Norwegia\" href=\"https://id.wikipedia.org/wiki/Monarki_Norwegia\">Raja Norwegia</a>&nbsp;dan pemerintahannya. Mereka kelak berlayar dari Greenland dan Islandia ke benua Amerika.&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Leif Erikson\" href=\"https://id.wikipedia.org/wiki/Leif_Erikson\">Leif Erikson</a>&nbsp;menjadi orang Eropa yang tercatat menjejakkan kaki pertama kali di Amerika Utara, hampir 500 tahun sebelum&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Christopher Columbus\" href=\"https://id.wikipedia.org/wiki/Christopher_Columbus\">Columbus</a>&nbsp;mendarat di kepulauan Karibia. Rumpun suku&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Inuit\" href=\"https://id.wikipedia.org/wiki/Inuit\">Inuit</a>&nbsp;tiba pada abad ke-13. Meski sudah lama dipengaruhi oleh kehadiran bangsa&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Norwegia\" href=\"https://id.wikipedia.org/wiki/Norwegia\">Norwegia</a>, Greenland baru ditetapkan secara resmi sebagai wilayah Norwegia pada tahun 1262. Koloni bangsa Nordik di Greenland lenyap pada akhir abad ke-15 sejak&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Wabah Hitam\" href=\"https://id.wikipedia.org/wiki/Wabah_Hitam\">Wabah Hitam</a>&nbsp;melanda dan melemahkan Norwegia. Tidak lama kemudian, pada tahun 1499, bangsa Portugal sempat menjelajah dan mengklaim pulau ini dan memberi nama&nbsp;<em>Terra do Lavrador</em>&nbsp;(nama ini nantinya diberikan untuk wilayah&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Labrador\" href=\"https://id.wikipedia.org/wiki/Labrador\">Labrador</a>&nbsp;di Kanada).<sup id=\"cite_ref-16\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" href=\"https://id.wikipedia.org/wiki/Greenland#cite_note-16\">[16]</a></sup></p>\r\n<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: #222222; font-family: sans-serif; background-color: #ffffff;\">Pada awal abad ke-18, para penjelajah dari Denmark kembali mendarat di Greenland. Untuk mempererat hubungan perdagangan dan kekuasaannya,&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-repeat: initial;\" title=\"Denmark&ndash;Norwegia\" href=\"https://id.wikipedia.org/wiki/Denmark%E2%80%93Norwegia\">Denmark&ndash;Norwegia</a>&nbsp;mengklaim kedaulatan atas pulau tersebut. Karena statusnya lemah, Norwegia kehilangan kedaulatan atas Greenland pada tahun 1814 ketika perserikatan kerajaan ini dibubarkan. Greenland menjadi milik Denmark pada tahun 1814 dan ditetapkan sebagai wilayah integral Denmark oleh&nbsp;<a class=\"new\" style=\"text-decoration-line: none; color: #a55858; background-image: none; background-repeat: initial;\" title=\"Konstitusi Denmark (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Konstitusi_Denmark&amp;action=edit&amp;redlink=1\">Konstitusi Denmark</a>&nbsp;pada tahun 1953.</p>', 'blogs/I96qsVV2k8IJRHdQE1n579kRmUb0mL1UrMRLLyWG.jpeg', 7, 2, '2019-11-04 05:34:25', '2019-11-04 05:34:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `qty` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `uuid`, `product_id`, `user_id`, `total`, `message`, `qty`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd986fcc0-fd64-11e9-98f1-cb3113443c7e', 2, 3, 30000, 'slurr', 2, 1, '2019-11-02 11:35:19', '2019-11-02 11:53:09', NULL),
(2, '2e9c56f0-fdcc-11e9-9b11-a9f381cd963b', 2, 3, 30000, NULL, 2, 1, '2019-11-02 23:55:00', '2019-11-03 02:16:31', NULL),
(3, '9e70c2d0-fddd-11e9-9c8a-35c54265bba2', 3, 3, 70000, NULL, 2, 1, '2019-11-03 01:59:49', '2019-11-03 02:16:31', NULL),
(4, '1e3ba660-fde0-11e9-b96e-7d760aff2698', 3, 3, 35000, NULL, 1, 1, '2019-11-03 02:17:43', '2019-11-03 02:17:59', NULL),
(5, '78964e10-fde0-11e9-8e23-dff3ac28d019', 3, 3, 35000, NULL, 1, 1, '2019-11-03 02:20:14', '2019-11-03 02:20:28', NULL),
(6, 'a9b1e3f0-fde0-11e9-84bc-35e537e721ea', 2, 3, 15000, 'duarr', 1, 1, '2019-11-03 02:21:37', '2019-11-03 02:21:56', NULL),
(7, 'ec7cd8a0-fe13-11e9-99c6-39388517f6ad', 2, 6, 15000, 'Yang segar segar bos', 1, 1, '2019-11-03 08:28:33', '2019-11-03 08:28:57', NULL),
(8, 'e3abb160-fe1c-11e9-944c-f9dd27c16b02', 2, 6, 15000, 'yang hijau dan segar', 1, 1, '2019-11-03 09:32:44', '2019-11-03 09:41:13', NULL),
(9, '36040c80-fe1f-11e9-a1df-8daf908896a6', 3, 6, 70000, 'mantap', 2, 1, '2019-11-03 09:49:21', '2019-11-03 09:49:38', NULL),
(10, 'e4633cb0-fe22-11e9-a924-ff62a62d7ec9', 3, 6, 70000, 'slurr', 2, 1, '2019-11-03 10:15:42', '2019-11-03 10:17:04', NULL),
(11, 'f11fa0b0-fe22-11e9-8134-cb060658ee00', 2, 6, 30000, 'green', 2, 1, '2019-11-03 10:16:03', '2019-11-03 10:17:04', NULL),
(12, '75fd1d20-fe4c-11e9-a542-a7a11d13db3e', 3, 8, 35000, 'Test beli', 1, 1, '2019-11-03 15:13:16', '2019-11-03 15:15:28', NULL),
(13, 'abf715f0-fe57-11e9-9caf-077ea89eb557', 3, 8, 35000, 'segar, fresh', 1, 1, '2019-11-03 16:33:31', '2019-11-03 16:33:49', NULL),
(14, '26d73e90-fe5c-11e9-a2ad-f31af1097378', 2, 9, 15000, 'Mantap, cek sound !1!1!', 1, 1, '2019-11-03 17:05:35', '2019-11-03 17:05:51', NULL),
(15, 'bbedda30-fe5c-11e9-834a-d1d7ebcc94b7', 2, 9, 15000, 'njir vroh', 1, 1, '2019-11-03 17:09:45', '2019-11-03 17:09:59', NULL),
(16, 'ae201ac0-fe61-11e9-9aac-e5c6cc1975ed', 2, 8, 15000, 'test', 1, 1, '2019-11-03 17:45:09', '2019-11-03 17:45:29', NULL),
(17, '3d03fb80-fe62-11e9-90b9-dfe7048bdf4c', 3, 8, 35000, 'uiu', 1, 1, '2019-11-03 17:49:09', '2019-11-03 17:50:02', NULL),
(18, '6a8ea250-fe92-11e9-be45-4d93a3e2e8c3', 3, 6, 35000, 'fresh', 1, 1, '2019-11-03 23:34:01', '2019-11-03 23:35:42', NULL),
(19, 'f88dc3e0-feb6-11e9-b9dc-ebeb4649213b', 34, 6, 10000, 'Jangan lupa di bungkus', 1, 1, '2019-11-04 03:55:41', '2019-11-04 03:56:00', NULL),
(20, 'a093e9f0-feba-11e9-afee-8745b8287c81', 36, 14, 50000, 'Packing rapi.', 10, 1, '2019-11-04 04:21:52', '2019-11-04 04:24:15', NULL),
(21, 'bba921c0-fec3-11e9-9035-0d827263923a', 31, 15, 3000, NULL, 1, 0, '2019-11-04 05:27:03', '2019-11-04 05:27:03', NULL),
(22, 'f50d69d0-fec3-11e9-871d-e13ebef767d9', 28, 15, 12000, NULL, 3, 0, '2019-11-04 05:28:39', '2019-11-04 05:28:39', NULL),
(23, 'fb8b24e0-fec5-11e9-a0ad-33cd01e71b43', 33, 17, 3000, 'no busuk', 1, 0, '2019-11-04 05:43:09', '2019-11-04 05:45:52', '2019-11-04 05:45:52'),
(24, 'be1f4c60-feca-11e9-a20d-e163e56200cd', 39, 18, 22000, 'Daunnya bagus', 4, 0, '2019-11-04 06:17:13', '2019-11-04 06:17:28', '2019-11-04 06:17:28'),
(25, 'eabf1f60-feca-11e9-9e66-2d224e8278d0', 31, 18, 3000, 'yang panjang', 1, 0, '2019-11-04 06:18:28', '2019-11-04 06:18:28', NULL),
(26, '20ad2720-fecc-11e9-abb4-030535e6684a', 40, 19, 12, 'yang kuning', 1, 1, '2019-11-04 06:27:08', '2019-11-04 06:27:26', NULL),
(27, '94223110-fecc-11e9-bbc0-e34324d115f8', 38, 19, 10, 'yang bulet', 1, 1, '2019-11-04 06:30:22', '2019-11-04 06:30:47', NULL),
(28, '27b68df0-fed1-11e9-9de8-ed8817395846', 30, 21, 15000, 'Fresh', 1, 1, '2019-11-04 07:03:07', '2019-11-04 07:03:51', NULL),
(29, 'e4ca8190-fed1-11e9-9176-03631f584989', 38, 19, 10, 'packing gg', 1, 1, '2019-11-04 07:08:25', '2019-11-04 07:08:37', NULL),
(30, '7bc5a2a0-fed4-11e9-baf2-57bcffd5703e', 38, 22, 80, 'pesenan io', 8, 0, '2019-11-04 07:26:57', '2019-11-04 07:26:57', NULL),
(31, '9b11dc80-ff7e-11e9-8f7b-c5f702ffbe69', 34, 21, 10000, 'test', 1, 1, '2019-11-05 03:44:44', '2019-11-05 03:44:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_product` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `slug`, `is_product`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'e88a6fa0-fd61-11e9-baa4-73ff7c1a811b', 'buah', 1, 'Buah', '2019-11-02 11:14:16', '2019-11-02 11:14:16', NULL),
(2, 'e8949ba0-fd61-11e9-aedb-31338c7c2122', 'sayur', 1, 'Sayur', '2019-11-02 11:14:16', '2019-11-02 11:14:16', NULL),
(3, 'e8c09280-fd61-11e9-8382-f58911fae510', 'daging', 1, 'Daging', '2019-11-02 11:14:17', '2019-11-02 11:14:17', NULL),
(4, 'e8cc3c20-fd61-11e9-ba11-f55d4c85a387', 'pakaian', 1, 'Pakaian', '2019-11-02 11:14:17', '2019-11-02 11:14:17', NULL),
(5, '361f47d0-fec0-11e9-9bf3-b19a2972b572', 'event', 0, 'Event', '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL),
(6, '363a5300-fec0-11e9-807a-a5eb440daeee', 'tech', 0, 'Tech', '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL),
(7, '36465e70-fec0-11e9-bf01-51eb1eaa2fb8', 'weebs', 0, 'Weebs', '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `uuid`, `app_name`, `logo`, `logo_2`, `phone_number`, `address`, `email`, `instagram`, `facebook`, `slogan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'Pasar Online', '/photos/2/aplikasi/5dbf1b1106606.png', '/photos/2/aplikasi/5dbf1b1106606.png', '08787128912', 'Jalan Raya Cibodas, Bandung Jawa Barat', 'pasaronline@gmail.com', '#', '#', 'Rise Up For Life.', NULL, '2019-11-03 18:23:59', NULL),
(2, '1aa7be40-fe67-11e9-9a3c-1323ba8bea43', 'Pasar Online', '/photos/2/aplikasi/5dbf1b1106606.png', '/photos/2/aplikasi/5dbf1b1106606.png', '08122121', 'Jalan Raya Cibodas, Bandung Jawa Barat', 'pasaronline@admin.com', '#', '#', 'Rise Up For Life.', '2019-11-03 18:23:59', '2019-11-03 18:23:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `last_seens`
--

CREATE TABLE `last_seens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `last_seens`
--

INSERT INTO `last_seens` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2019-11-02 11:33:35', '2019-11-02 11:33:35'),
(28, 6, 3, '2019-11-03 10:16:23', '2019-11-03 10:16:23'),
(29, 6, 2, '2019-11-03 14:03:48', '2019-11-03 14:03:48'),
(30, 8, 3, '2019-11-03 15:12:53', '2019-11-03 15:12:53'),
(31, 8, 2, '2019-11-03 16:39:24', '2019-11-03 16:39:24'),
(32, 9, 2, '2019-11-03 17:05:21', '2019-11-03 17:05:21'),
(33, 9, 3, '2019-11-03 17:18:46', '2019-11-03 17:18:46'),
(34, 8, 13, '2019-11-04 01:13:39', '2019-11-04 01:13:39'),
(35, 8, 12, '2019-11-04 01:14:37', '2019-11-04 01:14:37'),
(36, 8, 15, '2019-11-04 01:14:46', '2019-11-04 01:14:46'),
(37, 8, 7, '2019-11-04 01:14:54', '2019-11-04 01:14:54'),
(38, 6, 34, '2019-11-04 03:55:25', '2019-11-04 03:55:25'),
(39, 14, 36, '2019-11-04 04:21:28', '2019-11-04 04:21:28'),
(40, 15, 31, '2019-11-04 05:26:58', '2019-11-04 05:26:58'),
(41, 15, 35, '2019-11-04 05:27:46', '2019-11-04 05:27:46'),
(42, 15, 28, '2019-11-04 05:28:02', '2019-11-04 05:28:02'),
(43, 17, 33, '2019-11-04 05:43:01', '2019-11-04 05:43:01'),
(44, 16, 33, '2019-11-04 05:48:11', '2019-11-04 05:48:11'),
(45, 16, 29, '2019-11-04 05:48:31', '2019-11-04 05:48:31'),
(46, 17, 35, '2019-11-04 05:48:43', '2019-11-04 05:48:43'),
(47, 17, 30, '2019-11-04 05:49:03', '2019-11-04 05:49:03'),
(48, 18, 39, '2019-11-04 06:16:38', '2019-11-04 06:16:38'),
(49, 18, 36, '2019-11-04 06:17:57', '2019-11-04 06:17:57'),
(50, 18, 31, '2019-11-04 06:18:15', '2019-11-04 06:18:15'),
(51, 16, 40, '2019-11-04 06:24:59', '2019-11-04 06:24:59'),
(52, 19, 40, '2019-11-04 06:26:56', '2019-11-04 06:26:56'),
(53, 19, 38, '2019-11-04 06:30:09', '2019-11-04 06:30:09'),
(54, 21, 40, '2019-11-04 06:58:44', '2019-11-04 06:58:44'),
(55, 21, 38, '2019-11-04 06:59:36', '2019-11-04 06:59:36'),
(56, 21, 30, '2019-11-04 07:02:27', '2019-11-04 07:02:27'),
(57, 22, 38, '2019-11-04 07:25:10', '2019-11-04 07:25:10'),
(58, 8, 23, '2019-11-05 02:55:18', '2019-11-05 02:55:18'),
(59, 21, 34, '2019-11-05 03:44:37', '2019-11-05 03:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uuid`, `ip`, `message`, `action_method`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'e8841940-fd61-11e9-84d0-c9dc390d0c25', '127.0.0.1', 'Membuat kategori Buah', 'POST', 1, '2019-11-02 11:14:16', '2019-11-02 11:14:16', NULL),
(2, 'e88ed580-fd61-11e9-909d-1bcea57394ce', '127.0.0.1', 'Membuat kategori Sayur', 'POST', 1, '2019-11-02 11:14:16', '2019-11-02 11:14:16', NULL),
(3, 'e89c4b20-fd61-11e9-be7d-4b3f688f6570', '127.0.0.1', 'Membuat kategori Daging', 'POST', 1, '2019-11-02 11:14:16', '2019-11-02 11:14:16', NULL),
(4, 'e8c4d040-fd61-11e9-84e5-9b273096bd93', '127.0.0.1', 'Membuat kategori Pakaian', 'POST', 1, '2019-11-02 11:14:17', '2019-11-02 11:14:17', NULL),
(5, '33789960-fd62-11e9-9175-6ddf4852d91b', '127.0.0.1', 'Membuat Product Apel', 'POST', 1, '2019-11-02 11:16:22', '2019-11-02 11:16:22', NULL),
(6, '4aad1e60-fd62-11e9-9bf8-5db60bb07471', '127.0.0.1', 'Membuat Product Apel', 'POST', 1, '2019-11-02 11:17:01', '2019-11-02 11:17:01', NULL),
(7, 'bf5bfe90-fd62-11e9-b945-73534fec0a17', '127.0.0.1', 'Memperbarui Product Mangga id = 3', 'POST', 1, '2019-11-02 11:20:17', '2019-11-02 11:20:17', NULL),
(8, 'c5c4bc40-fd62-11e9-91dc-dbccd29c6221', '127.0.0.1', 'Memperbarui Product Mangga id = 3', 'POST', 1, '2019-11-02 11:20:27', '2019-11-02 11:20:27', NULL),
(9, '9424f400-fd64-11e9-a56c-8dd93e58a086', '127.0.0.1', 'alfy@test.dev Membuat Promosi Produk, slug produk : mangga-1572693627', 'POST', 2, '2019-11-02 11:33:23', '2019-11-02 11:33:23', NULL),
(10, 'd98ad220-fd64-11e9-9139-496713531d71', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-02 11:35:19', '2019-11-02 11:35:19', NULL),
(11, '2f85f540-fd67-11e9-87f6-ef00d4a71e76', '127.0.0.1', 'alfy@test.dev Membuat Kasir kasir@gmail.com', 'POST', 2, '2019-11-02 11:52:03', '2019-11-02 11:52:03', NULL),
(12, '37738960-fd67-11e9-881a-61b11d09c243', '127.0.0.1', 'Memperbarui Kasir kasir@gmail.com', 'POST', 2, '2019-11-02 11:52:16', '2019-11-02 11:52:16', NULL),
(13, '42914be0-fd67-11e9-8137-b5652b187e7c', '127.0.0.1', 'Memperbarui Kasir kasir@gmail.com', 'POST', 2, '2019-11-02 11:52:35', '2019-11-02 11:52:35', NULL),
(14, '5702d7a0-fd67-11e9-a39a-814a2612045b', '127.0.0.1', 'Melakukan Transaksi, id=1 , cart_id=1', 'POST', 3, '2019-11-02 11:53:09', '2019-11-02 11:53:09', NULL),
(15, '9f34c0a0-fdc6-11e9-a784-5502e6e91f39', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:15:12', '2019-11-02 23:15:12', NULL),
(16, '032dcce0-fdc7-11e9-bf1b-095c5d5655e3', '127.0.0.1', 'Menolak transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:18:00', '2019-11-02 23:18:00', NULL),
(17, '1862db80-fdc7-11e9-a625-d93726d9187e', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:18:36', '2019-11-02 23:18:36', NULL),
(18, '49c290d0-fdc7-11e9-a7f3-59b5cef6a51b', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:19:58', '2019-11-02 23:19:58', NULL),
(19, '65fdbd80-fdc7-11e9-a545-5b8d012e1f5c', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:20:46', '2019-11-02 23:20:46', NULL),
(20, '880a7b00-fdc7-11e9-a2e9-8f525fa35731', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:21:43', '2019-11-02 23:21:43', NULL),
(21, '9bef6c60-fdc7-11e9-9abc-696a6b2fa513', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:22:16', '2019-11-02 23:22:16', NULL),
(22, 'bdc67000-fdc7-11e9-8f78-8f8df6c44744', '127.0.0.1', 'Menolak transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:23:13', '2019-11-02 23:23:13', NULL),
(23, '3912e220-fdc8-11e9-8f4a-7929e176be04', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:26:40', '2019-11-02 23:26:40', NULL),
(24, '62b558b0-fdc8-11e9-ad34-e7c1af6f7747', '127.0.0.1', 'Menerima transaksi, id transaksi=2', 'GET', 1, '2019-11-02 23:27:50', '2019-11-02 23:27:50', NULL),
(25, '2ebb4640-fdcc-11e9-a33c-8f66d2a9c2ed', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-02 23:55:01', '2019-11-02 23:55:01', NULL),
(26, '72cf1140-fdcc-11e9-9971-ab5b49a7b389', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 2', 'POST', 3, '2019-11-02 23:56:55', '2019-11-02 23:56:55', NULL),
(27, '9e7987a0-fddd-11e9-8e04-07cc1d1d8c61', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-03 01:59:49', '2019-11-03 01:59:49', NULL),
(28, 'ac5d75a0-fddd-11e9-b753-8f8fe4b75731', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 3', 'POST', 3, '2019-11-03 02:00:13', '2019-11-03 02:00:13', NULL),
(29, 'f3563df0-fddf-11e9-8fed-6dce5c3bc693', '127.0.0.1', 'Melakukan Transaksi, id=3 , cart_id=2', 'POST', 3, '2019-11-03 02:16:31', '2019-11-03 02:16:31', NULL),
(30, 'f3580e00-fddf-11e9-86fa-b1175a713617', '127.0.0.1', 'Melakukan Transaksi, id=4 , cart_id=3', 'POST', 3, '2019-11-03 02:16:31', '2019-11-03 02:16:31', NULL),
(31, '1e451900-fde0-11e9-9631-d1dc93c04d0e', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-03 02:17:43', '2019-11-03 02:17:43', NULL),
(32, '27b775a0-fde0-11e9-9b21-5576e088c939', '127.0.0.1', 'Melakukan Transaksi, id=5 , cart_id=4', 'POST', 3, '2019-11-03 02:17:59', '2019-11-03 02:17:59', NULL),
(33, '78a33b70-fde0-11e9-b995-6fd2cfc9461e', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-03 02:20:14', '2019-11-03 02:20:14', NULL),
(34, '80bcdf50-fde0-11e9-9e13-5b05d1f9ad88', '127.0.0.1', 'Melakukan Transaksi, id=6 , cart_id=5', 'POST', 3, '2019-11-03 02:20:28', '2019-11-03 02:20:28', NULL),
(35, 'a9cc88e0-fde0-11e9-b113-4f0d04988472', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 3, '2019-11-03 02:21:37', '2019-11-03 02:21:37', NULL),
(36, 'b513fad0-fde0-11e9-b41d-8b6c72adca62', '127.0.0.1', 'Melakukan Transaksi, id=7 , cart_id=6', 'POST', 3, '2019-11-03 02:21:56', '2019-11-03 02:21:56', NULL),
(37, 'ab0bd3d0-fde2-11e9-ae6e-ed040456dfd5', '127.0.0.1', 'Menerima transaksi, id transaksi=7', 'GET', 1, '2019-11-03 02:35:58', '2019-11-03 02:35:58', NULL),
(38, 'af1afe10-fde2-11e9-99b5-db6b6d82212c', '127.0.0.1', 'Menolak transaksi, id transaksi=4', 'GET', 1, '2019-11-03 02:36:05', '2019-11-03 02:36:05', NULL),
(39, 'b3dfc3e0-fde2-11e9-9a4f-5773e40b7f1c', '127.0.0.1', 'Menerima transaksi, id transaksi=6', 'GET', 1, '2019-11-03 02:36:13', '2019-11-03 02:36:13', NULL),
(40, 'ec91ffb0-fe13-11e9-9c1b-812db87ee663', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 08:28:33', '2019-11-03 08:28:33', NULL),
(41, 'fa7df2f0-fe13-11e9-934d-2d7518ff4d09', '127.0.0.1', 'Melakukan Transaksi, id=8 , cart_id=7', 'POST', 6, '2019-11-03 08:28:57', '2019-11-03 08:28:57', NULL),
(42, 'f9c7de60-fe14-11e9-abe3-79c744e978b4', '127.0.0.1', 'Menerima transaksi, id transaksi=8', 'GET', 1, '2019-11-03 08:36:05', '2019-11-03 08:36:05', NULL),
(43, '7c16e700-fe19-11e9-aa84-159726df387a', '127.0.0.1', 'Menolak transaksi, id transaksi=8', 'GET', 1, '2019-11-03 09:08:22', '2019-11-03 09:08:22', NULL),
(44, 'e3b50d20-fe1c-11e9-aec8-653b2a84ff4a', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 09:32:44', '2019-11-03 09:32:44', NULL),
(45, '13411c00-fe1e-11e9-8645-97fdd059cdc8', '127.0.0.1', 'Saldo di kurangi : 8', 'POST', 6, '2019-11-03 09:41:13', '2019-11-03 09:41:13', NULL),
(46, '13431a00-fe1e-11e9-982d-c3e8d1466303', '127.0.0.1', 'Melakukan Transaksi, id=9 , cart_id=8', 'POST', 6, '2019-11-03 09:41:13', '2019-11-03 09:41:13', NULL),
(47, '360ea1a0-fe1f-11e9-aa0c-d1b398012809', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 09:49:21', '2019-11-03 09:49:21', NULL),
(48, '40562b80-fe1f-11e9-892f-f76549852372', '127.0.0.1', 'Saldo di kurangi : 70,000', 'POST', 6, '2019-11-03 09:49:38', '2019-11-03 09:49:38', NULL),
(49, '405819d0-fe1f-11e9-a9ba-41a810b1fee9', '127.0.0.1', 'Melakukan Transaksi, id=10 , cart_id=9', 'POST', 6, '2019-11-03 09:49:38', '2019-11-03 09:49:38', NULL),
(50, 'e466fda0-fe22-11e9-b544-a32dcfb523e6', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 10:15:42', '2019-11-03 10:15:42', NULL),
(51, 'f129a5f0-fe22-11e9-9f43-edc40ac082f2', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 10:16:03', '2019-11-03 10:16:03', NULL),
(52, 'fc57e730-fe22-11e9-9521-cb052b21066d', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 10', 'POST', 6, '2019-11-03 10:16:22', '2019-11-03 10:16:22', NULL),
(53, '14feb4c0-fe23-11e9-92c2-13575444825d', '127.0.0.1', 'Saldo di kurangi : 70,000', 'POST', 6, '2019-11-03 10:17:04', '2019-11-03 10:17:04', NULL),
(54, '150007e0-fe23-11e9-a8e4-133980a39cfa', '127.0.0.1', 'Melakukan Transaksi, id=11 , cart_id=10', 'POST', 6, '2019-11-03 10:17:04', '2019-11-03 10:17:04', NULL),
(55, '15014da0-fe23-11e9-ae06-332ffa04642d', '127.0.0.1', 'Saldo di kurangi : 30,000', 'POST', 6, '2019-11-03 10:17:04', '2019-11-03 10:17:04', NULL),
(56, '150295a0-fe23-11e9-826b-356e28c7bbd5', '127.0.0.1', 'Melakukan Transaksi, id=12 , cart_id=11', 'POST', 6, '2019-11-03 10:17:04', '2019-11-03 10:17:04', NULL),
(57, 'c0efdc00-fe37-11e9-aa0b-2bc62c8852b1', '127.0.0.1', 'Menerima transaksi, id transaksi=11', 'GET', 1, '2019-11-03 12:45:02', '2019-11-03 12:45:02', NULL),
(58, 'c4f09500-fe37-11e9-aeec-0d0c0a29569c', '127.0.0.1', 'Menerima transaksi, id transaksi=10', 'GET', 1, '2019-11-03 12:45:09', '2019-11-03 12:45:09', NULL),
(59, 'e9dc6660-fe47-11e9-9818-9d3642e24401', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 1, '2019-11-03 14:40:43', '2019-11-03 14:40:43', NULL),
(60, '48138220-fe48-11e9-9b58-95492ed48ed5', '127.0.0.1', 'Menghapus Transaksi ', 'GET', 2, '2019-11-03 14:43:21', '2019-11-03 14:43:21', NULL),
(61, '4cc983c0-fe48-11e9-9d1a-879a93a32acc', '127.0.0.1', 'Menghapus Transaksi ', 'GET', 2, '2019-11-03 14:43:29', '2019-11-03 14:43:29', NULL),
(62, 'e3f19b70-fe48-11e9-b79c-e13119cf41ab', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:47:42', '2019-11-03 14:47:42', NULL),
(63, '9ed29250-fe49-11e9-9eda-d35daefca1b7', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:52:56', '2019-11-03 14:52:56', NULL),
(64, 'a31413a0-fe49-11e9-85d0-555a73fd3009', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:53:03', '2019-11-03 14:53:03', NULL),
(65, 'da823060-fe49-11e9-8c62-dbe0f630dcd1', '127.0.0.1', 'Menerima transaksi, invoice transaksi=201911039', 'GET', 1, '2019-11-03 14:54:36', '2019-11-03 14:54:36', NULL),
(66, '517bccc0-fe4a-11e9-8a97-3904d6900ea9', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:57:55', '2019-11-03 14:57:55', NULL),
(67, '578e6ec0-fe4a-11e9-bbe4-a5a8903fdb8f', '127.0.0.1', 'Menerima transaksi, invoice transaksi=201911035', 'GET', 1, '2019-11-03 14:58:06', '2019-11-03 14:58:06', NULL),
(68, '747a1660-fe4a-11e9-b279-5136684c55d1', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:58:54', '2019-11-03 14:58:54', NULL),
(69, '98de5fd0-fe4a-11e9-8835-7b33004fd71e', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110312', 'GET', 4, '2019-11-03 14:59:55', '2019-11-03 14:59:55', NULL),
(70, '9d1b6170-fe4a-11e9-8f59-0f53a70eac6a', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110310', 'GET', 4, '2019-11-03 15:00:02', '2019-11-03 15:00:02', NULL),
(71, 'f74cf8c0-fe4a-11e9-b2de-659c8b8aa24f', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=201911037', 'GET', 4, '2019-11-03 15:02:34', '2019-11-03 15:02:34', NULL),
(72, 'fa875ad0-fe4a-11e9-9d89-d975141f56d2', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=201911036', 'GET', 4, '2019-11-03 15:02:39', '2019-11-03 15:02:39', NULL),
(73, '76061fb0-fe4c-11e9-8e1b-5b9d346f9905', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 8, '2019-11-03 15:13:16', '2019-11-03 15:13:16', NULL),
(74, 'c497e050-fe4c-11e9-b9ce-5f78158b34f7', '127.0.0.1', 'Saldo di kurangi : 35,000', 'POST', 8, '2019-11-03 15:15:28', '2019-11-03 15:15:28', NULL),
(75, 'c4a220e0-fe4c-11e9-b69c-6bb583801816', '127.0.0.1', 'Melakukan Transaksi, id=13 , cart_id=12', 'POST', 8, '2019-11-03 15:15:28', '2019-11-03 15:15:28', NULL),
(76, 'cfbe6a00-fe4c-11e9-a6d3-99089ff3d0d0', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110313', 'GET', 1, '2019-11-03 15:15:46', '2019-11-03 15:15:46', NULL),
(77, 'cfcad6c0-fe4c-11e9-ab9b-6925df14dc02', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 1, '2019-11-03 15:15:46', '2019-11-03 15:15:46', NULL),
(78, 'cfd7b440-fe4c-11e9-b909-cb7db9a549e1', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110313', 'GET', 1, '2019-11-03 15:15:46', '2019-11-03 15:15:46', NULL),
(79, 'f3fe8050-fe4c-11e9-90ea-7f91c9cf395d', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 1, '2019-11-03 15:16:47', '2019-11-03 15:16:47', NULL),
(80, 'f41314c0-fe4c-11e9-a52f-9fb7a3f45478', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110313', 'GET', 1, '2019-11-03 15:16:47', '2019-11-03 15:16:47', NULL),
(81, '063c1880-fe51-11e9-9d66-b3748f942b10', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:45:56', '2019-11-03 15:45:56', NULL),
(82, '06479720-fe51-11e9-97f9-2fde843d3422', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:45:56', '2019-11-03 15:45:56', NULL),
(83, '946db800-fe51-11e9-bb8e-411bf26394e5', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:49:54', '2019-11-03 15:49:54', NULL),
(84, '947e2080-fe51-11e9-81a2-6977f58e7332', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:49:54', '2019-11-03 15:49:54', NULL),
(85, '3b50bde0-fe52-11e9-be82-251173a2ab02', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:54:34', '2019-11-03 15:54:34', NULL),
(86, '3b5f9380-fe52-11e9-9858-abef1243ea28', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 15:54:34', '2019-11-03 15:54:34', NULL),
(87, 'ac1199c0-fe57-11e9-ac1c-8d9042d10e0c', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 8, '2019-11-03 16:33:31', '2019-11-03 16:33:31', NULL),
(88, 'b69543b0-fe57-11e9-87d4-1b44e378eba6', '127.0.0.1', 'Saldo di kurangi : 35,000', 'POST', 8, '2019-11-03 16:33:49', '2019-11-03 16:33:49', NULL),
(89, 'b6ab9be0-fe57-11e9-a128-fff44a26cedc', '127.0.0.1', 'Melakukan Transaksi, id=14 , cart_id=13', 'POST', 8, '2019-11-03 16:33:49', '2019-11-03 16:33:49', NULL),
(90, '0ccb2fe0-fe59-11e9-b0ab-f5e51ce88ed5', '127.0.0.1', 'Membatalkan transaksi, id transaksi=14', 'GET', 1, '2019-11-03 16:43:23', '2019-11-03 16:43:23', NULL),
(91, '0cdc8080-fe59-11e9-9336-a93092fb42a2', '127.0.0.1', 'Menolak transaksi, id transaksi=14', 'GET', 1, '2019-11-03 16:43:23', '2019-11-03 16:43:23', NULL),
(92, '26e09440-fe5c-11e9-bb6c-83fe1e4fbded', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 9, '2019-11-03 17:05:35', '2019-11-03 17:05:35', NULL),
(93, '305a32a0-fe5c-11e9-82eb-535e777cdc91', '127.0.0.1', 'Saldo di kurangi : 15,000', 'POST', 9, '2019-11-03 17:05:51', '2019-11-03 17:05:51', NULL),
(94, '3060df00-fe5c-11e9-bc27-539c585bc4aa', '127.0.0.1', 'Melakukan Transaksi, id=15 , cart_id=14', 'POST', 9, '2019-11-03 17:05:51', '2019-11-03 17:05:51', NULL),
(95, '3a046e30-fe5c-11e9-8c1c-6b785625e865', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110415', 'GET', 1, '2019-11-03 17:06:07', '2019-11-03 17:06:07', NULL),
(96, '4df3bee0-fe5c-11e9-838d-63a94fb7c845', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110415', 'GET', 4, '2019-11-03 17:06:40', '2019-11-03 17:06:40', NULL),
(97, 'bbf66330-fe5c-11e9-b940-fb4ddf31c04a', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 9, '2019-11-03 17:09:45', '2019-11-03 17:09:45', NULL),
(98, 'c4722500-fe5c-11e9-9064-7f61a901b3d8', '127.0.0.1', 'Saldo di kurangi : 15,000', 'POST', 9, '2019-11-03 17:09:59', '2019-11-03 17:09:59', NULL),
(99, 'c4733f60-fe5c-11e9-806c-a1973a06a830', '127.0.0.1', 'Melakukan Transaksi, id=16 , cart_id=15', 'POST', 9, '2019-11-03 17:09:59', '2019-11-03 17:09:59', NULL),
(100, 'cef9d3c0-fe5c-11e9-b87a-39aced069244', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110416', 'GET', 1, '2019-11-03 17:10:17', '2019-11-03 17:10:17', NULL),
(101, '12727d70-fe5d-11e9-86e9-6bd5cf633402', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110416', 'GET', 4, '2019-11-03 17:12:10', '2019-11-03 17:12:10', NULL),
(102, '4c6b3aa0-fe60-11e9-ba9f-ed456618ef14', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110416', 'GET', 4, '2019-11-03 17:35:16', '2019-11-03 17:35:16', NULL),
(103, '159e6910-fe61-11e9-8fab-d5db9b7e2f94', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110416', 'GET', 4, '2019-11-03 17:40:53', '2019-11-03 17:40:53', NULL),
(104, '2dd4c370-fe61-11e9-a758-b9fcb4e76089', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110313', 'GET', 4, '2019-11-03 17:41:34', '2019-11-03 17:41:34', NULL),
(105, 'ae27eda0-fe61-11e9-8fce-4d184f48fa97', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 8, '2019-11-03 17:45:09', '2019-11-03 17:45:09', NULL),
(106, 'b9ba70a0-fe61-11e9-a451-3361c59dc2de', '127.0.0.1', 'Saldo di kurangi : 15,000', 'POST', 8, '2019-11-03 17:45:29', '2019-11-03 17:45:29', NULL),
(107, 'b9c08360-fe61-11e9-923a-27594b77c8cb', '127.0.0.1', 'Melakukan Transaksi, id=17 , cart_id=16', 'POST', 8, '2019-11-03 17:45:29', '2019-11-03 17:45:29', NULL),
(108, 'c0735620-fe61-11e9-9155-7b57215a225d', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110417', 'GET', 1, '2019-11-03 17:45:40', '2019-11-03 17:45:40', NULL),
(109, '0337df20-fe62-11e9-a2af-2b5ca24566ee', '127.0.0.1', 'Menerima transaksi, invoice transaksi=201911033', 'GET', 1, '2019-11-03 17:47:32', '2019-11-03 17:47:32', NULL),
(110, '1b0d6850-fe62-11e9-abfb-4f1523114982', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110417', 'GET', 4, '2019-11-03 17:48:12', '2019-11-03 17:48:12', NULL),
(111, '2cc34cc0-fe62-11e9-b856-e9f5c26ec4f6', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110417', 'GET', 4, '2019-11-03 17:48:42', '2019-11-03 17:48:42', NULL),
(112, '3d9cb3a0-fe62-11e9-8034-ed1d9d2f2bfa', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 8, '2019-11-03 17:49:10', '2019-11-03 17:49:10', NULL),
(113, '5ca27e20-fe62-11e9-8d8a-f98672ebaa5e', '127.0.0.1', 'Saldo di kurangi : 35,000', 'POST', 8, '2019-11-03 17:50:02', '2019-11-03 17:50:02', NULL),
(114, '5ca3b080-fe62-11e9-a9c0-d9cda7853ea7', '127.0.0.1', 'Melakukan Transaksi, id=18 , cart_id=17', 'POST', 8, '2019-11-03 17:50:02', '2019-11-03 17:50:02', NULL),
(115, '6973ed20-fe62-11e9-991d-4f2032206d51', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110418', 'GET', 1, '2019-11-03 17:50:24', '2019-11-03 17:50:24', NULL),
(116, '857098b0-fe62-11e9-8654-d7844beebcb6', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110418', 'GET', 4, '2019-11-03 17:51:11', '2019-11-03 17:51:11', NULL),
(117, '4adcebc0-fe64-11e9-a93f-7deca01f5bc3', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110418', 'GET', 4, '2019-11-03 18:03:51', '2019-11-03 18:03:51', NULL),
(118, '5001aa80-fe64-11e9-bcd4-2b545eb45301', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110415', 'GET', 4, '2019-11-03 18:04:00', '2019-11-03 18:04:00', NULL),
(119, 'f6b14160-fe6c-11e9-af97-b57e25b4fec0', '127.0.0.1', 'melakukan top up ke akun :joker@gmail.com, nominal : 4000', 'POST', 2, '2019-11-03 19:05:56', '2019-11-03 19:05:56', NULL),
(120, '6a9bd680-fe92-11e9-b924-919d9ac1b01a', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-03 23:34:01', '2019-11-03 23:34:01', NULL),
(124, 'a68d66a0-fe92-11e9-9a96-af2b2ce0f8ac', '127.0.0.1', 'Saldo di kurangi : 35,000', 'POST', 6, '2019-11-03 23:35:42', '2019-11-03 23:35:42', NULL),
(125, 'a68eff30-fe92-11e9-876d-a5a70ab07adc', '127.0.0.1', 'Melakukan Transaksi, id=19 , cart_id=18', 'POST', 6, '2019-11-03 23:35:42', '2019-11-03 23:35:42', NULL),
(126, 'b6657cc0-fe92-11e9-9406-93f02a1ee4ec', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110419', 'GET', 1, '2019-11-03 23:36:09', '2019-11-03 23:36:09', NULL),
(127, 'cc9b9ec0-fe92-11e9-b137-17f3a3a8d29f', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110419', 'GET', 4, '2019-11-03 23:36:46', '2019-11-03 23:36:46', NULL),
(128, 'df4a5080-fe92-11e9-84d4-83703c09534c', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110419', 'GET', 4, '2019-11-03 23:37:17', '2019-11-03 23:37:17', NULL),
(129, 'f992dd60-fe94-11e9-8e57-d7e889d1ba0b', '127.0.0.1', 'Membuat Product test', 'POST', 1, '2019-11-03 23:52:20', '2019-11-03 23:52:20', NULL),
(130, '0af9e220-fe95-11e9-a893-036c56aca948', '127.0.0.1', 'Membuat Product test', 'POST', 1, '2019-11-03 23:52:49', '2019-11-03 23:52:49', NULL),
(131, '1c143aa0-fe95-11e9-a664-0b9b1d1341e7', '127.0.0.1', 'Menghapus Product test id = 5', 'GET', 1, '2019-11-03 23:53:18', '2019-11-03 23:53:18', NULL),
(132, 'a9c36520-fe95-11e9-9be4-3706f1aa9534', '192.168.43.141', 'Membuat Product Cabe Merah', 'POST', 11, '2019-11-03 23:57:16', '2019-11-03 23:57:16', NULL),
(133, 'b44d5ae0-fe95-11e9-86cf-5dc89b86eb73', '192.168.43.189', 'Membuat Product Rambutan', 'POST', 1, '2019-11-03 23:57:34', '2019-11-03 23:57:34', NULL),
(134, 'b8d2ff20-fe95-11e9-9e33-e30ff20288d1', '192.168.43.141', 'Membuat Product Cabe Merah', 'POST', 11, '2019-11-03 23:57:41', '2019-11-03 23:57:41', NULL),
(135, 'c8a70760-fe95-11e9-be79-bb2919d0eac3', '192.168.43.141', 'Menghapus Product Cabe Merah id = 14', 'GET', 11, '2019-11-03 23:58:08', '2019-11-03 23:58:08', NULL),
(136, 'e7fdb0a0-fe95-11e9-96c8-6d9efadc82fd', '192.168.43.189', 'Membuat Product Lengkeng', 'POST', 1, '2019-11-03 23:59:00', '2019-11-03 23:59:00', NULL),
(137, '2ef9f160-fea2-11e9-b097-b120e2c4affc', '192.168.43.189', 'Membuat Product Nangka', 'POST', 1, '2019-11-04 01:26:53', '2019-11-04 01:26:53', NULL),
(138, '7002ed20-fea4-11e9-9fb7-ad232072e8de', '192.168.43.141', 'Membuat Product Kangkung', 'POST', 11, '2019-11-04 01:43:01', '2019-11-04 01:43:01', NULL),
(139, '9ef121f0-fea4-11e9-a192-3db6257b5f61', '192.168.43.141', 'Membuat Product Bawang Merah', 'POST', 11, '2019-11-04 01:44:20', '2019-11-04 01:44:20', NULL),
(140, 'd4251250-fea4-11e9-80d6-87bfb8595c2c', '192.168.43.189', 'Membuat Product Durian', 'POST', 1, '2019-11-04 01:45:49', '2019-11-04 01:45:49', NULL),
(141, 'd7a01960-fea4-11e9-a154-555b40550f0a', '192.168.43.141', 'Membuat Product Broccoli', 'POST', 11, '2019-11-04 01:45:55', '2019-11-04 01:45:55', NULL),
(142, 'dd347df0-fea4-11e9-a1e6-230435d714ea', '192.168.43.220', 'Membuat Product Pokcoy', 'POST', 1, '2019-11-04 01:46:05', '2019-11-04 01:46:05', NULL),
(143, '11a87fe0-fea5-11e9-b359-ef81fde50578', '192.168.43.141', 'Membuat Product Wortel', 'POST', 11, '2019-11-04 01:47:33', '2019-11-04 01:47:33', NULL),
(144, '1cceec10-fea5-11e9-a5aa-0dbdf84dd8b8', '192.168.43.220', 'Membuat Product Kentang', 'POST', 1, '2019-11-04 01:47:51', '2019-11-04 01:47:51', NULL),
(145, '40795100-fea5-11e9-804f-41d277d98519', '192.168.43.141', 'Membuat Product Tomat', 'POST', 11, '2019-11-04 01:48:51', '2019-11-04 01:48:51', NULL),
(146, '501bd390-fea5-11e9-90e3-85e9ab4bb43a', '192.168.43.220', 'Membuat Product Kembang Kol', 'POST', 1, '2019-11-04 01:49:17', '2019-11-04 01:49:17', NULL),
(147, '56987f40-fea5-11e9-a2c5-939532387011', '192.168.43.189', 'Membuat Product Salak', 'POST', 1, '2019-11-04 01:49:28', '2019-11-04 01:49:28', NULL),
(148, '710e4740-fea5-11e9-8efc-1bdc38eace69', '192.168.43.220', 'Membuat Product Jagung', 'POST', 1, '2019-11-04 01:50:13', '2019-11-04 01:50:13', NULL),
(149, '7f0ee1b0-fea5-11e9-9a14-b986b317fbd6', '192.168.43.141', 'Membuat Product Bayam', 'POST', 11, '2019-11-04 01:50:36', '2019-11-04 01:50:36', NULL),
(150, '86c4b400-fea5-11e9-b9eb-ad327c111a00', '192.168.43.189', 'Membuat Product Naga', 'POST', 1, '2019-11-04 01:50:49', '2019-11-04 01:50:49', NULL),
(151, '99666cd0-fea5-11e9-847f-d5b51ab1c30f', '192.168.43.189', 'Menghapus Product test id = 7', 'GET', 1, '2019-11-04 01:51:20', '2019-11-04 01:51:20', NULL),
(152, 'c0667e60-fea5-11e9-89b6-3ffd66be6329', '192.168.43.220', 'Membuat Product Timun', 'POST', 1, '2019-11-04 01:52:26', '2019-11-04 01:52:26', NULL),
(153, 'd96ba1e0-fea5-11e9-9814-05c7e714e792', '192.168.43.189', 'Membuat Product Manggis', 'POST', 1, '2019-11-04 01:53:08', '2019-11-04 01:53:08', NULL),
(154, 'e5b09ba0-fea5-11e9-984d-e5a7d43de651', '192.168.43.220', 'Membuat Product Bawang Bombai', 'POST', 1, '2019-11-04 01:53:28', '2019-11-04 01:53:28', NULL),
(155, '0f6c3940-fea6-11e9-b77e-2343f1a29abf', '192.168.43.220', 'Membuat Product Jamur Enoki', 'POST', 1, '2019-11-04 01:54:38', '2019-11-04 01:54:38', NULL),
(156, '246114c0-fea6-11e9-88ac-33fe001ef55c', '127.0.0.1', 'alfy@test.dev Membuat Promosi Produk, slug produk : tomat-1572832131', 'POST', 2, '2019-11-04 01:55:13', '2019-11-04 01:55:13', NULL),
(157, '26093c60-fea6-11e9-9d38-2f69bd810bae', '192.168.43.220', 'Membuat Product Selada', 'POST', 1, '2019-11-04 01:55:16', '2019-11-04 01:55:16', NULL),
(158, '3ebe1980-fea6-11e9-ad45-692363774764', '192.168.43.220', 'Membuat Product Paprika', 'POST', 1, '2019-11-04 01:55:58', '2019-11-04 01:55:58', NULL),
(159, '4ae99ec0-fea7-11e9-b701-9592fea2b7ca', '127.0.0.1', 'Memperbarui penjual konoha@gmail.com', 'POST', 2, '2019-11-04 02:03:28', '2019-11-04 02:03:28', NULL),
(160, '4f8626e0-fea7-11e9-a9a6-b5291cd3863d', '127.0.0.1', 'Memperbarui penjual muhammadalfian505@gmail.com', 'POST', 2, '2019-11-04 02:03:35', '2019-11-04 02:03:35', NULL),
(161, '53d6a210-fea7-11e9-a3fc-fd3d43ecb8a7', '127.0.0.1', 'Memperbarui penjual kazuma@gmail.com', 'POST', 2, '2019-11-04 02:03:43', '2019-11-04 02:03:43', NULL),
(162, 'bacbce90-fea7-11e9-b5d1-731eb158d832', '127.0.0.1', 'alfy@test.dev Membuat Promosi Produk, slug produk : wortel-1572832052', 'POST', 2, '2019-11-04 02:06:35', '2019-11-04 02:06:35', NULL),
(163, 'e7864180-feb6-11e9-a9fe-7f842ba5c6f1', '127.0.0.1', 'melakukan top up ke akun :arifhan@gmail.com, nominal : 85000', 'POST', 2, '2019-11-04 03:55:13', '2019-11-04 03:55:13', NULL),
(164, 'f8921280-feb6-11e9-b81b-15c8239c5d5b', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 6, '2019-11-04 03:55:41', '2019-11-04 03:55:41', NULL),
(165, '03dde220-feb7-11e9-987b-a1f22b3542c2', '127.0.0.1', 'Saldo di kurangi : 10,000', 'POST', 6, '2019-11-04 03:56:00', '2019-11-04 03:56:00', NULL),
(166, '03e54700-feb7-11e9-a1b0-57c032b731ea', '127.0.0.1', 'Melakukan Transaksi, id=20 , cart_id=19', 'POST', 6, '2019-11-04 03:56:00', '2019-11-04 03:56:00', NULL),
(167, '2414e7e0-feb7-11e9-9aa1-a537bbb099af', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110420', 'GET', 1, '2019-11-04 03:56:54', '2019-11-04 03:56:54', NULL),
(168, '8e65dcf0-feb7-11e9-8092-edc321368191', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110420', 'GET', 1, '2019-11-04 03:59:53', '2019-11-04 03:59:53', NULL),
(169, 'bd1e81a0-feb7-11e9-9288-6dfaa61b346f', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110420', 'GET', 4, '2019-11-04 04:01:11', '2019-11-04 04:01:11', NULL),
(170, 'c7edcbc0-feb7-11e9-9e7e-e7b992c2fe5d', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110420', 'GET', 4, '2019-11-04 04:01:29', '2019-11-04 04:01:29', NULL),
(171, '8ad3db70-feba-11e9-83eb-6d1f2ff2e175', '127.0.0.1', 'melakukan top up ke akun :amay@gmail.com, nominal : 100000', 'POST', 2, '2019-11-04 04:21:15', '2019-11-04 04:21:15', NULL),
(172, 'a09d7b00-feba-11e9-8b44-936d252414e4', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 14, '2019-11-04 04:21:52', '2019-11-04 04:21:52', NULL),
(173, 'f61947e0-feba-11e9-ac10-d5da71987a7f', '127.0.0.1', 'Saldo di kurangi : 50,000', 'POST', 14, '2019-11-04 04:24:15', '2019-11-04 04:24:15', NULL),
(174, 'f6297ed0-feba-11e9-a28e-41af1f5733e7', '127.0.0.1', 'Melakukan Transaksi, id=21 , cart_id=20', 'POST', 14, '2019-11-04 04:24:15', '2019-11-04 04:24:15', NULL),
(175, '11bd6890-febb-11e9-bd26-693a930fb683', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110421', 'GET', 1, '2019-11-04 04:25:02', '2019-11-04 04:25:02', NULL),
(176, '3748f7e0-febb-11e9-9d24-33419dd73d34', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110421', 'GET', 4, '2019-11-04 04:26:05', '2019-11-04 04:26:05', NULL),
(177, '4bac0ee0-febb-11e9-be1c-a72d153b0bc1', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110421', 'GET', 4, '2019-11-04 04:26:39', '2019-11-04 04:26:39', NULL),
(178, '3616c610-fec0-11e9-af7c-2118c99d1311', '127.0.0.1', 'Membuat kategori Event', 'POST', 2, '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL),
(179, '362762c0-fec0-11e9-99cf-dfcd210114ff', '127.0.0.1', 'Membuat kategori Tech', 'POST', 2, '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL),
(180, '363d5730-fec0-11e9-918d-813df3842d6d', '127.0.0.1', 'Membuat kategori Weebs', 'POST', 2, '2019-11-04 05:01:50', '2019-11-04 05:01:50', NULL),
(181, '3cbb07f0-fec1-11e9-9230-7b2d78d900f1', '192.168.43.210', 'Membuat blog : 5 Fakta Penting Makanan Sehat', 'POST', 2, '2019-11-04 05:09:11', '2019-11-04 05:09:11', NULL),
(182, 'b6712be0-fec1-11e9-9e24-8bacf4266677', '192.168.43.210', 'Membuat blog : Ini 8 Buah-buahan yang Paling Sehat, yang Mana Buah Favoritmu?', 'POST', 2, '2019-11-04 05:12:35', '2019-11-04 05:12:35', NULL),
(183, '0fe12e20-fec2-11e9-b433-9974c80e01e0', '192.168.43.210', 'Membuat blog : 4 Manfaat Mengejutkan Buah Nanas untuk Pencernaan', 'POST', 2, '2019-11-04 05:15:05', '2019-11-04 05:15:05', NULL),
(184, '2959b930-fec2-11e9-80b0-85202a535838', '192.168.43.129', 'Memperbarui Kasir so@gmail.com', 'POST', 2, '2019-11-04 05:15:48', '2019-11-04 05:15:48', NULL),
(185, '873a7dc0-fec2-11e9-8e30-df96c9cb3cac', '192.168.43.210', 'Membuat blog : Kebanyakan Makan Sayur Itu Sehat atau Tidak Ya? Ini 7 Fakta Ilmiahnya!', 'POST', 2, '2019-11-04 05:18:25', '2019-11-04 05:18:25', NULL),
(186, '18a76ff0-fec3-11e9-ae2c-83ec603f9ea8', '192.168.43.210', 'Membuat blog : Fakta Menarik Tentang Vegetarian', 'POST', 2, '2019-11-04 05:22:29', '2019-11-04 05:22:29', NULL),
(187, 'bbb15700-fec3-11e9-8b5a-e3edd3198180', '192.168.43.129', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 15, '2019-11-04 05:27:03', '2019-11-04 05:27:03', NULL),
(188, 'f514fdd0-fec3-11e9-a1a9-3fa17d5b071b', '192.168.43.129', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 15, '2019-11-04 05:28:39', '2019-11-04 05:28:39', NULL),
(189, '46e48c70-fec4-11e9-9ab6-1f33a787bd57', '192.168.43.210', 'Memperbarui penjual han@gmail.com', 'POST', 2, '2019-11-04 05:30:56', '2019-11-04 05:30:56', NULL),
(190, 'c348d760-fec4-11e9-9db1-355d60609df3', '127.0.0.1', 'Membuat blog : What Is GreenLand ?', 'POST', 2, '2019-11-04 05:34:25', '2019-11-04 05:34:25', NULL),
(191, '1acddd70-fec5-11e9-b774-e314c13daf0f', '192.168.43.210', 'Membuat Product Berenuk', 'POST', 16, '2019-11-04 05:36:52', '2019-11-04 05:36:52', NULL),
(192, 'b0cd3050-fec5-11e9-9a5b-4da4d8c17cdf', '127.0.0.1', 'Memperbarui Product Apel id = 2', 'POST', 1, '2019-11-04 05:41:03', '2019-11-04 05:41:03', NULL),
(193, 'bcabd380-fec5-11e9-b7ab-fb6af54c8ebf', '127.0.0.1', 'Memperbarui Product Apel id = 2', 'POST', 1, '2019-11-04 05:41:23', '2019-11-04 05:41:23', NULL),
(194, 'fbb73fd0-fec5-11e9-94f6-ed896bf773bf', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 17, '2019-11-04 05:43:09', '2019-11-04 05:43:09', NULL),
(195, '5cf62c00-fec6-11e9-88a1-8d429f6d3dbe', '127.0.0.1', 'Menghapus Keranjang, cart id = 23', 'GET', 17, '2019-11-04 05:45:52', '2019-11-04 05:45:52', NULL),
(196, '1b3e63e0-feca-11e9-b81d-37a1a302dc88', '127.0.0.1', 'Membuat Product tEst UnIt', 'POST', 1, '2019-11-04 06:12:40', '2019-11-04 06:12:40', NULL),
(197, 'be325fa0-feca-11e9-a061-2d36a15d6d54', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 18, '2019-11-04 06:17:13', '2019-11-04 06:17:13', NULL),
(198, 'c709e750-feca-11e9-b03e-c957c2cb6374', '127.0.0.1', 'Menghapus Keranjang, cart id = 24', 'GET', 18, '2019-11-04 06:17:28', '2019-11-04 06:17:28', NULL),
(199, 'eaccdb00-feca-11e9-9497-79012a55c512', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 18, '2019-11-04 06:18:28', '2019-11-04 06:18:28', NULL),
(200, '5956c200-fecb-11e9-b9d2-f9480e899c39', '127.0.0.1', 'Memperbarui penjual abing@gmail.com', 'POST', 2, '2019-11-04 06:21:34', '2019-11-04 06:21:34', NULL),
(201, '9d9a1330-fecb-11e9-818a-1ff6cc43f44d', '127.0.0.1', 'Membuat Product Nanas', 'POST', 18, '2019-11-04 06:23:28', '2019-11-04 06:23:28', NULL),
(202, '20b4c760-fecc-11e9-a2c5-7d545ce78128', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 19, '2019-11-04 06:27:08', '2019-11-04 06:27:08', NULL),
(203, '2b4b0f00-fecc-11e9-8e48-ff8546db4438', '127.0.0.1', 'Saldo di kurangi : 12', 'POST', 19, '2019-11-04 06:27:26', '2019-11-04 06:27:26', NULL),
(204, '2b5d54d0-fecc-11e9-ac33-05775032e900', '127.0.0.1', 'Melakukan Transaksi, id=22 , cart_id=26', 'POST', 19, '2019-11-04 06:27:26', '2019-11-04 06:27:26', NULL),
(205, '48b6de60-fecc-11e9-ab43-b307d7145261', '127.0.0.1', 'Menolak transaksi, id transaksi=22', 'GET', 18, '2019-11-04 06:28:15', '2019-11-04 06:28:15', NULL),
(206, '942707c0-fecc-11e9-b0de-c795b44bc9fc', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 19, '2019-11-04 06:30:22', '2019-11-04 06:30:22', NULL),
(207, 'a31f26e0-fecc-11e9-b354-93d35fbed344', '127.0.0.1', 'Saldo di kurangi : 10', 'POST', 19, '2019-11-04 06:30:47', '2019-11-04 06:30:47', NULL),
(208, 'a321c3e0-fecc-11e9-86ea-3f2c210accfb', '127.0.0.1', 'Melakukan Transaksi, id=23 , cart_id=27', 'POST', 19, '2019-11-04 06:30:47', '2019-11-04 06:30:47', NULL),
(209, 'f23f0480-fecc-11e9-8efc-4b574dd5402e', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110423', 'GET', 16, '2019-11-04 06:33:00', '2019-11-04 06:33:00', NULL),
(210, 'f4d39940-fed0-11e9-bc1a-45dbb729d3cc', '127.0.0.1', 'melakukan top up ke akun :awalherfiansyah25@gmail.com, nominal : 100000', 'POST', 2, '2019-11-04 07:01:42', '2019-11-04 07:01:42', NULL),
(211, '27bb6870-fed1-11e9-8234-fb0101f0f323', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 21, '2019-11-04 07:03:07', '2019-11-04 07:03:07', NULL),
(212, '41a1ae00-fed1-11e9-977d-f3fefefeeb70', '127.0.0.1', 'Saldo di kurangi : 15,000', 'POST', 21, '2019-11-04 07:03:51', '2019-11-04 07:03:51', NULL),
(213, '41a3d570-fed1-11e9-a11f-9786a1983a76', '127.0.0.1', 'Melakukan Transaksi, id=24 , cart_id=28', 'POST', 21, '2019-11-04 07:03:51', '2019-11-04 07:03:51', NULL),
(214, '7bec2540-fed1-11e9-b068-4b48d499b8b7', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110424', 'GET', 1, '2019-11-04 07:05:29', '2019-11-04 07:05:29', NULL),
(215, 'e4e0c4a0-fed1-11e9-b25b-4b7cbd8f44e1', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 19, '2019-11-04 07:08:25', '2019-11-04 07:08:25', NULL),
(216, 'ec1c84c0-fed1-11e9-8d82-e7a7927b9d28', '127.0.0.1', 'Saldo di kurangi : 10', 'POST', 19, '2019-11-04 07:08:37', '2019-11-04 07:08:37', NULL),
(217, 'ec1e6cd0-fed1-11e9-a710-e7d877890749', '127.0.0.1', 'Melakukan Transaksi, id=25 , cart_id=29', 'POST', 19, '2019-11-04 07:08:37', '2019-11-04 07:08:37', NULL),
(218, '095f1cc0-fed2-11e9-aa9e-099b4894c9e8', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110425', 'GET', 16, '2019-11-04 07:09:26', '2019-11-04 07:09:26', NULL),
(219, '3e322570-fed2-11e9-a35e-5d05940cc656', '127.0.0.1', 'Mengirim transaksi, invoice transaksi=2019110425', 'GET', 4, '2019-11-04 07:10:55', '2019-11-04 07:10:55', NULL),
(220, '5256c7e0-fed2-11e9-b36f-010d066c4774', '127.0.0.1', 'Transaksi Selesai, invoice transaksi=2019110425', 'GET', 4, '2019-11-04 07:11:28', '2019-11-04 07:11:28', NULL),
(221, '7bca5910-fed4-11e9-82a5-1fb2dc912ddc', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 22, '2019-11-04 07:26:57', '2019-11-04 07:26:57', NULL),
(222, '7b3d95a0-fed5-11e9-a8a7-b3d7a06df367', '127.0.0.1', 'Memperbarui penjual kazuma@gmail.com', 'POST', 2, '2019-11-04 07:34:06', '2019-11-04 07:34:06', NULL),
(223, 'd7f27860-ff7d-11e9-a0dc-c5c19e549447', '127.0.0.1', 'Membuat Satuan gram', 'POST', 2, '2019-11-05 03:39:17', '2019-11-05 03:39:17', NULL),
(224, 'ea72eca0-ff7d-11e9-8a61-c784dde85dec', '127.0.0.1', 'Membuat Satuan gram', 'POST', 2, '2019-11-05 03:39:48', '2019-11-05 03:39:48', NULL),
(225, 'ffc83610-ff7d-11e9-937d-776bbdd2863b', '127.0.0.1', 'Membuat Satuan ons', 'POST', 2, '2019-11-05 03:40:23', '2019-11-05 03:40:23', NULL),
(226, 'ffd79a20-ff7d-11e9-81dc-dbe3053c6993', '127.0.0.1', 'Membuat Satuan kwintal', 'POST', 2, '2019-11-05 03:40:23', '2019-11-05 03:40:23', NULL),
(227, 'ffebe6f0-ff7d-11e9-81d4-7b7b6ae4cfc9', '127.0.0.1', 'Membuat Satuan pcs', 'POST', 2, '2019-11-05 03:40:24', '2019-11-05 03:40:24', NULL),
(228, 'fffb2140-ff7d-11e9-8d52-4d66a33d4716', '127.0.0.1', 'Membuat Satuan pack', 'POST', 2, '2019-11-05 03:40:24', '2019-11-05 03:40:24', NULL),
(229, '9b190bc0-ff7e-11e9-b9da-1fb87ce8564a', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 21, '2019-11-05 03:44:44', '2019-11-05 03:44:44', NULL),
(230, 'a28da3c0-ff7e-11e9-b04c-81f11f2174cf', '127.0.0.1', 'Saldo di kurangi : 10,000', 'POST', 21, '2019-11-05 03:44:56', '2019-11-05 03:44:56', NULL),
(231, 'a29257a0-ff7e-11e9-aaa5-bd74a82eef6f', '127.0.0.1', 'Melakukan Transaksi, id=26 , cart_id=31', 'POST', 21, '2019-11-05 03:44:56', '2019-11-05 03:44:56', NULL),
(232, 'c6fe2af0-ff7e-11e9-af5d-e38843e374a6', '127.0.0.1', 'Memperbarui penjual kazuma@gmail.com', 'POST', 2, '2019-11-05 03:45:58', '2019-11-05 03:45:58', NULL),
(233, 'd2e36d60-ff7e-11e9-9333-c7b8c6980e9c', '127.0.0.1', 'Menerima transaksi, invoice transaksi=2019110526', 'GET', 1, '2019-11-05 03:46:18', '2019-11-05 03:46:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_07_28_051935_create_roles_table', 1),
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2017_07_28_064702_create_categories_table', 1),
(53, '2017_10_30_130458_create_units_table', 1),
(54, '2018_07_28_053236_create_stores_table', 1),
(55, '2019_07_28_052532_create_products_table', 1),
(56, '2019_07_28_054155_create_carts_table', 1),
(57, '2019_07_28_055820_create_transactions_table', 1),
(58, '2019_07_28_063256_create_promotions_table', 1),
(59, '2019_07_28_065137_create_visitors_table', 1),
(60, '2019_07_28_065341_create_logs_table', 1),
(61, '2019_07_28_065615_create_configs_table', 1),
(62, '2019_07_28_070934_create_blogs_table', 1),
(63, '2019_07_28_074032_create_wish_lists_table', 1),
(64, '2019_10_19_160135_create_saldos_table', 1),
(65, '2019_10_19_161318_create_last_seens_table', 1),
(66, '2019_09_19_160135_create_saldos_table', 2),
(153, '2019_10_19_160135_create_saldos_table', 2),
(155, '2014_07_28_051935_create_roles_table', 3),
(156, '2014_10_12_000000_create_users_table', 3),
(157, '2014_10_12_100000_create_password_resets_table', 3),
(158, '2017_07_28_064702_create_categories_table', 3),
(159, '2017_10_30_130458_create_units_table', 3),
(160, '2018_07_28_053236_create_stores_table', 3),
(161, '2019_07_28_052532_create_products_table', 3),
(162, '2019_07_28_054155_create_carts_table', 3),
(163, '2019_07_28_055820_create_transactions_table', 3),
(164, '2019_07_28_063256_create_promotions_table', 3),
(165, '2019_07_28_065137_create_visitors_table', 3),
(166, '2019_07_28_065341_create_logs_table', 3),
(167, '2019_07_28_065615_create_configs_table', 3),
(168, '2019_07_28_070934_create_blogs_table', 3),
(169, '2019_07_28_074032_create_wish_lists_table', 3),
(170, '2019_09_19_160135_create_saldos_table', 3),
(171, '2019_10_19_161318_create_last_seens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `qty` bigint(20) NOT NULL,
  `visit` bigint(20) NOT NULL DEFAULT '0',
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL DEFAULT '0',
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `name`, `category_id`, `unit_id`, `slug`, `description`, `qty`, `visit`, `foto`, `foto_2`, `foto_3`, `price`, `store_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '33734370-fd62-11e9-a3d7-c37596815bde', 'Apel', 2, 2, 'apel-1572846083', 'sehat', 89, 44, 'product/d0lMHGHuYRli5b1PRFWPq5WCzavzlngBnzzpNyzB.jpeg', NULL, NULL, 15000, 1, '2019-11-02 11:16:22', '2019-11-04 05:41:23', NULL),
(3, '4aa9a020-fd62-11e9-9120-01bd69f7860a', 'Mangga', 3, 2, 'mangga-1572693627', 'sehat', 97, 43, 'product/J3BQdcvW4Mo0C8iwtlvNAgCW9SwqWf7pjmbk9eTT.jpeg', NULL, NULL, 35000, 1, '2019-11-02 11:17:01', '2019-11-04 06:13:43', NULL),
(5, 'f97daa50-fe94-11e9-8218-df7664653d57', 'test', 1, 2, 'test-1572825140', 'jsksa', 100, 0, 'product/eemnyDfSFvJZtedr3wrYxmIe1nr5FoEtkn5Tx8Rv.jpeg', NULL, NULL, 25000, 1, '2019-11-03 23:52:20', '2019-11-03 23:53:18', '2019-11-03 23:53:18'),
(7, '0af38ed0-fe95-11e9-a136-79f0cd9f0299', 'test', 1, 2, 'test-1572825169', 'jsksa', 100, 1, 'product/erMbkXgD5oRAQHVBYrbgBmbLyNCnbnuSR0hpZWrC.jpeg', NULL, NULL, 25000, 1, '2019-11-03 23:52:49', '2019-11-04 01:51:20', '2019-11-04 01:51:20'),
(12, 'a9ba06c0-fe95-11e9-9dd4-238122398c06', 'Cabe Merah', 2, 2, 'cabe-merah-1572825436', 'cabe segar', 100, 1, 'product/peLJAcD8WdxV2npqy7joGweQqDvctUpiXSCyWwm3.jpeg', NULL, NULL, 12000, 2, '2019-11-03 23:57:16', '2019-11-04 01:14:37', NULL),
(13, 'b4407250-fe95-11e9-ab39-13512c5dbbe4', 'Rambutan', 1, 2, 'rambutan-1572825453', 'Rambutan manis', 150, 1, 'product/0QjLPMJZKXjNtU7tTzX226DLlhxsRfKUVgSkbw99.jpeg', NULL, NULL, 10000, 1, '2019-11-03 23:57:33', '2019-11-04 01:13:39', NULL),
(14, 'b8ca76e0-fe95-11e9-a3f1-9515fadd7bc7', 'Cabe Merah', 2, 2, 'cabe-merah-1572825461', 'cabe segar', 100, 0, 'product/NIYMfvltOPrX9s1u6HJd393XT1qC4QWvxRX9S3QJ.jpeg', NULL, NULL, 12000, 2, '2019-11-03 23:57:41', '2019-11-03 23:58:08', '2019-11-03 23:58:08'),
(15, 'e7e9abd0-fe95-11e9-8fc1-e7866507c481', 'Lengkeng', 1, 2, 'lengkeng-1572825540', 'Lengkeng manis', 100, 1, 'product/BgVkuapcJFZM0niaTfP1AAQZMumHCvyKaWssW5AW.jpeg', NULL, NULL, 15000, 1, '2019-11-03 23:59:00', '2019-11-04 01:14:46', NULL),
(17, '2eeab950-fea2-11e9-8b7e-c544eab207b8', 'Nangka', 1, 2, 'nangka-1572830813', 'Nangka manis', 100, 0, 'product/58taXky39Ehie7wlwhpEZPN7f6KDXIiXdcMsavbp.jpeg', NULL, NULL, 2500, 1, '2019-11-04 01:26:53', '2019-11-04 01:26:53', NULL),
(18, '6ff8ec80-fea4-11e9-827a-a959ddc82d00', 'Kangkung', 2, 2, 'kangkung-1572831781', 'Sayu asli dari alam, segar terjamin', 50, 0, 'product/SemXutyFWsjqLp6yIrVwizKmogD3XHLHZqir5Cnf.jpeg', NULL, NULL, 15000, 2, '2019-11-04 01:43:01', '2019-11-04 01:43:01', NULL),
(19, '9ee857a0-fea4-11e9-8856-5dee4592bdbd', 'Bawang Merah', 2, 2, 'bawang-merah-1572831860', 'Segar dan masih Fresh', 200, 0, 'product/2KzLZhKqG2LgsWDCy4EZgT3TMWetZ6dkMixmI9rm.jpeg', NULL, NULL, 6000, 2, '2019-11-04 01:44:20', '2019-11-04 01:44:20', NULL),
(20, 'd4216e30-fea4-11e9-8cf3-59a146719d24', 'Durian', 1, 2, 'durian-1572831949', 'Durian buah baunya menyengat', 100, 0, 'product/VIO9zMCuylIPF7c6LY0d6CTQPXNoAFp5MSIbf52o.jpeg', NULL, NULL, 15000, 1, '2019-11-04 01:45:49', '2019-11-04 01:45:49', NULL),
(21, 'd67b6370-fea4-11e9-a575-656d9c8829d0', 'Broccoli', 2, 2, 'broccoli-1572831953', 'Di cuci dengan sabun lemon, jadi terjamin segarnya', 100, 0, 'product/0fGW2bwsIj1or7MbATP6NfSvNSc4DoLjUkVGoF8D.jpeg', NULL, NULL, 8000, 2, '2019-11-04 01:45:53', '2019-11-04 01:45:53', NULL),
(22, 'dd2934e0-fea4-11e9-a26d-4b4bfc39f3c6', 'Pokcoy', 2, 2, 'pokcoy-1572831964', 'Sayuran sangat segar', 60, 0, 'product/AnRH0Qz6LW4a43u39Rl17Mi3xXXHxSu1b5TSXABC.jpeg', NULL, NULL, 5000, 1, '2019-11-04 01:46:05', '2019-11-04 01:46:05', NULL),
(23, '11945a40-fea5-11e9-89ad-1bc582e3646a', 'Wortel', 2, 2, 'wortel-1572832052', 'Menjamin untuk wortel yang segar ini', 200, 5, 'product/yjJ2an4wxVptxL8sVxGUpIpPNFJhS8ulT0YBfjJ3.jpeg', NULL, NULL, 4000, 2, '2019-11-04 01:47:32', '2019-11-05 02:55:18', NULL),
(24, '1cc8b430-fea5-11e9-ae6b-bb2093029199', 'Kentang', 2, 2, 'kentang-1572832071', 'Sehat untuk tubuh dan jadi pengganti makanan ketika diet.', 90, 0, 'product/dS6YqaeKTboXAc3sfcIBrLuDhxE9QSUxfhGTW9vc.jpeg', NULL, NULL, 4000, 1, '2019-11-04 01:47:51', '2019-11-04 01:47:51', NULL),
(25, '4065d340-fea5-11e9-aed4-7b61181b2185', 'Tomat', 2, 2, 'tomat-1572832131', 'Segar dijamin untuk membuat badan segar', 200, 1, 'product/qSOyS4XyU8qlau9FBsTdjexs91QTq8SQwQVtDrET.jpeg', NULL, NULL, 7000, 2, '2019-11-04 01:48:51', '2019-11-04 01:54:29', NULL),
(26, '50121740-fea5-11e9-b709-c103c51a9057', 'Kembang Kol', 2, 2, 'kembang-kol-1572832157', 'Teman nya broccolli.', 50, 0, 'product/f6HlR341hRybA2bMeHWS1mGw9A6dgpVaRDt6UKUu.jpeg', NULL, NULL, 7000, 1, '2019-11-04 01:49:17', '2019-11-04 01:49:17', NULL),
(27, '564a6c60-fea5-11e9-92aa-79f6ca4640a3', 'Salak', 1, 2, 'salak-1572832168', 'Salak buah item', 100, 2, 'product/baSPEYO39CDTOUgYEGm3bW6msiSJ8BM1bAvr1bLw.jpeg', NULL, NULL, 2500, 1, '2019-11-04 01:49:28', '2019-11-04 05:21:30', NULL),
(28, '71061ac0-fea5-11e9-8887-43e46a8eda15', 'Jagung', 2, 2, 'jagung-1572832213', 'Jagung manis.', 50, 2, 'product/ALgnHwXQCAvw31SdwpiZzS9KEqikghiP9RxbohiC.jpeg', NULL, NULL, 4000, 1, '2019-11-04 01:50:13', '2019-11-04 05:28:39', NULL),
(29, '7e7dcca0-fea5-11e9-bcb8-f37b22acb7ed', 'Bayam', 2, 2, 'bayam-1572832235', 'Barusaja di ambil dari alamnya, segar dijamin', 200, 1, 'product/fWrQNVA2CCiaZrHtQfhJHSvXZaxA1rl6bbI3AJHe.jpeg', NULL, NULL, 6000, 2, '2019-11-04 01:50:35', '2019-11-04 05:48:31', NULL),
(30, '86b95e60-fea5-11e9-9489-176f8feb12b4', 'Naga', 1, 2, 'naga-1572832249', 'Naga adalah buah berwarna merah', 99, 3, 'product/96kyyxvSdO4DN57Rm02KKTPKcezVOBsZ5Q8k7JgE.jpeg', NULL, NULL, 15000, 1, '2019-11-04 01:50:49', '2019-11-04 07:03:51', NULL),
(31, 'c05f8220-fea5-11e9-94b1-9f1e8f504dda', 'Timun', 2, 2, 'timun-1572832346', 'Sayuran segar', 90, 8, 'product/xpRh7ucTeSNlfDFK6UfDT9Dw2ybOttsV7s9RNv2G.jpeg', NULL, NULL, 3000, 1, '2019-11-04 01:52:26', '2019-11-04 06:18:49', NULL),
(32, 'd9640140-fea5-11e9-80ca-b3ee53f90ddb', 'Manggis', 1, 2, 'manggis-1572832388', 'Manggis buah 100 manfat', 100, 0, 'product/qbOHRuIA91VUOw0n7yKaZOCEqnIJCSZORTmktcQ9.jpeg', NULL, NULL, 2000, 1, '2019-11-04 01:53:08', '2019-11-04 01:53:08', NULL),
(33, 'e5a72f20-fea5-11e9-b550-990ad73dbc7f', 'Bawang Bombai', 2, 2, 'bawang-bombai-1572832408', 'Bawang yang ukurannya besar.', 50, 3, 'product/JHJPq9FC80vHWFkey84eguH9Re4AbLvdL57IK02Q.jpeg', NULL, NULL, 3000, 1, '2019-11-04 01:53:28', '2019-11-04 05:48:12', NULL),
(34, '0f645b90-fea6-11e9-a806-630c3136ec8a', 'Jamur Enoki', 2, 2, 'jamur-enoki-1572832478', 'Jenis sayur yang teksturnya renyah.', 58, 5, 'product/VvwC7XYQpVzHsXglJ287hta23JrLzrUVHgKDFnvg.jpeg', NULL, NULL, 10000, 1, '2019-11-04 01:54:38', '2019-11-05 03:44:56', NULL),
(35, '260187a0-fea6-11e9-89ce-59e30d145ea7', 'Selada', 2, 2, 'selada-1572832516', 'Sayuran segar', 60, 2, 'product/0bIpQo4IM0bY3nvyWVLV6XMDjPDFRUhzpmRgF50z.jpeg', NULL, NULL, 5000, 1, '2019-11-04 01:55:16', '2019-11-04 05:48:44', NULL),
(36, '3eb59950-fea6-11e9-baf6-23e73ae17314', 'Paprika', 2, 2, 'paprika-1572832558', 'Sejenis cabai namun banyak warnanya.', 60, 3, 'product/Bjc0yINeN6o9NVo8BifsrOSAn8dlwIlDZI0IZx3G.jpeg', NULL, NULL, 5000, 1, '2019-11-04 01:55:58', '2019-11-04 06:17:58', NULL),
(38, '1abd6920-fec5-11e9-980d-bb778e76122d', 'Berenuk', 1, 2, 'berenuk-1572845812', 'Buah Beracun', 8, 8, 'product/dhghN3oghDTQvfC1ln32va7QHFjjQIzNZ3x7FKAB.jpeg', 'product/sXNNRbWvgUARnNSWl2sYUpsh7yGNbnwHRXKbResQ.jpeg', 'product/LC50PlqbMajmvinvHl26JcoIoAWWCzKMxwL45gkh.jpeg', 10, 4, '2019-11-04 05:36:52', '2019-11-04 07:26:57', NULL),
(39, '1b34aeb0-feca-11e9-af4c-43a8a411acde', 'tEst UnIt', 3, 1, 'test-unit-1572847960', 'hola', 99, 2, 'product/3CyAR0P12gtunY9DtFCIDR0YR4ekdU4WbPvxQ1Zk.jpeg', NULL, NULL, 5500, 1, '2019-11-04 06:12:40', '2019-11-04 06:17:14', NULL),
(40, '9d8e3890-fecb-11e9-ba09-e52e088697c9', 'Nanas', 1, 2, 'nanas-1572848608', 'Buah nanas yang kuning', 0, 8, 'product/uwiiILBVWZvOwQURZ1wY5BQh8WZg2ciFqSXWwDvC.jpeg', NULL, NULL, 12, 5, '2019-11-04 06:23:28', '2019-11-04 07:07:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finish` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `uuid`, `product_id`, `user_id`, `start`, `finish`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '94014270-fd64-11e9-8964-9716f69b6869', 3, 2, '02 Nov 2019', '04 Nov 2019', 'It\'s Amazing', '2019-11-02 11:33:23', '2019-11-04 01:55:13', NULL),
(2, '2446e220-fea6-11e9-8cd1-575b817987c4', 25, 2, '04 Nov 2019', '04 Nov 2019', 'Fresh & Cool', '2019-11-04 01:55:13', '2019-11-04 02:06:35', NULL),
(3, 'bab892c0-fea7-11e9-bf2f-c33386ce7e87', 23, 2, '04 Nov 2019', NULL, 'Segar & Terpercaya', '2019-11-04 02:06:35', '2019-11-04 02:06:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `uuid`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '8219', 'Super Admin', NULL, NULL, NULL),
(2, '99898', 'Cashier', NULL, NULL, NULL),
(3, '9087', 'Seller', NULL, NULL, NULL),
(4, '72811', 'Buyyer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `user_id`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 6, 90000, NULL, '2019-11-04 03:56:00'),
(2, 8, 120000, '2019-11-03 09:55:33', '2019-11-03 19:05:55'),
(4, 9, 70000, '2019-11-03 17:04:54', '2019-11-03 17:09:59'),
(5, 10, 1000, '2019-11-03 23:46:30', '2019-11-03 23:46:30'),
(6, 11, 1000, '2019-11-03 23:46:39', '2019-11-03 23:46:39'),
(7, 12, 1000, '2019-11-04 01:38:02', '2019-11-04 01:38:02'),
(8, 13, 1000, '2019-11-04 02:00:07', '2019-11-04 02:00:07'),
(9, 14, 51000, '2019-11-04 04:20:12', '2019-11-04 04:24:15'),
(10, 15, 1000, '2019-11-04 05:25:52', '2019-11-04 05:25:52'),
(11, 16, 1000, '2019-11-04 05:28:19', '2019-11-04 05:28:19'),
(12, 17, 1000, '2019-11-04 05:42:39', '2019-11-04 05:42:39'),
(13, 18, 1000, '2019-11-04 06:15:54', '2019-11-04 06:15:54'),
(14, 19, 968, '2019-11-04 06:26:33', '2019-11-04 07:08:37'),
(15, 21, 76000, '2019-11-04 06:57:25', '2019-11-05 03:44:56'),
(16, 22, 1000, '2019-11-04 07:24:33', '2019-11-04 07:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `open` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_open` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `uuid`, `name`, `slug`, `user_id`, `address`, `phone_number`, `open`, `closed`, `is_open`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'c541d300-fd61-11e9-8b51-3be4a46e20fb', 'Toko Sejahtera', '1572693197', 1, 'Bandung jabar', '089218712', NULL, NULL, '0', '2019-11-02 11:13:17', '2019-11-02 11:13:17', NULL),
(2, '6fdd6080-fe94-11e9-bee9-a51ef0175020', 'Sayur Indah', '1572824909', 11, 'Ciomas Harapan', '0888231535211', NULL, NULL, '0', '2019-11-03 23:48:29', '2019-11-03 23:48:29', NULL),
(3, 'e8b0d280-fea6-11e9-8676-75ba104b0ca7', 'Toko Mainan', '1572832843', 13, 'ciomas', '081278788127', NULL, NULL, '0', '2019-11-04 02:00:43', '2019-11-04 02:00:43', NULL),
(4, '22977130-fec4-11e9-8391-f963df6b27ac', 'Toko Arifhan', '1572845395', 16, 'Cibanteng Our Camp', '089605588604', NULL, NULL, '0', '2019-11-04 05:29:55', '2019-11-04 05:29:55', NULL),
(5, '450dde20-fecb-11e9-a4f6-85cf6e578b22', 'Toko abing', '1572848460', 18, 'GG Sadar oioi', '089766231', NULL, NULL, '0', '2019-11-04 06:21:00', '2019-11-04 06:21:00', NULL),
(6, '2ace8700-fed3-11e9-aec6-53d5df9e52a3', 'Toko test', '1572851852', 19, 'Ciomas', '089605588604', NULL, NULL, '0', '2019-11-04 07:17:32', '2019-11-04 07:17:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` bigint(20) NOT NULL DEFAULT '0',
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `receiver_address` text COLLATE utf8_unicode_ci NOT NULL,
  `shipping_costs` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `product_id`, `message`, `date`, `payment_method`, `store_id`, `invoice`, `user_id`, `admin_id`, `total`, `status`, `receiver_address`, `shipping_costs`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '5700be70-fd67-11e9-a4ad-81aa012e2280', 2, NULL, '', 0, 1, '201911021', 3, 4, 30000, 1, 'tokyo', 0, '2019-11-02 11:53:09', '2019-11-02 23:27:50', NULL),
(3, 'f3456d90-fddf-11e9-a494-33c1e16c8c2f', 2, NULL, '2019-11-03', 0, 1, '201911033', 3, 4, 30000, 1, 'bogor', 0, '2019-11-03 02:16:31', '2019-11-03 17:47:32', NULL),
(4, 'f35769e0-fddf-11e9-b70e-43fbfb7b5996', 3, NULL, '2019-11-03', 0, 1, '201911034', 3, 4, 70000, 5, 'bogor', 0, '2019-11-03 02:16:31', '2019-11-03 02:36:05', NULL),
(5, '27521340-fde0-11e9-b8c3-a320366947a8', 3, NULL, '2019-11-03', 0, 1, '201911035', 3, 4, 35000, 1, 'bogor', 0, '2019-11-03 02:17:58', '2019-11-03 14:58:06', NULL),
(6, '80b433c0-fde0-11e9-a2fe-e10d360cc9d5', 3, NULL, '2019-11-03', 0, 1, '201911036', 3, 4, 35000, 4, 'jakarta', 0, '2019-11-03 02:20:28', '2019-11-03 15:02:39', NULL),
(7, 'b4abe160-fde0-11e9-8f0e-871396bcce84', 2, 'duarr', '2019-11-03', 0, 1, '201911037', 3, 4, 15000, 4, 'Bali', 0, '2019-11-03 02:21:55', '2019-11-03 15:02:34', NULL),
(8, 'fa794660-fe13-11e9-aae0-7bb6e59d614c', 2, 'Yang segar segar bos', '2019-11-03', 0, 1, '201911038', 6, 4, 15000, 5, 'cibanteng, bogor  jawa barat', 0, '2019-11-03 08:28:57', '2019-11-03 14:43:29', '2019-11-03 14:43:29'),
(9, '1342b4c0-fe1e-11e9-9f5d-7136dad125e4', 2, 'yang hijau dan segar', '2019-11-03', 0, 1, '201911039', 6, 4, 15000, 1, 'cibodas', 0, '2019-11-03 09:41:13', '2019-11-03 14:54:36', NULL),
(10, '4057bdf0-fe1f-11e9-a60e-1fb43c4a957f', 3, 'mantap', '2019-11-03', 0, 1, '2019110310', 6, 4, 70000, 4, 'kirim ke jeppang', 0, '2019-11-03 09:49:38', '2019-11-03 15:00:02', NULL),
(11, '14ff73e0-fe23-11e9-bafb-093d6fb9ca1e', 3, 'slurr', '2019-11-03', 0, 1, '2019110311', 6, 4, 70000, 1, 'Bogor Raya', 0, '2019-11-03 10:17:04', '2019-11-03 14:43:21', '2019-11-03 14:43:21'),
(12, '1501c6e0-fe23-11e9-818c-27d7953571ea', 2, 'green', '2019-11-03', 0, 1, '2019110312', 6, 4, 30000, 4, 'Bogor Raya', 0, '2019-11-03 10:17:04', '2019-11-03 14:59:55', NULL),
(13, 'c49d1b00-fe4c-11e9-80bb-39f2d8df867c', 3, 'Test beli', '2019-11-03', 0, 1, '2019110313', 8, 4, 35000, 4, 'Cibodas, Bogor', 0, '2019-11-03 15:15:28', '2019-11-03 17:41:34', NULL),
(14, 'b69dfee0-fe57-11e9-bb1f-27a488456adb', 3, 'segar, fresh', '2019-11-03', 0, 1, '2019110314', 8, 4, 35000, 7, 'jakarta selatan', 0, '2019-11-03 16:33:49', '2019-11-03 16:43:23', NULL),
(15, '305dd680-fe5c-11e9-89bb-6f667a9cc2de', 2, 'Mantap, cek sound !1!1!', '2019-11-04', 0, 1, '2019110415', 9, 4, 15000, 5, 'Cibanteng', 0, '2019-11-03 17:05:51', '2019-11-03 18:04:00', NULL),
(16, 'c472d700-fe5c-11e9-89b2-d57166b3b91c', 2, 'njir vroh', '2019-11-04', 0, 1, '2019110416', 9, 4, 15000, 5, 'ciomas', 0, '2019-11-03 17:09:59', '2019-11-03 17:40:53', NULL),
(17, 'b9bcbaf0-fe61-11e9-9095-adb3f6ced775', 2, 'test', '2019-11-04', 0, 1, '2019110417', 8, 4, 15000, 5, 'Bandung', 0, '2019-11-03 17:45:29', '2019-11-03 17:48:42', NULL),
(18, '5ca33e40-fe62-11e9-993f-83e258b9f5d9', 3, 'uiu', '2019-11-04', 0, 1, '2019110418', 8, 4, 35000, 5, 'uu', 0, '2019-11-03 17:50:02', '2019-11-03 18:03:51', NULL),
(19, 'a68e2280-fe92-11e9-87b1-f5ec1af6d42f', 3, 'fresh', '2019-11-04', 0, 1, '2019110419', 6, 4, 35000, 5, 'ciomas', 0, '2019-11-03 23:35:42', '2019-11-03 23:37:17', NULL),
(20, '03e11550-feb7-11e9-afd9-7fa4d0de279c', 34, 'Jangan lupa di bungkus', '2019-11-04', 0, 1, '2019110420', 6, 4, 10000, 5, 'Cibadaks', 0, '2019-11-04 03:56:00', '2019-11-04 04:01:29', NULL),
(21, 'f6290920-feba-11e9-8808-3b9115aea4b7', 36, 'Packing rapi.', '2019-11-04', 0, 1, '2019110421', 14, 4, 50000, 5, 'kirim ke rumah amay', 0, '2019-11-04 04:24:15', '2019-11-04 04:26:39', NULL),
(22, '2b5a9370-fecc-11e9-a517-8b33e656258f', 40, 'yang kuning', '2019-11-04', 0, 5, '2019110422', 19, 4, 12, 7, 'cibanteng', 0, '2019-11-04 06:27:26', '2019-11-04 06:28:15', NULL),
(23, 'a3215890-fecc-11e9-9662-dba8e85c8176', 38, 'yang bulet', '2019-11-04', 0, 4, '2019110423', 19, 4, 10, 1, 'cibantrng', 0, '2019-11-04 06:30:47', '2019-11-04 06:33:00', NULL),
(24, '41a305a0-fed1-11e9-b79c-8f26bb584114', 30, 'Fresh', '2019-11-04', 0, 1, '2019110424', 21, 4, 15000, 1, 'ciomas', 0, '2019-11-04 07:03:51', '2019-11-04 07:05:29', NULL),
(25, 'ec1dc7e0-fed1-11e9-a682-73ac32aa66d2', 38, 'packing gg', '2019-11-04', 0, 4, '2019110425', 19, 4, 10, 5, 'ciomas', 0, '2019-11-04 07:08:37', '2019-11-04 07:11:28', NULL),
(26, 'a28e5720-ff7e-11e9-a1ce-c7fd01cd4b88', 34, 'test', '2019-11-05', 0, 1, '2019110526', 21, 4, 10000, 1, 'bogor', 0, '2019-11-05 03:44:56', '2019-11-05 03:46:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kg', NULL, NULL),
(2, 'cm', NULL, NULL),
(3, 'gram', '2019-11-05 03:39:48', '2019-11-05 03:39:48'),
(4, 'ons', '2019-11-05 03:40:23', '2019-11-05 03:40:23'),
(5, 'kwintal', '2019-11-05 03:40:24', '2019-11-05 03:40:24'),
(6, 'pcs', '2019-11-05 03:40:24', '2019-11-05 03:40:24'),
(7, 'pack', '2019-11-05 03:40:24', '2019-11-05 03:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `role_id`, `active`, `phone_number`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a0b9d4d0-fd61-11e9-93d7-09a0adbe6c89', 'Lord Kazuma', 'kazuma@gmail.com', 3, 1, '089128128', NULL, '$2y$10$NzvqFnOY.M8laQcNdGdDd.5Z0g/B5SB7UVMKdZqmtvcBkgp.hy9Qu', NULL, '2019-11-02 11:12:16', '2019-11-05 03:45:57', NULL),
(2, '', 'alfy adinata', 'alfy@test.dev', 1, 1, NULL, NULL, '$2b$10$9GYOOgB11Z/sSuQBqptRaOJjpGSDaO7HShtgCYAxLgR.LCANss9My', NULL, NULL, NULL, NULL),
(3, 'b9c41c40-fd64-11e9-9b8f-83a64941075a', 'So Desuka', 'so@gmail.com', 4, 1, '081272821', NULL, '$2y$10$q2w3iSjSgcDLMelsCaE9M.RiC0aS/JIATcgV0ncnE6MHeSZXF.xLe', NULL, '2019-11-02 11:34:26', '2019-11-04 05:15:48', NULL),
(4, '2f81a360-fd67-11e9-b887-6d116f75de4c', 'kasir 1', 'kasir@gmail.com', 2, 1, '08127128', NULL, '$2y$10$o0TOetO3RA1xd9pHYJgvT.9OjxUpBhNGyPsMe/k88LUc3jg7DYkr.', NULL, '2019-11-02 11:52:03', '2019-11-02 11:52:34', NULL),
(5, '12560e50-fd68-11e9-8531-ef6624e111af', 'Alice', 'alice@gmail.com', 4, 1, '087816362', NULL, '$2y$10$nRpVa1ea4/v0KyFU3iIZW.ea1D3QPgyscg29y2mtJeiOc0zM7zk2i', NULL, '2019-11-02 11:58:23', '2019-11-02 11:58:23', NULL),
(6, 'd2e45440-fe13-11e9-a8ef-1f2cf70dcb86', 'Arifhan', 'arifhan@gmail.com', 4, 1, '089605588604', NULL, '$2y$10$.hPODZx.oN9dTRoimr5VrO6DpD2PLR3t4UOp.5VZTCWELuSRThy2G', NULL, '2019-11-03 08:27:50', '2019-11-03 08:27:50', NULL),
(8, '1392e4c0-fe20-11e9-99d7-09f026a9b100', 'Joker', 'joker@gmail.com', 4, 1, '08562253500', NULL, '$2y$10$7XJb3DS1AoxbxSSO36CkEeRmcrEYgkpDMNZUDLCwnkJgnA8M4uqZS', NULL, '2019-11-03 09:55:33', '2019-11-03 09:55:33', NULL),
(9, '0de40cb0-fe5c-11e9-81bb-a51dbb9c0210', 'Arman', 'arman@gmail.com', 4, 1, '0895322118828', NULL, '$2y$10$gf22Eh0kfoJCXy2KJlN.TOsvg20IdubL.hlV86/4m/zJtsBEAQ3iq', NULL, '2019-11-03 17:04:53', '2019-11-03 17:04:53', NULL),
(10, '28b4de70-fe94-11e9-9ca8-e5f7ced97e8b', 'widi', 'widi1234@gmail.com', 4, 1, '08921928128', NULL, '$2y$10$o6IbezPtgL/BbMcTCGkh3ew8mMM3Fm/HlzxXvXicQNcULN9zg3rUW', NULL, '2019-11-03 23:46:30', '2019-11-03 23:46:30', NULL),
(11, '2e58d5a0-fe94-11e9-9762-9ff623ad8ad4', 'muhammadalfian', 'muhammadalfian505@gmail.com', 3, 1, '082123361018', NULL, '$2y$10$gIMCfsfefNx5s2bpsJ2Z9.PgV/cBKBZdfrsrkv0iCgPwVAhrM5FMG', NULL, '2019-11-03 23:46:39', '2019-11-04 02:03:35', NULL),
(12, 'bdab9320-fea3-11e9-837c-497640775a9a', 'Gess', 'Gess@gmail.com', 4, 1, '08396182628', NULL, '$2y$10$WE2aCH5b1QHkfDi7inzXDO0oEh54qpL9t6tSzKCMJSmguLxYq.iNm', NULL, '2019-11-04 01:38:02', '2019-11-04 01:38:02', NULL),
(13, 'd33fb830-fea6-11e9-a5f0-5f8259552f9c', 'Konoho', 'konoha@gmail.com', 3, 1, '08721782781', NULL, '$2y$10$0qtAowTCvwHb4twHoEuDPeGF.EsraBNlO.m1xiLJ2h7FGzt7bYmiW', NULL, '2019-11-04 02:00:07', '2019-11-04 02:03:28', NULL),
(14, '64aaee60-feba-11e9-ac5c-ff43c0bb4391', 'amay', 'amay@gmail.com', 4, 1, '08817254853', NULL, '$2y$10$lEpaTtA8exIOPK3FE5YGv.1EUxJ4gkgvG.neMNZuK.eM0DyMT.g8y', NULL, '2019-11-04 04:20:11', '2019-11-04 04:20:11', NULL),
(15, '91b9e8e0-fec3-11e9-aec8-8f524de1137b', 'Hamdani', 'hamdaniyuo01@gmail.com', 4, 1, '0898989898', NULL, '$2y$10$VS0If/OyU4Vq.Z40DyYoIem2IoSSfl.VMzcdnHQ898.G47/6PyAwW', NULL, '2019-11-04 05:25:52', '2019-11-04 05:25:52', NULL),
(16, 'e93af370-fec3-11e9-9894-ad5d4f04b35d', 'han', 'han@gmail.com', 3, 1, '089605588604', NULL, '$2y$10$IqgjcBe05DWAt6YsSRkomONAdC88OSunCoGcKsn6E98QzDpl8blAS', NULL, '2019-11-04 05:28:19', '2019-11-04 05:30:56', NULL),
(17, 'e9ed12b0-fec5-11e9-817c-2bfec5520dfb', 'Beta Tester 001', 'betatest11@gmail.com', 4, 1, '08881912819', NULL, '$2y$10$Po3RCyrrGrGjq5X1pRp26uad89Di9e6sr0IrLGglethU1hyNMS5TG', NULL, '2019-11-04 05:42:39', '2019-11-04 05:42:39', NULL),
(18, '8ebd5670-feca-11e9-8a24-b9bc252d35d7', 'abing', 'abing@gmail.com', 3, 1, '0895123451234', NULL, '$2y$10$.vg3lGFf26nbMDiOYY64BuqMGFfaQ/sZP1A3daBPa8/O3/miUjnwS', NULL, '2019-11-04 06:15:54', '2019-11-04 06:21:34', NULL),
(19, '0b77e340-fecc-11e9-9f71-a52236392bc2', 'han', 'hanuser@gmail.com', 3, 0, '089605588604', NULL, '$2y$10$oHJQ9Tn2zmr.oqWIQXU6KOK5HXig6qsZvIwUvqipX4.nCHV6hC2rK', NULL, '2019-11-04 06:26:33', '2019-11-04 07:17:32', NULL),
(21, '5b864190-fed0-11e9-8919-b355a74c1f08', 'awal herviansyah', 'awalherfiansyah25@gmail.com', 4, 1, '082110851962', NULL, '$2y$10$9Y/qbtnoK9cq4UsYu1o91eVHZ.Yi1HWXhp0Vs4KxdtFrZiT80dNpC', NULL, '2019-11-04 06:57:25', '2019-11-04 06:57:25', NULL),
(22, '25f544e0-fed4-11e9-b7bc-37b503446a51', 'romario', 'romario@gmail.com', 4, 1, '089605588604', NULL, '$2y$10$Bp/Hdt.DMFIKL0Pyh49tFeauzodwtCECJsysD94S.MP26TEb2SfdW', NULL, '2019-11-04 07:24:33', '2019-11-04 07:24:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `uuid`, `year`, `month`, `date`, `ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd7d6f640-fd61-11e9-97bb-cd85dc141e0e', '2019', '11', '02', '127.0.0.1', '2019-11-02 11:13:48', '2019-11-02 11:13:48', NULL),
(2, 'ecea3f20-fe93-11e9-a0db-156874c9bddd', '2019', '11', '04', '192.168.43.189', '2019-11-03 23:44:49', '2019-11-03 23:44:49', NULL),
(3, '7e74f2a0-fe94-11e9-9354-e33a8c9d64b6', '2019', '11', '04', '192.168.43.141', '2019-11-03 23:48:54', '2019-11-03 23:48:54', NULL),
(4, '3eaffb40-fea3-11e9-bba0-7d8da793604b', '2019', '11', '04', '192.168.43.220', '2019-11-04 01:34:29', '2019-11-04 01:34:29', NULL),
(5, 'a14ee070-febf-11e9-8d79-61233137c0f3', '2019', '11', '04', '192.168.43.210', '2019-11-04 04:57:41', '2019-11-04 04:57:41', NULL),
(6, 'e8ffbb90-fec1-11e9-8584-439db97b40c0', '2019', '11', '04', '192.168.43.129', '2019-11-04 05:14:00', '2019-11-04 05:14:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_seens`
--
ALTER TABLE `last_seens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_seens_user_id_foreign` (`user_id`),
  ADD KEY `last_seens_product_id_foreign` (`product_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_product_id_foreign` (`product_id`),
  ADD KEY `promotions_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saldo_user_id_foreign` (`user_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`),
  ADD KEY `transactions_store_id_foreign` (`store_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`),
  ADD KEY `wish_lists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `last_seens`
--
ALTER TABLE `last_seens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `last_seens`
--
ALTER TABLE `last_seens`
  ADD CONSTRAINT `last_seens_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `last_seens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saldo`
--
ALTER TABLE `saldo`
  ADD CONSTRAINT `saldo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
