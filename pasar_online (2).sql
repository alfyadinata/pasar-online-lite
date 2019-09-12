-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2019 at 02:35 PM
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
(1, '811de040-d2b2-11e9-9940-639c85f5e0f6', 'Gather Together', '', '<p><span style=\"color: #222222; font-family: arial, sans-serif; background-color: #ffffff;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span><span style=\"background-color: #ffffff; color: #222222; font-family: arial, sans-serif;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span><span style=\"background-color: #ffffff; color: #222222; font-family: arial, sans-serif;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span><span style=\"background-color: #ffffff; color: #222222; font-family: arial, sans-serif;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span><span style=\"background-color: #ffffff; color: #222222; font-family: arial, sans-serif;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span><span style=\"background-color: #ffffff; color: #222222; font-family: arial, sans-serif;\">Cable News Network adalah sebuah saluran berita kabel asal AS yang didirikan tahun 1980 oleh konglomerat media asal Amerika Serikat Ted Turner. Ketika diluncurkan, CNN adalah saluran televisi pertama yang menyiarkan liputan berita 24 jam, dan saluran televisi berita pertama di Amerika Serikat.</span></p>', '3.jpg', 6, 1, '2019-09-09 03:32:52', '2019-09-09 03:32:52', NULL);

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
(1, '31caea00-cacc-11e9-8db5-135db6743e53', 'sayur-sayuran', 1, 'Sayur-sayuran', '2019-08-30 02:16:36', '2019-08-30 02:16:36', NULL),
(2, '31dbd9c0-cacc-11e9-9956-47716956f929', 'event', 0, 'Event', '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(3, '31ff3030-cacc-11e9-9b4f-3deab45bcaa1', 'pakaian', 1, 'Pakaian', '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(4, '321010d0-cacc-11e9-a07f-014afabdb7db', 'loker', 0, 'Loker', '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(5, '32260c40-cacc-11e9-b7bf-45c8d2552d1c', 'alat-dapur', 1, 'Alat Dapur', '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(6, '32353770-cacc-11e9-b7e6-d1e7471d9ce2', 'sosial', 0, 'Sosial', '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(7, '3ad90b90-d2b0-11e9-8467-87121ae12c47', 'buah-buahan', 1, 'Buah-Buahan', '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(8, '3ae32d00-d2b0-11e9-8e3c-87d0e4aefe03', 'service', 1, 'Service', '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(9, '3b09ea20-d2b0-11e9-9473-7b69441eee63', 'perhiasan', 1, 'Perhiasan', '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(10, '3b192ec0-d2b0-11e9-af56-4518f4638e1d', 'mainan-anak', 1, 'Mainan Anak', '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(11, '7e8dcc30-d2ba-11e9-a2ec-5da4c8b331a1', 'wqeweqw', 1, 'wqeweqw', '2019-09-09 04:30:04', '2019-09-12 11:06:53', '2019-09-12 11:06:53'),
(12, '7eaf78c0-d2ba-11e9-b094-11c19f21cff4', '12312312', 1, '12312312', '2019-09-09 04:30:04', '2019-09-12 11:06:54', '2019-09-12 11:06:54');

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
(1, 'f22d55a0-793e-11e9-a934-f33693323', 'Pasar Online', '/photos/1/5d75c4f787b88.png', '/photos/1/5d75c4f787b88.png', '08128218379', 'Akibahara, Jepang', 'pasaronline@admin.com', NULL, NULL, 'Sing Penting Ya Queen', NULL, '2019-09-09 03:21:26', NULL),
(2, 'cd01b250-d2b0-11e9-8775-0126408259c9', 'Pasar Online', '/photos/1/5d75c4f787b88.png', '/photos/1/5d75c4f787b88.png', '08122121', 'Akibahara, Jepang', 'pasaronline@admin.com', NULL, NULL, NULL, '2019-09-09 03:20:40', '2019-09-09 03:20:40', NULL),
(3, 'e8436910-d2b0-11e9-a294-9dadcce11508', 'Pasar Online', '/photos/1/5d75c4f787b88.png', '/photos/1/5d75c4f787b88.png', '08122121', 'Akibahara, Jepang', 'pasaronline@admin.com', NULL, NULL, 'Sing Penting Ya Queen', '2019-09-09 03:21:26', '2019-09-09 03:21:26', NULL);

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
(1, '58ad58e0-c98c-11e9-b63c-9f4e6160d261', '127.0.0.1', 'alfy@test.dev Membuat Kasir kasir@gmail.com', 'POST', 1, '2019-08-28 12:07:03', '2019-08-28 12:07:03', NULL),
(2, '609fd140-c98c-11e9-b50b-17d25d896bf0', '127.0.0.1', 'Memperbarui Kasir kasir@gmail.com', 'POST', 1, '2019-08-28 12:07:16', '2019-08-28 12:07:16', NULL),
(3, '31b8c140-cacc-11e9-b131-0f8c0643dcc0', '127.0.0.1', 'Membuat kategori Sayur-sayuran', 'POST', 1, '2019-08-30 02:16:36', '2019-08-30 02:16:36', NULL),
(4, '31d0f070-cacc-11e9-9379-a3feece9a837', '127.0.0.1', 'Membuat kategori Event', 'POST', 1, '2019-08-30 02:16:36', '2019-08-30 02:16:36', NULL),
(5, '31e7d520-cacc-11e9-8b4b-0d0a50df23ff', '127.0.0.1', 'Membuat kategori Pakaian', 'POST', 1, '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(6, '3203aec0-cacc-11e9-8b82-af36228b0737', '127.0.0.1', 'Membuat kategori Loker', 'POST', 1, '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(7, '321ea940-cacc-11e9-834c-db7709e394ab', '127.0.0.1', 'Membuat kategori Alat Dapur', 'POST', 1, '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(8, '322dee70-cacc-11e9-b1f8-97fca567fa2b', '127.0.0.1', 'Membuat kategori Sosial', 'POST', 1, '2019-08-30 02:16:37', '2019-08-30 02:16:37', NULL),
(9, '15f99f60-cbfc-11e9-acaf-5b69f96a182f', '127.0.0.1', 'Menghapus Kasir kasir@gmail.com', 'GET', 1, '2019-08-31 14:31:57', '2019-08-31 14:31:57', NULL),
(10, '47321090-cbfc-11e9-bc95-85eb8e70b39e', '127.0.0.1', 'alfy@test.dev Membuat Kasir alfy@gmailsa.as', 'POST', 1, '2019-08-31 14:33:19', '2019-08-31 14:33:19', NULL),
(11, '4742e980-cbfc-11e9-bb58-cfdda1c4e294', '127.0.0.1', 'alfy@test.dev Membuat Kasir aassa@saas.cc', 'POST', 1, '2019-08-31 14:33:19', '2019-08-31 14:33:19', NULL),
(12, '475736d0-cbfc-11e9-8dd5-197c7c1467fe', '127.0.0.1', 'alfy@test.dev Membuat Kasir sjkas@mva.cc', 'POST', 1, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(13, '47616ea0-cbfc-11e9-9d43-7d2c5c40bd79', '127.0.0.1', 'alfy@test.dev Membuat Kasir asjasjk@scsca.ss', 'POST', 1, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(14, '47668e80-cbfc-11e9-aaf3-3d7dafc8b413', '127.0.0.1', 'alfy@test.dev Membuat Kasir asjkkjas@kl.lp', 'POST', 1, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(15, '476ba340-cbfc-11e9-ab43-bb8e0e36325c', '127.0.0.1', 'alfy@test.dev Membuat Kasir salkaslk@mgn.ml', 'POST', 1, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(16, '4770c900-cbfc-11e9-a2cb-c968691159aa', '127.0.0.1', 'alfy@test.dev Membuat Kasir sakas@lp.com', 'POST', 1, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(17, '9fd14060-cbfc-11e9-8e22-d7acec47fd9f', '127.0.0.1', 'Memperbarui Kasir sakas@lp.com', 'POST', 1, '2019-08-31 14:35:48', '2019-08-31 14:35:48', NULL),
(18, 'caa54b60-cbfd-11e9-b2c5-519465f0c210', '127.0.0.1', 'Membuat Product Kacamata Anti Radiasi', 'POST', 11, '2019-08-31 14:44:09', '2019-08-31 14:44:09', NULL),
(19, 'af46b430-cbfe-11e9-8491-a93e7bb07b52', '127.0.0.1', 'Membuat Product Jacket Hoodie', 'POST', 11, '2019-08-31 14:50:33', '2019-08-31 14:50:33', NULL),
(20, 'c9ee2460-cbfe-11e9-b0db-dfd511fd7d37', '127.0.0.1', 'Membuat Product Tas Pria', 'POST', 11, '2019-08-31 14:51:18', '2019-08-31 14:51:18', NULL),
(21, 'e602de50-cbfe-11e9-bdc4-d92f76f83150', '127.0.0.1', 'Membuat Product Celana Jeans Pria', 'POST', 11, '2019-08-31 14:52:05', '2019-08-31 14:52:05', NULL),
(22, 'e61a3360-cc81-11e9-93d6-69be9086cb41', '127.0.0.1', 'Memperbarui Kasir aassa@saas.cc', 'POST', 1, '2019-09-01 06:29:49', '2019-09-01 06:29:49', NULL),
(23, '4f039a20-cc83-11e9-abde-354d18020b45', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 12, '2019-09-01 06:39:54', '2019-09-01 06:39:54', NULL),
(24, '88a2d560-cc8c-11e9-8a3b-d7ac742b212b', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=1', 'POST', 12, '2019-09-01 07:45:57', '2019-09-01 07:45:57', NULL),
(25, '5019a120-cd29-11e9-bbc0-a5e8f916842b', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 13, '2019-09-02 02:28:13', '2019-09-02 02:28:13', NULL),
(26, '57942820-cd29-11e9-8476-2f6b6f9b98b4', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 13, '2019-09-02 02:28:25', '2019-09-02 02:28:25', NULL),
(27, 'e7ce7150-cd38-11e9-894b-dd21eb4c79ba', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=2', 'POST', 13, '2019-09-02 04:19:50', '2019-09-02 04:19:50', NULL),
(28, 'e7dd0d50-cd38-11e9-afa2-61b98d3b1a3f', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=3', 'POST', 13, '2019-09-02 04:19:50', '2019-09-02 04:19:50', NULL),
(29, '8cc01d20-cd3a-11e9-bae3-b366efa6a412', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 13, '2019-09-02 04:31:36', '2019-09-02 04:31:36', NULL),
(30, 'adec1d40-cd3a-11e9-80ae-4725eb7bd01f', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 4', 'POST', 13, '2019-09-02 04:32:32', '2019-09-02 04:32:32', NULL),
(31, 'c632b620-cd3b-11e9-a53a-f57e9b00d666', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 4', 'POST', 13, '2019-09-02 04:40:22', '2019-09-02 04:40:22', NULL),
(32, 'ccfe5d60-cd3d-11e9-a254-e37533c6264a', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = 4', 'POST', 13, '2019-09-02 04:54:52', '2019-09-02 04:54:52', NULL),
(33, '29948c80-cd43-11e9-8d00-f77d2395b73a', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=2', 'POST', 13, '2019-09-02 05:33:15', '2019-09-02 05:33:15', NULL),
(34, '29a390b0-cd43-11e9-aa15-3d1cb3a88fbc', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=3', 'POST', 13, '2019-09-02 05:33:15', '2019-09-02 05:33:15', NULL),
(35, '29a46880-cd43-11e9-a90c-d7cea065b77b', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=4', 'POST', 13, '2019-09-02 05:33:15', '2019-09-02 05:33:15', NULL),
(36, 'ecad1880-cd43-11e9-91e2-01c50b92b876', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=4', 'POST', 13, '2019-09-02 05:38:42', '2019-09-02 05:38:42', NULL),
(37, '1007a7d0-cd44-11e9-a400-f15ec16893c1', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=4', 'POST', 13, '2019-09-02 05:39:42', '2019-09-02 05:39:42', NULL),
(38, '6c840e80-cd44-11e9-932a-15db358129d2', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=4', 'POST', 13, '2019-09-02 05:42:17', '2019-09-02 05:42:17', NULL),
(39, '7f1870a0-cd48-11e9-b281-2107d77c1287', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 17, '2019-09-02 06:11:26', '2019-09-02 06:11:26', NULL),
(40, 'a2e81a60-cd48-11e9-a3bd-cb8ac103ad58', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 17, '2019-09-02 06:12:26', '2019-09-02 06:12:26', NULL),
(41, 'bbc20880-cd48-11e9-b74f-9de1cbda6496', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=5', 'POST', 17, '2019-09-02 06:13:08', '2019-09-02 06:13:08', NULL),
(42, 'bbcd98c0-cd48-11e9-b8da-19f61a15ec94', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=6', 'POST', 17, '2019-09-02 06:13:08', '2019-09-02 06:13:08', NULL),
(43, '26b07540-d228-11e9-8021-c92889cef74c', '127.0.0.1', 'Memperbarui kategori Alat Dapur', 'POST', 1, '2019-09-08 11:02:30', '2019-09-08 11:02:30', NULL),
(44, 'ecce8420-d228-11e9-b91a-a348441e472a', '127.0.0.1', 'Menghapus Kasir asjasjk@scsca.ss', 'DELETE', 1, '2019-09-08 11:08:02', '2019-09-08 11:08:02', NULL),
(45, 'ece06e40-d228-11e9-8248-017cc2aa1f8e', '127.0.0.1', 'Menghapus Kasir salkaslk@mgn.ml', 'DELETE', 1, '2019-09-08 11:08:02', '2019-09-08 11:08:02', NULL),
(46, '3ad3bff0-d2b0-11e9-b269-5fe0e5a096df', '127.0.0.1', 'Membuat kategori Buah-Buahan', 'POST', 1, '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(47, '3adba5a0-d2b0-11e9-abc0-9115bf96813f', '127.0.0.1', 'Membuat kategori Service', 'POST', 1, '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(48, '3aee3040-d2b0-11e9-8dd2-3939ee95417b', '127.0.0.1', 'Membuat kategori Perhiasan', 'POST', 1, '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(49, '3b142f60-d2b0-11e9-a97b-ef58d5d331ab', '127.0.0.1', 'Membuat kategori Mainan Anak', 'POST', 1, '2019-09-09 03:16:35', '2019-09-09 03:16:35', NULL),
(50, '4e5e7240-d2b9-11e9-98b6-abc750787081', '127.0.0.1', 'Memasukan Produk ke Keranjang, cart id = ', 'POST', 20, '2019-09-09 04:21:33', '2019-09-09 04:21:33', NULL),
(51, '7eb5f8a0-d2b9-11e9-acfa-052ea237457f', '127.0.0.1', 'Melakukan Transaksi, id= , cart_id=7', 'POST', 20, '2019-09-09 04:22:54', '2019-09-09 04:22:54', NULL),
(52, '3f6b7380-d2ba-11e9-93cc-191476990d46', '127.0.0.1', 'Menghapus Product Kacamata Anti Radiasi id = 1', 'DELETE', 11, '2019-09-09 04:28:18', '2019-09-09 04:28:18', NULL),
(53, '7dee3e20-d2ba-11e9-9619-7f68119f1d2c', '127.0.0.1', 'Membuat kategori wqeweqw', 'POST', 1, '2019-09-09 04:30:03', '2019-09-09 04:30:03', NULL),
(54, '7e98fb40-d2ba-11e9-8ab1-2f67fde590ba', '127.0.0.1', 'Membuat kategori 12312312', 'POST', 1, '2019-09-09 04:30:04', '2019-09-09 04:30:04', NULL),
(55, '6dd95080-d54d-11e9-8501-55c4190ad5d5', '127.0.0.1', 'Menghapus kategori wqeweqw', 'DELETE', 11, '2019-09-12 11:06:54', '2019-09-12 11:06:54', NULL),
(56, '6e04cde0-d54d-11e9-9f35-fda33caa9f64', '127.0.0.1', 'Menghapus kategori 12312312', 'DELETE', 11, '2019-09-12 11:06:54', '2019-09-12 11:06:54', NULL),
(57, '587ff9e0-d555-11e9-8a55-b1f7d2b2410f', '127.0.0.1', 'Menghapus Product Jacket Hoodie id = 2', 'DELETE', 11, '2019-09-12 12:03:34', '2019-09-12 12:03:34', NULL);

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
(138, '2014_07_28_051935_create_roles_table', 1),
(139, '2014_10_12_000000_create_users_table', 1),
(140, '2014_10_12_100000_create_password_resets_table', 1),
(141, '2017_07_28_064702_create_categories_table', 1),
(142, '2018_07_28_053236_create_stores_table', 1),
(143, '2019_07_28_052532_create_products_table', 1),
(144, '2019_07_28_054155_create_carts_table', 1),
(145, '2019_07_28_055820_create_transactions_table', 1),
(146, '2019_07_28_063256_create_promotions_table', 1),
(147, '2019_07_28_065137_create_visitors_table', 1),
(148, '2019_07_28_065341_create_logs_table', 1),
(149, '2019_07_28_065615_create_configs_table', 1),
(150, '2019_07_28_070934_create_blogs_table', 1),
(151, '2019_07_28_074032_create_wish_lists_table', 1);

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
(1, 'e9b50820-c98b-11e9-b1e1-eb7a0676f287', 'Super Admin', '2019-08-28 12:03:57', '2019-08-28 12:03:57', NULL),
(2, 'e9b50820-c98b-11e9-b1e1-eb7a0676fak7', 'Cashier', '2019-08-27 17:00:00', '2019-08-27 17:00:00', NULL),
(3, 'f22d55a0-793e-11e9-a934-f33693078cak', 'Seller', '2019-08-27 17:00:00', '2019-08-27 17:00:00', NULL),
(4, 'f22d55a0-793e-11e9-a934-f33693asjhas', 'Buyyer', '2019-08-27 17:00:00', '2019-08-27 17:00:00', NULL);

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
(1, '761d4f60-cbfd-11e9-b416-d93b85cf7d67', 'Toko Cahaya', 'toko-cahaya-1567262508', 11, 'jalan raya merdeka, Tokyo', '0821828122', NULL, NULL, '0', '2019-08-31 14:41:48', '2019-08-31 14:41:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
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
(1, 'e9c664e0-c98b-11e9-8941-d5d62eab8407', 'alfy adinata', 'alfy@test.dev', 1, 1, NULL, NULL, '$2y$10$.2zFfHHUPrpFaxi9KqUIDO4taF5fgLQ/.fv0AJL7fAteO5Szgi1oe', NULL, '2019-08-28 12:03:57', '2019-08-28 12:03:57', NULL),
(3, '58a389a0-c98c-11e9-9f46-3122c6b54b7b', 'Kasir 1', 'kasir@gmail.com', 2, 1, '0812221278', NULL, '123123', NULL, '2019-08-28 12:07:03', '2019-08-31 14:31:56', '2019-08-31 14:31:56'),
(4, '4720e350-cbfc-11e9-b451-0d0557b63fe7', 'Privilege', 'alfy@gmailsa.as', 2, 0, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:19', '2019-08-31 14:33:19', NULL),
(5, '47409460-cbfc-11e9-b392-2360707ce0b2', 'Health', 'aassa@saas.cc', 2, 1, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:19', '2019-09-01 06:29:48', NULL),
(6, '474acee0-cbfc-11e9-a4af-1d45775044b0', 'User', 'sjkas@mva.cc', 2, 0, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:19', '2019-08-31 14:33:19', NULL),
(7, '475f23c0-cbfc-11e9-a822-477f97e2c48a', 'a', 'asjasjk@scsca.ss', 2, 0, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:20', '2019-09-08 11:08:02', '2019-09-08 11:08:02'),
(8, '47643600-cbfc-11e9-9424-47a7f335a19b', 'Health', 'asjkkjas@kl.lp', 2, 0, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:20', '2019-08-31 14:33:20', NULL),
(9, '47694b20-cbfc-11e9-8ff6-0f516fe57f94', 'a', 'salkaslk@mgn.ml', 2, 0, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:20', '2019-09-08 11:08:02', '2019-09-08 11:08:02'),
(10, '476e7780-cbfc-11e9-8f9d-b7781da71290', 'XI', 'sakas@lp.com', 2, 1, '0812992828', NULL, '$2y$12$Pz96vhJS0R7ue4UamHwK2ODcjjAvLOyVRn2bqx6a0K3BkMhHLGege', NULL, '2019-08-31 14:33:20', '2019-08-31 14:35:48', NULL),
(11, '43b78040-cbfd-11e9-a466-cd732b05023d', 'Seller A', 'seller@gmail.com', 3, 1, '08212127821', NULL, '$2y$10$MhgR7POg.hEn/MNrlvCU0OJ4WrkWGhevmzzN.J1Qkr7.nURtvdymG', NULL, '2019-08-31 14:40:23', '2019-08-31 14:41:48', NULL),
(12, '366c6320-cc83-11e9-92fb-71fe526e7ae7', 'Angel Carroline', 'angel777@gmail.com', 4, 1, '08788278287', NULL, '$2y$10$/L/b7tk.B1yHDlA7nvJGR..yB5cwZ.feimPyXoEu86hxdXYnjxaV2', NULL, '2019-09-01 06:39:13', '2019-09-01 06:39:13', NULL),
(13, '4df90550-cd28-11e9-ace8-3d3cb067d886', 'tester', 'tester@gm.cc', 4, 1, '082217812677', NULL, '$2y$10$GokNWe.IY9uoCAwP.QFKyOaP6/rcL4R3NceSvLn/ijR9N.9dx7KHm', NULL, '2019-09-02 02:21:00', '2019-09-02 02:21:00', NULL),
(14, 'ecec2180-cd29-11e9-9024-2faa9a6dc5ec', 'tester', 'testeralfy@gm.cc', 4, 1, '082126761', NULL, '$2y$10$LsslfGNzeZfq2vVAmM/0H.CbiWmUo6TLmefPs63wkPlv1Y3FPsdMW', NULL, '2019-09-02 02:32:36', '2019-09-02 02:32:36', NULL),
(15, '1621b910-cd2c-11e9-a45d-9974649205f0', 'arifhan', 'arifhan@gmail.com', 4, 1, '0900980980', NULL, '$2y$10$MZJvOBeN1/XcVKkCWoLr0.jcQrR2wdeBXB74gIBpMijBewmvI9ZOy', NULL, '2019-09-02 02:48:04', '2019-09-02 02:48:04', NULL),
(16, '4b746340-cd48-11e9-8969-05a7018bf63f', 'Delika', 'delika@gm.cc', 4, 1, '08121221', NULL, '$2y$10$RcAr9/vMx/qPNKLO8joOUOQCT3IBDN0Gw.LZgvfMwNrPRzjoZVoG6', NULL, '2019-09-02 06:09:59', '2019-09-02 06:09:59', NULL),
(17, '692d22e0-cd48-11e9-92dc-ef9a93072719', 'Delika p', 'delika@gm.ccc', 4, 1, '08121232213', NULL, '$2y$10$nRkx5BxLgmlT0x1gkUWAp.GA5Pt72jybQ9JE9QIiYPeaMFZdyf8UW', NULL, '2019-09-02 06:10:49', '2019-09-02 06:10:49', NULL),
(19, 'e640c5b0-d2b8-11e9-9820-3df4087a53c8', 'joni', 'joni@gmail.com', 4, 1, '089605588604', NULL, '$2y$10$KPV5lJprIZPtG5bY./b4auCkpbNHKQL06bldvNNcCH6FJZPGb4Nkm', NULL, '2019-09-09 04:18:39', '2019-09-09 04:18:39', NULL),
(20, '064c1c60-d2b9-11e9-9748-01210a934e06', 'tatang', 'tatang@gmail.com', 4, 1, '089512312312', NULL, '$2y$10$zmFLMs1EOMOO1DoqGTIky.mizm6ss8Sv9kH/pa2EnaqaoPQpt89yO', NULL, '2019-09-09 04:19:32', '2019-09-09 04:19:32', NULL);

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
(1, 'f44d4790-c98b-11e9-9149-910cebed3fab', '2019', '08', '28', '127.0.0.1', '2019-08-28 12:04:14', '2019-08-28 12:04:14', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
