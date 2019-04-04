-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 11:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtime_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'vero', 'vero', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(2, 'laboriosam', 'laboriosam', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(3, 'sit', 'sit', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(4, 'quia', 'quia', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(5, 'rerum', 'rerum', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(21, 'laravel', 'laravel', '2019-02-16 07:05:16', '2019-02-16 07:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(2, 2, 3, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(3, 3, 3, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(4, 4, 6, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(5, 5, 7, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(6, 6, 3, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(7, 7, 9, '2019-02-06 13:58:12', '2019-02-06 13:58:12'),
(8, 8, 3, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(9, 9, 3, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(10, 10, 4, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(11, 11, 4, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(12, 12, 3, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(13, 13, 5, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(14, 14, 7, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(15, 15, 4, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(16, 16, 6, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(17, 17, 3, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(18, 18, 9, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(19, 19, 9, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(20, 20, 6, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(21, 21, 1, '2019-02-06 13:58:13', '2019-02-06 13:58:13'),
(22, 22, 9, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(23, 23, 2, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(24, 24, 7, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(25, 25, 7, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(26, 26, 8, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(27, 27, 2, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(28, 28, 2, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(29, 29, 5, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(30, 30, 8, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(31, 31, 5, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(32, 32, 4, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(33, 33, 8, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(34, 34, 10, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(35, 35, 8, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(36, 36, 6, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(37, 37, 9, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(38, 38, 9, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(39, 39, 6, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(40, 40, 6, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(41, 41, 9, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(42, 42, 6, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(43, 43, 6, '2019-02-06 13:58:14', '2019-02-06 13:58:14'),
(44, 44, 2, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(45, 45, 7, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(46, 46, 10, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(47, 47, 2, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(48, 48, 1, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(49, 49, 5, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(50, 50, 6, '2019-02-06 13:58:15', '2019-02-06 13:58:15'),
(62, 51, 14, '2019-02-18 07:14:05', '2019-02-18 07:14:05'),
(63, 37, 14, '2019-02-18 07:14:08', '2019-02-18 07:14:08'),
(64, 56, 14, '2019-02-18 11:03:48', '2019-02-18 11:03:48'),
(66, 54, 14, '2019-02-18 11:05:07', '2019-02-18 11:05:07'),
(68, 2, 4, '2019-02-18 11:13:16', '2019-02-18 11:13:16'),
(72, 48, 4, '2019-02-18 11:17:41', '2019-02-18 11:17:41'),
(78, 55, 14, '2019-02-18 12:05:06', '2019-02-18 12:05:06'),
(84, 13, 14, '2019-02-19 07:53:17', '2019-02-19 07:53:17'),
(88, 48, 14, '2019-02-19 08:00:12', '2019-02-19 08:00:12'),
(90, 48, 2, '2019-02-19 08:00:53', '2019-02-19 08:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_05_145310_create_questions_table', 1),
(4, '2019_02_05_145534_create_replies_table', 1),
(5, '2019_02_05_145552_create_categories_table', 1),
(6, '2019_02_05_151047_create_likes_table', 1),
(7, '2019_02_18_131731_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('199a01a1-ffef-49b7-88d2-60d9f9a05937', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Dr. Raleigh Rempel MD\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:57:37', '2019-02-19 08:50:29', '2019-02-19 08:57:37'),
('2e21f908-0298-48fb-bccb-88c10c4c42d7', 'App\\Notifications\\NewReply', 'App\\User', 1, '{\"replyBy\":\"Abc TEst\",\"question\":\"Laudantium est impedit impedit maiores voluptatibus.\",\"path\":\"question\\/laudantium-est-impedit-impedit-maiores-voluptatibus\"}', NULL, '2019-02-19 08:09:11', '2019-02-19 08:09:11'),
('62308e52-abba-492d-a7de-0a753b992a06', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Ernestina Powlowski\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:56:59', '2019-02-19 08:56:26', '2019-02-19 08:56:59'),
('62fdb708-be80-4834-942e-070ea72c39df', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Dr. Raleigh Rempel MD\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:23:29', '2019-02-19 08:17:02', '2019-02-19 08:23:29'),
('7c8b3353-907d-4d17-a4e1-534fbb37cb84', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Ernestina Powlowski\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:57:04', '2019-02-19 08:55:47', '2019-02-19 08:57:04'),
('841dc5f3-643b-43d0-a666-55ac448a64cd', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Dr. Raleigh Rempel MD\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:57:08', '2019-02-19 08:24:20', '2019-02-19 08:57:08'),
('8f3fba97-29b8-4cf0-9d93-8a0958a25774', 'App\\Notifications\\NewReply', 'App\\User', 7, '{\"replyBy\":\"Abc TEst\",\"question\":\"Aspernatur molestiae quis ut itaque.\",\"path\":\"question\\/aspernatur-molestiae-quis-ut-itaque\"}', NULL, '2019-02-18 09:12:44', '2019-02-18 09:12:44'),
('bd890efc-ce10-43f3-b6e7-9fc6442fbb99', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Abc TEst\",\"question\":\"Aspernatur molestiae quis ut itaque.\",\"path\":\"question\\/aspernatur-molestiae-quis-ut-itaque\"}', '2019-02-18 09:10:01', '2019-02-18 08:43:30', '2019-02-18 09:10:01'),
('c7f0da01-7866-41b8-bde1-544ca8d112d1', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Dr. Raleigh Rempel MD\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:23:27', '2019-02-19 08:23:12', '2019-02-19 08:23:27'),
('f7cb32ea-b100-4869-865b-47924bc8e6ca', 'App\\Notifications\\NewReply', 'App\\User', 14, '{\"replyBy\":\"Dr. Raleigh Rempel MD\",\"question\":\"This is question (Update)\",\"path\":\"question\\/this-is-question\"}', '2019-02-19 08:23:50', '2019-02-19 08:19:54', '2019-02-19 08:23:50'),
('f848b722-9e63-4ef4-b5ab-fe769f58f58a', 'App\\Notifications\\NewReply', 'App\\User', 1, '{\"replyBy\":\"Abc TEst\",\"question\":\"Laudantium est impedit impedit maiores voluptatibus.\",\"path\":\"question\\/laudantium-est-impedit-impedit-maiores-voluptatibus\"}', NULL, '2019-02-19 08:06:46', '2019-02-19 08:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Commodi nihil totam aliquid omnis animi ad rem et.', 'commodi-nihil-totam-aliquid-omnis-animi-ad-rem-et', 'Vero inventore quia non nulla aperiam at dolor. Maiores voluptatem omnis est saepe voluptatem. Numquam tempora minus ea minima. Veritatis repellendus ut at voluptatem incidunt illum.', 3, 5, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(2, 'Totam quia magni libero ut est nam.', 'totam-quia-magni-libero-ut-est-nam', 'Quia ut nam amet esse eos non accusantium. Consequatur voluptate quia odio dolorem molestiae. Consequatur mollitia quas quas nisi illum.', 1, 9, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(3, 'Occaecati sed quas molestias quod at nulla nobis dolore.', 'occaecati-sed-quas-molestias-quod-at-nulla-nobis-dolore', 'Provident harum quas officiis autem excepturi tempora aut. Cum officiis distinctio maiores.', 4, 2, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(4, 'A in illum iste sequi at dolor sed molestiae.', 'a-in-illum-iste-sequi-at-dolor-sed-molestiae', 'Molestiae nesciunt deleniti aperiam consectetur. Non amet ea quo veritatis nulla reprehenderit rerum enim. Illo vel ea ut doloribus explicabo vero autem.', 4, 10, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(5, 'Pariatur esse et sit fugit enim nostrum.', 'pariatur-esse-et-sit-fugit-enim-nostrum', 'Earum dicta odit esse dolorem ut. Laudantium sunt ullam ut eum. Numquam autem voluptas et adipisci temporibus voluptate ipsum nihil.', 5, 6, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(6, 'Aspernatur molestiae quis ut itaque.', 'aspernatur-molestiae-quis-ut-itaque', 'Ratione aperiam esse deleniti. Et quia aut et consequatur laborum repellendus tempore. Blanditiis assumenda in ea. In omnis omnis dolor laboriosam velit eveniet.', 5, 7, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(7, 'Nulla quo expedita esse vero inventore nostrum nobis.', 'nulla-quo-expedita-esse-vero-inventore-nostrum-nobis', 'Occaecati ipsum aut et reprehenderit quibusdam ratione. Doloribus in alias sit nihil sed fuga. Similique illum voluptatum dolores aut. Qui exercitationem laboriosam perspiciatis in.', 2, 2, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(8, 'Quo est aut soluta quos tempora doloribus.', 'quo-est-aut-soluta-quos-tempora-doloribus', 'Sequi non eum sint velit repellendus. Voluptas ratione eos inventore. Officiis cum et itaque deleniti molestiae.', 1, 4, '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(9, 'Eius magnam consectetur esse eaque.', 'eius-magnam-consectetur-esse-eaque', 'Accusantium sapiente nemo doloremque ipsum perferendis. Quam minima sit cum. Repudiandae quod quibusdam possimus est voluptas deleniti. Vel incidunt repellat rerum quia et non.', 5, 7, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(10, 'Laudantium est impedit impedit maiores voluptatibus.', 'laudantium-est-impedit-impedit-maiores-voluptatibus', 'Eum iste minima optio labore. Mollitia iure laudantium veritatis deleniti. Harum velit ea quis mollitia beatae sed. Voluptates placeat placeat ipsa qui adipisci consequatur.', 2, 1, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(12, 'This is question (Update)', 'this-is-question', 'Hlw there\n# Welcome', 3, 14, '2019-02-09 10:04:13', '2019-02-19 08:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `content`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Perspiciatis dolorum at omnis nihil voluptates. Ut similique veniam expedita ut et omnis assumenda. Nam atque nam beatae eum cum. Velit totam consequatur sunt.', 9, 1, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(2, 'Ipsam est aut dolore est minima. Nam quod alias quibusdam ab ut. Fugit et ea expedita.', 10, 6, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(3, 'Nisi sit enim assumenda ratione. Qui et officiis qui atque corporis. Veniam magnam nostrum nemo et et repellendus dolore voluptatem.', 2, 9, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(4, 'Dicta dicta nulla tempore aperiam. Dolorem praesentium commodi ullam quod. Hic est alias est iste dolores explicabo impedit.', 3, 6, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(5, 'Fugit quam sit cum dolor sint. Tempora aliquam aut velit necessitatibus. Asperiores odit soluta quae quo. Et ut autem enim id nemo.', 3, 7, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(6, 'Quas et aspernatur et repellat impedit minima blanditiis. Labore at possimus distinctio temporibus. In id commodi temporibus consequatur voluptas repellendus.', 5, 6, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(7, 'Ratione totam occaecati corrupti cumque doloribus. Aspernatur dolore reiciendis aut. Animi similique ut et molestiae odit magnam. Tempora repellendus aperiam officiis quas eius illum error.', 3, 5, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(8, 'Modi placeat nisi est ut similique eaque qui voluptas. Velit deserunt voluptas animi sunt. Impedit laborum et voluptatem quis consequatur est.', 9, 5, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(9, 'Veritatis enim facilis at quia accusantium debitis laborum. Magni minima eos a. Autem sint eum consequatur doloribus facilis. Quis tenetur quo sint sint in. Rerum iure excepturi itaque quidem non.', 8, 4, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(10, 'Eum ipsum culpa itaque rerum. Distinctio in beatae quisquam voluptas. Odio qui et soluta adipisci hic iure tempora veritatis. Dolorum facere voluptatibus magni dolorem in adipisci.', 9, 7, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(11, 'Ut voluptatem sit nemo architecto autem sapiente ut. Qui ipsa qui reprehenderit fugit. Ullam aut sit maiores expedita consectetur sint ratione. Est dignissimos velit rerum placeat et esse dolorem.', 5, 9, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(12, 'Fuga perferendis voluptate quo ea et architecto. Voluptas et corporis perspiciatis dolores nostrum sit sint unde. Totam accusantium minima alias nesciunt aut est corrupti.', 2, 3, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(13, 'Ipsam enim consequatur nulla non. Dicta non quisquam aut cupiditate laudantium.', 10, 10, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(14, 'Eum consequatur labore earum nihil sit dolores soluta et. Fugiat incidunt ut laudantium quis quasi. Qui est impedit et in sed exercitationem. Ut consequatur esse nihil.', 2, 6, '2019-02-06 13:58:09', '2019-02-06 13:58:09'),
(15, 'Aut sit dolor eligendi et nam itaque quae. Quis quae vel beatae et itaque nihil. Odit sed iusto nemo illum tempore repellendus. Adipisci velit debitis id quisquam tempore.', 2, 1, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(16, 'Soluta ut aut fugit rerum. Eligendi ullam aut corrupti. Tempore amet rem eius illum iusto incidunt sit. Consectetur atque dicta occaecati doloribus doloribus mollitia aperiam deserunt.', 6, 8, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(17, 'Itaque dolorem ratione aperiam corrupti in iusto. Ducimus est et laboriosam numquam quia. Doloremque dolorem adipisci quibusdam praesentium eligendi qui voluptatibus. Ut omnis assumenda et.', 3, 10, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(18, 'Ab sed earum similique explicabo veritatis corrupti ut modi. Qui illo odio tempore quos nisi error. Non cupiditate rerum voluptatibus mollitia. Magnam enim quo laudantium laborum.', 1, 3, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(19, 'Saepe et quae fugiat non est. Qui vitae laboriosam necessitatibus iste neque et. Nam est dolorem ut eos ipsa ullam ea.', 8, 10, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(20, 'Omnis ratione ea ab quia minima et aut quia. Est accusantium doloremque quibusdam et nostrum quos. Beatae blanditiis porro id harum.', 2, 4, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(21, 'In cupiditate porro sunt at officiis. Illo magni officia maxime ea. Dolor quod dolore ut et.', 9, 8, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(22, 'Aliquam ut assumenda quasi eum. Enim sed error at velit quod ut temporibus qui.', 2, 5, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(23, 'Et eveniet occaecati expedita enim repellendus. In sint rerum a. Qui harum neque quaerat dolorem dolores.', 7, 10, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(24, 'Porro harum laboriosam est vero optio sunt. Aut voluptates dolor qui omnis inventore in nihil. Rerum ipsum nobis officia vel. Magnam eos id fuga.', 4, 9, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(25, 'Nam est molestiae similique autem dolores blanditiis autem. Enim eius minus sint voluptates natus aspernatur enim. Non officia eveniet praesentium excepturi odit fugit excepturi inventore.', 8, 8, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(26, 'Saepe corporis rerum est recusandae. Ut incidunt sunt repellat ullam pariatur impedit. Officiis quia praesentium eum fuga eos sunt. Sit fugit sequi quia ipsam consectetur sed alias optio.', 3, 1, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(27, 'Iste est odio non delectus aut facere sit. Assumenda occaecati et voluptatem modi fugit. Illum repellat perspiciatis ipsum quis autem qui ab illo.', 8, 2, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(28, 'Commodi vero laborum modi vel molestiae. Fugiat recusandae et aut voluptatibus similique fugiat nihil delectus.', 2, 3, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(29, 'Ea quasi in harum aperiam deserunt quo. Distinctio magni omnis non inventore earum ut. Dolore et omnis magnam doloremque vitae.', 7, 6, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(30, 'Non dolorem eligendi aut ut a. Pariatur ipsa amet distinctio facilis voluptatibus voluptas. Doloribus nisi praesentium deleniti dolore amet non.', 3, 8, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(31, 'Deleniti dolorum impedit iste itaque voluptatem. Error et aliquam molestiae molestiae nihil. Minima provident placeat qui repellat. Id nulla assumenda inventore numquam.', 7, 2, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(32, 'Est ab magnam id ipsum. Blanditiis quis maxime velit provident nihil at. Nam mollitia cum nemo id incidunt voluptates et sed.', 9, 2, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(33, 'Repellendus sequi pariatur nisi quisquam atque ut. Dignissimos et aspernatur et debitis odit. Dolorum sit mollitia cum dolor. Ea unde consequatur nihil velit quia corrupti.', 4, 5, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(34, 'Quia nemo dolor repellendus maiores aut non rerum. Voluptas quidem repudiandae eligendi soluta omnis sint neque impedit. Corrupti harum occaecati labore recusandae optio eaque nam.', 3, 2, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(35, 'Nisi dicta provident voluptates distinctio quo. Corporis dicta harum aspernatur autem tenetur harum. Minus ea quae aut ut libero laborum. Et ipsum ipsum quisquam temporibus rerum.', 7, 9, '2019-02-06 13:58:10', '2019-02-06 13:58:10'),
(36, 'Ea commodi illo quo vel id sequi quia. Vero nihil consequatur deserunt accusantium blanditiis. Est ut et non ullam nemo.', 2, 2, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(37, 'Autem ut tempora est et ullam ex nulla. Aut modi est quasi aut officia natus. Sequi aut quia cum minima. Debitis eum accusamus natus tempora eos.', 9, 3, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(38, 'Et est et velit est. Sed consequatur fugiat dolorum quasi quae quisquam asperiores. Voluptates eveniet exercitationem optio adipisci.', 6, 6, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(39, 'Expedita delectus aut aspernatur voluptatem. Doloremque quisquam id incidunt quam facilis. Sed cupiditate dolor eum voluptas.', 5, 10, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(40, 'Dolorem laudantium facilis possimus. Voluptas est numquam non magni et tenetur. Voluptatem enim laudantium ullam ut.', 9, 4, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(41, 'Impedit omnis corrupti ea voluptatibus nihil. Autem optio quo optio perspiciatis excepturi. Minus aut laborum molestiae optio qui sint accusamus. Dignissimos quia harum similique.', 4, 3, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(42, 'Incidunt laboriosam et ut. Dolores tempore sunt ut totam suscipit corrupti est. Consectetur incidunt ut et molestiae aspernatur. Voluptas amet et vel tenetur debitis.', 5, 6, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(43, 'Aut ut et vitae quia. Et impedit doloremque nemo inventore amet. Dolorum voluptatibus explicabo modi inventore cum voluptates voluptas.', 8, 8, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(44, 'Nemo harum cumque deleniti iure beatae suscipit ea. Omnis qui consequatur eveniet aut eos rerum et. Quas quasi quis eum.', 9, 2, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(45, 'Est dignissimos ex ut nisi quasi. Eligendi saepe impedit amet qui. Nam sint non quas aliquam. Ullam maiores qui nobis accusantium qui. Repellendus quidem dolore non doloribus totam eius repellendus.', 5, 5, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(46, 'Voluptatum aperiam ut natus nam et totam ut. Sint nihil et rerum. Iure quo debitis nisi totam corrupti.', 3, 1, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(47, 'Voluptate ea autem quibusdam. Ipsum et velit vero ut. Tempore sed voluptatem nisi magni rerum dolor. Quaerat iusto et quae.', 5, 6, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(48, 'Cupiditate porro aperiam possimus libero perferendis suscipit quisquam. Nobis fugit beatae rerum aut dignissimos aliquam id. Unde odit in nesciunt et quibusdam reprehenderit.', 10, 8, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(49, 'Ducimus autem et in et quia sunt. Tempore voluptas perferendis vel mollitia. Quam et optio sit eum.', 9, 2, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(50, 'Eius quo eum voluptatum minima consectetur placeat soluta. Minus id non assumenda est quisquam ut. Blanditiis sequi ut veniam sed est dicta.', 6, 7, '2019-02-06 13:58:11', '2019-02-06 13:58:11'),
(51, 'asd', 9, 14, '2019-02-16 08:05:26', '2019-02-16 08:05:26'),
(52, '# This is NEw Reply', 9, 14, '2019-02-16 08:10:52', '2019-02-16 08:10:52'),
(53, 'This is other message.', 9, 14, '2019-02-16 08:12:42', '2019-02-16 08:12:42'),
(54, 'asda', 9, 14, '2019-02-18 07:22:09', '2019-02-18 07:22:09'),
(55, 'asda', 9, 14, '2019-02-18 07:22:42', '2019-02-18 07:22:42'),
(56, 'asda', 9, 14, '2019-02-18 07:23:50', '2019-02-18 07:23:50'),
(57, 'asd', 6, 14, '2019-02-18 08:43:29', '2019-02-18 08:43:29'),
(58, 'asd', 6, 14, '2019-02-18 09:12:44', '2019-02-18 09:12:44'),
(59, 'New Comment', 10, 14, '2019-02-19 08:06:46', '2019-02-19 08:06:46'),
(60, 'asd', 10, 14, '2019-02-19 08:09:10', '2019-02-19 08:09:10'),
(61, 'new reply', 12, 2, '2019-02-19 08:17:02', '2019-02-19 08:17:02'),
(62, 'Another Reply from Dr.', 12, 2, '2019-02-19 08:19:54', '2019-02-19 08:19:54'),
(63, 'Here is another from me with real notification', 12, 2, '2019-02-19 08:23:12', '2019-02-19 08:23:12'),
(64, 'Another one... :D', 12, 2, '2019-02-19 08:24:20', '2019-02-19 08:24:20'),
(65, 'For sound', 12, 2, '2019-02-19 08:50:28', '2019-02-19 08:50:28'),
(66, 'Hlw there', 12, 1, '2019-02-19 08:55:47', '2019-02-19 08:55:47'),
(67, 'Hlw', 12, 1, '2019-02-19 08:56:26', '2019-02-19 08:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ernestina Powlowski', 'brandi.renner@example.com', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'iXNTD0Pwxv', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(2, 'Dr. Raleigh Rempel MD', 'theron.jast@example.com', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'foP6cM9F8t', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(3, 'Eulalia Tromp', 'vanderson@example.com', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Tq6yEvkHVr', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(4, 'Dr. Asha Oberbrunner', 'rokon@example.org', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IfQciIklaE', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(5, 'Prof. Wayne Beahan', 'lakin.elta@example.org', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aj54dpJOlc', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(6, 'Jasmin Hills', 'marks.billie@example.net', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jxJYzTeTXv', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(7, 'Eleonore Rosenbaum', 'ashields@example.net', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mbDvwr5tmJ', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(8, 'D\'angelo Waelchi', 'alexandria68@example.org', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IfHqgqinmr', '2019-02-06 13:58:07', '2019-02-06 13:58:07'),
(9, 'Jameson Bogan', 'brennan.quitzon@example.com', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VTfi5TgeDK', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(10, 'Tyree Carter', 'kelley13@example.org', '2019-02-06 13:58:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9vusf9ZqI1', '2019-02-06 13:58:08', '2019-02-06 13:58:08'),
(14, 'Abc TEst', 'abcd@gmail.com', NULL, '$2y$10$eAKLp65t6FxyIURBA0Qv4e2t9k8XvH1JwLaUqnaO.dblO5v7pgrCS', NULL, '2019-02-06 14:15:01', '2019-02-06 14:15:01'),
(15, 'asdasd', 'asd@da', NULL, '$2y$10$7bPSfUs8cpfFlKhwcZk8hOGIneZegKL/0ThV/ExSOHSWiLoz2cQde', NULL, '2019-02-07 07:51:35', '2019-02-07 07:51:35'),
(18, 'Mosharrf Hossain', 'demo@gmail.com', NULL, '$2y$10$/HrfcRp.fTnnQTR7h2fhb.7724ZcyicPSeG1bJSpJIWFF3sesQTKe', NULL, '2019-02-07 08:12:58', '2019-02-07 08:12:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_question_id_foreign` (`question_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
