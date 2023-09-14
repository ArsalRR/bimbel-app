-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2023 at 12:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbel`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:10:44', 1),
(2, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:12:43', 1),
(3, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:18:05', 1),
(4, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:19:50', 1),
(5, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:25:53', 1),
(6, '::1', 'admin1@gmail.com', 1, '2023-06-24 13:40:58', 1),
(7, '::1', 'admin1@gmail.com', 1, '2023-06-24 22:56:38', 1),
(8, '::1', 'admin1@gmail.com', 1, '2023-06-28 06:24:19', 1),
(9, '::1', 'admin1@gmail.com', 1, '2023-06-28 22:07:12', 1),
(10, '::1', 'admin1@gmail.com', 1, '2023-06-28 22:50:06', 1),
(11, '::1', 'admin1@gmail.com', 1, '2023-06-28 23:55:22', 1),
(12, '::1', 'admin1@gmail.com', 1, '2023-06-29 00:04:55', 1),
(13, '::1', 'admin1@gmail.com', 1, '2023-06-29 00:35:40', 1),
(14, '::1', 'admin1@gmail.com', 1, '2023-06-29 01:20:07', 1),
(15, '::1', 'admin1@gmail.com', 1, '2023-06-29 04:01:15', 1),
(16, '::1', 'admin1@gmail.com', 1, '2023-06-29 05:18:16', 1),
(17, '::1', 'admin1@gmail.com', 1, '2023-06-29 17:56:23', 1),
(18, '::1', 'admin1@gmail.com', 1, '2023-06-29 18:01:07', 1),
(19, '::1', 'admin1@gmail.com', 1, '2023-06-30 02:15:28', 1),
(20, '::1', 'admin1@gmail.com', 1, '2023-06-30 04:23:16', 1),
(21, '::1', 'admin1@gmail.com', 1, '2023-06-30 04:24:21', 1),
(22, '::1', 'admin1@gmail.com', 1, '2023-06-30 17:16:56', 1),
(23, '::1', 'admin1@gmail.com', 1, '2023-06-30 17:39:22', 1),
(24, '::1', 'admin1@gmail.com', 1, '2023-06-30 17:46:53', 1),
(25, '::1', 'admin1@gmail.com', 1, '2023-07-05 04:26:36', 1),
(26, '::1', 'admin1@gmail.com', 1, '2023-07-05 05:08:07', 1),
(27, '::1', 'admin1@gmail.com', 1, '2023-07-05 23:25:43', 1),
(28, '::1', 'admin1@gmail.com', 1, '2023-07-11 16:55:39', 1),
(29, '::1', 'admin1@gmail.com', 1, '2023-07-11 19:34:28', 1),
(30, '::1', 'admin1@gmail.com', 1, '2023-07-12 02:21:39', 1),
(31, '::1', 'admin1@gmail.com', 1, '2023-07-12 22:10:40', 1),
(32, '::1', 'admin1@gmail.com', 1, '2023-07-12 22:22:50', 1),
(33, '::1', 'admin1@gmail.com', 1, '2023-07-12 22:27:28', 1),
(34, '::1', 'admin1@gmail.com', 1, '2023-07-13 19:38:35', 1),
(35, '::1', 'admin1@gmail.com', 1, '2023-07-13 19:55:53', 1),
(36, '::1', 'admin1@gmail.com', 1, '2023-07-13 19:58:06', 1),
(37, '::1', 'admin1@gmail.com', 1, '2023-07-13 20:04:04', 1),
(38, '::1', 'admin1@gmail.com', 1, '2023-07-13 20:41:40', 1),
(39, '::1', 'admin1@gmail.com', 1, '2023-07-13 20:49:54', 1),
(40, '::1', 'admin1@gmail.com', 1, '2023-07-13 20:53:15', 1),
(41, '::1', 'admin1@gmail.com', 1, '2023-07-13 21:09:01', 1),
(42, '::1', 'admin1@gmail.com', 1, '2023-07-14 05:15:00', 1),
(43, '::1', 'admin1@gmail.com', 1, '2023-07-14 05:25:01', 1),
(44, '::1', 'admin1@gmail.com', 1, '2023-07-14 05:35:23', 1),
(45, '::1', 'admin1@gmail.com', 1, '2023-07-14 05:51:44', 1),
(46, '::1', 'admin1@gmail.com', 1, '2023-07-14 05:52:40', 1),
(47, '::1', 'admin1@gmail.com', 1, '2023-07-14 06:09:15', 1),
(48, '::1', 'admin1@gmail.com', 1, '2023-07-14 06:30:33', 1),
(49, '::1', 'admin1@gmail.com', 1, '2023-07-14 09:28:54', 1),
(50, '::1', 'admin1@gmail.com', 1, '2023-07-14 09:30:25', 1),
(51, '::1', 'admin1@gmail.com', 1, '2023-07-14 09:33:24', 1),
(52, '::1', 'admin1@gmail.com', 1, '2023-07-14 09:58:24', 1),
(53, '::1', 'admin1@gmail.com', 1, '2023-07-14 17:43:40', 1),
(54, '::1', 'admin1@gmail.com', 1, '2023-07-14 17:53:28', 1),
(55, '::1', 'admin1@gmail.com', 1, '2023-07-14 18:05:28', 1),
(56, '::1', 'arsal', NULL, '2023-07-15 19:14:52', 0),
(57, '::1', 'admin1@gmail.com', 1, '2023-07-15 19:15:01', 1),
(58, '::1', 'arsal', NULL, '2023-07-15 20:47:31', 0),
(59, '::1', 'admin1@gmail.com', 1, '2023-07-15 20:47:38', 1),
(60, '::1', 'admin1@gmail.com', 1, '2023-07-15 23:41:02', 1),
(61, '::1', 'admin1@gmail.com', 1, '2023-07-16 00:17:25', 1),
(62, '::1', 'admin1@gmail.com', 1, '2023-07-16 00:57:08', 1),
(63, '::1', 'admin1@gmail.com', 1, '2023-07-16 01:04:51', 1),
(64, '::1', 'admin1@gmail.com', 1, '2023-07-16 01:23:50', 1),
(65, '::1', 'admin1@gmail.com', 1, '2023-07-16 15:46:24', 1),
(66, '::1', 'admin1@gmail.com', 1, '2023-07-16 16:21:35', 1),
(67, '::1', 'admin1@gmail.com', 1, '2023-07-16 17:47:57', 1),
(68, '::1', 'admin1@gmail.com', 1, '2023-07-16 17:49:03', 1),
(69, '::1', 'admin1@gmail.com', 1, '2023-07-16 18:02:27', 1),
(70, '::1', 'admin1@gmail.com', 1, '2023-07-16 18:03:23', 1),
(71, '::1', 'arsal', NULL, '2023-07-16 19:11:18', 0),
(72, '::1', 'admin1@gmail.com', 1, '2023-07-16 19:11:26', 1),
(73, '::1', 'admin', 2, '2023-07-16 19:15:41', 0),
(74, '::1', 'admin', 2, '2023-07-16 19:15:49', 0),
(75, '::1', 'admin', 2, '2023-07-16 19:15:58', 0),
(76, '::1', 'admin123@gmail.com', 2, '2023-07-16 19:16:49', 0),
(77, '::1', 'admin', 3, '2023-07-16 19:17:41', 0),
(78, '::1', 'admin', 3, '2023-07-16 19:17:50', 0),
(79, '::1', 'arsaljustin23@gmail.com', 4, '2023-07-16 19:19:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id` int NOT NULL,
  `nama_lengkap` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `no_hp` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `asal_sekolah` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `paket` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tanda_tangan` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bukti_trasfer` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `nama_lengkap`, `alamat`, `email`, `no_hp`, `asal_sekolah`, `paket`, `jurusan`, `alias`, `tanda_tangan`, `bukti_trasfer`) VALUES
(5, 'Arsal', 'Limas', 'arasalrsal@gmail.com', '088777', 'SMK Maarif', 'paket1', 'TKJ', 'arsal', '', '1689547728_bfbc21cd94e04fd40df8.png'),
(6, 'akmal', 'Binagria', 'arasalrsal@gmil.com', '08154223', 'SMK Maarif', 'Regular', 'sistem informasi', 'akmal', '', '1689548585_c64d208e169e46f07a1a.png'),
(7, 'Yusuf', 'Progo', 'admin1@gmail.com', '0899', 'SMK Negeri', 'Class Rangking', 'sistem informasi', 'yusuf', '', '1689552648_331885745df27d5f57ca.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1687262319, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin1@gmail.com', 'arsal', '$2y$10$PmsVmgPwUhgBNdOV8iweZem6fFSJIt.5tOep.Es77Ae3zXaXp9gcO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-06-24 13:10:35', '2023-06-24 13:10:35', NULL),
(3, 'admin123@gmail.com', 'admin', '$2y$10$0NzgyZ4Pvq3AIJ4nKclhleZOacUhL93NhazHEkME6.efytGBE2afC', NULL, NULL, NULL, 'ac1f0010efff615fe9bd8856f968fff5', NULL, NULL, 0, 0, '2023-07-16 19:17:27', '2023-07-16 19:17:27', NULL),
(4, 'arsaljustin23@gmail.com', 'admin1', '$2y$10$C/3gf7erA3MERKCqcmGeSuIDGVuYLjmbf19DNsD9vvoL44KqKCdKu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-07-16 19:19:21', '2023-07-16 19:19:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
