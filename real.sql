-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2024 at 10:40 PM
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
-- Table structure for table `descriptions`
--

CREATE TABLE `descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `agent_name` varchar(255) NOT NULL,
  `agent_description` text NOT NULL,
  `agent_phone` varchar(255) NOT NULL,
  `agent_mobile` varchar(255) NOT NULL,
  `agent_email` varchar(255) NOT NULL,
  `agent_skype` varchar(255) DEFAULT NULL,
  `agent_image` varchar(255) NOT NULL,
  `agent_facebook` varchar(255) DEFAULT NULL,
  `agent_twitter` varchar(255) DEFAULT NULL,
  `agent_instagram` varchar(255) DEFAULT NULL,
  `agent_linkedin` varchar(255) DEFAULT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `descriptions`
--

INSERT INTO `descriptions` (`id`, `property_id`, `description`, `agent_name`, `agent_description`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_skype`, `agent_image`, `agent_facebook`, `agent_twitter`, `agent_instagram`, `agent_linkedin`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1, 29, 'Beautiful single-family home with 3 bedrooms and 2 bathrooms, located in a peaceful suburban neighborhood. Features a spacious backyard and modern amenities.', 'John Doe', 'John Doe is an experienced real estate agent dedicated to helping clients find their dream homes. With a focus on personalized service and attention to detail, he ensures a smooth and successful transaction.', '(123) 456-7890', '(987) 654-3210', 'john.doe@example.com', 'john.doe.skype', 'agent-1.jpg', 'https://www.facebook.com/johndoe', 'https://www.twitter.com/johndoe', 'https://www.instagram.com/johndoe', 'https://www.linkedin.com/in/johndoe', 10.1582000, 5.9527000, NULL, NULL),
(2, 30, 'Modern apartment in the heart of the city, featuring 2 bedrooms, 2 bathrooms, and stunning views of the skyline. Amenities include a fitness center, rooftop pool, and concierge services.', 'Emily Smith', 'Emily Smith is a dedicated real estate professional committed to providing exceptional service to her clients. With a focus on integrity and honesty, she helps clients navigate the real estate market with confidence.', '(234) 567-8901', '(876) 543-2109', 'emily.smith@example.com', 'emily.smith.skype', 'agent-2.jpg', 'https://www.facebook.com/emilysmith', 'https://www.twitter.com/emilysmith', 'https://www.instagram.com/emilysmith', 'https://www.linkedin.com/in/emilysmith', -118.2437000, 34.0522000, NULL, NULL),
(3, 31, 'Cozy townhouse in a family-friendly neighborhood, offering 2 bedrooms, 1.5 bathrooms, and a private patio. Close to schools, parks, and shopping centers.', 'Sarah Johnson', 'Sarah Johnson is a seasoned real estate agent with a passion for helping clients achieve their real estate goals. With her knowledge of the local market and dedication to client satisfaction, she provides top-notch service every step of the way.', '(345) 678-9012', '(765) 432-1098', 'sarah.johnson@example.com', 'sarah.johnson.skype', 'agent-3.jpg', 'https://www.facebook.com/sarahjohnson', 'https://www.twitter.com/sarahjohnson', 'https://www.instagram.com/sarahjohnson', 'https://www.linkedin.com/in/sarahjohnson', -122.4194000, 37.7749000, NULL, NULL),
(4, 32, 'Spacious colonial-style home with 4 bedrooms, 3.5 bathrooms, and a beautifully landscaped yard. Features a gourmet kitchen, formal dining room, and cozy family room.', 'Michael Brown', 'Michael Brown is a trusted real estate advisor known for his professionalism and integrity. With years of experience in the industry, he guides clients through every step of the buying and selling process.', '(456) 789-0123', '(654) 321-0987', 'michael.brown@example.com', 'michael.brown.skype', 'agent-4.jpg', 'https://www.facebook.com/michaelbrown', 'https://www.twitter.com/michaelbrown', 'https://www.instagram.com/michaelbrown', 'https://www.linkedin.com/in/michaelbrown', -112.0740000, 33.4484000, NULL, NULL),
(5, 33, 'Luxurious waterfront estate with 6 bedrooms, 6.5 bathrooms, and breathtaking ocean views. Features a private pool, spa, and dock, perfect for entertaining guests.', 'Jessica Williams', 'Jessica Williams is a dedicated real estate professional committed to providing exceptional service to her clients. With her expertise and attention to detail, she helps clients achieve their real estate goals with ease.', '(567) 890-1234', '(987) 210-9876', 'jessica.williams@example.com', 'jessica.williams.skype', 'agent-5.jpg', 'https://www.facebook.com/jessicawilliams', 'https://www.twitter.com/jessicawilliams', 'https://www.instagram.com/jessicawilliams', 'https://www.linkedin.com/in/jessicawilliams', -80.1918000, 25.7617000, NULL, NULL),
(6, 34, 'Contemporary penthouse with 3 bedrooms, 2.5 bathrooms, and sweeping city views. Features high ceilings, floor-to-ceiling windows, and a private terrace.', 'David Miller', 'David Miller is a knowledgeable real estate agent dedicated to providing personalized service to his clients. With a focus on building long-term relationships, he helps clients find their dream homes.', '(678) 901-2345', '(210) 987-6543', 'david.miller@example.com', 'david.miller.skype', 'agent-6.jpg', 'https://www.facebook.com/davidmiller', 'https://www.twitter.com/davidmiller', 'https://www.instagram.com/davidmiller', 'https://www.linkedin.com/in/davidmiller', -118.2437000, 34.0522000, NULL, NULL),
(7, 35, 'Charming bungalow with 2 bedrooms, 1 bathroom, and a private backyard oasis. Features hardwood floors, a cozy fireplace, and an updated kitchen.', 'Emma Wilson', 'Emma Wilson is a dedicated real estate professional committed to helping clients find their dream homes. With her expertise and personalized service, she ensures a smooth and stress-free transaction.', '(789) 012-3456', '(543) 210-9876', 'emma.wilson@example.com', 'emma.wilson.skype', 'agent-7.jpg', 'https://www.facebook.com/emmawilson', 'https://www.twitter.com/emmawilson', 'https://www.instagram.com/emmawilson', 'https://www.linkedin.com/in/emmawilson', -74.0060000, 40.7128000, NULL, NULL),
(8, 36, 'Rustic farmhouse with 5 bedrooms, 3 bathrooms, and panoramic mountain views. Features a wrap-around porch, barn, and sprawling acreage.', 'Sophia Brown', 'Sophia Brown is a dedicated real estate professional known for her integrity and expertise. With her personalized approach and attention to detail, she helps clients find their dream homes.', '(901) 234-5678', '(654) 321-0987', 'sophia.brown@example.com', 'sophia.brown.skype', 'agent-7.jpg', 'https://www.facebook.com/sophiabrown', 'https://www.twitter.com/sophiabrown', 'https://www.instagram.com/sophiabrown', 'https://www.linkedin.com/in/sophiabrown', -74.0060000, 40.7128000, NULL, NULL),
(9, 37, 'Stylish loft with 1 bedroom, 1 bathroom, and industrial-chic design elements. Features exposed brick walls, high ceilings, and an open floor plan.', 'Oliver Jones', 'Oliver Jones is a dedicated real estate professional committed to providing exceptional service to his clients. With his expertise and attention to detail, he helps clients find their perfect homes.', '(123) 456-7890', '(987) 654-3210', 'oliver.jones@example.com', 'oliver.jones.skype', 'agent-3.jpg', 'https://www.facebook.com/oliverjones', 'https://www.twitter.com/oliverjones', 'https://www.instagram.com/oliverjones', 'https://www.linkedin.com/in/oliverjones', -118.2437000, 34.0522000, NULL, NULL),
(10, 38, 'Classic colonial home with 4 bedrooms, 2.5 bathrooms, and timeless architectural details. Features a grand staircase, formal living room, and gourmet kitchen.', 'Isabella Davis', 'Isabella Davis is a dedicated real estate professional known for her integrity and commitment to client satisfaction. With her expertise and personalized service, she helps clients find their dream homes.', '(234) 567-8901', '(876) 543-2109', 'isabella.davis@example.com', 'isabella.davis.skype', 'agent-4.jpg', 'https://www.facebook.com/isabelladavis', 'https://www.twitter.com/isabelladavis', 'https://www.instagram.com/isabelladavis', 'https://www.linkedin.com/in/isabelladavis', -74.0060000, 40.7128000, NULL, NULL),
(11, 39, 'Contemporary townhouse with 3 bedrooms, 2.5 bathrooms, and sleek modern design. Features an open-concept floor plan, gourmet kitchen, and rooftop terrace.', 'Liam Wilson', 'Liam Wilson is a dedicated real estate professional committed to providing exceptional service to his clients. With his expertise and attention to detail, he helps clients achieve their real estate goals.', '(345) 678-9012', '(765) 432-1098', 'liam.wilson@example.com', 'liam.wilson.skype', 'agent-2.jpg', 'https://www.facebook.com/liamwilson', 'https://www.twitter.com/liamwilson', 'https://www.instagram.com/liamwilson', 'https://www.linkedin.com/in/liamwilson', -122.4194000, 37.7749000, NULL, NULL),
(12, 40, 'Modern duplex with 4 bedrooms, 3 bathrooms, and stunning city views. Features high-end finishes, open-concept living spaces, and private outdoor patios.', 'Ava Martinez', 'Ava Martinez is a dedicated real estate professional known for her integrity and expertise. With her personalized service and attention to detail, she helps clients find their dream homes.', '(456) 789-0123', '(654) 321-0987', 'ava.martinez@example.com', 'ava.martinez.skype', 'agent-1.jpg', 'https://www.facebook.com/avamartinez', 'https://www.twitter.com/avamartinez', 'https://www.instagram.com/avamartinez', 'https://www.linkedin.com/in/avamartinez', -112.0740000, 33.4484000, NULL, NULL),
(13, 41, 'Charming cottage with 2 bedrooms, 1 bathroom, and picturesque garden views. Features a cozy fireplace, hardwood floors, and a wrap-around porch.', 'Noah Clark', 'Noah Clark is a dedicated real estate professional known for his integrity and expertise. With his personalized service and attention to detail, he helps clients find their dream homes.', '(567) 890-1234', '(987) 210-9876', 'noah.clark@example.com', 'noah.clark.skype', 'agent-1.jpg', 'https://www.facebook.com/noahclark', 'https://www.twitter.com/noahclark', 'https://www.instagram.com/noahclark', 'https://www.linkedin.com/in/noahclark', -80.1918000, 25.7617000, NULL, NULL),
(14, 42, 'Stunning mansion with 7 bedrooms, 7.5 bathrooms, and luxurious amenities. Features a grand foyer, gourmet kitchen, home theater, and expansive outdoor living spaces.', 'Sophie Johnson', 'Sophie Johnson is a dedicated real estate professional committed to providing exceptional service to her clients. With her expertise and attention to detail, she helps clients achieve their real estate goals.', '(678) 901-2345', '(210) 987-6543', 'sophie.johnson@example.com', 'sophie.johnson.skype', 'agent-7.jpg', 'https://www.facebook.com/sophiejohnson', 'https://www.twitter.com/sophiejohnson', 'https://www.instagram.com/sophiejohnson', 'https://www.linkedin.com/in/sophiejohnson', -118.2437000, 34.0522000, NULL, NULL);

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
(14, '2024_05_27_001414_add_image_to_properties_table', 12),
(15, '2024_06_07_161426_create_descriptions_table', 13);

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
(15, 'Valentin', 'Ebai', NULL, 'valentin@example.com', NULL, '+237123456789', 'Foumban', 'agent', '$2y$10$4qD2ANvJZtkW7BbbzEoH.eKUjKgBqupL3MvnwD8Hte/ncBnGZGd5y', '1', '1', 'active', '2024-05-27 00:05:39', '2024-05-27 00:05:39'),
(16, 'Ngwang', 'Shalom', NULL, 'ngwangshalom956@gmail.com', '6', 'ngwangshalom956@gmail.com', 'Cameroon', 'User', '$2y$12$kQCBHKvV9Psd1id/F6MIBOPPMY0ZQBM51b4i/7GYStn6CdxzLpAau', '0', '0', 'Active', '2024-05-29 13:33:10', '2024-05-29 13:33:10'),
(17, 'Ngwang', 'Shalom', NULL, 'ngwangshalom953@gmail.com', '237', '670701438', 'Cameroon', 'User', '$2y$12$Q61jNuqwwx/.ldkTnGzUM.eYIwXgX1Zobs/8fsTWSW8OQR3uxPuVu', '0', '0', 'Active', '2024-05-29 14:28:13', '2024-05-29 14:28:13'),
(18, 'slim', 'd', NULL, 'example@gmail.com', '237', '70141235', 'Cameroon', 'Agent', '$2y$12$M.8yt.k1vZQcLB4uS/gMeOVhHkG6v6Oaz.//viKUCKpIR1.m4/Izu', '0', '0', 'Active', '2024-05-29 14:40:02', '2024-05-29 14:40:02');

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
-- Indexes for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descriptions_property_id_foreign` (`property_id`);

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
-- AUTO_INCREMENT for table `descriptions`
--
ALTER TABLE `descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD CONSTRAINT `descriptions_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

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
