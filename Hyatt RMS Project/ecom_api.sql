-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2023 at 04:37 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Krishna', '$2y$10$giVIfnWainPJ44gS1lRnSuieD.nrVCf7YUbycjLf/egstsF7i7WhK', '2023-02-17 07:19:27', '2023-02-17 07:19:27'),
(3, '1', '$2y$10$e4mkcsHPbLbVyMj/KJ31M.TDmqThMQE0ZH5QeEv6QiJuj0PzVCbmC', '2023-02-17 07:44:26', '2023-02-17 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `book__a__tables`
--

CREATE TABLE `book__a__tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `nop` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book__a__tables`
--

INSERT INTO `book__a__tables` (`id`, `name`, `email`, `phone`, `date`, `time`, `nop`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Galloway', 'nepo@mailinator.com', 1232132, '2023-05-02', '15:40:00', 2, 'Please decorate the table with flowers and keep some wine ready.', 1, '2023-02-19 05:53:20', '2023-02-19 12:41:15'),
(2, 'Dheeraj', 'dh1@gmail.com', 55335, '2023-08-12', '12:30:15', 2, 'If possible, arrange the table near the balcony.', 4, '2023-02-19 21:07:55', '2023-02-19 21:07:55'),
(3, 'Dheeraj', 'dh1@gmail.com', 23123, '2023-03-14', '12:30:45', 2, 'Decorate it please.', 4, '2023-02-19 23:52:26', '2023-02-19 23:52:26'),
(4, 'Dheeraj', 'dh1@gmail.com', 13981320, '2023-08-12', '12:15:30', 2, 'Please arrange it fast.', 4, '2023-02-20 01:13:29', '2023-02-20 01:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', '2023-02-15 17:10:05', '2023-02-15 17:10:05'),
(2, 'Starters', '2023-02-15 17:10:53', '2023-02-15 17:10:53'),
(3, 'Lunch', '2023-02-15 17:10:53', '2023-02-15 17:10:53'),
(4, 'Drinks & Beverages', '2023-02-15 17:11:18', '2023-02-15 17:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `email`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'Dheeraj', 'dh1@gmail.com', 'Food Review', 'Food was very delicious. Thank you for making our meal so special', '2023-02-19 06:11:18', '2023-02-19 06:11:18'),
(2, 4, 'Dheeraj', 'dh1@gmail.com', 'Event Review', 'The Akash Gupta comedy event was fantastic. Looking forward to the upcoming events.', '2023-02-19 21:06:49', '2023-02-19 21:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_15_045642_create_users_table', 1),
(3, '2023_02_15_102736_create_categories_table', 1),
(4, '2023_02_15_102922_create_products_table', 1),
(5, '2023_02_16_051726_create_user_products_table', 2),
(6, '2023_02_16_073120_create_orders_table', 3),
(7, '2023_02_16_073810_create_order_details_table', 3),
(8, '2023_02_17_122229_create_admins_table', 4),
(9, '2023_02_19_104927_create_contacts_table', 5),
(10, '2023_02_19_104950_create_book__a__tables_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'login_token', 'd0ffc29d8e6e3877777a53381fe165bd8716b2db6e3a0c14b326c9dc429a7c72', '[\"*\"]', NULL, NULL, '2023-02-16 04:57:14', '2023-02-16 04:57:14'),
(2, 'App\\Models\\User', 4, 'login_token', 'e61dc841389f6a667e058fba3dad6ea57f9b7162f0153d39042f3e191fb1b849', '[\"*\"]', NULL, NULL, '2023-02-16 06:43:14', '2023-02-16 06:43:14'),
(3, 'App\\Models\\User', 4, 'login_token', 'a093177bf878aa555254fb6a5e16ed51394ec76e0e2b46c14bb011b8aaa3f336', '[\"*\"]', NULL, NULL, '2023-02-16 06:44:07', '2023-02-16 06:44:07'),
(4, 'App\\Models\\User', 4, 'login_token', 'a2827c0f21a7dcee1009cb1871c38d0e4fb634c57ed990f8f9df94e50daec26a', '[\"*\"]', NULL, NULL, '2023-02-16 06:44:48', '2023-02-16 06:44:48'),
(5, 'App\\Models\\User', 4, 'login_token', 'a08f207b7f60dfef05484ad444556ab5ef69833aa75d8afa60233850b91373c0', '[\"*\"]', NULL, NULL, '2023-02-16 06:45:25', '2023-02-16 06:45:25'),
(6, 'App\\Models\\User', 4, 'login_token', 'ece57bc79648dada627bd363318cc76312ecbc78c77e5995e285bb5cfe718288', '[\"*\"]', NULL, NULL, '2023-02-16 06:45:44', '2023-02-16 06:45:44'),
(7, 'App\\Models\\User', 4, 'login_token', '20ffa3302c97f1872f7e1f56c660b5c6beb55d67e695c5a7ce3032f81a0ed939', '[\"*\"]', NULL, NULL, '2023-02-16 06:45:58', '2023-02-16 06:45:58'),
(8, 'App\\Models\\User', 3, 'login_token', 'e87184bf8bdc1095c189ecba499e33cdaf5419fd5b6a6c46618b139d1f6f612b', '[\"*\"]', NULL, NULL, '2023-02-16 13:14:43', '2023-02-16 13:14:43'),
(9, 'App\\Models\\User', 3, 'login_token', '8a4fc96baa76755e9896569b06458f678127a6bcb529074a80846bdab1692a4f', '[\"*\"]', NULL, NULL, '2023-02-16 13:18:57', '2023-02-16 13:18:57'),
(10, 'App\\Models\\User', 3, 'login_token', 'bfbb6096eae26110dc804016df1579508377dffc33a9d897757820dd515a1c81', '[\"*\"]', NULL, NULL, '2023-02-16 13:22:15', '2023-02-16 13:22:15'),
(11, 'App\\Models\\User', 4, 'login_token', '89ea0807f62afbdedb062d95bb7bad38b3e784bccf2f265725cdcba32ddf06c3', '[\"*\"]', NULL, NULL, '2023-02-16 13:22:33', '2023-02-16 13:22:33'),
(12, 'App\\Models\\User', 3, 'login_token', '86b10b7abf7e9aa16d788b347f114af2830d7927c4b8226134b0a5dd8b64d294', '[\"*\"]', NULL, NULL, '2023-02-16 14:31:27', '2023-02-16 14:31:27'),
(13, 'App\\Models\\User', 3, 'login_token', '3f5ea08362445de5bb726be899e8ef50dd3f48f701999b1f9f75ebe584c0112d', '[\"*\"]', NULL, NULL, '2023-02-16 14:31:58', '2023-02-16 14:31:58'),
(14, 'App\\Models\\User', 4, 'login_token', '37856e5f621c6970130d9364821cb219ba04b16a56ff14b01c912c1b848f58e6', '[\"*\"]', NULL, NULL, '2023-02-16 14:32:06', '2023-02-16 14:32:06'),
(15, 'App\\Models\\User', 3, 'login_token', 'aba3b1e9a8de117db8ae59a77b084495cb6d13cab1742dc695272b2b97199e07', '[\"*\"]', NULL, NULL, '2023-02-18 06:48:27', '2023-02-18 06:48:27'),
(16, 'App\\Models\\User', 3, 'login_token', '461e8b36318051dc28409a5d0f0eb24f91e2e3bdb2b2a5a580d9eac9576e0f70', '[\"*\"]', NULL, NULL, '2023-02-18 06:50:08', '2023-02-18 06:50:08'),
(17, 'App\\Models\\User', 3, 'login_token', 'a66530d6190067e83f09e690859d5bbc8fec5a5f7b17dafc9480a37ae2b9f7ce', '[\"*\"]', NULL, NULL, '2023-02-18 06:58:38', '2023-02-18 06:58:38'),
(18, 'App\\Models\\User', 3, 'login_token', 'eba5aefbde8eee518056d4326085e8bfd3eaffb1b3ee976fbc5e9ff4ab5db02b', '[\"*\"]', NULL, NULL, '2023-02-18 06:59:52', '2023-02-18 06:59:52'),
(19, 'App\\Models\\User', 3, 'login_token', '40b5b901d558d36e63a4aebbd1d4cae97d086e7004b3cf8f9cc4775fa8c27e64', '[\"*\"]', NULL, NULL, '2023-02-18 07:00:21', '2023-02-18 07:00:21'),
(20, 'App\\Models\\User', 3, 'login_token', '621b4d0b5987203a408c4a2122c22dfc88c04443cc0395075d40bf10b142d884', '[\"*\"]', NULL, NULL, '2023-02-18 07:03:12', '2023-02-18 07:03:12'),
(21, 'App\\Models\\User', 4, 'login_token', '551b9c3fab8bb6323c12ef68c0b03b5327cfe16e345b9cffdb64ef7cb51dea1e', '[\"*\"]', NULL, NULL, '2023-02-18 07:54:10', '2023-02-18 07:54:10'),
(22, 'App\\Models\\User', 4, 'login_token', 'f735bb996495173372c6ccefb749c12f4bfbe57ae6404013d5007cedf994a925', '[\"*\"]', NULL, NULL, '2023-02-18 10:30:12', '2023-02-18 10:30:12'),
(23, 'App\\Models\\User', 4, 'login_token', 'dfb518f19aad0727c1851f371c53d57b30aaab00f300d4515abd4c3af5c37ef2', '[\"*\"]', NULL, NULL, '2023-02-18 10:33:00', '2023-02-18 10:33:00'),
(24, 'App\\Models\\User', 4, 'login_token', 'd997006a7a6dfa64397ea3e3163d3bf562d08c97c78d236944ee4eeec0665cd6', '[\"*\"]', NULL, NULL, '2023-02-18 10:49:32', '2023-02-18 10:49:32'),
(25, 'App\\Models\\User', 4, 'login_token', '00faef0dea155304e22c8bc25b0e11dc83de687b096688f05ddcc0fddaaa3b63', '[\"*\"]', NULL, NULL, '2023-02-18 11:05:38', '2023-02-18 11:05:38'),
(26, 'App\\Models\\User', 4, 'login_token', '791c65cd78e62691a657d34896df024d7f92147414b1f2f560cd5e9fb2abb247', '[\"*\"]', NULL, NULL, '2023-02-18 11:23:27', '2023-02-18 11:23:27'),
(27, 'App\\Models\\User', 4, 'login_token', '4f73ce315b74cd0c8f654b769fd906e27072286796bf7512b31ee000989509ba', '[\"*\"]', NULL, NULL, '2023-02-19 05:43:00', '2023-02-19 05:43:00'),
(28, 'App\\Models\\User', 4, 'login_token', '88a2b2e0affc40ebe36e60a69f18681dcb66f33934fe61db5623ea34d6c1d246', '[\"*\"]', NULL, NULL, '2023-02-19 06:08:52', '2023-02-19 06:08:52'),
(29, 'App\\Models\\User', 4, 'login_token', '59a3d3100445b46d591ee2bbbfebbc4ec166e75eda7251bd1206f91b4a60ada5', '[\"*\"]', NULL, NULL, '2023-02-19 07:54:52', '2023-02-19 07:54:52'),
(30, 'App\\Models\\User', 6, 'login_token', '4a7b4fa9820c84c8811d6b7a3d40900a5e1eb57456034353c1081eae80128fca', '[\"*\"]', NULL, NULL, '2023-02-19 07:58:13', '2023-02-19 07:58:13'),
(31, 'App\\Models\\User', 6, 'login_token', 'c66d810f16907fdd0b4c46cdc40a85928b9172e6b54708fb98b2911fc3ade7b0', '[\"*\"]', NULL, NULL, '2023-02-19 08:00:25', '2023-02-19 08:00:25'),
(32, 'App\\Models\\User', 4, 'login_token', 'bfcc0c30cc420f9d6fcfdd5c01687ffa20b703f31c9fa5acbb40ebafe7990db0', '[\"*\"]', NULL, NULL, '2023-02-19 08:00:48', '2023-02-19 08:00:48'),
(33, 'App\\Models\\User', 6, 'login_token', 'f87240e119020dca4fe0b738a3c9d0d74cdaccd2887dcca4b0a154b84c158df2', '[\"*\"]', NULL, NULL, '2023-02-19 08:02:19', '2023-02-19 08:02:19'),
(34, 'App\\Models\\User', 6, 'login_token', 'eeb3f3cf4cf17636cb4ccb097c122e322025ee95ab3ee194bf8a3cc1c6a22d33', '[\"*\"]', NULL, NULL, '2023-02-19 08:02:41', '2023-02-19 08:02:41'),
(35, 'App\\Models\\User', 6, 'login_token', 'bd1a735311df96ab7dfa882ee9b11fd2a3c27b06473dbc8d06a64a7722a8f3c7', '[\"*\"]', NULL, NULL, '2023-02-19 08:02:59', '2023-02-19 08:02:59'),
(36, 'App\\Models\\User', 6, 'login_token', '926501422e4ae83f870e0ce3a1179ce2643f76e1921b61d372d833bbb70c14d2', '[\"*\"]', NULL, NULL, '2023-02-19 08:03:29', '2023-02-19 08:03:29'),
(37, 'App\\Models\\User', 6, 'login_token', '922b142a0e3ec86215f4a59ce48aa63b3cf36589b271780043c753fdcd491e85', '[\"*\"]', NULL, NULL, '2023-02-19 08:05:39', '2023-02-19 08:05:39'),
(38, 'App\\Models\\User', 4, 'login_token', '7221adc31f58c3c0560a56631ef82b73b1e139f0f85b7867ce6ffbacf1e86780', '[\"*\"]', NULL, NULL, '2023-02-19 08:07:05', '2023-02-19 08:07:05'),
(39, 'App\\Models\\User', 4, 'login_token', '413007834771a47ea4aea3ba85995c0eef942f747ce009dbc81e521862333cae', '[\"*\"]', NULL, NULL, '2023-02-19 08:16:43', '2023-02-19 08:16:43'),
(40, 'App\\Models\\User', 4, 'login_token', 'b6e9cb4c8997c7e2dbfea57a822be49f9120447b109885705b3fd28112203ce8', '[\"*\"]', NULL, NULL, '2023-02-19 10:30:27', '2023-02-19 10:30:27'),
(41, 'App\\Models\\User', 6, 'login_token', 'd758f61fe5c6a74a99702642d5b7e0bcaa92d19bde445a993196e019cbc2d00c', '[\"*\"]', NULL, NULL, '2023-02-19 10:31:12', '2023-02-19 10:31:12'),
(42, 'App\\Models\\User', 6, 'login_token', 'b76b49b3d8ad396f6d091b2f9eef59912652a33efb82162bcba3229a12921a64', '[\"*\"]', NULL, NULL, '2023-02-19 10:36:02', '2023-02-19 10:36:02'),
(43, 'App\\Models\\User', 4, 'login_token', '6beebb643d7c4c8f44ac7474333bdfacbf9dcd802f5e148dc170a2cae0d0c455', '[\"*\"]', NULL, NULL, '2023-02-19 10:43:04', '2023-02-19 10:43:04'),
(44, 'App\\Models\\User', 7, 'login_token', 'dd8b05384338e213c8f0e2f3eaed199cea049b69c6efa3df77a28d2170ebb7dc', '[\"*\"]', NULL, NULL, '2023-02-19 12:15:32', '2023-02-19 12:15:32'),
(45, 'App\\Models\\User', 9, 'login_token', '9346e8a4e8423dd47dd0058ffba87c00357b05ca3d20514e3eba83de0aa8e565', '[\"*\"]', NULL, NULL, '2023-02-19 12:18:49', '2023-02-19 12:18:49'),
(46, 'App\\Models\\User', 11, 'login_token', 'af376d7b7fab37d5700da772c5563a6d063aa7867239ef2351fb744686ae85e7', '[\"*\"]', NULL, NULL, '2023-02-19 12:26:22', '2023-02-19 12:26:22'),
(47, 'App\\Models\\User', 11, 'login_token', '531ee5beac339fd5ec1e055c49d4c478b77ea4c68518a13dded23812e443030a', '[\"*\"]', NULL, NULL, '2023-02-19 12:34:41', '2023-02-19 12:34:41'),
(48, 'App\\Models\\User', 6, 'login_token', 'e4647413aae8f9b378c3d3a7742eab01d7a966193ae1e7e91fdf6d834b3480b9', '[\"*\"]', NULL, NULL, '2023-02-19 12:40:40', '2023-02-19 12:40:40'),
(49, 'App\\Models\\User', 4, 'login_token', '863efd6a1ed552edae275a931722d6bd78a369a9117ba39a32508f17f4d90223', '[\"*\"]', NULL, NULL, '2023-02-19 12:41:33', '2023-02-19 12:41:33'),
(50, 'App\\Models\\User', 4, 'login_token', '2b16e8fa55ae15b1a724b3d3a3972a9d6723b7e60807a34191f79d348493e520', '[\"*\"]', NULL, NULL, '2023-02-19 21:06:37', '2023-02-19 21:06:37'),
(51, 'App\\Models\\User', 4, 'login_token', 'a101c37ac3b7a95397806d094ae507914df17b08f589c3cb14068b1bdac7b152', '[\"*\"]', NULL, NULL, '2023-02-19 21:09:18', '2023-02-19 21:09:18'),
(52, 'App\\Models\\User', 6, 'login_token', 'e6f856c65c229e7e3a5fd3ec1ca26e47edefb987c082e1a8514cd4ee78789d2d', '[\"*\"]', NULL, NULL, '2023-02-19 22:34:03', '2023-02-19 22:34:03'),
(53, 'App\\Models\\User', 4, 'login_token', '962cc174349f5a0bbceb9e9ffe2c5c72cce97f62fb1155d2cf68825a9024a37a', '[\"*\"]', NULL, NULL, '2023-02-19 22:35:40', '2023-02-19 22:35:40'),
(54, 'App\\Models\\User', 6, 'login_token', '71a07a31e7018210bf879381659beae660fefe5f4298e8b6479e474004d29921', '[\"*\"]', NULL, NULL, '2023-02-19 22:36:03', '2023-02-19 22:36:03'),
(55, 'App\\Models\\User', 4, 'login_token', '0896542def62180d92b7e0692ca9633c65542b60bbbff62e2487148d375c6bb2', '[\"*\"]', NULL, NULL, '2023-02-19 22:36:23', '2023-02-19 22:36:23'),
(56, 'App\\Models\\User', 4, 'login_token', 'db32ab52efaf6f7016b58a5b08852830936aff0a1016c617b402a26083705fef', '[\"*\"]', NULL, NULL, '2023-02-19 23:49:09', '2023-02-19 23:49:09'),
(57, 'App\\Models\\User', 4, 'login_token', '8742488de5ccc8a44db50b47a7785453b1ccf81f3db0dd9289ee74466bbf7341', '[\"*\"]', '2023-02-19 23:52:26', NULL, '2023-02-19 23:50:42', '2023-02-19 23:52:26'),
(58, 'App\\Models\\User', 6, 'login_token', '13970988764b1453e08be3a6966b6ac56fac2e5b7b1e988a9be0c68789d3d2a2', '[\"*\"]', '2023-02-20 00:01:08', NULL, '2023-02-19 23:59:46', '2023-02-20 00:01:08'),
(59, 'App\\Models\\User', 6, 'login_token', '39722811184bc1b54cdf49025b1768a95389b95fc7aa62d45df6e60c2e2d1cdb', '[\"*\"]', '2023-02-20 00:09:07', NULL, '2023-02-20 00:01:30', '2023-02-20 00:09:07'),
(60, 'App\\Models\\User', 4, 'login_token', '5da3c3986bd2c3130b1bebd036cfe530f8345e0e2f46ee4935c828e8e20e9c54', '[\"*\"]', NULL, NULL, '2023-02-20 00:09:30', '2023-02-20 00:09:30'),
(61, 'App\\Models\\User', 4, 'login_token', 'b8c2b0c16ec262961d49117ae6fcdd52e3386e99d3e21a9682180888ee1d24cc', '[\"*\"]', '2023-02-20 00:11:07', NULL, '2023-02-20 00:10:01', '2023-02-20 00:11:07'),
(62, 'App\\Models\\User', 4, 'login_token', 'f78be4940e4ec7830fb6ddf9cc35be7a43ca5f4c73f767de90fa8a32f29f5dd8', '[\"*\"]', '2023-02-20 00:11:58', NULL, '2023-02-20 00:11:21', '2023-02-20 00:11:58'),
(63, 'App\\Models\\User', 4, 'login_token', '98cd67adf74203923af1d4f0fa781db6d696a04f793bddb51dc764d0cce524c0', '[\"*\"]', '2023-02-20 00:13:47', NULL, '2023-02-20 00:12:09', '2023-02-20 00:13:47'),
(64, 'App\\Models\\User', 4, 'login_token', '684d7aee4cb79de1bc405d5a8105b7e92fc1acca314d148c8be82e1e2d6ecc5e', '[\"*\"]', NULL, NULL, '2023-02-20 00:14:08', '2023-02-20 00:14:08'),
(65, 'App\\Models\\User', 4, 'login_token', 'a4f7546fafde263d03723720f9b38d7b2061fb742b81093e09c70df5832fcf11', '[\"*\"]', '2023-02-20 00:17:53', NULL, '2023-02-20 00:16:21', '2023-02-20 00:17:53'),
(66, 'App\\Models\\User', 4, 'login_token', 'aa1024c8d5e980aac852b1eb3aa48a1a5feb7c28fc06ec0aa99abdc94b468f3c', '[\"*\"]', NULL, NULL, '2023-02-20 00:18:04', '2023-02-20 00:18:04'),
(67, 'App\\Models\\User', 4, 'login_token', '4086273006354b0c4d59c5bc864f5972f237faf469dc41f1d32075cb2c0d1fb9', '[\"*\"]', '2023-02-20 00:23:32', NULL, '2023-02-20 00:20:18', '2023-02-20 00:23:32'),
(68, 'App\\Models\\User', 4, 'login_token', '25595566100a345567e8f2bcdb7153faf36b23c5bc4a82031f805e9b023b4714', '[\"*\"]', '2023-02-20 00:24:01', NULL, '2023-02-20 00:23:42', '2023-02-20 00:24:01'),
(69, 'App\\Models\\User', 6, 'login_token', '878ee7217dbd378f6efbc1cc7fd7e9cb5c3bf425900f8ba5537e677cedb85d04', '[\"*\"]', '2023-02-20 00:26:07', NULL, '2023-02-20 00:25:36', '2023-02-20 00:26:07'),
(70, 'App\\Models\\User', 6, 'login_token', '1a6a2aed8184508a2ca8cb1815a6b88a021d7ca45372ffd3e203b36d4e10a6ee', '[\"*\"]', '2023-02-20 00:30:04', NULL, '2023-02-20 00:30:04', '2023-02-20 00:30:04'),
(71, 'App\\Models\\User', 6, 'login_token', '8a59975c2ec8f79a4fe9058ee43d345c12739870185b9983cdd4bf97c2bfa41c', '[\"*\"]', '2023-02-20 00:36:29', NULL, '2023-02-20 00:31:16', '2023-02-20 00:36:29'),
(72, 'App\\Models\\User', 6, 'login_token', 'd0118cc4d5627978382ec0598c53925ddd934abd252ff597694be518fc9dbca4', '[\"*\"]', '2023-02-20 00:38:23', NULL, '2023-02-20 00:38:23', '2023-02-20 00:38:23'),
(73, 'App\\Models\\User', 4, 'login_token', '641ce11e9227d03ae2bbca4c7b02ddb18e2c118c37d157de6da7c19194cafcbd', '[\"*\"]', '2023-02-20 00:38:58', NULL, '2023-02-20 00:38:54', '2023-02-20 00:38:58'),
(74, 'App\\Models\\User', 6, 'login_token', '7afbbcab9440872e4b2cd0cef970ed36df4690af0c25ab9a8db912cac71fda83', '[\"*\"]', '2023-02-20 00:39:12', NULL, '2023-02-20 00:39:12', '2023-02-20 00:39:12'),
(75, 'App\\Models\\User', 6, 'login_token', '4fa062e10123b9a6053d96a0740a6e8728e387a82820b3b329a898f3035667b2', '[\"*\"]', '2023-02-20 00:41:34', NULL, '2023-02-20 00:41:34', '2023-02-20 00:41:34'),
(76, 'App\\Models\\User', 4, 'login_token', '0c98f625417de1f030fd7f247b6673a780ca18d55c7452a205d5325743b9139b', '[\"*\"]', '2023-02-20 01:08:26', NULL, '2023-02-20 00:50:13', '2023-02-20 01:08:26'),
(77, 'App\\Models\\User', 4, 'login_token', '7ce6c502c098ee5526c5fb9c79cb032c0033786df1ab6b11c129dbc23c0ab337', '[\"*\"]', '2023-02-20 01:13:40', NULL, '2023-02-20 01:12:56', '2023-02-20 01:13:40'),
(78, 'App\\Models\\User', 6, 'login_token', '019e2efbad943349dca57231014f66ef7c64ed3a942798cd0d11b5ba5733d1cf', '[\"*\"]', '2023-02-20 01:30:57', NULL, '2023-02-20 01:30:57', '2023-02-20 01:30:57'),
(79, 'App\\Models\\User', 4, 'login_token', 'd62d6aba8d5f85727ea72c969f0b5a3e9f3d10747fcbf09d3fd1760e893b8bad', '[\"*\"]', '2023-02-20 02:37:01', NULL, '2023-02-20 02:36:30', '2023-02-20 02:37:01'),
(80, 'App\\Models\\User', 4, 'login_token', 'b7924d7e4a086dbcb243cf40cc1802a2fdb1beb74acc43d4f5a6a0ff93595e5b', '[\"*\"]', '2023-02-20 03:14:37', NULL, '2023-02-20 03:14:37', '2023-02-20 03:14:37'),
(81, 'App\\Models\\User', 4, 'login_token', '7b5685056b2e16ad91917e0a7791a03fc70b07aa9417cf4260b0c7ec760c6ab3', '[\"*\"]', '2023-02-20 04:19:14', NULL, '2023-02-20 04:16:00', '2023-02-20 04:19:14'),
(82, 'App\\Models\\User', 4, 'login_token', '307f6411da06b40adec17aada475192956b81f90f4fb975224d83d87d1b5ffcf', '[\"*\"]', '2023-02-20 06:42:17', NULL, '2023-02-20 06:36:48', '2023-02-20 06:42:17'),
(83, 'App\\Models\\User', 6, 'login_token', 'c2df0b0ad3e6897e6f90311cc50c147583584ef889ca81a48c40c69369bc5f70', '[\"*\"]', '2023-02-20 06:43:00', NULL, '2023-02-20 06:43:00', '2023-02-20 06:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `cid`, `created_at`, `updated_at`) VALUES
(1, 'Cheese Arepas', 1280, 'assets/img/menu/breakfast-item-1.png', 1, '2023-02-15 08:59:16', '2023-02-19 12:40:56'),
(2, 'Waffles', 1360, 'assets/img/menu/breakfast-item-2.png', 1, '2023-02-15 08:59:16', '2023-02-20 00:26:07'),
(3, 'French Toast', 1200, 'assets/img/menu/breakfast-item-3.png', 1, '2023-02-15 09:01:23', '2023-02-15 09:01:23'),
(4, 'Tomato Pasta', 1295, 'assets/img/menu/breakfast-item-4.png', 1, '2023-02-15 09:01:23', '2023-02-15 09:01:23'),
(5, 'Sandwiches', 1425, 'assets/img/menu/breakfast-item-5.png', 1, '2023-02-15 09:02:58', '2023-02-15 09:02:58'),
(6, 'Strawberry Cereal', 995, 'assets/img/menu/breakfast-item-6.png', 1, '2023-02-15 09:02:58', '2023-02-15 09:02:58'),
(7, 'Gobi Manchurian', 750, 'assets/img/menu/menu-item-1.png', 2, '2023-02-15 09:04:44', '2023-02-15 09:04:44'),
(8, 'Chilli Panner', 750, 'assets/img/menu/menu-item-2.png', 2, '2023-02-15 09:04:44', '2023-02-15 09:04:44'),
(9, 'Vegetable Soup', 625, 'assets/img/menu/menu-item-3.png', 2, '2023-02-15 09:07:16', '2023-02-15 09:07:16'),
(10, 'Greek Salad', 580, 'assets/img/menu/menu-item-4.png', 2, '2023-02-15 09:07:16', '2023-02-15 09:07:16'),
(11, 'Button Mushroom', 790, 'assets/img/menu/menu-item-5-r.png', 2, '2023-02-15 09:07:16', '2023-02-15 09:07:16'),
(12, 'Vegetable Salad', 680, 'assets/img/menu/menu-item-6.png', 2, '2023-02-15 09:07:16', '2023-02-15 09:07:16'),
(13, 'Dum Subz Biryani', 2270, 'assets/img/menu/lunch-item-1.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(14, 'Indo Chinese Noodles', 1895, 'assets/img/menu/lunch-item-2.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(15, 'Fried Rice', 2100, 'assets/img/menu/lunch-item-3.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(16, 'Panner Pizza', 2695, 'assets/img/menu/lunch-item-4.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(17, 'Great Indian Thali', 3200, 'assets/img/menu/lunch-item-5.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(18, 'Panner Butter Masala & Roti', 1985, 'assets/img/menu/lunch-item-6.png', 3, '2023-02-15 09:10:08', '2023-02-15 09:10:08'),
(19, 'Yellow Bird Cocktail', 785, 'assets/img/menu/drink-item-1.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59'),
(20, 'Blue Lagoon Cocktail', 1235, 'assets/img/menu/drink-item-2.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59'),
(21, 'Mojito', 945, 'assets/img/menu/drink-item-3.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59'),
(22, 'Coke', 850, 'assets/img/menu/drink-item-4.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59'),
(23, 'Orange Juice', 745, 'assets/img/menu/drink-item-5.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59'),
(24, 'Dry Martini', 1075, 'assets/img/menu/drink-item-6.png', 4, '2023-02-15 09:14:59', '2023-02-15 09:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Galloway', 'nepo@mailinator.com', 123456789, '$2y$10$G8OumREdMxMsD5kdgDsNLOlZY3.DB..gqWws9vHpmp8.tgMsmpyYu', 0, '2023-02-15 22:41:44', '2023-02-15 22:41:44'),
(2, 'Chanda Pugh', 'byxem@mailinator.com', 16573762, '$2y$10$7kiuZnmNWXwpzxOacWuhmu7xwN9yitqpQNBS3FyH4ttNT2SYFdlQu', 0, '2023-02-15 22:49:50', '2023-02-15 22:49:50'),
(3, 'Dheeraj', 'dh@gmail.com', 1280331, '$2y$10$HmQhii.s7M13vsvUsQ3O0.cNdO3JFSxC5yY9ETuUXfYArCQgtIzjq', 0, '2023-02-16 04:56:47', '2023-02-16 04:56:47'),
(4, 'Dheeraj1', 'dh1@gmail.com', 1321414, '$2y$10$0h8C9f0iO.WW/9pbzEZfdOCXzW5M2O8LhmUSm1sgRIT78X5jPTsu2', 0, '2023-02-16 06:43:00', '2023-02-16 06:43:00'),
(6, 'sam', 'sm@gmail.com', 4132133, '$2y$10$ze1lYm3OvLV6oOiKjDMG0uOg8jwSatsMe64iIKIM1R8xxNQ8hndDe', 1, '2023-02-19 07:57:30', '2023-02-19 07:57:30'),
(11, 'Raju', 'rj@gmail.com', 21321321, '$2y$10$e/tXUc924xpfCZEKkEc5iO9gd5VDINcTtIZ/WpF10I7.fXAVJrxiK', 0, '2023-02-19 12:26:06', '2023-02-19 12:26:06'),
(12, 'Ryder Hobbs', 'taqupa@mailinator.com', 45, '$2y$10$LY3cJG1uUgnSF9GbgOPBq.ofag0/pkQHjgfXnud7Pto5NV3tDuIDK', 0, '2023-02-19 21:06:23', '2023-02-19 21:06:23'),
(13, 'Prakul', 'hs805807@gmail.com', 9026906673, '$2y$10$TxsPfWBOuQfFY3b6F7Bn8.fkZs5WSVRAbig9YHKBglfl/Fnqyniki', 0, '2023-02-20 06:35:09', '2023-02-20 06:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `amount` int(11) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `user_id`, `product_id`, `quantity`, `amount`, `order_status`, `created_at`, `updated_at`) VALUES
(84, 4, 18, 2, 3970, 1, '2023-02-18 23:18:56', '2023-02-19 05:09:42'),
(87, 4, 1, 3, 3840, 1, '2023-02-19 08:16:48', '2023-02-19 08:16:57'),
(88, 4, 6, 3, 2985, 1, '2023-02-19 08:16:50', '2023-02-20 01:08:21'),
(106, 4, 3, 1, 1200, 1, '2023-02-20 01:00:23', '2023-02-20 01:08:21'),
(108, 4, 14, 1, 1895, 1, '2023-02-20 02:36:46', '2023-02-20 02:36:56'),
(110, 4, 3, 1, 1200, 1, '2023-02-20 04:18:06', '2023-02-20 04:19:07'),
(111, 4, 1, 1, 1280, 1, '2023-02-20 06:37:01', '2023-02-20 06:37:12'),
(112, 4, 2, 1, 1360, 1, '2023-02-20 06:37:06', '2023-02-20 06:37:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `book__a__tables`
--
ALTER TABLE `book__a__tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book__a__tables_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cid_foreign` (`cid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_contact_unique` (`contact`);

--
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_products_user_id_foreign` (`user_id`),
  ADD KEY `user_products_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book__a__tables`
--
ALTER TABLE `book__a__tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_products`
--
ALTER TABLE `user_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book__a__tables`
--
ALTER TABLE `book__a__tables`
  ADD CONSTRAINT `book__a__tables_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cid_foreign` FOREIGN KEY (`cid`) REFERENCES `categories` (`id`);

--
-- Constraints for table `user_products`
--
ALTER TABLE `user_products`
  ADD CONSTRAINT `user_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
