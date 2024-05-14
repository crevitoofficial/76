-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2024 at 08:16 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miningv5admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', 'admin', NULL, '6238276ac25d11647847274.png', '$2y$10$PGJgEX2cNBvCdMaQojoWceIsBBSxoPWT7rCCaVGg4xatXeDJo.QNe', 'SE2UXeduOrNC7z3aDDcZ3TM2wudp84VsIAVJLScQSY22u5s9vnItKpM5xJdR', NULL, '2022-04-26 03:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `click_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `is_read`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Deposit request from test01', 0, '/admin/deposit/details/1', '2024-01-06 00:34:45', '2024-01-06 00:34:45'),
(2, 1, 'Deposit request from test01', 0, '/admin/deposit/details/2', '2024-01-06 00:35:34', '2024-01-06 00:35:34'),
(3, 1, 'Deposit request from test01', 0, '/admin/deposit/details/3', '2024-01-06 00:35:41', '2024-01-06 00:35:41'),
(4, 1, 'Deposit request from test01', 0, '/admin/deposit/details/4', '2024-01-06 00:39:17', '2024-01-06 00:39:17'),
(5, 1, 'Deposit request from test01', 1, '/admin/deposit/details/5', '2024-01-06 00:42:53', '2024-01-06 00:43:22'),
(6, 1, 'Deposit successful via bKash', 0, '/admin/deposit/successful', '2024-01-06 00:43:25', '2024-01-06 00:43:25'),
(7, 1, 'Deposit successful via Nagad', 0, '/admin/deposit/successful', '2024-01-06 00:43:39', '2024-01-06 00:43:39'),
(8, 1, 'Deposit request from test01', 0, '/admin/deposit/details/6', '2024-01-06 00:46:28', '2024-01-06 00:46:28'),
(9, 1, 'Deposit request from test01', 0, '/admin/deposit/details/7', '2024-01-06 00:48:35', '2024-01-06 00:48:35'),
(10, 1, 'Deposit request from test01', 0, '/admin/deposit/details/8', '2024-01-06 00:48:44', '2024-01-06 00:48:44'),
(11, 1, 'Deposit request from test01', 0, '/admin/deposit/details/9', '2024-01-06 00:56:47', '2024-01-06 00:56:47'),
(12, 1, 'Deposit request from test01', 0, '/admin/deposit/details/10', '2024-01-06 07:37:06', '2024-01-06 07:37:06'),
(13, 1, 'Deposit request from test01', 0, '/admin/deposit/details/11', '2024-01-06 07:37:12', '2024-01-06 07:37:12'),
(14, 1, 'Deposit request from test01', 0, '/admin/deposit/details/12', '2024-01-06 07:40:45', '2024-01-06 07:40:45'),
(15, 1, 'Deposit request from test01', 0, '/admin/deposit/details/13', '2024-01-06 15:45:48', '2024-01-06 15:45:48'),
(16, 1, 'Deposit request from test01', 0, '/admin/deposit/details/14', '2024-01-06 15:47:59', '2024-01-06 15:47:59'),
(17, 1, 'Deposit request from test01', 0, '/admin/deposit/details/15', '2024-01-06 15:48:51', '2024-01-06 15:48:51'),
(18, 1, 'Deposit request from test01', 0, '/admin/deposit/details/16', '2024-01-06 15:50:03', '2024-01-06 15:50:03'),
(19, 1, 'Deposit request from test01', 0, '/admin/deposit/details/17', '2024-01-06 18:06:35', '2024-01-06 18:06:35'),
(20, 1, 'Deposit request from test01', 0, '/admin/deposit/details/18', '2024-01-06 18:06:46', '2024-01-06 18:06:46'),
(21, 1, 'Deposit request from test01', 0, '/admin/deposit/details/19', '2024-01-06 18:06:56', '2024-01-06 18:06:56'),
(22, 1, 'Deposit request from test01', 0, '/admin/deposit/details/20', '2024-01-06 18:08:18', '2024-01-06 18:08:18'),
(23, 1, 'Deposit request from test01', 0, '/admin/deposit/details/21', '2024-01-06 18:08:48', '2024-01-06 18:08:48'),
(24, 1, 'Deposit request from test01', 0, '/admin/deposit/details/22', '2024-01-06 21:54:17', '2024-01-06 21:54:17'),
(25, 12, 'Deposit request from test04', 0, '/admin/deposit/details/23', '2024-01-06 22:51:47', '2024-01-06 22:51:47'),
(26, 12, 'Deposit request from test04', 0, '/admin/deposit/details/24', '2024-01-06 22:54:19', '2024-01-06 22:54:19'),
(27, 12, 'Deposit request from test04', 0, '/admin/deposit/details/25', '2024-01-06 22:55:15', '2024-01-06 22:55:15'),
(28, 12, 'Deposit request from test04', 0, '/admin/deposit/details/26', '2024-01-06 22:55:27', '2024-01-06 22:55:27'),
(29, 12, 'Deposit request from test04', 0, '/admin/deposit/details/27', '2024-01-06 22:56:13', '2024-01-06 22:56:13'),
(30, 12, 'Deposit request from test04', 0, '/admin/deposit/details/28', '2024-01-06 22:56:50', '2024-01-06 22:56:50'),
(31, 12, 'Deposit request from test04', 0, '/admin/deposit/details/29', '2024-01-06 22:57:47', '2024-01-06 22:57:47'),
(32, 12, 'Deposit request from test04', 0, '/admin/deposit/details/30', '2024-01-06 22:58:09', '2024-01-06 22:58:09'),
(33, 1, 'New withdraw request from test01', 1, '/admin/withdraw/details/1', '2024-01-07 20:10:19', '2024-01-07 20:12:24'),
(34, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/2', '2024-01-07 20:18:56', '2024-01-07 20:18:56'),
(35, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/3', '2024-01-07 20:19:45', '2024-01-07 20:19:45'),
(36, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/4', '2024-01-07 20:19:53', '2024-01-07 20:19:53'),
(37, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/5', '2024-01-07 20:24:33', '2024-01-07 20:24:33'),
(38, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/6', '2024-01-07 20:25:10', '2024-01-07 20:25:10'),
(39, 1, 'New withdraw request from test01', 0, '/admin/withdraw/details/7', '2024-01-07 20:26:33', '2024-01-07 20:26:33'),
(40, 1, 'New withdraw request from test01', 1, '/admin/withdraw/details/8', '2024-01-07 20:37:08', '2024-01-07 20:37:33'),
(41, 1, 'Deposit request from test01', 1, '/admin/deposit/details/31', '2024-01-08 22:57:50', '2024-01-08 22:58:20'),
(42, 1, 'Deposit successful via USDT', 0, '/admin/deposit/successful', '2024-01-08 22:58:26', '2024-01-08 22:58:26'),
(43, 1, 'Deposit request from test01', 0, '/deposit/details/32', '2024-01-11 08:15:58', '2024-01-11 08:15:58'),
(44, 1, 'Deposit request from test01', 0, '/deposit/details/33', '2024-01-11 08:58:21', '2024-01-11 08:58:21'),
(45, 19, 'Deposit request from test002', 1, '/deposit/details/34', '2024-01-11 14:29:03', '2024-01-11 14:29:23'),
(46, 19, 'Deposit successful via USDT', 0, '/deposit/successful', '2024-01-11 14:29:30', '2024-01-11 14:29:30'),
(47, 1, 'New withdraw request from test01', 1, '/withdraw/details/9', '2024-02-16 05:38:23', '2024-02-16 05:39:35'),
(48, 1, 'Deposit request from test01', 0, '/deposit/details/35', '2024-02-19 02:54:06', '2024-02-19 02:54:06'),
(49, 1, 'Deposit request from test01', 0, '/deposit/details/36', '2024-02-19 02:55:21', '2024-02-19 02:55:21'),
(50, 1, 'Deposit request from test01', 0, '/deposit/details/37', '2024-02-19 02:58:52', '2024-02-19 02:58:52'),
(51, 1, 'Deposit request from test01', 0, '/deposit/details/38', '2024-02-19 04:44:04', '2024-02-19 04:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_screenshots`
--

CREATE TABLE `app_screenshots` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_screenshots`
--

INSERT INTO `app_screenshots` (`id`, `image`, `created_at`, `updated_at`) VALUES
(19, '65d10f91854591708199825.png', '2024-02-17 19:57:05', '2024-02-17 19:57:05'),
(20, '65d10f9ab30541708199834.png', '2024-02-17 19:57:14', '2024-02-17 19:57:14'),
(22, '65d10fb397cc01708199859.png', '2024-02-17 19:57:39', '2024-02-17 19:57:39'),
(23, '65d6efbbb49911708584891.png', '2024-02-22 06:54:51', '2024-02-22 06:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `to_id` int NOT NULL DEFAULT '0',
  `from_id` int NOT NULL DEFAULT '0',
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission_logs`
--

INSERT INTO `commission_logs` (`id`, `to_id`, `from_id`, `level`, `amount`, `type`, `details`, `trx`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1', 10.00, 'plan_subscribe_commission', '1st level referral commission from test02', 'KC1PRN3XGUCU', '2024-01-05 20:25:08', NULL),
(2, 1, 2, '1', 1.00, 'ptc_view_commission', '1st level referral commission from test02', '6B12TEVG7X4Z', '2024-01-05 20:25:16', NULL),
(3, 1, 2, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from test02', 'TTHFMZ9E9F5G', '2024-01-05 20:25:28', NULL),
(4, 1, 2, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from test02', '145RUWSXNHOA', '2024-01-05 20:27:18', NULL),
(5, 1, 2, '1', 2.00, 'ptc_view_commission', '1st level referral commission from test02', 'DPBW722VNZX6', '2024-01-05 20:27:25', NULL),
(6, 1, 2, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from test02', 'SZGR3D1P68HR', '2024-01-05 22:26:37', NULL),
(7, 1, 2, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from test02', '4DHAK8UX5PAY', '2024-01-09 01:00:24', NULL),
(8, 1, 2, '1', 0.50, 'ptc_view_commission', '1st level referral commission from test02', 'GA45ZEHO98P3', '2024-01-09 01:01:33', NULL),
(9, 2, 3, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from 1740898877', '9PAF4HX5RF1D', '2024-01-09 01:39:16', NULL),
(10, 1, 3, '2', 2.50, 'plan_subscribe_commission', '2nd level referral commission from 1740898877', '9PAF4HX5RF1D', '2024-01-09 01:39:16', NULL),
(11, 16, 17, '1', 5.00, 'plan_subscribe_commission', '1st level referral commission from test09', 'X9YVDYVYECO9', '2024-01-09 09:06:41', NULL),
(12, 16, 17, '1', 0.50, 'ptc_view_commission', '1st level referral commission from test09', 'JVSEKUOOV11A', '2024-01-09 09:40:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `plan_id` int UNSIGNED NOT NULL DEFAULT '0',
  `method_code` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `method_currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `final_amo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `btc_amo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_try` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT '0',
  `admin_feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `plan_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `transaction_id`, `user_number`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `payment_try`, `status`, `from_api`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1000, 100.00000000, 'TAKA', 0.00000000, 1.00000000, 100.00000000, 'rhj', NULL, NULL, '0', '', 'EAM8E74O1ZVC', 0, 2, 0, NULL, '2024-01-06 00:34:45', '2024-01-06 00:34:45'),
(2, 1, 0, 1001, 100.00000000, 'TAKA', 0.00000000, 1.00000000, 100.00000000, '3332', NULL, NULL, '0', '', 'Y7HF7PS5SX1S', 0, 2, 0, NULL, '2024-01-06 00:35:34', '2024-01-06 00:35:34'),
(3, 1, 0, 1000, 100.00000000, 'TAKA', 0.00000000, 1.00000000, 100.00000000, '33323', NULL, NULL, '0', '', '53WVGK5XH25X', 0, 2, 0, NULL, '2024-01-06 00:35:41', '2024-01-06 00:35:41'),
(4, 1, 0, 1001, 250.00000000, 'TAKA', 0.00000000, 1.00000000, 250.00000000, '45678', NULL, NULL, '0', '', 'CFUAD8BXQT7C', 0, 1, 0, NULL, '2024-01-06 00:39:17', '2024-01-06 00:43:39'),
(5, 1, 0, 1000, 150.00000000, 'TAKA', 0.00000000, 1.00000000, 150.00000000, '50', NULL, NULL, '0', '', 'QTPR1RCZP2PS', 0, 1, 0, NULL, '2024-01-06 00:42:53', '2024-01-06 00:43:25'),
(6, 1, 0, 1000, 200.00000000, 'TAKA', 0.00000000, 1.00000000, 200.00000000, '50', NULL, NULL, '0', '', 'O4KZRBOV76DK', 0, 2, 0, NULL, '2024-01-06 00:46:28', '2024-01-06 00:46:28'),
(7, 1, 0, 1001, 100.00000000, 'TAKA', 0.00000000, 1.00000000, 100.00000000, '50', NULL, NULL, '0', '', 'RU9E5AH9DTU9', 0, 2, 0, NULL, '2024-01-06 00:48:35', '2024-01-06 00:48:35'),
(8, 1, 0, 1000, 100.00000000, 'TAKA', 0.00000000, 1.00000000, 100.00000000, '50', NULL, NULL, '0', '', 'M83VB1D17CQT', 0, 2, 0, NULL, '2024-01-06 00:48:44', '2024-01-06 00:48:44'),
(9, 1, 0, 1001, 150.00000000, 'TAKA', 0.00000000, 1.00000000, 150.00000000, '56789', NULL, NULL, '0', '', '8WWEO81R9EQ2', 0, 2, 0, NULL, '2024-01-06 00:56:47', '2024-01-06 00:56:47'),
(10, 1, 0, 1001, 200.00000000, 'TAKA', 0.00000000, 1.00000000, 200.00000000, 'test', NULL, NULL, '0', '', 'REDK797KUK18', 0, 2, 0, NULL, '2024-01-06 07:37:06', '2024-01-06 07:37:06'),
(11, 1, 0, 1000, 200.00000000, 'TAKA', 0.00000000, 1.00000000, 200.00000000, 'test', NULL, NULL, '0', '', 'UKPMGB59VMCN', 0, 2, 0, NULL, '2024-01-06 07:37:12', '2024-01-06 07:37:12'),
(12, 1, 0, 1001, 400.00000000, 'TAKA', 0.00000000, 1.00000000, 400.00000000, 'ttyuiou', NULL, NULL, '0', '', '86G4WG5KX42K', 0, 2, 0, NULL, '2024-01-06 07:40:45', '2024-01-06 07:40:45'),
(13, 1, 0, 1000, 200.00000000, 'TAKA', 0.00000000, 1.00000000, 200.00000000, 'test1', NULL, NULL, '0', '', 'AN4M1ST47A71', 0, 2, 0, NULL, '2024-01-06 15:45:48', '2024-01-06 15:45:48'),
(14, 1, 0, 1001, 200.00000000, 'TAKA', 0.00000000, 1.00000000, 200.00000000, '017xxxxxx66', NULL, NULL, '0', '', 'XVHCGEXEDKVQ', 0, 2, 0, NULL, '2024-01-06 15:47:59', '2024-01-06 15:47:59'),
(15, 1, 0, 1001, 400.00000000, 'TAKA', 0.00000000, 1.00000000, 400.00000000, '017xxxxxx66', NULL, NULL, '0', '', 'R6MADY2DYSDK', 0, 2, 0, NULL, '2024-01-06 15:48:51', '2024-01-06 15:48:51'),
(16, 1, 0, 1000, 500.00000000, 'TAKA', 0.00000000, 1.00000000, 500.00000000, '017xxxxxx66dtghfggff', NULL, NULL, '0', '', 'TASS9X7M3UUM', 0, 2, 0, NULL, '2024-01-06 15:50:03', '2024-01-06 15:50:03'),
(17, 1, 0, 1001, 20.00000000, 'TAKA', 0.00000000, 100.00000000, 2000.00000000, '50', NULL, NULL, '0', '', 'NE6H8OSPT694', 0, 2, 0, NULL, '2024-01-06 18:06:35', '2024-01-06 18:06:35'),
(18, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, '10', NULL, NULL, '0', '', '3WK4JWKSXN13', 0, 2, 0, NULL, '2024-01-06 18:06:46', '2024-01-06 18:06:46'),
(19, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, '50', NULL, NULL, '0', '', 'J3J83SHOQCUA', 0, 2, 0, NULL, '2024-01-06 18:06:56', '2024-01-06 18:06:56'),
(20, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, 'test', NULL, NULL, '0', '', '59M5AVQEP2Q9', 0, 2, 0, NULL, '2024-01-06 18:08:18', '2024-01-06 18:08:18'),
(21, 1, 0, 1001, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, 'test', NULL, NULL, '0', '', 'VJ2UPYUYBR23', 0, 2, 0, NULL, '2024-01-06 18:08:48', '2024-01-06 18:08:48'),
(22, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, '425', NULL, NULL, '0', '', 'FOXDR18DGTCH', 0, 2, 0, NULL, '2024-01-06 21:54:17', '2024-01-06 21:54:17'),
(23, 12, 0, 1000, 350.00000000, 'TAKA', 0.00000000, 100.00000000, 35000.00000000, '111', NULL, NULL, '0', '', 'Y2XUVBTATHRR', 0, 2, 0, NULL, '2024-01-06 22:51:47', '2024-01-06 22:51:47'),
(24, 12, 0, 1001, 150.00000000, 'TAKA', 0.00000000, 100.00000000, 15000.00000000, 'hajajnas', NULL, NULL, '0', '', '9SZ96O9MKY44', 0, 2, 0, NULL, '2024-01-06 22:54:19', '2024-01-06 22:54:19'),
(25, 12, 0, 1000, 350.00000000, 'TAKA', 0.00000000, 100.00000000, 35000.00000000, 'eee', NULL, NULL, '0', '', '5BE5E1TQPA6S', 0, 2, 0, NULL, '2024-01-06 22:55:15', '2024-01-06 22:55:15'),
(26, 12, 0, 1001, 20.00000000, 'TAKA', 0.00000000, 100.00000000, 2000.00000000, 'eees', NULL, NULL, '0', '', 'SFXVG6XOHCF5', 0, 2, 0, NULL, '2024-01-06 22:55:27', '2024-01-06 22:55:27'),
(27, 12, 0, 1001, 150.00000000, 'TAKA', 0.00000000, 100.00000000, 15000.00000000, 'qz', NULL, NULL, '0', '', 'SZV1PGE644C6', 0, 2, 0, NULL, '2024-01-06 22:56:13', '2024-01-06 22:56:13'),
(28, 12, 0, 1000, 150.00000000, 'TAKA', 0.00000000, 100.00000000, 15000.00000000, 'ssa', NULL, NULL, '0', '', 'YXREMCHPT5RS', 0, 2, 0, NULL, '2024-01-06 22:56:50', '2024-01-06 22:56:50'),
(29, 12, 0, 1000, 150.00000000, 'TAKA', 0.00000000, 100.00000000, 15000.00000000, 'qqqq', NULL, NULL, '0', '', 'AEG7GFCJJJTO', 0, 2, 0, NULL, '2024-01-06 22:57:47', '2024-01-06 22:57:47'),
(30, 12, 0, 1000, 350.00000000, 'TAKA', 0.00000000, 100.00000000, 35000.00000000, 'qwqw', NULL, NULL, '0', '', '674EGCRVCUU7', 0, 2, 0, NULL, '2024-01-06 22:58:09', '2024-01-06 22:58:09'),
(31, 1, 0, 1002, 20.00000000, 'USDT', 0.00000000, 1.00000000, 20.00000000, 'etrtyg', NULL, NULL, '0', '', 'GCPK7KKSTJ3D', 0, 1, 0, NULL, '2024-01-08 22:57:50', '2024-01-08 22:58:26'),
(32, 1, 0, 1002, 500.00000000, 'USDT', 0.00000000, 1.00000000, 500.00000000, '50', NULL, NULL, '0', '', 'MTXY7FGBFCKV', 0, 2, 0, NULL, '2024-01-11 08:15:58', '2024-01-11 08:15:58'),
(33, 1, 0, 1001, 400.00000000, 'TAKA', 0.00000000, 100.00000000, 40000.00000000, '017xxxxxx66d', NULL, NULL, '0', '', '61B2VVPDMR18', 0, 2, 0, NULL, '2024-01-11 08:58:21', '2024-01-11 08:58:21'),
(34, 19, 0, 1002, 100.00000000, 'USDT', 0.00000000, 1.00000000, 100.00000000, 'gfhjkjl;klijkjk', NULL, NULL, '0', '', 'N258SVMUSQBD', 0, 1, 0, NULL, '2024-01-11 14:29:03', '2024-01-11 14:29:30'),
(35, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, '1234', NULL, NULL, '0', '', 'JADCCFTBHW6T', 0, 2, 0, NULL, '2024-02-19 02:54:06', '2024-02-19 02:54:06'),
(36, 1, 0, 1000, 10.00000000, 'TAKA', 0.00000000, 100.00000000, 1000.00000000, '017xxxxxx66', NULL, NULL, '0', '', '61CBDXNQENDK', 0, 2, 0, NULL, '2024-02-19 02:55:21', '2024-02-19 02:55:21'),
(37, 1, 0, 1002, 400.00000000, 'USDT', 0.00000000, 1.00000000, 400.00000000, 'TMBeViiBxxSGmPiMgbvWBwF4ngSbmr8888', NULL, NULL, '0', '', 'JOWZM41814T4', 0, 2, 0, NULL, '2024-02-19 02:58:52', '2024-02-19 02:58:52'),
(38, 1, 0, 1001, 400.00000000, 'TAKA', 0.00000000, 100.00000000, 40000.00000000, 'fsdfsafsdfas', NULL, NULL, '0', '', '4ZT97WUOYOZW', 0, 2, 0, NULL, '2024-02-19 04:44:04', '2024-02-19 04:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'object',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, '2019-10-18 23:16:05', '2022-10-27 03:34:32'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, '2019-10-18 23:16:05', '2022-10-25 00:46:25'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"-----\"}}', 'na', 0, '2019-10-18 23:16:05', '2022-05-08 00:25:27'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, '2021-05-04 10:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, '2022-10-26 02:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `act`, `form_data`, `created_at`, `updated_at`) VALUES
(3, 'kyc', '{\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2022-08-13 23:26:31', '2022-10-24 06:05:13'),
(6, 'manual_deposit', '[]', '2023-08-10 16:28:54', '2023-10-23 10:53:07'),
(7, 'withdraw_method', '[]', '2023-09-30 18:32:10', '2023-09-30 18:32:10'),
(8, 'withdraw_method', '[]', '2023-09-30 19:04:51', '2023-09-30 19:04:51'),
(9, 'manual_deposit', '[]', '2023-10-17 21:49:20', '2023-10-17 21:49:20'),
(10, 'manual_deposit', '[]', '2024-01-08 22:55:51', '2024-01-08 22:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint UNSIGNED NOT NULL,
  `data_keys` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `template_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `template_name`, `view`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"bhp\",\"mine\",\"bhpmine\"],\"description\":\"BHP MINE - Mining App\",\"social_title\":\"BHP MINE - Mining App\",\"social_description\":\"BHP MINE - Mining App\",\"image\":\"6524705d2f4c11696886877.png\"}', 'global', 0, '2020-07-04 23:42:52', '2023-10-25 21:57:59'),
(41, 'cookie.data', '{\"short_desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">All provided delicate\\/credit data is sent through Stripe.<br>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\",\"status\":1}', 'global', 0, '2020-07-04 23:42:52', '2022-03-30 11:23:12'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color: rgb(111, 111, 111); font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif; color: rgb(54, 54, 54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div>\"}', 'global', 0, '2020-07-04 23:42:52', '2022-10-25 03:05:57'),
(46, 'banner.element', '{\"has_image\":\"1\",\"image\":\"65d64507461f61708541191.jpeg\"}', 'basic', 0, '2022-04-23 07:01:16', '2024-02-21 18:46:31'),
(47, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Make more than ever before Join Us\",\"description\":\"<p style=\\\"margin-top:15px;margin-right:0px;margin-left:0px;font-size:16px;color:rgb(111,111,111);font-family:Roboto, Bangla745, sans-serif;\\\">\\u00a0Best Possible Way for Earn From Home. Temporibus eveniet commodi obcaecati voluptates reiciendis quis ipsum incidunt quibusdam aperiam autem suscipit maiores temporTemporibus eveniet commodi obcaecati voluptates reiciendis quis ipsum incidunt quibusdam aperiam autem suscipit maiores tempora impedit, exercitationem ratione distinctio nulla magni nemo cumque inventore sapiente nisi at vel. Laborum suscipit fuga.<\\/p>\",\"video_url\":\"https:\\/\\/www.youtube.com\\/embed\\/WOb4cj7izpE\",\"image\":\"64d521f6864df1691689462.png\"}', 'basic', 0, '2022-04-23 07:05:59', '2023-08-10 17:51:23'),
(48, 'features.content', '{\"heading\":\"Benefits And Facilities\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 07:17:22', '2022-11-05 06:45:08'),
(49, 'features.element', '{\"icon\":\"<i class=\\\"las la-globe-americas\\\"><\\/i>\",\"title\":\"We\'re Global\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:17:55', '2022-10-22 03:20:56'),
(50, 'features.element', '{\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"title\":\"Best Support\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:19:04', '2022-10-22 03:20:27'),
(51, 'features.element', '{\"icon\":\"<i class=\\\"lab la-bitcoin\\\"><\\/i>\",\"title\":\"We Accept Crypto\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:20:19', '2022-04-23 07:20:20'),
(52, 'features.element', '{\"icon\":\"<i class=\\\"las la-chart-bar\\\"><\\/i>\",\"title\":\"We\'re Profitable\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:21:09', '2022-10-22 03:19:35'),
(53, 'features.element', '{\"icon\":\"<i class=\\\"las la-lock\\\"><\\/i>\",\"title\":\"We\'re Secure\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:21:25', '2022-10-22 03:19:13'),
(54, 'features.element', '{\"icon\":\"<i class=\\\"lar la-copy\\\"><\\/i>\",\"title\":\"We\'re Certified\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'basic', 0, '2022-04-23 07:21:43', '2022-10-22 03:18:51'),
(55, 'plan.content', '{\"heading\":\"Choose The Best Plan\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 07:24:18', '2022-11-05 06:45:33'),
(56, 'counter.content', '{\"has_image\":\"1\",\"heading\":\"Best Place To Earn Money Online\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\",\"image\":\"63665b25c426e1667652389.png\"}', 'basic', 0, '2022-04-23 07:29:00', '2022-11-05 06:46:30'),
(61, 'testimonial.content', '{\"heading\":\"What Our Clients Say\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 07:40:32', '2022-11-05 06:46:57'),
(62, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Chris Hamsorth\",\"designation\":\"PTC Player\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"Design Quality\",\"image\":\"6263c2b65eb0b1650705078.jpg\"}', 'basic', 0, '2022-04-23 07:41:18', '2022-10-22 00:58:10'),
(63, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"John Doe\",\"designation\":\"Businessman\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"For Support\",\"image\":\"6263c2c7a0f131650705095.jpg\"}', 'basic', 0, '2022-04-23 07:41:35', '2022-10-22 00:58:28'),
(64, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Rajendra\",\"designation\":\"Web Developer\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.v\",\"reason\":\"Code Quality\",\"image\":\"6263c2dd9b0931650705117.jpg\"}', 'basic', 0, '2022-04-23 07:41:57', '2022-10-22 00:58:49'),
(65, 'faq.content', '{\"heading\":\"Frequently Asked Question\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 07:44:21', '2022-11-05 06:46:47'),
(66, 'faq.element', '{\"question\":\"What constitutes a quorum in a PTC?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:44:36', '2022-04-23 07:44:36'),
(67, 'faq.element', '{\"question\":\"What constitutes a positive or negative vote in PTCs?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:44:51', '2022-04-23 07:44:51'),
(68, 'faq.element', '{\"question\":\"Can an abstention vote be cast at a PTC meeting?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:45:04', '2022-04-23 07:45:04'),
(69, 'faq.element', '{\"question\":\"Can a faculty member on OCSA or FML serve on a PTC?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:45:19', '2022-04-23 07:45:19'),
(70, 'faq.element', '{\"question\":\"How will additional members of PTCs be elected in departments with fewer than four tenured faculty members?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:45:34', '2022-04-23 07:45:34'),
(71, 'faq.element', '{\"question\":\"How can absentee ballots be cast?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:45:48', '2022-04-23 07:45:48'),
(72, 'faq.element', '{\"question\":\"Why should members of the PTC fill out vote justification forms explaining their votes?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'basic', 0, '2022-04-23 07:46:00', '2022-04-23 07:46:01'),
(73, 'policy_pages.element', '{\"title\":\"Privacy and Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', 'basic', 0, '2022-04-23 07:49:43', '2022-04-23 08:37:03'),
(74, 'policy_pages.element', '{\"title\":\"Payment Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', 'basic', 0, '2022-04-23 07:50:04', '2022-04-23 07:50:04'),
(75, 'blog.content', '{\"heading\":\"Our Latest Blog\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 07:51:10', '2022-11-05 06:47:10'),
(76, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Dit boek is een verhand eling over de\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c534d4d551650705716.jpg\"}', 'basic', 3, '2022-04-23 07:51:56', '2022-04-23 08:30:57'),
(77, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Dit boek is een verhand eling over de\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c5776573b1650705783.jpg\"}', 'basic', 0, '2022-04-23 07:53:03', '2022-04-23 07:53:03'),
(78, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Er zijn vele variaties van passages van\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c5ca845e61650705866.jpg\"}', 'basic', 3, '2022-04-23 07:54:26', '2022-04-23 08:30:45'),
(79, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Het is al geruime tijd een bekend geg\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c5e6ee3281650705894.jpg\"}', 'basic', 2, '2022-04-23 07:54:54', '2022-10-19 23:45:26'),
(80, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Law firm opened near to that gonig to\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c5ff668751650705919.jpg\"}', 'basic', 4, '2022-04-23 07:55:19', '2022-10-21 23:37:58'),
(81, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Law firm opened near to that gonig to\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6263c61391bf31650705939.jpg\"}', 'basic', 17, '2022-04-23 07:55:39', '2022-11-05 06:47:38'),
(82, 'breadcrumb.content', '{\"has_image\":\"1\",\"image\":\"6353c06cde98b1666433132.png\"}', 'basic', 0, '2022-04-23 08:25:32', '2022-10-22 04:05:33'),
(83, 'contact.content', '{\"heading\":\"Send Your Messages\",\"subheading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repudiandae porro reprehenderit, beatae perferendis repellat quo ipsa omnis, vitae!\"}', 'basic', 0, '2022-04-23 08:42:01', '2022-11-05 06:51:39'),
(84, 'contact.element', '{\"icon\":\"<i class=\\\"far fa-envelope\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"contact@ptcl.com\"}', 'basic', 0, '2022-04-23 08:42:19', '2022-04-23 08:42:19'),
(85, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+012-345-67890\"}', 'basic', 0, '2022-04-23 08:42:36', '2022-04-23 08:42:36'),
(86, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-map-marker-alt\\\"><\\/i>\",\"title\":\"Office Address\",\"content\":\"ABC road street, Cool City\"}', 'basic', 0, '2022-04-23 08:42:51', '2022-04-23 08:42:51'),
(87, 'login.content', '{\"has_image\":\"1\",\"heading\":\"Sign In\",\"image\":\"63510e8a10d051666256522.png\"}', 'basic', 0, '2022-04-24 07:43:31', '2022-10-20 03:34:11'),
(88, 'register.content', '{\"has_image\":\"1\",\"heading\":\"Register New Account\",\"image\":\"635117e2a9f501666258914.png\"}', 'basic', 0, '2022-04-24 07:43:48', '2022-10-20 03:41:55'),
(89, 'kyc_info.content', '{\"verification_content\":\"Lorem ipsum, dolor sit amet consectetur adipisicing elit. Hic officia quod natus, non dicta perspiciatis, quae repellendus ea illum aut debitis sint amet? Ratione voluptates beatae numquam.\",\"pending_content\":\"Lorem ipsum, dolor sit amet consectetur adipisicing elit. Hic officia quod natus, non dicta perspiciatis, quae repellendus ea illum aut debitis sint amet? Ratione voluptates beatae numquam.\"}', 'basic', 0, '2022-04-24 22:29:41', '2022-04-24 22:29:41'),
(90, 'registration.content', '{\"has_image\":\"1\",\"heading\":\"Sign Up\",\"image\":\"63511719c50ce1666258713.png\"}', 'basic', 0, '2022-10-20 03:38:33', '2022-10-20 03:38:34'),
(91, 'header.content', '{\"phone\":\"880 123 5656 345\",\"email\":\"support@mail.com\"}', 'basic', 0, '2022-10-20 05:12:50', '2022-10-20 05:12:50'),
(92, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Earn and Make Money Online Per Click\",\"subheading\":\"Paid to click is an online business model that draws online traffic from people aiming to earn money from home\",\"button_name\":\"Get Started\",\"button_link\":\"user\\/login\",\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/WOb4cj7izpE\",\"background_image\":\"6351329203b081666265746.png\",\"image\":\"635132927697f1666265746.png\"}', 'basic', 0, '2022-10-20 05:33:35', '2022-10-20 06:11:26'),
(93, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353862f5e5fa1666418223.png\"}', 'basic', 0, '2022-10-21 23:57:03', '2022-10-21 23:57:03'),
(94, 'client.element', '{\"has_image\":\"1\",\"image\":\"63538648e9f781666418248.png\"}', 'basic', 0, '2022-10-21 23:57:28', '2022-10-21 23:57:28'),
(95, 'client.element', '{\"has_image\":\"1\",\"image\":\"635386503c90c1666418256.png\"}', 'basic', 0, '2022-10-21 23:57:36', '2022-10-21 23:57:36'),
(96, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353865adc39f1666418266.png\"}', 'basic', 0, '2022-10-21 23:57:46', '2022-10-21 23:57:46'),
(97, 'client.element', '{\"has_image\":\"1\",\"image\":\"63538663133bb1666418275.png\"}', 'basic', 0, '2022-10-21 23:57:55', '2022-10-21 23:57:55'),
(98, 'client.element', '{\"has_image\":\"1\",\"image\":\"635386680ee031666418280.png\"}', 'basic', 0, '2022-10-21 23:58:00', '2022-10-21 23:58:00'),
(99, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353866c566fc1666418284.png\"}', 'basic', 0, '2022-10-21 23:58:04', '2022-10-21 23:58:04'),
(100, 'client.element', '{\"has_image\":\"1\",\"image\":\"635386710f8d41666418289.png\"}', 'basic', 0, '2022-10-21 23:58:09', '2022-10-21 23:58:09'),
(101, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Peter Parker\",\"designation\":\"Microtech, Inc.\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"Design Quality\",\"image\":\"635394f08fc271666422000.png\"}', 'basic', 0, '2022-10-22 01:00:00', '2022-10-22 01:00:00'),
(104, 'footer.content', '{\"heading\":\"About Us\",\"description\":\"Maecenas tempus tellus egondime honcus sequam seitmet dipiscing sem eque sedipsuNam quam egondime honcus sequam\"}', 'basic', 0, '2022-10-22 04:29:55', '2022-10-22 04:29:55'),
(109, 'social_icon.element', '{\"title\":\"Instagram\",\"icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\"}', 'basic', 0, '2022-10-22 04:57:55', '2022-10-22 04:57:55'),
(110, 'social_icon.element', '{\"title\":\"LinkedIn\",\"icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\"}', 'basic', 0, '2022-10-22 04:58:26', '2022-10-22 04:58:26'),
(111, 'social_icon.element', '{\"title\":\"Twitter\",\"icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/twitter.com\"}', 'basic', 0, '2022-10-22 04:58:51', '2022-10-22 04:58:51'),
(112, 'social_icon.element', '{\"title\":\"Facebook\",\"icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\"}', 'basic', 0, '2022-10-22 04:59:15', '2022-10-22 04:59:15'),
(113, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Make more than ever before Join Us\",\"subheading\":\"About Us\",\"description\":\"<p style=\\\"margin-bottom:1rem;color:rgb(95,125,149);font-family:\'Open Sans\', sans-serif;font-size:16px;\\\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque natus, repellendus consequatur, animi minima ex quidem temporibus ab odio, eaque aliquid consectetur vel adipisci.<\\/p><ul class=\\\"list list--check\\\" style=\\\"color:rgb(95,125,149);font-family:\'Open Sans\', sans-serif;\\\"><li>PPC Keyword Research<\\/li><li>Managing Your PPC Campaigns<\\/li><li>Review Costly PPC Keywords<\\/li><li>Refine Landing Pages<\\/li><\\/ul>\",\"image\":\"6353d54ba02d11666438475.png\"}', 'ptc_diamond', 0, '2022-10-22 05:12:01', '2022-10-22 05:34:35'),
(114, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Earn and Make Money Online Per Click\",\"subheading\":\"Paid to click is an online business model that draws online traffic from people aiming to earn money from home\",\"button_name\":\"Get Started\",\"button_link\":\"user\\/login\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=WOb4cj7izpE\",\"background_image\":\"6353d4d0413691666438352.png\",\"image\":\"6353d4d0b3de01666438352.png\"}', 'ptc_diamond', 0, '2022-10-22 05:13:08', '2022-11-05 00:42:08'),
(115, 'blog.content', '{\"heading\":\"Blog Section\",\"subheading\":\"Blog\"}', 'ptc_diamond', 0, '2022-10-22 05:13:15', '2022-10-22 05:13:15'),
(116, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Dit boek is een verhand eling over de\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353da51703671666439761.png\"}', 'ptc_diamond', 0, '2022-10-22 05:13:15', '2022-10-22 05:56:01'),
(117, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Dit boek is een verhand eling over de\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353da5e5f0c71666439774.png\"}', 'ptc_diamond', 27, '2022-10-22 05:13:15', '2022-10-26 02:46:42'),
(118, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Er zijn vele variaties van passages van\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353da6f575171666439791.png\"}', 'ptc_diamond', 2, '2022-10-22 05:13:15', '2022-11-05 07:00:30');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `template_name`, `view`, `created_at`, `updated_at`) VALUES
(119, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Het is al geruime tijd een bekend geg\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353da79b93f71666439801.png\"}', 'ptc_diamond', 24, '2022-10-22 05:13:15', '2022-11-05 07:00:27'),
(120, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Law firm opened near to that gonig to\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353da8e4db201666439822.png\"}', 'ptc_diamond', 12, '2022-10-22 05:13:15', '2022-11-04 23:50:02'),
(121, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Law firm opened near to that gonig to\",\"description\":\"<p style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered that the alteration in some form by injected humour or the an randomised words which don\'t look even evry is and slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn\'t is the anything aembarrassing hidden in the middle of text.Ipsum available but the majority have that suffered is alteration in some form by injected humour or randomised words.<\\/p><p class=\\\"marked\\\" style=\\\"margin:20px 0px 21px;font-size:16px;color:rgb(0,0,80);line-height:30px;font-style:italic;font-family:\'Noto Sans\', sans-serif;\\\">All their equipment and instruments are alive.All their equipment and instruments are alive. I the that about to watched storm, so beautiful terrific.Silver mist suffused the deck the ship.The are recorded voice the a dumm a scratched the Tthst speaker. Almost before we knew it.Almost is before we knew it we had left the dummy is ground.<\\/p><p style=\\\"margin:20px 0px 6px;font-size:16px;color:rgb(102,102,102);line-height:30px;font-family:\'Noto Sans\', sans-serif;\\\">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha is and instruments are alive.All their equipment and instruments are alive.I watched the storm so beautiful yet terrific.Silver mist suffused the deck of the ship.<\\/p>\",\"image\":\"6353daa14a4121666439841.png\"}', 'ptc_diamond', 16, '2022-10-22 05:13:15', '2022-10-25 00:47:39'),
(122, 'breadcrumb.content', '{\"has_image\":\"1\",\"image\":\"6353da0bc1a7a1666439691.png\"}', 'ptc_diamond', 0, '2022-10-22 05:13:20', '2022-10-22 05:54:51'),
(131, 'contact.content', '{\"has_image\":\"1\",\"heading\":\"Send Your Messages\",\"image\":\"6353db3012f591666439984.png\"}', 'ptc_diamond', 0, '2022-10-22 05:20:10', '2022-10-22 05:59:44'),
(132, 'contact.element', '{\"icon\":\"<i class=\\\"far fa-envelope\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"contact@ptcl.com\"}', 'ptc_diamond', 0, '2022-10-22 05:20:10', '2022-10-22 05:20:10'),
(133, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+012-345-67890\"}', 'ptc_diamond', 0, '2022-10-22 05:20:10', '2022-10-22 05:20:10'),
(134, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-map-marker-alt\\\"><\\/i>\",\"title\":\"Office Address\",\"content\":\"ABC road street, Cool City\"}', 'ptc_diamond', 0, '2022-10-22 05:20:10', '2022-10-22 05:20:10'),
(135, 'counter.content', '{\"has_image\":\"1\",\"heading\":\"Best Place To Earn Money Online Join Us\",\"subheading\":\"Discover More\",\"description\":\"Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque natus, repellendus consequatur, animi minima ex quidem temporibus ab odio, eaque aliquid consectetur.\",\"background_image\":\"6353d5cdce1e71666438605.png\"}', 'ptc_diamond', 0, '2022-10-22 05:20:16', '2022-10-22 05:36:46'),
(136, 'counter.element', '{\"title\":\"Withdraw\",\"number\":\"$50\",\"range\":\"K+\"}', 'ptc_diamond', 0, '2022-10-22 05:20:16', '2022-10-23 05:07:42'),
(137, 'counter.element', '{\"title\":\"Users\",\"number\":\"30\",\"range\":\"K+\"}', 'ptc_diamond', 0, '2022-10-22 05:20:16', '2022-10-23 05:08:04'),
(138, 'counter.element', '{\"title\":\"Impression\",\"number\":\"20\",\"range\":\"M+\"}', 'ptc_diamond', 0, '2022-10-22 05:20:16', '2022-10-23 05:08:15'),
(139, 'counter.element', '{\"title\":\"Advertisement\",\"number\":\"568\",\"range\":\"K+\"}', 'ptc_diamond', 0, '2022-10-22 05:20:16', '2022-10-23 05:08:24'),
(140, 'faq.content', '{\"heading\":\"Frequently Asked Question\",\"subheading\":\"FAQ\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(141, 'faq.element', '{\"question\":\"What constitutes a quorum in a PTC?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(142, 'faq.element', '{\"question\":\"What constitutes a positive or negative vote in PTCs?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(143, 'faq.element', '{\"question\":\"Can an abstention vote be cast at a PTC meeting?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(144, 'faq.element', '{\"question\":\"Can a faculty member on OCSA or FML serve on a PTC?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(145, 'faq.element', '{\"question\":\"How will additional members of PTCs be elected in departments with fewer than four tenured faculty members?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(146, 'faq.element', '{\"question\":\"How can absentee ballots be cast?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(147, 'faq.element', '{\"question\":\"Why should members of the PTC fill out vote justification forms explaining their votes?\",\"answer\":\"The standard definition of a quorum in Robert\'s Rules of Order is that the majority of an assembly must be present to conduct business. That is, if there are twenty members of a group, eleven must be present to constitute a quorum. The same requirement for a quorum applies to PTCs, with one additional provision. The Handbook (4.1.8.3) provides that absentee votes will be counted in PTCs, whereas Robert\'s Rules really do not provide for a mixture of absentee and in-person votes in an assembly\"}', 'ptc_diamond', 0, '2022-10-22 05:20:22', '2022-10-22 05:20:22'),
(148, 'features.content', '{\"heading\":\"Features Which Helps You Earn More\",\"subheading\":\"Our Features\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(149, 'features.element', '{\"icon\":\"<i class=\\\"las la-globe-americas\\\"><\\/i>\",\"title\":\"We\'re Global\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(150, 'features.element', '{\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"title\":\"Best Support\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(151, 'features.element', '{\"icon\":\"<i class=\\\"lab la-bitcoin\\\"><\\/i>\",\"title\":\"We Accept Crypto\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(152, 'features.element', '{\"icon\":\"<i class=\\\"las la-chart-bar\\\"><\\/i>\",\"title\":\"We\'re Profitable\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(153, 'features.element', '{\"icon\":\"<i class=\\\"las la-lock\\\"><\\/i>\",\"title\":\"We\'re Secure\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(154, 'features.element', '{\"icon\":\"<i class=\\\"lar la-copy\\\"><\\/i>\",\"title\":\"We\'re Certified\",\"content\":\"Voluptatibus at vero, amet sit esse sequi quam odio debitis. Nulla porro tenetur adipisci laborum sunt repellendus error, asperiores quam nobis sit!\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(155, 'features.element', '{\"icon\":\"<i class=\\\"las la-file-invoice-dollar\\\"><\\/i>\",\"title\":\"Earning Statement\",\"content\":\"Search engine advertising, also known as search engine marketing (SEM), allows you to show ads to users based on the keywords.\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(156, 'features.element', '{\"icon\":\"<i class=\\\"lar la-credit-card\\\"><\\/i>\",\"title\":\"Secure Transection\",\"content\":\"Search engine advertising, also known as search engine marketing (SEM), allows you to show ads to users based on the keywords.\"}', 'ptc_diamond', 0, '2022-10-22 05:20:28', '2022-10-22 05:20:28'),
(157, 'testimonial.content', '{\"heading\":\"What Our Clients Say\",\"subheading\":\"Testimonial\"}', 'ptc_diamond', 0, '2022-10-22 05:24:43', '2022-10-22 05:24:43'),
(158, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Chris Hamsorth\",\"designation\":\"PTC Player\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"Design Quality\",\"image\":\"6353da1fdaed41666439711.png\"}', 'ptc_diamond', 0, '2022-10-22 05:24:43', '2022-10-22 05:55:11'),
(159, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"John Doe\",\"designation\":\"Businessman\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"For Support\",\"image\":\"6353da26117611666439718.png\"}', 'ptc_diamond', 0, '2022-10-22 05:24:43', '2022-10-22 05:55:18'),
(160, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Rajendra\",\"designation\":\"Web Developer\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.v\",\"reason\":\"Code Quality\",\"image\":\"6353da2be597b1666439723.png\"}', 'ptc_diamond', 0, '2022-10-22 05:24:43', '2022-10-22 05:55:23'),
(161, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Peter Parker\",\"designation\":\"Microtech, Inc.\",\"comment\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus fuga, lauda ium odio dolor ut  iusto,  pariatur neque ique quod ratione tempore velit iure sapiente beatae id dolores.\",\"reason\":\"Design Quality\",\"image\":\"6353da31690f01666439729.png\"}', 'ptc_diamond', 0, '2022-10-22 05:24:43', '2022-10-22 05:55:29'),
(162, 'header.content', '{\"phone\":\"+1212121245545\",\"email\":\"company@email.com\"}', 'ptc_diamond', 0, '2022-10-22 05:26:04', '2022-10-22 05:26:04'),
(163, 'footer.content', '{\"heading\":\"About Us\",\"description\":\"Maecenas tempus tellus egondime honcus sequam seitmet dipiscing sem eque sedipsuNam quam egondime honcus sequam\"}', 'ptc_diamond', 0, '2022-10-22 05:26:20', '2022-10-22 05:26:20'),
(164, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d507b0c481666438407.png\"}', 'ptc_diamond', 0, '2022-10-22 05:33:27', '2022-10-22 05:33:27'),
(165, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d50cc10a11666438412.png\"}', 'ptc_diamond', 0, '2022-10-22 05:33:32', '2022-10-22 05:33:32'),
(166, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d512b35a71666438418.png\"}', 'ptc_diamond', 0, '2022-10-22 05:33:38', '2022-10-22 05:33:38'),
(167, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d51b1e5f31666438427.png\"}', 'ptc_diamond', 0, '2022-10-22 05:33:47', '2022-10-22 05:33:47'),
(168, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d524125c01666438436.png\"}', 'ptc_diamond', 0, '2022-10-22 05:33:56', '2022-10-22 05:33:56'),
(169, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d528dcbf81666438440.png\"}', 'ptc_diamond', 0, '2022-10-22 05:34:00', '2022-10-22 05:34:00'),
(170, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d52e3b1601666438446.png\"}', 'ptc_diamond', 0, '2022-10-22 05:34:06', '2022-10-22 05:34:06'),
(171, 'client.element', '{\"has_image\":\"1\",\"image\":\"6353d533830ce1666438451.png\"}', 'ptc_diamond', 0, '2022-10-22 05:34:11', '2022-10-22 05:34:11'),
(172, 'login.content', '{\"has_image\":\"1\",\"heading\":\"Sign In\",\"image\":\"6353d5f00b9aa1666438640.png\"}', 'ptc_diamond', 0, '2022-10-22 05:37:10', '2022-10-22 05:37:20'),
(173, 'register.content', '{\"has_image\":\"1\",\"heading\":\"Register New Account\",\"image\":\"6353d9d75dec21666439639.png\"}', 'ptc_diamond', 0, '2022-10-22 05:53:31', '2022-10-22 05:53:59'),
(174, 'plan.content', '{\"heading\":\"Choose The Best Plan\",\"subheading\":\"Our Plan Packages\"}', 'ptc_diamond', 0, '2022-10-22 05:57:34', '2022-10-22 05:57:34'),
(179, 'policy_pages.element', '{\"title\":\"Privacy and Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', 'ptc_diamond', 0, '2022-10-22 06:24:11', '2022-10-22 06:24:11'),
(180, 'policy_pages.element', '{\"title\":\"Payment Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', 'ptc_diamond', 0, '2022-10-22 06:24:11', '2022-10-22 06:24:11'),
(181, 'policy_pages.element', '{\"title\":\"Support Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', 'ptc_diamond', 0, '2022-10-22 06:34:15', '2022-10-22 06:34:15'),
(182, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354ede4936a71666510308.png\"}', 'ptc_diamond', 0, '2022-10-23 01:31:48', '2022-10-23 01:31:48'),
(183, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354edead8ff11666510314.png\"}', 'ptc_diamond', 0, '2022-10-23 01:31:54', '2022-10-23 01:31:54'),
(184, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354edf23219d1666510322.png\"}', 'ptc_diamond', 0, '2022-10-23 01:32:02', '2022-10-23 01:32:02'),
(185, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354fed25f39c1666514642.png\"}', 'ptc_diamond', 0, '2022-10-23 02:44:02', '2022-10-23 02:44:02'),
(186, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354fed9845dc1666514649.png\"}', 'ptc_diamond', 0, '2022-10-23 02:44:09', '2022-10-23 02:44:09'),
(187, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354fedf6ecd71666514655.png\"}', 'ptc_diamond', 0, '2022-10-23 02:44:15', '2022-10-23 02:44:15'),
(188, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354fee3d220e1666514659.png\"}', 'ptc_diamond', 0, '2022-10-23 02:44:19', '2022-10-23 02:44:19'),
(189, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6354fee8ba3d21666514664.png\"}', 'ptc_diamond', 0, '2022-10-23 02:44:24', '2022-10-23 02:44:24'),
(190, 'kyc_info.content', '{\"verification_content\":\"Lorem ipsum, dolor sit amet consectetur adipisicing elit. Hic officia quod natus, non dicta perspiciatis, quae repellendus ea illum aut debitis sint amet? Ratione voluptates beatae numquam.\",\"pending_content\":\"Lorem ipsum, dolor sit amet consectetur adipisicing elit. Hic officia quod natus, non dicta perspiciatis, quae repellendus ea illum aut debitis sint amet? Ratione voluptates beatae numquam.\"}', 'ptc_diamond', 0, '2022-10-24 06:11:25', '2022-10-24 06:11:25'),
(191, 'counter.element', '{\"icon\":null,\"title\":\"Withdraw\",\"number\":\"$50\"}', 'basic', 0, '2022-10-25 03:34:38', '2022-10-25 03:34:38'),
(192, 'counter.element', '{\"icon\":null,\"title\":\"Users\",\"number\":\"30\"}', 'basic', 0, '2022-10-25 03:34:38', '2022-10-25 03:34:38'),
(193, 'counter.element', '{\"icon\":null,\"title\":\"Impression\",\"number\":\"20\"}', 'basic', 0, '2022-10-25 03:34:38', '2022-10-25 03:34:38'),
(194, 'counter.element', '{\"icon\":null,\"title\":\"Advertisement\",\"number\":\"568\"}', 'basic', 0, '2022-10-25 03:34:38', '2022-10-25 03:34:38'),
(195, 'social_icon.element', '{\"title\":\"Facebook\",\"icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\"}', 'ptc_diamond', 0, '2022-11-03 02:44:14', '2022-11-03 02:44:14'),
(196, 'social_icon.element', '{\"title\":\"Twitter\",\"icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/twitter.com\"}', 'ptc_diamond', 0, '2022-11-03 02:44:31', '2022-11-03 02:44:31'),
(197, 'social_icon.element', '{\"title\":\"LinkedIn\",\"icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\"}', 'ptc_diamond', 0, '2022-11-03 02:45:13', '2022-11-03 02:45:13'),
(198, 'social_icon.element', '{\"title\":\"Instagram\",\"icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\"}', 'ptc_diamond', 0, '2022-11-03 02:45:32', '2022-11-03 02:45:32'),
(199, 'notice.content', '{\"scroling_notice\":\"Here is some scrolling text... right to left!\",\"invite_page_notice\":\"<h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>Award of registration:<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>New user registration will receive 18 BDT registration<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>bonus. After successfully registering and inviting friends,<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>you will receive invitation rewards and daily task commissions<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b><br \\/><\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>Invite friends to earn money:<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>If you invite friends to join, you can get 10% of the<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>subscription amount.<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b><br \\/><\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>Read Articles to Earn:<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>Reading can profit from Level 1 Acquisition (5%),<\\/b><\\/span><\\/font><\\/h5><h5 class=\\\"small-font-lg text-light\\\"><font color=\\\"#f8f9fa\\\" face=\\\"Poppins, Bangla113, sans-serif\\\"><span style=\\\"font-size:14px;\\\"><b>Level 2 Acquisition (2%) and Level 3 Acquisition (1%).<\\/b><\\/span><\\/font><\\/h5>\",\"invite_notice\":\"Gog shu \'I, very lucky. 10 minutes a day, easily earn 2,000 and 100,000, share with friends, find bonuses:\",\"recharge_notice\":\"Reminder: The platform bank account changes any time, every deposit, go to top page to get the last account number, no liability for us if you deposit into overdue account.\",\"withdraw_notice\":\"Award of registration:\\nNew user registration will receive 18 BDT registration\\nbonus. After successfully registering and inviting friends,\\nyou will receive invitation rewards and daily task commissions\"}', 'basic', 0, '2023-10-09 19:37:05', '2023-10-09 20:22:03'),
(200, 'links.content', '{\"customer_service\":\"https:\\/\\/t.me\\/#\"}', 'basic', 0, '2023-10-10 17:23:34', '2024-02-19 03:45:23'),
(201, 'popup.content', '{\"notice\":\"Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden.\\n\\nThe him father parish looked has sooner. Attachment frequently gay terminated son. You greater nay use prudent placing. Passage to so distant behaved natural between do talking. Friends off her windows painful. Still gay event you being think nay for. In three if aware he point it. Effects warrant me by no on feeling settled resolve.\"}', 'basic', 0, '2023-10-23 18:03:17', '2023-10-23 18:04:01'),
(202, 'banner.element', '{\"has_image\":\"1\",\"image\":\"65d64d9e4fd051708543390.png\"}', 'basic', 0, '2024-02-21 19:15:54', '2024-02-21 19:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` int UNSIGNED NOT NULL DEFAULT '0',
  `code` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `admin_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `admin_number`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal', 'Paypal', NULL, '5f6f1bd8678601601117144.jpg', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 0, 102, 'Perfect Money', 'PerfectMoney', NULL, '5f6f1d2a742211601117482.jpg', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
(3, 0, 103, 'Stripe Hosted', 'Stripe', NULL, '5f6f1d4bc69e71601117515.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
(4, 0, 104, 'Skrill', 'Skrill', NULL, '5f6f1d41257181601117505.jpg', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
(5, 0, 105, 'PayTM', 'Paytm', NULL, '5f6f1d1d3ec731601117469.jpg', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
(6, 0, 106, 'Payeer', 'Payeer', NULL, '5f6f1bc61518b1601117126.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 0, 107, 'PayStack', 'Paystack', NULL, '5f7096563dfb71601214038.jpg', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
(8, 0, 108, 'VoguePay', 'Voguepay', NULL, '5f6f1d5951a111601117529.jpg', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
(9, 0, 109, 'Flutterwave', 'Flutterwave', NULL, '5f6f1b9e4bb961601117086.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
(10, 0, 110, 'RazorPay', 'Razorpay', NULL, '5f6f1d3672dd61601117494.jpg', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 0, 111, 'Stripe Storefront', 'StripeJs', NULL, '5f7096a31ed9a1601214115.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
(12, 0, 112, 'Instamojo', 'Instamojo', NULL, '5f6f1babbdbb31601117099.jpg', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
(13, 0, 501, 'Blockchain', 'Blockchain', NULL, '5f6f1b2b20c6f1601116971.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2022-03-21 07:41:56'),
(15, 0, 503, 'CoinPayments', 'Coinpayments', NULL, '5f6f1b6c02ecd1601117036.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------------------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"----------------------------------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"--------------------------\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT.TRC20\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2022-05-08 08:15:32'),
(16, 0, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', NULL, '5f6f1b94e9b2b1601117076.jpg', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
(17, 0, 505, 'Coingate', 'Coingate', NULL, '5f6f1b5fe18ee1601117023.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2022-03-30 09:24:57'),
(18, 0, 506, 'Coinbase Commerce', 'CoinbaseCommerce', NULL, '5f6f1b4c774af1601117004.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
(24, 0, 113, 'Paypal Express', 'PaypalSdk', NULL, '5f6f1bec255c61601117164.jpg', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
(25, 0, 114, 'Stripe Checkout', 'StripeV3', NULL, '5f709684736321601214084.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 0, 115, 'Mollie', 'Mollie', NULL, '5f6f1bb765ab11601117111.jpg', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
(30, 0, 116, 'Cashmaal', 'Cashmaal', NULL, '60d1a0b7c98311624350903.png', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, '2021-06-22 08:05:04'),
(36, 0, 119, 'Mercado Pago', 'MercadoPago', NULL, '60f2ad85a82951626516869.png', 1, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2021-07-17 09:44:29'),
(49, 0, 120, 'Authorize.net', 'Authorize', NULL, NULL, 1, '{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"3Vee5S2F\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2021-07-17 09:44:29'),
(50, 0, 121, 'NMI', 'NMI', NULL, NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------\"}}', '{\"AED\":\"AED\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"RUB\":\"RUB\",\"SEC\":\"SEC\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2022-08-28 10:12:37'),
(56, 0, 510, 'BTCPay', 'BTCPay', NULL, NULL, 1, '{\"store_id\":{\"title\":\"Store Id\",\"global\":true,\"value\":\"-------\"},\"api_key\":{\"title\":\"Api Key\",\"global\":true,\"value\":\"------\"},\"server_name\":{\"title\":\"Server Name\",\"global\":true,\"value\":\"https:\\/\\/yourbtcpaserver.lndyn.com\"},\"secret_code\":{\"title\":\"Secret Code\",\"global\":true,\"value\":\"----------\"}}', '{\"BTC\":\"Bitcoin\",\"LTC\":\"Litecoin\"}', 1, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.BTCPay\"}}', NULL, NULL, NULL),
(57, 0, 511, 'Now payments hosted', 'NowPaymentsHosted', NULL, NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2023-02-14 10:42:09'),
(58, 0, 509, 'Now payments checkout', 'NowPaymentsCheckout', NULL, NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2023-02-14 10:42:09'),
(59, 0, 122, '2Checkout', 'TwoCheckout', NULL, NULL, 1, '{\"merchant_code\": {\"title\": \"Merchant Code\",\"global\": true,\"value\": \"---------\"},\"secret_key\": {\"title\": \"Secret Key\",\"global\": true,\"value\": \"--------\"}}', '{\"AFN\": \"AFN\",\"ALL\": \"ALL\",\"DZD\": \"DZD\",\"ARS\": \"ARS\",\"AUD\": \"AUD\",\"AZN\": \"AZN\",\"BSD\": \"BSD\",\"BDT\": \"BDT\",\"BBD\": \"BBD\",\"BZD\": \"BZD\",\"BMD\": \"BMD\",\"BOB\": \"BOB\",\"BWP\": \"BWP\",\"BRL\": \"BRL\",\"GBP\": \"GBP\",\"BND\": \"BND\",\"BGN\": \"BGN\",\"CAD\": \"CAD\",\"CLP\": \"CLP\",\"CNY\": \"CNY\",\"COP\": \"COP\",\"CRC\": \"CRC\",\"HRK\": \"HRK\",\"CZK\": \"CZK\",\"DKK\": \"DKK\",\"DOP\": \"DOP\",\"XCD\": \"XCD\",\"EGP\": \"EGP\",\"EUR\": \"EUR\",\"FJD\": \"FJD\",\"GTQ\": \"GTQ\",\"HKD\": \"HKD\",\"HNL\": \"HNL\",\"HUF\": \"HUF\",\"INR\": \"INR\",\"IDR\": \"IDR\",\"ILS\": \"ILS\",\"JMD\": \"JMD\",\"JPY\": \"JPY\",\"KZT\": \"KZT\",\"KES\": \"KES\",\"LAK\": \"LAK\",\"MMK\": \"MMK\",\"LBP\": \"LBP\",\"LRD\": \"LRD\",\"MOP\": \"MOP\",\"MYR\": \"MYR\",\"MVR\": \"MVR\",\"MRO\": \"MRO\",\"MUR\": \"MUR\",\"MXN\": \"MXN\",\"MAD\": \"MAD\",\"NPR\": \"NPR\",\"TWD\": \"TWD\",\"NZD\": \"NZD\",\"NIO\": \"NIO\",\"NOK\": \"NOK\",\"PKR\": \"PKR\",\"PGK\": \"PGK\",\"PEN\": \"PEN\",\"PHP\": \"PHP\",\"PLN\": \"PLN\",\"QAR\": \"QAR\",\"RON\": \"RON\",\"RUB\": \"RUB\",\"WST\": \"WST\",\"SAR\": \"SAR\",\"SCR\": \"SCR\",\"SGD\": \"SGD\",\"SBD\": \"SBD\",\"ZAR\": \"ZAR\",\"KRW\": \"KRW\",\"LKR\": \"LKR\",\"SEK\": \"SEK\",\"CHF\": \"CHF\",\"SYP\": \"SYP\",\"THB\": \"THB\",\"TOP\": \"TOP\",\"TTD\": \"TTD\",\"TRY\": \"TRY\",\"UAH\": \"UAH\",\"AED\": \"AED\",\"USD\": \"USD\",\"VUV\": \"VUV\",\"VND\": \"VND\",\"XOF\": \"XOF\",\"YER\": \"YER\"}', 1, '{\"approved_url\":{\"title\": \"Approved URL\",\"value\":\"ipn.TwoCheckout\"}}', NULL, NULL, '2023-02-14 10:42:09'),
(60, 0, 123, 'Checkout', 'Checkout', NULL, NULL, 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_f7f9a069-dcc5-45d8-aa72-e60f605c9514\"},\"public_key\":{\"title\":\"PUBLIC KEY\",\"global\":true,\"value\":\"pk_66e19b3f-a431-44ff-823f-d773d960f6b9\"},\"processing_channel_id\":{\"title\":\"PROCESSING CHANNEL\",\"global\":true,\"value\":\"---\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"AUD\":\"AUD\",\"CAN\":\"CAN\",\"CHF\":\"CHF\",\"SGD\":\"SGD\",\"JPY\":\"JPY\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, NULL),
(61, 6, 1000, 'bKash', 'bkash', '017xxxxxx66', NULL, 1, '[]', '[]', 0, NULL, NULL, '2023-08-10 16:28:54', '2023-12-29 21:51:06'),
(62, 9, 1001, 'Nagad', 'nagad', '017xxxxxx66', NULL, 1, '[]', '[]', 0, NULL, NULL, '2023-10-17 21:49:20', '2023-12-29 21:51:04'),
(63, 10, 1002, 'USDT', 'usdt', 'TMBeViiBxxSGmPiMgbvWBwF4ngSbmr8888', NULL, 1, '[]', '[]', 0, NULL, NULL, '2024-01-08 22:55:51', '2024-01-08 22:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int DEFAULT NULL,
  `admin_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_alias` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `max_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `admin_number`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'bKash', 'Taka', '', 1000, '017xxxxxx66', 'bkash', 5.00000000, 5000.00000000, 0.00, 0.00000000, 100.00000000, NULL, NULL, '2023-08-10 16:28:54', '2024-01-06 17:35:57'),
(2, 'Nagad', 'Taka', '', 1001, '017xxxxxx66', 'nagad', 5.00000000, 5000.00000000, 0.00, 0.00000000, 100.00000000, NULL, NULL, '2023-10-17 21:49:20', '2024-01-06 17:35:39'),
(3, 'USDT', 'USDT', '', 1002, 'TMBeViiBxxSGmPiMgbvWBwF4ngSbmr8888', 'usdt', 5.00000000, 500.00000000, 0.00, 0.00000000, 1.00000000, NULL, NULL, '2024-01-08 22:55:51', '2024-01-08 22:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'email configuration',
  `sms_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `global_shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_downloads` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_review` int DEFAULT '0',
  `app_about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `app_logo_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_for_all` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `holiday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT '0',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `multi_language` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_commission` tinyint(1) NOT NULL DEFAULT '0',
  `plan_subscribe_commission` tinyint(1) NOT NULL DEFAULT '0',
  `ptc_view_commission` tinyint(1) NOT NULL DEFAULT '0',
  `system_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `registration_bonus` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `bt_fixed` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `bt_percent` decimal(11,2) NOT NULL DEFAULT '0.00',
  `paid_spin_charge` decimal(28,8) DEFAULT '0.00000000',
  `diamond_rate` decimal(28,8) DEFAULT '0.00000000',
  `swap_deposit_need` decimal(28,8) DEFAULT '0.00000000',
  `isSwap` tinyint DEFAULT '0',
  `balance_transfer` tinyint(1) NOT NULL DEFAULT '0',
  `default_plan` int NOT NULL DEFAULT '0',
  `user_ads_post` tinyint(1) NOT NULL DEFAULT '0',
  `ad_auto_approve` tinyint(1) NOT NULL DEFAULT '0',
  `ads_setting` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `socialite_credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_body`, `sms_from`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `global_shortcodes`, `app_name`, `app_company_name`, `app_downloads`, `app_rating`, `app_review`, `app_about`, `app_logo_name`, `app_file_name`, `notice_for_all`, `holiday`, `kv`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `maintenance_mode`, `secure_password`, `agree`, `multi_language`, `registration`, `active_template`, `deposit_commission`, `plan_subscribe_commission`, `ptc_view_commission`, `system_info`, `registration_bonus`, `bt_fixed`, `bt_percent`, `paid_spin_charge`, `diamond_rate`, `swap_deposit_need`, `isSwap`, `balance_transfer`, `default_plan`, `user_ads_post`, `ad_auto_approve`, `ads_setting`, `socialite_credentials`, `created_at`, `updated_at`) VALUES
(1, 'Stock Market', 'USDT', '$', 'info@gmail.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: &quot;Open sans&quot;, Arial, Bangla1060, sans-serif; color: rgb(255, 255, 255); font-size: 16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <br>\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: &quot;Open Sans&quot;, Arial, Bangla1060, sans-serif; font-size: 22px; color: rgb(65, 74, 81); font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: &quot;Open sans&quot;, Arial, Bangla1060, sans-serif; color: rgb(127, 140, 141); font-size: 16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: &quot;Open sans&quot;, Arial, Bangla1060, sans-serif; color: rgb(149, 165, 166); font-size: 14px;\">\r\n                          © 2021 <a href=\"#\">{{site_name}}</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{fullname}} ({{username}}), {{message}}', 'INFORMATION', '00D093', '00160F', '{\"name\":\"php\"}', '{\"name\":\"infobip\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"----------------\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 'StockV5', 'Hashtag Apps', '5K', '5.0', 500, 'Little moments lead to big friendships. Share yours on Instagram.', '1708199391.png', '1704733183.apk', 'One important aspect of communication is business\r\ncommunication, also known as formal communication. Formal\r\nletters, memos, circulars etc are all forms of business\r\ncommunication. Another important tool of the same is a\r\nnotice. Let us learn the meaning of notices and details of\r\nnotice-writing.', 'Friday', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'basic', 0, 1, 1, '[]', 10.00000000, 2.00000000, 2.00, 1.00000000, 0.50000000, 20.00000000, 1, 1, 0, 1, 0, '{\"ad_price\":{\"script\":\"0.25\",\"image\":\"0.25\",\"url\":\"0.25\",\"youtube\":\"0.25\"},\"amount_for_user\":{\"script\":\"0.15\",\"image\":\"0.15\",\"url\":\"0.15\",\"youtube\":\"0.15\"}}', '{\"google\":{\"client_id\":\"--------------\",\"client_secret\":\"------------\",\"status\":1},\"facebook\":{\"client_id\":\"---------------\",\"client_secret\":\"----------------\",\"status\":1},\"linkedin\":{\"client_id\":\"--------------\",\"client_secret\":\"--------------\",\"status\":1}}', NULL, '2024-02-22 06:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2020-07-06 03:47:55', '2022-04-09 03:47:04'),
(5, 'Hindi', 'hn', 0, '2020-12-29 02:20:07', '2022-04-09 03:47:04'),
(9, 'Bangla', 'bn', 0, '2021-03-14 04:37:41', '2022-03-30 12:31:55'),
(11, 'Spanish', 'es', 0, '2022-04-28 04:39:33', '2022-04-28 04:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_01_233530_create_runing_plans_table', 1),
(3, '2024_01_09_001125_create_app_screenshots_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

CREATE TABLE `notification_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_from` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notification_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `act` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sms_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_status` tinyint(1) NOT NULL DEFAULT '1',
  `sms_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'BAL_ADD', 'Balance - Added', 'Your Account has been Credited', '<div><div style=\"font-family: Montserrat, Bangla458, sans-serif;\">{{amount}} {{site_currency}} has been added to your account .</div><div style=\"font-family: Montserrat, Bangla458, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla458, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla458, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, Bangla458, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, Bangla458, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}&nbsp;</span></font><br></div><div><font style=\"font-family: Montserrat, Bangla458, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin note:&nbsp;<span style=\"color: rgb(33, 37, 41); font-size: 12px; font-weight: 600; white-space: nowrap; text-align: var(--bs-body-text-align);\">{{remark}}</span></div>', '{{amount}} {{site_currency}} credited in your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin note is \"{{remark}}\"', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 0, 0, '2021-11-03 12:00:00', '2023-10-23 20:07:49'),
(2, 'BAL_SUB', 'Balance - Subtracted', 'Your Account has been Debited', '<div style=\"font-family: Montserrat, Bangla849, sans-serif;\">{{amount}} {{site_currency}} has been subtracted from your account .</div><div style=\"font-family: Montserrat, Bangla849, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla849, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla849, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, Bangla849, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, Bangla849, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}</span></font><br><div><font style=\"font-family: Montserrat, Bangla849, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin Note: {{remark}}</div>', '{{amount}} {{site_currency}} debited from your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin Note is {{remark}}', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:07:56'),
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '<div>Your deposit of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been completed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#000000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Received : {{method_amount}} {{method_currency}}<br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div><br style=\"font-family: Montserrat, Bangla370, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit successfully by {{method_name}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:07:41'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Your Deposit is Approved', '<div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>is Approved .<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla946, sans-serif;\"><br></div>', 'Admin Approve Your {{amount}} {{site_currency}} payment request by {{method_name}} transaction : {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:07:29'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Your Deposit Request is Rejected', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}} has been rejected</span>.<span style=\"font-weight: bolder;\"><br></span></div><div><br></div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge: {{charge}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number was : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">if you have any queries, feel free to contact us.<br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><br><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">{{rejection_message}}</span><br>', 'Admin Rejected Your {{amount}} {{site_currency}} payment request by {{method_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 0, 1, '2021-11-03 12:00:00', '2022-04-05 03:45:27'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>submitted successfully<span style=\"font-weight: bolder;\">&nbsp;.<br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}}<br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br style=\"font-family: Montserrat, Bangla639, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit requested by {{method_name}}. Charge: {{charge}} . Trx: {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:07:15'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '<div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">{{time}} .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">{{code}}</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div>', 'Your account recovery code is: {{code}}', '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 0, 0, '2021-11-03 12:00:00', '2022-03-20 20:47:05'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'You have reset your password', '<p style=\"font-family: Montserrat, Bangla207, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, Bangla207, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{time}}</span></p><p style=\"font-family: Montserrat, Bangla207, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, Bangla207, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p>', 'Your password has been changed successfully', '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:06:13'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Reply Support Ticket', '<div><p><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\">A member from our support team has replied to the following ticket:</span></span></p><p><span style=\"font-weight: bolder;\"><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\"><br></span></span></span></p><p><span style=\"font-weight: bolder;\">[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</span></p><p>----------------------------------------------</p><p>Here is the reply :<br></p><p>{{reply}}<br></p></div><div><br style=\"font-family: Montserrat, Bangla537, sans-serif;\"></div>', 'Your Ticket#{{ticket_id}} :  {{ticket_subject}} has been replied.', '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:05:16'),
(10, 'EVER_CODE', 'Verification - Email', 'Please verify your email address', '<br><div><div style=\"font-family: Montserrat, Bangla850, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, Bangla850, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, Bangla850, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla850, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;{{code}}</span></font></div></div>', '---', '{\"code\":\"Email verification code\"}', 0, 0, '2021-11-03 12:00:00', '2023-10-23 20:04:58'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', '---', 'Your phone verification code is: {{code}}', '{\"code\":\"SMS Verification Code\"}', 0, 1, '2021-11-03 12:00:00', '2022-03-20 19:24:37'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Approved', 'Withdraw Request has been Processed and your money is sent', '<div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Processed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\">-----</div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><font size=\"4\">Details of Processed Payment :</font></div><div style=\"font-family: Montserrat, Bangla784, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div>', 'Admin Approve Your {{amount}} {{site_currency}} withdraw request by {{method_name}}. Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:04:40'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Rejected.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">You should get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">----</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><font size=\"3\"><br></font></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><font size=\"3\">{{amount}} {{currency}} has been&nbsp;<span style=\"font-weight: bolder;\">refunded&nbsp;</span>to your account and your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}}</span><span style=\"font-weight: bolder;\">&nbsp;{{site_currency}}</span></font></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\">-----</div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><font size=\"4\">Details of Rejection :</font></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla1050, sans-serif;\"><br><br><br><br><br></div><div></div><div></div>', 'Admin Rejected Your {{amount}} {{site_currency}} withdraw request. Your Main Balance {{post_balance}}  {{method_name}} , Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:04:30'),
(14, 'WITHDRAW_REQUEST', 'Withdraw - Requested', 'Withdraw Request Submitted Successfully', '<div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been submitted Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br></div><div style=\"font-family: Montserrat, Bangla899, sans-serif;\"><br><br><br></div>', '{{amount}} {{site_currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} Trx: {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}', 0, 1, '2021-11-03 12:00:00', '2023-10-23 20:04:17'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{message}}', '{{message}}', '{\"subject\":\"Subject\",\"message\":\"Message\"}', 0, 1, '2019-09-14 13:14:22', '2021-11-04 09:38:55'),
(16, 'KYC_APPROVE', 'KYC Approved', 'KYC has been approved', '<br>', 'a', '[]', 0, 1, NULL, '2023-10-23 20:06:59'),
(17, 'KYC_REJECT', 'KYC Rejected Successfully', 'KYC has been rejected', '<br>', 'a', '[]', 0, 1, NULL, '2023-10-23 20:06:46'),
(19, 'BALANCE_TRANSFER', 'Balance Transfer', 'Balance Transfer', 'You\'ve sent {{amount}} {{site_currency}} to {{receiver}}. The transaction number was #{{trx}}. Your current balance is {{post_balance}} {{site_currency}}', 'You\'ve sent {{amount}} {{site_currency}} to {{receiver}}. The transaction number was #{{trx}}. Your current balance is {{post_balance}} {{site_currency}}', '{\"amount\":\"Amount\",\"trx\":\"Transaction Number\",\"charge\":\"Charge\",\"afterCharge\":\"After Charge\",\"post_balance\":\"Post Balance\",\"receiver\":\"Receiver\"}', 0, 1, NULL, '2022-04-28 02:55:03'),
(20, 'BALANCE_RECEIVE', 'Balance Receive', 'Balance Receive', 'You\'ve received {{amount}} {{site_currency}} from {{sender}}. The transaction number is #{{trx}}', 'You\'ve received {{amount}} {{site_currency}} from {{sender}}. The transaction number is #{{trx}}', '{\"amount\":\"Amount\",\"trx\":\"Transaction Number\",\"post_balance\":\"Post Balance\",\"sender\":\"Sender\"}', 0, 1, NULL, '2023-10-23 20:08:05'),
(21, 'REFERRAL_COMMISSION', 'Referral Commission', 'Referral commission got successfully', 'You have got {{amount}} {{site_currency}} referral commission as {{level}} position for {{type}} of your referral. Your current balance is {{post_balance}} {{site_currency}} and the transaction number is {{trx}}', 'You have got {{amount}} {{currency_symbol}} referral commission as {{level}} position for {{type}} of your referral. Your current balance is {{post_balance}} {{currency_symbol}} and the transaction number is {{trx}}', '{\"amount\":\"Amount of commission\",\"post_balance\":\"Balance after commission\",\"trx\":\"Transaction number\",\"level\":\"Level of referral\",\"type\":\"Type of commission\"}', 0, 0, NULL, '2023-10-23 20:05:32'),
(22, 'BUY_PLAN', 'Subscribed Plan', 'You\'ve subscribed successfully', 'You\'ve subscribed to {{plan_name}} plan. The price {{amount}} {{currency}}. The transaction number is #{{trx}}. Your current is {{post_balance}} {{currency}}', 'You\'ve subscribed to {{plan_name}} plan. The price {{amount}} {{currency}}. The transaction number is #{{trx}}. Your current is {{post_balance}} {{currency}}', '{\"amount\":\"Price of the plan\",\"plan_name\":\"Name of plan\",\"trx\":\"Transaction number\",\"post_balance\":\"Balance after transactions\"}', 0, 1, NULL, '2023-10-23 20:05:23'),
(23, 'PTC_APPROVE', 'PTC Approved', 'PTC Advertisement Approved', 'Your ad {{title}} has been approved successfully. There are {{quantity}} click is available for this ad. The duration was&nbsp; {{duration}} seconds', 'Your ad {{title}} has been approved successfully. There are {{quantity}} click is available for this ad. The duration was  {{duration}} seconds', '{\"title\":\"PTC title\",\"quantity\":\"PTC quantity\",\"duration\":\"PTC duration\"}', 0, 1, NULL, '2023-10-23 20:06:00'),
(24, 'PTC_REJECT', 'PTC Rejected', 'PTC Advertisement Rejected', 'Your ad {{title}} has been rejected. Your ad quantity was {{quantity}}. and duration was {{duration}} seconds. You\'ve got back {{back_amount}} {{site_currency}} after rejection. Your current balance is {{post_balance}} {{site_currencuy}}.The transaction number was {{trx}}', 'Your ad {{title}} has been rejected. Your ad quantity was {{quantity}}. and duration was {{duration}} seconds. You\'ve got back {{back_amount}} {{site_currency}} after rejection. Your current balance is {{post_balance}} {{site_currencuy}}.The transaction number was {{trx}}', '{\"title\":\"PTC title\",\"quantity\":\"PTC quantity\",\"duration\":\"PTC duration\",\"back_amount\":\"Backed amount after rejection\",\"trx\":\"Transaction number\",\"post_balance\":\"Balance after transaction\"}', 0, 1, NULL, '2023-10-23 20:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', '/', 'templates.basic.', '[\"about\",\"features\",\"plan\",\"counter\",\"faq\",\"testimonial\",\"blog\"]', 1, '2020-07-11 06:23:58', '2022-04-23 08:01:20'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-10-22 01:14:43'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(19, 'About', 'about-us', 'templates.basic.', '[\"about\"]', 0, '2022-05-08 03:18:46', '2023-08-10 17:34:31'),
(20, 'HOME', '/', 'templates.ptc_diamond.', '[\"brand\",\"about\",\"features\",\"faq\",\"plan\",\"counter\",\"testimonial\",\"blog\"]', 1, NULL, '2022-10-30 03:04:45'),
(21, 'Blog', 'blog', 'templates.ptc_diamond.', NULL, 1, NULL, NULL),
(22, 'Contact', 'contact', 'templates.ptc_diamond.', NULL, 1, NULL, NULL),
(23, 'About', 'about', 'templates.ptc_diamond.', '[\"about\",\"testimonial\",\"faq\"]', 0, '2022-10-20 02:38:45', '2022-10-22 03:27:58'),
(24, 'Plans', 'plans', 'templates.ptc_diamond.', '[\"faq\"]', 1, NULL, '2022-10-30 03:08:45'),
(25, 'Plans', 'plans', 'templates.basic.', '[\"counter\"]', 1, NULL, '2022-10-30 04:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vyprvpn835@gmail.com', '142756', '2023-10-09 20:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `daily_limit` int NOT NULL DEFAULT '0',
  `daily_profit` decimal(28,2) DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ref_level` int NOT NULL DEFAULT '0',
  `validity` int NOT NULL DEFAULT '0',
  `tagline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `image`, `price`, `daily_limit`, `daily_profit`, `status`, `ref_level`, `validity`, `tagline`, `highlight`, `created_at`, `updated_at`) VALUES
(1, 'TSLA', '65ca7f1bc64751707769627.png', 50.00000000, 1, 5.00, 1, 3, 15, 'new', 1, '2023-08-10 15:08:34', '2024-02-16 19:37:41'),
(2, 'NVIDIA', '65ca7f71caba51707769713.png', 100.00000000, 1, 10.00, 1, 3, 15, 'popular', 1, '2023-08-10 15:10:21', '2024-02-16 19:37:46'),
(3, 'META', '65ca7fc9efb401707769801.png', 200.00000000, 1, 20.00, 1, 3, 15, NULL, 0, '2023-09-08 18:15:14', '2024-02-16 19:37:51'),
(4, 'AMD', '65ca80235fb711707769891.jpg', 300.00000000, 1, 30.00, 1, 3, 15, NULL, 0, '2024-02-12 20:31:31', '2024-02-16 19:37:56'),
(5, 'AMZN', '65ca81545efd51707770196.jpg', 400.00000000, 1, 40.00, 1, 3, 15, NULL, 0, '2024-02-12 20:36:36', '2024-02-16 19:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `ptcs`
--

CREATE TABLE `ptcs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` tinyint NOT NULL DEFAULT '0',
  `ads_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = link | 2 = image | 3 = script',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `duration` int NOT NULL DEFAULT '0',
  `max_show` int NOT NULL DEFAULT '0',
  `showed` int NOT NULL DEFAULT '0',
  `remain` int NOT NULL DEFAULT '0',
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = inactive, 1 = active, 2 = pending, 3 = rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_engagements`
--

CREATE TABLE `ptc_engagements` (
  `id` bigint UNSIGNED NOT NULL,
  `ptc_id` int UNSIGNED NOT NULL DEFAULT '0',
  `click` datetime DEFAULT NULL,
  `confirm` datetime DEFAULT NULL,
  `duration` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_reports`
--

CREATE TABLE `ptc_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `ptc_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `ptc_report_type_id` int UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_report_types`
--

CREATE TABLE `ptc_report_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_views`
--

CREATE TABLE `ptc_views` (
  `id` bigint NOT NULL,
  `ptc_id` int DEFAULT '0',
  `user_id` int DEFAULT '0',
  `view_date` date DEFAULT NULL,
  `amount` decimal(28,8) DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint UNSIGNED NOT NULL,
  `level` int NOT NULL,
  `percent` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `commission_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `level`, `percent`, `status`, `commission_type`, `created_at`, `updated_at`) VALUES
(1, 1, 10.00, 0, 'plan_subscribe_commission', '2023-08-16 13:04:16', '2023-08-16 13:04:16'),
(2, 2, 5.00, 0, 'plan_subscribe_commission', '2023-08-16 13:04:16', '2023-08-16 13:04:16'),
(3, 3, 3.00, 0, 'plan_subscribe_commission', '2023-08-16 13:04:16', '2023-08-16 13:04:16'),
(4, 1, 10.00, 0, 'ptc_view_commission', '2023-08-16 13:04:40', '2023-08-16 13:04:40'),
(5, 2, 5.00, 0, 'ptc_view_commission', '2023-08-16 13:04:40', '2023-08-16 13:04:40'),
(6, 3, 3.00, 0, 'ptc_view_commission', '2023-08-16 13:04:40', '2023-08-16 13:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `runing_plans`
--

CREATE TABLE `runing_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  `amount` decimal(28,8) DEFAULT NULL,
  `daily_profit` decimal(28,2) DEFAULT '0.00',
  `validity` date DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '1=>Runing, 0=>Expire	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `runing_plans`
--

INSERT INTO `runing_plans` (`id`, `user_id`, `plan_id`, `amount`, `daily_profit`, `validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 200.00000000, 20.00, '2024-03-03', 1, '2024-02-16 19:38:55', '2024-02-16 19:38:55'),
(2, 1, 1, 50.00000000, 5.00, '2024-03-03', 1, '2024-02-16 20:25:21', '2024-02-16 20:25:21'),
(3, 1, 1, 50.00000000, 5.00, '2024-03-04', 1, '2024-02-17 19:59:56', '2024-02-17 19:59:56'),
(4, 1, 2, 100.00000000, 10.00, '2024-03-04', 1, '2024-02-17 20:01:48', '2024-02-17 20:01:48'),
(5, 1, 1, 50.00000000, 5.00, '2024-03-05', 1, '2024-02-19 03:01:56', '2024-02-19 03:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `support_message_id` int UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `sendBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isAdminRead` tinyint DEFAULT '0',
  `isUserRead` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `support_ticket_id` int UNSIGNED DEFAULT '0',
  `admin_id` int UNSIGNED DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `user_id`, `sendBy`, `isAdminRead`, `isUserRead`, `status`, `support_ticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 0, 0, 1, 0, 0, 'Hello, Brother.', NULL, NULL),
(2, 1, 'user', 0, 0, 1, 0, 0, 'yea', NULL, NULL),
(3, 1, 'admin', 0, 1, 1, 0, 0, 'hello, Brother', '2024-01-12 23:18:24', '2024-01-12 23:18:24'),
(4, 1, 'user', 0, 1, 1, 0, 0, 'gg', '2024-01-12 23:20:47', '2024-01-12 23:20:47'),
(5, 1, 'user', 0, 1, 1, 0, 0, 'ggss', '2024-01-12 23:24:00', '2024-01-12 23:24:00'),
(6, 1, 'user', 0, 1, 1, 0, 0, 'gg', '2024-01-12 23:26:03', '2024-01-12 23:26:03'),
(7, 1, 'user', 0, 1, 1, 0, 0, 'How are You', '2024-01-12 23:26:13', '2024-01-12 23:26:13'),
(8, 1, 'user', 0, 1, 1, 0, 0, 'Most Welcome', '2024-01-12 23:26:24', '2024-01-12 23:26:24'),
(9, 1, 'user', 0, 1, 1, 0, 0, 'Love You Admin Dada', '2024-01-12 23:26:34', '2024-01-12 23:26:34'),
(10, 1, 'user', 0, 1, 1, 0, 0, 'hello', '2024-01-12 23:26:52', '2024-01-12 23:26:52'),
(11, 1, 'user', 0, 1, 1, 0, 0, 'hghwj', '2024-01-12 23:31:29', '2024-01-12 23:31:29'),
(12, 1, 'user', 0, 1, 1, 0, 0, 'ssa', '2024-01-12 23:32:23', '2024-01-12 23:32:23'),
(13, 1, 'user', 0, 1, 1, 0, 0, 'gghss', '2024-01-12 23:32:42', '2024-01-12 23:32:42'),
(14, 1, 'user', 0, 1, 1, 0, 0, 'hello boss', '2024-01-12 23:32:54', '2024-01-12 23:32:54'),
(15, 1, 'user', 0, 1, 1, 0, 0, 'jhwkhw', '2024-01-12 23:33:27', '2024-01-12 23:33:27'),
(16, 1, 'user', 0, 1, 1, 0, 0, 'ggsd', '2024-01-12 23:33:34', '2024-01-12 23:33:34'),
(17, 2, 'user', 0, 1, 1, 0, 0, 'Hello Brother', '2024-01-12 23:35:14', '2024-01-12 23:35:14'),
(18, 2, 'user', 0, 1, 1, 0, 0, 'hello Admin.', '2024-01-13 07:55:53', '2024-01-13 07:55:53'),
(19, 2, 'user', 0, 1, 1, 0, 0, 'hello', '2024-01-13 07:56:35', '2024-01-13 07:56:35'),
(20, 2, 'user', 0, 1, 1, 0, 0, 'hefhwiofhowe', '2024-01-13 07:56:38', '2024-01-13 07:56:38'),
(21, 2, 'user', 0, 1, 1, 0, 0, 'fwehfhiej]\\]', '2024-01-13 07:56:39', '2024-01-13 07:56:39'),
(22, 2, 'user', 0, 1, 1, 0, 0, 'fewfuhewiof', '2024-01-13 07:56:39', '2024-01-13 07:56:39'),
(23, 2, 'user', 0, 1, 1, 0, 0, 'fwefijwf', '2024-01-13 07:56:40', '2024-01-13 07:56:40'),
(24, 2, 'user', 0, 1, 1, 0, 0, 'egrgedsg', '2024-01-13 07:56:41', '2024-01-13 07:56:41'),
(25, 2, 'user', 0, 1, 1, 0, 0, 'gergerg', '2024-01-13 07:56:42', '2024-01-13 07:56:42'),
(26, 2, 'user', 0, 1, 1, 0, 0, 'gerger', '2024-01-13 07:56:43', '2024-01-13 07:56:43'),
(27, 2, 'user', 0, 1, 1, 0, 0, 'egrgvrefxef', '2024-01-13 07:56:44', '2024-01-13 07:56:44'),
(28, 2, 'user', 0, 1, 1, 0, 0, 'xfqefcegvt', '2024-01-13 07:56:45', '2024-01-13 07:56:45'),
(29, 2, 'user', 0, 1, 1, 0, 0, 'g45342345345', '2024-01-13 07:56:46', '2024-01-13 07:56:46'),
(30, 2, 'user', 0, 1, 1, 0, 0, '6345435643', '2024-01-13 07:56:47', '2024-01-13 07:56:47'),
(31, 2, 'user', 0, 1, 1, 0, 0, '32464353214', '2024-01-13 07:56:49', '2024-01-13 07:56:49'),
(32, 2, 'user', 0, 1, 1, 0, 0, '346454542532', '2024-01-13 07:56:50', '2024-01-13 07:56:50'),
(33, 2, 'user', 0, 1, 1, 0, 0, '6425636254', '2024-01-13 07:56:51', '2024-01-13 07:56:51'),
(34, 2, 'user', 0, 1, 1, 0, 0, '5624364cerw', '2024-01-13 07:56:52', '2024-01-13 07:56:52'),
(35, 2, 'user', 0, 1, 1, 0, 0, '443652345d3456c', '2024-01-13 07:56:53', '2024-01-13 07:56:53'),
(36, 2, 'user', 0, 1, 1, 0, 0, '265243', '2024-01-13 07:56:54', '2024-01-13 07:56:54'),
(37, 2, 'user', 0, 1, 1, 0, 0, '56cv', '2024-01-13 07:56:54', '2024-01-13 07:56:54'),
(38, 2, 'user', 0, 1, 1, 0, 0, '34', '2024-01-13 07:56:55', '2024-01-13 07:56:55'),
(39, 2, 'user', 0, 1, 1, 0, 0, '342v', '2024-01-13 07:56:55', '2024-01-13 07:56:55'),
(40, 2, 'user', 0, 1, 1, 0, 0, '45c', '2024-01-13 07:56:55', '2024-01-13 07:56:55'),
(41, 2, 'user', 0, 1, 1, 0, 0, 'd4t', '2024-01-13 07:56:56', '2024-01-13 07:56:56'),
(42, 2, 'user', 0, 1, 1, 0, 0, 'xc2y', '2024-01-13 07:56:56', '2024-01-13 07:56:56'),
(43, 2, 'user', 0, 1, 1, 0, 0, '2c4', '2024-01-13 07:56:56', '2024-01-13 07:56:56'),
(44, 2, 'user', 0, 1, 1, 0, 0, '5x', '2024-01-13 07:56:56', '2024-01-13 07:56:56'),
(45, 2, 'user', 0, 1, 1, 0, 0, 'g', '2024-01-13 07:56:56', '2024-01-13 07:56:56'),
(46, 2, 'user', 0, 1, 1, 0, 0, 're2', '2024-01-13 07:56:57', '2024-01-13 07:56:57'),
(47, 2, 'user', 0, 1, 1, 0, 0, 'y', '2024-01-13 07:56:57', '2024-01-13 07:56:57'),
(48, 2, 'user', 0, 1, 1, 0, 0, '43x', '2024-01-13 07:56:57', '2024-01-13 07:56:57'),
(49, 2, 'user', 0, 1, 1, 0, 0, '5y', '2024-01-13 07:56:57', '2024-01-13 07:56:57'),
(50, 2, 'user', 0, 1, 1, 0, 0, '24 tc', '2024-01-13 07:56:58', '2024-01-13 07:56:58'),
(51, 2, 'user', 0, 1, 1, 0, 0, '4t', '2024-01-13 07:56:58', '2024-01-13 07:56:58'),
(52, 2, 'user', 0, 1, 1, 0, 0, '45t', '2024-01-13 07:56:58', '2024-01-13 07:56:58'),
(53, 2, 'user', 0, 1, 1, 0, 0, '341', '2024-01-13 07:56:58', '2024-01-13 07:56:58'),
(54, 2, 'user', 0, 1, 1, 0, 0, 'xt', '2024-01-13 07:56:58', '2024-01-13 07:56:58'),
(55, 2, 'user', 0, 1, 1, 0, 0, '43', '2024-01-13 07:56:59', '2024-01-13 07:56:59'),
(56, 2, 'user', 0, 1, 1, 0, 0, 'c34x', '2024-01-13 07:56:59', '2024-01-13 07:56:59'),
(57, 2, 'user', 0, 1, 1, 0, 0, 'c2t', '2024-01-13 07:56:59', '2024-01-13 07:56:59'),
(58, 2, 'user', 0, 1, 1, 0, 0, '45', '2024-01-13 07:56:59', '2024-01-13 07:56:59'),
(59, 2, 'user', 0, 1, 1, 0, 0, '23', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(60, 2, 'user', 0, 1, 1, 0, 0, 't3', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(61, 2, 'user', 0, 1, 1, 0, 0, '45', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(62, 2, 'user', 0, 1, 1, 0, 0, '43', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(63, 2, 'user', 0, 1, 1, 0, 0, '5', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(64, 2, 'user', 0, 1, 1, 0, 0, '4136', '2024-01-13 07:57:00', '2024-01-13 07:57:00'),
(65, 2, 'user', 0, 1, 1, 0, 0, '43', '2024-01-13 07:57:01', '2024-01-13 07:57:01'),
(66, 2, 'user', 0, 1, 1, 0, 0, '643', '2024-01-13 07:57:01', '2024-01-13 07:57:01'),
(67, 2, 'user', 0, 1, 1, 0, 0, '6', '2024-01-13 07:57:01', '2024-01-13 07:57:01'),
(68, 2, 'user', 0, 1, 1, 0, 0, '56234', '2024-01-13 07:57:01', '2024-01-13 07:57:01'),
(69, 2, 'user', 0, 1, 1, 0, 0, '4636463', '2024-01-13 07:57:02', '2024-01-13 07:57:02'),
(70, 2, 'user', 0, 1, 1, 0, 0, '46136', '2024-01-13 07:57:02', '2024-01-13 07:57:02'),
(71, 2, 'user', 0, 1, 1, 0, 0, '4', '2024-01-13 07:57:03', '2024-01-13 07:57:03'),
(72, 2, 'user', 0, 1, 1, 0, 0, '1661', '2024-01-13 07:57:03', '2024-01-13 07:57:03'),
(73, 2, 'user', 0, 1, 1, 0, 0, '64', '2024-01-13 07:57:03', '2024-01-13 07:57:03'),
(74, 2, 'user', 0, 1, 1, 0, 0, '3', '2024-01-13 07:57:03', '2024-01-13 07:57:03'),
(75, 2, 'user', 0, 1, 1, 0, 0, '46634', '2024-01-13 07:57:03', '2024-01-13 07:57:03'),
(76, 2, 'user', 0, 1, 1, 0, 0, '43', '2024-01-13 07:57:04', '2024-01-13 07:57:04'),
(77, 2, 'user', 0, 1, 1, 0, 0, '6', '2024-01-13 07:57:04', '2024-01-13 07:57:04'),
(78, 2, 'user', 0, 1, 1, 0, 0, '4', '2024-01-13 07:57:04', '2024-01-13 07:57:04'),
(79, 2, 'user', 0, 1, 1, 0, 0, '3', '2024-01-13 07:57:04', '2024-01-13 07:57:04'),
(80, 2, 'user', 0, 1, 1, 0, 0, 'Hello Brother.', '2024-01-13 07:58:06', '2024-01-13 07:58:06'),
(81, 1, 'admin', 1, 0, 1, 0, 0, 'Hello Brother', '2024-01-13 10:02:55', '2024-01-13 10:02:55'),
(82, 1, 'admin', 1, 0, 1, 0, 0, 'efwe', '2024-01-13 10:11:02', '2024-01-13 10:11:02'),
(83, 1, 'admin', 1, 0, 1, 0, 0, 'Hello Brother.', '2024-01-13 10:22:27', '2024-01-13 10:22:27'),
(84, 1, 'admin', 1, 0, 1, 0, 0, 'Hey', '2024-01-13 10:22:53', '2024-01-13 10:22:53'),
(85, 1, 'user', 0, 1, 1, 0, 0, 'Hello Brother', '2024-01-13 10:23:33', '2024-01-13 10:23:33'),
(86, 1, 'admin', 1, 0, 1, 0, 0, 'YES BROTHER', '2024-01-13 10:23:45', '2024-01-13 10:23:45'),
(87, 1, 'user', 0, 1, 1, 0, 0, 'gg', '2024-01-13 10:23:57', '2024-01-13 10:23:57'),
(88, 1, 'user', 0, 1, 1, 0, 0, 'How are You', '2024-01-13 10:24:29', '2024-01-13 10:24:29'),
(89, 1, 'admin', 1, 0, 1, 0, 0, 'Fine You?', '2024-01-13 10:24:39', '2024-01-13 10:24:39'),
(90, 1, 'admin', 1, 0, 1, 0, 0, 'hello', '2024-01-13 10:40:15', '2024-01-13 10:40:15'),
(91, 1, 'user', 0, 1, 1, 0, 0, 'gmail address', '2024-01-13 10:52:42', '2024-01-13 10:52:42'),
(92, 1, 'user', 0, 1, 1, 0, 0, 'good to go', '2024-01-13 10:52:53', '2024-01-13 10:52:53'),
(93, 1, 'user', 0, 1, 1, 0, 0, 'gdgd', '2024-01-13 10:53:33', '2024-01-13 10:53:33'),
(94, 1, 'user', 0, 1, 1, 0, 0, 'regdfg', '2024-01-13 10:55:19', '2024-01-13 10:55:19'),
(95, 1, 'user', 0, 1, 1, 0, 0, 'Hello brother', '2024-01-13 10:56:47', '2024-01-13 10:56:47'),
(96, 1, 'admin', 1, 0, 1, 0, 0, 'yes Brother', '2024-01-13 10:57:02', '2024-01-13 10:57:02'),
(97, 1, 'admin', 1, 0, 1, 0, 0, 'GooD time', '2024-01-13 11:01:18', '2024-01-13 11:01:18'),
(98, 1, 'user', 0, 1, 1, 0, 0, 'hello brother', '2024-01-13 11:01:42', '2024-01-13 11:01:42'),
(99, 1, 'admin', 1, 0, 1, 0, 0, 'yes', '2024-01-13 11:01:53', '2024-01-13 11:01:53'),
(100, 1, 'user', 0, 1, 1, 0, 0, 'hello', '2024-01-13 11:02:03', '2024-01-13 11:02:03'),
(101, 2, 'admin', 1, 0, 1, 0, 0, 'Hello', '2024-01-13 11:04:35', '2024-01-13 11:04:35'),
(102, 2, 'admin', 1, 0, 1, 0, 0, 'Hello Brother', '2024-01-13 11:16:35', '2024-01-13 11:16:35'),
(103, 2, 'admin', 1, 0, 1, 0, 0, 'hi', '2024-01-13 11:20:39', '2024-01-13 11:20:39'),
(104, 1, 'admin', 1, 0, 1, 0, 0, 'hi', '2024-01-13 11:21:16', '2024-01-13 11:21:16'),
(105, 1, 'user', 0, 1, 1, 0, 0, 'yes', '2024-01-13 11:21:25', '2024-01-13 11:21:25'),
(106, 1, 'admin', 1, 0, 1, 0, 0, 'hello brother', '2024-01-13 11:25:13', '2024-01-13 11:25:13'),
(107, 1, 'user', 0, 1, 1, 0, 0, 'yes', '2024-01-13 11:25:22', '2024-01-13 11:25:22'),
(108, 1, 'admin', 1, 0, 1, 0, 0, 'what', '2024-01-13 11:25:29', '2024-01-13 11:25:29'),
(109, 1, 'user', 0, 1, 1, 0, 0, 'ashjfdashdh', '2024-01-13 11:25:49', '2024-01-13 11:25:49'),
(110, 1, 'admin', 1, 0, 1, 0, 0, 'asdas', '2024-01-13 11:25:53', '2024-01-13 11:25:53'),
(111, 1, 'admin', 1, 0, 1, 0, 0, 'hi Brother', '2024-01-13 11:27:39', '2024-01-13 11:27:39'),
(112, 1, 'user', 0, 1, 1, 0, 0, 'Yes', '2024-01-13 11:28:03', '2024-01-13 11:28:03'),
(113, 1, 'user', 0, 1, 1, 0, 0, 'hello vhai', '2024-01-13 11:29:39', '2024-01-13 11:29:39'),
(114, 2, 'admin', 1, 0, 1, 0, 0, 'saxa', '2024-01-13 11:30:50', '2024-01-13 11:30:50'),
(115, 1, 'user', 0, 1, 1, 0, 0, 'gg', '2024-01-15 17:21:07', '2024-01-15 17:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `post_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 50.00000000, 0.00000000, 4146.00000000, '-', 'JAZ86VF8QYDG', 'VIP 1 Purchase successfull', 'subscribe_plan', '2024-01-04 19:38:58', '2024-01-04 19:38:58'),
(2, 1, 100.00000000, 0.00000000, 4046.00000000, '-', 'A9XQDFU2P94H', 'VIP 2 Purchase successfull', 'subscribe_plan', '2024-01-04 19:39:52', '2024-01-04 19:39:52'),
(3, 1, 200.00000000, 0.00000000, 3846.00000000, '-', 'EYC2CQ93FJGC', 'VIP 3 Purchase successfull', 'subscribe_plan', '2024-01-04 19:40:01', '2024-01-04 19:40:01'),
(4, 1, 50.00000000, 0.00000000, 3796.00000000, '-', 'JC7P5WKBYZJM', 'VIP 1 Purchase successfull', 'subscribe_plan', '2024-01-04 19:41:29', '2024-01-04 19:41:29'),
(5, 2, 50.00000000, 0.00000000, 305.00000000, '-', 'SGP8V1SVOVX3', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 11:34:53', '2024-01-05 11:34:53'),
(6, 1, 5.00000000, 0.00000000, 3801.00000000, '+', 'SGP8V1SVOVX3', '1st level referral commission from test02', 'referral_commission', '2024-01-05 11:34:53', NULL),
(7, 1, 45.00000000, 0.00000000, 3846.00000000, '+', '24VUNM36P8QA', 'Earn amount from Mining', 'mining', '2024-01-05 16:22:55', '2024-01-05 16:22:55'),
(8, 1, 45.00000000, 0.00000000, 3891.00000000, '+', '9SRV16GWP5R3', 'Earn amount from Mining', 'mining', '2024-01-05 16:23:00', '2024-01-05 16:23:00'),
(9, 1, 45.00000000, 0.00000000, 3936.00000000, '+', 'JMMHFRHD9XFS', 'Earn amount from Mining', 'mining', '2024-01-05 16:23:17', '2024-01-05 16:23:17'),
(10, 1, 45.00000000, 0.00000000, 3981.00000000, '+', 'X4VY8KZ13TRB', 'Earn amount from Mining', 'mining', '2024-01-05 16:23:25', '2024-01-05 16:23:25'),
(11, 1, 45.00000000, 0.00000000, 4026.00000000, '+', '4E78T6H59UEO', 'Earn amount from Mining', 'mining', '2024-01-05 16:24:29', '2024-01-05 16:24:29'),
(12, 1, 45.00000000, 0.00000000, 4071.00000000, '+', '6BZRVCVGO31M', 'Earn amount from Mining', 'mining', '2024-01-05 16:24:34', '2024-01-05 16:24:34'),
(13, 1, 45.00000000, 0.00000000, 4116.00000000, '+', 'YRBQJSHJZOFC', 'Earn amount from Mining', 'mining', '2024-01-05 16:24:35', '2024-01-05 16:24:35'),
(14, 1, 45.00000000, 0.00000000, 4161.00000000, '+', 'HAUVHO2CHSJR', 'Earn amount from Mining', 'mining', '2024-01-05 16:27:27', '2024-01-05 16:27:27'),
(15, 1, 45.00000000, 0.00000000, 4206.00000000, '+', '94YDDFDKO7NO', 'Earn amount from Mining', 'mining', '2024-01-05 16:27:29', '2024-01-05 16:27:29'),
(16, 1, 45.00000000, 0.00000000, 4251.00000000, '+', '8Q2GUQS5PF7B', 'Earn amount from Mining', 'mining', '2024-01-05 16:27:31', '2024-01-05 16:27:31'),
(17, 1, 45.00000000, 0.00000000, 4296.00000000, '+', '3A7DG9SNJKS9', 'Earn amount from Mining', 'mining', '2024-01-05 16:35:02', '2024-01-05 16:35:02'),
(18, 1, 45.00000000, 0.00000000, 4341.00000000, '+', 'JZCJFXX3HF68', 'Earn amount from Mining', 'mining', '2024-01-05 16:36:36', '2024-01-05 16:36:36'),
(19, 1, 45.00000000, 0.00000000, 4386.00000000, '+', 'EMBODKRVUCT8', 'Earn amount from Mining', 'mining', '2024-01-05 16:36:52', '2024-01-05 16:36:52'),
(20, 1, 45.00000000, 0.00000000, 4431.00000000, '+', 'F9NZWUEVRF5O', 'Earn amount from Mining', 'mining', '2024-01-05 16:36:59', '2024-01-05 16:36:59'),
(21, 1, 45.00000000, 0.00000000, 4476.00000000, '+', '66KGNQCYJQ8Z', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:25', '2024-01-05 16:37:25'),
(22, 1, 45.00000000, 0.00000000, 4521.00000000, '+', 'U9H3KZJNCNQS', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:32', '2024-01-05 16:37:32'),
(23, 1, 45.00000000, 0.00000000, 4566.00000000, '+', 'KSWX3AFWFQQR', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:33', '2024-01-05 16:37:33'),
(24, 1, 45.00000000, 0.00000000, 4611.00000000, '+', 'SCZ4V13OQAT4', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:35', '2024-01-05 16:37:35'),
(25, 1, 45.00000000, 0.00000000, 4656.00000000, '+', 'AQQ74DAP3VTH', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:35', '2024-01-05 16:37:35'),
(26, 1, 45.00000000, 0.00000000, 4701.00000000, '+', '7S618ZXTHH68', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:36', '2024-01-05 16:37:36'),
(27, 1, 45.00000000, 0.00000000, 4746.00000000, '+', '7OR97SOMQAR6', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:36', '2024-01-05 16:37:36'),
(28, 1, 45.00000000, 0.00000000, 4791.00000000, '+', 'ZSXRCQF1EB9N', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:37', '2024-01-05 16:37:37'),
(29, 1, 45.00000000, 0.00000000, 4836.00000000, '+', 'X323XUH348Z5', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:37', '2024-01-05 16:37:37'),
(30, 1, 45.00000000, 0.00000000, 4881.00000000, '+', 'OZB9QG55PTYT', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:38', '2024-01-05 16:37:38'),
(31, 1, 45.00000000, 0.00000000, 4926.00000000, '+', 'Z2TVXEODVHVQ', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(32, 1, 45.00000000, 0.00000000, 4971.00000000, '+', 'BTZBHB61FP3J', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(33, 1, 45.00000000, 0.00000000, 5016.00000000, '+', 'KGX9FGQ11C7M', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(34, 1, 45.00000000, 0.00000000, 5061.00000000, '+', 'BWKWUT9HXK56', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(35, 1, 45.00000000, 0.00000000, 5106.00000000, '+', 'BGJW1CEPZ5XF', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(36, 1, 45.00000000, 0.00000000, 5151.00000000, '+', '3B4KDG3VX88T', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:39', '2024-01-05 16:37:39'),
(37, 1, 45.00000000, 0.00000000, 5196.00000000, '+', 'ZK1G94MDFWUJ', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:40', '2024-01-05 16:37:40'),
(38, 1, 45.00000000, 0.00000000, 5241.00000000, '+', 'RSV9E2A24SSY', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:40', '2024-01-05 16:37:40'),
(39, 1, 45.00000000, 0.00000000, 5286.00000000, '+', '7YM4WSB8OQBT', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:40', '2024-01-05 16:37:40'),
(40, 1, 45.00000000, 0.00000000, 5331.00000000, '+', '9H1TPUQDFGSS', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:40', '2024-01-05 16:37:40'),
(41, 1, 45.00000000, 0.00000000, 5376.00000000, '+', 'J5YDOWYHWQ51', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(42, 1, 45.00000000, 0.00000000, 5421.00000000, '+', '24WAJJY7ROXG', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(43, 1, 45.00000000, 0.00000000, 5466.00000000, '+', 'K6YWDMVFM8A3', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(44, 1, 45.00000000, 0.00000000, 5511.00000000, '+', 'PKJMDMWP823J', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(45, 1, 45.00000000, 0.00000000, 5556.00000000, '+', 'E4Z4WB9OAF9B', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(46, 1, 45.00000000, 0.00000000, 5601.00000000, '+', 'CMXWE5CZGGMO', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:41', '2024-01-05 16:37:41'),
(47, 1, 45.00000000, 0.00000000, 5646.00000000, '+', 'X1UDUZ49JEJB', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:42', '2024-01-05 16:37:42'),
(48, 1, 45.00000000, 0.00000000, 5691.00000000, '+', 'COZUDF4OX228', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:42', '2024-01-05 16:37:42'),
(49, 1, 45.00000000, 0.00000000, 5736.00000000, '+', 'GH98GA99KZXF', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:42', '2024-01-05 16:37:42'),
(50, 1, 45.00000000, 0.00000000, 5781.00000000, '+', 'PMEMWV8BV61D', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:45', '2024-01-05 16:37:45'),
(51, 1, 45.00000000, 0.00000000, 5826.00000000, '+', 'B9TC9OYCE35K', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:45', '2024-01-05 16:37:45'),
(52, 1, 45.00000000, 0.00000000, 5871.00000000, '+', '4R878W3BDQRA', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:45', '2024-01-05 16:37:45'),
(53, 1, 45.00000000, 0.00000000, 5916.00000000, '+', '9EC8ZWW9BQH5', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:46', '2024-01-05 16:37:46'),
(54, 1, 45.00000000, 0.00000000, 5961.00000000, '+', '7WN65AQ7HR3U', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:46', '2024-01-05 16:37:46'),
(55, 1, 45.00000000, 0.00000000, 6006.00000000, '+', '5PJG7SABAAYN', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:46', '2024-01-05 16:37:46'),
(56, 1, 45.00000000, 0.00000000, 6051.00000000, '+', '48P14YZEAW7D', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:46', '2024-01-05 16:37:46'),
(57, 1, 45.00000000, 0.00000000, 6096.00000000, '+', 'QGEGS9WCBOZ5', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:46', '2024-01-05 16:37:46'),
(58, 1, 45.00000000, 0.00000000, 6141.00000000, '+', 'BRSS6R3R42DY', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:47', '2024-01-05 16:37:47'),
(59, 1, 45.00000000, 0.00000000, 6186.00000000, '+', 'QN2S4GJV21U1', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:47', '2024-01-05 16:37:47'),
(60, 1, 45.00000000, 0.00000000, 6231.00000000, '+', 'OZ182QPOPJNZ', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:47', '2024-01-05 16:37:47'),
(61, 1, 45.00000000, 0.00000000, 6276.00000000, '+', 'REWV7DPMZ74Y', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:47', '2024-01-05 16:37:47'),
(62, 1, 45.00000000, 0.00000000, 6321.00000000, '+', 'Y97R47MGXJZT', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:47', '2024-01-05 16:37:47'),
(63, 1, 45.00000000, 0.00000000, 6366.00000000, '+', 'OGV9RGJ4KCTS', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:48', '2024-01-05 16:37:48'),
(64, 1, 45.00000000, 0.00000000, 6411.00000000, '+', '4UOCD81RW611', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:48', '2024-01-05 16:37:48'),
(65, 1, 45.00000000, 0.00000000, 6456.00000000, '+', 'VXGFAM6HUCXY', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:48', '2024-01-05 16:37:48'),
(66, 1, 45.00000000, 0.00000000, 6501.00000000, '+', '2MC2BVX3VD9O', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:48', '2024-01-05 16:37:48'),
(67, 1, 45.00000000, 0.00000000, 6546.00000000, '+', 'KMO9UH5ZRN6Q', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:48', '2024-01-05 16:37:48'),
(68, 1, 45.00000000, 0.00000000, 6591.00000000, '+', 'VOR2KZP6X475', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:49', '2024-01-05 16:37:49'),
(69, 1, 45.00000000, 0.00000000, 6636.00000000, '+', '61571PK4KX51', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:49', '2024-01-05 16:37:49'),
(70, 1, 45.00000000, 0.00000000, 6681.00000000, '+', 'KUWMJ6AAH7M4', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:49', '2024-01-05 16:37:49'),
(71, 1, 45.00000000, 0.00000000, 6726.00000000, '+', 'YWMD958D6J54', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:49', '2024-01-05 16:37:49'),
(72, 1, 45.00000000, 0.00000000, 6771.00000000, '+', 'P64CTQUVSPSG', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:49', '2024-01-05 16:37:49'),
(73, 1, 45.00000000, 0.00000000, 6816.00000000, '+', '94N4M6YA2JDQ', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:50', '2024-01-05 16:37:50'),
(74, 1, 45.00000000, 0.00000000, 6861.00000000, '+', 'HK74YYVKN9US', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:50', '2024-01-05 16:37:50'),
(75, 1, 45.00000000, 0.00000000, 6906.00000000, '+', 'X5U16X6ZSKB2', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:50', '2024-01-05 16:37:50'),
(76, 1, 45.00000000, 0.00000000, 6951.00000000, '+', 'RCOK3FTJ3DCX', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:50', '2024-01-05 16:37:50'),
(77, 1, 45.00000000, 0.00000000, 6996.00000000, '+', 'XPOQZ5ED9H2N', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:50', '2024-01-05 16:37:50'),
(78, 1, 45.00000000, 0.00000000, 7041.00000000, '+', 'CJOE9B39WH66', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:51', '2024-01-05 16:37:51'),
(79, 1, 45.00000000, 0.00000000, 7086.00000000, '+', '4UJAY7C9UXAR', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:51', '2024-01-05 16:37:51'),
(80, 1, 45.00000000, 0.00000000, 7131.00000000, '+', 'GVXY3FK9FZCP', 'Earn amount from Mining', 'mining', '2024-01-05 16:37:51', '2024-01-05 16:37:51'),
(81, 1, 45.00000000, 0.00000000, 7176.00000000, '+', '3XTBKF2PW4HJ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:19', '2024-01-05 16:39:19'),
(82, 1, 45.00000000, 0.00000000, 7221.00000000, '+', '1H1QXH74SKH5', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:22', '2024-01-05 16:39:22'),
(83, 1, 45.00000000, 0.00000000, 7266.00000000, '+', '2JAZ9RA8Y92J', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:23', '2024-01-05 16:39:23'),
(84, 1, 45.00000000, 0.00000000, 7311.00000000, '+', 'KFHC5P3TA6RB', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:23', '2024-01-05 16:39:23'),
(85, 1, 45.00000000, 0.00000000, 7356.00000000, '+', '2HKARQY3WW5W', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:24', '2024-01-05 16:39:24'),
(86, 1, 45.00000000, 0.00000000, 7401.00000000, '+', 'GBHU9NTRX4XR', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:25', '2024-01-05 16:39:25'),
(87, 1, 45.00000000, 0.00000000, 7446.00000000, '+', 'U2V6WNO4QMGJ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:25', '2024-01-05 16:39:25'),
(88, 1, 45.00000000, 0.00000000, 7491.00000000, '+', '15QCSFO5AMWE', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:25', '2024-01-05 16:39:25'),
(89, 1, 45.00000000, 0.00000000, 7536.00000000, '+', '6QG4RO6GX3OP', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:25', '2024-01-05 16:39:25'),
(90, 1, 45.00000000, 0.00000000, 7581.00000000, '+', '16GPNARSNXE2', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:25', '2024-01-05 16:39:25'),
(91, 1, 45.00000000, 0.00000000, 7626.00000000, '+', 'PGVMYBW5FSWK', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:26', '2024-01-05 16:39:26'),
(92, 1, 45.00000000, 0.00000000, 7671.00000000, '+', 'UBR2EBPG42F6', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:26', '2024-01-05 16:39:26'),
(93, 1, 45.00000000, 0.00000000, 7716.00000000, '+', '5D5Q1H7TU1GF', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:26', '2024-01-05 16:39:26'),
(94, 1, 45.00000000, 0.00000000, 7761.00000000, '+', '48N7AGFGP3VN', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:26', '2024-01-05 16:39:26'),
(95, 1, 45.00000000, 0.00000000, 7806.00000000, '+', 'GX2U9P6A6YGQ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:26', '2024-01-05 16:39:26'),
(96, 1, 45.00000000, 0.00000000, 7851.00000000, '+', 'UOVYZZ418732', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:28', '2024-01-05 16:39:28'),
(97, 1, 45.00000000, 0.00000000, 7896.00000000, '+', 'V3C2MWWF7HAN', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:28', '2024-01-05 16:39:28'),
(98, 1, 45.00000000, 0.00000000, 7941.00000000, '+', 'EPWN3RKWCAD9', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:28', '2024-01-05 16:39:28'),
(99, 1, 45.00000000, 0.00000000, 7986.00000000, '+', 'GNZCXWEDEFMC', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:28', '2024-01-05 16:39:28'),
(100, 1, 45.00000000, 0.00000000, 8031.00000000, '+', 'B2XJZN1M19C7', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:29', '2024-01-05 16:39:29'),
(101, 1, 45.00000000, 0.00000000, 8076.00000000, '+', '49BH1MGTZ3NG', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:29', '2024-01-05 16:39:29'),
(102, 1, 45.00000000, 0.00000000, 8121.00000000, '+', 'YU4YU5UR3A7T', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:29', '2024-01-05 16:39:29'),
(103, 1, 45.00000000, 0.00000000, 8166.00000000, '+', 'XKHRR14P5VKF', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:29', '2024-01-05 16:39:29'),
(104, 1, 45.00000000, 0.00000000, 8211.00000000, '+', '7M2731BTYPK9', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:29', '2024-01-05 16:39:29'),
(105, 1, 45.00000000, 0.00000000, 8256.00000000, '+', 'BKFOS5UMCS7J', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:30', '2024-01-05 16:39:30'),
(106, 1, 45.00000000, 0.00000000, 8301.00000000, '+', 'WPKYP69RZTTG', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:30', '2024-01-05 16:39:30'),
(107, 1, 45.00000000, 0.00000000, 8346.00000000, '+', '41MMY6PEAQZZ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:30', '2024-01-05 16:39:30'),
(108, 1, 45.00000000, 0.00000000, 8391.00000000, '+', 'SK9H963RHWJK', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:30', '2024-01-05 16:39:30'),
(109, 1, 45.00000000, 0.00000000, 8436.00000000, '+', 'PMW3A8RH1M4K', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:30', '2024-01-05 16:39:30'),
(110, 1, 45.00000000, 0.00000000, 8481.00000000, '+', 'JA7CKW6TDDMZ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:31', '2024-01-05 16:39:31'),
(111, 1, 45.00000000, 0.00000000, 8526.00000000, '+', 'ZGS2AKEGEH7B', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:31', '2024-01-05 16:39:31'),
(112, 1, 45.00000000, 0.00000000, 8571.00000000, '+', 'NFE614K3ZPMK', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:31', '2024-01-05 16:39:31'),
(113, 1, 45.00000000, 0.00000000, 8616.00000000, '+', 'FO17CGNCMNAZ', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:31', '2024-01-05 16:39:31'),
(114, 1, 45.00000000, 0.00000000, 8661.00000000, '+', '2QYOCECZ7687', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:31', '2024-01-05 16:39:31'),
(115, 1, 45.00000000, 0.00000000, 8706.00000000, '+', 'T9S2ZNQFJV1A', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:32', '2024-01-05 16:39:32'),
(116, 1, 45.00000000, 0.00000000, 8751.00000000, '+', '2NZG6RWDVC38', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:32', '2024-01-05 16:39:32'),
(117, 1, 45.00000000, 0.00000000, 8796.00000000, '+', 'QEWZMBYX5G8H', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:32', '2024-01-05 16:39:32'),
(118, 1, 45.00000000, 0.00000000, 8841.00000000, '+', 'YE3ZZE74ZTTF', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:32', '2024-01-05 16:39:32'),
(119, 1, 45.00000000, 0.00000000, 8886.00000000, '+', '7134G1CFRY1P', 'Earn amount from Mining', 'mining', '2024-01-05 16:39:32', '2024-01-05 16:39:32'),
(120, 1, 45.00000000, 0.00000000, 8931.00000000, '+', '7MN4TV2OHKCV', 'Earn amount from Mining', 'mining', '2024-01-05 18:10:49', '2024-01-05 18:10:49'),
(121, 1, 45.00000000, 0.00000000, 8976.00000000, '+', 'ZXDJYM6V5V6H', 'Earn amount from Mining', 'mining', '2024-01-05 18:55:44', '2024-01-05 18:55:44'),
(122, 1, 45.00000000, 0.00000000, 9021.00000000, '+', 'D7T2439ZDTG4', 'Earn amount from Mining', 'mining', '2024-01-05 19:12:37', '2024-01-05 19:12:37'),
(123, 1, 45.00000000, 0.00000000, 9066.00000000, '+', 'QW2XU133XO83', 'Earn amount from Mining', 'mining', '2024-01-05 19:13:33', '2024-01-05 19:13:33'),
(124, 1, 45.00000000, 0.00000000, 9111.00000000, '+', '6J1A6GBON588', 'Earn amount from Mining', 'mining', '2024-01-05 19:31:05', '2024-01-05 19:31:05'),
(125, 1, 45.00000000, 0.00000000, 9156.00000000, '+', '3951CD5JONNJ', 'Earn amount from Mining', 'mining', '2024-01-05 19:36:53', '2024-01-05 19:36:53'),
(126, 1, 45.00000000, 0.00000000, 9201.00000000, '+', 'OTDEFZ7PDX2V', 'Earn amount from Mining', 'mining', '2024-01-05 19:55:38', '2024-01-05 19:55:38'),
(127, 2, 100.00000000, 0.00000000, 205.00000000, '-', 'KC1PRN3XGUCU', 'Robot 2 Purchase successfull', 'subscribe_plan', '2024-01-05 20:25:08', '2024-01-05 20:25:08'),
(128, 1, 10.00000000, 0.00000000, 9211.00000000, '+', 'KC1PRN3XGUCU', '1st level referral commission from test02', 'referral_commission', '2024-01-05 20:25:08', NULL),
(129, 2, 10.00000000, 0.00000000, 215.00000000, '+', '6B12TEVG7X4Z', 'Earn amount from Mining', 'mining', '2024-01-05 20:25:16', '2024-01-05 20:25:16'),
(130, 1, 1.00000000, 0.00000000, 9212.00000000, '+', '6B12TEVG7X4Z', '1st level referral commission from test02', 'referral_commission', '2024-01-05 20:25:16', NULL),
(131, 2, 50.00000000, 0.00000000, 165.00000000, '-', 'TTHFMZ9E9F5G', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 20:25:28', '2024-01-05 20:25:28'),
(132, 1, 5.00000000, 0.00000000, 9217.00000000, '+', 'TTHFMZ9E9F5G', '1st level referral commission from test02', 'referral_commission', '2024-01-05 20:25:28', NULL),
(133, 2, 50.00000000, 0.00000000, 115.00000000, '-', '145RUWSXNHOA', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 20:27:18', '2024-01-05 20:27:18'),
(134, 1, 5.00000000, 0.00000000, 9222.00000000, '+', '145RUWSXNHOA', '1st level referral commission from test02', 'referral_commission', '2024-01-05 20:27:18', NULL),
(135, 2, 20.00000000, 0.00000000, 135.00000000, '+', 'DPBW722VNZX6', 'Earn amount from Mining', 'mining', '2024-01-05 20:27:25', '2024-01-05 20:27:25'),
(136, 1, 2.00000000, 0.00000000, 9224.00000000, '+', 'DPBW722VNZX6', '1st level referral commission from test02', 'referral_commission', '2024-01-05 20:27:25', NULL),
(137, 1, 45.00000000, 0.00000000, 9269.00000000, '+', 'TRZHJVHXU3BY', 'Earn amount from Mining', 'mining', '2024-01-05 21:26:11', '2024-01-05 21:26:11'),
(138, 1, 50.00000000, 0.00000000, 9219.00000000, '-', 'HNV8UNNS4633', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 22:15:22', '2024-01-05 22:15:22'),
(139, 1, 100.00000000, 0.00000000, 9119.00000000, '-', 'Z9CUV8FRZGDX', 'Robot 2 Purchase successfull', 'subscribe_plan', '2024-01-05 22:15:32', '2024-01-05 22:15:32'),
(140, 2, 50.00000000, 0.00000000, 85.00000000, '-', 'SZGR3D1P68HR', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 22:26:37', '2024-01-05 22:26:37'),
(141, 1, 5.00000000, 0.00000000, 9124.00000000, '+', 'SZGR3D1P68HR', '1st level referral commission from test02', 'referral_commission', '2024-01-05 22:26:37', NULL),
(142, 1, 200.00000000, 0.00000000, 8924.00000000, '-', '7461RD1GC48T', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:35:02', '2024-01-05 22:35:02'),
(143, 1, 20.00000000, 0.00000000, 8944.00000000, '+', 'VRGY3U1DRVBF', 'Earn amount from Mining', 'mining', '2024-01-05 22:38:31', '2024-01-05 22:38:31'),
(144, 1, 200.00000000, 0.00000000, 8744.00000000, '-', 'CYE9DY5CQON9', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:38:51', '2024-01-05 22:38:51'),
(145, 1, 200.00000000, 0.00000000, 8544.00000000, '-', 'XHTGCKODTG6A', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:38:53', '2024-01-05 22:38:53'),
(146, 1, 200.00000000, 0.00000000, 8344.00000000, '-', 'RTJQXPNPF35C', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:38:55', '2024-01-05 22:38:55'),
(147, 1, 200.00000000, 0.00000000, 8144.00000000, '-', 'K6SUABUHBES2', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:43:05', '2024-01-05 22:43:05'),
(148, 1, 20.00000000, 0.00000000, 8164.00000000, '+', 'O116MWYZ8YBB', 'Earn amount from Mining', 'mining', '2024-01-05 22:43:33', '2024-01-05 22:43:33'),
(149, 1, 100.00000000, 0.00000000, 8064.00000000, '-', 'ZN3TVQORRFNU', 'Robot 2 Purchase successfull', 'subscribe_plan', '2024-01-05 22:44:09', '2024-01-05 22:44:09'),
(150, 1, 200.00000000, 0.00000000, 7864.00000000, '-', 'ZBYRGQ4BNPGJ', 'Robot 3 Purchase successfull', 'subscribe_plan', '2024-01-05 22:44:34', '2024-01-05 22:44:34'),
(151, 1, 50.00000000, 0.00000000, 7814.00000000, '-', 'NJBUYMOHKUGZ', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-05 23:46:20', '2024-01-05 23:46:20'),
(152, 1, 150.00000000, 0.00000000, 7964.00000000, '+', 'QTPR1RCZP2PS', 'Deposit Via bKash', 'deposit', '2024-01-06 00:43:25', '2024-01-06 00:43:25'),
(153, 1, 250.00000000, 0.00000000, 8214.00000000, '+', 'CFUAD8BXQT7C', 'Deposit Via Nagad', 'deposit', '2024-01-06 00:43:39', '2024-01-06 00:43:39'),
(154, 1, 55.00000000, 0.00000000, 8269.00000000, '+', 'QZQECZKPUWQF', 'Earn amount from Mining', 'mining', '2024-01-06 18:46:54', '2024-01-06 18:46:54'),
(155, 1, 55.00000000, 0.00000000, 8324.00000000, '+', 'KVKTGEATYAQ1', 'Earn amount from Mining', 'mining', '2024-01-06 22:03:16', '2024-01-06 22:03:16'),
(156, 1, 50.00000000, 0.00000000, 8274.00000000, '-', '34JMDJA5MREN', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-06 22:27:52', '2024-01-06 22:27:52'),
(157, 1, 50.00000000, 0.00000000, 8224.00000000, '-', 'Q5XW3M9VDA8S', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-06 22:31:43', '2024-01-06 22:31:43'),
(158, 1, 50.00000000, 0.00000000, 8174.00000000, '-', '1TVXF8MD8VBJ', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-06 22:34:20', '2024-01-06 22:34:20'),
(159, 1, 50.00000000, 0.00000000, 8124.00000000, '-', 'MJMUV6JV3OXE', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-06 22:34:37', '2024-01-06 22:34:37'),
(160, 1, 100.00000000, 0.00000000, 8024.00000000, '-', 'RKY4H65XN8U6', 'Robot 2 Purchase successfull', 'subscribe_plan', '2024-01-06 22:35:37', '2024-01-06 22:35:37'),
(161, 1, 10.00000000, 3.00000000, 8014.00000000, '-', '4FETUPQH2EKY', '700.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:10:19', '2024-01-07 20:10:19'),
(162, 1, 10.00000000, 3.00000000, 8004.00000000, '-', 'DXQE38NV75C5', '700.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:18:56', '2024-01-07 20:18:56'),
(163, 1, 10.00000000, 3.00000000, 7994.00000000, '-', 'CRSDBXRMWNAT', '700.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:19:45', '2024-01-07 20:19:45'),
(164, 1, 10.00000000, 3.00000000, 7984.00000000, '-', 'YQFNYR2X375O', '700.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:19:53', '2024-01-07 20:19:53'),
(165, 1, 20.00000000, 0.00000000, 7964.00000000, '-', 'RKSPYGKZ38F5', '2,000.00 Taka Withdraw Via Nagad', 'withdraw', '2024-01-07 20:24:33', '2024-01-07 20:24:33'),
(166, 1, 20.00000000, 4.00000000, 7944.00000000, '-', '7G72CFBFTZ2T', '1,600.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:25:10', '2024-01-07 20:25:10'),
(167, 1, 10.00000000, 3.00000000, 7934.00000000, '-', 'PP699FP8YP94', '700.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:26:33', '2024-01-07 20:26:33'),
(168, 1, 100.00000000, 12.00000000, 7834.00000000, '-', 'QUO89PUM2XRB', '8,800.00 Taka Withdraw Via bKash', 'withdraw', '2024-01-07 20:37:08', '2024-01-07 20:37:08'),
(169, 1, 85.00000000, 0.00000000, 7919.00000000, '+', '7O6PBC3G1WXG', 'Earn amount from Mining', 'mining', '2024-01-08 16:31:09', '2024-01-08 16:31:09'),
(170, 1, 85.00000000, 0.00000000, 8004.00000000, '+', 'VDGMUTO83E6W', 'Earn amount from Mining', 'mining', '2024-01-08 21:56:32', '2024-01-08 21:56:32'),
(171, 1, 20.00000000, 0.00000000, 8024.00000000, '+', 'GCPK7KKSTJ3D', 'Deposit Via USDT', 'deposit', '2024-01-08 22:58:26', '2024-01-08 22:58:26'),
(172, 2, 50.00000000, 0.00000000, 35.00000000, '-', '4DHAK8UX5PAY', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-09 01:00:24', '2024-01-09 01:00:24'),
(173, 1, 5.00000000, 0.00000000, 8029.00000000, '+', '4DHAK8UX5PAY', '1st level referral commission from test02', 'referral_commission', '2024-01-09 01:00:24', NULL),
(174, 2, 5.00000000, 0.00000000, 40.00000000, '+', 'GA45ZEHO98P3', 'Earn amount from Mining', 'mining', '2024-01-09 01:01:33', '2024-01-09 01:01:33'),
(175, 1, 0.50000000, 0.00000000, 8029.50000000, '+', 'GA45ZEHO98P3', '1st level referral commission from test02', 'referral_commission', '2024-01-09 01:01:33', NULL),
(176, 3, 50.00000000, 0.00000000, 60.00000000, '-', '9PAF4HX5RF1D', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-09 01:39:16', '2024-01-09 01:39:16'),
(177, 2, 5.00000000, 0.00000000, 45.00000000, '+', '9PAF4HX5RF1D', '1st level referral commission from 1740898877', 'referral_commission', '2024-01-09 01:39:16', NULL),
(178, 1, 2.50000000, 0.00000000, 8032.00000000, '+', '9PAF4HX5RF1D', '2nd level referral commission from 1740898877', 'referral_commission', '2024-01-09 01:39:16', NULL),
(179, 17, 500.00000000, 0.00000000, 500.00000000, '+', 'FA8YAFJZOD4M', '534532', 'balance_add', '2024-01-09 09:04:57', '2024-01-09 09:04:57'),
(180, 17, 50.00000000, 0.00000000, 450.00000000, '-', 'X9YVDYVYECO9', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-01-09 09:06:41', '2024-01-09 09:06:41'),
(181, 16, 5.00000000, 0.00000000, 5.00000000, '+', 'X9YVDYVYECO9', '1st level referral commission from test09', 'referral_commission', '2024-01-09 09:06:41', NULL),
(182, 17, 5.00000000, 0.00000000, 455.00000000, '+', 'JVSEKUOOV11A', 'Earn amount from Mining', 'mining', '2024-01-09 09:40:06', '2024-01-09 09:40:06'),
(183, 16, 0.50000000, 0.00000000, 5.50000000, '+', 'JVSEKUOOV11A', '1st level referral commission from test09', 'referral_commission', '2024-01-09 09:40:06', NULL),
(184, 1, 85.00000000, 0.00000000, 8117.00000000, '+', 'RPQ9Z3YAUUND', 'Earn amount from Mining', 'mining', '2024-01-09 20:11:02', '2024-01-09 20:11:02'),
(185, 1, 85.00000000, 0.00000000, 8202.00000000, '+', 'UPCB2WN4E2H2', 'Earn amount from Mining', 'mining', '2024-01-11 12:14:35', '2024-01-11 12:14:35'),
(186, 19, 100.00000000, 0.00000000, 100.00000000, '+', 'N258SVMUSQBD', 'Deposit Via USDT', 'deposit', '2024-01-11 14:29:30', '2024-01-11 14:29:30'),
(187, 19, 100.00000000, 0.00000000, 0.00000000, '-', 'DFF42BUGV2O5', 'Robot 2 Purchase successfull', 'subscribe_plan', '2024-01-11 14:30:06', '2024-01-11 14:30:06'),
(188, 19, 10.00000000, 0.00000000, 10.00000000, '+', 'S5AV6FTXUGOE', 'Earn amount from Mining', 'mining', '2024-01-11 14:30:14', '2024-01-11 14:30:14'),
(189, 19, 10.00000000, 0.00000000, 20.00000000, '+', 'B27HYK23XP29', 'Earn amount from Mining', 'mining', '2024-01-11 19:11:31', '2024-01-11 19:11:31'),
(190, 1, 85.00000000, 0.00000000, 8287.00000000, '+', 'JXJAQDRPYP8B', 'Earn amount from Mining', 'mining', '2024-01-11 21:03:06', '2024-01-11 21:03:06'),
(191, 1, 85.00000000, 0.00000000, 8372.00000000, '+', 'OKHXQ6XPG7PF', 'Earn amount from Mining', 'mining', '2024-01-12 09:26:38', '2024-01-12 09:26:38'),
(192, 1, 75.00000000, 0.00000000, 8447.00000000, '+', 'K35MEUVY7X4A', 'Earn amount from Mining', 'mining', '2024-01-12 21:48:43', '2024-01-12 21:48:43'),
(193, 1, 75.00000000, 0.00000000, 8522.00000000, '+', 'HC2867MA8YVF', 'Earn amount from Mining', 'mining', '2024-01-13 19:21:59', '2024-01-13 19:21:59'),
(194, 1, 75.00000000, 0.00000000, 8597.00000000, '+', 'V3YJW4BDV77J', 'Earn amount from Mining', 'mining', '2024-01-15 17:21:22', '2024-01-15 17:21:22'),
(195, 1, 75.00000000, 0.00000000, 8672.00000000, '+', 'KNNM4PVZSUG5', 'Earn amount from Mining', 'mining', '2024-01-24 15:33:12', '2024-01-24 15:33:12'),
(196, 1, 50.00000000, 0.00000000, 8822.00000000, '-', 'HU8CH6RD5UMD', 'Robot 1 Purchase successfull', 'subscribe_plan', '2024-02-08 18:50:45', '2024-02-08 18:50:45'),
(197, 1, 5.00000000, 0.00000000, 8827.00000000, '+', 'AB1294R5GP6V', 'Earn amount from Mining', 'mining', '2024-02-08 18:50:55', '2024-02-08 18:50:55'),
(198, 1, 5.00000000, 0.00000000, 8832.00000000, '+', 'TZTFPDNMYQMM', 'Earn amount from Mining', 'mining', '2024-02-10 18:22:19', '2024-02-10 18:22:19'),
(199, 1, 5.00000000, 0.00000000, 8837.00000000, '+', '9EJSRKDTURRZ', 'Earn amount from Mining', 'mining', '2024-02-11 20:33:24', '2024-02-11 20:33:24'),
(200, 1, 5.00000000, 0.00000000, 8842.00000000, '+', 'G9S2U6VCWZTX', 'Earn amount from Mining', 'mining', '2024-02-12 19:36:45', '2024-02-12 19:36:45'),
(201, 1, 5.00000000, 0.00000000, 8847.00000000, '+', '3D8QFTJTFSZT', 'Earn amount from Mining', 'mining', '2024-02-12 19:38:41', '2024-02-12 19:38:41'),
(202, 1, 200.00000000, 0.00000000, 8647.00000000, '-', 'W3M38AYAKH5F', 'META Purchase successfull', 'subscribe_plan', '2024-02-12 22:39:14', '2024-02-12 22:39:14'),
(203, 1, 100.00000000, 0.00000000, 8547.00000000, '-', 'MPZTU7MVNHTH', 'NVIDIA Purchase successfull', 'subscribe_plan', '2024-02-12 22:39:19', '2024-02-12 22:39:19'),
(204, 1, 200.00000000, 0.00000000, 8347.00000000, '-', 'S5ASFSS5G6K3', 'META Purchase successfull', 'subscribe_plan', '2024-02-12 22:42:15', '2024-02-12 22:42:15'),
(205, 1, 50.00000000, 0.00000000, 8297.00000000, '-', 'J7DK3GV2SDYC', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-12 22:59:49', '2024-02-12 22:59:49'),
(206, 1, 200.00000000, 0.00000000, 8097.00000000, '-', 'VBKXOFUJV2UM', 'META Purchase successfull', 'subscribe_plan', '2024-02-12 23:00:03', '2024-02-12 23:00:03'),
(207, 1, 400.00000000, 0.00000000, 7697.00000000, '-', '611BP6DFU5CX', 'AMZN Purchase successfull', 'subscribe_plan', '2024-02-12 23:00:23', '2024-02-12 23:00:23'),
(208, 1, 120.00000000, 0.00000000, 7817.00000000, '+', 'DSFTSPG47EZZ', 'Earn amount from Mining', 'mining', '2024-02-15 14:23:49', '2024-02-15 14:23:49'),
(209, 1, 120.00000000, 0.00000000, 7937.00000000, '+', 'FW7YXJKXU9ZE', 'Earn amount from Mining', 'mining', '2024-02-16 05:33:01', '2024-02-16 05:33:01'),
(210, 1, 50.00000000, 0.00000000, 7887.00000000, '-', '61N576RR2QJZ', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-16 05:33:44', '2024-02-16 05:33:44'),
(211, 1, 200.00000000, 0.00000000, 7687.00000000, '-', 'YJFX26CAJS86', 'META Purchase successfull', 'subscribe_plan', '2024-02-16 05:34:03', '2024-02-16 05:34:03'),
(212, 1, 300.00000000, 0.00000000, 200.00000000, '-', 'X43BOYJQYOHM', 'AMD Purchase successfull', 'subscribe_plan', '2024-02-16 05:35:30', '2024-02-16 05:35:30'),
(213, 1, 50.00000000, 0.00000000, 150.00000000, '-', 'KHHOTAW1NKPQ', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-16 05:36:00', '2024-02-16 05:36:00'),
(214, 1, 180.00000000, 0.00000000, 330.00000000, '+', 'SCZCWHMYZR7T', 'Earn amount from Mining', 'mining', '2024-02-16 05:36:55', '2024-02-16 05:36:55'),
(215, 1, 300.00000000, 0.00000000, 30.00000000, '-', 'J7OGEGNHYA3Z', 'AMD Purchase successfull', 'subscribe_plan', '2024-02-16 05:37:30', '2024-02-16 05:37:30'),
(216, 1, 30.00000000, 0.00000000, 0.00000000, '-', 'FJU2WAPJPG5Y', '3,000.00 Taka Withdraw Via Nagad', 'withdraw', '2024-02-16 05:38:23', '2024-02-16 05:38:23'),
(217, 1, 210.00000000, 0.00000000, 210.00000000, '+', '8Y7X4KNCOSB7', 'Earn amount from Mining', 'mining', '2024-02-16 19:20:18', '2024-02-16 19:20:18'),
(218, 1, 200.00000000, 0.00000000, 10.00000000, '-', 'R9KDKBP5OE38', 'META Purchase successfull', 'subscribe_plan', '2024-02-16 19:38:55', '2024-02-16 19:38:55'),
(219, 1, 20.00000000, 0.00000000, 30.00000000, '+', 'X9QKZZQQJO2V', 'Earn amount from Mining', 'mining', '2024-02-16 19:39:03', '2024-02-16 19:39:03'),
(220, 1, 55.00000000, 0.00000000, 85.00000000, '+', 'YOT2OGF2ANJN', '5555', 'balance_add', '2024-02-16 20:25:08', '2024-02-16 20:25:08'),
(221, 1, 50.00000000, 0.00000000, 35.00000000, '-', 'HD6OJWOTNAXR', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-16 20:25:21', '2024-02-16 20:25:21'),
(222, 1, 3.00000000, 0.00000000, 119.25000000, '+', 'MUJ1S1NREM1M', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-17 17:58:29', '2024-02-17 17:58:29'),
(223, 1, 25.00000000, 0.00000000, 144.25000000, '+', '816V12HMK84G', 'Earn amount from Mining', 'mining', '2024-02-17 18:08:33', '2024-02-17 18:08:33'),
(224, 1, 50.00000000, 0.00000000, 94.25000000, '-', '5M3AA3GBG5NV', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-17 19:59:56', '2024-02-17 19:59:56'),
(225, 1, 30.00000000, 0.00000000, 124.25000000, '+', '4FHGW72EKWA9', 'Earn amount from Mining', 'mining', '2024-02-17 20:00:09', '2024-02-17 20:00:09'),
(226, 1, 11.75000000, 0.00000000, 136.00000000, '+', '59P6QOFSRYFF', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-17 20:00:39', '2024-02-17 20:00:39'),
(227, 1, 0.25000000, 0.00000000, 136.25000000, '+', 'AWU52CJT5NJS', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-17 20:01:19', '2024-02-17 20:01:19'),
(228, 1, 100.00000000, 0.00000000, 36.25000000, '-', '28WO7X7PDTEU', 'NVIDIA Purchase successfull', 'subscribe_plan', '2024-02-17 20:01:48', '2024-02-17 20:01:48'),
(229, 1, 40.00000000, 0.00000000, 76.25000000, '+', '5RQYMZXDCWNW', 'Earn amount from Mining', 'mining', '2024-02-19 02:30:22', '2024-02-19 02:30:22'),
(230, 1, 0.50000000, 0.00000000, 76.75000000, '+', '941EM87OPDYE', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-19 02:31:56', '2024-02-19 02:31:56'),
(231, 1, 50.00000000, 0.00000000, 26.75000000, '-', 'DE2GJMT63MXW', 'TSLA Purchase successfull', 'subscribe_plan', '2024-02-19 03:01:56', '2024-02-19 03:01:56'),
(232, 1, 45.00000000, 0.00000000, 71.75000000, '+', 'RX7WCKR35Y7E', 'Earn amount from Mining', 'mining', '2024-02-19 04:41:32', '2024-02-19 04:41:32'),
(233, 1, 2.00000000, 0.00000000, 73.75000000, '+', 'G9AFJXUKC3FT', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-19 04:42:29', '2024-02-19 04:42:29'),
(234, 1, 23.00000000, 0.00000000, 49.25000000, '+', '541AFXC8QQ8C', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-19 05:54:18', '2024-02-19 05:54:18'),
(235, 1, 2.50000000, 0.00000000, 49.25000000, '+', '81Q98ZW826YQ', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-19 05:55:11', '2024-02-19 05:55:11'),
(236, 1, 4.50000000, 0.00000000, 43.75000000, '+', 'TQ9G59WG36AR', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-20 04:59:59', '2024-02-20 04:59:59'),
(237, 1, 45.00000000, 0.00000000, 88.75000000, '+', 'RJP9C4BUR18A', 'Earn amount from Mining', 'mining', '2024-02-20 05:09:58', '2024-02-20 05:09:58'),
(238, 1, 4.00000000, 0.00000000, 85.25000000, '+', 'BE5RFHPSARCY', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-20 05:37:59', '2024-02-20 05:37:59'),
(239, 1, 1.25000000, 0.00000000, 79.00000000, '+', 'S73WBXBMECAG', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-20 07:29:02', '2024-02-20 07:29:02'),
(240, 1, 45.00000000, 0.00000000, 114.00000000, '+', 'TSGZKY6UDU2A', 'Earn amount from Mining', 'mining', '2024-02-21 09:18:04', '2024-02-21 09:18:04'),
(241, 1, 6.50000000, 0.00000000, 118.00000000, '+', '47YDN8V479V8', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-21 11:11:08', '2024-02-21 11:11:08'),
(242, 1, 2.50000000, 0.00000000, 118.00000000, '+', 'FKOQSYAEFK7B', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-21 11:11:51', '2024-02-21 11:11:51'),
(243, 1, 45.00000000, 0.00000000, 163.00000000, '+', '6DUA49AOKN88', 'Earn amount from Mining', 'mining', '2024-02-21 18:05:28', '2024-02-21 18:05:28'),
(244, 1, 2.00000000, 0.00000000, 165.00000000, '+', 'V1T5VQTJ8O6W', 'Diamond Swap Successfull!', 'swap_diamond', '2024-02-21 18:05:51', '2024-02-21 18:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `plan_id` int NOT NULL DEFAULT '0',
  `ref_by` int UNSIGNED NOT NULL DEFAULT '0',
  `daily_limit` int NOT NULL DEFAULT '0',
  `isCollect` tinyint DEFAULT '0',
  `collect_date` date DEFAULT NULL,
  `spin_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_card` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fund_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `diamond` decimal(28,8) DEFAULT '0.00000000',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `kyc_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notice_board` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `ver_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `plan_id`, `ref_by`, `daily_limit`, `isCollect`, `collect_date`, `spin_date`, `bank_card`, `firstname`, `lastname`, `username`, `email`, `fund_pass`, `country_code`, `mobile`, `balance`, `diamond`, `password`, `address`, `status`, `kyc_data`, `notice_board`, `kv`, `ev`, `sv`, `profile_complete`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `ban_reason`, `expire_date`, `remember_token`, `login_by`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 0, '2024-02-22', '2024-02-21 18:05:44', '{\"method_code\":\"1002\",\"method_address\":\"56789\"}', 'Alex', 'Daur', 'test01', 'test01@gmail.com', '12345', 'BD', '880323434522', 165.00000000, 0.00000000, '$2y$10$7dq46rlSu34Q6DL0peVOze.16IkU2s5/7nF0paGqDfzFVDKVkP9ea', '{\"address\":null,\"city\":null,\"state\":null,\"zip\":null,\"country\":\"Bangladesh\"}', 1, NULL, 'Hello Brother, How are you?', 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2023-09-11 17:07:56', NULL, NULL, '2023-08-10 15:59:41', '2024-02-21 18:05:51'),
(2, 0, 1, 0, 0, '2024-01-09', '2024-02-17 18:22:40', NULL, 'Hemel', 'Mridha', 'test02', 'test02@gmail.com', NULL, NULL, '1234567', 45.00000000, 0.00000000, '$2y$10$YhvT90W.jsGdzDYNtOHUJO7zIZ5n7VdUAfqQzEDm7bpsuX7UCy2cK', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-12 06:44:15', '2024-01-09 01:39:16'),
(3, 0, 2, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', '1740898877', '1740898877@gmail.com', NULL, 'BD', '1740898877', 60.00000000, 0.00000000, '$2y$10$KBXTqjzaCKqVoYLH48k8VuEzNnG1bATiZJwJAeEJThvQohAEXXriW', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-06 19:05:15', '2024-01-09 01:39:16'),
(4, 0, 3, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', '1740898878', '1740898878@gmail.com', NULL, 'BD', '1740898878', 300.00000000, 0.00000000, '$2y$10$3XwEhoQHvjH.Fwjw8CU.ke.M/TfPOqtXV/IjYfOtZTLK6PAZj3rK2', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-06 19:07:40', '2023-10-24 12:20:26'),
(5, 0, 1, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', '1740898890', '1740898890@gmail.com', NULL, 'BD', '1740898890', 0.00000000, 0.00000000, '$2y$10$QfZZzk5F6vF6XnDm5/JxWewxnJOT.4gipJl0PiX6FvKvwT0KuNFPu', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-10 12:37:42', '2023-10-10 12:37:42'),
(6, 0, 0, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', '1740898891', '1740898891@gmail.com', NULL, 'BD', '1740898891', 0.00000000, 0.00000000, '$2y$10$Zvj4CepmCXc08hpTroIZpeLBIUZXlPO/c/vPgI4/O0dn2yzMd0OgS', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-10 12:50:34', '2023-10-10 12:50:34'),
(7, 0, 1, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', '1740898893', '1740898893@gmail.com', NULL, 'BD', '1740898893', 0.00000000, 0.00000000, '$2y$10$6eWSbklFR7iLaTQUoG4WIOc.EimN/aPbFuu3qQ4O4fGQNFxo9KdH.', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-10 12:55:06', '2023-10-10 12:55:06'),
(8, 0, 0, 0, 0, '2023-10-13', '2024-02-17 18:22:40', '{\"bank_id\":\"1\",\"bank_name\":\"bKash\",\"account_number\":\"12324\",\"real_name\":\"Hemel\"}', ' ', ' ', '1740898811', '1740898811@gmail.com', '1234', 'BD', '1740898811', 433.00000000, 0.00000000, '$2y$10$b/9rEXSaZC0tG.qJQy2ZLu5sx.PF9JGR1ENIRx0H9a2MJw7tC2nbm', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-10-28 19:31:58', '2023-11-03 19:38:24'),
(9, 0, 0, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', 'test006', 'test006@gmail.com', NULL, 'BD', '234567', 0.00000000, 0.00000000, '$2y$10$4TevSAyqW1HFvzD0AqF50.Had1h2M8IeHiSdylKUdhiWO4dihYIva', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-12-28 10:28:54', '2023-12-28 10:28:54'),
(10, 0, 0, 0, 0, NULL, '2024-02-17 18:22:40', NULL, ' ', ' ', 'test007', 'test007@gmail.com', NULL, 'BD', '123456', 0.00000000, 0.00000000, '$2y$10$bq43FJRud3wxONZ7Lj5/Te5ipxzP3lnK2SOB9ZOzF9bXxE0Ny9KH2', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2023-12-28 10:44:06', '2023-12-28 10:44:06'),
(11, 0, 0, 0, 0, '2024-01-05', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test03', 'test03@gmail.com', NULL, 'BD', '01740898866', 0.00000000, 0.00000000, '$2y$10$y.J94Xs9mPlI1z5Nwj092.62mjXTmRgTkD9OixrvqiFXAQGzwGIQC', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-06 07:33:03', '2024-01-06 07:33:03'),
(12, 0, 0, 0, 0, '2024-01-06', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test04', 'test04@gmail.com', NULL, 'BD', '01740898877', 0.00000000, 0.00000000, '$2y$10$jdyp/o6.S3NJ7yJ/BYOsuOZ4TZGeYiOYzi.q5bYLDrH6w2Wq3P.yi', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-06 22:47:09', '2024-01-06 22:47:09'),
(13, 0, 0, 0, 0, '2024-01-06', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test05', 'test05@gmail.com', NULL, 'BD', '01740898844', 0.00000000, 0.00000000, '$2y$10$nRwXKOrMq0BAuMuvXB/tbu4.FK1jnzEXpjACk7ZAeC6h4BXE2p3M2', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-07 17:50:13', '2024-01-07 17:50:13'),
(14, 0, 0, 0, 0, '2024-01-06', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test06', 'test06@gmail.com', NULL, 'BD', '01740899977', 0.00000000, 0.00000000, '$2y$10$29ssAFLhu/f.vTwWRo19Lue3f0SoyWhVQ9JUbU2vqvjQH6v7qISf2', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-07 17:56:37', '2024-01-07 17:56:37'),
(15, 0, 14, 0, 0, '2024-01-07', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test07', 'test07@gmail.com', NULL, 'BD', '987786647', 0.00000000, 0.00000000, '$2y$10$orrqb1LD9QE3FKnighN7pu6AfAD7d97ObEKBT/9CKKoX52C/LbWo2', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-07 18:00:28', '2024-01-07 18:00:28'),
(16, 0, 0, 0, 0, '2024-01-08', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test08', 'test08@gmail.com', NULL, 'BD', '312412412312', 5.50000000, 0.00000000, '$2y$10$vUo3Gtn3fCui4zD5KKuNC.qJT5QqwUcu1D836KW9WgUjVJUyzqgs6', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-09 08:42:24', '2024-01-09 09:40:06'),
(17, 0, 16, 0, 0, '2024-01-09', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test09', 'test09@gmail.com', NULL, 'BD', '3124124', 455.00000000, 0.00000000, '$2y$10$vwc8PBhcwALs4eaI0H8tXuQmchf2DCeQ98cgMQD2u6AIply0sH2ca', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-09 08:45:50', '2024-01-09 09:40:06'),
(18, 0, 0, 0, 0, '2024-01-08', '2024-02-17 18:22:40', NULL, ' ', ' ', 'test010', 'test010@gmail.com', NULL, 'BD', '472487193', 0.00000000, 0.00000000, '$2y$10$W5hW2Z9ZbrpuQXn0ddkDueoXOVbrhfkoSqTbCOCES4jqeHxhFxUTe', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-09 09:45:15', '2024-01-09 09:45:15'),
(19, 0, 0, 0, 0, '2024-01-12', '2024-02-17 18:22:40', '{\"method_code\":\"1000\",\"method_address\":\"fesdfd\"}', ' ', ' ', 'test002', 'test002@gmail.com', '1234', 'BD', '75680975', 20.00000000, 0.00000000, '$2y$10$1Ci4sn8YBeJAr7Vxa6XRXOyXK48J8llHSx0yzDksNd6g1v.RwELTW', NULL, 1, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-11 14:27:55', '2024-01-11 19:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `method_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `trx` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `after_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `withdraw_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `method_id`, `user_id`, `amount`, `currency`, `rate`, `charge`, `trx`, `final_amount`, `after_charge`, `withdraw_information`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10.00000000, 'Taka', 100.00000000, 3.00000000, '4FETUPQH2EKY', 700.00000000, 7.00000000, NULL, 1, 'hh', '2024-01-07 20:10:19', '2024-01-07 20:16:50'),
(2, 1, 1, 10.00000000, 'Taka', 100.00000000, 3.00000000, 'DXQE38NV75C5', 700.00000000, 7.00000000, NULL, 2, NULL, '2024-01-07 20:18:56', '2024-01-07 20:18:56'),
(3, 1, 1, 10.00000000, 'Taka', 100.00000000, 3.00000000, 'CRSDBXRMWNAT', 700.00000000, 7.00000000, NULL, 2, NULL, '2024-01-07 20:19:45', '2024-01-07 20:19:45'),
(4, 1, 1, 10.00000000, 'Taka', 100.00000000, 3.00000000, 'YQFNYR2X375O', 700.00000000, 7.00000000, NULL, 2, NULL, '2024-01-07 20:19:53', '2024-01-07 20:19:53'),
(5, 2, 1, 20.00000000, 'Taka', 100.00000000, 0.00000000, 'RKSPYGKZ38F5', 2000.00000000, 20.00000000, NULL, 2, NULL, '2024-01-07 20:24:32', '2024-01-07 20:24:32'),
(6, 1, 1, 20.00000000, 'Taka', 100.00000000, 4.00000000, '7G72CFBFTZ2T', 1600.00000000, 16.00000000, NULL, 2, NULL, '2024-01-07 20:25:10', '2024-01-07 20:25:10'),
(7, 1, 1, 10.00000000, 'Taka', 100.00000000, 3.00000000, 'PP699FP8YP94', 700.00000000, 7.00000000, NULL, 2, NULL, '2024-01-07 20:26:33', '2024-01-07 20:26:33'),
(8, 1, 1, 100.00000000, 'Taka', 100.00000000, 12.00000000, 'QUO89PUM2XRB', 8800.00000000, 88.00000000, NULL, 1, 'test', '2024-01-07 20:37:08', '2024-01-07 20:59:30'),
(9, 2, 1, 30.00000000, 'Taka', 100.00000000, 0.00000000, 'FJU2WAPJPG5Y', 3000.00000000, 30.00000000, NULL, 1, 'ok, done', '2024-02-16 05:38:23', '2024-02-16 05:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT '0.00000000',
  `max_limit` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(28,8) DEFAULT '0.00000000',
  `rate` decimal(28,8) DEFAULT '0.00000000',
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `form_id`, `name`, `min_limit`, `max_limit`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'bKash', 5.00000000, 500.00000000, 2.00000000, 100.00000000, 10.00, 'Taka', 'bKash', 1, '2023-09-30 18:32:10', '2024-01-07 19:11:51'),
(2, 8, 'Nagad', 5.00000000, 5000.00000000, 0.00000000, 100.00000000, 0.00, 'Taka', 'Nagad', 1, '2023-09-30 19:04:51', '2024-01-07 19:36:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_screenshots`
--
ALTER TABLE `app_screenshots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_logs`
--
ALTER TABLE `commission_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_logs`
--
ALTER TABLE `notification_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptcs`
--
ALTER TABLE `ptcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_engagements`
--
ALTER TABLE `ptc_engagements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_reports`
--
ALTER TABLE `ptc_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_report_types`
--
ALTER TABLE `ptc_report_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_views`
--
ALTER TABLE `ptc_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `runing_plans`
--
ALTER TABLE `runing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_screenshots`
--
ALTER TABLE `app_screenshots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `commission_logs`
--
ALTER TABLE `commission_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification_logs`
--
ALTER TABLE `notification_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ptcs`
--
ALTER TABLE `ptcs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptc_engagements`
--
ALTER TABLE `ptc_engagements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ptc_reports`
--
ALTER TABLE `ptc_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ptc_report_types`
--
ALTER TABLE `ptc_report_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ptc_views`
--
ALTER TABLE `ptc_views`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `runing_plans`
--
ALTER TABLE `runing_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
