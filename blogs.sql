-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 09:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Movies', '2020-01-03 23:50:07', '2020-01-03 23:50:07'),
(2, 'Nobels', '2020-01-03 23:41:12', '2020-01-03 23:50:07'),
(3, 'Retail', '2020-01-03 23:41:12', '2020-01-03 23:50:07'),
(4, 'Technology', '2020-01-03 23:41:12', '2020-01-03 23:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`category_id`, `post_id`) VALUES
(4, 3),
(4, 4),
(2, 5),
(4, 7),
(2, 8),
(3, 8),
(2, 9),
(3, 9),
(1, 1),
(2, 2),
(2, 10),
(3, 10),
(2, 11),
(4, 12),
(4, 13),
(4, 14),
(2, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_01_04_090000_create_users_table', 2),
(5, '2020_01_04_090009_create_posts_table', 2),
(6, '2020_01_04_090018_create_categories_table_table', 2),
(7, '2020_01_04_090026_create_category_post_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello 1', 'Hello\r\nsddsf\r\nsdf', '2020-01-04 06:06:05', '2020-01-04 06:06:05'),
(2, 1, 'Hello 12', 'Hello\r\nsddsf\r\nsdf', '2020-01-04 06:06:34', '2020-01-04 06:06:34'),
(3, 1, 'ert', 'ert', '2020-01-04 09:39:15', '2020-01-04 09:39:15'),
(4, 1, 'Title Comes Here', 'Title Comes Here Title Comes Here\r\nTitle Comes Here \r\nTitle Comes Here\r\nTitle Comes Here', '2020-01-04 09:40:11', '2020-01-04 09:40:11'),
(5, 1, 'sdf', 'sdf', '2020-01-04 09:40:37', '2020-01-04 09:40:37'),
(6, 1, 'sdf', 'sdf', '2020-01-04 09:41:08', '2020-01-04 09:41:08'),
(7, 1, 'sdf', 'sdf', '2020-01-04 09:42:15', '2020-01-04 09:42:15'),
(8, 1, 'dsfv', 'sfsad\r\nsadm\r\nsafn', '2020-01-04 09:44:04', '2020-01-04 09:44:04'),
(9, 1, 'sdf324', 'sdfasd\r\nsdfn\r\nsajdna\r\nas', '2020-01-04 09:44:24', '2020-01-04 09:44:24'),
(10, 1, 'This is test post', 'This is test post This is test post This is test post\r\nThis is test postThis is test post', '2020-01-04 12:08:28', '2020-01-04 12:08:28'),
(11, 1, 'dg4', '34535', '2020-01-04 12:08:56', '2020-01-04 12:08:56'),
(12, 1, 'sdf', 'dsf', '2020-01-04 12:09:45', '2020-01-04 12:09:45'),
(13, 1, 'sdf', 'dsf', '2020-01-04 12:09:45', '2020-01-04 12:09:45'),
(14, 1, 'sdf', 'ewr', '2020-01-04 12:10:20', '2020-01-04 12:10:20'),
(15, 1, 'sdf', 'dsf', '2020-01-04 12:11:11', '2020-01-04 12:11:11'),
(16, 2, 'Webmob Tech test', 'Webmob Tech test Webmob Tech test Webmob Tech test\r\n\r\nWebmob Tech test\r\nWebmob Tech test\r\n\r\nWebmob Tech test', '2020-01-04 14:47:43', '2020-01-04 14:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Bhavesh Dhedhi', 'bhavesh@gmail.com', NULL, '$2y$10$anP45keOgARazVqL/mk0l.AtTnaHmF2EUrdTYT3T8oTsV1jQbewy6', NULL, '2020-01-04 04:34:49', '2020-01-04 04:34:49'),
(2, 'Webmobtech', 'webmobtech@gmail.com', NULL, '$2y$10$S1l4iy8.v.1euwwf.l9HnuaitTiJ8bK9SocfUzl2.fGoJ4GNqq3Ei', NULL, '2020-01-04 14:40:20', '2020-01-04 14:40:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
