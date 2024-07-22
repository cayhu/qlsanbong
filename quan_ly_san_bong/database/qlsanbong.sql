-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 07:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsanbong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_information`
--

CREATE TABLE `bank_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bank_number` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isShow` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_information`
--

INSERT INTO `bank_information` (`id`, `name`, `bank_number`, `bank`, `note`, `image`, `isShow`, `created_at`, `updated_at`) VALUES
(1, 'Lê Minh Tân', '0353446838', 'MBBANK', NULL, 'images/bank/bank_info1720629899.jpg', 1, '2024-07-10 16:24:34', '2024-07-10 16:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `football_pitches`
--

CREATE TABLE `football_pitches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price_per_hour` double UNSIGNED NOT NULL,
  `price_per_peak_hour` double UNSIGNED NOT NULL,
  `is_maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `pitch_type_id` bigint(20) UNSIGNED NOT NULL,
  `from_football_pitch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_football_pitch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `football_pitches`
--

INSERT INTO `football_pitches` (`id`, `name`, `time_start`, `time_end`, `description`, `price_per_hour`, `price_per_peak_hour`, `is_maintenance`, `pitch_type_id`, `from_football_pitch_id`, `to_football_pitch_id`, `created_at`, `updated_at`) VALUES
(1, 'Sân 1', '07:00:00', '22:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-10 16:24:34', '2024-07-11 18:07:13'),
(2, 'Sân 2', '07:00:00', '22:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-10 16:24:35', '2024-07-10 16:24:35'),
(3, 'Sân 3', '07:00:00', '22:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-10 16:24:35', '2024-07-11 18:07:08'),
(4, 'Sân 4', '07:00:00', '22:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-10 16:24:35', '2024-07-10 16:24:35'),
(5, 'Sân 5', '07:00:00', '22:00:00', NULL, 500000, 600000, 1, 1, NULL, NULL, '2024-07-10 16:24:35', '2024-07-11 18:04:11'),
(6, 'Sân 1 + 2', '07:00:00', '22:00:00', NULL, 1000000, 1200000, 1, 2, 1, 2, '2024-07-10 16:24:35', '2024-07-11 18:00:34'),
(7, 'Sân 3 + 4', '07:00:00', '22:00:00', NULL, 1000000, 1200000, 1, 2, 3, 4, '2024-07-10 16:24:35', '2024-07-11 18:06:09'),
(8, 'Sân 3 + 5', '01:00:00', '01:00:00', NULL, 500000, 600000, 1, 2, 4, 2, '2024-07-11 17:57:25', '2024-07-11 18:00:35'),
(9, 'Sân 3 + 6', '01:00:00', '01:00:00', NULL, 500000, 600000, 1, 1, 5, 6, '2024-07-11 17:58:24', '2024-07-11 18:05:35'),
(10, 'Sân 3 + 7', '01:00:00', '01:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-11 18:01:52', '2024-07-11 18:01:52'),
(11, 'Sân 4 + 5', '01:00:00', '01:00:00', NULL, 500000, 600000, 1, 1, NULL, NULL, '2024-07-11 18:02:13', '2024-07-11 18:03:28'),
(12, 'Sân 4 + 8', '01:00:00', '01:00:00', NULL, 500000, 600000, 0, 1, NULL, NULL, '2024-07-11 18:02:34', '2024-07-11 18:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `football_pitch_details`
--

CREATE TABLE `football_pitch_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `football_pitch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `football_pitch_details`
--

INSERT INTO `football_pitch_details` (`id`, `image`, `football_pitch_id`, `created_at`, `updated_at`) VALUES
(5, 'images/football_pitches/football_pitch1720630066.jpg', 1, '2024-07-10 16:47:46', '2024-07-10 16:47:46'),
(6, 'images/football_pitches/football_pitch1720630145.jpg', 2, '2024-07-10 16:49:05', '2024-07-10 16:49:05'),
(7, 'images/football_pitches/football_pitch1720630256.jpg', 3, '2024-07-10 16:50:56', '2024-07-10 16:50:56'),
(8, 'images/football_pitches/football_pitch1720634419.jpg', 4, '2024-07-10 18:00:19', '2024-07-10 18:00:19'),
(9, 'images/football_pitches/football_pitch1720716851.jpg', 5, '2024-07-11 16:54:11', '2024-07-11 16:54:11'),
(11, 'images/football_pitches/football_pitch1720717047.jpg', 6, '2024-07-11 16:57:27', '2024-07-11 16:57:27'),
(12, 'images/football_pitches/football_pitch1720720722.jpg', 7, '2024-07-11 17:58:42', '2024-07-11 17:58:42'),
(13, 'images/football_pitches/football_pitch1720720747.jpg', 8, '2024-07-11 17:59:07', '2024-07-11 17:59:07'),
(14, 'images/football_pitches/football_pitch1720720763.jpg', 9, '2024-07-11 17:59:23', '2024-07-11 17:59:23'),
(15, 'images/football_pitches/football_pitch1720720967.jpg', 10, '2024-07-11 18:02:47', '2024-07-11 18:02:47'),
(17, 'images/football_pitches/football_pitch1720721000.jpg', 12, '2024-07-11 18:03:20', '2024-07-11 18:03:20'),
(19, 'images/football_pitches/football_pitch1720721776.jpg', 11, '2024-07-11 18:16:16', '2024-07-11 18:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `identity_papers`
--

CREATE TABLE `identity_papers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_15_045723_create_providers_table', 1),
(3, '2023_02_15_051951_create_users_table', 1),
(4, '2023_02_15_052308_create_pitch_types_table', 1),
(5, '2023_02_15_052443_create_football_pitches_table', 1),
(6, '2023_02_15_053052_create_football_pitch_details_table', 1),
(7, '2023_02_15_053248_create_orders_table', 1),
(8, '2023_02_15_053451_create_identity_papers_table', 1),
(9, '2023_02_15_053619_create_sliders_table', 1),
(10, '2023_02_15_053744_create_peak_hours_table', 1),
(11, '2023_02_15_053948_create_bank_information_table', 1),
(12, '2023_05_27_015203_create_configs_table', 1),
(13, '2023_05_27_053607_alter_column_users_table', 1),
(14, '2023_05_28_085659_create_jobs_table', 1),
(15, '2023_05_28_095952_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `deposit` double UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `total` double UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `football_pitch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `by_user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peak_hours`
--

CREATE TABLE `peak_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_at` time NOT NULL,
  `end_at` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peak_hours`
--

INSERT INTO `peak_hours` (`id`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
(1, '17:00:00', '22:00:00', '2024-07-10 16:24:34', '2024-07-10 16:24:34');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pitch_types`
--

CREATE TABLE `pitch_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pitch_types`
--

INSERT INTO `pitch_types` (`id`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, '14 người, mỗi đội 7 người', '2024-07-10 16:24:34', '2024-07-10 16:24:34'),
(2, 11, '22 người, mỗi đội 11 người', '2024-07-10 16:24:34', '2024-07-10 16:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'google', '2024-07-10 16:24:34', '2024-07-10 16:24:34'),
(2, 'facebook', '2024-07-10 16:24:34', '2024-07-10 16:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `address`, `provider_id`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0353446838', 'admin@gmail.com', '$2y$10$C9sNzeAGfIyMNaZZgF/cXOa5Un9kmosyh/queuBYfTqKG4cPNJAWC', 'Tiên Du, Phù Ninh, Phú Thọ', NULL, 2, 'PmKL8PzBt8QutLum0PNsrw4Ye0RHNsIi5iwSBhB57xG08UKbFBZBIMs6QZ7F', '2024-07-10 16:24:34', '2024-07-10 18:13:02'),
(4, 'Lê Minh Tân', '0353446838', 'conheo@gmail.com', '$2y$10$C9sNzeAGfIyMNaZZgF/cXOa5Un9kmosyh/queuBYfTqKG4cPNJAWC', NULL, NULL, 0, NULL, '2024-07-22 04:38:05', '2024-07-22 04:38:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_information`
--
ALTER TABLE `bank_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `football_pitches`
--
ALTER TABLE `football_pitches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `football_pitches_pitch_type_id_foreign` (`pitch_type_id`),
  ADD KEY `football_pitches_from_football_pitch_id_foreign` (`from_football_pitch_id`),
  ADD KEY `football_pitches_to_football_pitch_id_foreign` (`to_football_pitch_id`);

--
-- Indexes for table `football_pitch_details`
--
ALTER TABLE `football_pitch_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `football_pitch_details_football_pitch_id_foreign` (`football_pitch_id`);

--
-- Indexes for table `identity_papers`
--
ALTER TABLE `identity_papers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identity_papers_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_football_pitch_id_foreign` (`football_pitch_id`),
  ADD KEY `orders_by_user_id_foreign` (`by_user_id`);

--
-- Indexes for table `peak_hours`
--
ALTER TABLE `peak_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pitch_types`
--
ALTER TABLE `pitch_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_provider_id_foreign` (`provider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_information`
--
ALTER TABLE `bank_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `football_pitches`
--
ALTER TABLE `football_pitches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `football_pitch_details`
--
ALTER TABLE `football_pitch_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `identity_papers`
--
ALTER TABLE `identity_papers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peak_hours`
--
ALTER TABLE `peak_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pitch_types`
--
ALTER TABLE `pitch_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `football_pitches`
--
ALTER TABLE `football_pitches`
  ADD CONSTRAINT `football_pitches_from_football_pitch_id_foreign` FOREIGN KEY (`from_football_pitch_id`) REFERENCES `football_pitches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `football_pitches_pitch_type_id_foreign` FOREIGN KEY (`pitch_type_id`) REFERENCES `pitch_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `football_pitches_to_football_pitch_id_foreign` FOREIGN KEY (`to_football_pitch_id`) REFERENCES `football_pitches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `football_pitch_details`
--
ALTER TABLE `football_pitch_details`
  ADD CONSTRAINT `football_pitch_details_football_pitch_id_foreign` FOREIGN KEY (`football_pitch_id`) REFERENCES `football_pitches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `identity_papers`
--
ALTER TABLE `identity_papers`
  ADD CONSTRAINT `identity_papers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_by_user_id_foreign` FOREIGN KEY (`by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_football_pitch_id_foreign` FOREIGN KEY (`football_pitch_id`) REFERENCES `football_pitches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
