-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2024 at 12:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_03_19_113306_create__users_table', 1),
(4, '2024_03_18_113306_create__users_table', 2),
(5, '2024_03_18_122055_create_admin_table', 3),
(6, '2024_03_18_123227_create_property_table', 4),
(7, '2024_03_18_122227_create_property_table', 5),
(8, '2024_02_18_122456_create_notification_table', 6),
(9, '2024_03_18_134402_create_purchase_table', 7),
(10, '2024_03_18_135955_create_payment_table', 8),
(11, '2024_03_18_141256_create_plan_table', 9),
(12, '2024_03_18_142038_create_verification_table', 10),
(13, '2024_05_22_142401_create_sessions_table', 11),
(14, '2024_05_27_001414_add_image_to_properties_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'transaction type',
  `amount` text NOT NULL DEFAULT 'xaf',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `duration` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL COMMENT 'city where property is located ',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) NOT NULL DEFAULT 'xaf',
  `area` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `baths` varchar(255) NOT NULL,
  `garages` varchar(255) NOT NULL,
  `locatioon` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `image` varchar(255) DEFAULT NULL,
  `batch` varchar(255) NOT NULL DEFAULT 'sales' COMMENT 'batch shows the status of a property either sales or rentals',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `city`, `user_id`, `price`, `area`, `beds`, `baths`, `garages`, `locatioon`, `status`, `image`, `batch`, `created_at`, `updated_at`) VALUES
(29, 'Yaoundé', 1, '25000', '150', '3', '2', '1', 'Bastos', 'sale', 'property-5.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(30, 'Douala', 1, '30000', '180', '4', '3', '2', 'Bonapriso', 'rent', 'property-2.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(31, 'Bafoussam', 1, '20000', '120', '2', '1', '0', 'Bello', 'sale', 'property-1.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(32, 'Bamenda', 1, '35000', '200', '5', '4', '2', 'Mile 2', 'rent', 'property-3.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(33, 'Ngaoundéré', 1, '28000', '160', '3', '2', '1', 'Plateau Foulbé', 'sale', 'property-4.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(34, 'Maroua', 1, '32000', '190', '4', '3', '2', 'Djarengol', 'rent', 'property-6.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(35, 'Kribi', 1, '22000', '130', '2', '1', '0', 'Nkolbisson', 'sale', 'property-7.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(36, 'Limbe', 1, '38000', '220', '5', '4', '2', 'Down Beach', 'rent', 'property-8.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(37, 'Garoua', 1, '26000', '170', '3', '2', '1', 'Roumsiki', 'sale', 'property-9.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(38, 'Bertoua', 1, '34000', '200', '4', '3', '2', 'Mbalmayo', 'rent', 'property-6.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(39, 'Bafoussam', 1, '24000', '140', '2', '1', '0', 'Bello', 'sale', 'property-3.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(40, 'Yaoundé', 1, '40000', '230', '5', '4', '2', 'Bastos', 'rent', 'property-2.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(41, 'Douala', 1, '27000', '180', '3', '2', '1', 'Bonapriso', 'sale', 'property-1.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05'),
(42, 'Bamenda', 1, '36000', '210', '4', '3', '2', 'Mile 2', 'rent', 'property-6.jpg', 'batch_1', '2024-05-27 00:06:05', '2024-05-27 00:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `carier_code` text DEFAULT NULL,
  `phone` text NOT NULL,
  `location` varchar(255) NOT NULL COMMENT 'Users loction',
  `account_type` varchar(255) NOT NULL DEFAULT 'User' COMMENT 'account_type can either be Agent or user',
  `password` varchar(255) NOT NULL,
  `identity_verification` varchar(255) NOT NULL DEFAULT '0' COMMENT '0->unverified, 1->Verified',
  `address_verification` text NOT NULL DEFAULT '0' COMMENT '0->unverified, 1->Verified',
  `status` varchar(255) NOT NULL DEFAULT 'Active' COMMENT 'Active-> user can upload to backend, Inactive-> User cannot upload into backend',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `carier_code`, `phone`, `location`, `account_type`, `password`, `identity_verification`, `address_verification`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fadimatou', 'Mbarga', NULL, 'fadimatou@example.com', NULL, '+237123456789', 'Yaoundé', 'buyer', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(2, 'Etienne', 'Ndamukong', NULL, 'etienne@example.com', NULL, '+237123456789', 'Douala', 'seller', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(3, 'Bernadette', 'Tchoukoua', NULL, 'bernadette@example.com', NULL, '+237123456789', 'Bamenda', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(4, 'Achille', 'Ngwa', NULL, 'achille@example.com', NULL, '+237123456789', 'Bafoussam', 'buyer', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(5, 'Justine', 'Ngoua', NULL, 'justine@example.com', NULL, '+237123456789', 'Kribi', 'seller', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(6, 'Innocent', 'Ewane', NULL, 'innocent@example.com', NULL, '+237123456789', 'Limbe', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(7, 'Chantal', 'Mbele', NULL, 'chantal@example.com', NULL, '+237123456789', 'Buea', 'buyer', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(8, 'Josephine', 'Tchoukoua', NULL, 'josephine@example.com', NULL, '+237123456789', 'Maroua', 'seller', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(9, 'Christian', 'Tchinda', NULL, 'christian@example.com', NULL, '+237123456789', 'Garoua', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(10, 'Isabelle', 'Ndamukong', NULL, 'isabelle@example.com', NULL, '+237123456789', 'Ngaoundéré', 'buyer', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(11, 'Emmanuel', 'Ngoa', NULL, 'emmanuel@example.com', NULL, '+237123456789', 'Nkongsamba', 'seller', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(12, 'Clarisse', 'Ngassa', NULL, 'clarisse@example.com', NULL, '+237123456789', 'Bertoua', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(13, 'Brice', 'Ngoua', NULL, 'brice@example.com', NULL, '+237123456789', 'Ebolowa', 'buyer', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(14, 'Rosine', 'Tchamda', NULL, 'rosine@example.com', NULL, '+237123456789', 'Loum', 'seller', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(15, 'Valentin', 'Ebai', NULL, 'valentin@example.com', NULL, '+237123456789', 'Foumban', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unverified',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_user_id_foreign` (`user_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_user_id_foreign` (`user_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`property_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verification_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verification`
--
ALTER TABLE `verification`
  ADD CONSTRAINT `verification_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
