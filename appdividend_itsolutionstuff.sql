-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 11:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appdividend_itsolutionstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'pro 1', 'detail 1', '2023-01-29 23:11:22', '2023-01-29 23:11:22'),
(2, 'pro 2 update', 'detail 2 update', '2023-01-29 23:18:37', '2023-01-29 23:18:37'),
(3, 'pro2', 'detail2', '2023-01-29 23:30:36', '2023-01-29 23:30:36'),
(4, 'prou2', 'detaild2', '2023-01-29 23:31:33', '2023-01-29 23:31:33'),
(5, 'prou2', 'detaild2', '2023-01-29 23:45:49', '2023-01-29 23:45:49'),
(6, 'prou2', 'detaild2', '2023-01-29 23:47:25', '2023-01-29 23:47:25'),
(7, 'pro', 'detail', '2023-01-29 23:55:22', '2023-01-29 23:55:22'),
(8, 'pro u', 'detail u', '2023-01-30 22:07:31', '2023-01-30 22:07:31');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_18_084412_create_posts_table', 1),
(7, '2023_01_29_055336_create_products_table', 3),
(8, '2023_01_29_055037_create_permission_tables', 4),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(12, '2016_06_01_000004_create_oauth_clients_table', 5),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(14, '2023_01_30_043615_create_materials_table', 6),
(15, '2023_01_30_091611_create_blogs_itsolutionstuff_table', 7),
(16, '2018_08_08_100000_create_telescope_entries_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('110c982ecb39eb41c034e31f11a55c4f192312f558440496d2e9fc5cbd42195604855c22854eddfe', 1, 1, 'MyApp', '[]', 0, '2023-01-29 22:22:03', '2023-01-29 22:22:03', '2024-01-30 04:22:03'),
('bee73edc30c77ba8ad0bb115151a5523109a9126efa879f648a8bcf337d8a23d84a7934553ea31f9', 6, 1, 'MyApp', '[]', 0, '2023-01-29 22:15:28', '2023-01-29 22:15:28', '2024-01-30 04:15:28'),
('f2f305cbb042c0602172625687a3ac84ffcb3a136e4c6966913c45d3d622ab87d49e395b60a62b65', 6, 1, 'MyApp', '[]', 0, '2023-01-29 22:20:49', '2023-01-29 22:20:49', '2024-01-30 04:20:49'),
('fbc873e14dfdedefd35b269d9c5de07f8fab0da39bf27409955f50b7b075b5fd2f61478e9717d320', 1, 1, 'MyApp', '[]', 0, '2023-01-30 21:59:10', '2023-01-30 21:59:10', '2024-01-31 03:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'TmQ9rmxXgcsTV3bt0Vo3WcXmaeSTfu44JXIcPVeX', NULL, 'http://localhost', 1, 0, 0, '2023-01-29 04:35:04', '2023-01-29 04:35:04'),
(2, NULL, 'Laravel Password Grant Client', 'We8dU0vTh4TeA6HZq0LL5V0VWV22xMoTWJYiVJ2o', 'users', 'http://localhost', 0, 1, 0, '2023-01-29 04:35:04', '2023-01-29 04:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-29 04:35:04', '2023-01-29 04:35:04');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-29 01:55:25', '2023-01-29 01:55:25'),
(2, 'role-create', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(3, 'role-edit', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(4, 'role-delete', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(5, 'product-list', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(6, 'product-create', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(7, 'product-edit', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26'),
(8, 'product-delete', 'web', '2023-01-29 01:55:26', '2023-01-29 01:55:26');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `moderated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `status`, `moderated_at`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 'English Letter', 1, '2023-01-18 10:29:53', '2023-01-18 04:05:57', '2023-01-18 04:29:53'),
(2, 'Book', 'its our best friends', 3, '2023-01-18 10:30:13', '2023-01-18 04:07:12', '2023-01-18 04:30:13'),
(3, 'Laravel', 'PHP Framework', 0, NULL, '2023-01-18 04:42:53', '2023-01-18 04:42:53'),
(4, 'zxc', 'zzzzzzzzzzzzzzzzzzzzzzzz', 1, '2023-01-30 09:56:34', '2023-01-30 03:56:06', '2023-01-30 03:56:34'),
(5, 'A', 'AAAAAAAAAAAAAAAAAAAAAAAAAAA', 0, NULL, '2023-01-30 03:57:07', '2023-01-30 03:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'Real Me 25', '2023-01-29 03:31:41', '2023-01-29 03:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-29 01:57:04', '2023-01-29 01:57:04'),
(2, 'Umar', 'web', '2023-01-29 03:29:44', '2023-01-29 03:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '985a93a7-09c9-459d-923f-ca8dff965a1c', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'appdividend\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"89.58\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:56'),
(2, '985a93a7-0c55-4117-9054-38c58f70e9b2', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'appdividend\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.61\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:56'),
(3, '985a93a7-1ff8-4cfd-9f46-d460dc6854cd', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"46.23\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:56'),
(4, '985a93a7-297d-49fd-b4bf-b73f5fb644c8', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.06\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:56'),
(5, '985a93a7-3ebf-4916-a5ad-4acabfafcef2', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"39.93\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:56'),
(6, '985a93a7-d017-4a09-acbd-5e058874891c', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"366.71\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(7, '985a93a8-2867-4fad-8ae3-5ac810b6198e', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"225.20\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(8, '985a93a8-4b2a-4f76-8c72-350de7f8c32b', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"88.38\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(9, '985a93a8-6faf-47be-b627-3269f8a329d9', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"93.00\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(10, '985a93a8-8a62-4e60-9b1d-796825a79e95', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"67.65\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(11, '985a93a8-c414-4fd5-87c2-b4ad14999a03', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"147.30\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:57'),
(12, '985a93a9-0baa-4b29-99fb-3c6340fae513', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"182.47\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"5ed47d3cfcd3051674e3cb7b613f0fba\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:58'),
(13, '985a93a9-7b2e-421e-b7f6-1bb8d4e8ec19', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_entry_uuid_tag_index`(`entry_uuid`, `tag`)\",\"time\":\"284.98\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"d77cdf5585b51f60954d40e76786e20f\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:58'),
(14, '985a93a9-a7ce-4777-8cbb-2e764b3b803f', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"113.78\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:58'),
(15, '985a93aa-7f1c-4dd9-843a-964846c9040e', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"550.55\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:59'),
(16, '985a93aa-c518-4a40-b2a8-ea51305b017f', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"177.98\",\"slow\":true,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"8cddf327ba1b3bd52637b409200a4c1f\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:59'),
(17, '985a93aa-cdda-4b09-8b03-df795a0cfba4', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 8)\",\"time\":\"20.82\",\"slow\":false,\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:59'),
(18, '985a93aa-ce51-40ac-9797-44532c951025', '985a93aa-cebb-4316-b31a-cd32e16cf2e1', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"QSPA14\"}', '2023-01-31 06:51:59'),
(19, '985ab43e-da47-43a7-a03f-bfcc439b951a', '985ab43f-6cf5-48a1-883c-92e66efec448', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"QSPA14\"}', '2023-01-31 08:23:04'),
(20, '985ab6b3-587a-4001-86a6-1db2f8852605', '985ab6b4-9003-4c19-80ce-79f7a175b9da', '7106395cc7d1df971cbec24ae601f8ce', 1, 'exception', '{\"class\":\"Illuminate\\\\Contracts\\\\Container\\\\BindingResolutionException\",\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":879,\"message\":\"Target class [HomeController] does not exist.\",\"context\":null,\"trace\":[{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":758},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Application.php\",\"line\":851},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":694},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Application.php\",\"line\":836},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":276},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":1080},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":1023},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":734},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":714},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":698},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":662},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":651},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ConvertEmptyStringsToNull.php\",\"line\":31},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TrimStrings.php\",\"line\":40},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize.php\",\"line\":27},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\PreventRequestsDuringMaintenance.php\",\"line\":86},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\fruitcake\\\\laravel-cors\\\\src\\\\HandleCors.php\",\"line\":38},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Http\\\\Middleware\\\\TrustProxies.php\",\"line\":39},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":142},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":111},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\public\\\\index.php\",\"line\":52},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\server.php\",\"line\":21}],\"line_preview\":{\"870\":\"        \\/\\/ hand back the results of the functions, which allows functions to be\",\"871\":\"        \\/\\/ used as resolvers for more fine-tuned resolution of these objects.\",\"872\":\"        if ($concrete instanceof Closure) {\",\"873\":\"            return $concrete($this, $this->getLastParameterOverride());\",\"874\":\"        }\",\"875\":\"\",\"876\":\"        try {\",\"877\":\"            $reflector = new ReflectionClass($concrete);\",\"878\":\"        } catch (ReflectionException $e) {\",\"879\":\"            throw new BindingResolutionException(\\\"Target class [$concrete] does not exist.\\\", 0, $e);\",\"880\":\"        }\",\"881\":\"\",\"882\":\"        \\/\\/ If the type is not instantiable, the developer is attempting to resolve\",\"883\":\"        \\/\\/ an abstract type such as an Interface or Abstract Class and there is\",\"884\":\"        \\/\\/ no binding registered for the abstractions so we need to bail out.\",\"885\":\"        if (! $reflector->isInstantiable()) {\",\"886\":\"            return $this->notInstantiable($concrete);\",\"887\":\"        }\",\"888\":\"\",\"889\":\"        $this->buildStack[] = $concrete;\"},\"hostname\":\"QSPA14\",\"occurrences\":1}', '2023-01-31 08:29:56'),
(21, '985ab6b4-8ed2-4cc1-b529-a620bccbe599', '985ab6b4-9003-4c19-80ce-79f7a175b9da', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/success\",\"method\":\"GET\",\"controller_action\":\"HomeController@myNotification\",\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlY1aVAzQTVGWnNTdVFBd2NLSmkzZFE9PSIsInZhbHVlIjoiYmViM0c2bitXbm5UNVc2Rm13ZjBudUI2K3QyRUowbnAvQy9Oc3ZUR2xxSlVDTzloOERnN2M4dUJkZlZUbGRNc0V6SGdRaWVUVU1mSldHYkFUaDJrZkRIU1phUEcybEdUbUQwTUIxcEJGRm43bEhBZENFeDkyY295YjlTRDViaFIiLCJtYWMiOiI5NDQxNDM0ODQzYzA4YTA5NTFhYjdjMWJlOWQ3YjBiNWQzYTk4Y2MzNzQzNjQwN2RlNmJkZjY4NjkxZDIwN2VhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImFQUWVvOEl0akZZY2RxS3RRaU0wV3c9PSIsInZhbHVlIjoibVZua1BpaTR1WHVsL3VFdDRNNDAweXBBRTJOSDhSdVNaVnFEajgvUVRiMmJPbU01Nm9PVmR0Q09MaEN1M0pTTy9xZlFadEZlUm5COTJETkN6S0Q1OTN6L2Z2cGlTWWt1emhoR0x3UzlVcVRQajg0QlRtNjdnNFphNE5iV1RZRnAiLCJtYWMiOiJhNDllOWZkNzAxMGM5OTJkMzE5NDE1ZDE2NjZjZDBjNmFiMzc5Njc1ODIzOTg4NjhhYzkyYTZmOGM5YjA5MjQyIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":500,\"response\":\"HTML Response\",\"duration\":1116,\"memory\":22,\"hostname\":\"QSPA14\"}', '2023-01-31 08:29:57'),
(22, '985ab71d-21e0-49c2-a72b-398e59ff84b1', '985ab71d-72bc-4e75-b65a-f390e8e1c9e7', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:06'),
(23, '985ab71d-4e63-4526-b949-b5210633e980', '985ab71d-72bc-4e75-b65a-f390e8e1c9e7', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:06'),
(24, '985ab71d-7239-439a-9490-e3212d004dc7', '985ab71d-72bc-4e75-b65a-f390e8e1c9e7', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/success\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlY1aVAzQTVGWnNTdVFBd2NLSmkzZFE9PSIsInZhbHVlIjoiYmViM0c2bitXbm5UNVc2Rm13ZjBudUI2K3QyRUowbnAvQy9Oc3ZUR2xxSlVDTzloOERnN2M4dUJkZlZUbGRNc0V6SGdRaWVUVU1mSldHYkFUaDJrZkRIU1phUEcybEdUbUQwTUIxcEJGRm43bEhBZENFeDkyY295YjlTRDViaFIiLCJtYWMiOiI5NDQxNDM0ODQzYzA4YTA5NTFhYjdjMWJlOWQ3YjBiNWQzYTk4Y2MzNzQzNjQwN2RlNmJkZjY4NjkxZDIwN2VhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImFQUWVvOEl0akZZY2RxS3RRaU0wV3c9PSIsInZhbHVlIjoibVZua1BpaTR1WHVsL3VFdDRNNDAweXBBRTJOSDhSdVNaVnFEajgvUVRiMmJPbU01Nm9PVmR0Q09MaEN1M0pTTy9xZlFadEZlUm5COTJETkN6S0Q1OTN6L2Z2cGlTWWt1emhoR0x3UzlVcVRQajg0QlRtNjdnNFphNE5iV1RZRnAiLCJtYWMiOiJhNDllOWZkNzAxMGM5OTJkMzE5NDE1ZDE2NjZjZDBjNmFiMzc5Njc1ODIzOTg4NjhhYzkyYTZmOGM5YjA5MjQyIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/success\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.icon\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":3500,\"text\":\"Sweet Alert with success.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"Welcome to ItSolutionStuff.com\",\"icon\":\"success\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":394,\"memory\":16,\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:06'),
(25, '985ab739-5b26-4941-af6d-f831c7628db1', '985ab739-60bb-4827-b724-c0e9c84fb8e0', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:24'),
(26, '985ab739-5eab-4287-8230-665f0abd21c0', '985ab739-60bb-4827-b724-c0e9c84fb8e0', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:24'),
(27, '985ab739-6003-4d31-a08c-56bd71440813', '985ab739-60bb-4827-b724-c0e9c84fb8e0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/basic\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlFHWVZuaXJJb2djSUNaMlJaQnNVRkE9PSIsInZhbHVlIjoiUUc1TmZ0K1lEenU5UEYrWmdIcFdJVVBkMHc1dFpIU05aeGJRQ2g5ai9BUzFkMHBBdUNYNlVZV0dPenJIYmtzWDBjSUJ4RWdNRXNHbUQrbGh6MUR3bjZJcDlqa3dJRlRmZ1d2QzluTHpXdGZFZ0YxOVBCR0NFU2Ria1BiTTEva3ciLCJtYWMiOiI3ODhhZmIzMWFmZDI4OGM4YjNiMjMwYjQzMGZhMWQwNTZkMjFlZDdkNTE4YTg3MTUwNDcyN2NmNDAxNzFkZWE3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImpxajZacGgrc2FSMnhtY3hCTHNqb0E9PSIsInZhbHVlIjoidDVYbmZxdlR1YzBUcGpGSUE2d1hnZEIycWRFRlBPZ1poSVdLSUR2b2czWmFSem1SajZjMXJ6b2ZFaWJjd0RJWkUrSkExRGduUkxtMVpxTGV4Uko5ak13NitxNXBTdEJoSHZJd1laU2VSRUpKRVNHT1ZPeDV0bnZYN2hNckNsTDkiLCJtYWMiOiJhNzQ4OTMzNDRjMmI3ODZiNzcyZGUyOTU4NGUwNWNjNzhhZTQ5YjdkYTQ2YTE4MWY4NTBhNmZhZTcwYzUxYmQwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/basic\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with basic.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"Basic\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":210,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:24'),
(28, '985ab765-cb21-47c1-b256-1303b11fc2d5', '985ab765-ce04-4626-8c39-a05fbc53c574', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:53'),
(29, '985ab765-cca7-4681-8de8-468136d12896', '985ab765-ce04-4626-8c39-a05fbc53c574', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:53'),
(30, '985ab765-cd52-4398-ae5c-34c1087830b2', '985ab765-ce04-4626-8c39-a05fbc53c574', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/message\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Inp4aUJKYVdkY3c2T0VEV2RTaWpXNlE9PSIsInZhbHVlIjoiWC9sWkZ6RFZibWVpWDlaQ3JJZHNJZHdhcHN3VVE1bG9WdUJLQ0pBQnVNRHJoK2R0c2Y3VXdnampmcENUelJ1UW5CdGc0bklFdzJ1dFcxUzEzMjM1MXNRMFdZNTRWVnVvdFZDZnBTMldPbm4xc1JWeWhFRlJUeUh4WmNGcHdzVDMiLCJtYWMiOiI0NmE5OGE5ZmFhNmM1YjA4MzI1OTM5MzhjYjc2MjNmOWVhZTdjNjI5NTBmY2E2YzQwM2NkNWRmZDkxNmEyZjcyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik1GUzJ3TmVxOG5NcGV1dDlhbzVVbnc9PSIsInZhbHVlIjoiNDQvY3VwZUhvN1hwdHpEUXNiSUx2cW5Kd1Aza3dwK3MzL3VsQlJCNmlDbFdrdDU3ZUhyTkg2THdmaTVEUDM3dFhxSHRqS1c2T0Q2ci9GbDlUcUwzOGx2MlBsbkhlWE15VUxKdXZZUGZQcHNObVZPVjJadU5KSi90Z2srSC9aZmIiLCJtYWMiOiI0M2YxYmVjMjgzMzcyNTg2ZDc0ODkzYmRhNTBmNjFmNDBhM2QwYzkyMmUwMTRlYmE0YjhmMTljZWU0ZDVmNDkxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/message\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with message.\",\"buttons\":{\"cancel\":false,\"confirm\":false}}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":184,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:31:53'),
(31, '985ab790-37e3-4a50-ae12-520d49fc2e01', '985ab790-3c08-4ec6-ac4c-cd79a7dff35d', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:21'),
(32, '985ab790-3a4e-4b3b-bbb1-b5f594a2b501', '985ab790-3c08-4ec6-ac4c-cd79a7dff35d', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:21'),
(33, '985ab790-3b2c-4bfc-b5f4-ef066a1be59f', '985ab790-3c08-4ec6-ac4c-cd79a7dff35d', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/info\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlB5UklGalgzSmJlZG9TQURYV3daVHc9PSIsInZhbHVlIjoiaEZXVHdFcHlhcUJYMWZCKzZIaDlQbG9NYUZlYUdxdE5TWVQyNlk5U1BVdWJiT2dGbnBBR1JVS0RzOU5wNm9ra2Jpd01nOTNGSUtTYVNEWDJURDRCN3lqTDkranlhT0N3UkxrNDJibW5oTUN3MXhteHJ1Mi9nV3NISW4yRkNFWjYiLCJtYWMiOiIwNjliNGNiNzI1Njk5NjRhYzkzZjQ2ZDQyOTkyNjIzM2QyYWMxNGQxZTc0NjE2NjBmMWI3ZDM0OWUyNzdiYjI1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkdlS0FGU1AzK09FR0p4QTVBZ2NSWUE9PSIsInZhbHVlIjoiaXdoZDZhYUxoL1BpQlBLcTlxSDRzZ3QvUCtydXI0cVhXdG1YTnp4UjMxNkdnV201UHdNa0NIY2UwNlpyZnNlb0V4UzdvTjdKNnR5UC8zTGt5MkZyRDkvTHhTbEVBZVB1ZThEKzR3ay8rallkaW1JM0MxRURvelgyOEZ6TkoxelYiLCJtYWMiOiJlYjgwZDM4YjkxMGNiNzRhMzc5MDhiYjIzZjRiMjFiYTBiODVhMWFiYzRiNDgyYjYyYmYyNDA2M2U4YjlhODMxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/info\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.icon\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with info.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"\",\"icon\":\"info\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":214,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:21'),
(34, '985ab79f-b876-4770-b540-0b0de5268c5f', '985ab79f-be0c-4a8a-8414-8221a93bb0ba', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:31'),
(35, '985ab79f-bb8e-434a-9060-9b164bba84cb', '985ab79f-be0c-4a8a-8414-8221a93bb0ba', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:31'),
(36, '985ab79f-bce3-41f5-845f-5489df273685', '985ab79f-be0c-4a8a-8414-8221a93bb0ba', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/basic\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjhLRmxmN3JvQVpLaUdIS2Y1V2taa3c9PSIsInZhbHVlIjoiamNrN0dkQ3ZRSld1MjZjczdtQXp5Zk1XK3UxRUNWeGF5dmZ3bCt2Zy9qQnhTMXdkMURlZytuME1IeTQ2OWNTY2pWai93VThaSzRqRGVzTkxkT1IwR20yZmh2MGtDQm5qcWl3THhNb25adEJhRFlpcFpKZmNaRmVZNHFlRDlFS2QiLCJtYWMiOiI3ZDFmODZiNDQzOGEzY2UxMmI5YWMxYzFmOGQ4NjE0NWUwNmJjNWEwNDM1YjUyNmY0NmJlYTMzYTFiOTFlZThmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IitaU3M4a3BvMVRYVHZYOWJIbHlHTUE9PSIsInZhbHVlIjoibEFTSmhEQ2xMSVVvaEhLNEdUblAvcW5Lb3BsckhiRXFHcG1oRm45ajNWaFZneUpSQkYvcXRBT3dUVnVkY2h2aS95UU1PWVRkenNSQnZHNjZEZEtWWGFYZUw5SmJEZ1ZNcHdxcElIZm9wNjI5RGdXVFNrTUxoU3ZDY1F2ZE1YU2wiLCJtYWMiOiI2OGQ5OWFlODdhNDc5YzU0ZTk0OTA5MDVmZTliMGIwYTAzYzgwZTBhMTFlZjk4MzVmZDUxNTg5YmQ3NDBmYzZlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/basic\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with basic.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"Basic\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":212,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:32:31'),
(37, '985ab7d0-ad19-4dec-8612-07d92ecb7c13', '985ab7d0-b222-4508-9f43-41138a3d1bc6', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:03'),
(38, '985ab7d0-afa5-49c6-8e62-fa767f5097bf', '985ab7d0-b222-4508-9f43-41138a3d1bc6', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:03'),
(39, '985ab7d0-b0e9-4081-8d90-ed5ba120f446', '985ab7d0-b222-4508-9f43-41138a3d1bc6', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/error\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InIyWGpaQzhGdEdYNGZlVFFpNytOS1E9PSIsInZhbHVlIjoidnhvdkFHeVowcjF5VVJxRGlIc042ckpnOU9mL3lkUjlkbXNzRXR6eCtSVHFSZHdkSmQxU21INmtaYWR2SXFoWkFHa3BDNVREK3BKKzZldnhKc0tJaGplNUMrekFRR0txdFV1ZEZYaWtCQTlHN1FVTTRYRHVmbmUzdG45SzVxaTkiLCJtYWMiOiJlYzlkOGJjMGY2MzQ2Nzg0NzY1ZDA1ZGE0YzdkN2YwODc5ZTU1YWFkOGJjYTg1MDA5OWE4OGE1MzgyZGJmY2Q3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InBnQ0Q3bmJsNHVyOEZwK3d1REYwdXc9PSIsInZhbHVlIjoiOGdJU0xnZ21LUEF2VzVMelVxRzNGNUJLZE1xQWYwYmF1WnB6VEMweVBRSUNvTTkzbzRWVXNLTWlLYjdQU21kZXYwbWliSmdUWWY5UXZuR3N1SHowYVE1Vi9PNm9wWWlqVWRjakNuT0JrZkdRcWs1c0tBQUY3eHRnM3MycWZyLysiLCJtYWMiOiI5N2UyY2YyNmZmZmE0MWI4NjI1N2RiNDUyZmRiZDZiMWJhMzhmNWRjMDM2YTNlMWM3MTIyNGFkNWMzNDFiN2Q0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/error\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.icon\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with error.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"\",\"icon\":\"error\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":198,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:03'),
(40, '985ab7e8-56b5-4472-9e75-f683e8eef6d0', '985ab7e8-59a5-4b4e-92a2-b7877c1f53bc', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:19'),
(41, '985ab7e8-582b-48ff-960e-35dcacbff664', '985ab7e8-59a5-4b4e-92a2-b7877c1f53bc', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:19'),
(42, '985ab7e8-58dc-4b89-8c30-b568e765ba6b', '985ab7e8-59a5-4b4e-92a2-b7877c1f53bc', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/warning\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ii84QndxSDZqUy9odlc3eEFDZ0hONGc9PSIsInZhbHVlIjoicGhWVWIwZHBEKy9sZHdYNkdiWWR2b2FZTW9JOSthNHZIbkFTVVF3MXBxdEd3c2hVdkRuZ0RqVUl4dFc4RWR4TDFBbklBTmtoM08yRkxPNjRGaFlmQ0N2VlJCYWh3b250aEYyU2UybWRTMEEzMlZyOXFvY1NkY1AvYXNCS3M2MnUiLCJtYWMiOiJhM2EwZjllZTExMjg3MTI2YmY4YWI0YjRkZDlmZGIwZjdkMTJiNTZlOTljNzg0YThlYThmYjI1MjA3YzAxMTNkIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjM3NUgyZlcwU3FoUCtVWGhxWW5UM3c9PSIsInZhbHVlIjoiaUtJR25PTWRzWm5uNFMzV2RSeVRJc2hkN3dnWGVqbHo4UlkwOTUzdy81Rzlrc0tPeVhtcmVDc0ZHd0tqMkNGMHVESjBaRFZHa0NqQXBVWmZnNWRPY0hDVXRqNnZxaUgxbEhqNjhSWW90RitFYU5aMlU3T3JXd3hKZExGV2RrakgiLCJtYWMiOiJjYzM0NTgwNTEwNmU3OGUxYzBmZDJkYjc5ZWYyZjZhNTg3Yjc2YzZkNmM0NzJjOGIwYWE4ODkzOTY1MDM4ZGQxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/warning\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.icon\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with warning.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"\",\"icon\":\"warning\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":223,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:19'),
(43, '985ab80d-9476-4f22-b66c-40cbb95d843a', '985ab80d-9738-478c-88bf-f367e0048bc6', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:43'),
(44, '985ab80d-95f8-4529-a3b5-0c3486855ec8', '985ab80d-9738-478c-88bf-f367e0048bc6', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:43'),
(45, '985ab80d-968e-46e4-81c4-65340204f251', '985ab80d-9738-478c-88bf-f367e0048bc6', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/success\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlNNNWUwU3NmYW10VEM0eHF1NU4rV2c9PSIsInZhbHVlIjoiQ3BhQ1FiSWdKYXhUOTMyb2VrZGFzWEEwSG5sNklBaWxMak5lWVBWL1ZnRjhaZGhCZVVwajNmUzBYREZTSVpmcmdBTU9NQ21mc3BUbWtndkNERWFHRUNLZEprMXRsUmhFMGEreVVxMVE5bUhwUytnaG1CbENhKzV3YzJCSXZCQksiLCJtYWMiOiI3ZTVkOGQzNzc1ODdjNTEyN2QwMDE2YmFkNWNlNzE0YzkwNjllMjM4ODQ0OWY1OTRiODE4MTBiODM4ZWE3NmM2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkJXc3VrMFVvdDE0ZFltd1BOSEdQR1E9PSIsInZhbHVlIjoiQkZ4aWwzQXIwNU1sbmN4WmJUM1BmUUFWYVU4bGp3emd4RHFjZ2sxVlp4andWMnB3MnhlVUFJNWJOYVZ2WDR5WmhoRzU4aWU1Um53N21UWmhJZDVDeGQ1U3lQSFRhejNvWXFYMzQ2N01rUzhZNzRCVnFGSEwzRE9nSXNHTGtjTVgiLCJtYWMiOiIwOGIyYWZkM2M4MmU0OTgwZjJjNzkyODRkOTdmMDNkYjE4NDU4MzMwMTlkNjg1NTRlZTI1YzY3YTNhMWU2MjcxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/success\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.icon\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":3500,\"text\":\"Sweet Alert with success.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"Welcome to ItSolutionStuff.com\",\"icon\":\"success\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":211,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:33:43'),
(46, '985ab834-45e8-49d1-9d34-dc09fc253e64', '985ab834-4afe-45ab-baab-6a0966bb8540', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:09'),
(47, '985ab834-4945-494f-9397-a032add22567', '985ab834-4afe-45ab-baab-6a0966bb8540', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:09'),
(48, '985ab834-4a2e-4b9c-a702-c84cb4e592fe', '985ab834-4afe-45ab-baab-6a0966bb8540', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/basic\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkxFc3d0T3hVMWMzVGhtNjlqd1dqZGc9PSIsInZhbHVlIjoiRDI3M1dxVDdlL3VSNStDdVJDNHZLSlh4d21ucjcwUk5ETjl0WncwNGIxbkIwZnJXcmJ3NVV2TUJnKzZhb2ZHbi9lMEFYZ3hmNENhUkFmK01GcUJBUWhMd2tZZmFwbEl0V1pRaTBoWnYzMmhNUjFzNlpKMkhFQTRoYnQrOW5lVFMiLCJtYWMiOiIxOWIwMmE4YzVkNDY4ODBiOTEwOTc5YTcyYzJiNjcyZDhjNzNiMmYwNDhiMzY4ODY2ZjMyMmUyYmM0MDI3YTZmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ikd4cmNWYi8wclc1TnBHdS9QK2VZSmc9PSIsInZhbHVlIjoiZGtBSVl0dVZxK2NSa3VJNkNmdnpFdHZQNGRSa0lBc0VIeExSWjh2THNzTkVrVzhNMTZ3eVJjTHgzMmpwTVpRemZiSXlyUDRJc2p0U0pDVHFWcldHZU9XQklCL0xQK3Z6MmN1QWZ6bEhhYUV2L0N6eW1GRmlDZmhBYUd5MUNqazgiLCJtYWMiOiJiOWMxY2YyZTkxM2JlMjgzOGQzYTJhZjIzODM1NWE3ODdmMGFkNWM4ZGM0MTA3NjVlMTE5MThkY2RiNDZkNTM1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/basic\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.title\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with basic.\",\"buttons\":{\"cancel\":false,\"confirm\":false},\"title\":\"Basic\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":163,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:09'),
(49, '985ab844-698c-4517-a938-affab4fff40d', '985ab844-6eea-4192-910d-4ad273096eb8', NULL, 1, 'view', '{\"name\":\"my_notification\",\"path\":\"\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:19'),
(50, '985ab844-6c48-4b61-9d4c-0bfe0cc6a26a', '985ab844-6eea-4192-910d-4ad273096eb8', NULL, 1, 'view', '{\"name\":\"sweet::alert\",\"path\":\"\\\\vendor\\\\uxweb\\\\sweet-alert\\\\src\\\\SweetAlert\\/..\\/views\\/alert.blade.php\",\"data\":[],\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:19'),
(51, '985ab844-6d9d-4136-a7e9-6f3b3e175e70', '985ab844-6eea-4192-910d-4ad273096eb8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/my-notification\\/message\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@myNotification\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjlFSExrVDd1ak5HamwvQmJ5Q1orR3c9PSIsInZhbHVlIjoiS2FXWUZsWGZwUEg3SkcyRkt4Z3dzT1hUV2k4aXBodGJrdzc3eDVGSmtqSmNKTUJWWkRvUFo1U0FndmhiUlB5YjFjMEdNeWZ0YVpUTUd6b09uckVhR1I1RGh1aUN4REt0Wk1zZzJvNVFDdUUzSHNscE1CY1dqVHFqN2ZkaVpCWlQiLCJtYWMiOiJhOTQ1NWFkMjNiYzgwMTNkYTFkMDc3YjY4OGI5NDQ2NmRlMDNhYzBkNTk4NjUzOGQ0NGI0YjA2Y2RlMTEzNzY5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkJ1OVhpVzE1QUdTMjVFam9JMzlIalE9PSIsInZhbHVlIjoidGpNTGNJYjZidXp1cCtnaUx3RklYcVpuallZMmhyZWFXR2JhU3hkM1NLMHc1b1NWSUNUckkrM2tOQXYrS1R4WTRCS2FnT0FWRms3L0VIYU5zV3Y5THFZR0ZIMWJrTGdhUzJoU1cwMlRSQzgxTG80dVJjQ2g1YzFRZWd2NGR3a00iLCJtYWMiOiIwNzY5YzIxNzg1MzgzOTU2ZDBjZjdjMmI0MzQxMDc5OTJjYzBjMGJiYTFiNmU3YTIwMTBiNTRjNDIzMGJhOGJhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/my-notification\\/message\"},\"_flash\":{\"old\":[\"sweet_alert.timer\",\"sweet_alert.text\",\"sweet_alert.buttons\",\"sweet_alert.alert\"],\"new\":[]},\"sweet_alert\":{\"timer\":2500,\"text\":\"Sweet Alert with message.\",\"buttons\":{\"cancel\":false,\"confirm\":false}}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\resources\\\\views\\/my_notification.blade.php\",\"data\":[]},\"duration\":200,\"memory\":14,\"hostname\":\"QSPA14\"}', '2023-01-31 08:34:19');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(52, '985adc81-b16c-45bb-928e-89cf5074265b', '985adc81-d6e2-4d27-bef5-42bdb602f4fa', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"QSPA14\"}', '2023-01-31 10:15:39'),
(53, '985adeb5-e441-4417-9cbb-392ed732abbb', '985adeb5-fe90-4b46-b9a3-b6035d90250a', 'dd144f8f5b64ae4964e4934fa40371ea', 0, 'exception', '{\"class\":\"BaconQrCode\\\\Exception\\\\RuntimeException\",\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\bacon\\\\bacon-qr-code\\\\src\\\\Renderer\\\\Image\\\\ImagickImageBackEnd.php\",\"line\":64,\"message\":\"You need to install the imagick extension to use this back end\",\"context\":null,\"trace\":[{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":464},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":440},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":171},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\routes\\\\web.php\",\"line\":72},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":238},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":208},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":721},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\app\\\\Http\\\\Middleware\\\\Localization.php\",\"line\":23},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings.php\",\"line\":50},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken.php\",\"line\":78},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession.php\",\"line\":49},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":121},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":64},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse.php\",\"line\":37},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies.php\",\"line\":67},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":723},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":698},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":662},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":651},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ConvertEmptyStringsToNull.php\",\"line\":31},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TrimStrings.php\",\"line\":40},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize.php\",\"line\":27},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\PreventRequestsDuringMaintenance.php\",\"line\":86},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\fruitcake\\\\laravel-cors\\\\src\\\\HandleCors.php\",\"line\":38},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Http\\\\Middleware\\\\TrustProxies.php\",\"line\":39},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":142},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":111},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\public\\\\index.php\",\"line\":52},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\server.php\",\"line\":21}],\"line_preview\":{\"55\":\"\",\"56\":\"    \\/**\",\"57\":\"     * @var int|null\",\"58\":\"     *\\/\",\"59\":\"    private $matrixIndex;\",\"60\":\"\",\"61\":\"    public function __construct(string $imageFormat = \'png\', int $compressionQuality = 100)\",\"62\":\"    {\",\"63\":\"        if (! class_exists(Imagick::class)) {\",\"64\":\"            throw new RuntimeException(\'You need to install the imagick extension to use this back end\');\",\"65\":\"        }\",\"66\":\"\",\"67\":\"        $this->imageFormat = $imageFormat;\",\"68\":\"        $this->compressionQuality = $compressionQuality;\",\"69\":\"    }\",\"70\":\"\",\"71\":\"    public function new(int $size, ColorInterface $backgroundColor) : void\",\"72\":\"    {\",\"73\":\"        $this->image = new Imagick();\",\"74\":\"        $this->image->newImage($size, $size, $this->getColorPixel($backgroundColor));\"},\"hostname\":\"QSPA14\",\"occurrences\":1}', '2023-01-31 10:21:49'),
(54, '985adeb5-fcaf-4443-9a58-162e9a6f3cfb', '985adeb5-fe90-4b46-b9a3-b6035d90250a', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/qr-code-g\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImhXRkVRcXZnblNtM00reFlkdWh3S0E9PSIsInZhbHVlIjoiTjFuK1hHMzkzZmVTbXJIYmlRbFNZcWxFSlZLQkE3Q2hYMWNHTHVDanorZUw1dlI3bjRiU3ZUSzFWVDVqbmpKd0grL0VhSjZBVHpraEhQeGM5MXpMZkxKeHBYRFlZUVQ0bFpscEFaN1NxaEsrUXV3cE5qTjBXYWlubjhSSlY5UzQiLCJtYWMiOiI0N2Y1MGM5ZmI0ODkzMTQwYWQ3OWMzMTRhOGE1NTc3M2Y5MTc2MjMyM2ZlOTUzZmQyMzgyYTgyNzZmZDk3NDIxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImJGUCtWRGRETEJiVkxpSkROWnlrN3c9PSIsInZhbHVlIjoiTG9Ocml0NENUamgrUzBPOXhLOXhHRnpsNUxiSjl6NE9VTmJ2SXJYTUMwSFZnZ3hGaWxxTTdOak9QeWRJNmlBaFFGMWtJbVJmUSsvNWtCME0wZk9zU0NUUVlMT005K21qb3hiSC9IWHJwd2ZFUGtBZU1wYVlmUkhjYWxpVG5aRmciLCJtYWMiOiIzNDA3OWExNTM2ZjVmNjNhNTBkZTA4M2Q1NTgxN2QzZjQxNTQzMzJlNTFhYzIwYzAzMjgyMjEwN2YwZDJiNmVkIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/qr-code-g\"},\"_flash\":{\"old\":[],\"new\":[]},\"sweet_alert\":[]},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":399,\"memory\":22,\"hostname\":\"QSPA14\"}', '2023-01-31 10:21:49'),
(55, '985ae328-35a3-44d3-af6f-b579682cc2b7', '985ae328-46da-4a37-aac4-df4fd79a0dc5', 'dd144f8f5b64ae4964e4934fa40371ea', 1, 'exception', '{\"class\":\"BaconQrCode\\\\Exception\\\\RuntimeException\",\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\bacon\\\\bacon-qr-code\\\\src\\\\Renderer\\\\Image\\\\ImagickImageBackEnd.php\",\"line\":64,\"message\":\"You need to install the imagick extension to use this back end\",\"context\":null,\"trace\":[{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":464},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":440},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\simplesoftwareio\\\\simple-qrcode\\\\src\\\\Generator.php\",\"line\":171},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\routes\\\\web.php\",\"line\":72},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":238},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":208},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":721},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\app\\\\Http\\\\Middleware\\\\Localization.php\",\"line\":23},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings.php\",\"line\":50},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken.php\",\"line\":78},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession.php\",\"line\":49},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":121},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":64},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse.php\",\"line\":37},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies.php\",\"line\":67},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":723},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":698},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":662},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":651},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ConvertEmptyStringsToNull.php\",\"line\":31},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TrimStrings.php\",\"line\":40},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize.php\",\"line\":27},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\PreventRequestsDuringMaintenance.php\",\"line\":86},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\fruitcake\\\\laravel-cors\\\\src\\\\HandleCors.php\",\"line\":38},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Http\\\\Middleware\\\\TrustProxies.php\",\"line\":39},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":142},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":111},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\public\\\\index.php\",\"line\":52},{\"file\":\"F:\\\\Azizul_Jabbari_Qsoft\\\\appdividend_learn\\\\server.php\",\"line\":21}],\"line_preview\":{\"55\":\"\",\"56\":\"    \\/**\",\"57\":\"     * @var int|null\",\"58\":\"     *\\/\",\"59\":\"    private $matrixIndex;\",\"60\":\"\",\"61\":\"    public function __construct(string $imageFormat = \'png\', int $compressionQuality = 100)\",\"62\":\"    {\",\"63\":\"        if (! class_exists(Imagick::class)) {\",\"64\":\"            throw new RuntimeException(\'You need to install the imagick extension to use this back end\');\",\"65\":\"        }\",\"66\":\"\",\"67\":\"        $this->imageFormat = $imageFormat;\",\"68\":\"        $this->compressionQuality = $compressionQuality;\",\"69\":\"    }\",\"70\":\"\",\"71\":\"    public function new(int $size, ColorInterface $backgroundColor) : void\",\"72\":\"    {\",\"73\":\"        $this->image = new Imagick();\",\"74\":\"        $this->image->newImage($size, $size, $this->getColorPixel($backgroundColor));\"},\"hostname\":\"QSPA14\",\"occurrences\":2}', '2023-01-31 10:34:15'),
(56, '985ae328-43b0-43e1-8cde-138f2d24ce03', '985ae328-46da-4a37-aac4-df4fd79a0dc5', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/qr-code-g\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Not_A Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"109\\\", \\\"Chromium\\\";v=\\\"109\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ilh2SjVQVy9BVGV2dm53dVQzQ1FkeGc9PSIsInZhbHVlIjoiSi84SGFSdjUrMlZBdWhvVU9xa1Y5amdUcWg4Z211UUZZRXVhK21Ed05mckxXckhjdUdhL0tRbWNQQXY2MnZ6YzhVQmVkZzZvNUZIWjlZQkN4QjhwaVloQWN2cmxkUzYzRlNPM2NrWXFpWmxDV3crdXlackZPTDROdnA4MkNBb3MiLCJtYWMiOiI1NzdmMDJjYjA0ZTA3YTYzMDhhMGE5Y2ZkYzNjZTViYTljZWY5ZDE3YzBhZmY0ZDdhNTQyMmQwN2Y5MGEwYjZhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImR6ZmJsQlZZZjdSdEpxcXAyQ1dSREE9PSIsInZhbHVlIjoibzFNc3RWRFNaZUlNV1dEclA5cSsrRVVNV0hiVEc0VWI4bEJvZ05Mdm9FZ2MwY2Y4T2lKUDRidDRyU2pOVURLd2dOeUxoTC9UZGcxWjl3L29mK2ZmcWh5OEw5K0N2Sm1pUjVSRkM0N2ZNbFkyNmllL05wcXh4ZmdwZzNJMGpUazUiLCJtYWMiOiIyZDMwYjRmYmM1N2I3YjdkODExNGNmNTFjMDM5MmFmMzIzMjNmOTRhNzgyY2FkOWU2NGZjMjQxODRlOTI0NTFmIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"kpBGDWSocKB4fKrVVmN7GhXYwP7vkyRI32pFmPxN\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/qr-code-g\"},\"_flash\":{\"old\":[],\"new\":[]},\"sweet_alert\":[]},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":273,\"memory\":18,\"hostname\":\"QSPA14\"}', '2023-01-31 10:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('985a93a7-d017-4a09-acbd-5e058874891c', 'slow'),
('985a93a8-2867-4fad-8ae3-5ac810b6198e', 'slow'),
('985a93a8-c414-4fd5-87c2-b4ad14999a03', 'slow'),
('985a93a9-0baa-4b29-99fb-3c6340fae513', 'slow'),
('985a93a9-7b2e-421e-b7f6-1bb8d4e8ec19', 'slow'),
('985a93a9-a7ce-4777-8cbb-2e764b3b803f', 'slow'),
('985a93aa-7f1c-4dd9-843a-964846c9040e', 'slow'),
('985a93aa-c518-4a40-b2a8-ea51305b017f', 'slow');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sagar Ahmed', 'admin@gmail.com', NULL, '$2y$10$Yr4Gk5COfSOMGIXcsh0AOuMzj1VdOuCO9ddpc..kI4SVgTNFPSThK', NULL, '2023-01-29 01:57:04', '2023-01-29 02:06:31'),
(2, 'Azizul Jabbari Sagor', 'm.azizulcse@gmail.com', NULL, '$2y$10$CO1uw36zTzgfkJMVSNj4hOxIY0GfCOmZBV6DOKl40i1Dksd3T2sl.', NULL, '2023-01-29 03:02:46', '2023-01-29 03:19:38'),
(3, 'Saddam hossen', 'saddam@gmail.com', NULL, '$2y$10$1hE8ewIhOK9N6vC4dHuev.O2ws/non6f4DckV2bBCGx1plnYGSzHa', NULL, '2023-01-29 03:26:55', '2023-01-29 03:27:22'),
(6, 'azizul', 'azizulcse@gmail.com', NULL, '$2y$10$18BxSmK.gYk3Hyo9ve7AP.Q/jW2Q.7ZW.2wqOxcws2kGcQcGQo.qe', NULL, '2023-01-29 22:15:27', '2023-01-29 22:15:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
