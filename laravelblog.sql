-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 09:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'জাতীয়', 'national', 'National news here', '1662209373.png', 'dfsdf', 'sdfsdf', 'fsdf', 0, 0, 1, '2022-09-03 06:49:33', '2022-09-03 06:50:12'),
(5, 'লিড ১', 'lead-1', 'lead news here', '1662216043.png', 'lead', 'lead', 'lead', 1, 0, 1, '2022-09-03 08:40:43', '2022-10-13 08:57:57'),
(7, 'রাজনীতি', 'bd', 'jhdfdf', '1662391545.png', 'dfds', 'fdsfds', 'fsdfsdf', 0, 0, 1, '2022-09-05 09:25:45', '2022-09-05 09:25:45'),
(8, 'আন্তর্জাতিক', 'international', 'inertaional news here', '1662391598.png', 'dfdf', 'dfdsf', 'dsfdsf', 0, 0, 1, '2022-09-05 09:26:38', '2022-09-05 09:26:38'),
(9, 'খেলা', 'sports', 'sports', '1662391648.png', 'sports', 'sports', 'sports', 0, 0, 1, '2022-09-05 09:27:28', '2022-09-05 09:27:28'),
(10, 'বিনোদন', 'entertainment', 'entertainment', '1662391685.png', 'entertainment', 'entertainment', 'entertainment', 0, 0, 1, '2022-09-05 09:28:05', '2022-09-05 09:28:05'),
(11, 'সারাদেশ', 'bangladesh', 'bangladesh', '1662391777.png', 'bangladesh', 'bangladesh', 'bangladesh', 0, 0, 1, '2022-09-05 09:29:37', '2022-09-05 09:29:37'),
(14, 'অর্থনীতি', 'economics', 'economics', '1665066536.png', 'economics', 'economics', 'economics', 0, 0, 1, '2022-10-06 08:28:56', '2022-10-06 08:28:56'),
(15, 'অপরাধ', 'crime', 'crime', '1665066812.png', 'crime', 'crime', 'crime', 0, 0, 1, '2022-10-06 08:33:32', '2022-10-06 08:33:32'),
(16, 'শিক্ষা', 'education', 'education', '1665066962.png', 'education', 'education', 'education', 0, 0, 1, '2022-10-06 08:36:02', '2022-10-06 08:38:29'),
(17, 'মতামত', 'opinion', 'opinion', '1665067085.png', 'opinion', 'opinion', 'opinion', 1, 0, 1, '2022-10-06 08:38:05', '2022-10-06 08:39:13'),
(18, 'বিজ্ঞান-প্রযুক্তি', 'tech', 'tech', '1665067211.jpg', 'tech', 'tech', 'tech', 0, 0, 1, '2022-10-06 08:40:11', '2022-10-06 08:40:11'),
(19, 'লিড-২', 'article', 'article', '1665067329.png', 'article', 'article', 'article', 1, 0, 1, '2022-10-06 08:42:09', '2022-10-13 09:01:14'),
(22, 'লিড-৩', 'lead-3', 'lead-3', '1665321687.png', 'lead-3', 'lead-3', 'lead-3', 1, 0, 1, '2022-10-09 07:21:27', '2022-10-13 09:01:20'),
(23, 'ফিচার', 'ফিচার', 'lead-4', '1665323034.png', 'lead-4', 'lead-4', 'lead-4', 1, 0, 1, '2022-10-09 07:43:54', '2022-10-23 07:10:22');

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
(5, '2022_08_16_132719_add_role_as_to_users_table', 2),
(6, '2022_08_17_142416_create_categories_table', 3),
(9, '2022_08_19_113733_create_posts_table', 4),
(10, '2022_10_01_145137_create_subcategories_table', 5),
(11, '2022_10_02_150521_add_subcategory_id_to_posts_table', 6);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yt_iframe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `name`, `slug`, `description`, `image`, `yt_iframe`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `created_by`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(3, 1, '৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্স', '৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্স', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;ruposhi bangla&quot;; font-size: 23px; text-align: justify;\">বৈধ চ্যানেলে প্রবাসীদের পাঠানো রেমিটেন্স হঠাৎ করেই কমে গেছে। ২০২২-২৩ অর্থবছরের তৃতীয় মাস সেপ্টেম্বরে ১৫৪ কোটি ডলার দেশে &nbsp;পাঠিয়েছেন প্রবাসী বাংলাদেশিরা। এই অঙ্ক গত ৭ মাসের মধ্যে সর্বনিম্ন। রোববার কেন্দ্রীয় ব্যাংকের প্রকাশিত প্রতিবেদনের তথ্য বলছে, সদ্য সমাপ্ত সেপ্টেম্বর মাসে ব্যাংকিং চ্যানেলে প্রবাসী বাংলাদেশিরা দেশে ১৫৩ কোটি ৯৫ লাখ (প্রায় ১.৫৪ বিলিয়ন) মার্কিন ডলার রেমিটেন্স পাঠিয়েছেন। আর গত বছরের সেপ্টেম্বরে রেমিটেন্স এসেছিল ১৭২ কোটি ৬৭ লাখ ডলার। প্রবাসী আয়ের এ অঙ্ক গত বছরের একই সময়ের চেয়ে ১৮ কোটি ৭২ লাখ</span><br></p>', '1664732831.jpg', NULL, '৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্স', NULL, NULL, 0, 1, '2022-10-02 11:47:11', '2022-10-02 11:47:11', NULL),
(4, 7, '৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্স', '7-maser-mdhze-srwnimn-remitens', '<p></p><div class=\"area single\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" ruposhi=\"\" bangla\";=\"\" font-size:=\"\" 18px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div class=\"ad hidden-xs\" style=\"box-sizing: border-box; text-align: center; padding: 0px;\"></div></div><p></p><h2 style=\"box-sizing: border-box; font-family: \" ruposhi=\"\" bangla\";=\"\" font-weight:=\"\" 500;=\"\" line-height:=\"\" 40px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" margin:=\"\" 0px;=\"\" font-size:=\"\" 38px;=\"\" text-align:=\"\" center;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-indent:=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" text-decoration-thickness:=\"\" initial;=\"\" text-decoration-style:=\"\" text-decoration-color:=\"\" padding:=\"\" 10px=\"\" 0px;\"=\"\">৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্সfdsfsdfsdsdfdsf</h2>', '1664802860.jpg', NULL, '৭ মাসের মধ্যে সর্বনিম্ন রেমিটেন্স', NULL, NULL, 0, 1, '2022-10-02 12:05:57', '2022-10-03 07:14:37', 1),
(5, 19, 'দুধ দিয়ে গোসল করে ছাত্রলীগ থেকে বিদায়', 'দুধ দিয়ে গোসল করে ছাত্রলীগ থেকে বিদায়', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কিশোরগঞ্জ প্রতিনিধি : কিশোরগঞ্জের পাকুন্দিয়া উপজেলা ছাত্রলীগের নতুন কমিটি ঘোষণা করা হয়েছে প্রায় এক যুগ পর। এতে কাঙ্ক্ষিত পদ না পেয়ে দুধ দিয়ে গোসল করে রাজনীতি থেকে বিদায় নিয়েছেন মো. আরমিন নামে ছাত্রলীগের এক নেতা। গতকাল বৃহস্পতিবার রাত ১০টার দিকে দুধ দিয়ে গোসল করার একটি ভিডিও নিজের ফেসবুক আইডিতে পোস্ট করেন তিনি। পরে সেটি সামাজিক যোগাযোগমাধ্যমে ভাইরাল হয়।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গত বুধবার জেলা ছাত্রলীগের সভাপতি মো. আনোয়ার হোসেন মোল্লা ও সাধারণ সম্পাদক মোহাম্মদ ফয়েজ ওমান খানের স্বাক্ষরিত ১৯ সদস্যবিশিষ্ট পাকুন্দিয়া উপজেলা ছাত্রলীগের আংশিক কমিটি ঘোষণা করা হয়। কমিটিতে নাজমুল আলমকে সভাপতি ও মো. তোফায়েল আহমেদকে সাধারণ সম্পাদক করা হয়। আরমিনকে কমিটিতে ১ নম্বর সহসভাপতি করা হয়।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ছাত্রলীগ নেতা আরমিন আহমেদ তাঁর ফেসবুক পোস্টে লেখেন, ‘১২ বছর ছাত্রলীগ থেকে আমার অর্জন সাতটি মামলার আসামি, এক বছর ধরে পুলিশের হয়রানি। পঙ্গু, শূন্য পকেটে দুধ দিয়ে গোসল করে রাজনীতি থেকে বিদায় নিলাম। ছাত্রদল থেকে আগত, বিএনপি পরিবার থেকে আগত কারও কাছে আত্মসমর্পণের চেয়ে বিদায় নেওয়া ভালো সিদ্ধান্ত। রাজনীতিটা বুক দিয়ে নয়, আবেগ দিয়ে করেছি। আবেগে ভেজালের স্থান নেই। ঘোষিত কমিটিতে আমিই সবার সিনিয়র। সভাপতি করা হলে আমাকে করা হবে। আমি কোন পদের প্রার্থী তা না জিজ্ঞেস করেই ফেসবুকে কমিটি ঘোষণা করা হয়েছে। তাই আমি দুঃখে দুধ দিয়ে গোসল করে ছাত্ররাজনীতির ইতি টানলাম।’</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এ বিষয়ে জানতে চাইলে কিশোরগঞ্জ জেলা ছাত্রলীগের সভাপতি মো. আনোয়ার হোসেন মোল্লা বলেন, ‘দীর্ঘদিন পর পাকুন্দিয়ায় একটি চমৎকার কমিটি দেওয়া হয়েছে। সবাইকে তো আর যার যার পছন্দমতো পদ এবং সন্তুষ্ট করা যায় না। সে জন্য অনেকে নানা মাধ্যমে নানা কথা বলে কমিটির বিরুদ্ধে কুৎসা রটনার চেষ্টা করছে। তবে সময়ে সবকিছু ঠিক হয়ে যাবে।’</span><br></p>', '1665145361.jpg', NULL, 'দুধ দিয়ে গোসল', NULL, NULL, 0, 1, '2022-10-07 06:22:41', '2022-10-07 06:22:41', NULL),
(6, 19, 'জাতীয় পার্টিতে দ্বন্দ্ব চরমে', 'জাতীয় পার্টিতে দ্বন্দ্ব চরমে', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">যতোই জাতীয় নির্বাচন এগিয়ে আসছে, জাতীয় পার্টির মধ্যে ত্রিমুখী দ্বন্দ্বের মুখোমুখি হচ্ছেন জাতীয় পার্টির চেয়ারম্যান ও সংসদের বিরোধীদলীয় উপনেতা জি এম কাদের। এসবের মধ্যেই জাতীয় সংসদের বিরোধীদলীয় নেতা ও জাতীয় পার্টির প্রধান পৃষ্ঠপোষক রওশন এরশাদ থাইল্যান্ডে চিকিৎসাধীন অবস্থায় ঘোষণা দিয়েছেন কাউন্সিলের। এর পরপরই মসিউর রহমান রাঙ্গাসহ দলের বেশ কয়েকজনকে দল থেকে অব্যাহতি কিংবা কারণ দর্শানো নোটিশ দিয়েছেন দলটির চেয়ারম্যান ।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">থাইল্যান্ডে চিকিৎসাধীন জাতীয় সংসদের বিরোধীদলীয় নেতা ও জাতীয় পার্টির প্রধান পৃষ্ঠপোষক রওশন এরশাদ দেশে আসবেন আগামী ১৫-২০ তারিখে, দলের একটি নির্ভরযোগ্য সুত্রে জানা গিয়েছে। ইতিমধ্যে আগামী ২৬ নভেম্বর রওশন এরশাদের ডাকা কাউন্সিলের প্রস্তুতিও দ্রুত গতিতে এগিয়ে চলছে বেশ জোরেশোরে। অন্যদিকে সিলেট চট্টগ্রাম ও ময়মনসিংহ বিভাগে রওশনপন্থিরা কাউন্সিলের প্রস্তুতি সম্পন্ন করেছে বলে জানা যায়।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">খুলনা ও রাজশাহীসহ অন্যান্য বিভাগেও&nbsp; সম্মেলন প্রস্তুতির কাজ চলছে। দেশের ১৩ জেলায় কাউন্সিলের প্রস্তুতি কমিটিও হয়েছে। কাউন্সিল সফল করতে জেলায় জেলায় যাচ্ছেন রওশনপন্থি নেতারা রওশনপন্থি জাপার এক মুখপাত্র জানান, রাজধানী ঢাকাসহ ঢাকা বিভাগেও কাজ চলছে।&nbsp;</span><br></p><p>জাতীয় পার্টি একাধিক সূত্রে জানা গেছে, যদিও দলের অনেক গুরুত্বপূর্ণ নেতা রওশনের ডাকে সাড়া দেননি। তবে রওশন এরশাদপন্থিরা বলেছেন, জাতীয় পার্টি সংসদ সদস্যদের মধ্যে দ্বিধাদ্বন্দ কাজ করলেও অনেকেই তথ্যগোপন রাখার শর্তে যোগাযোগ করছেন।</p>', '1665172833.jpg', NULL, 'জাতীয় পার্টিতে দ্বন্দ্ব চরমে', NULL, NULL, 0, 1, '2022-10-07 14:00:33', '2022-10-07 14:00:33', NULL),
(7, 19, 'দলে যোগ দিয়েই ব্যস্ত সাকিব', 'দলে যোগ দিয়েই ব্যস্ত সাকিব', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ত্রিদেশীয় ক্রিকেট সিরিজের উদ্বোধনী ম্যাচে গতকাল শুক্রবার পাকিস্তানের কাছে ২১ রানের হার নিয়ে মাঠ ছাড়ে নুরুল হাসান সোহানের নেতৃত্বাধীন বাংলাদেশ দল। নিয়মিত অধিনায়ক সাকিব আল হাসান দীর্ঘ ভ্রমণ ক্লান্তি থাকায় মাঠে ছিলেন না। তবে একদিন পর আজ শনিবার তাকে দেখা গিয়েছে দলের অনুশীলনে।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিসিবির অফিসাল ফেসবুক পেজের প্রকাশিত ভিডিওতে দেখা গিয়েছে নেটে ব্যাটিং অনুশীলনে ব্যস্ত সময় পার করছেন সাকিব। থ্রোয়ার বল খেলে নিজেকে প্রস্তুত করেছেন এদিন টাইগার অধিনায়ক। নেটে একের পর এক পুল, কাভার ড্রাইভ, কাট শট খেলার চেষ্টা করেন সাকিব। এ সময় তার পাশে থেকে পরামর্শ দিয়েছেন দলের ব্যাটিং পরামর্শক জেমি সিডন্স। ধারণা করা হচ্ছে জেমির অধীনেই আজ ব্যাটিং অনুশীলন করেছেন সাকিব।</span><br></p>', '1665247288.jpg', NULL, 'দলে যোগ দিয়েই ব্যস্ত সাকিব', NULL, NULL, 0, 1, '2022-10-08 10:41:28', '2022-10-08 10:41:28', NULL),
(8, 19, 'রোববার থেকে যাত্রী নিয়ে চলাচল করবে ডেমু ট্রেন', 'রোববার থেকে যাত্রী নিয়ে চলাচল করবে ডেমু ট্রেন', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">দীর্ঘদিন ধরে অচল পড়ে থাকা ডেমু ট্রেন দেশীয় প্রযুক্তিতে প্রাণ ফিরে পেয়েছে। সচল হওয়া ডেমু ট্রেন রোববার (০৯ অক্টোবর) থেকে রংপুর-পার্বতীপুর রুটে চলাচল করবে। বিষয়টি নিশ্চিত করেছেন বাংলাদেশ রেলওয়ে রাজশাহীর সহকারী চিফ অপারেটিং সুপারিনটেনডেন্ট (পশ্চিম) মো. আব্দুল আওয়াল।</span><br></p><p>বাংলাদেশ রেলওয়ের সিদ্ধান্ত অনুযায়ী, রোবাবর থেকে পার্বতীপুর-রংপুর রুটে একটি ডেমু ট্রেন চলাচল করবে। সময়সূচি অনুযায়ী, প্রতিদিন বিকেল ৫টা ১৫ মিনিটে পার্বতীপুর থেকে ছেড়ে যাবে এবং সন্ধ্যা ৬টা ১০ মিনিটে রংপুরে পৌঁছাবে। আবার সন্ধ্যা ৬টা ২০ মিনিটে রংপুর থেকে ছেড়ে সন্ধ্যা ৭টা ২০ মিনিটে পার্বতীপুরে পৌঁছাবে। চলাচলকারী ট্রেনটির কর্মদক্ষতা সন্তোষজনক হলে ভবিষ্যতে পার্বতীপুর থেকে দিনাজপুর, পার্বতীপুর থেকে কাউনিয়া ও কাউনিয়া থেকে কুড়িগ্রাম রুটেও চলাচল করবে।</p><p>রেলওয়ে সূত্রে জানা গেছে, ২০১৩ সালে সাড়ে ৬০০ কোটি টাকা ব্যয়ে ২০ সেট ডেমু ট্রেন আমদানি করা হয়। উদ্দেশ্য ছিল ওই ট্রেনের মাধ্যমে কাছাকাছি দূরত্বে ব্যাপক যাত্রী পরিবহন করা। চীনের তানসন ইন্টারন্যাশনাল ও ডানিয়াল টেকনিক্যাল রিসার্চ ইনস্টিটিউট ওই ডেমু ট্রেনের নির্মাতা। কম্পিউটার নিয়ন্ত্রিত ওই ট্রেনগুলো এক ধরনের বিশেষ সফটওয়্যার দিয়ে পরিচালিত যা প্রযুক্তি নির্মাণকারী প্রতিষ্ঠান বাংলাদেশকে হস্তান্তর করেনি।&nbsp;</p>', '1665258160.jpg', NULL, 'রোববার থেকে যাত্রী নিয়ে চলাচল করবে ডেমু ট্রেন', NULL, NULL, 0, 1, '2022-10-08 13:42:40', '2022-10-08 13:42:40', NULL),
(9, 19, '‘মুস্তাফিজই আমাদের সেরা বোলার’', '‘মুস্তাফিজই আমাদের সেরা বোলার’', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">অপ্রিয় হলেও সত্য, মুস্তাফিজুর রহমানের সাম্প্রতিক পারফরম্যান্স এখন তলানিতে গিয়ে ঠেকেছে। বিদেশের মাটিতে এই পেসার বল হাতে একেবারেই মলিন। যা উইকেট শিকার করছেন তার অধিকাংশই দুর্বল দলগুলোর বিপক্ষে। গতকাল শুক্রবার ত্রিদেশীয় সিরিজের প্রথম ম্যাচেও দ্য ফিজ ছিলেন বিবর্ণ। ৪ ওভার বোলিং করে এ পেসার ছিলেন উইকেট শুন্য, বিনিময়ে বিলিয়েছেন ৪৮ রান।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">মুস্তাফিজের এমন পারফরম্যান্সের পরও তার উপর ভরসা রাখছেন বাংলাদেশ ক্রিকেট বোর্ড। বোর্ডের অন্যতম নির্বাচক হাবিবুল বাশার সুমন জানালেন মুস্তাফিজই টি-টোয়েন্টি সংস্করণে টাইগারদের সেরা বোলার। আজ শনিবার গণমাধ্যমে এসব কথা বলেন বিসিবির এই নির্বাচক।</span></p>', '1665258250.jpg', NULL, '‘মুস্তাফিজই আমাদের সেরা বোলার’', NULL, NULL, 0, 1, '2022-10-08 13:44:10', '2022-10-08 13:44:10', NULL),
(10, 10, 'বাবা-মার সঙ্গ ছেড়ে দায়িত্বশীল হয়েছি : আলিয়া', 'বাবা-মার সঙ্গ ছেড়ে দায়িত্বশীল হয়েছি', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বর্তমানে বলিউডের অন্যতম সফল একজন অভিনেত্রী আলিয়া ভাট। স্টারকিডের তকমা নিয়েও স্বমহীমায় উজ্জ্বল যিনি। সমালোচকদের জবাব তিনি তার কাজের মাধ্যমে দিয়ে থাকেন। অল্প কিছুদিনের মধ্যেই মা হবেন রণবীর ঘরণী—চলছে সন্তান বরণের প্রস্তুতি।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">২০১২ সালে করণ জোহরের ‘স্টুডেন্ট অব দ্য ইয়ার’ দিয়ে যাত্রা শুরু আলিয়ার। বয়স ১৯-এ পা দিয়েই নেমে পড়েন অভিনয়ের মঞ্চে। এরপর শুধুই সামনে এগিয়ে চলার গল্প। চিপাগলি দিয়ে হারিয়ে যেতে নয় বরং অভিনয়ের মহাসড়কে দোর্দন্ড প্রতাপে চলতে এসেছেন ভাট কন্যা। তারই যেন জানান দিলেন ইমতিয়াজ আলির ‘হাইওয়ে’ সিনেমাতে। ওই সিনেমায় নায়িকা আলিয়া নন বরং অভিনেত্রী আলিয়া ভাট হয়ে সিনেপর্দায় ধরা দেন মেধাবী এ অভিনেত্রী।</span><br></p><p><br></p>', '1665258336.jpg', NULL, 'বাবা-মার সঙ্গ ছেড়ে', NULL, NULL, 0, 1, '2022-10-08 13:45:36', '2022-10-08 13:45:36', NULL),
(11, 7, 'জাতীয় পার্টিতে ফের ভাঙনের সুর!', 'জাতীয় পার্টিতে ফের ভাঙনের', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">রওশন এরশাদ ও গোলাম মোহাম্মদ কাদেরের অন্তর্দ্বন্দ্বে বিভক্ত হয়ে পড়েছে জাতীয় পার্টি / ছবি- ঢাকা পোস্ট</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">চিকিৎসা শেষে ব্যাংকক থেকে চলতি মাসেই (অক্টোবর) দেশে ফিরে আসার কথা রয়েছে সংসদের বিরোধীদলীয় নেতা ও জাতীয় পার্টির প্রধান পৃষ্ঠপোষক রওশন এরশাদের। তার দেশে ফেরার পরই নতুন করে ভাঙতে যাচ্ছে প্রয়াত হুসেইন মুহম্মদ এরশাদের প্রতিষ্ঠিত দলটি!</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জাতীয় পার্টির শীর্ষ নেতারা বলছেন, দলের বর্তমান চেয়ারম্যান ও এরশাদের ছোট ভাই গোলাম মোহাম্মদ কাদেরকে (জি এম কাদের) বাদ দিয়ে আগামী ২৬ নভেম্বর দলের সম্মেলনের ডাক দেন ভাবি রওশন এরশাদ। অন্যদিকে, জাপার বর্তমান চেয়ারম্যান বলছেন, দলের গঠনতন্ত্র মোতাবেক রওশন এরশাদের সম্মেলন ডাকার এখতিয়ার নেই। এরপরই দলে রওশনপন্থি প্রেসিডিয়াম সদস্য মসিউর রহমান রাঙ্গাসহ বেশ কয়েকজন নেতাকে বহিষ্কার করেন তিনি। এসব ঘটনাকে কেন্দ্র করে জাতীয় পার্টিতে নতুন করে অন্তর্কোন্দল দেখা দিয়েছে। বিভক্ত হয়ে পড়েছে দুটি গ্রুপে।</span><br></p><p><br></p>', '1665258421.jpg', NULL, 'জাতীয় পার্টিতে ফের', NULL, NULL, 0, 1, '2022-10-08 13:47:01', '2022-10-08 13:47:01', NULL),
(12, 22, 'সুষ্ঠু নির্বাচন চাই, ইভিএম চাই না: জিএম কাদের', 'সুষ্ঠু নির্বাচন চাই, ইভিএম চাই না', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বনানী কার্যাল‌য়ে রোববার নেতাকর্মী‌দের স‌ঙ্গে মতাবি‌নিময় সভায় কথা ব‌লেন জাতীয় পার্টির চেয়ারম্যান জিএম কা‌দের। </span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বনানী কার্যাল‌য়ে রোববার নেতাকর্মী‌দের স‌ঙ্গে মতাবি‌নিময় সভায় কথা ব‌লেন জাতীয় পার্টির চেয়ারম্যান জিএম কা‌দের।&nbsp;</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জাতীয় পার্টির (জাপা) চেয়ারম্যান গোলাম মোহাম্মদ (জিএম) কাদের বলেছেন, ‘অবাধ, সুষ্ঠু ও গ্রহণযোগ্য নির্বাচন চাই। মানুষের ভোটাধিকার নিশ্চিত করতে চাই। ইভিএম চাই না।’</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জাপা চেয়ারম্যান ব‌লেন, ‘রাজনী‌তি‌তে কারো সাথে বন্ধুত্ব হতে পারে। কিন্তু জাতীয় পার্টি কারো দাসত্ব করবে না। দালালি জাপার রাজনীতি নয়।’</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">দ‌লের বনানী কার্যাল‌য়ে আজ রোববার ময়মনসিংহ জেলা জাপার নেতাকর্মী‌দের স‌ঙ্গে মতাবি‌নিময় সভায় এ কথা ব‌লেন জিএম কা‌দের। জাতীয় পার্টির ময়মনসিংহ বিভাগীয় অতিরিক্ত মহাসচিব সংসদ সদস্য ফখরুল ইমামের সভাপতিত্বে সভায় বি‌রোধীদলীয় উপ‌নেতা ব‌লেন, ‘বড় গাছের ছায়াতলে ছোট গাছ বেড়ে উঠতে পারে না। আবার বড় গাছের ছায়াতলে না থাকলে ঝড়-ঝঞ্জা আসে। তা মোকাবেলা করেই দাঁড়াতে হয়। কারো দালালি অথবা চাকর হয়ে রাজনীতি করলে সম্মান পাওয়া যায় না।’</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জিএম কা‌দের নিজ দ‌লের নেতা‌দের উ‌দ্দে‌শ্যে ব‌লেন, ‘দুর্ভাগ্য, আমাদের কেউ কেউ মনে করছেন, একটি দল নির্বাচনে কারচুপি করে জয়ী হয়ে শর্টকাট পদ্ধতিতে তাদের মন্ত্রী-এমপি বানা‌বেন। এরা জাতীয় পার্টির জন্য জীবাণু। তাদের জাতীয় পার্টি থেকে চলে যেতে হবে অথবা সংশোধন হতে হবে।’</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জাপা হঠাৎ বেসু‌রো হ‌য়ে সরকা‌রের সমা‌লোচনা কর‌ছে। এ‌তে কা‌রো কা‌রো স‌ন্দেহ, দলটি বিএন‌পির স‌ঙ্গে হাত মি‌লি‌য়েছে। এ ধারণা নাকচ ক‌রে জিএম কা‌দের ব‌লে‌ছেন, ‘জাপা দেশের মানুষের পক্ষে কথা বলে। দেশের মঙ্গলের রাজনীতি ক‌রে। তা দেখে অনেকেই মনে করছেন, আমরা কারো সাথে হাত মিলিয়েছি। আমরা আসলে জাতীয় পার্টির রাজনীতি করছি। নাকে খত দিয়ে রাজনীতি করবো না।’</span><br></p>', '1665321986.jpg', NULL, 'সুষ্ঠু নির্বাচন চাই, ইভিএম চাই না', NULL, NULL, 0, 1, '2022-10-09 07:26:26', '2022-10-09 07:26:26', NULL),
(13, 22, 'সবজি বাজারে ভারতের অর্থমন্ত্রী, করলেন দর-দাম', 'সবজি বাজারে ভারতের অর্থমন্ত্রী', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">অনলাইন ডেস্ক :&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বাজারে গিয়ে ক্রেতা-বিক্রেতাদের সঙ্গে দর-দাম নিয়ে কথা বললেন ভারতের অর্থমন্ত্রী নির্মলা সীতারমন। ভারতীয় সংবাদমাধ্যম&nbsp; ইন্ডিয়ান এক্সপ্রেসের প্রতিবেদনে জানানো হয়েছে, শনিবার (৮ অক্টোবর) চেন্নাই সফরে দিনভর বিভিন্ন কর্মসূচিতে অংশ নেন অর্থমন্ত্রী। সন্ধ্যায় তিনি সবজি কিনতে ময়লাপুর কাঁচাবাজারে যান। সেখানে ক্রেতা-বিক্রেতাদের সঙ্গে দর-দাম নিয়ে কথা বলেন।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তাকে বাজারে দেখে বিস্মিত হন অনেকে। কেউ কেউ সুযোগ বুঝে তুলেছেন ছবিও। সেসব ছবি ও ভিডিও ভাইরাল হয়েছে সামাজিক যোগাযোগ মাধ্যমে।&nbsp;</span><br></p>', '1665322149.jpg', NULL, 'সবজি বাজারে ভারতের অর্থমন্ত্রী', NULL, NULL, 0, 1, '2022-10-09 07:29:09', '2022-10-09 07:29:09', NULL),
(14, 23, 'ইউক্রেনে ক্ষেপণাস্ত্র হামলায় শিশুসহ নিহত ১৭', 'ইউক্রেনে ক্ষেপণাস্ত্র হামলায় শিশুসহ নিহত ১৭', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">অনলাইন ডেস্ক : ইউক্রেনের দক্ষিণাঞ্চলীয় শিল্প শহর জাপোরিঝিয়ায় সাতটি রুশ ক্ষেপণাস্ত্র হামলায় এক শিশুসহ অন্তত ১৭ জন নিহত হয়েছে। দেশটির কর্তৃপক্ষ শনিবার এ কথা জানিয়েছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">দক্ষিণ ফ্রন্টের আর্টিলারি যুদ্ধ থেকে মাত্র ৪০ কিলোমিটার (২৫ মাইল) দূরে বৃহস্পতিবার ভোরের আগে শহরের কেন্দ্রে তিনটি ক্ষেপণাস্ত্র আঘাত হানে। খবর বাসসের।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ইউক্রেনের রাষ্ট্রীয় জরুরি পরিষেবা টেলিগ্রামে বলেছে, ‘মোট ১৭ জন নিহত হয়েছে।’ তাদের মধ্যে এক শিশুও রয়েছে। মূল রাস্তায় একটি পাঁচতলা আবাসিক ভবন প্রায় ধ্বংস হয়ে গেছে।</span><br></p>', '1665323215.jpg', NULL, 'ইউক্রেনে ক্ষেপণাস্ত্র হামলায়', NULL, NULL, 0, 1, '2022-10-09 07:46:55', '2022-10-09 07:46:55', NULL),
(15, 23, 'আজ বিশ্ব ডাক দিবস', 'aj-bisw-dak-dibs', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আজ বিশ্ব ডাক দিবস। \'বিশ্বের জন্য ডাকঘর\' প্রতিপাদ্য নিয়ে বিশ্বের অন্যান্য দেশের সঙ্গে দিবসটি পালনের উদ্যোগ নিয়েছে ডাক অধিদপ্তর। এ উপলক্ষে আলোচনা সভা, পত্রলিখন প্রতিযোগিতা এবং বাংলাদেশ বেতার ও টেলিভিশনে বিশেষ আলোচনা অনুষ্ঠানের আয়োজন করা হয়েছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">১৮৭৪ সালের ৯ অক্টোবর সুইজারল্যান্ডে ২২ দেশের প্রতিনিধিদের অংশগ্রহণে অনুষ্ঠিত আন্তর্জাতিক সম্মেলনে গঠিত হয় \'ইউনিভার্সেল পোস্টাল ইউনিয়ন\' (ইউপিইউ)। ১৯৬৯ সালে জাতিসংঘে প্রস্তাব পাসের মাধ্যমে ৯ অক্টোবরকে বিশ্ব ডাক দিবস ঘোষণা করা হয়। বাংলাদেশ ১৯৭৩ সালে জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের নেতৃত্বে ইউপিইউ এবং আন্তর্জাতিক টেলিযোগাযোগ ইউনিয়নের (আইটিইউ) সদস্য পদ লাভ করে। এর পর থেকে দেশে প্রতিবছর বিশ্ব ডাক দিবস পালিত হয়ে আসছে।</span><br></p>', '1665323404.jpg', NULL, 'আজ বিশ্ব ডাক দিবস', NULL, NULL, 0, 1, '2022-10-09 07:50:04', '2022-10-13 08:53:29', NULL),
(16, 23, 'কমে আসছে ব্যাংকের উদ্বৃত্ত তারল্য', 'কমে আসছে ব্যাংকের', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">﻿﻿ডলার বিক্রির কারণে একদিকে বাজার থেকে টাকা উঠে আসছে কেন্দ্রীয় ব্যাংকে। একই সময়ে পণ্যের দর বৃদ্ধির প্রভাবে বেসরকারি খাতে ঋণ বাড়ছে। তবে মূল্যস্ফীতি ব্যাপক বেড়ে যাওয়াসহ বিভিন্ন কারণে আমানত তেমন বাড়ছে না। এতে করে কমে আসছে ব্যাংক খাতের উদ্বৃত্ত তারল্য। গত আগস্ট শেষে ব্যাংক খাতে উদ্বৃত্ত তারল্য ১ লাখ ৭৪ হাজার ১৭৭ কোটি টাকায় নেমেছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বাংলাদেশ ব্যাংকের তথ্য অনুযায়ী, চলতি বছরের জুন শেষে ব্যাংক খাতে উদ্বৃত্ত তারল্য ছিল ২ লাখ ৩ হাজার ৪২৪ কোটি টাকা। গত জুলাইয়ে ১ লাখ ৮৮ হাজার ৭২৫ কোটি টাকায় নামে। আগস্টে কমেছে আরও ১৪ হাজার কোটি টাকা। গত বছরের আগস্ট শেষে ব্যাংক খাতে উদ্বৃত্ত তারল্য ছিল ২ লাখ ৩১ হাজার কোটি টাকার বেশি।</span><br></p><p><br></p>', '1665323452.jpg', NULL, 'কমে আসছে ব্যাংকের', NULL, NULL, 0, 1, '2022-10-09 07:50:52', '2022-10-09 07:50:52', NULL),
(17, 23, 'ছাত্রদল নেতাকে ডিবি পরিচয়ে তুলে নেওয়ার অভিযোগ', 'ছাত্রদল নেতাকে ডিবি পরিচয়ে তুলে নেওয়ার অভিযোগ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বরিশাল জেলা ছাত্রদলের সহ সাধারণ সম্পাদক ফোরকান হোসেন ইরানকে শনিবার রাত সাড়ে ১০টায় ডিবি পুলিশ পরিচয়ে তুলে নিয়ে যাওয়া হয়েছে বলে অভিযোগ করেছেন বিএনপির সিনিয়র যুগ্ম মহাসচিব রুহুল কবির রিজভী।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তিনি বলেন, শনিবার সারারাত ও সকালে বরিশালের সব থানা, ডিবি অফিসে খোঁজ করেও ছাত্রদল নেতা ফোরকান হোসেন ইরানের কোনো সন্ধান পাওয়া যায়নি। পুলিশ অস্বীকার করছে। এই ঘটনা আজ রোববার ১২ টার দিকে বরিশাল কোতোয়ালি মডেল থানায় সাধারণ ডায়েরি করা হয়েছে।</span><br></p>', '1665323540.jpg', NULL, 'ছাত্রদল নেতাকে ডিবি পরিচয়ে', NULL, NULL, 0, 1, '2022-10-09 07:52:20', '2022-10-09 07:52:20', NULL),
(18, 4, 'সংসদ অধিবেশন শুরু ৩০ অক্টোবর', 'সংসদ অধিবেশন শুরু ৩০ অক্টোবর', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">একাদশ জাতীয় সংসদের ২০তম অধিবেশন শুরু হচ্ছে আগামী ৩০ অক্টোবর (রোববার) থেকে।&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১২ অক্টোবর) রাষ্ট্রপতি মো. আবদুল হামিদ এ অধিবেশন আহ্বান করেছেন।</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জানা গেছে, ১২ অক্টোবর বিকেল সাড়ে ৪টায় এই অধিবেশন শুরু হওয়ার কথা রয়েছে। সংবিধানের ৭২ অনুচ্ছেদের (১) দফায় প্রদত্ত ক্ষমতাবলে এ অধিবেশন আহ্বান করেছেন রাষ্ট্রপতি।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">প্রসঙ্গত, একটি অধিবেশন শেষ হওয়ার পর ৬০ দিনের মধ্যে আরেকটি অধিবেশন আহ্বানের সাংবিধানিক বাধ্যবাধকতা রয়েছে। ১ সেপ্টেম্বর সংসদের ১৯তম অধিবেশন শেষ হয়।</span><br></p>', '1665585034.jpg', NULL, 'সংসদ অধিবেশন', NULL, NULL, 0, 1, '2022-10-12 08:30:34', '2022-10-12 08:30:34', NULL),
(19, 4, 'কর্ণফুলীতে ট্রলার ডুবে ৭ জন নিখোঁজ', 'কর্ণফুলীতে ট্রলার ডুবে ৭ জন নিখোঁজ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">চট্টগ্রামের কর্ণফুলী নদীর ইছানগর এলাকায় এফভি মাগফেরাত নামে মাছ ধরার একটি ট্রলার ডুবে গেছে । এ ঘটনায় এখন পর্যন্ত সাতজন নিখোঁজ রয়েছেন। মঙ্গলবার দিবাগত রাত একটা দিকে কর্ণফুলী নদীর সি-রিসোর্স ডকইয়ার্ড ঘাট এলাকায় ট্রলারটি ডুবে যায়।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">নিখোঁজরা হলেন- ট্রলারের স্কিপার ফারুক বিন আব্দুল্লাহ, সেকেন্ড ইঞ্জিনিয়ার জহিরুল ইসলাম, চিফ অফিসার মো. সাইফুল ইসলাম, গ্রিজার প্রদীপ চৌধুরী, ফিশ মাস্টার মো. জহির উদ্দিন, ডক সদস্য রহমত মিয়া। আরেকজনের নাম জানা যায়নি।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার সদরঘাট নৌ থানার ওসি একরাম উল্লাহ ঢাকা পোস্টকে বলেন, র‍্যাঙ্কন কোম্পানির মালিকানাধীন এফভি মাগফেরাত নামের ফিশিং ট্রলারটি সি-রিসোর্স ডকে মেরামতের জন্য ওঠানোর সময় প্রপেলার (পাখা) খুলে গেলে ট্রলারটি নিয়ন্ত্রণ হারিয়ে নোঙর করে রাখা অন্যান্য ফিশিং বোট ও বয়ার সঙ্গে ধাক্কা লেগে কাত হয়ে ডুবে যায়।</span><br></p>', '1665585907.jpg', NULL, 'কর্ণফুলীতে ট্রলার', NULL, NULL, 0, 1, '2022-10-12 08:45:07', '2022-10-12 08:45:07', NULL),
(20, 4, 'প্রধানমন্ত্রীর উপস্থিতিতে র‌্যাংক ব্যাজ পরলেন আইজিপি', 'প্রধানমন্ত্রীর উপস্থিতিতে র‌্যাংক ব্যাজ পরলেন আইজিপি', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">প্রধানমন্ত্রীর উপস্থিতিতে র‌্যাংক ব্যাজ পরলেন আইজিপি</span><br></p><p>প্রধানমন্ত্রী শেখ হাসিনার উপস্থিতিতে নবনিযুক্ত পুলিশ মহাপরিদর্শক (আইজিপি) চৌধুরী আবদুল্লাহ আল-মামুনকে র‌্যাংক ব্যাজ পরানো হয়েছে।</p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১২ অক্টোবর) সকালে গণভবনে নবনিযুক্ত আইজিপিকে প্রধানমন্ত্রীর পক্ষে র‌্যাংক ব্যাজ পরান স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খান ও স্বরাষ্ট্র মন্ত্রণালয়ের জননিরাপত্তা বিভাগের সিনিয়র সচিব মো. আখতার হোসেন।</span><br></p><p>পুলিশ সদর দপ্তরের এআইজি (মিডিয়া অ্যান্ড পিআর) মো. মনজুর রহমান এ তথ্য নিশ্চিত করেছেন।</p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">উল্লেখ্য, গত ২২ সেপ্টেম্বর স্বরাষ্ট্র মন্ত্রণালয় কর্তৃক প্রজ্ঞাপন জারির মাধ্যমে তাকে বাংলাদেশ পুলিশের মহাপরিদর্শক (আইজিপি) হিসেবে মনোনীত করা হয়। ৩০ সেপ্টেম্বর আইজিপি হিসেবে দায়িত্ব গ্রহণ করেন তিনি।</span><br></p>', '1665586898.jpg', NULL, 'প্রধানমন্ত্রীর উপস্থিতিতে', NULL, NULL, 0, 1, '2022-10-12 09:01:38', '2022-10-12 09:01:38', NULL),
(21, 4, 'আরও দুই ঘণ্টা সিএনজি স্টেশন বন্ধ রাখতে চায় সরকার', 'আরও দুই ঘণ্টা সিএনজি স্টেশন বন্ধ রাখতে চায় সরকার', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গ্যাস সংকট মোকাবিলায় সিএনজি স্টেশনগুলো আরও দুই ঘণ্টা বন্ধ রাখতে চায় সরকার। মঙ্গলবার সিএনজি স্টেশন মালিকদের সঙ্গে রাষ্ট্রায়ত্ত তেল-গ্যাস কোম্পানি পেট্রোবাংলার এক বৈঠকে এই সিদ্ধান্ত জানিয়ে দেওয়া হয়েছে। তবে কবে থেকে ও কয়টা থেকে কয়টা পর্যন্ত সরবরাহ বন্ধ থাকবে, এ বিষয়ে সিদ্ধান্ত জানানো হয়নি।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গত ১ মার্চের আগে পর্যন্ত সন্ধ্যা ৬টা হতে রাত ১০টা পর্যন্ত চার ঘণ্টা গ্যাস বিক্রি বন্ধ ছিল। এরপর ১ মার্চ থেকে সিএনজি স্টেশনগুলো সন্ধ্যা ৬টা থেকে রাত ১১টা পর্যন্ত ৫ ঘণ্টা করে বন্ধ রাখা হচ্ছে। আর এখন এর সাথে আরও দুই ঘণ্টা যুক্ত হলে দিনে মোট ৭ ঘণ্টা বন্ধ থাকবে সিএনজি স্টেশনগুলো।</span><br></p><p><br></p>', '1665587149.jpg', NULL, 'আরও দুই ঘণ্টা', NULL, NULL, 0, 1, '2022-10-12 09:05:49', '2022-10-12 09:05:49', NULL),
(22, 4, 'কাতা‌রে বাংলা‌দে‌শের নতুন রাষ্ট্রদূত নজরুল ইসলাম', 'কাতা‌রে বাংলা‌দে‌শের নতুন রাষ্ট্রদূত নজরুল ইসলাম', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কূটনী‌তিক মোহাম্মাদ নজরুল ইসলামকে কাতা‌রে নতুন রাষ্ট্রদূত হি‌সে‌বে নি‌য়োগ দেওয়ার সিদ্ধান্ত নি‌য়ে‌ছে সরকার। তিনি রাষ্ট্রদূত মো. জসীম উদ্দীনের স্থলাভিষিক্ত হ‌বেন।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১২ অক্টোবর) পররাষ্ট্র মন্ত্রণাল‌য়ের ফেসবুক পেজে এক বার্তায় এ তথ‌্য জানা‌নো হ‌য়ে‌ছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বর্তমা‌নে ইথিওপিয়ায় বাংলা‌দে‌শের রাষ্ট্রদূ‌তের দা‌য়িত্ব পালন কর‌ছেন পেশাদার কূটনী‌তিক নজরুল। তি‌নি ইথিওপিয়ায় পাশাপা‌শি সুদান, দক্ষিণ সুদান, বুরুন্ডি ও আফ্রিকান ইউনিয়নে (এইউ) অনাবাসিক রাষ্ট্রদূতেরও দা‌য়িত্ব পালন কর‌ছেন।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিসিএস ১৫তম ব্যাচের পররাষ্ট্র ক্যাডারের কর্মকর্তা নজরুল এর আগে রোম, কলকাতা ও জেনেভায় কর্মরত ছিলেন।</span><br></p>', '1665587226.jpg', NULL, 'কাতা‌রে বাংলা‌দে‌শের', NULL, NULL, 0, 1, '2022-10-12 09:07:06', '2022-10-12 09:07:06', NULL),
(23, 4, 'বিমানে টিকিট সিন্ডিকেটের অভিযোগ, দুদকের অভিযান', 'বিমানে টিকিট সিন্ডিকেটের অভিযোগ, দুদকের অভিযান', '<p><br></p><p>অসাধু কর্মকর্তা ও ট্রাভেল এজেন্সির যোগসাজশে সিন্ডিকেট করে বাংলাদেশ বিমানের টিকিটের কৃত্রিম সংকট তৈরির অভিযোগ খতিয়ে দেখতে অভিযান চালিয়েছে দুর্নীতি দমন কমিশন (দুদক)।</p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১২ অক্টোবর) বিমান বাংলাদেশ এয়ারলাইন্সের প্রধান কার্যালয়ে অভিযান পরিচালনা করে দুদক টিম।</span><br></p><p>সংস্থাটির সহকারী পরিচালক আফনান জান্নাত কেয়ার নেতৃত্ব উপ-সহকারী পরিচালক হাবিবুর রহমান ও রোকনুজ্জামান রোকনের সমন্বয়ে গঠিত একটি টিম এনফোর্সমেন্ট অভিযান পরিচালনা করে।</p>', '1665592253.jpg', NULL, 'বিমানে টিকিট', NULL, NULL, 0, 1, '2022-10-12 10:30:53', '2022-10-12 10:30:53', NULL),
(24, 4, 'শান্তিরক্ষা মিশনে লেবাননের পথে নৌবাহিনীর ৭৫ সদস্য', 'santirksha-misne-lebanner-pthe-noubahineer-75-sdsz', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">লেবাননে নিয়োজিত জাতিসংঘ শান্তিরক্ষা মিশন শন ইউনাইটেড নেশন্স ইন্টারিম ফোর্স ইন লেবাননে (ইউনিফিল) অংশ নিতে বাংলাদেশ নৌবাহিনীর ৭৫ জন সদস্যের একটি দল বুধবার চট্টগ্রাম শাহ আমানত আন্তর্জাতিক বিমানবন্দর ত্যাগ করেছে।/</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আন্তঃবাহিনী জনসংযোগ পরিদপ্তরের (আইএসপিআর) পাঠানো এক সংবাদ বিজ্ঞপ্তিতে এই তথ্য জানানো হয়েছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আইএসপিআর জানায়, নৌসদস্যরা&nbsp; বাংলাদেশ নৌবাহিনী কন্টিনজেন্ট ‘ব্যানকন-১৩’ এর আওতায় লেবাননে মোতায়েন নৌবাহিনীর যুদ্ধজাহাজ ‘সংগ্রাম’ এ যোগদান করবেন। চট্টগ্রাম নৌ অঞ্চলের চিফ স্টাফ অফিসার ক্যাপ্টেন মোহাম্মদ ফয়জুল হক লেবাননগামী নৌসদস্যদের আনুষ্ঠানিকভাবে বিদায় জানান। এর আগে গত ২ অক্টোবর ৩৫ জন নৌসদস্যের একটি অগ্রগামী দল ইউনিফিলে যোগদান করে।</span><br></p>', '1665592510.jpg', NULL, 'শান্তিরক্ষা মিশনে', NULL, NULL, 0, 1, '2022-10-12 10:35:10', '2022-10-14 06:08:39', NULL),
(25, 4, '‘সম্ভাব্য ঘূর্ণিঝড় মোকাবিলায় মাঠ প্রশাসন প্রস্তুত’', '‘সম্ভাব্য ঘূর্ণিঝড় মোকাবিলায় মাঠ প্রশাসন প্রস্তুত’', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আগামী সপ্তাহে বঙ্গোপসাগরে একটি শক্তিশালী ঘূর্ণিঝড় (সিত্রাং) আঘাত হানতে পারে। এরই মধ্যে মাঠ প্রশাসন ও স্বেচ্ছাসেবকদের কাছে ঘূর্ণিঝড়ের বার্তাটি পৌঁছে দেওয়া হয়েছে, তারা প্রস্তুত আছেন বলে জানিয়েছেন দুর্যোগ ব্যবস্থাপনা ও ত্রাণ প্রতিমন্ত্রী মো. এনামুর রহমান।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১২ অক্টোবর) সচিবালয়ে আন্তর্জাতিক দুর্যোগ প্রশমন দিবস উপলক্ষে আয়োজিত সংবাদ সম্মেলনে এক প্রশ্নের জবাবে তিনি এসব কথা জানান।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">প্রতিমন্ত্রী বলেন,&nbsp; যুক্তরাষ্ট্রের গ্লোবাল ফোরকাস্ট সিস্টেমের দেওয়া তথ্য মতে, আগামী সপ্তাহে বঙ্গোপসাগরে একটি শক্তিশালী ঘূর্ণিঝড় সৃষ্টি হতে পারে। চলতি মাসের ১৭ তারিখে লঘুচাপ সৃষ্টি হবে। যেটা পরবর্তী সময়ে নিম্নচাপে পরিণত হয়ে ঝড় হবে। এটি ভারতের অন্ধ্র প্রদেশ হয়ে পশ্চিমবঙ্গ ও আমাদের সুন্দরবনের কিছু অংশে আঘাত হানতে পারে। এটি আম্ফানের মতো সুপার সাইক্লোনে রূপান্তরিত হতে পারে। আমাদের আবহাওয়াবিদরা জানিয়েছেন, তারা এটার ওপর নজর রাখছেন।&nbsp;</span><br></p>', '1665592584.jpg', NULL, '‘সম্ভাব্য ঘূর্ণিঝড় মোকাবিলায় মাঠ প্রশাসন প্রস্তুত’', NULL, NULL, 0, 1, '2022-10-12 10:36:24', '2022-10-12 10:36:24', NULL),
(26, 19, 'লেভানডভস্কির পানে তাকিয়ে জাভি', 'লেভানডভস্কির পানে তাকিয়ে জাভি', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">﻿দলবদলের সময় গল্পের কেন্দ্রবিন্দুতে ছিল বার্সেলোনা। বিশ্বমানের ফুটবলারকে কেনার সঙ্গে বিক্রিও করেছে অনেককে। আর্থিক সংকট কাটিয়ে ওঠা কাতালানরা চাইলে লিওনেল মেসিকেও পুনরায় ফেরাতে পারে। মৌসুমের শুরুর মতো চ্যাম্পিয়ন্স লিগেও আলোচনায় বার্সেলোনা। বাজে সূচনা করা জাভি হার্নান্দেজের দল যে এখন গ্রুপ পর্ব থেকে বিদায়ের শঙ্কায়। গত সপ্তাহে ইন্টার মিলানের মাঠে ১-০ গোলের পরাজয়ে মৃত্যুকূপ খ্যাত গ্রুপ \'সি\' তে বেকায়দায় স্প্যানিশ জায়ান্টরা।</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> ডুবন্ত অবস্থায় থাকা রবার্ট লেভানডভস্কিদের তীরে ওঠার শেষ সুযোগ নিজ আঙ্গিনায়। ন্যু ক্যাপে বুধবার সেই ইন্টারের মুখোমুখি হবে তাঁরা। এই ম্যাচ জিতলেই স্বস্তি ফিরবে বার্সেলোনা শিবিরে। নক আউট পর্বে ওঠার সম্ভাবনা উজ্জ্বল হবে তাদের। বাংলাদেশ সময় রাত ১টায় শুরু হবে স্পেন এবং ইতালির দুই জায়ান্টের লড়াই।</span><br></p>', '1665596498.jpg', NULL, 'লেভানডভস্কির পানে তাকিয়ে জাভি', NULL, NULL, 0, 1, '2022-10-12 11:41:38', '2022-10-12 11:41:38', NULL),
(27, 5, 'বিশ্ব ইজতেমা শুরু ১৩ জানুয়ারি', 'বিশ্ব ইজতেমা শুরু ১৩ জানুয়ারি', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">২০২৩ সালের বিশ্ব ইজতেমার দিন-তারিখ ঠিক করা হয়েছে। প্রথম পর্ব অনুষ্ঠিত হবে ১৩-১৫ জানুয়ারি। এতে মাওলানা জোবায়ের পক্ষের লোকজন অংশ নেবেন। আর দ্বিতীয় পর্ব ২০ থেকে ২২ জানুয়ারি অনুষ্ঠিত হবে। ওই পর্বে মাওলানা ওয়াসেক-এর অনুসারীরা অংশ নেবেন।</span><br></p><p>&nbsp;<span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বৃহস্পতিবার (১৩ অক্টোবর) বিকেলে স্বরাষ্ট্র মন্ত্রণালয়ের সম্মেলন কক্ষে বিশ্ব ইজতেমার তারিখ নির্ধারণ ও আইন শৃঙ্খলা সংক্রান্ত সভা অনুষ্ঠিত হয়। পরে সাংবাদিকদের এসব তথ্য জানান স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খান কামাল।</span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">স্বরাষ্ট্রমন্ত্রী বলেন, টঙ্গীর ঐতিহাসিক বিশ্ব ইজতেমা গত দুই বছর করোনার কারণে অনুষ্ঠিত হয়নি। করোনা নিয়ন্ত্রণে আসায় প্রধানমন্ত্রী নির্দেশনা দিয়েছেন, ২০২৩ সালে বিশ্ব ইজতেমা যেন সংক্ষিপ্ত আকারে স্বাস্থ্যবিধি মেনে করা যায় সেই ব্যবস্থা করতে। তবে এই ইজতেমা করার ক্ষেত্রে তাবলীগের দুই পক্ষের মধ্যে একটু মতবিরোধ আছে। মতবিরোধ নিরসনে গতবার আমরা দুই ভাগে ইজতেমা করার পরামর্শ দিয়েছিলাম, তারা সেটা করেছে। এবারও ঠিক সেভাবেই করতে বলা হয়েছে।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তিনি বলেন, এক দলের নেতা হলেন মাওলানা যুবায়ের আহমদ এবং অন্যদলের নেতা হলেন ওয়াসিফুল ইসলাম। দুজনই আগে একসঙ্গে তাবলিগ করতেন। এখন তারা দুইজন দুই প্রান্তে চলে গেছেন। তাদের সবাইকে এখানে আমন্ত্রণ জানানো হয়েছিল, তারা এসেছেন। তারা যেন বিশ্ব ইজতেমা সুন্দরভাবে সুসম্পন্ন করেন, এরকম একটা অনুরোধ রেখেছিলাম। পাশাপাশি আরো একটি অনুরোধ করেছি, যে দুজন একত্রিত হয়ে সিদ্ধান্ত দেন, কে আগে করবেন কে পরে করবেন কিংবা একসঙ্গে করতে পারবেন কি না।&nbsp;</span><br></p>', '1665672991.jpg', NULL, 'বিশ্ব ইজতেমা শুরু ১৩ জানুয়ারি', NULL, NULL, 0, 1, '2022-10-13 08:56:31', '2022-10-13 08:56:31', NULL),
(28, 5, 'মঙ্গলবারের মধ্যে আঘাত হানবে সিত্রাং', 'মঙ্গলবারের মধ্যে আঘাত হানবে সিত্রাং', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আন্দামান সাগর ও তৎসংলগ্ন এলাকায় সৃষ্ট নিম্নচাপটি শেষ পর্যন্ত ঘূর্ণিঝড়ে পরিণত হবে ধরে নিয়ে ব্যাপক প্রস্ততি নিতে শুরু করেছে ভারতের পশ্চিমবঙ্গ সরকার। এটি ঘূর্ণিঘড়ে পরিণত হলে এর নাম দেওয়া হবে সিত্রাং। থাইল্যান্ডের দেওয়া এই নামের অর্থ ‘পাতা।’&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">সিত্রাং-এর গতিপথ কী হবে তা নিয়ে বাংলাদেশ আবহাওয়া অধিদপ্তর থেকে সুনির্দিষ্ট কোনো বক্তব্য এখনও আসেনি। তবে গতকালই চট্টগ্রাম, কক্সবাজার, মোংলা ও পায়রা সমুদ্রবন্দরকে পরবর্তী নির্দেশনা সাবধানতার সাথে পর্যবেক্ষণ করতে বলা হয়েছে।&nbsp; &nbsp;&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এদিকে ভারতের আলিপুর আবহাওয়া দপ্তর বলছে, আগামী ৪৮ ঘণ্টার মধ্যে বঙ্গোপসাগরে গভীর নিম্নচাপ তৈরি হবে। প্রথমে এটি উত্তর পশ্চিম দিকে অগ্রসর হলেও পরে তার অভিমুখ হবে উত্তর দিক। ২৪ অক্টোবর নিম্নচাপটি ঘূর্ণিঝড়ে পরিণত হবে। ২৫ অক্টোবর নাগাদ বাংলাদেশ এবং পশ্চিমবঙ্গ উপকূলে আঘাত হানবে ঘূর্ণিঝড়টি।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কানাডার সাসক্যাচুয়ান বিশ্ববিদ্যালয়ের আবহাওয়া ও জলবায়ু গবেষক মোস্তফা কামাল পলাশ শুক্রবার বিকেল ৩টার পর ফেসবুকে একটি স্ট্যাটাসে লিখেছেন- আজ সন্ধ্যার পরে নিম্নচাপটি ঘূর্ণিঝড় সৃষ্টির জন্য একটি আদর্শ পরিবেশে পৌঁছে যাওয়ার প্রবল সম্ভাবনা রয়েছে। আর আগামীকাল সকালের মধ্যে এটি গভীর নিম্নচাপে পরিণত হতে পারে। শনিবার দিন শেষে ডিপ্রেশনটি আরও সংগঠিত হয়ে পূর্ণ ঘূর্ণিঝড়ে পরিণত হওয়ার প্রবল সম্ভাবনা রয়েছে।&nbsp; &nbsp;</span><br></p>', '1666351884.jpg', NULL, 'মঙ্গলবারের মধ্যে আঘাত', NULL, NULL, 0, 1, '2022-10-21 05:31:24', '2022-10-21 05:31:24', NULL),
(29, 19, 'খুলনায় এবার লঞ্চ চলাচল বন্ধ', 'খুলনায় এবার লঞ্চ চলাচল বন্ধ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">খুলনায় চলছে দুই দিনের বাস ধর্মঘট। এরই মধ্যে বন্ধ করে দেওয়া হয়েছে লঞ্চ চলাচলও। বেতন বৃদ্ধিসহ ১০ দফা দাবিতে এ ধর্মঘট ডেকেছে নৌ-যান শ্রমিকরা। শুক্রবার (২১ অক্টোবর) সকাল থেকে খুলনা লঞ্চ টার্মিনাল থেকে কোনো লঞ্চ ছেড়ে যায়নি। </span></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ফলে খুলনা থেকে দক্ষিণ দিকে (দাকোপ, কয়রা, সাতক্ষীরা) যাওয়ার সব লঞ্চ চলাচল বন্ধ রয়েছে। এতে ভোগান্তিতে পড়েছেন যাত্রীরা।&nbsp;&nbsp;</span><br></p>', '1666352067.jpg', NULL, 'খুলনায় এবার লঞ্চ চলাচল বন্ধ', NULL, NULL, 0, 2, '2022-10-21 05:34:27', '2022-10-21 05:34:27', NULL),
(30, 7, 'সম্মেলনকে কেন্দ্র করে বিএনপির কেউ গ্রেপ্তার হয়নি', 'সম্মেলনকে কেন্দ্র করে বিএনপির কেউ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিএনপির সম্মেলনকে কেন্দ্র করে কেউ গ্রেপ্তার হয়নি দাবি করে স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খান কামাল বলেছেন, পুলিশ যাদেরকে গ্রেপ্তার করছে, নিয়মিত প্রক্রিয়ায় করছে। যাদের নামে ওয়ারেন্ট আছে বা যারা ভাংচুর করেছে, তাদেরকে। সম্মেলনকে উদ্দেশ্য করে কোনো গ্রেপ্তার হয় না।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">শনিবার (২২ অক্টোবর) রাজধানীর ইস্কাটনে বিয়াম ফাউন্ডেশনে বিসিএস উইমেন নেটওয়ার্কের এজিএমে প্রধান অতিথির বক্তব্য শেষে সাংবাদিকদের এক প্রশ্নের জবাবে তিনি এসব কথা বলেন।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">খুলনায় বিএনপির বিভাগীয় গণসমাবেশের আগের দিন শুরু হয়েছে দুই দিনের ‘পরিবহন ধর্মঘট’। এ কারণে খুলনায় কোনো যানবাহন প্রবেশ করতে পারছে না।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এক প্রশ্নের জবাবে মন্ত্রী বলেন, বাস মালিকরা কেন বাস বন্ধ করেছে সেটা আমাদের জানার বিষয় নয়। এখন পর্যন্ত আমরা সঠিক তথ্য জানি না, কেন বন্ধ করেছে।</span><br></p>', '1666447610.jpg', NULL, 'সম্মেলনকে কেন্দ্র করে বিএনপির কেউ', NULL, NULL, 0, 1, '2022-10-22 08:06:50', '2022-10-22 08:06:50', NULL),
(31, 7, 'সমাবেশ যাতে বড় না হয় এ জন্য বাস বন্ধ করেছে সরকার : ফখরুল', 'সমাবেশ যাতে বড় না হয় এ জন্য', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিএনপির সমাবেশ যাতে বড় না হয় এ জন্য সরকার বাস চলাচল বন্ধ করে দিয়েছে বলে অভিযোগ করেছেন দলটির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর।&nbsp;&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বৃহস্পতিবার দুপুরে গুলশানে চেয়ারপারসনের কার্যালয়ে আয়োজিত এক অনুষ্ঠানে ‘মৃত্যুকূপে ধাবমান বাংলাদেশ’ শীর্ষক স্মরণিকার মোড়ক উন্মোচন অনুষ্ঠানে এ অভিযোগ করেন তিনি। সম্প্রতি বিএনপির আন্দোলনে পুলিশের গুলিতে নিহতদের স্মরণে এ ‘পুস্তিকা’টি প্রকাশ করেছে জিয়া পরিষদ।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গত আগস্ট থেকে জ্বালানি তেল ও দ্রব্যমূল্য বৃদ্ধির প্রতিবাদে বিএনপি জেলা-উপজেলা পর্যায়ে সভা-সমাবেশ কর্মসূচি ঘোষণা করে। এসব কর্মসূচি পালনকালে ভোলায় স্বেচ্ছাসেবক দলের আব্দুর রহিম, ছাত্র দলের নুরে আলম, নারায়ণগঞ্জে যুব দলের রাজা আহমেদ শাওন, মুন্সীগঞ্জে যুব দলের শহিদুল ইসলাম শাওন পুলিশের গুলিতে নিহত হন।</span><br></p>', '1666447795.jpg', NULL, 'সমাবেশ যাতে বড় না হয় এ জন্য', NULL, NULL, 0, 1, '2022-10-22 08:09:55', '2022-10-22 08:09:55', NULL),
(32, 7, 'রাস্তা বন্ধ করে নয়াপল্টনে চলছে বিএনপির সমাবেশ', 'রাস্তা বন্ধ করে নয়াপল্টনে চলছে বিএনপির সমাবেশ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">সারা দেশে দলীয় নেতাকর্মীদের ওপর হামলা-মামলা, নির্যাতন, গ্রেপ্তার ও জামিন বাতিলের প্রতিবাদে রাজধানীর নয়াপল্টনে সমাবেশ করছে বিএনপি। সমাবেশের জন্য বন্ধ রয়েছে সড়কের একাংশ।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বৃহস্পতিবার (২০ অক্টোবর) দুপুর আড়াইটার পর নয়াপল্টন বিএনপির কেন্দ্রীয় কার্যালয়ের সামনে এ সমাবেশ শুরু হয়। দুপুর ১২টা থেকেই খণ্ড খণ্ড মিছিল নিয়ে সমাবেশস্থলে আসেন নেতাকর্মীরা।</span></p><p>ঢাকা মহানগর উত্তর-দক্ষিণ বিএনপি আয়োজিত এই সমাবেশে প্রধান অতিথি হিসেবে দলের মহাসচিব মির্জা ফখরুল ইসলাম আলমগীরের বক্তব্য রাখার কথা রয়েছে। দলের স্থায়ী কমিটির নেতারা সমাবেশে বক্তব্য রাখছেন।</p>', '1666447894.jpg', NULL, 'রাস্তা বন্ধ করে নয়াপল্টনে', NULL, NULL, 0, 1, '2022-10-22 08:11:34', '2022-10-22 08:11:34', NULL),
(33, 7, '‘বিদ্যুৎ সংকট গভীরতর হবে’', '‘বিদ্যুৎ সংকট গভীরতর হবে’', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">জনতার অধিকার পার্টির চেয়ারম্যান তারিকুল ইসলাম বলেছেন, দেশে যে বিদ্যুৎ-সংকট চলছে, ধারণা করা হচ্ছে এ সংকট গভীর থেকে গভীরতর হবে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তিনি বলেন, চলমান বিদ্যুৎ-সংকটের কারণে দেশের বিভিন্ন প্রান্ত থেকে কৃষি উৎপাদন ব্যাহত হওয়ার সংবাদ আসছে গণমাধ্যমে। এর মধ্যে সার উৎপাদন কমানো হয়েছে। অচিরেই দেশে খাদ্যসংকট দেখা দিতে পারে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বুধবার (১৯ অক্টোবর) জাতীয় প্রেস ক্লাবের সামনে জনতার অধিকার পার্টি আয়োজিত এক মানববন্ধনে এসব কথা বলেন তিনি।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তারিকুল ইসলাম বলেন, সরকারের বিভিন্ন মহল উদ্ভূত পরিস্থিতির জন্য আন্তর্জাতিক বাজার দামের ঊর্ধ্বমুখিতাকে দায়ী করছে। মূলত এ পরিস্থিতির জন্য সরকারের লোকজনের দুর্নীতি-লুটপাট, ভুল নীতি ও অব্যবস্থাপনা দায়ী।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">পার্টির এই নেতা বলেন, সুষ্ঠু রাজনৈতিক পরিস্থিতি নিশ্চিত করার স্বার্থে বিরোধী রাজনৈতিক দলগুলোর কর্মসূচি ও সভা-সমাবেশ যেন কোনোভাবেই বাধাগ্রস্ত না হয়, তা নিশ্চিত করতে হবে। ক্ষমতাসীন আওয়ামী লীগ একটি রাজনৈতিক দল হিসেবে যে সুযোগ-সুবিধা পায়, বিরোধী রাজনৈতিক দলগুলোর তা পাওয়ার অধিকার রয়েছে। কোনো সুনির্দিষ্ট অভিযোগ না থাকলে বিরোধীদলীয় নেতা-কর্মীদের বিরুদ্ধে আর কোনো অহেতুক মামলা দায়ের ও গ্রেপ্তার নয়।</span><br></p>', '1666448033.jpg', NULL, '‘বিদ্যুৎ সংকট গভীরতর হবে’', NULL, NULL, 0, 1, '2022-10-22 08:13:53', '2022-10-22 08:13:53', NULL),
(34, 7, 'খুলনার দিকে দৃষ্টি সবার', 'খুলনার দিকে দৃষ্টি সবার', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">দেশের জাতীয় রাজনীতিতে কোণঠাসা বিএনপি ঘুরে দাঁড়ানোর আভাস দিচ্ছে। দলটির খুলনা বিভাগীয় গণসমাবেশ ঘিরে রাজনৈতিক মাঠে উত্তেজনা এখন তুঙ্গে। আজ দুপুর ২টায় খুলনার সোনালী ব্যাংক চত্বরে এ সমাবেশ অনুষ্ঠিত হবে।&nbsp; &nbsp;&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">খুলনায় বিএনপির এই সমাবেশ ঘিরে কঠোর অবস্থানে রয়েছে প্রশাসনও। সমাবেশ ঘিরে গতকাল থেকে এক রকমের অবরুদ্ধ দশায় রয়েছে খুলনা। প্রথমে বাস বন্ধ হয়েছে, তারপর হঠাৎ বন্ধ হয়েছে লঞ্চ ও ট্রলার চলাচল। ফলে খুলনায় আসতে বিএনপির নেতাকর্মীদের বিকল্প চিন্তা করতে হয়, নিতে হয় নানা কৌশল। বালুভর্তি ট্রলার, ইজিবাইক, নৌকা, সিএনজি, মোটরসাইকেল, হেঁটেসহ বিভিন্নভাবে খুলনা শহরে আসছেন নেতা-কর্মীরা।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কুষ্টিয়া, চুয়াডাঙ্গা, ঝিনাইদহ, যশোর ও মেহেরপুর থেকে নেতাকর্মীরা ট্রেনে খুলনায় আসেন। আর নড়াইল, সাতক্ষীরা, কয়রা, পাইকগাছা, দাকোপ, বটিয়াঘাটা এলাকার নেতা-কর্মীরা ট্রলার, ইজিবাইকসহ নানা কৌশলে খুলনায় প্রবেশ করেন।</span><br></p>', '1666448152.jpg', NULL, 'খুলনার দিকে দৃষ্টি সবার', NULL, NULL, 0, 1, '2022-10-22 08:15:52', '2022-10-22 08:15:52', NULL),
(35, 7, 'আওয়ামী লীগ করা পূণ্যের কাজ : এটিএম পেয়ারুল', 'আওয়ামী লীগ করা পূণ্যের কাজ', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">আওয়ামী লীগ করা পূণ্যের কাজ বলে মন্তব্য করেছেন চট্টগ্রাম জেলা পরিষদ নির্বাচনে দলের সমর্থিত চেয়ারম্যান প্রার্থী এটিএম পেয়ারুল ইসলাম। তিনি বলেছেন, রাজনীতি আমার জন্য ইবাদত। এই দল করেই এতটুকু এসেছি। দলীয় নেত্রী আমাকে মনোনয়ন দিয়ে যে আস্থা রেখেছেন তার প্রতিদান প্রতি মুহূর্তে দেবো।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">শনিবার (১৫ অক্টোবর) বিকেলে চট্টগ্রাম প্রেস ক্লাবে আয়োজিত এক সংবাদ সম্মেলনে তিনি এসব কথা বলেন। চট্টগ্রাম জেলা পরিষদ নির্বাচনে এটিএম পেয়ারুল ইসলামের নির্বাচন পরিচালনা কমিটির উদ্যোগে এই সংবাদ সম্মেলনের আয়োজন করা হয়েছে।&nbsp; &nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">এ সময় চট্টগ্রাম জেলা পরিষদ নির্বাচনে ‘কাস্টিং ভোটের ৯০ ভাগ’ ভোট পাওয়ার আশা ব্যক্ত করছেন আওয়ামী লীগ প্রার্থী এ টি এম পেয়ারুল ইসলাম।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">তিনি বলেন, চেয়ারম্যান নির্বাচিত হলে চট্টগ্রাম জেলা পরিষদকে মডেল জেলা পরিষদে পরিণত করব। প্রতিটি এলাকার জনপ্রতিনিধি এবং বিশিষ্ট নাগরিকদের নিয়ে সম বণ্টনের ভিত্তিতে উন্নয়ন কর্মকাণ্ড পরিচালিত করব।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">সংবাদ সম্মেলনে এটিএম পেয়ারুল ইসলামকে আনারস মার্কায় ভোট দেওয়ার আহ্বান জানিয়েছেন নির্বাচন পরিচালনা কমিটির নেতারা।</span><br></p>', '1666448236.jpg', NULL, 'আওয়ামী লীগ করা পূণ্যের কাজ', NULL, NULL, 0, 1, '2022-10-22 08:17:16', '2022-10-22 08:17:16', NULL),
(36, 14, 'চিনির বাজার হঠাৎ টালমাটাল', 'চিনির বাজার হঠাৎ টালমাটাল', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কারসাজির মাধ্যমে কৃত্রিম সংকট তৈরি করে চিনির দাম বাড়িয়েছেন ব্যবসায়ীরা। ফলে সপ্তাহের ব্যবধানে কেজিতে খোলা চিনির দাম বেড়েছে ১০ থেকে ১৫ টাকা। আর প্যাকেটজাত চিনি প্রায় উধাও হয়ে গেছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ক্রেতারা বলছেন, জনগণকে জিম্মি করে ব্যবসায়ীরা খেলায় মেতেছেন। তারা সরকারের কোনো নিয়ম-নীতি মানছে না। নিজেদের ইচ্ছা মতো দাম বাড়াচ্ছে। আর ব্যবসায়ীদের পক্ষ থেকে বলা হচ্ছে, বিদ্যুৎ ও গ্যাস সঙ্কটের কারণে তাদের উৎপাদন কমেছে। যার জন্য বাজারে ঘাটতি দেখা দিয়েছে।&nbsp;</span><br></p>', '1666448654.jpg', NULL, 'চিনির বাজার হঠাৎ টালমাটাল', NULL, NULL, 0, 1, '2022-10-22 08:24:14', '2022-10-22 08:24:14', NULL);
INSERT INTO `posts` (`id`, `category_id`, `name`, `slug`, `description`, `image`, `yt_iframe`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `created_by`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(37, 14, 'অকেজো উড়োজাহাজ বিক্রি করতে চায় ইউনাইটেড এয়ার', 'okejo-urojahaj-bikri-krte-cay', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিমানবন্দরে পরিত্যক্ত অবস্থায় পড়ে থাকা অকেজো যন্ত্রাংশ ও কয়েকটি উড়োজাহাজ বিক্রি করতে চায় বেসরকারি বিমান কোম্পানি ইউনাইটেড এয়ারওয়েজ লিমিটেড।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">দীর্ঘদিন বন্ধ থাকা কোম্পানিটিকে উৎপাদনে ফেরাতে বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশনে (বিএসইসির) প্রস্তাবনা দেওয়া হয়েছে। ইউনাইটেড এয়ারওয়েজের চেয়ারম্যান কাজী ওয়াহিদ-উল আলম ও ব্যবস্থাপনা পরিচালক (এমডি) নজরুল ইসলামের নেতৃত্বাধীন পর্ষদ চলতি মাসের প্রথম সপ্তাহে বিএসইসিকে এ প্রস্তাবনা দেয়। </span></p><p>প্রস্তাবনায় বলা হয়, বেসামরিক বিমান চলাচল কর্তৃপক্ষের (বেবিচক) সব বকেয়া মওকুফ করে প্রতিষ্ঠানটিকে পুনর্জীবিত করার অনুমতি চায় সংস্থাটি। এর আগে বিএসইসি ও বেবিচকের কাছে ইউনাইটেড এয়ার বকেয়া পাওনার ওপর সারচার্জ (সম্পদ কর) মওকুফের আবেদন করেছিল। কিন্তু সেই আবেদন নাকচ করে বেবিচক। আবারও একই আবেদন করল প্রতিষ্ঠানটি। </p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বিমানবন্দরে পরিত্যক্ত অবস্থায় পড়ে থাকা বিভিন্ন অকেজো যন্ত্রাংশ, যানবাহন সর্বোচ্চ দামে বিক্রি করে প্রাপ্ত অর্থ কোম্পানির পরিচালনা ব্যয় নির্বাহের অনুমতি।</span><br></p>', '1666448900.jpg', NULL, 'অকেজো উড়োজাহাজ বিক্রি করতে চায়', NULL, NULL, 0, 1, '2022-10-22 08:27:05', '2022-10-22 08:28:20', NULL),
(38, 14, 'হঠাৎ বাড়তি পেঁয়াজের দাম', 'হঠাৎ বাড়তি পেঁয়াজের দাম', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">রাজধানীর মালিবাগ বাজারে সপ্তাহিক ছুটির দিনে সপ্তাহের বাজার করতে এসেছেন বেসরকারি একটি প্রতিষ্ঠানের চাকরিজীবী পারভেজ আহমেদ। সব কিছুই বাড়তি দামে কেনার পর পেঁয়াজ কিনতে এসেও তিনি হতাশ হয়েছেন। কারণ হঠাৎ করেই পেঁয়াজের দামও বেড়ে গেছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ক্ষুব্ধ হয়ে নিজের হতাশা প্রকাশ করে পারভেজ আহমেদ বলেন, গত সপ্তাহেই পেঁয়াজ কিনেছি ৫০ টাকায়। আজ সেই পেঁয়াজ কিনতে হলো ৬০ টাকায়। এক সপ্তাহে ১০ টাকা বেড়ে গেল পেঁয়াজের দাম? এরও আগে ৪০/৪৫ টাকায় পেঁয়াজ কিনেছি। এভাবে প্রতি সপ্তাহে যদি পেঁয়াজের দাম বাড়ে তাহলে সাধারণ মানুষ কিভাবে কিনবে?</span></p><p>শুক্রবার (২১ অক্টোবর) রাজধানীর বিভিন্ন কাঁচা বাজার ঘুরে দেখা গেছে প্রতিটি খুচরা বাজারেই আজ পেঁয়াজের দাম বাড়তি যাচ্ছে। খুচরা বাজারে আজ ভালো মানের পেঁয়াজ বিক্রি হচ্ছে ৬০ টাকায়। এছাড়া যেসব দোকানে পুরোনো অর্থাৎ আগে কেনা পেঁয়াজ রয়েছে সেগুলো ৫৫ টাকা কেজিতে বিক্রি হচ্ছে। তবে বাজারের কোথাও ৫৫ টাকায় নিচে পেঁয়াজ বিক্রি হচ্ছে না।&nbsp; যা গত সপ্তাহে বা ৪/৫ দিন আগেও ৪৫ থেকে ৫০ টাকায় বিক্রি হয়েছে।&nbsp;</p>', '1666449189.jpg', NULL, 'হঠাৎ বাড়তি পেঁয়াজের দাম', NULL, NULL, 0, 1, '2022-10-22 08:33:09', '2022-10-22 08:33:09', NULL),
(39, 14, 'সেপ্টেম্বরে চা উৎপাদনের নতুন রেকর্ড', 'সেপ্টেম্বরে চা উৎপাদনের নতুন রেকর্ড', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গত আগস্টের শ্রমিক কর্মবিরতির ধকল কাঁটিয়ে ঘুরে দাঁড়িয়েছে দেশের চা শিল্প। অনুকূল আবহাওয়ার কারণে দেশে সেপ্টেম্বর মাসে ১৪.৭৪ মিলিয়ন কেজি চা উৎপাদিত হয়েছে। যা অতীতের যেকোনো মাসের উৎপাদন রেকর্ডকে ছাড়িয়ে গেছে।&nbsp;</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">গত সেপ্টেম্বরের (২০২১ সাল) তুলনায় এ বছরের সেপ্টেম্বরে প্রায় ১৭ শতাংশ চা উৎপাদন বেশি হয়েছে। এর আগে মাসভিত্তিক উৎপাদনের সর্বশেষ রেকর্ড হয়েছিল গত বছরের অক্টোবর মাসে। গত অক্টোবরে ১৪.৫৮ মিলিয়ন কেজি চা উৎপাদিত হয়েছিল।</span></p><p>বাংলাদেশ চা বোর্ডের চেয়ারম্যান মেজর জেনারেল আশরাফুল ইসলাম বলেন, এ বছর আগস্ট মাসে শ্রমিক কর্মবিরতির কারণে উৎপাদন কিছুদিন বন্ধ থাকলেও প্রধানমন্ত্রীর প্রত্যক্ষ দিকনির্দেশনায় শ্রমিকদের মজুরি বৃদ্ধি করা হয়। বাগানের স্বাভাবিক কার্যক্রম দ্রুত শুরু হয়। এছাড়াও প্রয়োজনীয় বৃষ্টিপাত, সঠিক সময়ে ভর্তুকি মূল্যে সার বিতরণ, চা রপ্তানির ক্ষেত্রে প্রণোদনা, নিয়মিত বাগান মনিটরিং, শ্রমিকদের মজুরি বৃদ্ধি ও শ্রমকল্যাণ নিশ্চিতকরণের ফলে এ বছর চায়ের উৎপাদন অনেক ভালো। সেপ্টেম্বর মাসে রেকর্ড উৎপাদন চা শিল্পের জন্য অত্যন্ত ইতিবাচক ঘটনা।</p><p>সরকারের নানা উদ্যোগের পাশাপাশি বাগান মালিক, চা ব্যবসায়ী ও চা শ্রমিকদের ধারাবাহিক প্রচেষ্টার ফলে চা শিল্পের সক্ষমতা অনেক বৃদ্ধি পেয়েছে বলেও তিনি মনে করেন।</p>', '1666452681.jpg', NULL, 'সেপ্টেম্বরে চা উৎপাদনের নতুন রেকর্ড', NULL, NULL, 0, 1, '2022-10-22 09:31:21', '2022-10-22 09:31:21', NULL),
(40, 14, '৫০০ টাকা মূল্যমানের নতুন ব্যাংক নোট আসছে', '৫০০ টাকা মূল্যমানের নতুন ব্যাংক নোট আসছে', '<p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">বাংলাদেশ ব্যাংক ৫০০ টাকা মূল্যমানের নতুন ব্যাংক নোট বাজারে ছাড়তে যাচ্ছে। নতুন গভর্নর আব্দুর রউফ তালুকদারের স্বাক্ষর করা এ নোট সোমবার (২৩ অক্টোবর) থেকে পাওয়া যাবে। রোববার (২৩ অ‌ক্টোবর) বাংলাদেশ ব্যাংকের ডিপার্টমেন্ট অব কমিউনিকেশন্স অ্যান্ড পাবলিকেশন্স থে‌কে এ তথ্য জা‌নানো হয়ে‌ছে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">কেন্দ্রীয় ব্যাং‌কের প‌ক্ষ থে‌কে বলা হয়েছে, বাংলাদেশ ব্যাংকের গভর্নর আব্দুর রউফ তালুকদারের স্বাক্ষর সম্বলিত ৫০০ টাকা মূল্যমানের ব্যাংক নোট ২৪ অক্টোবর (সোমবার) বাংলাদেশ ব্যাংকের মতিঝিল অফিস থেকে ইস্যু করা হবে। যা পরে বাংলাদেশ ব্যাংকের অন্যান্য অফিস থেকেও ইস্যু করা হবে।</span><br></p><p><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">নতুন মুদ্রিত নোটের রং, আকৃতি, ডিজাইন ও সব নিরাপত্তা বৈশিষ্ট্য আগের নোটের মতো অপরিবর্তিত থাকবে। নতুন মুদ্রিত বর্ণিত নোটের পাশাপাশি বর্তমানে প্রচলনে থাকা ৫০০ টাকা মূল্যমানের অন্যান্য নোটও বৈধ নোট হিসেবে যুগপৎ চালু থাকবে।</span><br></p>', '1666527839.jpg', NULL, '৫০০ টাকা মূল্যমানের নতুন ব্যাংক নোট আসছে', NULL, NULL, 0, 1, '2022-10-23 06:23:59', '2022-10-23 06:23:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 8, 'এশিয়া', 'asia', 'asia', 'asia', 'asia', 'asia', 0, 0, 1, '2022-10-02 06:49:36', '2022-10-02 06:49:36'),
(2, 8, 'আমেরিকা', 'america', 'america', 'america', 'america', 'america', 0, 0, 1, '2022-10-04 13:01:24', '2022-10-04 13:01:24'),
(6, 8, 'ইউরোপ', 'europe', 'europe', 'europe', 'europe', 'europe', 0, 0, 1, '2022-10-05 08:07:40', '2022-10-05 08:07:40');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Tareq Rahman', 'tareq@gmail.com', NULL, '$2y$10$g.bgrTTgDhERb/Vf9vd3Eui22jFoN1RVQoKn4T2qsW3BHhhH/.wta', NULL, '2022-08-15 13:22:22', '2022-08-15 13:22:22', 1),
(2, 'Test', 'test@gmail.com', NULL, '$2y$10$I5Y.4lCp8eXGqOPbpppGoeHwvmxBM7S2jdTYF2PZtDlcKnng0S09q', NULL, '2022-08-16 13:09:10', '2022-10-21 04:56:37', 0),
(4, 'Rubel', 'rubel@gmail.com', NULL, '12345678', NULL, '2022-10-22 07:28:20', '2022-10-22 07:38:49', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
