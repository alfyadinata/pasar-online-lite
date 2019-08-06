-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 05:38 AM
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
-- Database: `pasar_online`
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
(1, '67eb5d20-b7f2-11e9-9bf9-51514880c0c7', 'Huawei Uji Coba Ponsel dengan Sistem Hongmeng', '', '<p><img src=\"https://akcdn.detik.net.id/visual/2019/03/07/a69fa662-6ab2-4824-9acf-f695c39f609f_169.jpeg?w=650\" alt=\"\" width=\"650\" height=\"364\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Jakarta, CNN Indonesia --&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; color: #ff0000;\"><span style=\"font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444;\" href=\"https://www.cnnindonesia.com/tag/huawei\" target=\"_blank\" rel=\"noopener\"><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #ff0000;\">Huawei</span></a>&nbsp;</span></span><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">sedang melakukan uji coba sebuah&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; color: #ff0000;\"><a style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444;\" href=\"https://www.cnnindonesia.com/tag/smartphone\" target=\"_blank\" rel=\"noopener\"><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #ff0000;\">smartphone</span></a></span><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">&nbsp;dengan sistem operasi&nbsp;</span><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; color: #ff0000;\"><span style=\"font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden;\"><a style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444;\" href=\"https://www.cnnindonesia.com/tag/hongmeng\" target=\"_blank\" rel=\"noopener\"><span style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #ff0000;\">Hongmeng</span></a></span></span><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">. Sistem operasi ini merupakan sistem operasi milik Huawei yang diperkirakan akan mulai dijual akhir tahun ini.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><em style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Reuters</em><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">&nbsp;mengutip dari&nbsp;</span><em style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Global Times</em><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">, perangkat dengan sistem operasi Hongmeng dijual dengan harga 2.000 yuan atau setara dengan Rp4 juta. Perangkat ini akan menyasar segmentasi menengah ke bawah.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Munculnya Hongmeng dinilai menjadi langkah besar untuk Huawei, sebagai pembuat smartphone terbesar kedua di dunia. Pasalnya, tindakan pemerintah AS yang mengancam akses terhadap Android dari Google membuat Huawei harus mengambil tindakan.&nbsp;</span></p>\r\n<table class=\"linksisip\" style=\"border-collapse: collapse; -webkit-font-smoothing: antialiased; backface-visibility: hidden; width: 574.4px; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">\r\n<tbody style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<tr style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<td style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<div class=\"lihatjg\" style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Medium; padding: 10px; margin-bottom: 20px; background-repeat: initial; background-color: #eceff1; border: 1px solid #dde3e6;\">\r\n<h5 style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #cc0000; display: inline-block;\">Lihat juga:</h5>\r\n&nbsp;<a style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444;\" href=\"https://www.cnnindonesia.com/teknologi/20190715125241-185-412184/huawei-daftarkan-paten-os-harmony/\" data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\">Huawei Daftarkan Paten OS Harmony</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Huawei belum menanggapi konfirmasi Reuters hingga berita ini diturunkan.   Sebelumnya, para eksekutif Huawei menggambarkan Hongmeng sebagai sistem operasi yang dirancang untuk produk seperti TV pintar. Para pemimpin perusahaan telah secara terbuka mengecilkan kemungkinan bahwa perangkat lunak tersebut dapat memberi daya pada smartphone.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Pekan lalu, di sebuah acara yang mengumumkan pendapatan perusahaan untuk paruh pertama 2019, ketua Huawei Liang Hua mengatakan perusahaan lebih suka menggunakan sistem operasi Google Android untuk perangkat mobile-nya dan merujuk Hongmeng sebagai bagian dari strategi jangka panjang Huawei.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Sejak Mei, Huawei telah menjadi pusat ketegangan geopolitik antara Amerika Serikat dan China. Presiden Donald Trump menempatkan perusahaan itu di daftar entitas yang secara efektif melarang pemasok Amerika untuk menjual barang ke perusahaan dalam daftar tersebut.</span></p>\r\n<table class=\"linksisip\" style=\"border-collapse: collapse; -webkit-font-smoothing: antialiased; backface-visibility: hidden; width: 574.4px; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">\r\n<tbody style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<tr style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<td style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden;\">\r\n<div class=\"lihatjg\" style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; font-family: CNNSansW04-Medium; padding: 10px; margin-bottom: 20px; background-repeat: initial; background-color: #eceff1; border: 1px solid #dde3e6;\">\r\n<h5 style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; font-family: CNNSansW04-Medium; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #cc0000; display: inline-block;\">Lihat juga:</h5>\r\n&nbsp;<a style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444;\" href=\"https://www.cnnindonesia.com/teknologi/20190708152110-185-410178/apple-uji-coba-face-id-dan-touch-id-untuk-masuk-icloud/\" data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\">Apple Uji Coba Face ID dan Touch ID untuk Masuk iCloud</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Trump telah mengisyaratkan bahwa sanksi akan \'santai\', meskipun rincian lebih lanjut masih belum diumumkan. Jika kebijakan tetap diberlakukan, Huawei berpotensi kehilangan akses ke pembaruan reguler ke Android.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Pendapatan Huawei pada paruh pertama 2019 tumbuh 23 persen, sebagian karena permintaan domestik yang kuat untuk ponsel-ponselnya.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Perusahaan riset pasar Canalys mencatat penjualan ponsel pintar merosot di luar negeri,sementara pengirimannya di China meningkat 31 persen YoY di kuartal Juni.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">Analis mengaitkan kinerja yang kuat \'dalam negeri\' sebagian karena kualitas perangkatnya, yang telah lama memimpin pasar ponsel Android kelas atas China, dan sebagian karena patriotisme di antara konsumen.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" /><a class=\"embed videocnn inview_ap_0\" style=\"background-repeat: initial; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; text-decoration-line: none; color: #444444; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\" href=\"https://www.cnnindonesia.com/embed/video/411391\" data-token=\"9844647c722dc41050d624602c1d022b\" data-url=\"https://api.cnnindonesia.com/gambas/oembed\" data-width=\"620\" data-height=\"350\">[Gambas:Video CNN]</a><span style=\"color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">&nbsp;</span><strong style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: #333333; font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma;\">(age)</strong></p>', 'backpack-blond-hair-blurred-background-2519212.jpg', 2, 2, '2019-08-05 19:32:16', '2019-08-05 19:32:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(2, 'd5e15430-b590-11e9-9481-e75c85a5c764', 'teknologi', 0, 'Teknologi', '2019-08-02 18:48:47', '2019-08-03 06:28:28', NULL),
(3, 'd5ed2340-b590-11e9-ae14-e3b7c445bb90', 'sayur', 1, 'Sayur', '2019-08-02 18:48:48', '2019-08-03 06:28:39', NULL),
(6, '0c8b1d00-b609-11e9-85af-0f4ea5f1dc2b', 'health', 1, 'Health', '2019-08-03 09:09:19', '2019-08-03 09:09:28', '2019-08-03 09:09:28'),
(8, '2ffc1db0-b60a-11e9-a966-51765bc96af4', '1', 1, '1', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(9, '300429e0-b60a-11e9-9432-efee8f010102', '2', 1, '2', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(10, '300eebc0-b60a-11e9-9e28-7fd93ed6ad2a', '3', 1, '3', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(11, '30169f50-b60a-11e9-b799-e5c756528c51', '4', 1, '4', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(12, '302270e0-b60a-11e9-8c12-75d6d8498d5c', '5', 1, '5', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(13, '302f3bc0-b60a-11e9-afd9-e3870cf25748', '6', 1, '6', '2019-08-03 09:17:28', '2019-08-04 06:30:13', '2019-08-04 06:30:13'),
(14, '30323cf0-b60a-11e9-82a9-c1503fcfd806', '7', 1, '7', '2019-08-03 09:17:28', '2019-08-04 06:30:13', '2019-08-04 06:30:13'),
(15, '30349f40-b60a-11e9-92fa-6798ad800824', '8', 1, '8', '2019-08-03 09:17:28', '2019-08-04 06:30:13', '2019-08-04 06:30:13'),
(16, '3036e8f0-b60a-11e9-8d1d-6d7619354fa1', '9', 1, '9', '2019-08-03 09:17:28', '2019-08-04 06:30:13', '2019-08-04 06:30:13'),
(17, '303ee4b0-b60a-11e9-adfe-dff80ba08276', '10', 1, '10', '2019-08-03 09:17:28', '2019-08-04 06:30:12', '2019-08-04 06:30:12'),
(18, 'f0afe340-b6bf-11e9-808a-f569d6d01741', 'test-edited', 1, 'test edited', '2019-08-04 06:58:30', '2019-08-04 07:02:01', '2019-08-04 07:02:01'),
(19, '9e7fd130-b6c0-11e9-a277-7bc566430cc0', 'test-1', 1, 'test 1', '2019-08-04 07:03:22', '2019-08-04 07:04:05', '2019-08-04 07:04:05'),
(20, '9e8f0aa0-b6c0-11e9-8bb2-9fceb4f8e425', 'test-2', 1, 'test 2', '2019-08-04 07:03:22', '2019-08-04 07:04:05', '2019-08-04 07:04:05'),
(21, 'ecb687f0-b7ef-11e9-a6ec-f1fb1fb3e2ae', 'health', 0, 'Health', '2019-08-05 19:14:30', '2019-08-05 19:14:30', NULL);

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
(1, 'f0a143c0-b6bf-11e9-93c0-01bb7aee1f58', '127.0.0.1', 'Membuat kategori test', 'POST', 2, '2019-08-04 06:58:30', '2019-08-04 06:58:30', NULL),
(2, '365611c0-b6c0-11e9-bf87-ab3fdbea8c94', '127.0.0.1', 'Memperbarui kategori test edited', 'POST', 2, '2019-08-04 07:00:27', '2019-08-04 07:00:27', NULL),
(3, '6e624ff0-b6c0-11e9-a03d-a35073ddf36e', '127.0.0.1', 'Menghapus kategori test edited', 'GET', 2, '2019-08-04 07:02:01', '2019-08-04 07:02:01', NULL),
(4, '9e74cc30-b6c0-11e9-9f0e-71f9e4d646a8', '127.0.0.1', 'Membuat kategori test 1', 'POST', 2, '2019-08-04 07:03:21', '2019-08-04 07:03:21', NULL),
(5, '9e8cd220-b6c0-11e9-b45c-d18b1bb20d32', '127.0.0.1', 'Membuat kategori test 2', 'POST', 2, '2019-08-04 07:03:22', '2019-08-04 07:03:22', NULL),
(6, 'b8638120-b6c0-11e9-bc4c-df5c0f4cdf7a', '127.0.0.1', 'Menghapus kategori test 1', 'DELETE', 2, '2019-08-04 07:04:05', '2019-08-04 07:04:05', NULL),
(7, 'b86de910-b6c0-11e9-b70b-d7094cb0b9da', '127.0.0.1', 'Menghapus kategori test 2', 'DELETE', 2, '2019-08-04 07:04:05', '2019-08-04 07:04:05', NULL),
(8, 'ec96a520-b7ef-11e9-89d2-255565302c11', '127.0.0.1', 'Membuat kategori Health', 'POST', 2, '2019-08-05 19:14:30', '2019-08-05 19:14:30', NULL);

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
(124, '2014_07_28_051935_create_roles_table', 1),
(125, '2014_10_12_000000_create_users_table', 1),
(126, '2014_10_12_100000_create_password_resets_table', 1),
(127, '2017_07_28_064702_create_categories_table', 1),
(128, '2018_07_28_053236_create_stores_table', 1),
(129, '2019_07_28_052532_create_products_table', 1),
(130, '2019_07_28_054155_create_carts_table', 1),
(131, '2019_07_28_055820_create_transactions_table', 1),
(132, '2019_07_28_063256_create_promotions_table', 1),
(133, '2019_07_28_065137_create_visitors_table', 1),
(134, '2019_07_28_065341_create_logs_table', 1),
(135, '2019_07_28_065615_create_configs_table', 1),
(136, '2019_07_28_070934_create_blogs_table', 1),
(137, '2019_07_28_074032_create_wish_lists_table', 1);

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
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
(1, '9eb25d40-b4d2-11e9-a517-bb227190fe33', 'SuperAdmin', '2019-08-03 17:00:00', '2019-08-03 17:00:00', NULL),
(2, '0c8b1d00-b609-11e9-85af-0f4ea5f1dc2b', 'Cashier', '2019-08-04 17:00:00', '2019-08-04 17:00:00', NULL),
(3, '30349f40-b60a-11e9-92fa-6798ad800824', 'Seller', '2019-08-04 17:00:00', '2019-08-04 17:00:00', NULL),
(4, '9e8f0aa0-b6c0-11e9-8bb2-9fceb4f8e425', 'Buyyer', NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` bigint(20) NOT NULL DEFAULT '0',
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `receiver_address` text COLLATE utf8_unicode_ci NOT NULL,
  `shipping_costs` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(2, '961f4d70-b65e-11e9-a208-cbd4598c6cc2', 'alfy adinata', 'alfy@gmail.com', 1, 1, NULL, NULL, '$2y$10$kAzBFIzAOjrIHQuYoIxBX./0RuuVk38LpgSG.bLmcbF9Bo79.5PR2', NULL, '2019-08-03 19:21:37', '2019-08-03 19:21:37', NULL),
(3, '951c0980-b71b-11e9-aa27-375879a22fcb', 'Steve Zed', 'steve@gmail.com', 4, 1, NULL, NULL, '$2y$10$GVLyzB/kECPB12wabOxBI.JsZAHfdKk4hZxlbQULKkE8DGrqTcDzO', NULL, '2019-08-04 17:54:30', '2019-08-04 17:54:30', NULL);

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
(2, '9eb25d40-b4d2-11e9-a517-bb227190fe33', '2019', '08', '02', '127.0.0.1', '2019-08-01 20:07:11', '2019-08-01 20:07:11', NULL);

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
  ADD KEY `transactions_cart_id_foreign` (`cart_id`),
  ADD KEY `transactions_store_id_foreign` (`store_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_admin_id_foreign` (`admin_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `transactions_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
