-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2023 at 08:35 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_db`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `name`, `address`, `body`, `created_at`, `updated_at`) VALUES
(1, 'jorge luis', 'popeye@queti.com', 'prova tre', '2023-06-19 07:51:26', '2023-06-19 07:51:26'),
(2, 'jorge', 'popeye@queti.com', 'prova 4', '2023-06-19 08:01:28', '2023-06-19 08:01:28'),
(3, 'jorge', 'popeye@queti.com', 'una\'altra prova', '2023-06-19 08:12:26', '2023-06-19 08:12:26');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_06_05_081614_create_posts_table', 1),
(12, '2023_06_05_133101_create_projects_table', 1),
(34, '2023_06_08_155009_add_tecnology_id_to_projects_table', 2),
(45, '2023_06_07_153349_create_tecnologies_table', 3),
(46, '2023_06_07_164909_add_user_id_to_projects_table', 3),
(47, '2023_06_08_075919_add_is_admin_users_table', 3),
(48, '2023_06_08_135245_create_types_table', 3),
(49, '2023_06_08_154155_add_tecnology_id_to_projects_table', 3),
(50, '2023_06_09_161218_create_project_type_table', 4),
(51, '2023_06_12_103804_create_project_tecnology_table', 5),
(53, '2023_06_18_082348_add_featured_to_projects_table', 6),
(54, '2023_06_19_081828_create_leads_table', 7),
(55, '2023_06_19_083243_add_body_to_leads_table', 8);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `repository_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tecnology_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `name`, `slug`, `image`, `description`, `repository_url`, `featured`, `created_at`, `updated_at`, `tecnology_id`) VALUES
(1, 1, 'Laravel Dc-Comics', 'laravel-dc-comics', 'http://127.0.0.1:8000/storage/uploads/W3TbkHs86AYM9PYzxMsgyBOl9qPV5z323StUx2dg.webp', 'L\'applicazione è stata sviluppata utilizzando il framework Laravel, che è uno dei framework web più popolari e potenti per lo sviluppo di applicazioni PHP. L\'app è stata progettata per offrire un\'esperienza utente intuitiva e fornire funzionalità avanzate.', 'https://github.com/JorgeLuix/laravel-dc-comics', 1, '2023-06-05 13:29:39', '2023-06-20 07:22:32', 7),
(4, 1, 'Fizzbuzz', 'fizzbuzz', 'http://127.0.0.1:8000/storage/uploads/xUDPkbqUOvLuysrun70rLIfNpoJ4YwZ9OMNkLG2y.jpg', 'app-game', 'https://github.com/JorgeLuix/js-fizzbuzz', 1, '2023-06-05 13:29:39', '2023-06-13 13:35:37', 4),
(5, 1, 'Spotify-Web', 'spotify-web', 'http://127.0.0.1:8000/storage/uploads/2Zr7UDoNs48UtvcbOQf1ddl5P5TZBpWIPtcwNdKg.png', 'L\'applicazione è stata sviluppata utilizzando HTML, CSS.', 'https://github.com/JorgeLuix/html-css-spotifyweb', 1, '2023-06-05 13:29:39', '2023-06-20 07:28:00', 4),
(7, 1, 'Campominato', 'campominato', 'http://127.0.0.1:8000/storage/uploads/YuVXafCzxhvP2ams4yFMpKR8W5GsRI2g6eVeLT0f.png', 'app', 'https://github.com/JorgeLuix/js-campominato-grid/tree/main', 0, '2023-06-08 16:28:20', '2023-06-13 10:19:29', 4),
(8, 1, 'Dropbox-html', 'dropbox-html', 'http://127.0.0.1:8000/storage/uploads/yScZOjs45JD22kwWNXMvHBmBQ7ZUEbYI6RvrfR2W.png', 'app', 'https://github.com/JorgeLuix/htmlcss-dropbox', 0, '2023-06-09 14:56:44', '2023-06-13 10:19:56', 2),
(9, 2, 'Prova-Utente', 'prova-utente', 'http://localhost:8000/storage/uploads/EzuzJiMyes285Qx9ZYmOCsSts7bFbrgqdH67USKH.jpg', 'Lorem Ipsum è un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione.', 'https://github.com/JorgeLuix/htmlcss-dropbox', 0, '2023-06-10 14:13:08', '2023-06-18 08:28:27', 2),
(10, 1, 'project-prova', 'project-prova', 'http://127.0.0.1:8000/storage/uploads/pSXeuS2rbNSGc6zG8tvJ3pxb1TyjUEl617aLN6ly.jpg', 'template', 'https://github.com/JorgeLuix/htmlcss-dropbox', 0, '2023-06-13 10:27:33', '2023-06-13 10:27:33', 2),
(12, 1, 'Vue-Email-List', 'vue-email-list', 'http://localhost:8000/storage/uploads/MJZPto9wB5XL6tVX3xez4cJVMUfl8n50zGLj3c8F.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, ipsum non hendrerit tempor, justo nisl commodo urna, in ultricies lectus risus at libero. Proin venenatis, lorem eget lacinia mattis, eros diam aliquet justo, vitae pharetra quam velit et enim. Quisque at tortor vitae sem malesuada finibus', 'https://github.com/JorgeLuix/vue-email-list', 0, '2023-06-18 11:29:56', '2023-06-18 11:29:56', 5),
(13, 1, 'Vite YuGiOh', 'vite-yugioh', 'http://localhost:8000/storage/uploads/uJfww0KaW9Gw7N2azE9apWwEbhLujy5kB7zpCxZr.jpg', 'Vivamus eu mauris ut nisi elementum hendrerit. Fusce varius, mauris eget gravida ullamcorper, massa felis vestibulum mauris, ac lacinia velit tortor vel odio. Nullam fringilla risus id nisi faucibus, id efficitur urna suscipit', 'https://github.com/JorgeLuix/vite-yu-gi-oh', 0, '2023-06-18 11:32:32', '2023-06-18 11:32:32', 9);

-- --------------------------------------------------------

--
-- Table structure for table `project_tecnology`
--

CREATE TABLE `project_tecnology` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `tecnology_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`id`, `project_id`, `type_id`) VALUES
(1, 1, 2),
(2, 1, 5),
(4, 8, 2),
(5, 4, 3),
(6, 4, 4),
(7, 7, 3),
(8, 5, 2),
(9, 5, 6),
(11, 10, 1),
(12, 9, 3),
(13, 12, 7),
(14, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tecnologies`
--

CREATE TABLE `tecnologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tecnologies`
--

INSERT INTO `tecnologies` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Blade', 'blade', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(2, 'Html', 'html', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(3, 'Css', 'css', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(4, 'Javascript', 'javascript', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(5, 'Vue.js', 'vuejs', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(6, 'Node.js', 'nodejs', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(7, 'Laravel', 'laravel', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(8, 'Php', 'php', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(9, 'Vite', 'vite', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(10, 'Bootstrap', 'bootstrap', '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(11, 'Sass', 'sass', '2023-06-09 13:07:49', '2023-06-09 13:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tecnology', 'tecnology', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(2, 'Sito web', 'sito-web', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(3, 'Game', 'game', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(4, 'Didattico', 'didattico', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(5, 'Fumetto', 'fumetto', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(6, 'App', 'app', '2023-06-09 13:08:24', '2023-06-09 13:08:24'),
(7, 'Altri', 'altri', '2023-06-09 13:08:24', '2023-06-09 13:08:24');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Jorge Castillo', 'tec.jorge.29@gmail.com', NULL, '$2y$10$9xudymewWycposbvBGk6OuG5/jHZ89IuMDugNhNPp11MwQRMrQQUK', NULL, '2023-06-05 13:32:27', '2023-06-05 13:32:27', 0),
(2, 'popeye', 'popeye@queti.com', NULL, '$2y$10$PSw7erWfHjrOCxwmqiIUCOuErmwitL1WGHUwtR.kNhtdY339PfAja', NULL, '2023-06-08 06:18:20', '2023-06-08 06:18:20', 0);

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
-- Indexes for table `leads`
--
ALTER TABLE `leads`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_tecnology_id_foreign` (`tecnology_id`);

--
-- Indexes for table `project_tecnology`
--
ALTER TABLE `project_tecnology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_tecnology_project_id_foreign` (`project_id`),
  ADD KEY `project_tecnology_tecnology_id_foreign` (`tecnology_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_type_project_id_foreign` (`project_id`),
  ADD KEY `project_type_type_id_foreign` (`type_id`);

--
-- Indexes for table `tecnologies`
--
ALTER TABLE `tecnologies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tecnologies_name_unique` (`name`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`),
  ADD UNIQUE KEY `types_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_tecnology`
--
ALTER TABLE `project_tecnology`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tecnologies`
--
ALTER TABLE `tecnologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_tecnology_id_foreign` FOREIGN KEY (`tecnology_id`) REFERENCES `tecnologies` (`id`),
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `project_tecnology`
--
ALTER TABLE `project_tecnology`
  ADD CONSTRAINT `project_tecnology_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tecnology_tecnology_id_foreign` FOREIGN KEY (`tecnology_id`) REFERENCES `tecnologies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_type`
--
ALTER TABLE `project_type`
  ADD CONSTRAINT `project_type_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_type_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
