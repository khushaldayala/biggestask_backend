-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2022 at 01:40 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justcodenow_biggestask`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_question_statuses`
--

CREATE TABLE `admin_question_statuses` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ques_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_question_statuses`
--

INSERT INTO `admin_question_statuses` (`id`, `type`, `user_id`, `ques_type`, `created_at`, `updated_at`) VALUES
(1, 'parent', 1, 'everyweek', '2022-07-13 03:24:01', '2022-07-13 01:38:29'),
(3, 'parent', 7, 'everyday', '2022-07-13 02:02:55', '2022-07-13 02:02:55'),
(4, 'parent', 10, 'Everyday', '2022-07-13 23:05:13', '2022-07-14 03:03:56'),
(5, 'surrogate', 2, 'everyday', '2022-07-14 03:09:11', '2022-07-14 03:09:11'),
(6, 'parent', 11, 'everyday', '2022-07-14 03:11:46', '2022-07-25 21:33:00'),
(7, 'surrogate', 17, 'every_3_day', '2022-07-14 21:35:31', '2022-07-20 23:45:01'),
(8, 'surrogate', 7, 'everyday', '2022-07-14 22:16:21', '2022-07-24 20:23:22'),
(9, 'parent', 35, 'Every 3 day', '2022-07-15 02:44:54', '2022-07-15 02:44:54'),
(10, 'parent', 2, 'everyday', '2022-07-15 03:03:59', '2022-07-25 01:18:52'),
(11, 'surrogate', 125, 'everyday', '2022-07-20 21:19:27', '2022-07-24 20:37:10'),
(12, 'parent', 6, 'everyday', '2022-07-21 00:14:05', '2022-07-21 00:14:05'),
(13, 'parent', 204, 'everyday', '2022-07-21 00:36:22', '2022-07-21 00:36:22'),
(15, 'parent', 214, 'everyday', '2022-07-21 05:13:50', '2022-07-21 05:13:50'),
(16, 'parent', 215, 'every_3_day', '2022-07-21 05:34:23', '2022-07-21 05:34:23'),
(17, 'parent', 22, 'everyweek', '2022-07-21 07:14:52', '2022-07-21 07:14:52'),
(18, 'surrogate', 76, 'everyday', '2022-07-21 22:17:36', '2022-07-22 01:45:57'),
(19, 'parent', 225, 'everyday', '2022-07-22 00:51:34', '2022-07-22 00:51:34'),
(20, 'surrogate', 91, 'everyday', '2022-07-22 00:53:37', '2022-07-22 00:53:37'),
(26, 'surrogate', 91, 'everyday', '2022-07-25 05:45:54', '2022-07-25 05:45:54'),
(27, 'surrogate', 103, 'everyweek', '2022-07-24 22:28:48', '2022-07-24 22:28:48'),
(28, 'parent', 237, 'everyweek', '2022-07-24 22:39:29', '2022-07-24 22:39:29'),
(29, 'parent', 239, 'everyday', '2022-07-25 03:24:16', '2022-07-25 03:24:16'),
(30, 'surrogate', 107, 'everyday', '2022-07-25 03:54:29', '2022-07-25 03:54:29'),
(31, 'parent', 251, 'every_3_day', '2022-07-25 21:26:02', '2022-07-25 21:26:02'),
(32, 'parent', 252, 'everyweek', '2022-07-26 05:20:54', '2022-08-21 22:18:26'),
(33, 'parent', 254, 'every_3_day', '2022-07-26 20:57:47', '2022-07-26 20:57:47'),
(34, 'parent', 257, 'everyday', '2022-07-26 21:08:38', '2022-07-26 21:08:38'),
(35, 'surrogate', 124, 'everyday', '2022-07-26 22:07:51', '2022-07-26 22:07:51'),
(36, 'parent', 260, 'every_week', '2022-07-27 00:48:50', '2022-07-27 00:48:50'),
(37, 'parent', 261, 'every_3_day', '2022-07-27 04:25:17', '2022-07-27 04:25:17'),
(38, 'parent', 262, 'everyday', '2022-07-27 05:21:12', '2022-07-27 05:21:12'),
(39, 'parent', 267, 'everyday', '2022-07-28 02:04:54', '2022-07-28 02:04:54'),
(40, 'parent', 270, 'everyday', '2022-07-28 02:23:30', '2022-07-28 02:23:30'),
(41, 'surrogate', 137, 'everyday', '2022-07-28 02:25:47', '2022-07-28 02:25:47'),
(42, 'surrogate', 138, 'everyday', '2022-07-28 02:54:03', '2022-07-28 02:54:03'),
(43, 'parent', 273, 'everyday', '2022-07-28 02:55:59', '2022-07-28 02:55:59'),
(44, 'parent', 275, 'Every day', '2022-07-28 03:41:30', '2022-07-28 03:41:30'),
(45, 'parent', 276, 'Everyday', '2022-07-28 20:57:34', '2022-07-31 02:47:58'),
(46, 'surrogate', 145, 'everyday', '2022-07-31 20:42:07', '2022-07-31 20:42:07'),
(47, 'parent', 280, 'everyday', '2022-07-31 20:56:35', '2022-07-31 20:56:35'),
(48, 'parent', 283, 'everyday', '2022-07-31 21:11:46', '2022-07-31 21:11:46'),
(49, 'surrogate', 2, 'everyday', '2022-08-01 05:58:34', '2022-08-01 05:58:34'),
(50, 'surrogate', 144, 'Every day', '2022-07-31 23:08:23', '2022-07-31 23:08:23'),
(51, 'parent', 284, 'Every day', '2022-07-31 23:09:49', '2022-07-31 23:09:49'),
(52, 'surrogate', 151, 'Every day', '2022-08-01 02:27:44', '2022-08-01 02:27:44'),
(53, 'parent', 281, 'Every day', '2022-08-01 02:32:06', '2022-08-01 02:32:06'),
(54, 'surrogate', 153, 'Every day', '2022-08-01 04:46:20', '2022-08-01 04:46:20'),
(55, 'parent', 288, 'Every day', '2022-08-01 04:47:27', '2022-08-01 04:47:27'),
(56, 'parent', 289, 'Every day', '2022-08-01 05:11:17', '2022-08-01 05:11:17'),
(57, 'surrogate', 156, 'Every day', '2022-08-01 05:12:09', '2022-08-01 05:12:09'),
(58, 'surrogate', 157, 'Every day', '2022-08-01 05:18:55', '2022-08-01 05:18:55'),
(59, 'parent', 293, 'Every day', '2022-08-01 05:19:45', '2022-08-01 05:19:45'),
(60, 'surrogate', 161, 'Every day', '2022-08-01 05:23:06', '2022-08-01 05:23:06'),
(61, 'parent', 292, 'Every day', '2022-08-01 05:23:08', '2022-08-01 05:23:08'),
(62, 'parent', 297, 'Every day', '2022-08-01 05:40:11', '2022-08-01 05:40:11'),
(63, 'surrogate', 162, 'Every 3 days', '2022-08-01 05:42:43', '2022-08-01 05:42:43'),
(64, 'parent', 299, 'Every week', '2022-08-01 20:51:31', '2022-08-01 20:51:31'),
(65, 'surrogate', 166, 'Every day', '2022-08-01 20:53:15', '2022-08-01 20:53:15'),
(66, 'parent', 302, 'Every day', '2022-08-01 23:04:46', '2022-08-01 23:04:46'),
(67, 'surrogate', 168, 'Every day', '2022-08-01 23:06:53', '2022-08-01 23:06:53'),
(68, 'parent', 305, 'Every 3 days', '2022-08-03 03:05:03', '2022-08-03 03:05:03'),
(69, 'surrogate', 171, 'Every week', '2022-08-03 03:07:28', '2022-08-03 03:07:28'),
(70, 'parent', 307, 'Every day', '2022-08-03 23:11:58', '2022-08-03 23:11:58'),
(71, 'surrogate', 173, 'Every day', '2022-08-03 23:15:25', '2022-08-03 23:15:25'),
(72, 'surrogate', 174, 'Every day', '2022-08-04 01:15:20', '2022-08-04 01:15:20'),
(73, 'parent', 310, 'Every day', '2022-08-04 01:17:06', '2022-08-04 01:17:06'),
(74, 'parent', 311, 'Every day', '2022-08-09 00:29:38', '2022-08-09 00:29:38'),
(75, 'parent', 313, 'Every day', '2022-08-11 04:49:04', '2022-08-11 04:49:04'),
(76, 'surrogate', 178, 'everyday', '2022-08-12 01:49:21', '2022-08-12 01:49:21'),
(77, 'surrogate', 179, 'everyday', '2022-08-12 02:27:30', '2022-08-12 02:27:30'),
(78, 'surrogate', 180, 'everyday', '2022-08-12 03:33:28', '2022-08-12 03:33:28'),
(79, 'surrogate', 184, 'everyday', '2022-08-15 20:38:06', '2022-08-15 20:38:06'),
(80, 'parent', 321, 'Every day', '2022-08-16 00:41:41', '2022-08-16 00:41:41'),
(81, 'surrogate', 186, 'Every day', '2022-08-16 00:44:03', '2022-08-16 00:44:03'),
(82, 'parent', 327, 'Every day', '2022-08-16 21:47:54', '2022-09-08 03:08:02'),
(83, 'surrogate', 190, 'Every day', '2022-08-16 21:47:55', '2022-08-16 21:47:55'),
(84, 'surrogate', 191, 'Every day', '2022-08-16 23:57:30', '2022-08-16 23:57:30'),
(85, 'parent', 332, 'Every day', '2022-08-16 23:58:32', '2022-08-16 23:58:32'),
(86, 'surrogate', 193, 'Every day', '2022-08-17 20:32:34', '2022-09-13 01:04:33'),
(87, 'parent', 335, 'Every day', '2022-08-19 02:30:12', '2022-08-19 02:30:12'),
(88, 'surrogate', 196, 'Every day', '2022-08-19 02:31:58', '2022-08-19 02:31:58'),
(89, 'parent', 337, 'Every day', '2022-08-19 06:38:04', '2022-08-19 06:38:04'),
(90, 'surrogate', 198, 'Every day', '2022-08-19 07:02:44', '2022-08-19 07:02:44'),
(91, 'parent', 341, 'Every day', '2022-08-19 07:28:40', '2022-08-19 07:28:40'),
(92, 'parent', 226, 'everyday', '2022-08-21 22:18:45', '2022-08-21 22:20:02'),
(93, 'surrogate', 203, 'Every day', '2022-08-21 23:04:06', '2022-08-21 23:04:06'),
(94, 'parent', 342, 'Every day', '2022-08-21 23:04:35', '2022-08-21 23:04:35'),
(95, 'surrogate', 204, 'Every day', '2022-08-22 03:19:10', '2022-08-22 03:19:10'),
(96, 'parent', 346, 'every day', '2022-08-22 03:27:32', '2022-10-26 21:47:18'),
(98, 'parent', 347, 'Every day', '2022-08-23 00:40:21', '2022-08-23 00:40:21'),
(99, 'surrogate', 208, 'Every day', '2022-08-23 00:40:21', '2022-08-23 00:40:21'),
(100, 'parent', 349, 'Every day', '2022-08-23 02:47:36', '2022-08-23 02:47:36'),
(101, 'surrogate', 211, 'Every day', '2022-08-23 02:50:04', '2022-08-23 02:50:04'),
(102, 'parent', 352, 'Every day', '2022-08-23 02:57:46', '2022-08-23 02:57:46'),
(103, 'parent', 353, 'Every day', '2022-08-23 04:03:48', '2022-08-23 04:03:48'),
(105, 'surrogate', 205, 'every day', '2022-08-25 05:50:19', '2022-10-26 01:06:37'),
(106, 'surrogate', 225, 'Every 3 days', '2022-08-26 00:15:10', '2022-08-26 00:15:10'),
(107, 'parent', 366, 'Every day', '2022-08-26 00:22:08', '2022-08-26 00:22:08'),
(108, 'surrogate', 228, 'Every week', '2022-08-29 23:54:37', '2022-09-01 10:18:02'),
(109, 'parent', 367, 'Every 3 days', '2022-08-30 02:27:19', '2022-08-30 02:27:19'),
(110, 'parent', 369, 'Every day', '2022-08-30 03:45:15', '2022-08-30 03:45:15'),
(111, 'surrogate', 231, 'Every day', '2022-08-30 22:10:30', '2022-08-30 22:10:30'),
(112, 'parent', 370, 'Every week', '2022-08-30 22:20:46', '2022-08-30 22:20:46'),
(113, 'parent', 386, 'Every week', '2022-08-30 22:30:11', '2022-08-30 22:30:11'),
(114, 'parent', 391, 'Every week', '2022-08-30 22:34:59', '2022-08-30 22:34:59'),
(115, 'surrogate', 250, 'Every day', '2022-08-30 22:36:28', '2022-08-30 22:36:28'),
(116, 'parent', 392, 'Every day', '2022-08-30 22:45:14', '2022-08-30 22:45:14'),
(117, 'surrogate', 253, 'Every day', '2022-08-30 22:45:15', '2022-08-30 22:45:15'),
(118, 'parent', 394, 'Every day', '2022-08-30 22:54:02', '2022-08-30 22:54:02'),
(119, 'surrogate', 255, 'Every day', '2022-08-30 22:54:03', '2022-08-30 22:54:03'),
(120, 'parent', 396, 'Every day', '2022-09-01 21:24:28', '2022-09-01 21:24:28'),
(121, 'parent', 398, 'Every day', '2022-09-03 01:06:08', '2022-09-03 01:06:08'),
(122, 'surrogate', 259, 'Every day', '2022-09-03 01:06:09', '2022-09-03 01:06:09'),
(123, 'parent', 400, 'Every day', '2022-09-04 08:27:02', '2022-09-04 08:27:02'),
(124, 'surrogate', 261, 'Every day', '2022-09-04 08:45:44', '2022-09-04 08:45:44'),
(125, 'surrogate', 263, 'Every day', '2022-09-06 02:25:54', '2022-09-06 02:25:54'),
(126, 'parent', 402, 'Every day', '2022-09-06 02:26:31', '2022-09-06 02:26:31'),
(127, 'parent', 405, 'Every day', '2022-09-07 21:38:44', '2022-09-07 21:38:44'),
(128, 'surrogate', 268, 'Every day', '2022-09-07 21:40:46', '2022-09-11 06:16:58'),
(129, 'parent', 409, 'every day', '2022-09-08 20:38:51', '2022-09-15 04:49:33'),
(130, 'surrogate', 270, 'Every day', '2022-09-08 21:01:29', '2022-09-08 21:01:29'),
(131, 'surrogate', 271, 'Every day', '2022-09-08 21:13:48', '2022-09-08 21:13:48'),
(132, 'parent', 412, 'Every day', '2022-09-08 21:28:38', '2022-09-08 21:28:38'),
(133, 'surrogate', 273, 'Every day', '2022-09-08 21:35:32', '2022-09-08 21:35:32'),
(134, 'parent', 414, 'Every 3 days', '2022-09-12 04:38:08', '2022-09-12 04:38:23'),
(135, 'parent', 420, 'Every day', '2022-09-12 05:06:09', '2022-09-12 05:06:09'),
(136, 'surrogate', 277, 'Every day', '2022-09-12 22:22:28', '2022-09-12 22:22:28'),
(137, 'parent', 421, 'every 3 days', '2022-09-13 21:56:03', '2022-09-29 10:58:57'),
(138, 'surrogate', 280, 'Every day', '2022-09-13 22:03:01', '2022-09-13 22:03:01'),
(139, 'parent', 423, 'Every day', '2022-09-13 22:06:06', '2022-09-13 22:06:06'),
(140, 'surrogate', 282, 'every day', '2022-09-13 22:09:20', '2022-09-15 04:35:50'),
(141, 'parent', 426, 'every day', '2022-09-13 22:29:30', '2022-09-13 22:29:30'),
(142, 'surrogate', 285, 'every 3 days', '2022-09-14 04:32:14', '2022-09-14 04:32:14'),
(143, 'parent', 435, 'every 3 days', '2022-10-02 05:59:07', '2022-10-02 06:01:50'),
(144, 'surrogate', 293, 'every day', '2022-10-02 06:00:18', '2022-10-02 06:00:18'),
(145, 'parent', 437, 'every day', '2022-10-04 08:56:38', '2022-10-04 08:56:38'),
(146, 'surrogate', 297, 'every day', '2022-10-04 09:14:26', '2022-10-04 09:14:26'),
(147, 'parent', 453, 'every day', '2022-10-18 03:22:29', '2022-10-18 03:22:29'),
(148, 'parent', 471, 'every day', '2022-10-18 22:51:11', '2022-10-18 22:51:11'),
(149, 'surrogate', 339, 'every day', '2022-10-19 00:42:42', '2022-10-19 00:42:42'),
(150, 'surrogate', 328, 'every day', '2022-10-19 06:02:21', '2022-10-19 06:02:21'),
(151, 'parent', 517, 'every day', '2022-10-19 06:51:52', '2022-10-19 06:51:52'),
(152, 'surrogate', 326, 'every day', '2022-10-19 12:57:32', '2022-10-19 12:57:32'),
(153, 'parent', 518, 'every week', '2022-10-20 05:57:18', '2022-10-21 02:38:53'),
(154, 'surrogate', 374, 'every day', '2022-10-20 05:59:07', '2022-10-20 05:59:07'),
(155, 'parent', 520, 'every day', '2022-11-02 01:29:26', '2022-11-02 01:29:26'),
(156, 'surrogate', 376, 'every day', '2022-11-02 01:39:47', '2022-11-02 01:39:47'),
(157, 'parent', 522, 'every day', '2022-11-02 01:45:34', '2022-11-02 01:45:34'),
(158, 'parent', 523, 'every day', '2022-11-02 22:33:53', '2022-11-02 22:33:53'),
(159, 'surrogate', 379, 'every day', '2022-11-02 22:37:55', '2022-11-02 22:37:55'),
(160, 'parent', 525, 'every day', '2022-11-02 22:49:55', '2022-11-02 22:49:55'),
(161, 'parent', 526, 'every day', '2022-11-02 23:05:58', '2022-11-02 23:05:58'),
(162, 'surrogate', 382, 'every day', '2022-11-02 23:54:13', '2022-11-02 23:54:13'),
(163, 'parent', 528, 'every day', '2022-11-04 08:46:02', '2022-11-04 08:46:02'),
(164, 'parent', 529, 'every day', '2022-11-13 20:58:56', '2022-11-14 05:15:15'),
(165, 'surrogate', 385, 'every day', '2022-11-13 21:35:42', '2022-11-13 21:35:42'),
(166, 'parent', 532, 'every day', '2022-11-14 03:06:02', '2022-11-14 03:06:02'),
(167, 'surrogate', 387, 'every day', '2022-11-14 04:39:19', '2022-11-14 04:39:19'),
(168, 'surrogate', 388, 'Every 3 days', '2022-11-15 04:27:47', '2022-11-18 02:49:32'),
(169, 'parent', 535, 'every day', '2022-11-15 04:29:27', '2022-11-15 04:29:27'),
(170, 'parent', 536, 'Every day', '2022-11-18 04:14:49', '2022-11-18 04:14:49'),
(171, 'surrogate', 394, 'Every day', '2022-11-18 04:14:57', '2022-11-18 04:14:57'),
(172, 'parent', 541, 'Every 3 days', '2022-11-18 04:31:46', '2022-11-18 04:31:46'),
(173, 'surrogate', 396, 'Every 3 days', '2022-11-18 04:32:43', '2022-11-18 04:32:43'),
(174, 'parent', 543, 'Every day', '2022-11-18 04:46:44', '2022-11-18 04:46:44'),
(175, 'surrogate', 398, 'Every 3 days', '2022-11-18 04:47:33', '2022-11-18 04:47:33'),
(176, 'surrogate', 399, 'Every day', '2022-11-18 04:51:34', '2022-11-18 04:51:34'),
(177, 'parent', 546, 'Every day', '2022-11-18 04:52:17', '2022-11-18 04:52:17'),
(178, 'surrogate', 401, 'Every day', '2022-11-18 05:01:37', '2022-11-18 05:01:37'),
(179, 'parent', 549, 'Every day', '2022-11-18 05:02:26', '2022-11-18 05:02:26'),
(180, 'surrogate', 404, 'Every day', '2022-11-18 05:06:34', '2022-11-18 05:06:34'),
(181, 'parent', 551, 'Every day', '2022-11-18 05:07:23', '2022-11-18 05:07:23'),
(182, 'parent', 552, 'Every day', '2022-11-23 20:45:22', '2022-11-23 20:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin__questions`
--

CREATE TABLE `admin__questions` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin__questions`
--

INSERT INTO `admin__questions` (`id`, `category_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 3, 'What superpower do you wish you had?', '2022-08-20 16:29:01', '2022-08-20 08:29:01'),
(5, 2, 'Would you like to be famous? In what way?', '2022-08-20 16:12:30', '2022-08-20 08:12:30'),
(26, 4, 'What motivates you?', '2022-08-20 16:34:45', '2022-08-20 08:34:45'),
(27, 4, 'Describe your interpretation of a “meaningful life”.', '2022-08-20 16:35:19', '2022-08-20 08:35:19'),
(34, 14, 'hii', '2022-06-03 04:18:10', '2022-05-30 02:28:25'),
(38, 14, 'this is a testing question', '2022-06-02 20:08:05', '2022-06-02 20:08:05'),
(41, 2, 'What do you value most in friendship?', '2022-08-20 16:12:52', '2022-08-20 08:12:52'),
(43, 11, 'Are you an introvert or extrovert?', '2022-08-20 17:16:34', '2022-08-20 09:16:34'),
(45, 10, 'What’s your love language? (INSERT LINK FOR LOVE LANGUAGE TEST)', '2022-08-20 17:11:53', '2022-08-20 09:11:53'),
(46, 1, 'What’s your favorite color?', '2022-09-13 10:45:25', '2022-09-13 02:45:25'),
(59, 5, 'Given the choice of anyone in the world, whom would you want as a dinner guest?', '2022-08-20 16:42:40', '2022-08-20 08:42:40'),
(60, 12, 'If you could live in your favorite tv show, which character would you be?', '2022-08-20 17:20:38', '2022-08-20 09:20:38'),
(61, 1, 'What is your favorite holiday?', '2022-08-20 16:07:08', '2022-08-20 08:07:08'),
(62, 3, 'What do you get every time you go grocery shopping?', '2022-08-20 16:29:22', '2022-08-20 08:29:22'),
(63, 5, 'Would you rather have sweet or salty food?', '2022-08-20 16:43:03', '2022-08-20 08:43:03'),
(64, 10, 'What is the dorkiest thing about you?', '2022-08-20 17:12:13', '2022-08-20 09:12:13'),
(65, 11, 'Would you rather camp out in the woods or stay at a 5 star resort?', '2022-08-20 17:16:51', '2022-08-20 09:16:51'),
(66, 12, 'Would you rather have more time or more money?', '2022-08-20 17:20:54', '2022-08-20 09:20:54'),
(70, 1, 'What did you want to do for a living when you were a kid?', '2022-08-20 08:07:35', '2022-08-20 08:07:35'),
(71, 1, 'Coffee, tea or soda?', '2022-08-20 08:08:01', '2022-08-20 08:08:01'),
(72, 1, 'What is one app you use every day?', '2022-08-20 08:08:30', '2022-08-20 08:08:30'),
(73, 1, 'Where would you go on vacation if you had no budget?', '2022-08-20 08:08:59', '2022-08-20 08:08:59'),
(74, 1, 'What are some of your hobbies?', '2022-08-20 08:09:29', '2022-08-20 08:09:29'),
(75, 1, 'What’s your favorite snacks?', '2022-08-20 08:09:50', '2022-08-20 08:09:50'),
(76, 1, 'Are you usually late or early?', '2022-08-20 08:10:11', '2022-08-20 08:10:11'),
(77, 1, 'What is a fact about yourself that would surprise people?', '2022-08-20 08:10:26', '2022-08-20 08:10:26'),
(78, 1, 'What is your favorite TV show?', '2022-08-20 08:10:47', '2022-08-20 08:10:47'),
(79, 1, 'What is your favorite movie?', '2022-08-20 08:11:08', '2022-08-20 08:11:08'),
(80, 1, 'Do you like sports? If so, what is your favorite sport’s team?', '2022-08-20 08:11:25', '2022-08-20 08:11:25'),
(81, 1, 'What color would you use to describe yourself?', '2022-08-20 08:11:40', '2022-08-20 08:11:40'),
(82, 1, 'Where did your name come from?', '2022-08-20 08:11:56', '2022-08-20 08:11:56'),
(83, 2, 'How do you feel if you accidentally leave your phone at home?', '2022-08-20 08:13:14', '2022-08-20 08:13:14'),
(84, 2, 'What are some unusual skills that you have?', '2022-08-20 08:14:03', '2022-08-20 08:14:03'),
(85, 2, 'What is your funniest travel experience?', '2022-08-20 08:14:23', '2022-08-20 08:14:23'),
(86, 2, 'What is a life goal of yours?', '2022-08-20 08:14:38', '2022-08-20 08:14:38'),
(87, 2, 'What takes up too much of your time?', '2022-08-20 08:14:58', '2022-08-20 08:14:58'),
(88, 2, 'What do you wish you knew more about?', '2022-08-20 08:15:26', '2022-08-20 08:15:26'),
(89, 2, 'What age do you wish you could permanently be?', '2022-08-20 08:15:48', '2022-08-20 08:15:48'),
(90, 2, 'How do you relax after a long, hard day?', '2022-08-20 08:16:06', '2022-08-20 08:16:06'),
(91, 2, 'What job do you think you’d be really good at?', '2022-08-20 08:16:21', '2022-08-20 08:16:21'),
(92, 2, 'If you had to change your name, what would you change it to?', '2022-08-20 08:16:51', '2022-08-20 08:16:51'),
(93, 2, 'What are you addicted to?', '2022-08-20 08:17:05', '2022-08-20 08:17:05'),
(94, 2, 'Where do you like to shop?', '2022-08-20 08:27:59', '2022-08-20 08:27:59'),
(95, 2, 'Do you like massages?', '2022-08-20 08:28:18', '2022-08-20 08:28:18'),
(96, 3, 'Do you believe in Aliens?', '2022-08-20 16:29:40', '2022-08-20 08:29:40'),
(97, 3, 'What website do you visit most often?', '2022-08-20 08:30:13', '2022-08-20 08:30:13'),
(98, 3, 'How would you describe your best self-care day?', '2022-08-20 08:30:28', '2022-08-20 08:30:28'),
(99, 3, 'How would you describe your best self-care day?', '2022-08-20 08:30:43', '2022-08-20 08:30:43'),
(100, 3, 'What are the top three things you want to accomplish before you die?', '2022-08-20 08:30:58', '2022-08-20 08:30:58'),
(101, 3, 'What gets you fired up?', '2022-08-20 08:31:34', '2022-08-20 08:31:34'),
(102, 3, 'What’s something you are self-conscious about?', '2022-08-20 08:31:59', '2022-08-20 08:31:59'),
(103, 3, 'What makes a good life?', '2022-08-20 08:32:12', '2022-08-20 08:32:12'),
(104, 3, 'What did you like best/worst about school?', '2022-08-20 08:32:27', '2022-08-20 08:32:27'),
(105, 3, 'What small gesture from a stranger made a big impact on you?', '2022-08-20 08:32:54', '2022-08-20 08:32:54'),
(106, 3, 'What inspires you?', '2022-08-20 08:33:07', '2022-08-20 08:33:07'),
(107, 3, 'Whats on your bucket list this year?', '2022-08-20 08:33:22', '2022-08-20 08:33:22'),
(108, 3, 'What is your biggest fear, and why?', '2022-08-20 08:33:36', '2022-08-20 08:33:36'),
(109, 4, 'Who do you admire, and why?', '2022-08-20 08:35:37', '2022-08-20 08:35:37'),
(110, 4, 'Who is your most difficult relationship with?', '2022-08-20 08:36:50', '2022-08-20 08:36:50'),
(111, 4, 'If you could go back in time, what’s one piece of advice you’d give to your younger self?', '2022-08-20 08:37:28', '2022-08-20 08:37:28'),
(112, 4, 'What makes you happy?', '2022-08-20 08:37:43', '2022-08-20 08:37:43'),
(113, 4, 'How do you best connect with others?', '2022-08-20 08:38:28', '2022-08-20 08:38:28'),
(114, 4, 'What is your ideal weekend?', '2022-08-20 16:39:26', '2022-08-20 08:39:26'),
(115, 4, 'What are five things you’re thankful for right now?', '2022-08-20 08:39:49', '2022-08-20 08:39:49'),
(116, 4, 'What’s your favorite family tradition?', '2022-08-20 08:40:10', '2022-08-20 08:40:10'),
(117, 4, 'What’s your favorite memory?', '2022-08-20 08:40:32', '2022-08-20 08:40:32'),
(118, 4, 'What do you think about most?', '2022-08-20 08:40:53', '2022-08-20 08:40:53'),
(119, 4, 'What is your biggest fear?', '2022-08-20 08:41:20', '2022-08-20 08:41:20'),
(120, 4, 'Has anyone ever saved your life?', '2022-08-20 08:41:38', '2022-08-20 08:41:38'),
(121, 4, 'How often do you stay up past 3am?', '2022-08-20 08:41:54', '2022-08-20 08:41:54'),
(122, 5, 'Would you rather be able to breathe underwater or fly?', '2022-08-20 08:43:31', '2022-08-20 08:43:31'),
(123, 5, 'What would you love to do when you retire?', '2022-08-20 08:43:48', '2022-08-20 08:43:48'),
(124, 5, 'What is a social cause that I care about?', '2022-08-20 08:44:25', '2022-08-20 08:44:25'),
(125, 5, 'What is your favorite animal?', '2022-08-20 08:44:49', '2022-08-20 08:44:49'),
(126, 5, 'What risks are worth taking?', '2022-08-20 08:45:04', '2022-08-20 08:45:04'),
(127, 5, 'What is something you’ve learned about yourself in the last 3 months?', '2022-08-20 08:45:19', '2022-08-20 08:45:19'),
(128, 5, 'How would you describe your communication style in 3 words?', '2022-08-20 08:45:36', '2022-08-20 08:45:36'),
(129, 5, 'If you could bring back one fashion trend, what would it be and why?', '2022-08-20 08:46:28', '2022-08-20 08:46:28'),
(130, 5, 'What is one thing you are unbeatable at?', '2022-08-20 08:47:09', '2022-08-20 08:47:09'),
(131, 5, 'A genie appears and grants you a wish for someone else in the world. Who and what do you make a wish for?', '2022-08-20 08:47:34', '2022-08-20 08:47:34'),
(132, 5, 'What is your favorite ice cream flavor?', '2022-08-20 08:47:48', '2022-08-20 08:47:48'),
(133, 5, 'If you had to sing karaoke right now, which song would you pick?', '2022-08-20 16:49:45', '2022-08-20 08:49:45'),
(134, 5, 'What is the most used emoji on your phone right now?', '2022-08-20 08:50:00', '2022-08-20 08:50:00'),
(135, 6, 'Which do you prefer, oceans or mountains? Why?', '2022-08-20 08:50:48', '2022-08-20 08:50:48'),
(136, 6, 'Would you rather watch a movie or read a book?', '2022-08-20 08:51:10', '2022-08-20 08:51:10'),
(137, 6, 'What’s your guilty pleasure right now?', '2022-08-20 08:51:30', '2022-08-20 08:51:30'),
(138, 6, 'If you’re in a trivia night, what category would you know most about?', '2022-08-20 08:51:59', '2022-08-20 08:51:59'),
(139, 6, 'If you were a cocktail, which one would you be?', '2022-08-20 08:52:18', '2022-08-20 08:52:18'),
(140, 6, 'Who believes in you? How do you know?', '2022-08-20 08:52:39', '2022-08-20 08:52:39'),
(141, 6, 'How do you contribute to the world?', '2022-08-20 08:52:52', '2022-08-20 08:52:52'),
(142, 6, 'What is your favorite quote?', '2022-08-20 08:53:06', '2022-08-20 08:53:06'),
(143, 6, 'What is one possession or tool that enhances your life?', '2022-08-20 08:53:20', '2022-08-20 08:53:20'),
(144, 6, 'If you could pick up a new skill in an instant, what would it be?', '2022-08-20 08:53:39', '2022-08-20 08:53:39'),
(145, 6, 'What is your favorite thing about the state you live in?', '2022-08-20 08:53:56', '2022-08-20 08:53:56'),
(146, 6, 'When you’re packing for a trip, what’s one thing (other than clothes) that you always bring?', '2022-08-20 08:54:08', '2022-08-20 08:54:08'),
(147, 6, 'What’s the worst job you ever had?', '2022-08-20 08:54:23', '2022-08-20 08:54:23'),
(148, 6, 'What was the last thing you fell in love with?', '2022-08-20 08:54:36', '2022-08-20 08:54:36'),
(149, 6, 'What is your favorite season?', '2022-08-20 08:54:51', '2022-08-20 08:54:51'),
(150, 7, 'What is something new or interesting you’ve learned recently?', '2022-08-20 08:56:02', '2022-08-20 08:56:02'),
(151, 7, 'Who was the last person you felt inspired by?', '2022-08-20 08:56:15', '2022-08-20 08:56:15'),
(152, 7, 'What’s one country you’d love to visit and why?', '2022-08-20 08:56:33', '2022-08-20 08:56:33'),
(153, 7, 'What was your favorite subject in school?', '2022-08-20 08:56:46', '2022-08-20 08:56:46'),
(154, 7, 'Where did you grow up and what was it like?', '2022-08-20 08:56:58', '2022-08-20 08:56:58'),
(155, 7, 'When do you feel challenged?', '2022-08-20 08:57:11', '2022-08-20 08:57:11'),
(156, 7, 'What’s one characteristic you admire most in others?', '2022-08-20 08:57:25', '2022-08-20 08:57:25'),
(157, 7, 'What was the first concert you ever attended?', '2022-08-20 08:57:40', '2022-08-20 08:57:40'),
(158, 7, 'What is your favorite thing about your home?', '2022-08-20 08:57:52', '2022-08-20 08:57:52'),
(159, 7, 'What’s one of your pet peeves?', '2022-08-20 08:58:05', '2022-08-20 08:58:05'),
(160, 7, 'What is in your ideal sandwich?', '2022-08-20 08:58:17', '2022-08-20 08:58:17'),
(161, 7, 'What is one of your earliest memories?', '2022-08-20 08:58:41', '2022-08-20 08:58:41'),
(162, 7, 'What is a popular movie that you just can’t stand?', '2022-08-20 08:58:56', '2022-08-20 08:58:56'),
(163, 7, 'What is the craziest thing you’ve ever done?', '2022-08-20 08:59:08', '2022-08-20 08:59:08'),
(164, 7, 'What is your favorite dessert?', '2022-08-20 08:59:21', '2022-08-20 08:59:21'),
(165, 8, 'What do you wish people knew about you?', '2022-08-20 09:00:09', '2022-08-20 09:00:09'),
(166, 8, 'What is your favorite smell, and why?', '2022-08-20 09:00:25', '2022-08-20 09:00:25'),
(167, 8, 'Name a healthy food that you enjoy and an unhealthy one you find hard to resist?', '2022-08-20 09:01:06', '2022-08-20 09:01:06'),
(168, 8, 'If you were forced to watch reruns of a favorite show, which would you choose?', '2022-08-20 09:01:25', '2022-08-20 09:01:25'),
(169, 8, 'What’s a sauce, condiment, or dressing you can’t live without?', '2022-08-20 09:01:46', '2022-08-20 09:01:46'),
(170, 8, 'You’re on a desert island and can bring one luxury with you – what is it?', '2022-08-20 09:02:01', '2022-08-20 09:02:01'),
(171, 8, 'How would your best friend describe you?', '2022-08-20 09:02:19', '2022-08-20 09:02:19'),
(172, 8, 'What is something you would never eat, no matter how hungry you get?', '2022-08-20 17:04:54', '2022-08-20 09:04:54'),
(173, 8, 'What’s something that always gives you childlike joy?', '2022-08-20 09:02:47', '2022-08-20 09:02:47'),
(174, 10, 'What’s one goal you have for this year?', '2022-08-20 17:12:30', '2022-08-20 09:12:30'),
(175, 8, 'When do you feel most safe/unsafe?', '2022-08-20 09:03:15', '2022-08-20 09:03:15'),
(176, 8, 'Who helps you bounce back from discouragement? How?', '2022-08-20 09:03:30', '2022-08-20 09:03:30'),
(177, 8, 'Have you ever gone way our of your comfort zone? How?', '2022-08-20 09:03:49', '2022-08-20 09:03:49'),
(178, 8, 'What is your favorite genre of music?', '2022-08-20 09:04:04', '2022-08-20 09:04:04'),
(179, 8, 'What is your cellphone wallpaper?', '2022-08-20 09:04:19', '2022-08-20 09:04:19'),
(180, 8, 'What do you regret not doing or starting when you were younger?', '2022-08-20 17:07:12', '2022-08-20 09:07:12'),
(181, 9, 'What is your irrational fear?', '2022-08-20 09:07:34', '2022-08-20 09:07:34'),
(182, 9, 'What is one thing you are really bad at?', '2022-08-20 09:07:49', '2022-08-20 09:07:49'),
(183, 9, 'If you could only have 3 apps on your phone, what would you choose?', '2022-08-20 09:08:06', '2022-08-20 09:08:06'),
(184, 9, 'What is the last new thing you tried?', '2022-08-20 09:08:21', '2022-08-20 09:08:21'),
(185, 9, 'If you had $10,000 today, how would you spend it?', '2022-08-20 09:08:36', '2022-08-20 09:08:36'),
(186, 9, 'On an airplane, do you prefer the window or the aisle seat?', '2022-08-20 09:08:50', '2022-08-20 09:08:50'),
(187, 9, 'Would you rather travel by plane or car?', '2022-08-20 09:09:05', '2022-08-20 09:09:05'),
(188, 9, 'What is your favorite joke to tell?', '2022-08-20 09:09:18', '2022-08-20 09:09:18'),
(189, 9, 'What is something you’re kind of snobby about?', '2022-08-20 09:09:30', '2022-08-20 09:09:30'),
(190, 9, 'What activity helps you relieve stress?', '2022-08-20 09:09:43', '2022-08-20 09:09:43'),
(191, 9, 'Have you ever met anyone famous?', '2022-08-20 09:10:00', '2022-08-20 09:10:00'),
(192, 9, 'Are you a giver, taker, or a matcher? Are there areas in your life where you act like one type, and other areas where you act like another? (INSERT LINK FOR THE TEST)', '2022-08-20 09:10:27', '2022-08-20 09:10:27'),
(193, 9, 'What’s your middle name?', '2022-08-20 09:10:55', '2022-08-20 09:10:55'),
(194, 9, 'Who was your celebrity crush growing up?', '2022-08-20 09:11:07', '2022-08-20 09:11:07'),
(195, 9, 'Shark diving, bungee jumping, or skydiving?', '2022-08-20 09:11:21', '2022-08-20 09:11:21'),
(196, 10, 'What’s your typical Sunday like?', '2022-08-20 09:12:49', '2022-08-20 09:12:49'),
(197, 10, 'Did you have a nickname growing up?', '2022-08-20 09:13:02', '2022-08-20 09:13:02'),
(198, 10, 'What’s the best dish you make?', '2022-08-20 09:13:16', '2022-08-20 09:13:16'),
(199, 10, 'Would you rather spend a year living on a sailboat or in an RV?', '2022-08-20 09:13:29', '2022-08-20 09:13:29'),
(200, 10, 'Do you collect anything?', '2022-08-20 09:13:42', '2022-08-20 09:13:42'),
(201, 10, 'What kind of texter are you? (Fast? Slow? Lots of little text? Perfect spelling & grammar?)', '2022-08-20 09:13:54', '2022-08-20 09:13:54'),
(202, 10, 'Is there a household chore you actually enjoy doing?', '2022-08-20 09:14:12', '2022-08-20 09:14:12'),
(203, 10, 'Is there a household chore you actually enjoy doing?', '2022-08-20 09:14:26', '2022-08-20 09:14:26'),
(204, 10, 'What is one thing you want to improve about yourself?', '2022-08-20 09:14:43', '2022-08-20 09:14:43'),
(205, 10, 'Netflix or Hulu?', '2022-08-20 09:15:38', '2022-08-20 09:15:38'),
(206, 10, 'Night in or Night out?', '2022-08-20 09:15:52', '2022-08-20 09:15:52'),
(207, 10, 'Night owl or Early bird?', '2022-08-20 09:16:08', '2022-08-20 09:16:08'),
(208, 11, 'What is your dream car?', '2022-08-20 09:17:05', '2022-08-20 09:17:05'),
(209, 11, 'What is your dream job?', '2022-08-20 09:17:17', '2022-08-20 09:17:17'),
(210, 11, 'If you could wake up tomorrow having gained any one quality or ability, what would it be?', '2022-08-20 09:17:32', '2022-08-20 09:17:32'),
(211, 11, 'How do you express your gratitude towards others? Give an example.', '2022-08-20 09:17:49', '2022-08-20 09:17:49'),
(212, 11, 'What would you do on your “perfect” day?', '2022-08-20 09:18:12', '2022-08-20 09:18:12'),
(213, 11, 'Is there something you’ve dreamed about doing for a long time? Why haven’t you done it yet?', '2022-08-20 09:18:26', '2022-08-20 09:18:26'),
(214, 11, 'What moments or events during your childhood shaped who you are now?', '2022-08-20 09:18:40', '2022-08-20 09:18:40'),
(215, 11, 'Would you rather always be cold or always be hot?', '2022-08-20 09:18:52', '2022-08-20 09:18:52'),
(216, 11, 'If you could change one thing about yourself, what would it be?', '2022-08-20 09:19:11', '2022-08-20 09:19:11'),
(217, 11, 'What is something that is considered a luxury, but you don’t think you could live without?', '2022-08-20 09:19:26', '2022-08-20 09:19:26'),
(218, 11, 'Describe yourself in one word.', '2022-08-20 09:19:39', '2022-08-20 09:19:39'),
(219, 11, 'How would you describe your dream house?', '2022-08-20 09:19:55', '2022-08-20 09:19:55'),
(220, 11, 'What is your morning ritual like?', '2022-08-20 09:20:06', '2022-08-20 09:20:06'),
(221, 12, 'Would you rather become someone else or just stay you?', '2022-08-20 09:21:08', '2022-08-20 09:21:08'),
(222, 12, 'What book has influenced you greatly? How?', '2022-08-20 09:21:23', '2022-08-20 09:21:23'),
(223, 12, 'What is the most important thing to you in life?', '2022-08-20 09:22:28', '2022-08-20 09:22:28'),
(224, 12, 'If you knew you could not fail, what would you do?', '2022-08-20 09:22:53', '2022-08-20 09:22:53'),
(225, 12, 'What is something unexpected that has changed about you in the last few years?', '2022-08-20 09:23:09', '2022-08-20 09:23:09'),
(226, 12, 'If you had one day to live over again, what day would you pick?', '2022-08-20 09:23:23', '2022-08-20 09:23:23'),
(227, 12, 'What do you think your best physical feature is?', '2022-08-20 09:23:37', '2022-08-20 09:23:37'),
(228, 12, 'Where would you like to be in 5 years?', '2022-08-20 09:23:52', '2022-08-20 09:23:52'),
(229, 12, 'If there was a billboard above your head with one message for everyone who saw it, what would that message be?', '2022-08-20 09:24:05', '2022-08-20 09:24:05'),
(230, 12, 'What is one thing that has made a lasting impact on your life?', '2022-08-20 09:24:17', '2022-08-20 09:24:17'),
(231, 12, 'Who do you depend on the most?', '2022-08-20 09:24:31', '2022-08-20 09:24:31'),
(232, 12, 'What is something that always makes you laugh, without fail?', '2022-08-20 09:24:45', '2022-08-20 09:24:45'),
(233, 12, 'What happy moment will you always remember?', '2022-08-20 09:24:59', '2022-08-20 09:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin__question__ans`
--

CREATE TABLE `admin__question__ans` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin__question__ans`
--

INSERT INTO `admin__question__ans` (`id`, `type`, `user_id`, `user_name`, `partner_id`, `category_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'parent', 281, 'john', 151, 4, 26, 'This is a testing answer', '2022-09-09 01:22:14', '2022-09-09 01:22:14'),
(2, 'surrogate', 268, 'sonu', 405, 1, 46, 'This is a testing answer', '2022-09-09 01:26:16', '2022-09-09 01:26:16'),
(3, 'parent', 367, NULL, 228, 1, 46, 'Red', '2022-09-12 01:27:01', '2022-09-12 01:27:01'),
(4, 'surrogate', 205, NULL, 346, 1, 46, 'Green', '2022-09-12 04:40:56', '2022-09-12 04:40:56'),
(5, 'surrogate', 205, NULL, 346, 0, 0, 'green', '2022-09-12 04:48:05', '2022-09-12 04:48:05'),
(6, 'surrogate', 205, NULL, 346, 0, 0, 'red', '2022-09-12 04:50:27', '2022-09-12 04:50:27'),
(7, 'parent', 420, NULL, 277, 1, 46, 'Blue', '2022-09-12 05:09:59', '2022-09-12 05:09:59'),
(8, 'parent', 409, NULL, 193, 2, 5, 'in good way', '2022-09-12 21:37:04', '2022-09-12 21:37:04'),
(9, 'surrogate', 277, 'Punam', 420, 1, 46, 'Green', '2022-09-12 22:23:09', '2022-09-12 22:23:09'),
(10, 'surrogate', 277, 'punam', 420, 0, 0, 'red', '2022-09-12 22:26:09', '2022-09-12 22:26:09'),
(11, 'surrogate', 277, 'punam', 420, 4, 0, 'This is a testing answer', '2022-09-12 22:27:57', '2022-09-12 22:27:57'),
(12, 'surrogate', 268, 'sonu', 405, 1, 46, 'This is a testing answer', '2022-09-12 22:46:13', '2022-09-12 22:46:13'),
(13, 'surrogate', 253, NULL, 392, 1, 46, 'Blue', '2022-09-12 22:48:09', '2022-09-12 22:48:09'),
(14, 'surrogate', 253, 'Jennifer chandra', 392, 1, 46, 'Blue', '2022-09-12 22:51:37', '2022-09-12 22:51:37'),
(15, 'surrogate', 277, 'punam', 420, 2, 5, 'This is a testing answer', '2022-09-12 22:56:19', '2022-09-12 22:56:19'),
(16, 'parent', 420, NULL, 277, 2, 5, 'yes', '2022-09-12 22:58:28', '2022-09-12 22:58:28'),
(17, 'surrogate', 420, 'reza', 277, 2, 5, 'This is a testing answer', '2022-09-12 23:00:59', '2022-09-12 23:00:59'),
(18, 'parent', 420, 'reza', 277, 2, 5, 'This is a testing answer', '2022-09-12 23:01:15', '2022-09-12 23:01:15'),
(19, 'parent', 367, NULL, 228, 2, 5, 'Yes', '2022-09-13 02:10:47', '2022-09-13 02:10:47'),
(20, 'parent', 367, 'adTest', 228, 2, 5, 'yes latest', '2022-09-13 02:13:26', '2022-09-13 02:13:26'),
(21, 'parent', 367, NULL, 228, 3, 1, 'i can fly', '2022-09-13 02:44:20', '2022-09-13 02:44:20'),
(27, 'parent', 346, 'John da', 205, 2, 5, 'Yes', '2022-09-13 03:15:19', '2022-09-13 03:15:19'),
(28, 'parent', 426, 'Dipesh', 0, 1, 46, 'Green', '2022-09-13 22:30:19', '2022-09-13 22:30:19'),
(29, 'parent', 409, 'Farhan', 193, 1, 46, 'black', '2022-09-15 03:40:49', '2022-09-15 03:40:49'),
(30, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:41:09', '2022-09-15 03:41:09'),
(31, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:41:59', '2022-09-15 03:41:59'),
(32, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:42:26', '2022-09-15 03:42:26'),
(33, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:42:48', '2022-09-15 03:42:48'),
(34, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:44:38', '2022-09-15 03:44:38'),
(35, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:45:43', '2022-09-15 03:45:43'),
(36, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:47:03', '2022-09-15 03:47:03'),
(37, 'surrogate', 205, NULL, 346, 2, 5, 'Yes', '2022-09-15 03:53:07', '2022-09-15 03:53:07'),
(38, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:53:42', '2022-09-15 03:53:42'),
(39, 'parent', 421, 'nikhil', 280, 2, 5, 'yes', '2022-09-15 03:54:57', '2022-09-15 03:54:57'),
(40, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 03:57:32', '2022-09-15 03:57:32'),
(41, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 04:00:09', '2022-09-15 04:00:09'),
(42, 'parent', 409, 'charmi', 193, 0, 0, 'red', '2022-09-15 04:03:31', '2022-09-15 04:03:31'),
(43, 'parent', 421, 'nikhil', 280, 4, 26, 'done', '2022-09-15 04:14:26', '2022-09-15 04:14:26'),
(44, 'surrogate', 282, NULL, 426, 1, 46, 'Red', '2022-09-15 04:25:22', '2022-09-15 04:25:22'),
(45, 'surrogate', 282, NULL, 426, 2, 5, 'yeah sure', '2022-09-15 04:26:55', '2022-09-15 04:26:55'),
(46, 'parent', 421, 'shainece1', 280, 3, 1, 'I want to', '2022-09-15 04:32:17', '2022-09-15 04:32:17'),
(47, 'parent', 409, 'charmi', 193, 4, 26, 'work', '2022-09-15 04:40:45', '2022-09-15 04:40:45'),
(48, 'surrogate', 193, NULL, 409, 4, 26, 'responsibility', '2022-09-15 20:17:34', '2022-09-15 20:17:34'),
(49, 'surrogate', 193, 'Bela', 409, 3, 1, 'to donate', '2022-09-15 20:36:36', '2022-09-15 20:36:36'),
(50, 'parent', 409, 'Farhan', 193, 3, 1, 'handle pressure', '2022-09-15 20:47:16', '2022-09-15 20:47:16'),
(51, 'surrogate', 297, 'MJ Surrogate', 437, 1, 46, 'Sage green', '2022-10-04 09:46:16', '2022-10-04 09:46:16'),
(52, 'parent', 437, 'MaryJane Carnahan', 297, 1, 46, 'Rust Orange', '2022-10-04 09:54:02', '2022-10-04 09:54:02'),
(53, 'surrogate', 205, 'Jenny Marth', 346, 3, 1, 'working', '2022-10-13 04:48:41', '2022-10-13 04:48:41'),
(54, 'parent', 518, 'Samir', 374, 1, 46, 'Voilet', '2022-10-21 01:19:51', '2022-10-21 01:19:51'),
(55, 'parent', 346, 'John da', 205, 1, 46, 'Green', '2022-10-26 21:47:10', '2022-10-26 21:47:10'),
(56, 'surrogate', 374, NULL, 518, 1, 46, 'Red', '2022-11-13 22:52:54', '2022-11-13 22:52:54'),
(57, 'surrogate', 374, NULL, 518, 3, 1, 'Fly', '2022-11-13 22:57:39', '2022-11-13 22:57:39'),
(58, 'parent', 529, 'abhin', 385, 2, 5, 'test', '2022-11-14 03:05:27', '2022-11-14 03:05:27'),
(59, 'surrogate', 387, 'tsurrogarte', 532, 2, 5, 'test', '2022-11-14 05:13:46', '2022-11-14 05:13:46'),
(60, 'surrogate', 387, 'tsurrogarte', 532, 2, 5, 'test', '2022-11-14 05:13:48', '2022-11-14 05:13:48'),
(61, 'surrogate', 387, 'tsurrogarte', 532, 2, 5, 'test', '2022-11-14 05:13:48', '2022-11-14 05:13:48'),
(62, 'parent', 535, 'skyt', 388, 1, 46, 'test', '2022-11-18 02:26:24', '2022-11-18 02:26:24'),
(63, 'surrogate', 388, 'sky', 535, 1, 46, 'blue', '2022-11-18 02:27:09', '2022-11-18 02:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `alert__questions`
--

CREATE TABLE `alert__questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `milestone_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alert__questions`
--

INSERT INTO `alert__questions` (`id`, `question`, `milestone_id`, `created_at`, `updated_at`) VALUES
(1, 'How did the medical clearance go?', 1, '2022-07-25 18:22:11', '2022-07-22 06:31:35'),
(2, 'Did you hear back from the clinic about your medical clearance exam?', 1, '2022-07-25 18:22:18', '2022-07-22 06:31:35'),
(3, 'Good luck on your transfer day tomorrow!', 2, '2022-07-25 18:22:27', '2022-07-22 06:31:59'),
(4, 'How did the beta test go?', 3, '2022-07-25 18:22:48', '2022-07-22 06:31:59'),
(5, 'How did the beta test go?', 4, '2022-07-25 18:23:05', '2022-07-22 06:32:27'),
(6, 'Did you hear a heartbeat?', 5, '2022-07-25 18:23:10', '2022-07-22 06:32:27'),
(7, 'How did your ObGyn appointment go? How big is baby measuring?', 6, '2022-07-25 18:23:15', '2022-07-22 06:32:56'),
(8, 'How did the anatomy scan go? Do you know if baby is a boy or a girl?', 7, '2022-07-25 18:23:20', '2022-07-22 06:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `alert__question_ans`
--

CREATE TABLE `alert__question_ans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alert__question_ans`
--

INSERT INTO `alert__question_ans` (`id`, `user_id`, `user_name`, `question_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 2, 'xs', 1, 'How did the medical clearance go?', 'mother answer', '2022-07-26 03:06:36', '2022-08-01 04:43:54'),
(2, 2, 'john', 2, 'Did you hear back from the clinic about your medical clearance exam?', 'yes', '2022-07-26 03:08:28', '2022-08-25 04:50:08'),
(3, 2, 'Jenny Marta', 3, 'Good luck on your transfer day tomorrow!', 'yes', '2022-07-26 03:10:58', '2022-08-23 23:43:47'),
(4, 2, 'Amelia', 4, 'How did the beta test go?', 'yes', '2022-07-26 03:11:38', '2022-08-29 03:14:26'),
(5, 2, 'Amelia', 5, 'How did the beta test go?', 'yes', '2022-07-26 03:33:44', '2022-08-29 03:15:53'),
(6, 2, '', 6, 'Did you hear a heartbeat?', NULL, '2022-07-26 02:33:46', '2022-07-26 02:33:46'),
(7, 2, '', 7, 'How did your ObGyn appointment go? How big is baby measuring?', NULL, '2022-07-26 02:36:20', '2022-07-26 02:36:20'),
(10, 151, NULL, 1, 'How did the medical clearance go?', NULL, '2022-08-01 01:12:51', '2022-08-01 01:12:51'),
(11, 156, NULL, 5, 'How did the beta test go?', NULL, '2022-08-15 22:00:13', '2022-08-15 22:00:13'),
(12, 186, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-16 21:19:47', '2022-08-16 21:19:47'),
(13, 191, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-17 20:47:33', '2022-08-17 20:47:33'),
(14, 196, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-19 22:34:33', '2022-08-19 22:34:33'),
(15, 198, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-20 03:47:44', '2022-08-20 03:47:44'),
(16, 205, 'john', 3, 'Good luck on your transfer day tomorrow!', 'yes', '2022-08-22 22:05:35', '2022-08-24 00:50:05'),
(17, 204, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-23 04:37:58', '2022-08-23 04:37:58'),
(18, 208, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-08-23 23:38:44', '2022-08-23 23:38:44'),
(19, 205, 'Jenny Marta', 6, 'Did you hear a heartbeat?', 'Yes', '2022-08-26 21:32:22', '2022-08-26 21:32:44'),
(20, 205, 'Jenny Marta', 5, 'How did the beta test go?', 'good', '2022-08-27 13:45:14', '2022-08-27 13:45:29'),
(21, 253, 'Jennifer chandra', 3, 'Good luck on your transfer day tomorrow!', 'Thank', '2022-08-31 21:46:26', '2022-09-06 03:54:25'),
(22, 205, 'Jenny Marth', 4, 'How did the beta test go?', 'Good', '2022-09-06 02:12:19', '2022-09-06 02:13:50'),
(23, 253, 'Jennifer chandra', 4, 'How did the beta test go?', 'Good', '2022-09-06 03:39:04', '2022-09-06 04:19:27'),
(24, 228, 'DaTest', 4, 'How did the beta test go?', 'Good', '2022-09-06 04:01:57', '2022-09-06 05:02:16'),
(25, 228, 'DaTest', 3, 'Good luck on your transfer day tomorrow!', 'thanks', '2022-09-06 05:02:05', '2022-09-06 05:05:17'),
(26, 268, 'sonu', 3, 'Good luck on your transfer day tomorrow!', 'thanks', '2022-09-08 20:14:15', '2022-09-08 22:32:26'),
(27, 268, NULL, 1, 'How did the medical clearance go?', NULL, '2022-09-13 01:48:10', '2022-09-13 01:48:10'),
(28, 193, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-09-13 02:01:37', '2022-09-13 02:01:37'),
(29, 297, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-10-05 08:00:23', '2022-10-05 08:00:23'),
(30, 339, NULL, 1, 'How did the medical clearance go?', NULL, '2022-10-19 00:51:34', '2022-10-19 00:51:34'),
(31, 205, 'Jenny Marth', 1, 'How did the medical clearance go?', 'Good', '2022-10-21 04:40:33', '2022-10-26 01:06:55'),
(32, 205, 'Jenny Marth', 7, 'How did your ObGyn appointment go? How big is baby measuring?', 'Ad', '2022-10-28 06:53:07', '2022-11-14 03:41:28'),
(33, 379, NULL, 6, 'Did you hear a heartbeat?', NULL, '2022-11-03 01:09:16', '2022-11-03 01:09:16'),
(34, 374, NULL, 3, 'Good luck on your transfer day tomorrow!', NULL, '2022-11-13 22:55:56', '2022-11-13 22:55:56'),
(35, 388, 'sky', 1, 'How did the medical clearance go?', 'ovhucyfyfu', '2022-11-15 04:34:12', '2022-11-18 02:35:03'),
(36, 388, 'sky', 3, 'Good luck on your transfer day tomorrow!', 'oky', '2022-11-15 04:54:50', '2022-11-18 02:35:17'),
(37, 388, 'sky', 8, 'How did the anatomy scan go? Do you know if baby is a boy or a girl?', 'hiiii', '2022-11-18 02:48:48', '2022-11-18 02:50:30'),
(38, 394, NULL, 4, 'How did the beta test go?', NULL, '2022-11-18 04:43:14', '2022-11-18 04:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `app__users`
--

CREATE TABLE `app__users` (
  `id` int(11) NOT NULL,
  `fcm_token` text DEFAULT NULL,
  `parent_status` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `parent_notification_status` varchar(255) NOT NULL DEFAULT 'active',
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_gender` varchar(255) DEFAULT NULL,
  `parent_number` varchar(255) DEFAULT NULL,
  `parent_email` varchar(255) NOT NULL,
  `parent_password` varchar(255) DEFAULT NULL,
  `parent_date_of_birth` varchar(255) DEFAULT NULL,
  `parent_partner_name` varchar(255) DEFAULT NULL,
  `parent_partner_phone` varchar(255) DEFAULT NULL,
  `parent_partner_dob` varchar(255) DEFAULT NULL,
  `parent_partner_address` text DEFAULT NULL,
  `parent_partner_gender` varchar(255) DEFAULT NULL,
  `parent_partner_id` int(11) DEFAULT NULL,
  `parent_address` text DEFAULT NULL,
  `parent_version` varchar(255) DEFAULT NULL,
  `parent_image1` text DEFAULT NULL,
  `parent_image2` text DEFAULT NULL,
  `is_payment_done` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app__users`
--

INSERT INTO `app__users` (`id`, `fcm_token`, `parent_status`, `parent_notification_status`, `parent_name`, `parent_gender`, `parent_number`, `parent_email`, `parent_password`, `parent_date_of_birth`, `parent_partner_name`, `parent_partner_phone`, `parent_partner_dob`, `parent_partner_address`, `parent_partner_gender`, `parent_partner_id`, `parent_address`, `parent_version`, `parent_image1`, `parent_image2`, `is_payment_done`, `created_at`, `updated_at`) VALUES
(1, NULL, 'active', 'active', 'john walker', 'male', '1898785689', 'john@gmail.com', '$2y$10$hbE3LlNCiv42kHdyX2cwB.FsiIGxuzrdvdS8ZTcyznWuYuTLGzI3m', '2000/01/05', 'hanny walker', NULL, NULL, NULL, 'female', 2, 'This is the testing address', 'android', 'https://biggestaskbackend.justcodenow.com/images/profile/16607167941.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16607167942.jpg', 1, '2022-08-29 11:49:13', '2022-05-14 03:29:01'),
(2, NULL, 'active', 'active', 'david walker', NULL, '1898785689', 'david@gmail.com', '$2y$10$fEh4Xb8aROPlKZJ.V05ySOpLAWHx6L9rFgsgl5fUypyl/HkxXKt9W', '2000-01-25', 'lucy walker', '1212121212', '2000-01-09', 'second testing address', NULL, 1, '123456test', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16632221331.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16632220822.jpg', 1, '2022-09-15 06:20:40', '2022-07-14 11:24:55'),
(6, NULL, 'active', 'active', 'James', 'male', NULL, 'dkhushal@justcodenow.com', '$2y$10$NoJxSKASNeYexSoCHlSAFOdUgfEOh84xlZhn9D/s6.Oqp4kF3YXdy', NULL, 'Richard', NULL, NULL, NULL, 'male', 3, NULL, 'android', NULL, NULL, 1, '2022-08-18 04:07:54', '2022-05-26 05:52:08'),
(321, NULL, 'active', 'active', 'Robert', 'other', NULL, 'zp@yopmail.com', '$2y$10$jcX39fcYrrkjVr28P85iSuvsxdA6FvK2qm5b7Cw1NKj1P4Ecc9ctK', NULL, 'Donald', NULL, NULL, NULL, 'other', 186, NULL, NULL, NULL, NULL, 1, '2022-08-18 04:08:23', '2022-08-16 08:40:50'),
(327, NULL, 'active', 'active', 'William', 'male', NULL, 'vp@yopmail.com', '$2y$10$Mp5L42QhjWGV4tpKQ4eSZ.71uehPiY/hpVjC64Mq3AOWNt95IyULq', NULL, NULL, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL, NULL, 1, '2022-09-12 10:06:33', '2022-08-17 05:46:03'),
(331, NULL, 'inactive', 'active', NULL, 'male', NULL, 'vsu@yopmail.com', NULL, NULL, 'Olivia', NULL, NULL, NULL, 'female', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-18 04:09:09', '2022-08-17 07:56:53'),
(332, NULL, 'active', 'active', 'JOHN', 'male', '8256895425', 'vsu@yopmail.com', '$2y$10$5enmHt0YWANuXi8rajysaOdjqmZjp2oIYXtKLlyxpPaqxILtRjTcq', '2000/01/26', 'Ava', '122121', '0200/10/09', 'second testing address', 'female', 191, 'This is the testing address', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16609015301.png', 'https://biggestaskbackend.justcodenow.com/images/profile/16609015302.png', 1, '2022-08-29 11:50:39', '2022-08-17 07:57:57'),
(333, NULL, 'inactive', 'active', NULL, NULL, NULL, 'nsumara@justcodenow.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-18 04:31:25', '2022-08-18 04:31:25'),
(334, NULL, 'inactive', 'active', NULL, NULL, NULL, 'ap@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-19 10:27:33', '2022-08-19 10:27:33'),
(335, NULL, 'active', 'active', 'ROBERT', 'male', '7096437868', 'aparent@yopmail.com', '$2y$10$Fs1cDDsgFiTHh7gfE4OMyu/B9zV2SHgpIwSYgh.BkYi/0qX/fxrh6', '2000/12/20', 'Olivia', NULL, NULL, NULL, 'female', 196, 'Titanium', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16609782551.jpg', NULL, 1, '2022-08-29 11:49:42', '2022-08-19 10:28:29'),
(336, NULL, 'inactive', 'active', NULL, NULL, NULL, 'asurrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-21 09:45:07', '2022-08-19 10:31:15'),
(337, NULL, 'active', 'active', 'david walker', 'male', '1898785689', 'david@gmail.com', '$2y$10$rvcXmpFzIEaaLFsNBbf5KufwvhFc4G4Pptp2Kldm8v28lYnLFPBSS', '2000/01/25', 'lucy walker', '1212121212', '2000/01/09', 'second testing address', 'female', 198, 'This is the testing address', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16611487431.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16611487432.jpg', 1, '2022-08-29 11:50:32', '2022-08-19 14:35:43'),
(338, NULL, 'inactive', 'active', NULL, NULL, NULL, 'hsurrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-19 15:02:00', '2022-08-19 15:02:00'),
(339, NULL, 'inactive', 'active', NULL, NULL, NULL, 'apn@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-19 15:26:37', '2022-08-19 15:26:37'),
(340, NULL, 'inactive', 'active', NULL, NULL, NULL, 'apn@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-19 15:27:12', '2022-08-19 15:27:12'),
(341, NULL, 'active', 'active', 'JAMES', 'male', NULL, 'mp@yopmail.com', '$2y$10$ReAPo1Fi0VL9NL/JExGxIeYBVz0/G8AV1z33QC34Pj3.Yq.ek6uUO', NULL, 'Sophia', NULL, NULL, NULL, 'female', 204, NULL, NULL, NULL, NULL, 1, '2022-08-22 11:19:14', '2022-08-19 15:27:51'),
(342, NULL, 'active', 'active', 'Johnp', 'male', NULL, 'Johnp@yopmail.com', '$2y$10$CvY.WITDfc//mDu5.q//KeM7KPrEKBoryLFcmQtseIESdaiNt0Awq', NULL, 'Mary', NULL, NULL, NULL, 'female', 203, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16611659731.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16611614702.jpg', 1, '2022-11-17 06:41:24', '2022-08-22 07:00:45'),
(343, NULL, 'inactive', 'active', NULL, NULL, NULL, 'Samanthas@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-22 07:03:16', '2022-08-22 07:03:16'),
(344, NULL, 'inactive', 'active', NULL, NULL, NULL, 'ms@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-22 11:18:06', '2022-08-22 11:18:06'),
(345, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jenny@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-22 11:24:30', '2022-08-22 11:24:30'),
(346, NULL, 'active', 'active', 'John da', 'Male', '12345661', 'john@yopmail.com', '$2y$10$vpFozVJCScTilyZa5JH5yuRdQn/D2bEsNrFPvle/33wksLxSF7x0G', '1988/08/31', 'lucy walker', '1212121212', '2000/01/09', 'second testing address', NULL, 205, 'this is testing address of parent partner', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16623074281.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16612433032.jpg', 1, '2022-11-16 13:30:52', '2022-08-22 11:25:46'),
(347, NULL, 'active', 'active', 'Mark Baggins', 'male', NULL, 'mark@yopmail.com', '$2y$10$kOGdyOQrIj9JutyBb3g73uG9PxpacNz5mntIj54i.OoZ8A5s9I066', NULL, 'jenny', NULL, NULL, NULL, 'female', 208, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16612445661.jpeg', NULL, 1, '2022-08-23 12:59:24', '2022-08-23 08:38:04'),
(348, NULL, 'inactive', 'active', NULL, NULL, NULL, 'marina@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 12:32:43', '2022-08-23 08:39:30'),
(349, NULL, 'active', 'active', 'ip', 'male', NULL, 'ip@yopmail.com', '$2y$10$9ylaHFn3jXLC6HtMDHSNBOOxhiidobuchZRF657ejcpVmNPrJ9/n.', NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL, NULL, NULL, NULL, 1, '2022-09-14 12:31:31', '2022-08-23 10:28:07'),
(350, NULL, 'inactive', 'active', NULL, NULL, NULL, 'ip@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 10:46:41', '2022-08-23 10:46:41'),
(351, NULL, 'inactive', 'active', NULL, NULL, NULL, 'vs@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 10:48:56', '2022-08-23 10:48:56'),
(352, NULL, 'active', 'active', 'vp', NULL, '9966663333', 'vp1@yopmail.com', '$2y$10$r/PmAjXj79RRjW7wQKlOMuFACUtmt/C8BTl2h8nHXJk.WGvrNT6sG', '2044/11/21', NULL, NULL, NULL, NULL, NULL, NULL, 'aa, bbbb,  Gujarat', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16612523801.jpeg', NULL, 1, '2022-08-29 11:50:01', '2022-08-23 10:57:00'),
(353, NULL, 'active', 'active', 'Samantha', NULL, '7778896588', 'cc@yopmail.com', '$2y$10$QHUN4UKIgc3m9WbCVXyT4.mIe476GLhtTxy9KpMz/rbSPh70FchRC', '2022/08/22', NULL, '7778896588', '2022/08/22', NULL, 'female', NULL, NULL, NULL, NULL, NULL, 1, '2022-09-06 10:47:15', '2022-08-23 11:32:53'),
(354, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:38:32', '2022-08-23 11:38:32'),
(355, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:42:04', '2022-08-23 11:42:04'),
(356, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:44:21', '2022-08-23 11:44:21'),
(357, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:47:11', '2022-08-23 11:47:11'),
(358, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:48:06', '2022-08-23 11:48:06'),
(359, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:50:12', '2022-08-23 11:50:12'),
(360, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:52:50', '2022-08-23 11:52:50'),
(361, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:57:51', '2022-08-23 11:57:51'),
(362, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 11:59:32', '2022-08-23 11:59:32'),
(363, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 12:00:36', '2022-08-23 12:00:36'),
(364, NULL, 'inactive', 'active', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-23 12:02:54', '2022-08-23 12:02:54'),
(365, NULL, 'inactive', 'active', NULL, NULL, NULL, 'vvs@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-26 08:14:22', '2022-08-26 08:14:22'),
(366, NULL, 'active', 'active', 'vvp', 'Female', '3322221111', 'vvp@yopmail.com', '$2y$10$O4Q.VJAIXpCurJlMj4Gs6OjElOg8hU722LyfVvn7InlaDxutVzv2y', '2022/08/25', NULL, NULL, NULL, NULL, NULL, NULL, 'aa,hhhh,hhhhhhg,nnn', NULL, NULL, NULL, 1, '2022-08-29 11:50:13', '2022-08-26 08:21:12'),
(367, NULL, 'active', 'active', 'AdTest', 'male', NULL, 'ad@yopmail.com', '$2y$10$IA6MthtMt30.0d4ST8fQD.j1BzsCRqPCF4jsSb3UQ/1Hqz/LfdXEa', '2000/12/20', 'Rita', NULL, NULL, NULL, NULL, 228, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16618557241.jpeg', NULL, 1, '2022-10-02 13:57:07', '2022-08-30 07:45:04'),
(368, NULL, 'inactive', 'active', NULL, NULL, NULL, 'da@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-30 07:46:03', '2022-08-30 07:46:03'),
(369, NULL, 'active', 'active', 'Vparent', 'male', NULL, 'vparent@yopmail.com', '$2y$10$ezfAvWYmtJB2C53kfNf2EeMNLmRIhCeoSQw0FSb6tdcwRM0Gpw1ZO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16618600171.jpeg', NULL, 1, '2022-08-30 11:46:57', '2022-08-30 11:44:29'),
(370, NULL, 'active', 'active', 'Parent', 'male', NULL, 'parent@yopmail.com', '$2y$10$P0UVxNhczC74K2lOmhD7E.pwRFqEkWFxzSL4.2YScXE4yAZwljNd2', NULL, 'Komal', NULL, NULL, NULL, NULL, 231, NULL, NULL, NULL, NULL, 1, '2022-09-06 10:51:45', '2022-08-31 06:01:13'),
(371, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:02:09', '2022-08-31 06:02:09'),
(372, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:02:24', '2022-08-31 06:02:24'),
(373, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:03:43', '2022-08-31 06:03:43'),
(374, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:03:52', '2022-08-31 06:03:52'),
(375, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:06:21', '2022-08-31 06:06:21'),
(376, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:06:34', '2022-08-31 06:06:34'),
(377, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:07:03', '2022-08-31 06:07:03'),
(378, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:07:38', '2022-08-31 06:07:38'),
(379, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:07:45', '2022-08-31 06:07:45'),
(380, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:08:45', '2022-08-31 06:08:45'),
(381, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:09:06', '2022-08-31 06:09:06'),
(382, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:09:16', '2022-08-31 06:09:16'),
(383, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:09:24', '2022-08-31 06:09:24'),
(384, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:09:31', '2022-08-31 06:09:31'),
(385, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:09:38', '2022-08-31 06:09:38'),
(386, NULL, 'active', 'active', 'Dravid', 'male', NULL, 'dravid@yopmail.com', '$2y$10$JkiTDSJeh25JbZAVoJAVL./o1IeB/q2Tse0kuZN9Ld2o84Ss8yOzO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-08-31 06:30:07', '2022-08-31 06:29:11'),
(387, NULL, 'inactive', 'active', NULL, NULL, NULL, 'dravid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:29:20', '2022-08-31 06:29:20'),
(388, NULL, 'inactive', 'active', NULL, NULL, NULL, 'dravid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:29:33', '2022-08-31 06:29:33'),
(389, NULL, 'inactive', 'active', NULL, NULL, NULL, 'meen@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:33:14', '2022-08-31 06:33:14'),
(390, NULL, 'inactive', 'active', NULL, NULL, NULL, 'meena@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:33:24', '2022-08-31 06:33:24'),
(391, NULL, 'active', 'active', 'Mohit', 'male', NULL, 'mohit@yopmail.com', '$2y$10$FM49OjZLw33I5J2osg52tet0fUAV9LhzTG6ZCRl/ZpbI8tn4gtHxu', NULL, 'Sonu', NULL, NULL, NULL, NULL, 250, NULL, NULL, NULL, NULL, 1, '2022-10-19 14:43:30', '2022-08-31 06:34:13'),
(392, NULL, 'active', 'active', 'Advin Dao', 'Male', NULL, 'advin@yopmail.com', '$2y$10$ur2suC6HgSxQ5YB0me1CsOSZqb4vqtNiA.1vVE3beHfPr3hVAXV1.', '1998/09/08', 'Roshan', NULL, NULL, NULL, NULL, 253, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16621039741.jpg', NULL, 1, '2022-09-06 10:51:34', '2022-08-31 06:43:11'),
(393, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jennifer@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:43:53', '2022-08-31 06:43:53'),
(394, NULL, 'active', 'active', 'Kabir Singh', 'male', NULL, 'kabir@yopmail.com', '$2y$10$cHK9Q3RHr9db1U39ZC7wUuR0WEuVJ4cXy6.XSE0vNbun8CPti5MaW', NULL, 'Babita', NULL, NULL, NULL, NULL, 255, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16619400771.jpeg', NULL, 1, '2022-09-06 10:51:28', '2022-08-31 06:51:21'),
(395, NULL, 'inactive', 'active', NULL, NULL, NULL, 'preeti@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-31 06:51:50', '2022-08-31 06:51:50'),
(396, 'dfdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsfsdfsdfsdfdsfds', 'active', 'active', 'vpp', 'male', '66665555', 'vpp@yopmail.com', '$2y$10$FCVJNEwb1KEqtYHjbEZrZum1Ut/mzEya4/jWfIji5mgb5wHTk7R1e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16621048791.jpg', NULL, 1, '2022-09-06 09:14:29', '2022-09-01 11:59:58'),
(397, NULL, 'inactive', 'active', NULL, NULL, NULL, 'vpp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-01 12:00:45', '2022-09-01 12:00:45'),
(398, NULL, 'active', 'active', 'James Maratha', 'male', NULL, 'james@yopmail.com', '$2y$10$wgwz/Q2QHfwqq/OT0eN3feL4ZdzYVFOivThSQOS2KNWr4ygPq7kJi', '1999/05/20', 'Anjali', NULL, NULL, NULL, NULL, 259, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16621961901.jpg', NULL, 1, '2022-09-07 12:16:41', '2022-09-03 08:57:31'),
(399, NULL, 'inactive', 'active', NULL, NULL, NULL, 'chloe@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-03 09:05:22', '2022-09-03 09:05:22'),
(400, NULL, 'active', 'active', 'viraj parent', NULL, '9996663333', 'vvv@yopmail.com', '$2y$10$sSDq0rhUAOY.G1AxQ5CPpegdGXcg4hO6i5X3/rNmmBQKOhdekcapq', '1998/09/18', 'viraj parent 2', '6666333322', '1998/09/05', NULL, 'female', NULL, 'ABC, abcd, abcdefg', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16623091081.jpg', NULL, 1, '2022-09-06 10:46:46', '2022-09-04 16:25:54'),
(401, NULL, 'inactive', 'active', NULL, NULL, NULL, 'vmother@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-04 16:44:00', '2022-09-04 16:44:00'),
(402, NULL, 'active', 'active', 'Xiao Ching Ming', NULL, NULL, 'yamin@yopmail.com', '$2y$10$NVPNSAIXmZ4Zi/17jJ0SvOVAg5FFsvwD090lIdHjy.2dND3UhpjeC', NULL, 'Jinal', NULL, NULL, NULL, 'female', 263, NULL, NULL, NULL, NULL, 1, '2022-09-06 10:49:32', '2022-09-06 10:23:29'),
(403, NULL, 'inactive', 'active', NULL, NULL, NULL, 'puja@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-06 10:25:12', '2022-09-06 10:25:12'),
(404, NULL, 'inactive', 'active', NULL, NULL, NULL, 'aad@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-07 12:17:01', '2022-09-07 12:17:01'),
(405, NULL, 'active', 'active', 'Sam', 'male', NULL, 'sam@yopmail.com', '$2y$10$l2CZQh505k64E8GVC077H.Sdeaa/lVjCbYhgMl/nsRfnN67gl4OPu', NULL, NULL, NULL, NULL, NULL, NULL, 268, NULL, NULL, NULL, NULL, 1, '2022-09-09 12:05:22', '2022-09-08 05:21:51'),
(406, NULL, 'inactive', 'active', NULL, NULL, NULL, 'adj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-08 05:33:39', '2022-09-08 05:33:39'),
(407, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sam@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-08 05:35:40', '2022-09-08 05:35:40'),
(408, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sonu@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-08 05:40:00', '2022-09-08 05:40:00'),
(409, 'd8os4IqOSQaAfjQa6gmXVd:APA91bGhdTGTyrnhdVSggBY7lA8a3sGvhouph_yYgFunuLL8l4m0_OLSYLU475Of5eJG1xP0zNjqtOVFUOtMehFdINKcG0wu4ZPj-jNLaW5eCZOp0DjFwQHJwxsqkM8B4uVi36Q7U4d4', 'active', 'active', 'Farhan', 'male', '56565666565', 'ns@yopmail.com', '$2y$10$wS90QTZi0ydmGMd1mXdTqu4nhBe/vebBBuQBr481XoRtwOXNw.uTW', '1996/07/01', 'charmi', '44664111', '1998/11/24', 'partner address', 'male', 193, 'test parent address', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16632228821.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16632228512.png', 1, '2022-09-19 06:20:50', '2022-09-09 04:36:02'),
(410, NULL, 'inactive', 'active', NULL, NULL, NULL, 'seeta@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 05:00:01', '2022-09-09 05:00:01'),
(411, NULL, 'inactive', 'active', NULL, NULL, NULL, 'm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 05:13:00', '2022-09-09 05:13:00'),
(412, NULL, 'active', 'active', 'sammy', 'male', NULL, 'sammy@yopmail.com', '$2y$10$cmbhSPFL0RhnkuoE2fruvOaHbGXxHPkMbLmLvn2zhZIFgoQg.7w5C', NULL, NULL, NULL, NULL, NULL, NULL, 273, NULL, NULL, NULL, NULL, 1, '2022-09-09 05:35:20', '2022-09-09 05:27:20'),
(413, NULL, 'inactive', 'active', NULL, NULL, NULL, 'yukti@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 05:27:58', '2022-09-09 05:27:58'),
(414, NULL, 'active', 'active', 'Mohit', 'male', NULL, 'testm@yopmail.com', '$2y$10$1kBnYz7OifwUjm3Z1iRsROVbPl01RiY/JjnonStocFzAX5wZoMohC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-12 12:39:39', '2022-09-09 07:19:22'),
(415, NULL, 'active', 'active', 'Johnny', 'male', NULL, 'testp@yopmail.com', '$2y$10$/ZbtLEM2kt22TpqNen8y.OR7GfiC3TbUTk8CcSU7QhKyE4nKl0UyG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 07:21:18', '2022-09-09 07:20:48'),
(416, NULL, 'active', 'active', 'John', 'male', NULL, 'testa@yopmail.com', '$2y$10$z91Rz4ZUVpwQO1moyo7uqeIlt/oDY6.tyib2sxB4gEDsnCp5ethW2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-09 07:24:42', '2022-09-09 07:23:59'),
(417, NULL, 'inactive', 'active', NULL, NULL, NULL, 'nsumara@justcodenow.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-12 09:10:57', '2022-09-12 09:10:57'),
(418, NULL, 'inactive', 'active', NULL, NULL, NULL, 'puja@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-12 13:04:01', '2022-09-12 13:04:01'),
(419, NULL, 'inactive', 'active', NULL, NULL, NULL, 'punam@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-12 13:04:12', '2022-09-12 13:04:12'),
(420, NULL, 'active', 'active', 'Reza', 'male', NULL, 'reza@yopmail.com', '$2y$10$16h0DP6ti5WjyD08YwiuHOgKW785uRIYygzq/lqK.cugmyujId78O', NULL, NULL, NULL, NULL, NULL, NULL, 277, NULL, NULL, NULL, NULL, 1, '2022-09-13 14:16:09', '2022-09-12 13:05:28'),
(421, NULL, 'active', 'active', 'nikhil', 'male', '866999999', 'nikhil@yopmail.com', '$2y$10$mWkGPBAfhjshI62J/EPdPuNQmZnvO7yBRQlt9.xKvcMUMkHXogBYm', '1999/09/01', 'shainece1', '9666666688', '1999/10/16', 'bazar', 'female', 280, 'main', NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16632490791.jpeg', 'https://biggestaskbackend.justcodenow.com/images/profile/16632490912.jpeg', 1, '2022-11-03 09:37:57', '2022-09-14 05:53:56'),
(422, NULL, 'inactive', 'active', NULL, NULL, NULL, 'reema@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-14 05:55:09', '2022-09-14 05:55:09'),
(423, NULL, 'active', 'active', 'Javin Sharma', 'male', NULL, 'javin@yopmail.com', '$2y$10$J29oWsp8TQc2A3PiDavOjeuwed/F1QzrexI1eC.jjsBQIvSkUevwC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-14 06:06:11', '2022-09-14 06:04:32'),
(424, NULL, 'inactive', 'active', NULL, NULL, NULL, 'meena@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-14 06:06:34', '2022-09-14 06:06:34'),
(425, NULL, 'inactive', 'active', NULL, NULL, NULL, 'rupa@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-14 06:06:56', '2022-09-14 06:06:56'),
(426, NULL, 'active', 'active', 'Dipesh', 'male', NULL, 'dipesh@yopmail.com', '$2y$10$h9rbZcIIvx4snuXBnxnBG.4GLqmB8oTAnY4zG1BrvgoMqhyZdlHTS', NULL, NULL, NULL, NULL, NULL, NULL, 282, NULL, NULL, NULL, NULL, 1, '2022-10-14 13:18:24', '2022-09-14 06:28:36'),
(427, NULL, 'active', 'active', 'Tony stark', 'male', NULL, 'stark@yopmail.com', '$2y$10$U24ehGLUC5KwU.siij2hH.iDC77SjmDz4.dsZRo96VtYfAZvkOVEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-14 12:28:52', '2022-09-14 12:28:22'),
(428, NULL, 'inactive', 'active', NULL, NULL, NULL, 'lopez@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-14 12:29:19', '2022-09-14 12:29:19'),
(429, NULL, 'inactive', 'active', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:11:13', '2022-09-15 11:11:13'),
(430, NULL, 'inactive', 'active', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:16:12', '2022-09-15 11:16:12'),
(431, NULL, 'inactive', 'active', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:22:59', '2022-09-15 11:22:59'),
(432, NULL, 'inactive', 'active', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:27:49', '2022-09-15 11:27:49'),
(433, NULL, 'inactive', 'active', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:29:05', '2022-09-15 11:29:05'),
(434, NULL, 'inactive', 'active', NULL, NULL, NULL, 'vfdsd@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-09-15 11:30:48', '2022-09-15 11:30:48'),
(435, NULL, 'active', 'active', 'james', 'male', NULL, 'sp@yopmail.com', '$2y$10$Dt7asY5qZTtiOAjgH7589.mFvoMnAJj1sydKWdNMCYU8DZNS1EoGm', NULL, NULL, NULL, NULL, NULL, NULL, 293, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16647193851.jpg', NULL, 1, '2022-11-18 12:48:08', '2022-10-02 13:58:04'),
(436, NULL, 'inactive', 'active', NULL, NULL, NULL, 'ss@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-02 13:59:33', '2022-10-02 13:59:33'),
(437, NULL, 'active', 'active', 'MaryJane Carnahan', 'female', '3145325755', 'hello@thebiggestask.com', '$2y$10$Mo5o3X/qy.vrW1R00uvIHe7Ru1ZiB4AYKTMqi9XxJiMex8XNPKgOG', '1985/10/09', 'Seth Carnahan', '7347473581', '1985/10/01', NULL, 'male', 297, NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16649070791.jpg', 'https://biggestaskbackend.justcodenow.com/images/profile/16649071322.jpg', 1, '2022-11-30 09:40:06', '2022-10-04 16:43:37'),
(438, NULL, 'inactive', 'active', NULL, NULL, NULL, 'hello@thebiggestask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-04 16:48:08', '2022-10-04 16:48:08'),
(439, NULL, 'inactive', 'active', NULL, NULL, NULL, 'hello@thebiggestask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-04 16:49:06', '2022-10-04 16:49:06'),
(440, NULL, 'inactive', 'active', NULL, NULL, NULL, 'mjrcarnahan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-04 17:11:34', '2022-10-04 17:11:34'),
(441, NULL, 'inactive', 'active', NULL, NULL, NULL, 'mjrcarnahan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-04 20:11:15', '2022-10-04 20:11:15'),
(442, NULL, 'inactive', 'active', NULL, NULL, NULL, 'xx@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 06:50:05', '2022-10-14 06:50:05'),
(443, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samy@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 14:54:38', '2022-10-14 14:54:38'),
(444, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 14:57:29', '2022-10-14 14:57:29'),
(445, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:00:08', '2022-10-14 15:00:08'),
(446, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:06:05', '2022-10-14 15:06:05'),
(447, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:06:40', '2022-10-14 15:06:40'),
(448, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:08:27', '2022-10-14 15:08:27'),
(449, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:09:04', '2022-10-14 15:09:04'),
(450, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:09:43', '2022-10-14 15:09:43'),
(451, NULL, 'inactive', 'active', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-14 15:15:25', '2022-10-14 15:15:25'),
(452, NULL, 'active', 'active', 'Sahil', NULL, NULL, 'sahil@yopmail.com', '$2y$10$t78C5i5KR9G.dUruqLsOoeW6/khx3imAnfU286hhnADy.Aei/pYuO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 06:04:21', '2022-10-18 06:03:44'),
(453, 'eNZO-IGoSCSqrdKbyCv2a3:APA91bEL_sdMGrTo4JJ8QoY1dXlWLlFpTLxeO0PJhtTST-Yu6tSkBoH4ps-p-eirWQKQIwc_wfTXZtXWy6HzX0zNM6vZ7UuelRjsIREGbrhHXDH91hWqmVf0ZkUA6MNcUYzySLuMu1Nf', 'active', 'active', 'Sahid', NULL, NULL, 'sahid@yopmail.com', '$2y$10$2MaZyC8Hnjfy3VZZ80Y8lOGfbpAW2mxapHFeHvzdl7FqixzCTaLKa', NULL, NULL, NULL, NULL, NULL, NULL, 326, NULL, NULL, NULL, NULL, 1, '2022-10-26 06:48:23', '2022-10-18 06:49:09'),
(454, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 06:59:10', '2022-10-18 06:59:10'),
(455, NULL, 'inactive', 'active', NULL, NULL, NULL, 'Sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:27:03', '2022-10-18 07:27:03'),
(456, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:28:16', '2022-10-18 07:28:16'),
(457, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:42:06', '2022-10-18 07:42:06'),
(458, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:52:42', '2022-10-18 07:52:42'),
(459, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:53:41', '2022-10-18 07:53:41'),
(460, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:56:21', '2022-10-18 07:56:21'),
(461, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 07:58:28', '2022-10-18 07:58:28'),
(462, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 08:06:29', '2022-10-18 08:06:29'),
(463, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 08:11:08', '2022-10-18 08:11:08'),
(464, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 08:11:37', '2022-10-18 08:11:37'),
(465, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 09:45:58', '2022-10-18 09:45:58'),
(466, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 10:14:15', '2022-10-18 10:14:15'),
(467, NULL, 'active', 'active', 'Soham', NULL, NULL, 'soham@yopmail.com', '$2y$10$5buNn9UFk/P0DwbEI1jZw.2ueN4tQXtd4eVMWELFcvIXnrtxFnQOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 10:24:32', '2022-10-18 10:23:45'),
(468, NULL, 'active', 'active', 'mohan', NULL, NULL, 'mohan@yopmail.com', '$2y$10$Dqcyzf22yZGB3LqHtsaXd.WPDwFKeh7vNL78vGlMdHKOSlBNLlDJm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 10:28:13', '2022-10-18 10:27:50'),
(469, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jain@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 10:40:47', '2022-10-18 10:40:47'),
(470, NULL, 'inactive', 'active', NULL, NULL, NULL, 'asish@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-18 10:44:19', '2022-10-18 10:44:19'),
(471, NULL, 'active', 'active', 'test', 'male', '333335555', 'test@yopmail.com', '$2y$10$uRKp1fvWh9sP.hR.yHs8BuZZCAnxGX/DqejlZJ6RkrAaRdsjq17nW', '1998/10/05', NULL, NULL, NULL, NULL, NULL, 339, 'Ahmedabad', NULL, NULL, NULL, 1, '2022-10-19 13:33:06', '2022-10-19 06:34:07'),
(472, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:38:29', '2022-10-19 06:38:29'),
(473, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:48:50', '2022-10-19 06:48:50'),
(474, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:50:37', '2022-10-19 06:50:37'),
(475, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:51:00', '2022-10-19 06:51:00'),
(476, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:52:21', '2022-10-19 06:52:21'),
(477, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:56:01', '2022-10-19 06:56:01'),
(478, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:58:11', '2022-10-19 06:58:11'),
(479, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 06:59:57', '2022-10-19 06:59:57'),
(480, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 07:03:08', '2022-10-19 07:03:08'),
(481, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 07:06:22', '2022-10-19 07:06:22'),
(482, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 07:09:05', '2022-10-19 07:09:05'),
(483, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tests@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 08:40:48', '2022-10-19 08:40:48'),
(484, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 09:59:34', '2022-10-19 09:59:34'),
(485, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:00:34', '2022-10-19 10:00:34'),
(486, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:06:26', '2022-10-19 10:06:26'),
(487, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:44:24', '2022-10-19 10:44:24'),
(488, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:47:03', '2022-10-19 10:47:03'),
(489, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:49:09', '2022-10-19 10:49:09'),
(490, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 10:50:25', '2022-10-19 10:50:25'),
(491, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:22:05', '2022-10-19 12:22:05'),
(492, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:24:55', '2022-10-19 12:24:55'),
(493, NULL, 'inactive', 'active', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:24:56', '2022-10-19 12:24:56'),
(494, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:29:01', '2022-10-19 12:29:01'),
(495, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:32:25', '2022-10-19 12:32:25'),
(496, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:35:06', '2022-10-19 12:35:06'),
(497, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.xcom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:38:01', '2022-10-19 12:38:01'),
(498, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:40:45', '2022-10-19 12:40:45'),
(499, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:46:01', '2022-10-19 12:46:01'),
(500, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:49:56', '2022-10-19 12:49:56'),
(501, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinale@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 12:54:12', '2022-10-19 12:54:12'),
(502, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:04:20', '2022-10-19 13:04:20'),
(503, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:09:26', '2022-10-19 13:09:26'),
(504, NULL, 'inactive', 'active', NULL, NULL, NULL, 'janil@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:13:18', '2022-10-19 13:13:18'),
(505, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:17:22', '2022-10-19 13:17:22'),
(506, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:24:39', '2022-10-19 13:24:39'),
(507, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:28:39', '2022-10-19 13:28:39'),
(508, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:33:47', '2022-10-19 13:33:47'),
(509, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:40:03', '2022-10-19 13:40:03'),
(510, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:42:49', '2022-10-19 13:42:49'),
(511, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:46:37', '2022-10-19 13:46:37'),
(512, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 13:59:53', '2022-10-19 13:59:53'),
(513, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 14:00:21', '2022-10-19 14:00:21'),
(514, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 14:00:34', '2022-10-19 14:00:34'),
(515, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 14:16:59', '2022-10-19 14:16:59'),
(516, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jina@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-19 14:17:10', '2022-10-19 14:17:10'),
(517, NULL, 'active', 'active', 'Trisha', NULL, NULL, 'trisha@yopmail.com', '$2y$10$Q9jLP1N8JGX1CPql47sMPuj2Wa5MQby0lSgOitHr/xA02DU62JFvq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-20 06:39:34', '2022-10-19 14:51:13'),
(518, NULL, 'active', 'active', 'Samir', NULL, NULL, 'samir@yopmail.com', '$2y$10$o5oB2bsc0cWd6HjdCFLkeeKkU3LQwwxB4AS22gmR6RHri/TUQDOh2', NULL, NULL, NULL, NULL, NULL, NULL, 374, NULL, NULL, NULL, NULL, 1, '2022-11-16 08:59:48', '2022-10-20 13:53:43'),
(519, NULL, 'inactive', 'active', NULL, NULL, NULL, 'deepti@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-20 13:58:36', '2022-10-20 13:58:36'),
(520, NULL, 'active', 'active', 'tp', NULL, NULL, 'tp@yopmail.com', '$2y$10$n3ozFefvkrtmWGxPWaLeoOt7bKiLFiY2szwzr/Y0oLEiXYYgWS7yu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-02 09:38:14', '2022-11-02 09:07:01'),
(521, NULL, 'inactive', 'active', NULL, NULL, NULL, 'ts@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-02 09:38:32', '2022-11-02 09:38:32'),
(522, NULL, 'active', 'active', 'tpp', NULL, NULL, 'tpp@yopmail.com', '$2y$10$usABdnno7bRD69w40NrBAOsmK3TsWu2wKzZRlhselYmlCd3WayZa6', NULL, NULL, NULL, NULL, NULL, NULL, 376, NULL, NULL, NULL, NULL, 1, '2022-11-03 06:32:35', '2022-11-02 09:45:01'),
(523, 'eSGFZcBIRACtd_HICs76FL:APA91bGxlzzP2rPKK6Wp-ZCQIB2H0qQgTT8HiLO-XjZ_HDGaqBvqKutT5SeHiIgVDFQnyfN4tIfT2P7Cr-QHBnH39IROjXggddL3wOyGyo2N7EHn2IEz7V3xuVzqv7dQnd81nEkC4Bto', 'active', 'active', 'Jamin', NULL, NULL, 'jamin@yopmail.com', '$2y$10$tWJCeVzTPMCSq0EbHHRX6.FOjSCWBMuz9qXUaFUdSsulkCj2m2HDi', NULL, NULL, NULL, NULL, NULL, NULL, 379, NULL, NULL, NULL, NULL, 1, '2022-11-03 09:38:11', '2022-11-03 06:33:01'),
(524, NULL, 'inactive', 'active', NULL, NULL, NULL, 'yasha@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-03 06:36:33', '2022-11-03 06:36:33'),
(525, NULL, 'active', 'active', 'Manan', NULL, NULL, 'manan@yopmail.com', '$2y$10$uE520lR23iQn9BVOS5BoeeXFcEYIVKuJSG2YDTHEg37Pr.dBK7hLe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-03 07:04:53', '2022-11-03 06:48:44'),
(526, NULL, 'active', 'active', 'kem', NULL, NULL, 'kd@yopmail.com', '$2y$10$nYO0iMchun.w/59y1zUfee7/qhxJZqVdsbJ2jW5V93j0zGUPkd5Wa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-03 07:23:44', '2022-11-03 07:05:07'),
(527, NULL, 'inactive', 'active', NULL, NULL, NULL, 'jiya@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-03 07:51:16', '2022-11-03 07:51:16'),
(528, 'c7CC92Q1SbOnH8llz_rk2R:APA91bEVogvBV_BpfQmUkxymCMKj9-nB5WCmzuusywg-euU5wen4cNrr0aQGuraCBZgMLFLFCN4SZYAlFAn2nBqUMcjFgWoErUob1nSPDTorC3nyIntererIMbrCWKYNz0TTJ5XX3j9B', 'active', 'active', 'Hamza', NULL, NULL, 'hp@yopmail.com', '$2y$10$oOylJpKeK5yOPiWFVFOl6uFO64dUxTwa9qJkq8/vl156Nr1raHRiq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-04 16:45:46', '2022-11-04 16:44:26'),
(529, NULL, 'active', 'active', 'abhin', 'male', NULL, 'abhinparent@yopmail.com', '$2y$10$kTGGZvOd7Na4/73IiqtNN.ejvC2/RgJQJncRqHQQrUuefJ.sQyM82', NULL, NULL, NULL, NULL, NULL, NULL, 385, NULL, NULL, NULL, NULL, 1, '2022-11-18 12:11:19', '2022-11-14 04:57:59'),
(530, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-14 05:34:36', '2022-11-14 05:34:36'),
(531, NULL, 'inactive', 'active', NULL, NULL, NULL, 'surrogate11@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-14 05:34:44', '2022-11-14 05:34:44'),
(532, NULL, 'active', 'active', 'tparent', NULL, NULL, 'ttp@yopmail.com', '$2y$10$8XRCnOThtRt2vzxRXvB/meMBYCuBztDXMuRW7lHEUiij9.XXkLS/S', NULL, NULL, NULL, NULL, NULL, NULL, 387, NULL, NULL, NULL, NULL, 1, '2022-11-14 12:40:25', '2022-11-14 10:22:32'),
(533, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tts@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-14 12:38:30', '2022-11-14 12:38:30'),
(534, NULL, 'inactive', 'active', NULL, NULL, NULL, 'sky@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-15 12:26:20', '2022-11-15 12:26:20'),
(535, NULL, 'active', 'active', 'skyt', NULL, NULL, 'skyt@yopmail.com', '$2y$10$pWGE3Umngi8O1mp91smTGeAwd362cjWo6sv3mR655E9YDc14YDBWe', NULL, NULL, NULL, NULL, NULL, NULL, 388, NULL, NULL, NULL, NULL, 1, '2022-11-29 13:22:14', '2022-11-15 12:28:28'),
(536, 'f-ymnN5_RdW1EQEnXRKfYV:APA91bElzzQIotztxLe3Nmp0beqP8fD7Jb0SlZUnTqthJZFW7hVWQ0wKeKVFVaN05GL6Go-W8-UGjy213M_DX262C7Ih8E6L0XekjkTH8ehaTGrfgSGx0Swix7T8DkYQIvMd1xUpHNaf', 'active', 'active', 'tpa', NULL, NULL, 'tpa@yopmail.com', '$2y$10$g0Uz.qQK1/ZtarB5eol3vuOrzciL13aIKtSradyRMReKP2CtHlKva', NULL, NULL, NULL, NULL, NULL, NULL, 394, NULL, NULL, NULL, NULL, 1, '2022-11-18 12:30:03', '2022-11-18 12:12:10'),
(537, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tps@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:12:33', '2022-11-18 12:12:33'),
(538, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tpss@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:13:05', '2022-11-18 12:13:05'),
(539, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tsss@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:13:57', '2022-11-18 12:13:57'),
(540, NULL, 'inactive', 'active', NULL, NULL, NULL, 'tss@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:14:10', '2022-11-18 12:14:10'),
(541, NULL, 'active', 'active', 'Jayesh', NULL, NULL, 'jp@yopmail.com', '$2y$10$JfCx2M5/vNyXHx2VN8bmr.vHSBs4mpRj.n4skBkyzK/amnTcLumum', NULL, NULL, NULL, NULL, NULL, NULL, 396, NULL, NULL, NULL, NULL, 1, '2022-11-29 13:43:27', '2022-11-18 12:31:01'),
(542, NULL, 'inactive', 'active', NULL, NULL, NULL, 'js@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:32:12', '2022-11-18 12:32:12'),
(543, NULL, 'active', 'active', 'seju', NULL, NULL, 'sj@yopmail.com', '$2y$10$EpLXPX36j5STPyXnLBm/Qu1xJu/JRKiNFzQ3Nd5CWrx8qrRASQbGa', NULL, NULL, NULL, NULL, NULL, NULL, 398, NULL, NULL, NULL, NULL, 1, '2022-11-18 12:50:55', '2022-11-18 12:45:56');
INSERT INTO `app__users` (`id`, `fcm_token`, `parent_status`, `parent_notification_status`, `parent_name`, `parent_gender`, `parent_number`, `parent_email`, `parent_password`, `parent_date_of_birth`, `parent_partner_name`, `parent_partner_phone`, `parent_partner_dob`, `parent_partner_address`, `parent_partner_gender`, `parent_partner_id`, `parent_address`, `parent_version`, `parent_image1`, `parent_image2`, `is_payment_done`, `created_at`, `updated_at`) VALUES
(544, NULL, 'inactive', 'active', NULL, NULL, NULL, 'pj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:47:03', '2022-11-18 12:47:03'),
(545, NULL, 'inactive', 'active', NULL, NULL, NULL, 'suja@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 12:51:05', '2022-11-18 12:51:05'),
(546, 'eP-7wkOWS0C7AruNAQuyEQ:APA91bGmyl02Ok6gTB7zXY5SF3HX627OozD0otvHQdqeMiZl6G8ogy5XI0C52KlBJDyKxXvV6GevapyyUmp2ZiDbb7HJGz5Bjd15HvEyFk3VCnwnhjCzX9JgACW08E6v-lR6uMZ9nswm', 'active', 'active', 'Seju', NULL, NULL, 'seju@yopmail.com', '$2y$10$mw7GIAezAKaPm27SM5tcV.gpPDSbgNrTc1asLaMNFuWQztq1SfsT2', NULL, NULL, NULL, NULL, NULL, NULL, 399, NULL, NULL, NULL, NULL, 1, '2022-11-18 13:49:41', '2022-11-18 12:51:52'),
(547, NULL, 'inactive', 'active', NULL, NULL, NULL, 'mona@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 13:00:19', '2022-11-18 13:00:19'),
(548, NULL, 'inactive', 'active', NULL, NULL, NULL, 'mona@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 13:00:23', '2022-11-18 13:00:23'),
(549, NULL, 'active', 'active', 'karlo', NULL, NULL, 'karl@yopmail.com', '$2y$10$BDl6mtlZhJ8KhYMXJdJmZeBXyMvsrrBINsStjet2Iq65c7zIn5YLC', NULL, NULL, NULL, NULL, NULL, NULL, 401, NULL, NULL, NULL, NULL, 1, '2022-11-18 13:04:12', '2022-11-18 13:01:55'),
(550, NULL, 'inactive', 'active', NULL, NULL, NULL, 'pp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-18 13:06:00', '2022-11-18 13:06:00'),
(551, 'fu5gKAzZSp-KoP0UckFDAW:APA91bEwx5jhVEcGC2s5MGGXC57_hQUTf-u_aqOj-bd6jy6MR13MHBj0eiPpAC7nY4r7ZOi3VaThWdRVHxACh7QIPAJJaVC-qe_1wi0-u0L9q0uzM0B1U5SCskmXoTIEenUAXfdwYPkw', 'active', 'active', 'purav', NULL, NULL, 'ps@yopmail.com', '$2y$10$el.TlIrYziIttKLA9btUrOfTvL0M9AykTMyUcbPtFU8AJBYyQYHOC', NULL, NULL, NULL, NULL, NULL, NULL, 404, NULL, NULL, NULL, NULL, 1, '2022-11-18 13:07:47', '2022-11-18 13:06:47'),
(552, NULL, 'active', 'active', 'testa', NULL, NULL, 'meetdev0003@gmail.com', '$2y$10$uRPsJys0udyQMwi1Q5F9Fu4rBr3WD94uH9mUUD/xRxxbcePH7mBFi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-26 10:49:12', '2022-11-24 04:41:54'),
(553, NULL, 'inactive', 'active', NULL, NULL, NULL, 'meetdev0001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-30 09:40:37', '2022-11-30 09:40:37'),
(554, NULL, 'inactive', 'active', NULL, NULL, NULL, 'testing@youpmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-12-14 06:48:57', '2022-12-14 06:48:57'),
(555, NULL, 'inactive', 'active', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-12-14 06:50:00', '2022-12-14 06:50:00'),
(556, NULL, 'inactive', 'active', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-12-14 06:55:15', '2022-12-14 06:55:15'),
(557, NULL, 'inactive', 'active', NULL, NULL, NULL, 'hello@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-12-14 07:08:10', '2022-12-14 07:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `app__user_surrogates`
--

CREATE TABLE `app__user_surrogates` (
  `id` int(11) NOT NULL,
  `fcm_token` text DEFAULT NULL,
  `notification_status` varchar(255) NOT NULL DEFAULT 'active',
  `status` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `name` text DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `email` text NOT NULL,
  `password` text DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `partner_name` text DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `image1` text DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app__user_surrogates`
--

INSERT INTO `app__user_surrogates` (`id`, `fcm_token`, `notification_status`, `status`, `name`, `gender`, `number`, `email`, `password`, `date_of_birth`, `address`, `partner_name`, `partner_id`, `image1`, `version`, `created_at`, `updated_at`) VALUES
(1, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Charlotte', 'female', '8256895425', 'zs@yopmail.com', '$2y$10$hbE3LlNCiv42kHdyX2cwB.FsiIGxuzrdvdS8ZTcyznWuYuTLGzI3m', '2000/01/25', 'This is the testing address', 'Lucy walker', 1, NULL, 'android', '2022-08-29 11:51:22', '2022-05-14 03:32:23'),
(2, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'inactive', 'active', 'Amelia', 'female', '8256895425', 'zsu@yopmail.com', '$2y$10$BWTp05mioThaT1rirj2T9.ZdEsz7VHXh64hArdYbeMu5uNpl5vfue', '2000/01/25', 'This is the testing address', 'zparent', 2, NULL, 'android', '2022-09-03 06:03:25', '2022-05-14 03:29:01'),
(3, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Ava', 'female', '4892134998', 'test@gmail.com', '$2y$10$PgFihDDrYefMyrxisg0y6OKL4Rq.Z2EG5v7nzxAWV6RZUaIWCJKAK', NULL, NULL, NULL, 6, NULL, 'android', '2022-08-23 10:51:12', '2022-05-26 05:31:40'),
(186, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Sophia', 'female', '8256895425', 'zsu@yopmail.com', '$2y$10$3ghD4IJE2VrDlgPNhrG0AegiRzEbKVt9Vl8bWvPPclc2gNDliqWem', '2000/01/25', 'This is the testing address', 'zparent', 321, NULL, NULL, '2022-08-29 11:51:33', '2022-08-16 08:42:41'),
(190, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Isabella', 'female', '8256895425', 'zsu@yopmail.com', '$2y$10$74r/RriU0uWb2rlCRgDuF.lzl.Sh4hJWQHnWnUMpncdYmGjoa6TtK', '2000/01/25', 'This is the testing address', 'zparent', 327, 'https://biggestaskbackend.justcodenow.com/images/profile/16607181371.jpg', NULL, '2022-08-29 11:51:39', '2022-08-17 05:47:01'),
(191, NULL, 'active', 'active', 'Ellie', 'female', '8256895425', 'vsu@yopmail.com', '$2y$10$u1GS9t8kbxXGp0Uw1Ffw0uLI4AAzqI.uExXOGYAba9crLS2LEKTsy', '2000/01/26', 'This is the testing address', 'vparent', 332, 'https://biggestaskbackend.justcodenow.com/images/profile/16609012891.svg', NULL, '2022-09-19 05:20:56', '2022-08-17 07:56:53'),
(192, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, 'female', NULL, 'vpu@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-17 07:57:57'),
(193, 'fsdfdsafasdfsdfdsfsdfdsfsdfdsfdsfsdfdsfdsfdsfdsfds', 'active', 'active', 'Bela', 'male', '666665666', 'nsumara@justcodenow.com', '$2y$10$XPC79Fso3ZdVI2EpVwLjAu0aC5aVYRRqYYU6M3x0XjmEEfzhjqMMS', '1998/09/03', 'mother address', NULL, 409, 'https://biggestaskbackend.justcodenow.com/images/profile/16632337641.jpg', NULL, '2022-11-17 06:23:49', '2022-08-18 04:31:25'),
(194, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'ap@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 10:27:33'),
(195, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'aparent@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 10:28:29'),
(196, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Chloe', NULL, '7878798038', 'asurrogate@yopmail.com', '$2y$10$r/Wmy1U9Dy/qVfKiZDkDr.Jd5yLo/qreP8VyNpgUK16u/W1JUGAU6', '2000/12/20', 'This is the testing address', 'aparent', 335, 'https://biggestaskbackend.justcodenow.com/images/profile/16609061081.jpg', NULL, '2022-08-29 11:51:51', '2022-08-19 10:31:15'),
(197, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'hparent@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 14:35:43'),
(198, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Riley', NULL, '7096427878', 'hsurrogate@yopmail.com', '$2y$10$zqTz7al6vriMQZbMLD7gPu5XPOEWhsMg9IrUETJCSdX8CFidcI5GO', '2000/12/20', 'Titenium', NULL, 337, 'https://biggestaskbackend.justcodenow.com/images/profile/16609968291.jpg', NULL, '2022-08-29 11:51:57', '2022-08-19 15:02:00'),
(199, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'apn@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 15:26:37'),
(200, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'apn@yompail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 15:27:12'),
(201, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'mp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-19 15:27:51'),
(202, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'Johnp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-22 07:00:45'),
(203, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Samantha', 'female', '7226956822', 'Samanthas@yopmail.com', '$2y$10$PYPB8YHLrm8FUc5OdCRTyu8RtLKxxVRleI5JA7RzE7S860ZO2ZFQm', NULL, NULL, NULL, 342, 'https://biggestaskbackend.justcodenow.com/images/profile/16611540451.jpeg', NULL, '2022-08-23 10:51:12', '2022-08-22 07:03:16'),
(204, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Jenny', 'female', NULL, 'ms@yopmail.com', '$2y$10$iInWeKmz0Le0/qbnKv.7BONZvqUAV9vuWheEUN6XyoxREnOP4bfW6', NULL, NULL, NULL, 341, NULL, NULL, '2022-08-23 10:51:12', '2022-08-22 11:18:06'),
(205, 'd0wJC9ZcSAO7V5SyC20sDF:APA91bHRcx3GiYm3ePra1lmec7Vr0krrncWRWPSZ5hEZg6AnHxJjAQx_6EprgMBv_TDvjsGf_JG4QV3FxhMcRx301TFxcTL_0KO8seQqwHh6KuXoj0DBjCZYJvIZS7ZuOOVxS97wBgpY', 'active', 'active', 'Jenny Marth', 'Female', '709643722', 'jenny@yopmail.com', '$2y$10$BWTp05mioThaT1rirj2T9.ZdEsz7VHXh64hArdYbeMu5uNpl5vfue', '2000/12/20', 'a,9 / ABC', NULL, 346, 'https://biggestaskbackend.justcodenow.com/images/profile/16666335091.jpeg', NULL, '2022-12-02 20:27:29', '2022-08-22 11:24:30'),
(206, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'john@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-22 11:25:46'),
(207, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'mark@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-23 08:38:04'),
(208, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'Marina Baggins', 'female', NULL, 'marina@yopmail.com', '$2y$10$RzEr/TzU4iEKTV.x8tVh9Ok4NpC6FKEDexDYOOjo9dTWOSmjczE.e', NULL, NULL, NULL, 347, NULL, NULL, '2022-08-23 12:33:42', '2022-08-23 08:39:30'),
(209, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'ip@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-23 10:28:07'),
(210, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'inactive', NULL, NULL, NULL, 'ip@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:51:12', '2022-08-23 10:46:41'),
(211, 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE', 'active', 'active', 'ama', 'Other', '12398', 'vs@yopmail.com', '$2y$10$2iwQpXDRv2NsZv5//ya7qexJ5yClfX1GbFCmrsLv2Oj7XQ65LfEVO', '2011/11/11', 'a,hh', NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16612523911.jpg', NULL, '2022-08-29 11:52:03', '2022-08-23 10:48:56'),
(212, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vp1@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 10:57:00', '2022-08-23 10:57:00'),
(213, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:32:53', '2022-08-23 11:32:53'),
(214, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:38:32', '2022-08-23 11:38:32'),
(215, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:42:04', '2022-08-23 11:42:04'),
(216, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:44:21', '2022-08-23 11:44:21'),
(217, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:47:11', '2022-08-23 11:47:11'),
(218, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:48:06', '2022-08-23 11:48:06'),
(219, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:50:12', '2022-08-23 11:50:12'),
(220, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:52:50', '2022-08-23 11:52:50'),
(221, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:57:51', '2022-08-23 11:57:51'),
(222, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 11:59:32', '2022-08-23 11:59:32'),
(223, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 12:00:36', '2022-08-23 12:00:36'),
(224, NULL, 'active', 'inactive', NULL, NULL, NULL, 'cc@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 12:02:54', '2022-08-23 12:02:54'),
(225, NULL, 'active', 'active', 'vvs', 'female', '98NNNN563+000', 'vvs@yopmail.com', '$2y$10$WuDqAc0xGQ8nyQi6Q8r2gemHGZG878gDwqxjCCPndwnrYHGVTOeb6', '2022/08/04', 'a, bbbb, cccccccccc', NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16615019981.png', NULL, '2022-08-29 11:52:16', '2022-08-26 08:14:22'),
(226, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vvp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-26 08:21:12', '2022-08-26 08:21:12'),
(227, NULL, 'active', 'inactive', NULL, NULL, NULL, 'ad@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 07:45:04', '2022-08-30 07:45:04'),
(228, 'eFN52aZOTUWGV5ZWFM6S-2:APA91bHJcTEqCh-DvpTxqQZXTCT0bgiccOhD83UpmKrd7XfrgcNScYbxr2hEGEC0jA1Jm2Czkf7mMf0t26P4An9I21CcaFj9pAWn2X1jhh8RP6TeZ1-TeAPWIvi2jw-P3F7FDn0ai3i0', 'active', 'active', 'DaTest', 'female', NULL, 'da@yopmail.com', '$2y$10$i4s9G5o3O3osZbxN1LYWfuEU93GiZU/jCcN8Xt2gfvVoFXOsuIdfa', NULL, NULL, NULL, 367, 'https://biggestaskbackend.justcodenow.com/images/profile/16620562721.jpg', NULL, '2022-09-09 05:51:31', '2022-08-30 07:46:03'),
(229, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vparent@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 11:44:29', '2022-08-30 11:44:29'),
(230, NULL, 'active', 'inactive', NULL, NULL, NULL, 'parent@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:01:13', '2022-08-31 06:01:13'),
(231, NULL, 'active', 'active', 'Surrogate', 'female', NULL, 'surrogate@yopmail.com', '$2y$10$dq3is8xoGvNFP5eXVF1PW.66/.XygUgw8aRGBm9XxeCTFRiutzvDG', NULL, NULL, NULL, 370, NULL, NULL, '2022-08-31 06:23:50', '2022-08-31 06:02:09'),
(232, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:02:24', '2022-08-31 06:02:24'),
(233, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:03:43', '2022-08-31 06:03:43'),
(234, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:03:52', '2022-08-31 06:03:52'),
(235, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:06:21', '2022-08-31 06:06:21'),
(236, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:06:34', '2022-08-31 06:06:34'),
(237, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:07:03', '2022-08-31 06:07:03'),
(238, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:07:38', '2022-08-31 06:07:38'),
(239, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:07:45', '2022-08-31 06:07:45'),
(240, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:08:45', '2022-08-31 06:08:45'),
(241, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:09:06', '2022-08-31 06:09:06'),
(242, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:09:16', '2022-08-31 06:09:16'),
(243, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:09:24', '2022-08-31 06:09:24'),
(244, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:09:31', '2022-08-31 06:09:31'),
(245, NULL, 'active', 'inactive', NULL, NULL, NULL, 'surrogate@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:09:38', '2022-08-31 06:09:38'),
(246, NULL, 'active', 'inactive', NULL, NULL, NULL, 'dravid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:29:11', '2022-08-31 06:29:11'),
(247, NULL, 'active', 'inactive', NULL, NULL, NULL, 'dravid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:29:20', '2022-08-31 06:29:20'),
(248, NULL, 'active', 'inactive', NULL, NULL, NULL, 'dravid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:29:33', '2022-08-31 06:29:33'),
(249, NULL, 'active', 'inactive', NULL, NULL, NULL, 'meen@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:33:14', '2022-08-31 06:33:14'),
(250, NULL, 'active', 'active', 'Meena', 'female', NULL, 'meena@yopmail.com', '$2y$10$fS8Uq5UB.08IYxe0yxuQH.bNuEh629ExWIbXBc7PEGHwjRSXSgfrS', NULL, NULL, NULL, 391, NULL, NULL, '2022-08-31 06:36:44', '2022-08-31 06:33:24'),
(251, NULL, 'active', 'inactive', NULL, NULL, NULL, 'mohit@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:34:13', '2022-08-31 06:34:13'),
(252, NULL, 'active', 'inactive', NULL, NULL, NULL, 'advin@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:43:11', '2022-08-31 06:43:11'),
(253, 'enpF8FDgTOycXt0cnMvCfM:APA91bFeF-ZUo5qufqD2WbstrXWwEulm5ONOaQc6tlruBcb8OqM87aCoBdl-xEsi30XzGcyXVZ2w-f6C5Op2Ahq5oim4_TZNtd2GjJiSbKeVE_WdJG0ACfAnHMHg8eIm8iUcS-_-pzl4', 'active', 'active', 'Jennifer chandra', 'female', NULL, 'jennifer@yopmail.com', '$2y$10$M6ybIpY09tOUIa04KUtAKu8QEgxQmZEMz6iKkt23BtepJcilGYdt2', NULL, NULL, NULL, 392, 'https://biggestaskbackend.justcodenow.com/images/profile/16620895491.jpeg', NULL, '2022-10-14 13:20:26', '2022-08-31 06:43:53'),
(254, NULL, 'active', 'inactive', NULL, NULL, NULL, 'kabir@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31 06:51:21', '2022-08-31 06:51:21'),
(255, NULL, 'active', 'active', 'Preeti Dao', 'female', NULL, 'preeti@yopmail.com', '$2y$10$OTrF6J/dS6yx/PdzPr9VquOFTQMrICkw4oQqQfQXuVhYIKr9lQoH.', '2000/10/14', NULL, NULL, 394, 'https://biggestaskbackend.justcodenow.com/images/profile/16619319931.jpeg', NULL, '2022-08-31 09:18:50', '2022-08-31 06:51:50'),
(256, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vpp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 11:59:58', '2022-09-01 11:59:58'),
(257, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vpp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 12:00:45', '2022-09-01 12:00:45'),
(258, NULL, 'active', 'inactive', NULL, NULL, NULL, 'james@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-03 08:57:31', '2022-09-03 08:57:31'),
(259, NULL, 'active', 'active', 'Chloe decker', 'female', NULL, 'chloe@yopmail.com', '$2y$10$6CZ4W54nf8ScNMkIEGwvl.lolRcyZmJmyHmmPD/SGp9qXZvr6LSeG', NULL, NULL, NULL, 398, NULL, NULL, '2022-09-03 09:06:28', '2022-09-03 09:05:22'),
(260, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vvv@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-04 16:25:54', '2022-09-04 16:25:54'),
(261, NULL, 'inactive', 'active', 'v mother', 'female', '663333333', 'vmother@yopmail.com', '$2y$10$H9BcXCAXCHMbeSppGAA7Ou4UPoBrfV3t9sgMWr.dId1P7r8ktAk.G', '1998/09/08', 'aaa, jjjj, iiiiii, ppppp', NULL, NULL, 'https://biggestaskbackend.justcodenow.com/images/profile/16623100081.jpg', NULL, '2022-09-05 06:45:37', '2022-09-04 16:44:00'),
(262, NULL, 'active', 'inactive', NULL, NULL, NULL, 'yamin@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 10:23:29', '2022-09-06 10:23:29'),
(263, NULL, 'active', 'active', 'Puja', 'female', NULL, 'puja@yopmail.com', '$2y$10$ywwcLV8eAs61MVvfwGCF0OFNAT8VYrIEobIt6WYhlfxogPMGJ1pcO', NULL, NULL, NULL, 402, NULL, NULL, '2022-09-06 10:31:45', '2022-09-06 10:25:12'),
(264, NULL, 'active', 'inactive', NULL, NULL, NULL, 'aad@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 12:17:01', '2022-09-07 12:17:01'),
(265, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sam@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 05:21:51', '2022-09-08 05:21:51'),
(266, NULL, 'active', 'inactive', NULL, NULL, NULL, 'adj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 05:33:39', '2022-09-08 05:33:39'),
(267, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sam@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 05:35:40', '2022-09-08 05:35:40'),
(268, NULL, 'active', 'active', 'sonu', 'female', NULL, 'sonu@yopmail.com', '$2y$10$ef8sQUH9vcb1/JQI8ncdFeAPM03GqcLd0Eg7S9WgLeaCaXu.HZ21y', NULL, NULL, NULL, 405, 'https://biggestaskbackend.justcodenow.com/images/profile/16627062891.jpeg', NULL, '2022-09-13 10:08:40', '2022-09-08 05:40:00'),
(269, NULL, 'active', 'inactive', NULL, NULL, NULL, 'ns@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 04:36:02', '2022-09-09 04:36:02'),
(270, NULL, 'active', 'active', 'Seeta', 'female', NULL, 'seeta@yopmail.com', '$2y$10$rudmXeiDQLoZVlj.IHXcaemg5n84vzvTC89yeA99ddToq0anKRKJa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 05:06:02', '2022-09-09 05:00:01'),
(271, NULL, 'active', 'active', 'm', 'female', NULL, 'm@yopmail.com', '$2y$10$7CUItSvbAGZjdvZHc.wcY.cRdL1NGmjbvylpXXTLlApQ1KjkSS.h.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 05:17:15', '2022-09-09 05:13:00'),
(272, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sammy@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 05:27:20', '2022-09-09 05:27:20'),
(273, 'dFKVw87hQ4uK3R3Pkgvf70:APA91bFy7JPyAoFI0uoplrjYkapNRmVqnvU98adQbXRvdFssJk7nl8FROYxPYGkTczd6FQUm0sJtpSit32yaHIntgC3hy0QbKASqOquxc8JFdaJo-KUK1O5mt4jctpv_ll5phy1bBfyy', 'active', 'active', 'Yukti', 'female', NULL, 'yukti@yopmail.com', '$2y$10$6dTGtH1WMrDFycDXB4UwA.QqCXPWmRaITeeiSR2k1U7OhBzDauTQa', NULL, NULL, NULL, 412, 'https://biggestaskbackend.justcodenow.com/images/profile/16627059081.jpg', NULL, '2022-09-09 06:45:08', '2022-09-09 05:27:58'),
(274, NULL, 'active', 'inactive', NULL, NULL, NULL, 'testm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 07:19:22', '2022-09-09 07:19:22'),
(275, NULL, 'active', 'inactive', NULL, NULL, NULL, 'testp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 07:20:48', '2022-09-09 07:20:48'),
(276, NULL, 'active', 'inactive', NULL, NULL, NULL, 'testa@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 07:23:59', '2022-09-09 07:23:59'),
(277, NULL, 'active', 'active', 'Punam', 'female', NULL, 'punam@yopmail.com', '$2y$10$1ZTeGAC2KFBX1x.J7hi6vuopc8MytFBvY/wB7R3z8D0FWd.I7c7MC', NULL, NULL, NULL, 420, NULL, NULL, '2022-09-13 06:57:58', '2022-09-12 13:04:12'),
(278, NULL, 'active', 'inactive', NULL, NULL, NULL, 'reza@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 13:05:28', '2022-09-12 13:05:28'),
(279, NULL, 'active', 'inactive', NULL, NULL, NULL, 'nikhil@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 05:53:56', '2022-09-14 05:53:56'),
(280, 'ehmBuG5zRTWVV73y1WJbTz:APA91bFMwnTuGXQDOF_5rLh6Qi58OPAtvsmJGntoHA71-O-azNL3rXZe3lJLmGs27Od1Cjo5sulYq_59ESWVZO3FCmZwanB9c4Q7NMiThngGIBnlsQ3YhyuflW5Z9ne_I8pMtJEK2FDb', 'active', 'active', 'Reema Jain', 'female', NULL, 'reema@yopmail.com', '$2y$10$obJtfowtSnoGxuWAYotpW.2YAsy6jyLPlrlRMrBs7GpwWOnBbT3Jy', NULL, NULL, NULL, 421, 'https://biggestaskbackend.justcodenow.com/images/profile/16632491571.jpeg', NULL, '2022-09-22 17:30:36', '2022-09-14 05:55:09'),
(281, NULL, 'active', 'inactive', NULL, NULL, NULL, 'javin@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 06:04:32', '2022-09-14 06:04:32'),
(282, 'd8jlwH-dRoaQ-lQGvs0KJ0:APA91bHpxj1L7pWAyDgSNB_dzJkrw3YVEdI0XZjy7yN1rxzw4yGe3ieeDYpNNNkJIFDZvZ7rj9FJfET7LPLAlSQpwxXcOet_vE4T_OM5QDuctvOjOlH5acMlTuAsWaZHy_Jbs-loOHD9', 'active', 'active', 'Rupa', 'female', NULL, 'rupa@yopmail.com', '$2y$10$kLfPCNiOL8ZKRXvSzo1yvOG7Q1hleknjNFA4gsd8gLuky0ut7clm.', NULL, NULL, NULL, 426, 'https://biggestaskbackend.justcodenow.com/images/profile/16632465201.jpg', NULL, '2022-09-15 13:16:41', '2022-09-14 06:06:56'),
(283, NULL, 'active', 'inactive', NULL, NULL, NULL, 'dipesh@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 06:28:36', '2022-09-14 06:28:36'),
(284, NULL, 'active', 'inactive', NULL, NULL, NULL, 'stark@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 12:28:22', '2022-09-14 12:28:22'),
(285, NULL, 'active', 'active', 'Lopez Dao', 'female', NULL, 'lopez@yopmail.com', '$2y$10$CXWVSpn1fYOcs8.aA2pTwO3KuHui5BH90jXuQIutIsTepvCoGU5gy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 12:44:41', '2022-09-14 12:29:19'),
(286, NULL, 'active', 'inactive', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:11:13', '2022-09-15 11:11:13'),
(287, NULL, 'active', 'inactive', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:16:12', '2022-09-15 11:16:12'),
(288, NULL, 'active', 'inactive', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:22:59', '2022-09-15 11:22:59'),
(289, NULL, 'active', 'inactive', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:27:49', '2022-09-15 11:27:49'),
(290, NULL, 'active', 'inactive', NULL, NULL, NULL, 'viraj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:29:05', '2022-09-15 11:29:05'),
(291, NULL, 'active', 'inactive', NULL, NULL, NULL, 'vfdsd@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-15 11:30:48', '2022-09-15 11:30:48'),
(292, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 13:58:04', '2022-10-02 13:58:04'),
(293, NULL, 'active', 'active', 'Seema', 'female', NULL, 'ss@yopmail.com', '$2y$10$S9HntK2TYVkX2ldiXMBco.QpJyA7KTw5lepe88cTHHTjg/6H26oLS', NULL, NULL, NULL, 435, NULL, NULL, '2022-10-02 14:00:49', '2022-10-02 13:59:33'),
(294, NULL, 'active', 'inactive', NULL, NULL, NULL, 'hello@thebiggestask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 16:43:37', '2022-10-04 16:43:37'),
(295, NULL, 'active', 'inactive', NULL, NULL, NULL, 'hello@thebiggestask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 16:48:08', '2022-10-04 16:48:08'),
(296, NULL, 'active', 'inactive', NULL, NULL, NULL, 'hello@thebiggestask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 16:49:06', '2022-10-04 16:49:06'),
(297, NULL, 'active', 'active', 'MJ Surrogate', 'female', '3145235755', 'mjrcarnahan@gmail.com', '$2y$10$jxKz3iiENzx1JEOmgHFju.qUwuhUfQhk9AnaxhhsAgdy6/XNMF8my', '1985/08/25', '7470 kingsbury boulevard, saint louis mo', NULL, 437, 'https://biggestaskbackend.justcodenow.com/images/profile/16649043401.png', NULL, '2022-11-13 19:23:40', '2022-10-04 17:11:34'),
(298, NULL, 'active', 'inactive', NULL, NULL, NULL, 'xx@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 06:50:05', '2022-10-14 06:50:05'),
(299, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samy@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 14:54:38', '2022-10-14 14:54:38'),
(300, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 14:57:29', '2022-10-14 14:57:29'),
(301, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:00:08', '2022-10-14 15:00:08'),
(302, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:06:05', '2022-10-14 15:06:05'),
(303, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:06:40', '2022-10-14 15:06:40'),
(304, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:08:27', '2022-10-14 15:08:27'),
(305, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:09:04', '2022-10-14 15:09:04'),
(306, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:09:43', '2022-10-14 15:09:43'),
(307, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samm@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14 15:15:25', '2022-10-14 15:15:25'),
(308, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahil@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 06:03:44', '2022-10-18 06:03:44'),
(309, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 06:49:09', '2022-10-18 06:49:09'),
(310, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 06:59:10', '2022-10-18 06:59:10'),
(311, NULL, 'active', 'inactive', NULL, NULL, NULL, 'Sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:27:03', '2022-10-18 07:27:03'),
(312, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:28:16', '2022-10-18 07:28:16'),
(313, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:42:06', '2022-10-18 07:42:06'),
(314, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:52:42', '2022-10-18 07:52:42'),
(315, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:53:41', '2022-10-18 07:53:41'),
(316, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:56:21', '2022-10-18 07:56:21'),
(317, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 07:58:28', '2022-10-18 07:58:28'),
(318, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 08:06:29', '2022-10-18 08:06:29'),
(319, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 08:11:08', '2022-10-18 08:11:08'),
(320, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 08:11:37', '2022-10-18 08:11:37'),
(321, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 09:45:58', '2022-10-18 09:45:58'),
(322, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sahid@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 10:14:15', '2022-10-18 10:14:15'),
(323, NULL, 'active', 'inactive', NULL, NULL, NULL, 'soham@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 10:23:45', '2022-10-18 10:23:45'),
(324, NULL, 'active', 'inactive', NULL, NULL, NULL, 'mohan@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 10:27:50', '2022-10-18 10:27:50'),
(325, NULL, 'active', 'active', 'jain', NULL, NULL, 'jain@yopmail.com', '$2y$10$3G0YwyKLcTTu6rWa40iZReQ4gal1yrZmApMNe1KeFiwmAZFO/.NRO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-18 10:41:14', '2022-10-18 10:40:47'),
(326, 'f77ZVRt8Qa-XrPTLajDITf:APA91bE750EEwS677z_TffeNrT2lXqnwEkxfYWPA1T0Y-9HefGgD0iDISBASOlwrhk2j3C8wvK_B6mjFcGW-Rdc5jOLvpKrzUl_JOVOB-JEmUf7_dQkCHrsaLzJfNbazaqx3k8nOyo3w', 'active', 'active', 'asish', NULL, NULL, 'asish@yopmail.com', '$2y$10$XDLY6aeJhe1jhs3kLdL9de0E.9kDbOttgwz5J9y3l9cczex8abr/m', NULL, NULL, NULL, 453, NULL, NULL, '2022-10-18 11:29:36', '2022-10-18 10:44:19'),
(327, NULL, 'active', 'inactive', NULL, NULL, NULL, 'test@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:34:07', '2022-10-19 06:34:07'),
(328, NULL, 'active', 'active', 'Jinal', NULL, NULL, 'jinal@yopmail.com', '$2y$10$vbTbsAi16WKEgWnU856N6OQtjwR3DIYxqy52ffAzxN.vnf8.bXjm6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-29 13:43:49', '2022-10-19 06:38:30'),
(329, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:48:50', '2022-10-19 06:48:50'),
(330, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:50:37', '2022-10-19 06:50:37'),
(331, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:51:00', '2022-10-19 06:51:00'),
(332, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:52:21', '2022-10-19 06:52:21'),
(333, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:56:01', '2022-10-19 06:56:01'),
(334, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:58:11', '2022-10-19 06:58:11'),
(335, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 06:59:57', '2022-10-19 06:59:57'),
(336, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 07:03:08', '2022-10-19 07:03:08'),
(337, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 07:06:22', '2022-10-19 07:06:22'),
(338, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 07:09:05', '2022-10-19 07:09:05'),
(339, NULL, 'active', 'active', 'surrogate', NULL, NULL, 'tests@yopmail.com', '$2y$10$UHCuDQsT6T6ugdlCbOkMGOkmkP8bxF8fvg8OuhJ9iJCu0ofApHD3O', NULL, NULL, NULL, 471, NULL, NULL, '2022-10-19 08:51:37', '2022-10-19 08:40:48'),
(340, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 09:59:34', '2022-10-19 09:59:34'),
(341, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:00:34', '2022-10-19 10:00:34'),
(342, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:06:26', '2022-10-19 10:06:26'),
(343, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:44:24', '2022-10-19 10:44:24'),
(344, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:47:03', '2022-10-19 10:47:03'),
(345, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:49:09', '2022-10-19 10:49:09'),
(346, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 10:50:25', '2022-10-19 10:50:25'),
(347, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:22:05', '2022-10-19 12:22:05'),
(348, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:24:55', '2022-10-19 12:24:55'),
(349, NULL, 'active', 'inactive', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:24:56', '2022-10-19 12:24:56'),
(350, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:29:01', '2022-10-19 12:29:01'),
(351, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:32:26', '2022-10-19 12:32:26'),
(352, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:35:06', '2022-10-19 12:35:06'),
(353, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.xcom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:38:01', '2022-10-19 12:38:01'),
(354, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:40:45', '2022-10-19 12:40:45'),
(355, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:46:01', '2022-10-19 12:46:01'),
(356, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:49:56', '2022-10-19 12:49:56'),
(357, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinale@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 12:54:12', '2022-10-19 12:54:12'),
(358, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:04:20', '2022-10-19 13:04:20'),
(359, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:09:26', '2022-10-19 13:09:26'),
(360, NULL, 'active', 'inactive', NULL, NULL, NULL, 'janil@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:13:18', '2022-10-19 13:13:18'),
(361, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:17:22', '2022-10-19 13:17:22'),
(362, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:24:39', '2022-10-19 13:24:39'),
(363, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:28:39', '2022-10-19 13:28:39'),
(364, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:33:47', '2022-10-19 13:33:47'),
(365, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:40:03', '2022-10-19 13:40:03'),
(366, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:42:49', '2022-10-19 13:42:49'),
(367, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:46:37', '2022-10-19 13:46:37'),
(368, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 13:59:53', '2022-10-19 13:59:53'),
(369, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 14:00:21', '2022-10-19 14:00:21'),
(370, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jinal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 14:00:34', '2022-10-19 14:00:34'),
(371, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jina@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 14:17:10', '2022-10-19 14:17:10'),
(372, NULL, 'active', 'inactive', NULL, NULL, NULL, 'trisha@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 14:51:13', '2022-10-19 14:51:13'),
(373, NULL, 'active', 'inactive', NULL, NULL, NULL, 'samir@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 13:53:43', '2022-10-20 13:53:43'),
(374, NULL, 'active', 'active', 'Deepti', 'male', NULL, 'deepti@yopmail.com', '$2y$10$xS11xIF./jTJlwNCBK8tT.2P26psGgTlmG79xSPCpkT8iJXusF0uq', NULL, NULL, NULL, 518, NULL, NULL, '2022-11-16 05:17:10', '2022-10-20 13:58:36'),
(375, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 09:07:01', '2022-11-02 09:07:01'),
(376, NULL, 'active', 'active', 'ts', NULL, NULL, 'ts@yopmail.com', '$2y$10$aE3IPK1pVJsQ3CPPi5pIyukofWWZJV25pRzwcNaGiLTEWgCA0pcL6', NULL, NULL, NULL, 522, NULL, NULL, '2022-11-02 09:45:45', '2022-11-02 09:38:32'),
(377, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tpp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 09:45:01', '2022-11-02 09:45:01'),
(378, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jamin@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:33:01', '2022-11-03 06:33:01'),
(379, NULL, 'active', 'active', 'Yasha', NULL, NULL, 'yasha@yopmail.com', '$2y$10$gFXMsGT6.6IuFuhRuaWT4ejcKzECt5uxG0i.TUd28uXZ5YKM9FCvC', NULL, NULL, NULL, 523, NULL, NULL, '2022-11-14 08:33:03', '2022-11-03 06:36:33'),
(380, NULL, 'active', 'inactive', NULL, NULL, NULL, 'manan@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:48:44', '2022-11-03 06:48:44'),
(381, NULL, 'active', 'inactive', NULL, NULL, NULL, 'kd@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 07:05:07', '2022-11-03 07:05:07'),
(382, NULL, 'active', 'active', 'jiya', NULL, NULL, 'jiya@yopmail.com', '$2y$10$Os47bizw19GNV8NOhEpJFOv35Rj4x5opBnHaIJ9SUxfftI8oLYwyy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 07:54:20', '2022-11-03 07:51:16'),
(383, NULL, 'active', 'inactive', NULL, NULL, NULL, 'hp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-04 16:44:26', '2022-11-04 16:44:26'),
(384, NULL, 'active', 'inactive', NULL, NULL, NULL, 'abhinparent@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:57:59', '2022-11-14 04:57:59'),
(385, 'dspZ39bpT2Ot71N75r2NHo:APA91bFYld1Jdye3Hum9CiO3-DuctdNtiC5vHR20P23wMR-wm9iXxNfRHBnpSYO8qamUXZ7bwU8YAmoFHh-MSnMQV8l4OL7_HLdWZoijvxlTXPvgWgEx5wgVDVjOsiYYeqSsqtc7tJ8y', 'active', 'active', 'surrogate', NULL, NULL, 'surrogate11@yopmail.com', '$2y$10$bT2GuiQj75vJ1Llr1rooz.UDaqC0pkPWI9j4XMsKj.BIOAkn0NRNO', NULL, NULL, NULL, 529, NULL, NULL, '2022-11-14 13:16:14', '2022-11-14 05:34:44'),
(386, NULL, 'active', 'inactive', NULL, NULL, NULL, 'ttp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 10:22:32', '2022-11-14 10:22:32'),
(387, NULL, 'active', 'active', 'tsurrogarte', NULL, NULL, 'tts@yopmail.com', '$2y$10$CYUl/52NAM4harjTJ0WpHuQ/18BEd6qmfC/PxsIXlVNygD7wt.zxe', NULL, NULL, NULL, 532, NULL, NULL, '2022-11-14 13:14:27', '2022-11-14 12:38:30'),
(388, 'eWP_0-7dTzWI98mI-IWHMP:APA91bHZbdCt5-_Ks_Ce_qBow0k9uibJDqJP3S3ZiupPwI6ygQ64AKeXBoAne31mYg7E16gj-DM6kkb3yGbTiT1Cgs8C-R8V5xOEM1B9MoQEvZbsahSSgEHvMmB77iAkLK1vQsAzT7lk', 'active', 'active', 'sky', NULL, NULL, 'sky@yopmail.com', '$2y$10$WvJxtpZy7aHBdKiqMkkZ2.Qetqpd6XP7N3ocgmNZ.ZrBG6rL81ojO', NULL, NULL, NULL, 535, NULL, NULL, '2022-11-18 10:23:15', '2022-11-15 12:26:20'),
(389, NULL, 'active', 'inactive', NULL, NULL, NULL, 'skyt@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15 12:28:28', '2022-11-15 12:28:28'),
(390, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tpa@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:12:10', '2022-11-18 12:12:10'),
(391, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tps@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:12:33', '2022-11-18 12:12:33'),
(392, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tpss@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:13:05', '2022-11-18 12:13:05'),
(393, NULL, 'active', 'inactive', NULL, NULL, NULL, 'tsss@yomail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:13:57', '2022-11-18 12:13:57'),
(394, NULL, 'active', 'active', 'test', NULL, NULL, 'tss@yopmail.com', '$2y$10$fX7JGdJufrlza7Fccrl1uesuQwzPKxyHFuQYe5OUEsrvpd5E1hI.W', NULL, NULL, NULL, 536, NULL, NULL, '2022-11-18 12:45:46', '2022-11-18 12:14:10'),
(395, NULL, 'active', 'inactive', NULL, NULL, NULL, 'jp@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:31:01', '2022-11-18 12:31:01'),
(396, NULL, 'active', 'active', 'jinal', NULL, NULL, 'js@yopmail.com', '$2y$10$7LbJrkRtrgk47k7aRL6lP.aBLafSef3QG6tSWUm1/rU.ksyZ3RN0a', NULL, NULL, NULL, 541, NULL, NULL, '2022-11-18 12:34:15', '2022-11-18 12:32:12'),
(397, NULL, 'active', 'inactive', NULL, NULL, NULL, 'sj@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:45:56', '2022-11-18 12:45:56'),
(398, NULL, 'active', 'active', 'suja', NULL, NULL, 'pj@yopmail.com', '$2y$10$cFEp5dI9.v.4PKZN/IAJze7AHp7bZLOl0uRem1VNDP1xbsCCkzc1u', NULL, NULL, NULL, 543, NULL, NULL, '2022-11-18 12:48:35', '2022-11-18 12:47:03'),
(399, NULL, 'active', 'active', 'suja', NULL, NULL, 'suja@yopmail.com', '$2y$10$DJs5sFmWf9qc.cO7SBdlHuKeTHaRZARM.bYCmXi2CAdyMy0UJxhwO', NULL, NULL, NULL, 546, NULL, NULL, '2022-11-18 12:58:55', '2022-11-18 12:51:05'),
(400, NULL, 'active', 'inactive', NULL, NULL, NULL, 'seju@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 12:51:52', '2022-11-18 12:51:52'),
(401, NULL, 'active', 'active', 'mona', NULL, NULL, 'mona@yopmail.com', '$2y$10$37m6BFPtpBUEThWb36lE4.HhsKdSrw0FKMwg7icEh5eHtHf32Hyd.', NULL, NULL, NULL, 549, NULL, NULL, '2022-11-18 13:02:40', '2022-11-18 13:00:19'),
(402, NULL, 'active', 'inactive', NULL, NULL, NULL, 'mona@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 13:00:23', '2022-11-18 13:00:23'),
(403, NULL, 'active', 'inactive', NULL, NULL, NULL, 'karl@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 13:01:55', '2022-11-18 13:01:55'),
(404, 'fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH', 'active', 'active', 'pallavi', NULL, NULL, 'pp@yopmail.com', '$2y$10$R5TpHmtu365cJ/tk4nodEuqYwlfdnQDfLXxW0sVcb.MMuURB/N5fi', NULL, NULL, NULL, 551, NULL, NULL, '2022-11-18 13:07:47', '2022-11-18 13:06:00'),
(405, NULL, 'active', 'inactive', NULL, NULL, NULL, 'ps@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 13:06:47', '2022-11-18 13:06:47'),
(406, NULL, 'active', 'inactive', NULL, NULL, NULL, 'meetdev0003@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 04:41:54', '2022-11-24 04:41:54'),
(407, NULL, 'active', 'inactive', NULL, NULL, NULL, 'meetdev0001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30 09:40:37', '2022-11-30 09:40:37'),
(408, NULL, 'active', 'inactive', NULL, NULL, NULL, 'testing@youpmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-14 06:48:57', '2022-12-14 06:48:57'),
(409, NULL, 'active', 'inactive', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-14 06:50:00', '2022-12-14 06:50:00'),
(410, NULL, 'active', 'inactive', NULL, NULL, NULL, 'khushaldayala15409@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-14 06:55:15', '2022-12-14 06:55:15'),
(411, NULL, 'active', 'inactive', NULL, NULL, NULL, 'hello@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-14 07:08:10', '2022-12-14 07:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Month 1', '2022-09-21 05:19:11', '2022-04-27 11:18:47'),
(2, 'Month 2', '2022-09-21 05:19:18', '2022-05-08 22:56:46'),
(3, 'Month 3', '2022-09-21 05:19:23', '2022-04-27 11:18:57'),
(4, 'Month 4', '2022-09-21 05:19:31', '2022-04-27 06:22:31'),
(5, 'Month 5\r\n', '2022-09-21 05:19:41', '2022-05-09 05:00:01'),
(6, 'Month 6', '2022-09-21 05:19:51', '2022-05-09 05:00:01'),
(7, 'Month 7', '2022-09-21 05:20:40', '2022-05-09 05:00:15'),
(8, 'Month 8', '2022-09-21 05:20:49', '2022-05-09 05:00:15'),
(9, 'Month 9', '2022-09-21 05:20:59', '2022-05-09 05:00:34'),
(10, 'Month 10', '2022-09-21 05:21:10', '2022-05-09 05:00:34'),
(11, 'Month 11', '2022-09-21 05:21:19', '2022-05-09 05:00:46'),
(12, 'Month 12', '2022-09-21 05:23:49', '2022-05-09 05:00:46'),
(13, 'Month 12 + ', '2022-09-21 05:24:01', '2022-05-09 05:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `forum_link` text DEFAULT NULL,
  `insta_link` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `title`, `description`, `forum_link`, `insta_link`, `user_id`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'cg', 'gv', 'gb', 'gb', 184, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1660639563.jpg', '2022-08-16 00:46:03', '2022-08-16 00:46:03'),
(2, 'kjj', 'vvv', 'vvv', 'bjjv', 184, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1660645450.jpg', '2022-08-16 02:24:10', '2022-08-16 02:24:10'),
(3, 'df', 'f', 'sf', 'df', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1660800085.jpg', '2022-08-17 21:21:25', '2022-08-17 21:21:25'),
(4, 'df', 'g', 'd', 'hh', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1660806694.jpg', '2022-08-17 23:11:34', '2022-08-17 23:11:34'),
(5, 'community one', 'hey', 'hey', 'www.google.com', 347, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1661245373.jpg', '2022-08-23 01:02:53', '2022-08-23 01:02:53'),
(6, 'try', 'yr', 'yr', 'y', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661514674.jpg', '2022-08-26 03:51:14', '2022-08-26 03:51:14'),
(7, 'test', 'testing of desctioption', 'google.com', 'google.com', 2, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1661520730.jpg', '2022-08-26 05:32:10', '2022-08-26 05:32:10'),
(8, 'google', 'google', 'googleforam', 'google.com', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661522056.jpg', '2022-08-26 05:54:16', '2022-08-26 05:54:16'),
(9, 'insta', 'insta', 'insta', 'instagram.com', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661523141.jpg', '2022-08-26 06:12:21', '2022-08-26 06:12:21'),
(10, 'nasir khan insta', 'nasir khan', 'kkks', 'https://instagram.com/naseer_khan0054?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661523278.jpg', '2022-08-26 06:14:38', '2022-08-26 06:14:38'),
(11, 'shahid kapur insta', 'shahid insta', 'jjj', 'https://instagram.com/shahidkapoor?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661523573.jpg', '2022-08-26 06:19:33', '2022-08-26 06:19:33'),
(12, 'Sample', 'DAo', 'AA', '111', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1661608187.jpg', '2022-08-27 05:49:47', '2022-08-27 05:49:47'),
(13, 'n', 'h', 'b', 'https://instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661769315.jpg', '2022-08-29 02:35:15', '2022-08-29 02:35:15'),
(14, 'without https', 'h', 'g', 'n', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661770131.jpg', '2022-08-29 02:48:51', '2022-08-29 02:48:51'),
(15, 'b', 'h', 'b', 'https://instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661770283.jpg', '2022-08-29 02:51:23', '2022-08-29 02:51:23'),
(16, 'without https', 'v', 'v', 'instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661770325.jpg', '2022-08-29 02:52:05', '2022-08-29 02:52:05'),
(17, 'g', 'gf', 'v', 'https://instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661771454.jpg', '2022-08-29 03:10:54', '2022-08-29 03:10:54'),
(18, 'b', 'h', 'h', 'https://instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661840110.jpg', '2022-08-29 22:15:10', '2022-08-29 22:15:10'),
(19, 'jjaj', 'vhb', 'vbb', 'https://instagram.com/iamsrk?igshid=YmMyMTA2M2Y=', 205, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1661853464.jpg', '2022-08-30 01:57:44', '2022-08-30 01:57:44'),
(20, 'b', 'vb', 'b', 'hh', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662009170.jpg', '2022-08-31 21:12:50', '2022-08-31 21:12:50'),
(21, 'hvhc', 'jvj', 'vmv', 'https://instagram.com/kapilsharma?igshid=YmMyMTA2M2Y=', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662016767.jpg', '2022-08-31 23:19:27', '2022-08-31 23:19:27'),
(22, 'my agency', 'hey', 'hello', 'www.google.com', 400, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662309195.jpg', '2022-09-04 08:33:15', '2022-09-04 08:33:15'),
(23, 'bzbs', 'bsbd', 'ssszbzb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662353823.jpg', '2022-09-04 20:57:03', '2022-09-04 20:57:03'),
(24, 'v', 'v', 'b', 'https://google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662353986.jpg', '2022-09-04 20:59:46', '2022-09-04 20:59:46'),
(25, 'b', 'b', 'b', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662354654.jpg', '2022-09-04 21:10:54', '2022-09-04 21:10:54'),
(26, 'nn', 'bn', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662355027.jpg', '2022-09-04 21:17:07', '2022-09-04 21:17:07'),
(27, 'fdg', 'ghf', 'gh', 'www.google.com', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662355275.jpg', '2022-09-04 21:21:15', '2022-09-04 21:21:15'),
(28, 'bn', 'b. n', 'bkb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662356100.jpg', '2022-09-04 21:35:01', '2022-09-04 21:35:01'),
(29, 'hh', 'bh', 'vh', 'www.google.co', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662362199.jpg', '2022-09-04 23:16:39', '2022-09-04 23:16:39'),
(30, 'b', 'b', 'b', 'http://www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662362266.jpg', '2022-09-04 23:17:46', '2022-09-04 23:17:46'),
(31, 'b', 'n', 'n', 'ww.goo', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662362625.jpg', '2022-09-04 23:23:45', '2022-09-04 23:23:45'),
(32, 'b', 'b', 'b', 'https://google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662364131.jpg', '2022-09-04 23:48:51', '2022-09-04 23:48:51'),
(33, 'w', 'd', 's', 'ww.google.com', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662370863.jpg', '2022-09-05 01:41:03', '2022-09-05 01:41:03'),
(34, 'hkv', 'bb', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378022.jpg', '2022-09-05 03:40:22', '2022-09-05 03:40:22'),
(35, 'hkv', 'bb', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378023.jpg', '2022-09-05 03:40:23', '2022-09-05 03:40:23'),
(36, 'hkv', 'bb', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378025.jpg', '2022-09-05 03:40:25', '2022-09-05 03:40:25'),
(37, 'hkv', 'bb', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378025.jpg', '2022-09-05 03:40:25', '2022-09-05 03:40:25'),
(38, 'hkv', 'bb', 'bb', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378025.jpg', '2022-09-05 03:40:25', '2022-09-05 03:40:25'),
(39, 'g', 'h', 'j', 'www.google.com', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662378818.jpg', '2022-09-05 03:53:38', '2022-09-05 03:53:38'),
(40, 'j', 'b', 'b', 'w.google.con', 346, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1662379164.jpg', '2022-09-05 03:59:24', '2022-09-05 03:59:24'),
(41, 'f', 'f', 'd', 'https://google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662383930.jpg', '2022-09-05 05:18:50', '2022-09-05 05:18:50'),
(42, 'v', 'n', 'n', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662469471.jpg', '2022-09-06 05:04:31', '2022-09-06 05:04:31'),
(43, 'b', 'b', 'b', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662470225.jpg', '2022-09-06 05:17:05', '2022-09-06 05:17:05'),
(44, 'b', 'v', 'v', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662621865.jpg', '2022-09-07 23:24:25', '2022-09-07 23:24:25'),
(45, 'b', 'v', 'v', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662621868.jpg', '2022-09-07 23:24:28', '2022-09-07 23:24:28'),
(46, 'b', 'v', 'v', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662621868.jpg', '2022-09-07 23:24:28', '2022-09-07 23:24:28'),
(47, 'b', 'v', 'v', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662621869.jpg', '2022-09-07 23:24:29', '2022-09-07 23:24:29'),
(48, 'n', 'v', 'b', 'www.google.co', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662621985.jpg', '2022-09-07 23:26:25', '2022-09-07 23:26:25'),
(49, 'b', 't', 'y', 'www.go', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662622112.jpg', '2022-09-07 23:28:32', '2022-09-07 23:28:32'),
(50, 'hffh', 'bffhchc', 'bc', 'www.google.co', 273, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662701934.jpg', '2022-09-08 21:38:54', '2022-09-08 21:38:54'),
(51, 'vvv', 'c', 'c', 'www.instagram.com', 193, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1662706051.jpg', '2022-09-08 22:47:31', '2022-09-08 22:47:31'),
(52, 'test', 'testing of desctioption', 'google.com', 'google.com', 2, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1663059872.png', '2022-09-13 01:04:32', '2022-09-13 01:04:32'),
(53, 'yh', 'gh', 'bbnnnn', 'www.google.co', 409, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1663247523.jpg', '2022-09-15 05:12:03', '2022-09-15 05:12:03'),
(54, 'The Biggest Ask', 'Surrogacy Community', 'thebiggestask.com/forums/', 'instagram.com/thebiggestask', 297, 'surrogate', 'https://biggestaskbackend.justcodenow.com/images/community/1664912057.jpg', '2022-10-04 11:34:18', '2022-10-04 11:34:18'),
(55, 'test', NULL, NULL, NULL, 2, 'parent', NULL, '2022-10-14 03:19:57', '2022-10-14 03:19:57'),
(56, 'aa', NULL, NULL, NULL, 426, 'parent', NULL, '2022-10-14 03:20:22', '2022-10-14 03:20:22'),
(57, '12a', NULL, NULL, NULL, 426, 'parent', NULL, '2022-10-14 03:22:22', '2022-10-14 03:22:22'),
(58, 'The', 'ad', 'ad', 'ad', 253, 'surrogate', NULL, '2022-10-14 05:34:53', '2022-10-14 05:34:53'),
(59, 'hey', NULL, NULL, NULL, 471, 'parent', NULL, '2022-10-19 00:27:12', '2022-10-19 00:27:12'),
(60, 'happy', 'Jan holk', 'hmgvb', 'https://inst.com', 522, 'parent', 'https://biggestaskbackend.justcodenow.com/images/community/1667382948.jpeg', '2022-11-02 01:55:48', '2022-11-02 01:55:48'),
(61, 'Ad', NULL, NULL, NULL, 523, 'parent', NULL, '2022-11-02 23:42:19', '2022-11-02 23:42:19'),
(62, 'ghs', NULL, NULL, NULL, 523, 'parent', NULL, '2022-11-02 23:45:09', '2022-11-02 23:45:09'),
(63, 'test', 'test hello', 'vwjzvqugziwhziwhziv', 'https://www.google.com/search?q=s20fe+5g&client=ms-android-samsung&sa=X&biw=412&bih=652&tbm=shop&sxsrf=ALiCzsbXBYHybcIwK0U2OZ6Iwn4JgdFKpg%3A1668262866161&ei=0qtvY9SQCZmS4-EP4fqg2AU&oq=s20fe&gs_lcp=Cg5tb2JpbGUtc2gtc2VycBABGAEyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATIFCAAQgAQyCwgAEIAEELEDEIMBMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDoNCAAQsQMQgwEQsAMQQzoHCAAQsAMQQzoICAAQgAQQsAM6DggAEIAEELEDEIMBELADOgcIIxDqAhAnOgsIABCPARCPARDqAjoECCMQJzoECAAQQ0oECEEYAVDaFljSJWD7MWgDcAB4AIABygGIAYYHkgEFMC40LjGYAQCgAQGqARJtb2JpbGUtc2gtd2l6LXNlcnCwAQzIAQjAAQE&sclient=mobile-sh-serp', 388, 'surrogate', NULL, '2022-11-18 02:40:13', '2022-11-18 02:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `agency_name` text DEFAULT NULL,
  `agency_email` text DEFAULT NULL,
  `agency_number` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `agency_name`, `agency_email`, `agency_number`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Fertility Doctor', 'tes nass', 'ffcv@bbbb.com', '123558045', 437, 'parent', '2022-11-28 22:53:00', '2022-11-28 22:53:00'),
(2, 'Agency Case Manager', 'ccf', 'fff@hgh.com', '555555555', 437, 'parent', '2022-11-29 05:29:34', '2022-11-29 05:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `introscreen_infos`
--

CREATE TABLE `introscreen_infos` (
  `id` int(11) NOT NULL,
  `info_type` varchar(255) NOT NULL,
  `screen` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `info` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `introscreen_infos`
--

INSERT INTO `introscreen_infos` (`id`, `info_type`, `screen`, `title`, `info`, `created_at`, `updated_at`) VALUES
(16, 'intro_screen', 2, 'Get notified about  upcoming appointments', 'Enter, share and receive important dates and information about upcoming surrogacy appointments', '2022-07-17 20:37:34', '2022-10-19 23:06:36'),
(17, 'intro_screen', 3, 'Get to know your surrogacy journey partner', 'As the journey unfolds, answer important and personal questions about yourself which will then be shared with your surrogacy partner to help establish a meaningful, special bond.', '2022-07-17 20:37:47', '2022-10-19 23:06:28'),
(18, 'intro_screen', 4, 'Join a community', 'Either through The Biggest Ask community or through your agency\'s community, stay connected and ask our members any questions you have about the journey.', '2022-07-17 20:38:01', '2022-10-19 23:06:20'),
(26, 'about_app', NULL, 'About BiggestAsk App', 'A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed. This marks the start of what we know now as a \"Privacy Policy.\" While the name \"Privacy Policy\" refers to the legal agreement.', '2022-08-24 03:48:59', '2022-08-25 02:01:56'),
(27, 'terms_of_service', NULL, 'Terms', 'A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed.', '2022-08-24 03:49:24', '2022-08-25 02:04:15'),
(30, 'intro_screen', 1, 'Welcome to The Biggest Ask App', 'One place to hold the contact information of your fertility clinic, surrogacy agency, surrogacy lawyer and/or ObGyn.', '2022-08-25 05:12:12', '2022-11-13 12:01:50'),
(41, 'privacy_policy', NULL, 'Privacy Policy', 'A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed. This marks the start of what we know now as a \"Privacy Policy.\" While the name \"Privacy Policy\" refers to the legal agreement.o', '2022-08-25 00:40:11', '2022-12-20 02:43:49'),
(44, 'question_bank', NULL, NULL, 'Get to know your surrogacy partner as the journey unfolds. The app will send you and your surrogacy partner questions and exchange the answers. As the journey progresses, the questions become more interesting and intimate, so that you bond naturally with each other. Select how often you’d like to answer a question', '2022-08-25 02:01:07', '2022-11-02 00:59:22'),
(45, 'about_app', NULL, 'More information', 'You can find more information about us', '2022-08-25 02:02:24', '2022-08-25 02:02:24'),
(46, 'terms_of_service', NULL, 'Service', 'A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed.', '2022-08-25 02:05:20', '2022-08-25 02:05:20'),
(47, 'privacy_policy', NULL, NULL, 'A Privacy Policy is a legal statement that specifies what the business owner does with the personal data collected from users, along with how the data is processed.', '2022-08-25 02:07:52', '2022-08-25 02:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `milestone` text NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `milestone`, `user_type`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Medical Clearance Exam', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', '2022-08-08 07:06:45', '2022-07-25 02:14:22'),
(2, 'Embryo Transfer Day', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', '2022-08-08 07:06:53', '2022-07-19 01:23:51'),
(3, 'Beta Test #1', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', '2022-08-08 07:07:00', '2022-05-04 06:14:43'),
(4, 'Beta Test #2', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', '2022-08-08 07:07:05', '2022-05-04 06:14:43'),
(5, 'Heartbeat confirmation', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', '2022-08-08 07:07:11', '2022-06-17 05:11:50'),
(6, 'Medical Clearance Exam', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', '2022-08-08 07:07:17', '2022-07-25 02:48:50'),
(7, 'Anatomy Scan', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', '2022-08-08 07:07:22', '2022-05-04 06:15:25'),
(8, 'Medical Clearance Exam', 'common', 0, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', '2022-08-08 07:07:31', '2022-07-25 02:52:14'),
(25, 'todays latest added?', 'parent', 1, '', '2022-07-19 04:24:03', '2022-07-19 04:24:03'),
(27, 'todays latest added?', 'parent', 1, '', '2022-07-19 04:46:59', '2022-07-19 04:46:59'),
(28, 'todays latest added?', 'parent', 1, '', '2022-07-19 04:47:15', '2022-07-19 04:47:15'),
(29, 'todays latest added?', 'parent', 1, '', '2022-07-19 04:47:23', '2022-07-19 04:47:23'),
(49, 'jj', 'parent', 203, '', '2022-07-21 00:18:51', '2022-07-21 00:18:51'),
(50, 'demoww', 'parent', 204, '', '2022-07-21 08:38:41', '2022-07-21 00:38:41'),
(53, 'gg milestone 45', 'parent', 215, '', '2022-07-21 13:36:49', '2022-07-21 05:36:49'),
(54, 'test', 'surrogate', 76, '', '2022-07-21 23:23:07', '2022-07-21 23:23:07'),
(55, 'todays latest added?', 'surrogate', 86, '', '2022-07-22 01:37:56', '2022-07-22 01:37:56'),
(56, 'todays latest added?', 'surrogate', 86, '', '2022-07-22 01:39:16', '2022-07-22 01:39:16'),
(57, 'todays latest added?', 'surrogate', 86, '', '2022-07-22 01:40:39', '2022-07-22 01:40:39'),
(58, 'hello', 'parent', 239, '', '2022-07-26 01:53:22', '2022-07-26 01:53:22'),
(59, 'd', 'parent', 239, '', '2022-07-26 03:03:01', '2022-07-26 03:03:01'),
(60, 'k', 'parent', 239, '', '2022-07-26 03:03:13', '2022-07-26 03:03:13'),
(61, 'g', 'parent', 239, '', '2022-07-26 03:06:20', '2022-07-26 03:06:20'),
(62, 'Beta test #1', 'parent', 239, '', '2022-07-26 20:47:17', '2022-07-26 20:47:17'),
(63, 'beta test.', 'parent', 302, NULL, '2022-08-02 05:27:39', '2022-08-02 05:27:39'),
(64, 'todays latest added?', 'parent', 2, NULL, '2022-08-02 20:51:44', '2022-08-02 20:51:44'),
(65, 'Testing', 'surrogate', 168, NULL, '2022-08-02 21:08:48', '2022-08-02 21:08:48'),
(66, 'parent m', 'parent', 289, NULL, '2022-08-03 00:53:51', '2022-08-03 00:53:51'),
(67, 'mother m', 'surrogate', 156, NULL, '2022-08-03 00:54:29', '2022-08-03 00:54:29'),
(68, 'surrogate here', 'surrogate', 174, NULL, '2022-08-04 01:37:18', '2022-08-04 01:37:18'),
(69, 'parent here', 'parent', 310, NULL, '2022-08-04 01:37:44', '2022-08-04 01:37:44'),
(70, 'beta test 1', 'parent', 302, NULL, '2022-08-04 09:21:44', '2022-08-04 09:21:44'),
(71, 'shared with parent', 'surrogate', 156, NULL, '2022-08-04 21:52:32', '2022-08-04 21:52:32'),
(72, 'todays latest added?', 'surrogate', 86, NULL, '2022-08-04 22:03:01', '2022-08-04 22:03:01'),
(73, 'todays latest added?', 'surrogate', 86, NULL, '2022-08-04 22:03:25', '2022-08-04 22:03:25'),
(74, 'todays latest added?', 'parent', 86, NULL, '2022-08-04 22:03:54', '2022-08-04 22:03:54'),
(75, 'todays latest added?', 'parent', 2, NULL, '2022-08-04 22:04:03', '2022-08-04 22:04:03'),
(76, 'todays latest added? latest milestone', 'surrogate', 156, NULL, '2022-08-04 22:06:53', '2022-08-04 22:06:53'),
(77, 'hey parent', 'surrogate', 156, NULL, '2022-08-04 22:09:54', '2022-08-04 22:09:54'),
(78, 'New Milestone', 'surrogate', 171, NULL, '2022-08-05 01:08:43', '2022-08-05 01:08:43'),
(79, 'beta test 0', 'parent', 307, NULL, '2022-08-05 02:53:41', '2022-08-05 02:53:41'),
(80, 'test', 'parent', 311, NULL, '2022-08-09 05:06:33', '2022-08-09 05:06:33'),
(81, 'Sample', 'parent', 337, NULL, '2022-08-21 08:16:43', '2022-08-21 08:16:43'),
(82, 'Beta test 1', 'parent', 346, NULL, '2022-08-27 05:47:27', '2022-08-27 05:47:27'),
(83, 'Beta test 2', 'parent', 398, NULL, '2022-09-05 21:11:01', '2022-09-05 21:11:01'),
(84, 'Beta test #0', 'surrogate', 253, NULL, '2022-09-06 22:02:40', '2022-09-06 22:02:40'),
(85, 'Beta test 01', 'surrogate', 253, NULL, '2022-09-06 22:06:16', '2022-09-06 22:06:16'),
(86, 'Sample test 1', 'surrogate', 253, NULL, '2022-09-06 22:09:36', '2022-09-06 22:09:36'),
(87, 'Beta test 1', 'parent', 405, NULL, '2022-09-07 21:46:36', '2022-09-07 21:46:36'),
(88, 'beta test 1', 'surrogate', 268, NULL, '2022-09-07 21:46:38', '2022-09-07 21:46:38'),
(89, 'Medical', 'surrogate', 193, NULL, '2022-09-09 02:43:01', '2022-09-09 02:43:01'),
(90, 'dumy milestone', 'surrogate', 193, NULL, '2022-09-09 02:54:42', '2022-09-09 02:54:42'),
(91, 'Dummy Milestone', 'surrogate', 193, NULL, '2022-09-09 02:57:56', '2022-09-09 02:57:56'),
(92, 'Dummy2', 'surrogate', 193, NULL, '2022-09-09 03:41:58', '2022-09-09 03:41:58'),
(93, 'Beta test1', 'parent', 405, NULL, '2022-09-09 04:03:20', '2022-09-09 04:03:20'),
(94, 'Beta test 11', 'surrogate', 268, NULL, '2022-09-09 04:18:12', '2022-09-09 04:18:12'),
(95, 'sdf', 'surrogate', 193, NULL, '2022-09-09 04:25:42', '2022-09-09 04:25:42'),
(96, 'rty', 'surrogate', 268, NULL, '2022-09-09 04:52:38', '2022-09-09 04:52:38'),
(97, 'dummy milestone', 'parent', 409, NULL, '2022-09-12 01:24:19', '2022-09-12 01:24:19'),
(98, 'dummy 2', 'parent', 409, NULL, '2022-09-12 01:27:34', '2022-09-12 01:27:34'),
(99, 'Sample test', 'parent', 367, NULL, '2022-09-12 03:56:12', '2022-09-12 03:56:12'),
(100, 'Sample', 'parent', 367, NULL, '2022-09-12 03:57:36', '2022-09-12 03:57:36'),
(101, 'Blood test', 'parent', 367, NULL, '2022-09-12 04:09:39', '2022-09-12 04:09:39'),
(102, 'dummy milestone', 'surrogate', 193, NULL, '2022-09-15 20:32:37', '2022-09-15 20:32:37'),
(103, 'Dummy2', 'parent', 409, NULL, '2022-09-15 21:04:36', '2022-09-15 21:04:36'),
(104, 'Dummy3', 'parent', 409, NULL, '2022-09-15 22:11:48', '2022-09-15 22:11:48'),
(105, 'Sample', 'surrogate', 205, NULL, '2022-11-02 03:07:14', '2022-11-02 03:07:14'),
(106, 'Ask', 'parent', 522, NULL, '2022-11-02 03:10:18', '2022-11-02 03:10:18'),
(107, 'test', 'surrogate', 388, NULL, '2022-11-18 02:44:02', '2022-11-18 02:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `milestone_users`
--

CREATE TABLE `milestone_users` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `parent_id` int(11) DEFAULT NULL,
  `surrogate_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `milestone_id` int(11) NOT NULL,
  `milestone_image` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `surrogate_note` text DEFAULT NULL,
  `share_note_with_partner_status` int(11) NOT NULL DEFAULT 0,
  `surrogate_share_note_with_biggestask_status` int(11) NOT NULL DEFAULT 0,
  `share_note_with_biggestask_status` int(11) NOT NULL DEFAULT 0,
  `parent_note` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `date_status` int(11) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milestone_users`
--

INSERT INTO `milestone_users` (`id`, `status`, `parent_id`, `surrogate_id`, `type`, `milestone_id`, `milestone_image`, `title`, `surrogate_note`, `share_note_with_partner_status`, `surrogate_share_note_with_biggestask_status`, `share_note_with_biggestask_status`, `parent_note`, `date`, `date_status`, `location`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1, 'active', 1, 2, 'common', 1, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(2, 'active', 1, 2, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(3, 'active', 1, 2, 'common', 3, '', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(4, 'active', 1, 2, 'common', 4, '', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(5, 'active', 1, 2, 'common', 5, '', 'Heartbeat confirmation', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(6, 'active', 1, 2, 'common', 6, '', 'First ObGyn Appointment', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(7, 'active', 1, 2, 'common', 7, '', 'Anatomy Scan', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(8, 'active', 1, 2, 'common', 8, '', 'Scheduled Delivery', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(19, 'active', 2, 1, 'common', 1, '', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(20, 'active', 2, 1, 'common', 2, '', 'Embryo Transfer Day', 'I’m really looking forward to being a part of Baby’s life as [she] grows.', 0, 0, 0, '', NULL, 1, '', '', '', '2022-10-20 11:17:56', '2022-10-19 08:00:06'),
(21, 'active', 2, 1, 'common', 3, '', 'Beta Test #1', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(22, 'active', 2, 1, 'common', 4, '', 'Beta Test #2', 'So many happy and wonder-filled times ahead ', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(23, 'active', 2, 1, 'common', 5, '', 'Heartbeat confirmation', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(24, 'active', 2, 1, 'common', 6, '', 'Medical Clearance Exam', 'We can’t wait to see the many ways God blesses you with this little one.', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(25, 'active', 2, 1, 'common', 7, '', 'Anatomy Scan', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(26, 'active', 2, 1, 'common', 8, '', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(52, 'active', 203, NULL, 'parent', 49, '', 'jj', NULL, 0, 0, 0, NULL, '2022/6/21', 1, 'jj', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(53, 'active', 204, NULL, 'parent', 50, '', 'demoww', NULL, 0, 0, 0, NULL, '2022/6/22', 1, 'Ahmedabad', '00000000002', '00005000505', '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(56, 'active', 215, NULL, 'parent', 53, '', 'gg milestone 45', NULL, 0, 0, 0, NULL, '2022/6/22', 1, 'Ahmedabad', '00000000002', '00005000505', '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(146, 'active', 225, 91, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-07-24 21:21:55'),
(147, 'active', 225, 91, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/5/22', 1, NULL, NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(148, 'active', 225, 91, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-07-24 21:21:55'),
(149, 'active', 225, 91, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-07-25 23:25:48'),
(150, 'active', 225, 91, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-07-24 21:21:55'),
(151, 'active', 225, 91, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'First ObGyn Appointment', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-07-24 21:21:55'),
(152, 'active', 225, 91, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-07-24 21:21:55'),
(153, 'active', 225, 91, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Scheduled Delivery', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-07-24 21:21:55'),
(162, 'active', 6, 3, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-07-24 22:36:12'),
(163, 'active', 6, 3, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, NULL, NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(164, 'active', 6, 3, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-07-24 22:36:12'),
(165, 'active', 6, 3, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-07-24 22:36:12'),
(166, 'active', 6, 3, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-07-24 22:36:12'),
(167, 'active', 6, 3, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'First ObGyn Appointment', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-07-24 22:36:12'),
(168, 'active', 6, 3, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-07-24 22:36:12'),
(169, 'active', 6, 3, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Scheduled Delivery', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-07-24 22:36:12'),
(170, 'inactive', 200, 7, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 1, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Titenium', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(171, 'inactive', 200, 7, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:14', '2022-07-26 01:25:54'),
(172, 'inactive', 200, 7, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-07-26 01:25:54'),
(173, 'inactive', 200, 7, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 1, 0, 0, NULL, '2022/6/30', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(174, 'inactive', 200, 7, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, '2022/6/30', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(175, 'inactive', 200, 7, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-07-26 01:49:05'),
(176, 'inactive', 200, 7, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-07-26 03:01:34'),
(177, 'inactive', 200, 7, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-07-26 03:01:34'),
(255, 'active', 280, 145, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-07-31 20:58:50'),
(256, 'active', 280, 145, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/6/1', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(257, 'active', 280, 145, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-07-31 20:58:50'),
(258, 'active', 280, 145, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-07-31 20:58:50'),
(259, 'active', 280, 145, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-07-31 20:58:50'),
(260, 'active', 280, 145, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-07-31 20:58:50'),
(261, 'active', 280, 145, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-07-31 20:58:50'),
(262, 'active', 280, 145, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-07-31 20:58:50'),
(271, 'active', 284, 144, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-07-31 23:10:02'),
(272, 'active', 284, 144, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/7/1', 1, 'ahemdabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(273, 'active', 284, 144, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-07-31 23:10:02'),
(274, 'active', 284, 144, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-07-31 23:10:02'),
(275, 'active', 284, 144, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-07-31 23:10:02'),
(276, 'active', 284, 144, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-07-31 23:10:02'),
(277, 'active', 284, 144, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-07-31 23:10:02'),
(278, 'active', 284, 144, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-07-31 23:10:02'),
(287, 'active', 281, 151, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-01 02:33:12'),
(288, 'active', 281, 151, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/5/4', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(289, 'active', 281, 151, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-01 02:33:12'),
(290, 'active', 281, 151, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 02:33:12'),
(291, 'active', 281, 151, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 02:33:12'),
(292, 'active', 281, 151, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 02:33:12'),
(293, 'active', 281, 151, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 02:33:12'),
(294, 'active', 281, 151, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 02:33:12'),
(295, 'active', 288, 153, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'hey', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-01 04:51:00'),
(296, 'active', 288, 153, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/5/3', 1, 'Ahmd', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(297, 'active', 288, 153, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-01 04:47:38'),
(298, 'active', 288, 153, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 04:47:38'),
(299, 'active', 288, 153, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 04:47:38'),
(300, 'active', 288, 153, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 04:47:38'),
(301, 'active', 288, 153, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 04:47:38'),
(302, 'active', 288, 153, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 04:47:38'),
(303, 'active', 289, 156, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-01 05:12:25'),
(304, 'active', 289, 156, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'note no no', 0, 0, 1, 'hu ha', '2022/08/19', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(305, 'active', 289, 156, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/05/10', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(306, 'active', 289, 156, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', 'hey', 0, 0, 0, NULL, '2022/08/17', 0, 'h', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(307, 'active', 289, 156, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 05:12:25'),
(308, 'active', 289, 156, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 05:12:25'),
(309, 'active', 289, 156, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 05:12:25'),
(310, 'active', 289, 156, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 05:12:25'),
(311, 'active', 293, 157, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-01 05:19:55'),
(312, 'active', 293, 157, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/7/1', 1, 'a', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(313, 'active', 293, 157, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-01 05:19:55'),
(314, 'active', 293, 157, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 05:19:55'),
(315, 'active', 293, 157, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 05:19:55'),
(316, 'active', 293, 157, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 05:19:55'),
(317, 'active', 293, 157, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 05:19:55'),
(318, 'active', 293, 157, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 05:19:55'),
(319, 'active', 292, 161, 'common', 1, '', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(320, 'active', 292, 161, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 0, 'viraj here', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(321, 'active', 292, 161, 'common', 3, '', 'Beta Test #1', '', 0, 0, 0, 'hey', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(322, 'active', 292, 161, 'common', 4, '', 'Beta Test #2', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(323, 'active', 292, 161, 'common', 5, '', 'Heartbeat confirmation', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(324, 'active', 292, 161, 'common', 6, '', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(325, 'inactive', 292, 161, 'common', 7, '', 'Anatomy Scan', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(326, 'inactive', 292, 161, 'common', 8, '', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(327, 'active', 297, 162, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'Share note with IP', 1, 0, 0, NULL, '2022/6/5', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(328, 'active', 297, 162, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/6/21', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(329, 'active', 297, 162, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', 'test', 1, 0, 0, NULL, '2022/7/1', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(330, 'active', 297, 162, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 21:59:35'),
(331, 'active', 297, 162, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 05:43:16'),
(332, 'active', 297, 162, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 05:43:16'),
(333, 'active', 297, 162, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 05:43:16'),
(334, 'active', 297, 162, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 05:43:16'),
(335, 'active', 299, 166, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, 'Sample', NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-01 20:59:35'),
(336, 'active', 299, 166, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/6/20', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(337, 'active', 299, 166, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-01 20:53:36'),
(338, 'active', 299, 166, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 20:53:36'),
(339, 'active', 299, 166, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 20:53:36'),
(340, 'active', 299, 166, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 20:53:36'),
(341, 'active', 299, 166, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 20:53:36'),
(342, 'inactive', 299, 166, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 20:56:37'),
(343, 'active', 302, 168, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'Hello From Medical Clearance Exam From Surrogate', 1, 0, 0, NULL, '2022/7/4', 1, 'ahemdabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(344, 'active', 302, 168, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'Hello From Surrogate Mother', 0, 0, 1, 'hello', '2022/7/10', 1, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(345, 'active', 302, 168, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-01 23:07:12'),
(346, 'active', 302, 168, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-01 23:07:12'),
(347, 'active', 302, 168, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-01 23:07:12'),
(348, 'active', 302, 168, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-01 23:07:12'),
(349, 'active', 302, 168, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-01 23:07:12'),
(350, 'active', 302, 168, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-01 23:07:12'),
(351, 'active', 3, 17, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-02 02:40:45'),
(352, 'active', 3, 17, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:14', '2022-08-02 02:40:45'),
(353, 'active', 3, 17, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-02 02:40:45'),
(354, 'active', 3, 17, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-02 02:40:45'),
(355, 'active', 3, 17, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-02 02:40:45'),
(356, 'active', 3, 17, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-02 02:40:45'),
(357, 'active', 3, 17, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-02 02:40:45'),
(358, 'active', 3, 17, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-02 02:40:45'),
(359, 'active', 302, NULL, 'parent', 63, NULL, 'beta test.', NULL, 0, 0, 1, 'Hello', '2022/7/2', 1, 'titen', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(361, 'active', NULL, 168, 'surrogate', 65, NULL, 'Testing', NULL, 0, 0, 0, NULL, '2022/7/3', 1, 'Titenium', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(362, 'active', 289, NULL, 'parent', 66, NULL, 'parent m', NULL, 0, 0, 0, NULL, '2022/2/4', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(363, 'active', NULL, 156, 'surrogate', 67, NULL, 'mother m', NULL, 0, 0, 0, NULL, '2022/7/6', 1, 'gandhinagar', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(364, 'active', 305, 171, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'Shared notes with IP and BA', 1, 0, 1, 'test personal note, this is additional details', '2022/08/17', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(365, 'active', 305, 171, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'shared note', 1, 0, 0, NULL, '2022/08/12', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(366, 'active', 305, 171, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-03 03:09:19'),
(367, 'active', 305, 171, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-03 03:09:19'),
(368, 'active', 305, 171, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-03 03:09:19'),
(369, 'active', 305, 171, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-03 03:09:19'),
(370, 'active', 305, 171, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-03 03:09:19'),
(371, 'active', 305, 171, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-03 03:09:19'),
(372, 'active', 307, 173, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'hello', 1, 0, 1, 'hello from surrogate', NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-05 08:29:57'),
(373, 'active', 307, 173, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'hello', 1, 0, 1, 'Hello from parent Embro', '2022/7/25', 1, 'Titenium', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(374, 'active', 307, 173, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-04 00:49:47'),
(375, 'active', 307, 173, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-04 00:49:47'),
(376, 'active', 307, 173, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-04 00:49:47'),
(377, 'active', 307, 173, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-04 00:49:47'),
(378, 'active', 307, 173, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-04 00:49:47'),
(379, 'active', 307, 173, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', 'hello from surrogate', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-05 02:33:31'),
(380, 'active', 310, 174, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', 'hey', 1, 0, 1, 'no', NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:29', '2022-08-04 01:35:51'),
(381, 'active', 310, 174, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/5/2', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(382, 'active', 310, 174, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:28', '2022-08-04 01:21:54'),
(383, 'active', 310, 174, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:42', '2022-08-04 01:21:54'),
(384, 'active', 310, 174, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:55', '2022-08-04 01:21:54'),
(385, 'active', 310, 174, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:10', '2022-08-04 01:21:54'),
(386, 'active', 310, 174, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:26', '2022-08-04 01:21:54'),
(387, 'active', 310, 174, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:38', '2022-08-04 01:21:54'),
(388, 'active', NULL, 174, 'surrogate', 68, NULL, 'surrogate here', NULL, 0, 0, 0, NULL, '2022/7/14', 1, 'aaahmmm', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(389, 'active', 310, NULL, 'parent', 69, NULL, 'parent here', NULL, 0, 0, 1, 'hello ss', '2022/7/4', 1, 'aaaa', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(390, 'active', 302, NULL, 'parent', 70, NULL, 'beta test 1', NULL, 0, 0, 0, 'aaa', '2022/7/16', 1, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(391, 'active', NULL, 156, 'surrogate', 71, NULL, 'shared with parent', NULL, 0, 0, 0, NULL, '2022/7/5', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(392, 'active', NULL, 86, 'surrogate', 73, NULL, 'todays latest added?', NULL, 0, 0, 0, NULL, '2022/01/20', 0, NULL, NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(393, 'active', 289, 156, 'surrogate', 76, NULL, 'todays latest added? latest milestone', NULL, 0, 0, 0, NULL, '2022/01/20', 0, NULL, NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(394, 'active', 289, 156, 'surrogate', 77, NULL, 'hey parent', 'ggfdg', 0, 0, 0, NULL, '2022/2/12', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(395, 'active', 305, 171, 'surrogate', 78, NULL, 'New Milestone', NULL, 0, 0, 0, NULL, '2022/8/14', 1, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(396, 'active', 307, 173, 'parent', 79, NULL, 'beta test 0', NULL, 0, 0, 0, NULL, '2022/7/5', 1, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(397, 'active', 311, 23, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 1, 'I am  parent', '2022/10/01T18:38:00.000Z', 0, 'hcydyf', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(398, 'active', 311, 23, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/05/04', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(399, 'active', 311, 23, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(400, 'active', 311, 23, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(401, 'active', 311, 23, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(402, 'active', 311, 23, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(403, 'active', 311, 23, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(404, 'active', 311, 23, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(405, 'active', 311, 23, 'parent', 80, NULL, 'test', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'ghhjjjhyyuij', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(406, 'active', 321, 186, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(407, 'active', 321, 186, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Titenium', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(408, 'active', 321, 186, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(409, 'active', 321, 186, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(410, 'active', 321, 186, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(411, 'active', 321, 186, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(412, 'active', 321, 186, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(413, 'active', 321, 186, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(414, 'active', 327, 190, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', 'hello from surrogate', 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(415, 'active', 327, 190, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(416, 'active', 327, 190, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(417, 'active', 327, 190, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(418, 'active', 327, 190, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(419, 'active', 327, 190, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(420, 'active', 327, 190, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(421, 'active', 327, 190, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(422, 'active', 332, 191, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(423, 'active', 332, 191, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', '', 0, 0, 0, NULL, '2022/09/29T06:35:00.000Z', 0, 'ahm', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(424, 'active', 332, 191, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(425, 'active', 332, 191, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(426, 'active', 332, 191, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(427, 'active', 332, 191, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(428, 'active', 332, 191, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(429, 'active', 332, 191, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(430, 'active', 335, 196, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(431, 'active', 335, 196, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(432, 'active', 335, 196, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(433, 'active', 335, 196, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(434, 'active', 335, 196, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(435, 'active', 335, 196, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(436, 'active', 335, 196, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(437, 'active', 335, 196, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(438, 'active', 337, 198, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(439, 'active', 337, 198, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(440, 'active', 337, 198, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(441, 'active', 337, 198, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(442, 'active', 337, 198, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(443, 'active', 337, 198, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(444, 'active', 337, 198, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(445, 'active', 337, 198, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(446, 'active', 337, 198, 'parent', 81, NULL, 'Sample', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'ahemdabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(447, 'active', 342, 203, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/07/31T11:25:00.000Z', 0, 'a', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(448, 'active', 342, 203, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'India', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(449, 'active', 342, 203, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(450, 'active', 342, 203, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(451, 'active', 342, 203, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(452, 'active', 342, 203, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(453, 'active', 342, 203, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 23:04:55', '2022-08-21 23:04:55');
INSERT INTO `milestone_users` (`id`, `status`, `parent_id`, `surrogate_id`, `type`, `milestone_id`, `milestone_image`, `title`, `surrogate_note`, `share_note_with_partner_status`, `surrogate_share_note_with_biggestask_status`, `share_note_with_biggestask_status`, `parent_note`, `date`, `date_status`, `location`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(454, 'active', 342, 203, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(455, 'active', 341, 204, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(456, 'active', 341, 204, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(457, 'active', 341, 204, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(458, 'active', 341, 204, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(459, 'active', 341, 204, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(460, 'active', 341, 204, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(461, 'active', 341, 204, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(462, 'active', 341, 204, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(463, 'active', 346, 205, 'common', 1, '', 'Medical Clearance Exam', '', 0, 0, 1, 'Stay in touch with your surrogacy professional.', '2022/11/14T13:17:00.000Z', 0, 'a', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(464, 'active', 346, 205, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 1, 'hello', '2022/11/15T12:30:00.000Z', 0, 'a', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(465, 'active', 346, 205, 'common', 3, '', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(466, 'active', 346, 205, 'common', 4, '', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(467, 'active', 346, 205, 'common', 5, '', 'Heartbeat confirmation', '', 0, 0, 0, '', '2023/06/15T13:35:00.000Z', 1, 'A', '', '', '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(468, 'active', 346, 205, 'common', 6, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '2023/11/08T14:03:00.000Z', 1, 'a', '', '', '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(469, 'active', 346, 205, 'common', 7, '', 'Anatomy Scan', '', 0, 0, 0, '', '2023/12/01T14:42:00.000Z', 1, 'Ahmedabad', '', '', '2022-12-21 16:00:05', '2022-12-21 08:00:05'),
(470, 'active', 346, 205, 'common', 8, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(471, 'active', 347, 208, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(472, 'active', 347, 208, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(473, 'active', 347, 208, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(474, 'active', 347, 208, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(475, 'active', 347, 208, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(476, 'active', 347, 208, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(477, 'active', 347, 208, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(478, 'active', 347, 208, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(480, 'active', 367, 228, 'common', 1, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '2022/09/11T17:51:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(481, 'active', 367, 228, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 0, '', '2022/08/01T12:41:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(482, 'active', 367, 228, 'common', 3, '', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(483, 'active', 367, 228, 'common', 4, '', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(484, 'active', 367, 228, 'common', 5, '', 'Heartbeat confirmation', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(485, 'active', 367, 228, 'common', 6, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(486, 'active', 367, 228, 'common', 7, '', 'Anatomy Scan', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(487, 'active', 367, 228, 'common', 8, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(488, 'active', 370, 231, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(489, 'active', 370, 231, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, NULL, 0, 'Ahmedabad', NULL, NULL, '2022-10-20 11:21:54', '2022-10-19 08:00:06'),
(490, 'active', 370, 231, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(491, 'active', 370, 231, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(492, 'active', 370, 231, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(493, 'active', 370, 231, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(494, 'active', 370, 231, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(495, 'active', 370, 231, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(496, 'active', 391, 250, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(497, 'active', 391, 250, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/10/19T19:33:00.000Z', 0, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(498, 'active', 391, 250, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(499, 'active', 391, 250, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(500, 'active', 391, 250, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(501, 'active', 391, 250, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(502, 'active', 391, 250, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(503, 'active', 391, 250, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(504, 'active', 392, 253, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(505, 'active', 392, 253, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 0, '', '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(506, 'active', 392, 253, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmed', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(507, 'active', 392, 253, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(508, 'active', 392, 253, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(509, 'active', 392, 253, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(510, 'active', 392, 253, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(511, 'active', 392, 253, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(512, 'active', 394, 255, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(513, 'active', 394, 255, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(514, 'active', 394, 255, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(515, 'active', 394, 255, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(516, 'active', 394, 255, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(517, 'active', 394, 255, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(518, 'active', 394, 255, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(519, 'active', 394, 255, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(520, 'active', 398, 259, 'common', 1, '', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(521, 'active', 398, 259, 'common', 2, '', 'Embryo Transfer Day', NULL, 0, 0, 0, '', '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(522, 'active', 398, 259, 'common', 3, '', 'Beta Test #1', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(523, 'active', 398, 259, 'common', 4, '', 'Beta Test #2', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(524, 'active', 398, 259, 'common', 5, '', 'Heartbeat confirmation', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(525, 'active', 398, 259, 'common', 6, '', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(526, 'active', 398, 259, 'common', 7, '', 'Anatomy Scan', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(527, 'active', 398, 259, 'common', 8, '', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(529, 'active', 402, 263, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(530, 'active', 402, 263, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(531, 'active', 402, 263, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(532, 'active', 402, 263, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(533, 'active', 402, 263, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(534, 'active', 402, 263, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(535, 'active', 402, 263, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(536, 'active', 402, 263, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(537, 'active', 392, 253, 'surrogate', 84, NULL, 'Beta test #0', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'India', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(538, 'active', 392, 253, 'surrogate', 85, NULL, 'Beta test 01', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(539, 'active', 392, 253, 'surrogate', 86, NULL, 'Sample test 1', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahemdabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(540, 'active', 405, 268, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png', 'Medical Clearance Exam', '', 0, 0, 0, '', '2022/08/01T15:17:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(541, 'active', 405, 268, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', '', 0, 0, 0, '', '2022/08/17T18:17:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(542, 'active', 405, 268, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(543, 'active', 405, 268, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(544, 'active', 405, 268, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(545, 'active', 405, 268, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(546, 'active', 405, 268, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(547, 'active', 405, 268, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(550, 'active', 409, 193, 'common', 1, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(551, 'active', 409, 193, 'common', 2, '', 'Embryo Transfer Day', '', 0, 0, 0, 'yes please inform', '2022/09/12T02:10:00.000Z', 0, 'ahm', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(552, 'active', 409, 193, 'common', 3, '', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(553, 'active', 409, 193, 'common', 4, '', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(554, 'active', 409, 193, 'common', 5, '', 'Heartbeat confirmation', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(555, 'active', 409, 193, 'common', 6, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(556, 'active', 409, 193, 'common', 7, '', 'Anatomy Scan', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(557, 'active', 409, 193, 'common', 8, '', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(558, 'active', 412, 273, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(559, 'active', 412, 273, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(560, 'active', 412, 273, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(561, 'active', 412, 273, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(562, 'active', 412, 273, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(563, 'active', 412, 273, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(564, 'active', 412, 273, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(565, 'active', 412, 273, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(579, 'active', 420, 277, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(580, 'active', 420, 277, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/08/01T18:38:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(581, 'active', 420, 277, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(582, 'active', 420, 277, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(583, 'active', 420, 277, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(584, 'active', 420, 277, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(585, 'active', 420, 277, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(586, 'active', 420, 277, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(587, 'active', 421, 280, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '2022/09/15T15:12:00.000Z', 0, 'Ahmedabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(588, 'active', 421, 280, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, '', '2022/07/06T12:41:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(589, 'active', 421, 280, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, '', '2022/09/16T13:51:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(590, 'active', 421, 280, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(591, 'active', 421, 280, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(592, 'active', 421, 280, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(593, 'active', 421, 280, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(594, 'active', 421, 280, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(595, 'active', 426, 282, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(596, 'active', 426, 282, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, '', '2022/10/10T17:53:00.000Z', 0, 'Ahemdabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(597, 'active', 426, 282, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(598, 'active', 426, 282, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(599, 'active', 426, 282, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(600, 'active', 426, 282, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(601, 'active', 426, 282, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(602, 'active', 426, 282, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', 'Hiiiiiiiiiiii', 0, 1, 1, 'Helllllo', '2022/10/01T17:53:00.000Z', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(606, 'active', 435, 293, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(607, 'active', 435, 293, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/10/02T19:31:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(608, 'active', 435, 293, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(609, 'active', 435, 293, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(610, 'active', 435, 293, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(611, 'active', 435, 293, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(612, 'active', 435, 293, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(613, 'active', 435, 293, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(614, 'active', 437, 297, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/08/08T14:40:00.000Z', 0, 'fertility clinic', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(615, 'active', 437, 297, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'Testing 123', 1, 0, 1, 'IP testing 123', '2022/10/04T14:30:00.000Z', 0, 'Mercy Hospital', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(616, 'active', 437, 297, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/11/14T11:47:00.000Z', 0, 'test', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(617, 'active', 437, 297, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:17:22', '2022-10-04 09:17:22'),
(618, 'active', 437, 297, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:17:22', '2022-10-04 09:17:22'),
(619, 'active', 437, 297, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:17:22', '2022-10-04 09:17:22'),
(620, 'active', 437, 297, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:17:22', '2022-10-04 09:17:22'),
(621, 'active', 437, 297, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 09:17:23', '2022-10-04 09:17:23'),
(622, 'active', 453, 326, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(623, 'active', 453, 326, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', '', 0, 0, 0, NULL, '2022/10/24T22:34:00.000Z', 0, 'Ahmedabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(624, 'active', 453, 326, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(625, 'active', 453, 326, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(626, 'active', 453, 326, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(627, 'active', 453, 326, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(628, 'active', 453, 326, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(629, 'active', 453, 326, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(630, 'active', 471, 339, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/10/20T14:20:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(631, 'active', 471, 339, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/10/22T14:23:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(632, 'active', 471, 339, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/10/27T15:00:00.000Z', 0, 'g', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(633, 'active', 471, 339, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 00:48:43', '2022-10-19 00:48:43'),
(634, 'active', 471, 339, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 00:48:43', '2022-10-19 00:48:43'),
(635, 'active', 471, 339, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 00:48:43', '2022-10-19 00:48:43'),
(636, 'active', 471, 339, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-19 00:48:43', '2022-10-19 00:48:43'),
(637, 'active', 471, 339, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20 06:51:28', '2022-10-19 00:48:43'),
(638, 'active', 518, 374, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(639, 'active', 518, 374, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', '', 0, 0, 0, NULL, '2022/12/13T12:25:00.000Z', 0, 'A', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(640, 'active', 518, 374, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(641, 'active', 518, 374, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(642, 'active', 518, 374, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(643, 'active', 518, 374, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(644, 'active', 518, 374, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(645, 'active', 518, 374, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(646, 'active', 522, 376, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/11/01T16:30:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(647, 'active', 522, 376, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(648, 'active', 522, 376, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(649, 'active', 522, 376, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(650, 'active', 522, 376, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(651, 'active', 522, 376, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(652, 'active', 522, 376, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(653, 'active', 522, 376, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/11/03T11:44:00.000Z', 0, 'a', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(654, 'active', 346, 205, 'surrogate', 105, NULL, 'Sample', '', 0, 0, 0, NULL, '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(655, 'active', 522, 376, 'parent', 106, NULL, 'Ask', NULL, 0, 0, 0, NULL, '2022/11/01T16:39:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(656, 'active', 523, 379, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(657, 'active', 523, 379, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(658, 'active', 523, 379, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(659, 'active', 523, 379, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(660, 'active', 523, 379, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, '', '2022/11/03T15:10:00.000Z', 0, 'Ahmedabad', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(661, 'active', 523, 379, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(662, 'active', 523, 379, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, '', '2022/11/04T15:11:00.000Z', 0, 'a', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(663, 'active', 523, 379, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(664, 'active', 529, 385, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/09/08T04:08:00.000Z', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(665, 'active', 529, 385, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/10/13T01:07:00.000Z', 0, 'ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(666, 'active', 529, 385, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/11/26T16:35:00.000Z', 0, 'test', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(667, 'active', 529, 385, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(668, 'active', 529, 385, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(669, 'active', 529, 385, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(670, 'active', 529, 385, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(671, 'active', 529, 385, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(672, 'active', 532, 387, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:39:36', '2022-11-14 04:39:36'),
(673, 'active', 532, 387, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/10/01T18:09:00.000Z', 0, 'Ahmedabad', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(674, 'active', 532, 387, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/11/11T18:25:00.000Z', 0, 'tet', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(675, 'active', 532, 387, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, '2022/11/18T18:26:00.000Z', 0, 'California', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(676, 'active', 532, 387, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:39:36', '2022-11-14 04:39:36'),
(677, 'active', 532, 387, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:39:36', '2022-11-14 04:39:36'),
(678, 'active', 532, 387, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:39:36', '2022-11-14 04:39:36'),
(679, 'active', 532, 387, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 04:39:36', '2022-11-14 04:39:36'),
(680, 'active', 535, 388, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(681, 'active', 535, 388, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', 'test for notes', 1, 1, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(682, 'active', 535, 388, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(683, 'active', 535, 388, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(684, 'active', 535, 388, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(685, 'active', 535, 388, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(686, 'active', 535, 388, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(687, 'active', 535, 388, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(688, 'active', 535, 388, 'surrogate', 107, NULL, 'test', '', 0, 0, 0, '', '', 0, '', '', '', '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(689, 'active', 536, 394, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, '2022/10/05T17:59:00.000Z', 0, 'ff', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(690, 'active', 536, 394, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/02T17:45:00.000Z', 0, 'aa', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(691, 'active', 536, 394, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, '2022/11/16T18:13:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(692, 'active', 536, 394, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(693, 'active', 536, 394, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(694, 'active', 536, 394, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(695, 'active', 536, 394, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(696, 'active', 536, 394, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(697, 'active', 541, 396, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(698, 'active', 541, 396, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/18T18:04:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06');
INSERT INTO `milestone_users` (`id`, `status`, `parent_id`, `surrogate_id`, `type`, `milestone_id`, `milestone_image`, `title`, `surrogate_note`, `share_note_with_partner_status`, `surrogate_share_note_with_biggestask_status`, `share_note_with_biggestask_status`, `parent_note`, `date`, `date_status`, `location`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(699, 'active', 541, 396, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(700, 'active', 541, 396, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(701, 'active', 541, 396, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(702, 'active', 541, 396, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(703, 'active', 541, 396, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(704, 'active', 541, 396, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(705, 'active', 543, 398, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(706, 'active', 543, 398, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/18T18:19:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(707, 'active', 543, 398, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(708, 'active', 543, 398, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(709, 'active', 543, 398, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(710, 'active', 543, 398, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(711, 'active', 543, 398, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(712, 'active', 543, 398, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(713, 'active', 546, 399, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(714, 'active', 546, 399, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/18T19:19:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(715, 'active', 546, 399, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(716, 'active', 546, 399, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(717, 'active', 546, 399, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(718, 'active', 546, 399, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(719, 'active', 546, 399, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(720, 'active', 546, 399, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(721, 'active', 549, 401, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(722, 'active', 549, 401, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/18T18:33:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(723, 'active', 549, 401, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(724, 'active', 549, 401, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(725, 'active', 549, 401, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(726, 'active', 549, 401, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(727, 'active', 549, 401, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(728, 'active', 549, 401, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(729, 'active', 551, 404, 'common', 1, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/1.png\r\n', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(730, 'active', 551, 404, 'common', 2, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/2.png', 'Embryo Transfer Day', NULL, 0, 0, 0, NULL, '2022/11/18T18:38:00.000Z', 0, 'A', NULL, NULL, '2022-12-21 16:00:06', '2022-12-21 08:00:06'),
(731, 'active', 551, 404, 'common', 3, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/3.png', 'Beta Test #1', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(732, 'active', 551, 404, 'common', 4, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/4.png', 'Beta Test #2', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(733, 'active', 551, 404, 'common', 5, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/5.png', 'Heartbeat confirmation', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(734, 'active', 551, 404, 'common', 6, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/6.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(735, 'active', 551, 404, 'common', 7, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/7.png', 'Anatomy Scan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(736, 'active', 551, 404, 'common', 8, 'https://biggestaskbackend.justcodenow.com/images/milestone_image/8.png', 'Medical Clearance Exam', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 05:07:47', '2022-11-18 05:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `milestone__images`
--

CREATE TABLE `milestone__images` (
  `id` int(11) NOT NULL,
  `milestone_user_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milestone__images`
--

INSERT INTO `milestone__images` (`id`, `milestone_user_id`, `image`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://biggestaskbackend.justcodenow.com/images/milestone16521825280.jpg', '', 0, '2022-07-22 11:22:45', '2022-05-10 03:35:28'),
(2, 1, '16521825281.jpg', '', 0, '2022-05-10 03:35:28', '2022-05-10 03:35:28'),
(3, 1, '16521825282.jpg', '', 0, '2022-05-10 03:35:28', '2022-05-10 03:35:28'),
(4, 1, '16521825283.jpg', '', 0, '2022-05-10 03:35:28', '2022-05-10 03:35:28'),
(5, 1, '16521825284.jpg', '', 0, '2022-05-10 03:35:28', '2022-05-10 03:35:28'),
(6, 1, '16521826020.jpg', '', 0, '2022-05-10 03:36:42', '2022-05-10 03:36:42'),
(7, 1, '16521826021.jpg', '', 0, '2022-05-10 03:36:42', '2022-05-10 03:36:42'),
(8, 1, '16521826022.jpg', '', 0, '2022-05-10 03:36:42', '2022-05-10 03:36:42'),
(9, 1, '16521826023.jpg', '', 0, '2022-05-10 03:36:42', '2022-05-10 03:36:42'),
(10, 1, '16521826024.jpg', '', 0, '2022-05-10 03:36:42', '2022-05-10 03:36:42'),
(11, 1, '16523472850.jpg', '', 0, '2022-05-12 01:21:25', '2022-05-12 01:21:25'),
(12, 1, '16523472851.jpg', '', 0, '2022-05-12 01:21:25', '2022-05-12 01:21:25'),
(13, 1, '16523472852.jpg', '', 0, '2022-05-12 01:21:25', '2022-05-12 01:21:25'),
(14, 1, '16523472853.jpg', '', 0, '2022-05-12 01:21:25', '2022-05-12 01:21:25'),
(15, 1, '16523472854.jpg', '', 0, '2022-05-12 01:21:25', '2022-05-12 01:21:25'),
(19, 4, 'https://biggestaskbackend.justcodenow.com/images/milestone/16552027460.jpg', 'parent', 2, '2022-07-22 11:23:30', '2022-06-14 02:32:26'),
(20, 4, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659518501.jpg', 'parent', 2, '2022-08-03 09:21:41', '2022-08-03 01:21:41'),
(22, 2, 'https://biggestaskbackend.justcodenow.com/images/milestone/16570019470.png', 'parent', 1, '2022-07-22 11:33:42', '2022-07-04 22:19:07'),
(23, 2, 'https://biggestaskbackend.justcodenow.com/images/milestone/16570019471.png', 'parent', 1, '2022-07-22 11:33:45', '2022-07-04 22:19:07'),
(24, 23, 'https://biggestaskbackend.justcodenow.com/images/milestone/1658831316.png', 'parent', 2, '2022-07-26 10:28:36', '2022-07-26 02:28:36'),
(25, 23, 'https://biggestaskbackend.justcodenow.com/images/milestone/16570024660.png', 'parent', 2, '2022-07-22 12:39:11', '2022-07-04 22:27:46'),
(26, 23, 'https://biggestaskbackend.justcodenow.com/images/milestone/16570024661.png', 'parent', 2, '2022-07-22 12:39:23', '2022-07-04 22:27:46'),
(28, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584736480.png', 'parent', 1, '2022-07-21 23:07:28', '2022-07-21 23:07:28'),
(29, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584736481.png', 'parent', 1, '2022-07-21 23:07:28', '2022-07-21 23:07:28'),
(30, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584736482.png', 'parent', 2, '2022-07-22 12:24:36', '2022-07-21 23:07:28'),
(31, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584737680.png', 'parent', 2, '2022-07-22 12:24:41', '2022-07-21 23:09:28'),
(32, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584737681.png', 'parent', 2, '2022-07-22 12:24:46', '2022-07-21 23:09:28'),
(33, 5, 'https://biggestaskbackend.justcodenow.com/images/profile/16584737682.png', 'parent', 2, '2022-07-22 12:24:51', '2022-07-21 23:09:28'),
(46, 149, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588203480.png', 'surrogate', 91, '2022-07-25 23:25:48', '2022-07-25 23:25:48'),
(47, 149, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588203481.png', 'surrogate', 91, '2022-07-25 23:25:48', '2022-07-25 23:25:48'),
(48, 149, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588203482.png', 'surrogate', 91, '2022-07-25 23:25:48', '2022-07-25 23:25:48'),
(49, 149, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588205070.png', 'surrogate', 91, '2022-07-25 23:28:27', '2022-07-25 23:28:27'),
(50, 2, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588206930.png', 'parent', 1, '2022-07-25 23:31:33', '2022-07-25 23:31:33'),
(51, 2, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588208940.png', 'parent', 1, '2022-07-25 23:34:54', '2022-07-25 23:34:54'),
(52, 2, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588208941.png', 'parent', 1, '2022-07-25 23:34:54', '2022-07-25 23:34:54'),
(64, 174, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588301350.jpg', 'parent', 239, '2022-07-26 02:08:55', '2022-07-26 02:08:55'),
(66, 174, 'https://biggestaskbackend.justcodenow.com/images/milestone/16588307900.jpg', 'parent', 239, '2022-07-26 02:19:50', '2022-07-26 02:19:50'),
(71, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/1658929461.jpg', 'parent', 239, '2022-07-27 13:44:21', '2022-07-27 05:44:21'),
(79, 1, 'https://biggestaskbackend.justcodenow.com/images/milestone/16589139460.png', 'parent', 239, '2022-07-27 01:25:46', '2022-07-27 01:25:46'),
(80, 1, 'https://biggestaskbackend.justcodenow.com/images/milestone/16589139461.png', 'parent', 239, '2022-07-27 01:25:46', '2022-07-27 01:25:46'),
(86, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/1658927039.jpg', 'parent', 239, '2022-07-27 13:03:59', '2022-07-27 05:03:59'),
(87, 173, 'https://biggestaskbackend.justcodenow.com/images/milestone/1658926386.jpg', 'parent', 239, '2022-07-27 12:53:06', '2022-07-27 04:53:06'),
(88, 173, 'https://biggestaskbackend.justcodenow.com/images/milestone/1658926298.jpg', 'parent', 239, '2022-07-27 12:51:38', '2022-07-27 04:51:38'),
(89, 215, 'https://biggestaskbackend.justcodenow.com/images/milestone/16589838530.jpg', 'surrogate', 124, '2022-07-27 20:50:53', '2022-07-27 20:50:53'),
(91, 173, 'https://biggestaskbackend.justcodenow.com/images/milestone/16590015170.jpg', 'surrogate', 107, '2022-07-28 01:45:17', '2022-07-28 01:45:17'),
(92, 247, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659071227.jpg', 'parent', 276, '2022-07-29 05:07:07', '2022-07-28 21:07:07'),
(93, 247, 'https://biggestaskbackend.justcodenow.com/images/milestone/16590712330.jpg', 'parent', 276, '2022-07-28 21:07:13', '2022-07-28 21:07:13'),
(94, 248, 'https://biggestaskbackend.justcodenow.com/images/milestone/16593343340.jpg', 'parent', 276, '2022-07-31 22:12:14', '2022-07-31 22:12:14'),
(95, 248, 'https://biggestaskbackend.justcodenow.com/images/milestone/16593343341.jpg', 'parent', 276, '2022-07-31 22:12:14', '2022-07-31 22:12:14'),
(96, 295, 'https://biggestaskbackend.justcodenow.com/images/milestone/16593582600.jpg', 'surrogate', 153, '2022-08-01 04:51:00', '2022-08-01 04:51:00'),
(99, 329, 'https://biggestaskbackend.justcodenow.com/images/milestone/16593621140.jpg', 'surrogate', 162, '2022-08-01 05:55:14', '2022-08-01 05:55:14'),
(100, 329, 'https://biggestaskbackend.justcodenow.com/images/milestone/16593621141.jpg', 'surrogate', 162, '2022-08-01 05:55:14', '2022-08-01 05:55:14'),
(101, 335, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594163750.jpg', 'parent', 299, '2022-08-01 20:59:35', '2022-08-01 20:59:35'),
(102, 335, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594163751.jpg', 'parent', 299, '2022-08-01 20:59:35', '2022-08-01 20:59:35'),
(103, 330, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594199740.jpg', 'surrogate', 162, '2022-08-01 21:59:35', '2022-08-01 21:59:35'),
(104, 330, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594199751.jpg', 'surrogate', 162, '2022-08-01 21:59:35', '2022-08-01 21:59:35'),
(105, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594211710.png', 'parent', 239, '2022-08-01 22:19:31', '2022-08-01 22:19:31'),
(106, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594211711.png', 'parent', 239, '2022-08-01 22:19:31', '2022-08-01 22:19:31'),
(107, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594211712.png', 'parent', 239, '2022-08-01 22:19:31', '2022-08-01 22:19:31'),
(108, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212170.png', 'surrogate', 239, '2022-08-01 22:20:17', '2022-08-01 22:20:17'),
(109, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212171.png', 'surrogate', 239, '2022-08-01 22:20:17', '2022-08-01 22:20:17'),
(110, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212172.png', 'surrogate', 239, '2022-08-01 22:20:17', '2022-08-01 22:20:17'),
(111, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212500.png', 'parent', 239, '2022-08-01 22:20:50', '2022-08-01 22:20:50'),
(112, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212501.png', 'parent', 239, '2022-08-01 22:20:50', '2022-08-01 22:20:50'),
(113, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594212502.png', 'parent', 239, '2022-08-01 22:20:50', '2022-08-01 22:20:50'),
(114, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594218880.png', 'parent', 200, '2022-08-01 22:31:29', '2022-08-01 22:31:29'),
(115, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594218891.png', 'parent', 200, '2022-08-01 22:31:29', '2022-08-01 22:31:29'),
(116, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594218892.png', 'parent', 200, '2022-08-01 22:31:29', '2022-08-01 22:31:29'),
(119, 321, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659520151.jpeg', 'parent', 292, '2022-08-03 09:49:11', '2022-08-03 01:49:11'),
(129, 344, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594382040.jpg', 'surrogate', 168, '2022-08-02 03:03:24', '2022-08-02 03:03:24'),
(130, 344, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594382400.jpg', 'surrogate', 168, '2022-08-02 03:04:00', '2022-08-02 03:04:00'),
(131, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594406750.png', 'parent', 200, '2022-08-02 03:44:35', '2022-08-02 03:44:35'),
(132, 344, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594417250.jpg', 'surrogate', 168, '2022-08-02 04:02:05', '2022-08-02 04:02:05'),
(133, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594426420.png', 'parent', 200, '2022-08-02 04:17:22', '2022-08-02 04:17:22'),
(134, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594426421.png', 'parent', 200, '2022-08-02 04:17:22', '2022-08-02 04:17:22'),
(135, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16594426422.png', 'parent', 200, '2022-08-02 04:17:22', '2022-08-02 04:17:22'),
(136, 312, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595044740.jpg', 'surrogate', 157, '2022-08-02 21:27:54', '2022-08-02 21:27:54'),
(137, 359, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595104460.jpg', 'parent', 302, '2022-08-02 23:07:26', '2022-08-02 23:07:26'),
(138, 359, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595104461.jpg', 'parent', 302, '2022-08-02 23:07:26', '2022-08-02 23:07:26'),
(139, 305, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595113760.jpeg', 'surrogate', 156, '2022-08-02 23:22:56', '2022-08-02 23:22:56'),
(140, 305, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659527692.webp', 'surrogate', 156, '2022-08-03 11:54:52', '2022-08-03 03:54:52'),
(142, 344, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659675674.jpg', 'surrogate', 168, '2022-08-05 05:01:14', '2022-08-04 21:01:14'),
(144, 359, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595163710.jpg', 'parent', 302, '2022-08-03 00:46:11', '2022-08-03 00:46:11'),
(145, 304, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595166910.jpg', 'surrogate', 156, '2022-08-03 00:51:31', '2022-08-03 00:51:31'),
(146, 304, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595166911.jpg', 'surrogate', 156, '2022-08-03 00:51:31', '2022-08-03 00:51:31'),
(147, 362, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659519636.jpg', 'parent', 289, '2022-08-03 09:40:36', '2022-08-03 01:40:36'),
(148, 362, 'https://biggestaskbackend.justcodenow.com/images/milestone/1659518815.jpg', 'parent', 289, '2022-08-03 09:26:55', '2022-08-03 01:26:55'),
(149, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595184330.png', 'parent', 200, '2022-08-03 01:20:33', '2022-08-03 01:20:33'),
(150, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595184331.png', 'parent', 200, '2022-08-03 01:20:33', '2022-08-03 01:20:33'),
(151, 170, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595184332.png', 'parent', 200, '2022-08-03 01:20:33', '2022-08-03 01:20:33'),
(155, 364, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595252901.jpg', 'surrogate', 171, '2022-08-03 03:14:50', '2022-08-03 03:14:50'),
(156, 364, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595252902.jpg', 'surrogate', 171, '2022-08-03 03:14:50', '2022-08-03 03:14:50'),
(157, 343, 'https://biggestaskbackend.justcodenow.com/images/milestone/16595921710.jpg', 'surrogate', 168, '2022-08-03 21:49:31', '2022-08-03 21:49:31'),
(158, 380, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596057960.jpg', 'surrogate', 174, '2022-08-04 01:36:36', '2022-08-04 01:36:36'),
(159, 389, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596058990.jpeg', 'parent', 310, '2022-08-04 01:38:19', '2022-08-04 01:38:19'),
(160, 389, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596058991.webp', 'parent', 310, '2022-08-04 01:38:19', '2022-08-04 01:38:19'),
(161, 389, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596058992.jpeg', 'parent', 310, '2022-08-04 01:38:19', '2022-08-04 01:38:19'),
(162, 359, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596336640.jpg', 'parent', 302, '2022-08-04 09:21:04', '2022-08-04 09:21:04'),
(163, 390, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596337420.jpg', 'parent', 302, '2022-08-04 09:22:22', '2022-08-04 09:22:22'),
(164, 344, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596756840.jpg', 'surrogate', 168, '2022-08-04 21:01:24', '2022-08-04 21:01:24'),
(165, 394, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596798420.jpeg', 'surrogate', 156, '2022-08-04 22:10:42', '2022-08-04 22:10:42'),
(166, 394, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596798421.jpeg', 'surrogate', 156, '2022-08-04 22:10:42', '2022-08-04 22:10:42'),
(167, 395, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596906310.jpg', 'surrogate', 171, '2022-08-05 01:10:31', '2022-08-05 01:10:31'),
(170, 379, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596955880.jpg', 'surrogate', 173, '2022-08-05 02:33:08', '2022-08-05 02:33:08'),
(171, 379, 'https://biggestaskbackend.justcodenow.com/images/milestone/16596955881.jpg', 'surrogate', 173, '2022-08-05 02:33:08', '2022-08-05 02:33:08'),
(175, 396, 'https://biggestaskbackend.justcodenow.com/images/milestone/16598088470.jpg', 'parent', 307, '2022-08-06 10:00:47', '2022-08-06 10:00:47'),
(176, 364, 'https://biggestaskbackend.justcodenow.com/images/milestone/16600522440.jpg', 'surrogate', 171, '2022-08-09 05:37:25', '2022-08-09 05:37:25'),
(177, 396, 'https://biggestaskbackend.justcodenow.com/images/milestone/16601602000.jpg', 'parent', 307, '2022-08-10 11:36:40', '2022-08-10 11:36:40'),
(178, 373, 'https://biggestaskbackend.justcodenow.com/images/milestone/16602321020.jpg', 'surrogate', 173, '2022-08-11 07:35:02', '2022-08-11 07:35:02'),
(179, 414, 'https://biggestaskbackend.justcodenow.com/images/milestone/16607162190.jpg', 'surrogate', 190, '2022-08-16 22:03:39', '2022-08-16 22:03:39'),
(180, 414, 'https://biggestaskbackend.justcodenow.com/images/milestone/16607162191.jpg', 'surrogate', 190, '2022-08-16 22:03:39', '2022-08-16 22:03:39'),
(181, 446, 'https://biggestaskbackend.justcodenow.com/images/milestone/16610986220.jpg', 'parent', 337, '2022-08-21 08:17:02', '2022-08-21 08:17:02'),
(189, 479, 'https://biggestaskbackend.justcodenow.com/images/milestone/16616081040.jpg', 'parent', 346, '2022-08-27 05:48:24', '2022-08-27 05:48:24'),
(199, 479, 'https://biggestaskbackend.justcodenow.com/images/milestone/16617589580.png', 'parent', 346, '2022-08-28 23:42:39', '2022-08-28 23:42:39'),
(200, 566, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627202640.jpg', 'surrogate', 193, '2022-09-09 02:44:24', '2022-09-09 02:44:24'),
(201, 566, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627202641.jpg', 'surrogate', 193, '2022-09-09 02:44:24', '2022-09-09 02:44:24'),
(202, 566, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627202642.jpg', 'surrogate', 193, '2022-09-09 02:44:24', '2022-09-09 02:44:24'),
(204, 567, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627208930.jpg', 'surrogate', 193, '2022-09-09 02:54:53', '2022-09-09 02:54:53'),
(205, 567, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627209020.jpg', 'surrogate', 193, '2022-09-09 02:55:02', '2022-09-09 02:55:02'),
(206, 568, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627211050.jpg', 'surrogate', 193, '2022-09-09 02:58:25', '2022-09-09 02:58:25'),
(207, 568, 'https://biggestaskbackend.justcodenow.com/images/milestone/16627211051.jpg', 'surrogate', 193, '2022-09-09 02:58:25', '2022-09-09 02:58:25'),
(226, 551, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633334990.jpg', 'surrogate', 193, '2022-09-16 05:05:00', '2022-09-16 05:05:00'),
(227, 552, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633335130.jpg', 'surrogate', 193, '2022-09-16 05:05:13', '2022-09-16 05:05:13'),
(228, 553, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633335280.jpg', 'surrogate', 193, '2022-09-16 05:05:28', '2022-09-16 05:05:28'),
(229, 554, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633335430.jpg', 'surrogate', 193, '2022-09-16 05:05:43', '2022-09-16 05:05:43'),
(230, 555, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633335670.jpg', 'surrogate', 193, '2022-09-16 05:06:07', '2022-09-16 05:06:07'),
(231, 556, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633335880.jpg', 'surrogate', 193, '2022-09-16 05:06:28', '2022-09-16 05:06:28'),
(232, 557, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633336020.jpg', 'surrogate', 193, '2022-09-16 05:06:42', '2022-09-16 05:06:42'),
(233, 603, 'https://biggestaskbackend.justcodenow.com/images/milestone/16633336150.jpg', 'surrogate', 193, '2022-09-16 05:06:55', '2022-09-16 05:06:55'),
(235, 623, 'https://biggestaskbackend.justcodenow.com/images/milestone/16662131100.png', 'surrogate', 326, '2022-10-19 12:58:30', '2022-10-19 12:58:30'),
(237, 623, 'https://biggestaskbackend.justcodenow.com/images/milestone/16662131112.png', 'surrogate', 326, '2022-10-19 12:58:31', '2022-10-19 12:58:31'),
(239, 672, 'https://biggestaskbackend.justcodenow.com/images/milestone/16684308990.jpeg', 'surrogate', 387, '2022-11-14 05:01:39', '2022-11-14 05:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL,
  `fcm_token` text NOT NULL,
  `date` date DEFAULT NULL,
  `title` text NOT NULL,
  `notification` text NOT NULL,
  `count` varchar(255) NOT NULL DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `user_id`, `milestone_id`, `fcm_token`, `date`, `title`, `notification`, `count`, `created_at`, `updated_at`) VALUES
(1, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:16:50', '2022-11-18 04:43:52'),
(2, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:17:10', '2022-11-18 04:43:52'),
(3, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:17:20', '2022-11-18 04:43:52'),
(4, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:17:49', '2022-11-18 04:43:52'),
(5, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:21:09', '2022-11-18 04:43:52'),
(6, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:21:20', '2022-11-18 04:43:52'),
(7, 'surrogate', 394, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'true', '2022-11-18 04:21:39', '2022-11-18 04:43:52'),
(8, 'surrogate', 394, 3, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Beta Test #1', 'Please, Add the next milestone date', 'true', '2022-11-18 04:30:25', '2022-11-18 04:43:52'),
(9, 'surrogate', 394, 4, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Beta Test #2', 'Please, Add the next milestone date', 'true', '2022-11-18 04:43:46', '2022-11-18 04:43:52'),
(10, 'surrogate', 404, 1, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'false', '2022-11-18 05:08:29', '2022-11-18 05:08:29'),
(11, 'surrogate', 399, 1, '[[null]]', '2022-11-18', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'false', '2022-11-18 05:50:01', '2022-11-18 05:50:01'),
(12, 'surrogate', 379, 7, '[[null]]', '2022-11-18', 'Anatomy Scan', 'How did the anatomy scan go? Do you know if baby is a boy or a girl?', 'false', '2022-11-18 08:00:10', '2022-11-18 08:00:10'),
(13, 'surrogate', 388, 7, '[[\"eWP_0-7dTzWI98mI-IWHMP:APA91bHZbdCt5-_Ks_Ce_qBow0k9uibJDqJP3S3ZiupPwI6ygQ64AKeXBoAne31mYg7E16gj-DM6kkb3yGbTiT1Cgs8C-R8V5xOEM1B9MoQEvZbsahSSgEHvMmB77iAkLK1vQsAzT7lk\"]]', '2022-11-18', 'Anatomy Scan', 'How did the anatomy scan go? Do you know if baby is a boy or a girl?', 'false', '2022-11-18 08:00:11', '2022-11-18 08:00:11'),
(14, 'surrogate', 388, 107, '[[\"eWP_0-7dTzWI98mI-IWHMP:APA91bHZbdCt5-_Ks_Ce_qBow0k9uibJDqJP3S3ZiupPwI6ygQ64AKeXBoAne31mYg7E16gj-DM6kkb3yGbTiT1Cgs8C-R8V5xOEM1B9MoQEvZbsahSSgEHvMmB77iAkLK1vQsAzT7lk\"]]', '2022-11-19', 'test', 'Please, Add the next milestone date', 'false', '2022-11-19 02:45:22', '2022-11-19 02:45:22'),
(15, 'surrogate', 387, 4, '[[null]]', '2022-11-19', 'Beta Test #2', 'How did the beta test go?', 'false', '2022-11-19 08:00:04', '2022-11-19 08:00:04'),
(16, 'surrogate', 396, 2, '[[null]]', '2022-11-19', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-19 08:00:05', '2022-11-19 08:00:05'),
(17, 'surrogate', 398, 2, '[[null]]', '2022-11-19', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-19 08:00:07', '2022-11-19 08:00:07'),
(18, 'surrogate', 399, 2, '[[null]]', '2022-11-19', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-19 08:00:07', '2022-11-19 08:00:07'),
(19, 'surrogate', 401, 2, '[[null]]', '2022-11-19', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-19 08:00:09', '2022-11-19 08:00:09'),
(20, 'surrogate', 404, 2, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-11-19', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-19 08:00:10', '2022-11-19 08:00:10'),
(21, 'surrogate', 396, 1, '[[null]]', '2022-11-23', 'Medical Clearance Exam', 'Please, Add the next milestone date', 'false', '2022-11-23 06:09:06', '2022-11-23 06:09:06'),
(22, 'surrogate', 297, 4, '[[null]]', '2022-11-24', 'Beta Test #2', 'Please, Add the next milestone date', 'false', '2022-11-23 20:38:42', '2022-11-23 20:38:42'),
(23, 'surrogate', 385, 3, '[[\"dspZ39bpT2Ot71N75r2NHo:APA91bFYld1Jdye3Hum9CiO3-DuctdNtiC5vHR20P23wMR-wm9iXxNfRHBnpSYO8qamUXZ7bwU8YAmoFHh-MSnMQV8l4OL7_HLdWZoijvxlTXPvgWgEx5wgVDVjOsiYYeqSsqtc7tJ8y\"]]', '2022-11-25', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-11-25 08:00:04', '2022-11-25 08:00:04'),
(24, 'surrogate', 387, 3, '[[null]]', '2022-11-25', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-11-25 08:00:05', '2022-11-25 08:00:05'),
(25, 'surrogate', 385, 3, '[[\"dspZ39bpT2Ot71N75r2NHo:APA91bFYld1Jdye3Hum9CiO3-DuctdNtiC5vHR20P23wMR-wm9iXxNfRHBnpSYO8qamUXZ7bwU8YAmoFHh-MSnMQV8l4OL7_HLdWZoijvxlTXPvgWgEx5wgVDVjOsiYYeqSsqtc7tJ8y\"]]', '2022-11-27', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-11-27 08:00:09', '2022-11-27 08:00:09'),
(26, 'surrogate', 205, 1, '[[null]]', '2022-11-28', 'Medical Clearance Exam', 'How did the medical clearance go?', 'false', '2022-11-28 08:00:07', '2022-11-28 08:00:07'),
(27, 'surrogate', 297, 3, '[[null]]', '2022-11-28', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-11-28 08:00:09', '2022-11-28 08:00:09'),
(28, 'surrogate', 205, 2, '[[\"safd\"]]', '2022-11-29', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-11-29 08:00:04', '2022-11-29 08:00:04'),
(29, 'surrogate', 394, 3, '[[null]]', '2022-11-30', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-11-30 08:00:08', '2022-11-30 08:00:08'),
(30, 'surrogate', 387, 4, '[[null]]', '2022-12-02', 'Beta Test #2', 'How did the beta test go?', 'false', '2022-12-02 08:00:09', '2022-12-02 08:00:09'),
(31, 'surrogate', 396, 2, '[[null]]', '2022-12-02', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-02 08:00:10', '2022-12-02 08:00:10'),
(32, 'surrogate', 398, 2, '[[null]]', '2022-12-02', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-02 08:00:11', '2022-12-02 08:00:11'),
(33, 'surrogate', 399, 2, '[[null]]', '2022-12-02', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-02 08:00:11', '2022-12-02 08:00:11'),
(34, 'surrogate', 401, 2, '[[null]]', '2022-12-02', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-02 08:00:12', '2022-12-02 08:00:12'),
(35, 'surrogate', 404, 2, '[[\"fKHJ1fNDSW2FTpoG0_epXb:APA91bE5Kefk3Lp4yc6A_hACADkbdIRxbA9lTGGRhB5Fe9j_1P3NntIB4rBzz1WXoGcTIqbqCx_a_RwEEHptgoMDcsc6Zs2BJmYCTyGxx_5tR8wozZnEM2IGv15wEqMfISKA6lwK-0PH\"]]', '2022-12-02', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-02 08:00:12', '2022-12-02 08:00:12'),
(36, 'surrogate', 385, 3, '[[\"dspZ39bpT2Ot71N75r2NHo:APA91bFYld1Jdye3Hum9CiO3-DuctdNtiC5vHR20P23wMR-wm9iXxNfRHBnpSYO8qamUXZ7bwU8YAmoFHh-MSnMQV8l4OL7_HLdWZoijvxlTXPvgWgEx5wgVDVjOsiYYeqSsqtc7tJ8y\"]]', '2022-12-10', 'Beta Test #1', 'How did the beta test go?', 'false', '2022-12-10 08:00:08', '2022-12-10 08:00:08'),
(37, 'surrogate', 374, 2, '[[null]]', '2022-12-12', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-12 08:00:20', '2022-12-12 08:00:20'),
(38, 'surrogate', 374, 2, '[[null]]', '2022-12-14', 'Embryo Transfer Day', 'Good luck on your transfer day tomorrow!', 'false', '2022-12-14 08:00:07', '2022-12-14 08:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `o_t_p_s`
--

CREATE TABLE `o_t_p_s` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `o_t_p_s`
--

INSERT INTO `o_t_p_s` (`id`, `otp`, `email`, `created_at`, `updated_at`) VALUES
(27, 1944, 'khushaldayala15409@gmail.com', '2022-12-14 06:55:15', '2022-12-13 22:55:15'),
(28, 6395, 'test@gmail.com', '2022-07-08 13:38:21', '2022-07-08 05:38:21'),
(29, 3459, 'rrrrr@justcodenow.com', '2022-07-02 03:56:33', '2022-07-02 03:56:33'),
(30, 8147, 'david@gmail.com', '2022-07-04 05:14:14', '2022-07-03 21:14:14'),
(35, 2122, 'memonandn14@gmail.com', '2022-07-04 05:03:39', '2022-07-04 05:03:39'),
(50, 5844, 'adn@g.com', '2022-07-06 05:23:31', '2022-07-05 21:23:31'),
(51, 6115, 'ad@h.com', '2022-07-05 04:20:28', '2022-07-05 04:20:28'),
(52, 4910, 'adnan@gmail.com', '2022-07-08 10:37:45', '2022-07-08 02:37:45'),
(53, 1407, 'apiuser@apiuser.com', '2022-07-05 13:34:24', '2022-07-05 05:34:24'),
(54, 5352, 'Adnan@g.com', '2022-07-05 21:07:24', '2022-07-05 21:07:24'),
(82, 5040, 'xx@m.c', '2022-07-07 22:32:05', '2022-07-07 22:32:05'),
(88, 6326, 'viraj11@yopmail.com', '2022-07-14 11:03:52', '2022-07-14 03:03:52'),
(90, 1500, 'test@gmail.co', '2022-07-08 05:39:33', '2022-07-08 05:39:33'),
(91, 7706, 'avhnnvv@gmail.com', '2022-07-09 10:43:12', '2022-07-09 10:43:12'),
(92, 6299, 'dkhushal@justcodenow.com', '2022-12-14 06:49:43', '2022-12-13 22:49:43'),
(93, 1194, 'testing@justcodenow.com', '2022-07-14 11:00:09', '2022-07-14 03:00:09'),
(97, 2446, 'vir@yopmail.com', '2022-07-14 04:43:24', '2022-07-14 04:43:24'),
(99, 8540, 'mehrarohan419@gmail.com', '2022-07-14 20:46:40', '2022-07-14 20:46:40'),
(109, 6487, 'dev99@Yopmail.com', '2022-07-21 04:59:05', '2022-07-21 04:59:05'),
(110, 6054, 'dev87@Yopmail.com', '2022-07-21 04:59:14', '2022-07-21 04:59:14'),
(111, 9818, 'dev88@Yopmail.com', '2022-07-21 04:59:46', '2022-07-21 04:59:46'),
(112, 5845, 'adnan@Yopmail.com', '2022-07-21 05:02:41', '2022-07-21 05:02:41'),
(113, 3029, 'dev81@Yopmail.com', '2022-07-21 05:11:24', '2022-07-21 05:11:24'),
(116, 9506, 'ss12@Yopmail.com', '2022-07-21 21:43:15', '2022-07-21 21:43:15'),
(118, 9255, 'vv@h.com', '2022-07-25 12:07:04', '2022-07-25 04:07:04'),
(119, 1040, 'v@m.c', '2022-07-21 22:35:51', '2022-07-21 22:35:51'),
(120, 5249, 'adnan@justcoden.c', '2022-07-21 22:43:50', '2022-07-21 22:43:50'),
(121, 6459, 'as@g.c', '2022-07-21 22:48:57', '2022-07-21 22:48:57'),
(122, 9019, 'a@g.c', '2022-07-25 12:31:06', '2022-07-25 04:31:06'),
(126, 2829, 'a@hm.c', '2022-07-23 03:04:06', '2022-07-23 03:04:06'),
(127, 5050, 'adnan@h.c', '2022-07-23 04:29:34', '2022-07-23 04:29:34'),
(128, 6011, 'ad@g.c', '2022-07-23 14:24:40', '2022-07-23 06:24:40'),
(129, 3316, 'adn@g.c', '2022-07-23 05:15:58', '2022-07-23 05:15:58'),
(132, 5337, 'v@h.com', '2022-07-25 04:08:30', '2022-07-25 04:08:30'),
(133, 7604, 'v@m.x', '2022-07-25 04:09:06', '2022-07-25 04:09:06'),
(134, 3952, 'v@m.com', '2022-07-25 12:09:55', '2022-07-25 04:09:55'),
(138, 9359, 'parent@ad.com', '2022-07-26 20:52:57', '2022-07-26 20:52:57'),
(139, 6707, 'foneroimaudi-6845@yopmail.com', '2022-07-26 20:55:46', '2022-07-26 20:55:46'),
(141, 5581, 'ad@parent.com', '2022-07-26 21:05:23', '2022-07-26 21:05:23'),
(142, 8028, 'ad@parent.yopmail.com', '2022-07-26 21:06:28', '2022-07-26 21:06:28'),
(149, 7970, 'memonadnan@gmail.com', '2022-07-28 05:59:11', '2022-07-27 21:59:11'),
(152, 6639, 'foneroimaudi-6845@gmail.com', '2022-07-28 02:20:54', '2022-07-28 02:20:54'),
(166, 4381, 'dkhussdfhal@justcodenow.com', '2022-07-31 21:09:56', '2022-07-31 21:09:56'),
(182, 7155, 'ss1@yopmail.com', '2022-08-01 05:43:43', '2022-08-01 05:43:43'),
(183, 7791, 'ap@yopmail.com', '2022-08-01 20:48:20', '2022-08-01 20:48:20'),
(197, 9186, 'henry@yopmail.com', '2022-08-09 08:33:35', '2022-08-09 00:33:35'),
(198, 5493, 'sm@yopmail.com', '2022-08-09 04:27:16', '2022-08-09 04:27:16'),
(202, 1582, 'test@mk.com', '2022-08-13 08:24:27', '2022-08-13 00:24:27'),
(203, 7455, 'zz@gmail.com', '2022-08-13 00:57:43', '2022-08-13 00:57:43'),
(206, 5041, 'zs@yopmail.com', '2022-08-16 08:42:33', '2022-08-16 00:42:33'),
(213, 7735, 'vp@yopmail.com', '2022-09-01 11:56:38', '2022-09-01 03:56:38'),
(217, 5239, 'ap@yompail.com', '2022-08-19 02:27:33', '2022-08-19 02:27:33'),
(222, 5293, 'apn@yompail.com', '2022-08-19 15:27:12', '2022-08-19 07:27:12'),
(224, 6766, 'aparent@yopmail.com', '2022-08-21 22:59:51', '2022-08-21 22:59:51'),
(253, 9950, 'meen@yopmail.com', '2022-08-30 22:33:14', '2022-08-30 22:33:14'),
(260, 3247, 'vp1@yopmail.com', '2022-09-01 03:57:49', '2022-09-01 03:57:49'),
(268, 8175, 'Ad@yopmail.com', '2022-09-07 04:16:57', '2022-09-07 04:16:57'),
(269, 3323, 'aad@yopmail.com', '2022-09-07 04:17:01', '2022-09-07 04:17:01'),
(271, 1648, 'adj@yopmail.com', '2022-09-07 21:33:39', '2022-09-07 21:33:39'),
(281, 6213, 'nsumara@justcodenow.com', '2022-09-12 01:10:57', '2022-09-12 01:10:57'),
(282, 2584, 'testm@yopmail.com', '2022-09-12 04:37:48', '2022-09-12 04:37:48'),
(283, 1186, 'puja@yopmail.com', '2022-09-12 05:04:01', '2022-09-12 05:04:01'),
(289, 9570, 'meena@yopmail.com', '2022-09-13 22:06:34', '2022-09-13 22:06:34'),
(294, 8194, 'viraj@yopmail.com', '2022-09-15 11:29:05', '2022-09-15 03:29:05'),
(295, 6615, 'vfdsd@yopmail.com', '2022-09-15 03:30:48', '2022-09-15 03:30:48'),
(301, 1100, 'hello@thebiggestask.com', '2022-11-23 18:47:45', '2022-11-23 10:47:45'),
(303, 9035, 'mjrcarnahan@gmail.com', '2022-10-04 12:11:15', '2022-10-04 12:11:15'),
(305, 1039, 'sammy@yopmail.com', '2022-10-14 14:51:49', '2022-10-14 06:51:49'),
(306, 5805, 'samy@yopmail.com', '2022-10-14 06:54:38', '2022-10-14 06:54:38'),
(307, 1506, 'sam@yopmail.com', '2022-10-14 15:08:23', '2022-10-14 07:08:23'),
(325, 4061, 'sahid@yopmail.com', '2022-10-18 02:23:20', '2022-10-18 02:23:20'),
(326, 4516, 'sahil@yopmail.com', '2022-10-18 02:23:25', '2022-10-18 02:23:25'),
(333, 9692, 'testa@yopmail.com', '2022-10-19 00:40:40', '2022-10-19 00:40:40'),
(335, 7704, 'jinal@yopmail.xcom', '2022-10-19 04:38:01', '2022-10-19 04:38:01'),
(336, 8985, 'jinale@yopmail.com', '2022-10-19 04:54:12', '2022-10-19 04:54:12'),
(337, 7789, 'janil@yopmail.com', '2022-10-19 05:13:18', '2022-10-19 05:13:18'),
(339, 3907, 'jinal@yopmail.com', '2022-10-19 06:16:59', '2022-10-19 06:16:59'),
(340, 2886, 'jina@yopmail.com', '2022-10-19 06:17:10', '2022-10-19 06:17:10'),
(349, 1391, 'jamin@yopmail.com', '2022-11-02 22:38:33', '2022-11-02 22:38:33'),
(355, 3761, 'surrogate@yopmail.com', '2022-11-13 21:34:36', '2022-11-13 21:34:36'),
(357, 7071, 'tp@yopmail.com', '2022-11-14 02:22:20', '2022-11-14 02:22:20'),
(363, 9173, 'tps@yomail.com', '2022-11-18 04:12:33', '2022-11-18 04:12:33'),
(364, 5543, 'tpss@yomail.com', '2022-11-18 04:13:05', '2022-11-18 04:13:05'),
(365, 1893, 'tsss@yomail.com', '2022-11-18 04:13:57', '2022-11-18 04:13:57'),
(375, 5727, 'zp@yopmail.com', '2022-11-18 05:05:54', '2022-11-18 05:05:54'),
(380, 4303, 'testing@youpmail.com', '2022-12-13 22:48:57', '2022-12-13 22:48:57'),
(381, 4040, 'hello@yopmail.com', '2022-12-13 23:08:10', '2022-12-13 23:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `parent__surrogates`
--

CREATE TABLE `parent__surrogates` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `surrogate_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parent__surrogates`
--

INSERT INTO `parent__surrogates` (`id`, `parent_id`, `surrogate_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-06-27 11:46:52', '2022-05-13 09:50:49'),
(2, 2, 1, '2022-06-27 11:46:57', '2022-05-13 09:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pregnancy__milestones`
--

CREATE TABLE `pregnancy__milestones` (
  `id` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pregnancy__milestones`
--

INSERT INTO `pregnancy__milestones` (`id`, `week`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Week four', 'The baby is the size of a peppercorn', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/1.png', '2022-06-03 09:59:07', '2022-06-03 09:59:07'),
(2, 5, 'Week five', 'The baby is the size of a pomegranate seed', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/2.png', '2022-06-03 10:00:22', '2022-06-03 10:00:22'),
(3, 6, 'Week six', 'The baby is the size of a sweet pea', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/3.png', '2022-06-03 10:01:30', '2022-06-03 10:01:30'),
(4, 7, 'Week seven', 'The baby is the size of a blueberry', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/4.png', '2022-06-03 10:02:26', '2022-06-03 10:02:26'),
(5, 8, 'Week eight', 'The baby is the size of a cherry', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/5.png', '2022-06-03 10:04:03', '2022-06-03 10:04:03'),
(6, 9, 'Week nine', 'The baby is the size of a olive', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/6.png', '2022-06-03 10:05:10', '2022-06-03 10:05:10'),
(7, 10, 'Week ten', 'The baby is the size of a kumquat', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/7.png', '2022-06-03 10:06:57', '2022-06-03 10:06:57'),
(8, 11, 'Week eleven', 'The baby is the size of a lime', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/8.png', '2022-06-03 10:08:50', '2022-06-03 10:08:50'),
(9, 12, 'Week twelve', 'The baby is the size of a plum', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/9.png', '2022-06-03 10:13:49', '2022-06-03 10:13:49'),
(10, 13, 'Week thirteen ', 'The baby is the size of a kiwi', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/10.png', '2022-06-03 10:15:14', '2022-06-03 10:15:14'),
(11, 14, 'Week fourteen', 'The baby is the size of a lemon', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/11.png', '2022-06-03 10:17:59', '2022-06-03 10:17:59'),
(12, 15, 'Week fifteen', 'The baby is the size of a peach', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/12.png', '2022-06-03 10:18:43', '2022-06-03 10:18:43'),
(13, 16, 'Week sixteen', 'The baby is the size of a apple', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/13.png\r\n', '2022-06-03 10:19:28', '2022-06-03 10:19:28'),
(14, 17, 'Week seventeen', 'The baby is the size of a avocado', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/14.png', '2022-06-03 10:20:29', '2022-06-03 10:20:29'),
(15, 18, 'Week eighteen', 'The baby is the size of a pear', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/15.png', '2022-06-03 10:21:33', '2022-06-03 10:21:33'),
(16, 19, 'Week nineteen', 'The baby is the size of a pomegranate', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/16.png', '2022-06-03 10:22:55', '2022-06-03 10:22:55'),
(17, 20, 'Week twenty', 'The baby is the size of a artichoke', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/17.png', '2022-06-03 10:28:57', '2022-06-03 10:28:57'),
(18, 21, 'Week twenty one', 'The baby is the size of a mango', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/18.png', '2022-06-03 10:29:58', '2022-06-03 10:29:58'),
(19, 22, 'Week twenty two', 'The baby is the size of a grapefruit', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/19.png', '2022-06-03 10:31:31', '2022-06-03 10:31:31'),
(20, 23, 'Week twenty three', 'The baby is the size of a papaya', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/20.png', '2022-06-03 10:32:09', '2022-06-03 10:32:09'),
(21, 24, 'Week twenty four', 'The baby is the size of a ear of corn', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/21.png', '2022-06-03 10:33:53', '2022-06-03 10:33:53'),
(22, 25, 'Week twenty five', 'The baby is the size of a zucchini', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/22.png', '2022-06-03 10:34:56', '2022-06-03 10:34:56'),
(23, 26, 'Week twenty six', 'The baby is the size of a head of lettuce', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/23.png', '2022-06-03 10:35:54', '2022-06-03 10:35:54'),
(24, 27, 'Week twenty seven', 'The baby is the size of a head of cauliflower', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/24.png', '2022-06-03 10:36:46', '2022-06-03 10:36:46'),
(25, 28, 'Week twenty eight', 'The baby is the size of a head of eggplant', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/25.png', '2022-06-03 10:37:31', '2022-06-03 10:37:31'),
(26, 29, 'Week twenty nine', 'The baby is the size of a acorn squash', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/26.png', '2022-06-03 10:38:31', '2022-06-03 10:38:31'),
(27, 30, 'Week thirty', 'The baby is the size of a acorn bunch of broccoli', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/27.png\r\n', '2022-06-03 10:40:49', '2022-06-03 10:40:49'),
(28, 31, 'Week thirty one', 'The baby is the size of a acorn cabbage', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/28.png', '2022-06-03 10:41:52', '2022-06-03 10:41:52'),
(29, 32, 'Week thirty two', 'The baby is the size of a spaghetti squash', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/29.png', '2022-06-03 10:42:43', '2022-06-03 10:42:43'),
(30, 33, 'Week thirty three', 'The baby is the size of a pineapple', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/30.png', '2022-06-03 10:43:48', '2022-06-03 10:43:48'),
(31, 34, 'Week thirty four', 'The baby is the size of a butternut squash', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/31.png', '2022-06-03 10:44:44', '2022-06-03 10:44:44'),
(32, 35, 'Week thirty five', 'The baby is the size of a honeydew melon', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/32.png', '2022-06-03 10:45:34', '2022-06-03 10:45:34'),
(33, 36, 'Week thirty six', 'The baby is the size of a celery', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/33.png', '2022-06-03 10:46:14', '2022-06-03 10:46:14'),
(34, 37, 'Week thirty seven', 'The baby is the size of a Swiss chard', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/34.png', '2022-06-03 10:47:48', '2022-06-03 10:47:48'),
(35, 38, 'Week thirty eight', 'The baby is the size of a jack fruit', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/35.png', '2022-06-03 10:48:28', '2022-06-03 10:48:28'),
(36, 39, 'Week thirty nine', 'The baby is the size of a pumpkin', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/36.png', '2022-06-03 10:49:18', '2022-06-03 10:49:18'),
(37, 40, 'Week fourty', 'The baby is the size of a watermelon', 'https://biggestaskbackend.justcodenow.com/images/pregnancy_milestone/37.png', '2022-06-03 10:50:23', '2022-06-03 10:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `pregnancy__milestone__statuses`
--

CREATE TABLE `pregnancy__milestone__statuses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` enum('inactive','active','','') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pregnancy__milestone__statuses`
--

INSERT INTO `pregnancy__milestone__statuses` (`id`, `user_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'surrogate', 'active', '2022-08-01 06:39:17', '2022-07-14 22:15:04'),
(2, 224, 'parent', 'inactive', '2022-09-01 12:43:16', '2022-09-01 04:43:16'),
(12, 225, 'parent', 'active', '2022-07-23 23:55:03', '2022-07-23 23:55:03'),
(13, 193, 'surrogate', 'active', '2022-09-16 13:00:26', '2022-09-16 05:00:26'),
(14, 349, 'parent', 'active', '2022-09-13 05:01:53', '2022-07-24 18:06:30'),
(15, 2, 'surrogate', 'active', '2022-08-29 09:41:09', '2022-07-24 18:06:30'),
(16, 225, 'parent', 'active', '2022-07-24 20:44:14', '2022-07-24 20:44:14'),
(17, 91, 'surrogate', 'inactive', '2022-09-02 04:57:27', '2022-09-01 20:57:27'),
(18, 225, 'parent', 'active', '2022-07-24 21:10:26', '2022-07-24 21:10:26'),
(19, 91, 'surrogate', 'active', '2022-07-24 21:10:26', '2022-07-24 21:10:26'),
(20, 225, 'parent', 'active', '2022-07-24 21:21:55', '2022-07-24 21:21:55'),
(21, 91, 'surrogate', 'active', '2022-07-24 21:21:55', '2022-07-24 21:21:55'),
(22, 2, 'parent', 'active', '2022-07-24 22:03:59', '2022-07-24 22:03:59'),
(23, 7, 'surrogate', 'active', '2022-07-24 22:03:59', '2022-07-24 22:03:59'),
(24, 395, 'parent', 'active', '2022-09-01 12:16:08', '2022-07-24 22:36:12'),
(25, 103, 'surrogate', 'active', '2022-07-24 22:36:12', '2022-07-24 22:36:12'),
(26, 239, 'parent', 'active', '2022-07-25 04:01:15', '2022-07-25 04:01:15'),
(27, 107, 'surrogate', 'active', '2022-07-25 04:01:15', '2022-07-25 04:01:15'),
(28, 251, 'parent', 'active', '2022-07-25 21:26:16', '2022-07-25 21:26:16'),
(29, 107, 'surrogate', 'active', '2022-07-25 21:26:16', '2022-07-25 21:26:16'),
(30, 254, 'parent', 'active', '2022-07-26 20:58:52', '2022-07-26 20:58:52'),
(31, 107, 'surrogate', 'active', '2022-07-26 20:58:52', '2022-07-26 20:58:52'),
(32, 257, 'parent', 'active', '2022-07-26 21:09:18', '2022-07-26 21:09:18'),
(33, 107, 'surrogate', 'active', '2022-07-26 21:09:18', '2022-07-26 21:09:18'),
(34, 225, 'parent', 'active', '2022-07-26 21:14:02', '2022-07-26 21:14:02'),
(35, 107, 'surrogate', 'active', '2022-07-26 21:14:02', '2022-07-26 21:14:02'),
(36, 252, 'parent', 'active', '2022-07-26 22:35:12', '2022-07-26 22:35:12'),
(37, 124, 'surrogate', 'active', '2022-07-26 22:35:12', '2022-07-26 22:35:12'),
(38, 267, 'parent', 'active', '2022-07-28 02:06:46', '2022-07-28 02:06:46'),
(39, 134, 'surrogate', 'active', '2022-07-28 02:06:46', '2022-07-28 02:06:46'),
(40, 270, 'parent', 'active', '2022-07-28 02:26:02', '2022-07-28 02:26:02'),
(41, 137, 'surrogate', 'active', '2022-07-28 02:26:02', '2022-07-28 02:26:02'),
(42, 273, 'parent', 'active', '2022-07-28 02:56:13', '2022-07-28 02:56:13'),
(43, 138, 'surrogate', 'active', '2022-07-28 02:56:13', '2022-07-28 02:56:13'),
(44, 276, 'parent', 'active', '2022-07-28 20:57:49', '2022-07-28 20:57:49'),
(45, 144, 'surrogate', 'active', '2022-07-28 20:57:49', '2022-07-28 20:57:49'),
(46, 280, 'parent', 'active', '2022-07-31 20:58:50', '2022-07-31 20:58:50'),
(47, 145, 'surrogate', 'active', '2022-07-31 20:58:50', '2022-07-31 20:58:50'),
(48, 283, 'parent', 'active', '2022-07-31 21:15:13', '2022-07-31 21:15:13'),
(49, 145, 'surrogate', 'active', '2022-07-31 21:15:13', '2022-07-31 21:15:13'),
(50, 1, 'parent', 'active', '2022-08-01 06:13:26', '2022-08-01 06:13:26'),
(51, 284, 'parent', 'active', '2022-07-31 23:10:02', '2022-07-31 23:10:02'),
(52, 144, 'surrogate', 'active', '2022-07-31 23:10:02', '2022-07-31 23:10:02'),
(53, 225, 'parent', 'active', '2022-08-01 00:49:13', '2022-08-01 00:49:13'),
(54, 18, 'surrogate', 'active', '2022-08-01 00:49:13', '2022-08-01 00:49:13'),
(55, 281, 'parent', 'active', '2022-08-01 02:33:12', '2022-08-01 02:33:12'),
(56, 151, 'surrogate', 'active', '2022-08-01 02:33:12', '2022-08-01 02:33:12'),
(57, 288, 'parent', 'active', '2022-08-01 04:47:38', '2022-08-01 04:47:38'),
(58, 153, 'surrogate', 'active', '2022-08-01 04:47:38', '2022-08-01 04:47:38'),
(59, 289, 'parent', 'active', '2022-08-01 05:12:25', '2022-08-01 05:12:25'),
(60, 156, 'surrogate', 'active', '2022-08-01 05:12:25', '2022-08-01 05:12:25'),
(61, 293, 'parent', 'active', '2022-08-01 05:19:55', '2022-08-01 05:19:55'),
(62, 157, 'surrogate', 'active', '2022-08-01 05:19:55', '2022-08-01 05:19:55'),
(63, 292, 'parent', 'active', '2022-08-01 05:23:48', '2022-08-01 05:23:48'),
(64, 161, 'surrogate', 'active', '2022-08-01 05:23:48', '2022-08-01 05:23:48'),
(65, 297, 'parent', 'active', '2022-08-01 05:43:16', '2022-08-01 05:43:16'),
(66, 162, 'surrogate', 'active', '2022-08-01 05:43:16', '2022-08-01 05:43:16'),
(67, 299, 'parent', 'active', '2022-08-01 20:53:36', '2022-08-01 20:53:36'),
(68, 166, 'surrogate', 'active', '2022-08-01 20:53:36', '2022-08-01 20:53:36'),
(69, 302, 'parent', 'active', '2022-08-01 23:07:12', '2022-08-01 23:07:12'),
(70, 168, 'surrogate', 'active', '2022-08-01 23:07:12', '2022-08-01 23:07:12'),
(71, 3, 'parent', 'active', '2022-08-02 02:40:45', '2022-08-02 02:40:45'),
(72, 17, 'surrogate', 'active', '2022-08-02 02:40:45', '2022-08-02 02:40:45'),
(73, 305, 'parent', 'active', '2022-08-03 03:09:19', '2022-08-03 03:09:19'),
(74, 171, 'surrogate', 'active', '2022-08-03 03:09:19', '2022-08-03 03:09:19'),
(75, 307, 'parent', 'active', '2022-08-04 00:49:47', '2022-08-04 00:49:47'),
(76, 173, 'surrogate', 'active', '2022-08-04 00:49:47', '2022-08-04 00:49:47'),
(77, 310, 'parent', 'active', '2022-08-04 01:21:54', '2022-08-04 01:21:54'),
(78, 174, 'surrogate', 'active', '2022-08-04 01:21:54', '2022-08-04 01:21:54'),
(79, 311, 'parent', 'active', '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(80, 23, 'surrogate', 'active', '2022-08-09 00:35:07', '2022-08-09 00:35:07'),
(81, 321, 'parent', 'active', '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(82, 186, 'surrogate', 'active', '2022-08-16 00:44:21', '2022-08-16 00:44:21'),
(83, 327, 'parent', 'active', '2022-09-12 10:06:21', '2022-09-12 02:06:21'),
(84, 190, 'surrogate', 'active', '2022-08-16 21:48:07', '2022-08-16 21:48:07'),
(85, 332, 'parent', 'active', '2022-08-16 23:58:44', '2022-08-16 23:58:44'),
(86, 191, 'surrogate', 'active', '2022-08-16 23:58:44', '2022-08-16 23:58:44'),
(87, 335, 'parent', 'active', '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(88, 196, 'surrogate', 'active', '2022-08-19 02:32:21', '2022-08-19 02:32:21'),
(89, 337, 'parent', 'active', '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(90, 198, 'surrogate', 'active', '2022-08-19 07:02:57', '2022-08-19 07:02:57'),
(91, 342, 'parent', 'active', '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(92, 203, 'surrogate', 'active', '2022-08-21 23:04:55', '2022-08-21 23:04:55'),
(93, 341, 'parent', 'active', '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(94, 204, 'surrogate', 'active', '2022-08-22 03:19:14', '2022-08-22 03:19:14'),
(95, 346, 'parent', 'inactive', '2022-11-16 13:12:20', '2022-11-16 05:12:20'),
(96, 205, 'surrogate', 'inactive', '2022-11-16 13:12:22', '2022-11-16 05:12:22'),
(97, 347, 'parent', 'active', '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(98, 208, 'surrogate', 'active', '2022-08-23 00:40:56', '2022-08-23 00:40:56'),
(99, 367, 'parent', 'active', '2022-08-30 02:27:40', '2022-08-30 02:27:40'),
(100, 228, 'surrogate', 'active', '2022-08-30 02:27:40', '2022-08-30 02:27:40'),
(101, 370, 'parent', 'active', '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(102, 231, 'surrogate', 'active', '2022-08-30 22:23:50', '2022-08-30 22:23:50'),
(103, 391, 'parent', 'active', '2022-10-19 14:04:41', '2022-10-19 06:04:41'),
(104, 250, 'surrogate', 'active', '2022-08-30 22:36:44', '2022-08-30 22:36:44'),
(105, 392, 'parent', 'inactive', '2022-09-02 13:25:00', '2022-09-02 05:25:00'),
(106, 253, 'surrogate', 'active', '2022-08-30 22:45:54', '2022-08-30 22:45:54'),
(107, 394, 'parent', 'active', '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(108, 255, 'surrogate', 'active', '2022-08-30 22:54:15', '2022-08-30 22:54:15'),
(109, 398, 'parent', 'active', '2022-09-05 10:40:39', '2022-09-05 02:40:39'),
(110, 259, 'surrogate', 'active', '2022-09-03 01:06:28', '2022-09-03 01:06:28'),
(111, 402, 'parent', 'active', '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(112, 263, 'surrogate', 'active', '2022-09-06 02:26:46', '2022-09-06 02:26:46'),
(113, 405, 'parent', 'active', '2022-09-08 12:56:53', '2022-09-08 04:56:53'),
(114, 268, 'surrogate', 'inactive', '2022-09-12 09:26:16', '2022-09-12 01:26:16'),
(115, 409, 'parent', 'active', '2022-09-16 13:00:05', '2022-09-16 05:00:05'),
(116, 193, 'surrogate', 'active', '2022-09-08 20:39:12', '2022-09-08 20:39:12'),
(117, 412, 'parent', 'active', '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(118, 273, 'surrogate', 'active', '2022-09-08 21:28:45', '2022-09-08 21:28:45'),
(119, 420, 'parent', 'active', '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(120, 277, 'surrogate', 'active', '2022-09-12 05:06:15', '2022-09-12 05:06:15'),
(121, 421, 'parent', 'active', '2022-09-13 21:59:00', '2022-09-13 21:59:00'),
(122, 280, 'surrogate', 'active', '2022-09-13 21:59:00', '2022-09-13 21:59:00'),
(123, 426, 'parent', 'active', '2022-09-13 22:29:44', '2022-09-13 22:29:44'),
(124, 282, 'surrogate', 'inactive', '2022-09-15 12:51:58', '2022-09-15 04:51:58'),
(125, 435, 'parent', 'active', '2022-10-02 14:04:07', '2022-10-02 06:04:07'),
(126, 293, 'surrogate', 'active', '2022-10-02 06:00:49', '2022-10-02 06:00:49'),
(127, 437, 'parent', 'active', '2022-11-14 13:16:40', '2022-11-14 05:16:40'),
(128, 297, 'surrogate', 'active', '2022-10-04 17:45:21', '2022-10-04 09:45:21'),
(129, 453, 'parent', 'active', '2022-10-19 06:14:05', '2022-10-18 22:14:05'),
(130, 326, 'surrogate', 'active', '2022-10-18 03:29:36', '2022-10-18 03:29:36'),
(131, 471, 'parent', 'active', '2022-10-19 08:53:52', '2022-10-19 00:53:52'),
(132, 339, 'surrogate', 'active', '2022-10-19 00:48:43', '2022-10-19 00:48:43'),
(133, 518, 'parent', 'active', '2022-10-21 07:00:44', '2022-10-20 23:00:44'),
(134, 374, 'surrogate', 'active', '2022-10-20 06:01:52', '2022-10-20 06:01:52'),
(135, 522, 'parent', 'active', '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(136, 376, 'surrogate', 'active', '2022-11-02 01:45:45', '2022-11-02 01:45:45'),
(137, 523, 'parent', 'active', '2022-11-03 07:45:51', '2022-11-02 23:45:51'),
(138, 379, 'surrogate', 'active', '2022-11-02 22:39:08', '2022-11-02 22:39:08'),
(139, 529, 'parent', 'inactive', '2022-11-15 12:54:08', '2022-11-15 04:54:08'),
(140, 385, 'surrogate', 'active', '2022-11-13 21:36:56', '2022-11-13 21:36:56'),
(141, 532, 'parent', 'active', '2022-11-14 12:40:22', '2022-11-14 04:40:22'),
(142, 387, 'surrogate', 'active', '2022-11-14 12:50:48', '2022-11-14 04:50:48'),
(143, 535, 'parent', 'active', '2022-11-18 11:35:59', '2022-11-18 03:35:59'),
(144, 388, 'surrogate', 'active', '2022-11-18 10:34:35', '2022-11-18 02:34:35'),
(145, 536, 'parent', 'active', '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(146, 394, 'surrogate', 'active', '2022-11-18 04:15:20', '2022-11-18 04:15:20'),
(147, 541, 'parent', 'active', '2022-11-18 12:34:53', '2022-11-18 04:34:53'),
(148, 396, 'surrogate', 'active', '2022-11-18 04:34:15', '2022-11-18 04:34:15'),
(149, 543, 'parent', 'active', '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(150, 398, 'surrogate', 'active', '2022-11-18 04:48:35', '2022-11-18 04:48:35'),
(151, 546, 'parent', 'active', '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(152, 399, 'surrogate', 'active', '2022-11-18 04:52:37', '2022-11-18 04:52:37'),
(153, 549, 'parent', 'active', '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(154, 401, 'surrogate', 'active', '2022-11-18 05:02:40', '2022-11-18 05:02:40'),
(155, 551, 'parent', 'active', '2022-11-18 05:07:47', '2022-11-18 05:07:47'),
(156, 404, 'surrogate', 'active', '2022-11-18 05:07:47', '2022-11-18 05:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` text NOT NULL,
  `category_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `category_id`, `created_at`, `updated_at`) VALUES
(10, 'Foods', '6', '2022-05-27 05:45:49', '2022-05-26 21:45:49'),
(11, 'Sport', '3', '2022-05-25 08:56:05', '2022-05-25 00:56:05'),
(62, 'Jogging', '1', '2022-05-25 00:56:43', '2022-05-25 00:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `forum` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `image`, `insta`, `forum`, `created_at`, `updated_at`) VALUES
(5, 'Mary Jane', 'hello@thebiggestask.com', '$2y$10$OEQ6V9xXyelWVTKlIA.Ud.Un8regHF.7JsAohuSx5bp59/pIaRwWi', 'Some random texts.', '1671533043.jpg', 'https://instagram.com', 'https://instagram.com', '2022-04-20 23:11:45', '2022-12-20 02:44:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_question_statuses`
--
ALTER TABLE `admin_question_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin__questions`
--
ALTER TABLE `admin__questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin__question__ans`
--
ALTER TABLE `admin__question__ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert__questions`
--
ALTER TABLE `alert__questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert__question_ans`
--
ALTER TABLE `alert__question_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app__users`
--
ALTER TABLE `app__users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app__user_surrogates`
--
ALTER TABLE `app__user_surrogates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `introscreen_infos`
--
ALTER TABLE `introscreen_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestone_users`
--
ALTER TABLE `milestone_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestone__images`
--
ALTER TABLE `milestone__images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_t_p_s`
--
ALTER TABLE `o_t_p_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent__surrogates`
--
ALTER TABLE `parent__surrogates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pregnancy__milestones`
--
ALTER TABLE `pregnancy__milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pregnancy__milestone__statuses`
--
ALTER TABLE `pregnancy__milestone__statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_question_statuses`
--
ALTER TABLE `admin_question_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `admin__questions`
--
ALTER TABLE `admin__questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `admin__question__ans`
--
ALTER TABLE `admin__question__ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `alert__questions`
--
ALTER TABLE `alert__questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `alert__question_ans`
--
ALTER TABLE `alert__question_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `app__users`
--
ALTER TABLE `app__users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `app__user_surrogates`
--
ALTER TABLE `app__user_surrogates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `introscreen_infos`
--
ALTER TABLE `introscreen_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `milestone_users`
--
ALTER TABLE `milestone_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

--
-- AUTO_INCREMENT for table `milestone__images`
--
ALTER TABLE `milestone__images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `o_t_p_s`
--
ALTER TABLE `o_t_p_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `parent__surrogates`
--
ALTER TABLE `parent__surrogates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pregnancy__milestones`
--
ALTER TABLE `pregnancy__milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pregnancy__milestone__statuses`
--
ALTER TABLE `pregnancy__milestone__statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
