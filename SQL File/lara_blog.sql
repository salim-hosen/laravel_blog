-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2019 at 05:14 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2018-09-07 23:14:26', '2018-09-07 23:14:26'),
(2, 'Wordpress', '2018-09-07 23:14:39', '2018-09-07 23:14:39'),
(3, 'Career', '2018-09-07 23:14:46', '2018-09-07 23:14:46'),
(4, 'Tutorials', '2018-09-07 23:14:52', '2018-09-07 23:14:52'),
(5, 'Ruby on Rails', '2018-09-07 23:16:05', '2018-09-07 23:16:05'),
(6, 'New page', '2018-10-05 07:37:15', '2018-10-05 07:37:15');

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
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2018_08_17_142627_create_posts_table', 1),
(25, '2018_08_17_142819_create_categories_table', 1),
(26, '2018_08_20_175515_create_tags_table', 1),
(27, '2018_08_20_180034_create_post_tag_table', 1),
(28, '2018_08_24_045054_create_profiles_table', 1),
(29, '2018_09_07_161822_create_settings_table', 2),
(30, '2018_09_09_071100_insert_user_id_column', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'This will go on tutorial', 'this-will-go-on-tutorial', 'Html is going to rock by promoting html5. Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5Html is going to rock by promoting html5', 4, 'uploads/posts/15363839901.png', NULL, '2018-09-07 23:19:50', '2018-09-07 23:19:50', 1),
(2, 'Most Wanted Css tutorial', 'most-wanted-css-tutorial', 'Some css content will go here. Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.Some css content will go here.', 4, 'uploads/posts/15363840572.png', NULL, '2018-09-07 23:20:57', '2018-09-07 23:20:57', 2),
(3, 'Wordpress post is on the way', 'wordpress-post-is-on-the-way', 'Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.Come on wordpress its time for you.', 2, 'uploads/posts/15363841554.jpg', NULL, '2018-09-07 23:22:35', '2018-09-07 23:22:35', 2),
(4, 'Second Word press Post', 'second-word-press-post', 'Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.Some Wordpress content.', 2, 'uploads/posts/15363855423.jpg', NULL, '2018-09-07 23:45:42', '2018-09-07 23:45:42', 1),
(5, 'Third Tutorial Content', 'third-tutorial-content', 'HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here HTML post is here', 4, 'uploads/posts/15363855775.jpg', NULL, '2018-09-07 23:46:17', '2018-09-07 23:46:17', 2),
(6, 'Third post for wordpress', 'third-post-for-wordpress', 'Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post. Third wordpress post.', 2, 'uploads/posts/15363865346.jpg', NULL, '2018-09-08 00:02:14', '2018-09-08 00:02:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 1, 3, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 6, 1, NULL, NULL),
(10, 7, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `about`, `user_id`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1536259755face.png', 'My name is salim. I am a web developer. My life is not going very well. I want to earn money as soon as possible.', 1, 'https://facebook.com', 'https://youtube.com', '2018-08-24 00:01:27', '2018-09-09 12:15:53'),
(2, 'uploads/avatars/admin.png', NULL, 2, NULL, NULL, '2018-08-24 00:05:41', '2018-08-24 00:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s Blog', '8 900 7562 4588', 'info@laravel.com', 'Russia, Petesburg', '2018-09-07 10:29:34', '2018-09-07 10:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Wordpress 4.7', '2018-09-07 09:53:17', '2018-09-07 23:21:17'),
(2, 'HTML', '2018-09-07 23:18:31', '2018-09-07 23:18:31'),
(3, 'css', '2018-09-07 23:18:40', '2018-09-07 23:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad salim hosen', 'mohammad@hosen.com', 1, '$2y$10$RZF5Z1BPcQ/lWSDP7Moca.FRTYLVBDwMpBtkYquMFb17b6vJXjuXy', 'L3SDzPOTGwD9qLlbXaU5UAmxXKZpdqiIIyQs5q6jgXTl4iVZpTciz1S4oRtH', '2018-08-24 00:01:27', '2018-09-06 12:46:54'),
(2, 'Emily D Rose', 'emily2@yahoo.com', 0, '$2y$10$SQ2spIM0e9DYB/e/NdZlCOImLNPvMc0bAtNoi4uVfTPD5sBe.Gy0a', 'tAQYGxh99NFxHbIJQnMWElk1N1BBp8ChRtGdgrmSw1mwCAa5vl5nXwqLLSgd', '2018-08-24 00:05:41', '2018-09-07 09:45:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
