-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 04:23 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vcarealltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03a5e6016ff859be26bc34b50b82982a5b2548d3968b21ffd6604bc5ed2266074a536d6fc4150f65', 7, 2, NULL, '[]', 1, '2020-09-08 03:32:34', '2020-09-08 05:04:00', '2021-09-08 09:02:34'),
('085425a758e8c6667ede7b4bb5edee01eb2e7dff6fefc48ded1afcaf30ff8dc4f9fd8a2b0e0ad2a7', 7, 2, NULL, '[]', 1, '2020-09-08 02:57:39', '2020-09-08 05:04:00', '2021-09-08 08:27:39'),
('0ceb65801d21d9c9d5b09fe8462ab15261c0f4e5f283ffe0041c63e217346baf1806d859275bce38', 7, 2, NULL, '[]', 1, '2020-09-08 03:35:41', '2020-09-08 05:04:00', '2021-09-08 09:05:41'),
('136b82954327b6e8256dc1afc43aa1feae75c3d28dc690d1925ef226f5bc5295fd8321e56cf26770', 7, 2, NULL, '[]', 1, '2020-09-08 05:03:47', '2020-09-08 05:04:00', '2021-09-08 10:33:47'),
('237c230a6401b430477559ddc8fcb356fa0027c733ed82bc59df1db5852c8a7e20fe3e827325a215', 4, 2, NULL, '[]', 0, '2020-09-08 00:47:18', '2020-09-08 00:47:18', '2021-09-08 06:17:18'),
('2c74221cf731425183e5dc8b05584be9bc296016be89b14500902499e65d1cd11e3bd774b57c8c70', 7, 2, NULL, '[]', 1, '2020-09-08 03:00:16', '2020-09-08 05:04:00', '2021-09-08 08:30:16'),
('2d45901188e9c1e5558823770147410bce873020d7c86776c91440a2234b9314c44c56171a00bb0e', 7, 2, NULL, '[]', 1, '2020-09-08 05:02:13', '2020-09-08 05:04:00', '2021-09-08 10:32:13'),
('2d7f3c951ecb2f3c15e09751bfdabd11d577608d59e146bf168cfb48524a957a6b985e090e4b95bd', 7, 2, NULL, '[]', 1, '2020-09-08 03:36:37', '2020-09-08 05:04:00', '2021-09-08 09:06:37'),
('2f774cd240783b0d4f98be69c48409ac5e5cc18705cdcc190a652797423e37f3c00259f5338cb432', 7, 2, NULL, '[]', 1, '2020-09-08 02:12:02', '2020-09-08 05:04:00', '2021-09-08 07:42:02'),
('3365aed7117fa79d9df285ed72a7e400c15d007e21bc0baafe2d1e8f67e39a7a41ef14f6652a1502', 4, 2, NULL, '[]', 0, '2020-09-08 00:45:23', '2020-09-08 00:45:23', '2021-09-08 06:15:23'),
('45091156021f11f9b4c6a86dc91c64d7e1be8de311743e10a23e4d4522d29ebf2c3d0bffb37936a2', 10, 2, NULL, '[]', 1, '2020-09-08 05:13:05', '2020-09-08 05:13:11', '2021-09-08 10:43:05'),
('4fce1203c2785b531c126fbfbaec728ab6a8abadbfde35c8127986073e7331caf2d52d368c017297', 7, 2, NULL, '[]', 1, '2020-09-08 03:33:53', '2020-09-08 05:04:00', '2021-09-08 09:03:53'),
('5b83f3e782035604b16877250aca2a4be4bad288f468e24dcf77268f46f1c593d331f482f7685180', 7, 2, NULL, '[]', 1, '2020-09-08 05:02:53', '2020-09-08 05:04:00', '2021-09-08 10:32:53'),
('766188b6514790e0c302197deba0c8153635450cc5eacd9d5a7cf8c5f33ff1f9bf07adca0e5b5ad4', 10, 2, NULL, '[]', 1, '2020-09-08 05:13:04', '2020-09-08 05:13:11', '2021-09-08 10:43:04'),
('916766e23a189c0c69c1e81c63df8a900f2ae4073e516fb7927739af7c29807be21cbc5a0aa8cc3a', 7, 2, NULL, '[]', 1, '2020-09-08 03:33:50', '2020-09-08 05:04:00', '2021-09-08 09:03:50'),
('9795c3ced1e530ce47c6638ba6b0bc411a4a21bdbaacf08473666cff3c54e633ab6e0b5e08778580', 7, 2, NULL, '[]', 1, '2020-09-08 03:33:19', '2020-09-08 05:04:00', '2021-09-08 09:03:19'),
('99e6c8da02cf2e42effb5f395f5933d4424c4083d5db7c344e4783f6e49b6539c108bb89f066adcc', 7, 2, NULL, '[]', 1, '2020-09-08 03:00:01', '2020-09-08 05:04:00', '2021-09-08 08:30:01'),
('ac1ba3e586b80cbd1800efdad003b858ae8d0041689633db9ed1db6edd0ea9e62fe4e16539e53da6', 10, 2, NULL, '[]', 1, '2020-09-08 04:37:51', '2020-09-08 05:13:11', '2021-09-08 10:07:51'),
('c55fcc3f68659e53905e29b52dfd4692fb4b172788f0004cc7a7b4846511f286c0a00db3d32b73b9', 7, 2, NULL, '[]', 1, '2020-09-08 03:58:51', '2020-09-08 05:04:00', '2021-09-08 09:28:51'),
('c5d310278378ab2a10e4d8f13f26ccf393066c04626621667137d86cf8256b815a37727815e3a1a5', 4, 2, NULL, '[]', 0, '2020-09-08 00:46:06', '2020-09-08 00:46:06', '2021-09-08 06:16:06'),
('c988de8c411933a3f4e60449fbc0652f5a37c0fc4a23c16ef921497f42d0bbf5c6aaceeaf1e33304', 7, 2, NULL, '[]', 1, '2020-09-08 02:58:39', '2020-09-08 05:04:00', '2021-09-08 08:28:39'),
('cc06f7225fc40c95b93eb9bdad2545b6176a95ffabd8ca81abd1932346dd9336c07b09a30d410b53', 7, 2, NULL, '[]', 1, '2020-09-08 02:54:17', '2020-09-08 05:04:00', '2021-09-08 08:24:17'),
('cd89757f2326640eb1e15508189b8cd182a607eda010c36e820b106d0fc4457b8704674bb64bf134', 7, 2, NULL, '[]', 1, '2020-09-08 03:01:39', '2020-09-08 05:04:00', '2021-09-08 08:31:39'),
('da086d8adc4f67bf37069d76cb3aab6947cc96c60716aacf9ea732802f31026fd6e94d1b10df6183', 7, 2, NULL, '[]', 1, '2020-09-08 03:30:15', '2020-09-08 05:04:00', '2021-09-08 09:00:15'),
('dff2f978341a03c23e1f7bd1da8fbd43c2ae3946c08062563e7b8d61298e31ae6c7c1a28e366b9b9', 7, 2, NULL, '[]', 1, '2020-09-08 01:19:53', '2020-09-08 05:04:00', '2021-09-08 06:49:53'),
('e7efd016b23ad34cd078f487639288fe0ef043c951f5ae8c1394494e2e1f06b2f40d668838f6149f', 4, 2, NULL, '[]', 0, '2020-09-08 00:48:51', '2020-09-08 00:48:51', '2021-09-08 06:18:51'),
('ee497b5ac0cccfdf97b30e86476a5a2e151c686c53f07516f72375d4fc6bc8f2b70912b41838d522', 4, 2, NULL, '[]', 0, '2020-09-08 00:45:53', '2020-09-08 00:45:53', '2021-09-08 06:15:53'),
('f3daec4066935ec2b0b85a0f2c0fdd213c30ffa6bb6ebd1e213f7245b62d181f47e97ed180f494e1', 7, 2, NULL, '[]', 1, '2020-09-08 02:52:27', '2020-09-08 05:04:00', '2021-09-08 08:22:27'),
('f565fbd10ed41d07561f870395b994083bd07d87ef65a1a25bad2f020606f8cd80a1a8c231faff5d', 7, 2, NULL, '[]', 1, '2020-09-08 03:34:28', '2020-09-08 05:04:00', '2021-09-08 09:04:28'),
('f9484fb5d31bcb90bf48095fac9f1ab4af152691f47f03a02eebb91da5c08921566b836ee9f5afc3', 7, 2, NULL, '[]', 1, '2020-09-08 02:56:58', '2020-09-08 05:04:00', '2021-09-08 08:26:58'),
('f9b308ce1e4ddc9fa7a6ae59309c1737eba2eb42041d98eee1a92b592c27958f00f0db3add6dc62a', 7, 2, NULL, '[]', 1, '2020-09-08 02:59:27', '2020-09-08 05:04:00', '2021-09-08 08:29:27'),
('ffd0dafb94f0eadc7f11d97920e48d578827d7a307554f5762e35d921e0a5445bd2221103d6367d3', 4, 2, NULL, '[]', 0, '2020-09-08 00:47:27', '2020-09-08 00:47:27', '2021-09-08 06:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BW05FFEdKW3uBggOF03Nli0I6DqZwo2jLDcaj3pB', NULL, 'http://localhost', 1, 0, 0, '2020-09-08 00:04:01', '2020-09-08 00:04:01'),
(2, NULL, 'Laravel Password Grant Client', '81ef9i6QzjYrc8BeiNGQB7rDPBdACvhHimmqnE91', 'users', 'http://localhost', 0, 1, 0, '2020-09-08 00:04:03', '2020-09-08 00:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-08 00:04:02', '2020-09-08 00:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('059b0a77c9e07703d4d6d2b5d5f815af6f96ce6a6deaf81794df859cb16a69586b2dcda01d53882a', '2f774cd240783b0d4f98be69c48409ac5e5cc18705cdcc190a652797423e37f3c00259f5338cb432', 0, '2021-09-08 07:42:02'),
('0c101389b59d4bd08081db3f1ffd60781686225be0011daf5da46ded663210eb7e1561b6d775a8a4', '4fce1203c2785b531c126fbfbaec728ab6a8abadbfde35c8127986073e7331caf2d52d368c017297', 0, '2021-09-08 09:03:53'),
('19316dbb4f547940a0e866fa5bf8afbd80ce4f566ac17176ec6c2eb445921b96f429254f49a1fadc', 'da086d8adc4f67bf37069d76cb3aab6947cc96c60716aacf9ea732802f31026fd6e94d1b10df6183', 0, '2021-09-08 09:00:15'),
('195b1a2b42b0ab92039a0184686a0154d3eb13adb1833be5c4dc621b80abf8e3f8c20f4228cf7f32', 'f565fbd10ed41d07561f870395b994083bd07d87ef65a1a25bad2f020606f8cd80a1a8c231faff5d', 0, '2021-09-08 09:04:28'),
('267b0eb3fe7692be039eac9b4e6144ac49426615774c5e96cd7c43c2ce1c863caaeddbee1e3ba109', 'cc06f7225fc40c95b93eb9bdad2545b6176a95ffabd8ca81abd1932346dd9336c07b09a30d410b53', 0, '2021-09-08 08:24:17'),
('2e714599439b89847e39b19d8771a5f3a0f3204621e34712329d60e460ac2c9aedf6c5615b844769', '99e6c8da02cf2e42effb5f395f5933d4424c4083d5db7c344e4783f6e49b6539c108bb89f066adcc', 0, '2021-09-08 08:30:01'),
('312caf1e0b921c9c171b030698db37fa798297145408378daa7307ae43147661e8db9200862ca550', '9795c3ced1e530ce47c6638ba6b0bc411a4a21bdbaacf08473666cff3c54e633ab6e0b5e08778580', 0, '2021-09-08 09:03:19'),
('36971f52c8d02778d376eb4eadbefef59c96a61af81cbbb21e2dd5855fb11ef295ba30a22b2a5a3f', '916766e23a189c0c69c1e81c63df8a900f2ae4073e516fb7927739af7c29807be21cbc5a0aa8cc3a', 0, '2021-09-08 09:03:51'),
('3b6d698d2bca8b83e473de15f605c364e5477acad208407c523e6fe9cbeef5f1976fe73ab3d21c72', 'ac1ba3e586b80cbd1800efdad003b858ae8d0041689633db9ed1db6edd0ea9e62fe4e16539e53da6', 0, '2021-09-08 10:07:51'),
('4baa407ef63dfc1741b6fa72bba0ca34f08121466d647108368c4c6e2393de657de7c97444adb634', '3365aed7117fa79d9df285ed72a7e400c15d007e21bc0baafe2d1e8f67e39a7a41ef14f6652a1502', 0, '2021-09-08 06:15:24'),
('4cc52186b0164d7167a793813db0ad434fb7568457847ec05e49dfe6b7a3952834228adfff63836c', 'e7efd016b23ad34cd078f487639288fe0ef043c951f5ae8c1394494e2e1f06b2f40d668838f6149f', 0, '2021-09-08 06:18:51'),
('5538a5d9c4c3515da0b23bb6f535f62a0c66e548349b6b7c24e875b7502e4f452a9656debeed5c9a', '45091156021f11f9b4c6a86dc91c64d7e1be8de311743e10a23e4d4522d29ebf2c3d0bffb37936a2', 0, '2021-09-08 10:43:05'),
('5cac6bde21fc3ac7abf124dab5fed68e4bb2cfb930b7af5992467fdbc4384fde8725e74ab609fb6a', 'f3daec4066935ec2b0b85a0f2c0fdd213c30ffa6bb6ebd1e213f7245b62d181f47e97ed180f494e1', 0, '2021-09-08 08:22:27'),
('7295d4ef39a0de38fc7b156be6e140cf69d70b9f5565ea26b48d7a69fcd6ee750d2c5fc89bef5cc1', 'dff2f978341a03c23e1f7bd1da8fbd43c2ae3946c08062563e7b8d61298e31ae6c7c1a28e366b9b9', 0, '2021-09-08 06:49:53'),
('79ddd3f4123eeae96e625b65653ea8d61bfee0b026399dd75249ed208ecc4ffd6f23549f35f5b142', '0ceb65801d21d9c9d5b09fe8462ab15261c0f4e5f283ffe0041c63e217346baf1806d859275bce38', 0, '2021-09-08 09:05:43'),
('7fcd0d0a47f256b30e449d7450a45c8dfc0c9048cc6b74d18e00750c088994dcb534a11209666d1f', '2d45901188e9c1e5558823770147410bce873020d7c86776c91440a2234b9314c44c56171a00bb0e', 0, '2021-09-08 10:32:13'),
('81c95739770abd81a1575bb9c29222121d56bc5ff3f0ee01f1d69e3e5d9176b747c7038d57ea82bc', '085425a758e8c6667ede7b4bb5edee01eb2e7dff6fefc48ded1afcaf30ff8dc4f9fd8a2b0e0ad2a7', 0, '2021-09-08 08:27:39'),
('8db29998779fe4ee58fd4e945434d4fce575c739c6a5b32eee86b82570f1cdf48825ce08dd934e6d', 'ffd0dafb94f0eadc7f11d97920e48d578827d7a307554f5762e35d921e0a5445bd2221103d6367d3', 0, '2021-09-08 06:17:27'),
('91b8b7e18489927d13a134a63bd077377b487850f2e567f5200834521dec329f251775912a3c91cb', '2c74221cf731425183e5dc8b05584be9bc296016be89b14500902499e65d1cd11e3bd774b57c8c70', 0, '2021-09-08 08:30:17'),
('a166fa32a54f1efc3d5444761f528908138006c2916344639136747921642dd633b476bcdc558552', 'c5d310278378ab2a10e4d8f13f26ccf393066c04626621667137d86cf8256b815a37727815e3a1a5', 0, '2021-09-08 06:16:07'),
('c648d84b3923da48ab6f862d5123acba8ff22b5a7bff63f0102ae835e9c44a653740ad3c83b97baa', 'c988de8c411933a3f4e60449fbc0652f5a37c0fc4a23c16ef921497f42d0bbf5c6aaceeaf1e33304', 0, '2021-09-08 08:28:39'),
('cbab92bf6b6646f30561f210e7a8c47a7e6da12cd43a5b5d534f2a14435c79d7583372b4da523dbb', '766188b6514790e0c302197deba0c8153635450cc5eacd9d5a7cf8c5f33ff1f9bf07adca0e5b5ad4', 0, '2021-09-08 10:43:04'),
('ccf5fbe8618739f212b0a5c60e4e606ccf9fa1fffd0944c435f849b452d97c3ab278db336221de47', 'cd89757f2326640eb1e15508189b8cd182a607eda010c36e820b106d0fc4457b8704674bb64bf134', 0, '2021-09-08 08:31:39'),
('ccfa18c3a4763c50c6a496461ee95a417a59bccc2867729509ff4ed4cc5cbe43581ac73a354f86bf', '5b83f3e782035604b16877250aca2a4be4bad288f468e24dcf77268f46f1c593d331f482f7685180', 0, '2021-09-08 10:32:54'),
('d61f03e44d80c25a3cfc12a2f62216af58ab44ae40523b5a41fa18151df8ef28440c00b47088ae33', 'ee497b5ac0cccfdf97b30e86476a5a2e151c686c53f07516f72375d4fc6bc8f2b70912b41838d522', 0, '2021-09-08 06:15:53'),
('e1e2f6b799393775bc5f154647c3a6127d624e97cd709e28f1fab0e334e732ceec353c2dc7aaebcf', '237c230a6401b430477559ddc8fcb356fa0027c733ed82bc59df1db5852c8a7e20fe3e827325a215', 0, '2021-09-08 06:17:18'),
('e2ca6c8b233c1de75f1201ce015000f96edd78d264b43c699e197b36eefb0692e5c4cffbb3aa4733', '2d7f3c951ecb2f3c15e09751bfdabd11d577608d59e146bf168cfb48524a957a6b985e090e4b95bd', 0, '2021-09-08 09:06:38'),
('e5c69c10c08c25aec63e921b1f4d6c5289e90526fb179620f92c8bbda7e9d9ef4aaf688b66f4cc34', 'f9b308ce1e4ddc9fa7a6ae59309c1737eba2eb42041d98eee1a92b592c27958f00f0db3add6dc62a', 0, '2021-09-08 08:29:27'),
('eb9c30e72f385101e5eba917ef3f93bc9ff5ff96787f015a5dbd6d6a7aae3cfaa0f4222a41f3d39f', 'f9484fb5d31bcb90bf48095fac9f1ab4af152691f47f03a02eebb91da5c08921566b836ee9f5afc3', 0, '2021-09-08 08:26:58'),
('eedba58152eeb6271c2f2b6685ddc3c82f8a580e33e5000a0d94a0286aa19ed325bf13c94e4f4ed2', '03a5e6016ff859be26bc34b50b82982a5b2548d3968b21ffd6604bc5ed2266074a536d6fc4150f65', 0, '2021-09-08 09:02:34'),
('fc4d3261fbccd2dca081285afcefeb16538ded3d1d02dcc3bfafe7991ba86bb9d136e4066b7d3c69', '136b82954327b6e8256dc1afc43aa1feae75c3d28dc690d1925ef226f5bc5295fd8321e56cf26770', 0, '2021-09-08 10:33:48'),
('fffd39817d2a8c7a80bf00854c5a69d83fa412dbc2b8f6729d5b91e93f99d4ab0886e47171c18e6c', 'c55fcc3f68659e53905e29b52dfd4692fb4b172788f0004cc7a7b4846511f286c0a00db3d32b73b9', 0, '2021-09-08 09:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Harish', 'harishbhatt40@gmail.com', NULL, '$2y$10$FSGzZE/Uf1Jjq/1ac2boV.mkeVOSpBIWrzKcTvdTRhdH6q8GzDH8C', '123', 'http://localhost/vcarealltest/image/1599547785_download.jpeg', NULL, '2020-09-08 01:19:45', '2020-09-08 01:19:45'),
(10, 'harish bhatt', 'tapasv729@gmail.com', NULL, '$2y$10$ThZ5ruOUGOQVUuCQmXXMbOrfCQW0ZkU.OLCvjbXs14lCoCm1OVnCO', 'admin', 'http://localhost/vcarealltest/image/1599559532_paypal_r.jpg', NULL, '2020-09-08 04:35:32', '2020-09-08 04:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `father` varchar(50) DEFAULT NULL,
  `mother` varchar(50) DEFAULT NULL,
  `wife` varchar(50) DEFAULT NULL,
  `child` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `father`, `mother`, `wife`, `child`, `address`, `created_at`, `updated_at`) VALUES
(4, 7, 'testF', 'TestM', 'testW', 'testC', '45, Vijay Colony, Bhopal, MP, India (464646)', '2020-09-08 01:52:39', '2020-09-08 01:52:39'),
(5, 10, 't', 't', 't', 't', 't', '2020-09-08 04:50:28', '2020-09-08 04:51:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
