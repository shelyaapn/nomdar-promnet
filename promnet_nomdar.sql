-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221217.13890a947a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 09:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promnet_nomdar`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaKecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `NamaKecamatan`, `created_at`, `updated_at`) VALUES
(1, 'Babakancikao', NULL, NULL),
(2, 'Bojong', NULL, NULL),
(3, 'Bungursari', NULL, NULL),
(4, 'Campaka', NULL, NULL),
(5, 'Cibatu', NULL, NULL),
(6, 'Darangdan', NULL, NULL),
(7, 'Jatiluhur', NULL, NULL),
(8, 'Kiarapedes', NULL, NULL),
(9, 'Maniis', NULL, NULL),
(10, 'Pasawahan', NULL, NULL),
(11, 'Plered', NULL, NULL),
(12, 'Pondoksalam', NULL, NULL),
(13, 'Purwakarta', NULL, NULL),
(14, 'Sukasari', NULL, NULL),
(15, 'Sukatani', NULL, NULL),
(16, 'Tegalwaru', NULL, NULL),
(17, 'Wanayasa', NULL, NULL);

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
-- Table structure for table `firefighters`
--

CREATE TABLE `firefighters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaPoswil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTelepon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firefighters`
--

INSERT INTO `firefighters` (`id`, `NamaPoswil`, `NoTelepon`, `districts_id`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, 'Mako Pusat', '(0264) 8225113', 13, 'Jl. A. Yani No.113, Cipaisan, Purwakarta', NULL, NULL),
(2, 'Poswil I  Plered', '081908885113', 15, 'KP. Cianting RT.001/001 Desa Cianting, Sukatani', NULL, NULL),
(3, 'Poswil II Wanayasa', '087878225113', 17, 'Gedung Kahuripan RT.018/007 Desa Wanayasa', NULL, NULL),
(4, 'Poswil III Kopo', '087722274113', 3, 'Blok L Kawasan Kota Bukit Indah, Dangdeur, Bungursari', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaRumahSakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTelepon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `NamaRumahSakit`, `NoTelepon`, `districts_id`, `Alamat`, `created_at`, `updated_at`) VALUES
(21, 'RS Umum Karina Medika', '02648220544', 1, 'Jl. Baru Kp.Krajan RT 01 RW 01 Babakancikao, Purwakarta, 41151', NULL, NULL),
(22, 'RS Umum Bhakti Husada II Purwakarta', '02648225344', 4, 'Jl. Raya Sadang Subang KM 5 RT 01/01 Cikumpay, Campaka, Purwakarta', NULL, NULL),
(23, 'RS Umum Holistic Purwakarta', '02648223434', 12, 'Jl. Terusan Kapten Halim KM.09 Salamulya, Pondoksalam, Purwakarta', NULL, NULL),
(24, 'RS Ibu dan Anak Dian', '0264270219', 11, 'Jl. Raya Cibogo Hilir, Plered, Purwakarta', NULL, NULL),
(25, 'RS Umum Amira', '02648221191', 13, 'Jl. Ipik Gandamanah RT 35/03 Munjul Jaya, Purwakarta', NULL, NULL),
(26, 'RS Ibu dan Anak', '0264211680', 13, 'Jl. Veteran No. 15 Purwakarta 41118', NULL, NULL),
(27, 'RS Umum Rama Hadi', '0264202136', 3, 'Kp.cimaung RT 27/04 Desa Ciwangi, Bungursari, Purwakarta', NULL, NULL),
(28, 'RS Umum MH.Thamrin Purwakarta', '2648222222', 3, 'Jl. Raya Bungur Sari No.36 Purwakarta', NULL, NULL),
(29, 'RS Umum Siloam Purwakarta', '0264219168', 3, 'Jl. Bungursari No.1, Purwakarta', NULL, NULL),
(30, 'RS Umum Daerah Bayu Asih', '0264200100', 13, 'JL. Veteran No.39 Purwakarta', NULL, NULL);

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
(52, '2022_12_19_131825_create_districts_table', 2),
(59, '2022_12_19_154943_create_polices_table', 3),
(60, '2022_12_19_155056_create_firefighters_table', 3),
(61, '2022_12_19_155119_create_hospitals_table', 3),
(62, '2022_12_19_155201_create_plns_table', 3),
(63, '2022_12_19_155218_create_pdams_table', 3),
(64, '2022_12_19_155644_add_districts_id_column_to_polices_table', 4),
(65, '2022_12_19_155707_add_districts_id_column_to_firefighters_table', 4),
(66, '2022_12_19_155727_add_districts_id_column_to_hospitals_table', 4),
(67, '2022_12_19_155744_add_districts_id_column_to_plns_table', 4),
(68, '2022_12_19_155800_add_districts_id_column_to_pdams_table', 4),
(69, '2022_12_19_160331_add_unique_rule_in_districts_table', 5),
(70, '2022_12_19_160610_add_unique_rule_in_polices_table', 5),
(71, '2022_12_19_160629_add_unique_rule_in_firefighters_table', 5),
(72, '2022_12_19_160646_add_unique_rule_in_hospitals_table', 5),
(73, '2022_12_19_160700_add_unique_rule_in_plns_table', 5),
(74, '2022_12_19_160715_add_unique_rule_in_pdams_table', 5);

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
-- Table structure for table `pdams`
--

CREATE TABLE `pdams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaPdam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTelepon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pdams`
--

INSERT INTO `pdams` (`id`, `NamaPdam`, `NoTelepon`, `districts_id`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, 'Perusahaaan Daerah Air Minum (PDAM) Tirta Dharma', '0264-200000 / 0264-200001', 13, 'Jl. Letnan Jenderal Jl. Basuki Rahmat No 120, Sindangkasih, Purwakarta, Jawa Barat 41112', NULL, NULL),
(2, 'PDAM Kabupaten Purwakarta', '082219055547', 7, 'Jl. Ir.H.Juanda,Cibinong,Kec.Jatiluhur,Kabupaten Purwakarta,Jawa Barat 41152', NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plns`
--

CREATE TABLE `plns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaPln` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTelepon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plns`
--

INSERT INTO `plns` (`id`, `NamaPln`, `NoTelepon`, `districts_id`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, 'PT. PLN (Persero)', '0264-200033 / 0264-200075 / 0264-205050', 13, 'Jl. Kol. Kornel Singawinata No. 50, Purwakarta, Jawa Barat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `polices`
--

CREATE TABLE `polices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaPolsek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTelepon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polices`
--

INSERT INTO `polices` (`id`, `NamaPolsek`, `NoTelepon`, `districts_id`, `Alamat`, `created_at`, `updated_at`) VALUES
(1, 'Polsek Campaka', '(0264) 205851', 4, 'Jl. Raya Campaka No.17 Campaka', NULL, NULL),
(2, 'Polsek Cibatu', '(0264) 202241', 5, 'Jl. Raya Cibatu Km.15 Cibatu', NULL, NULL),
(3, 'Polsek Bungursari', '(0264) 216630', 3, 'Jl. Raya Bungursari No.213', NULL, NULL),
(4, 'Polsek Kusus Jatiluhur', '(0264) 8224075', 7, 'Jl. H. Djuanda Jatiluhur Purwakarta', NULL, NULL),
(5, 'Polsek Jatiluhur', '(0264) 230605', 7, 'Jl. Pramuka No.13 Jatiluhur', NULL, NULL),
(6, 'Polsek Pasawahan', '(0264) 213440', 10, 'Jl. Terusan Kapten Halim No.24', NULL, NULL),
(7, 'Polsek Purwakarta', '(0264) 8221717', 13, 'Jl.Jend. Ahmad Yani No.150', NULL, NULL),
(8, 'Polsek Maniis', '(0264) 231686', 9, 'Jl.Raya Palumbon Maniis', NULL, NULL),
(9, 'Polsek Darangdan', '(0264) 620359', 6, 'Jl.Raya Darangdan Km.22', NULL, NULL),
(10, 'Polsek Sukatani', '(0264) 272678', 15, 'Jl.Raya sukatani Km.11 Purwakarta', NULL, NULL),
(11, 'Polsek Wanayasa', '(0264) 620531', 17, 'Jl.Alun-alun Selatan Wanayasa', NULL, NULL),
(12, 'Polsek Plered', '(0264) 272678', 11, 'Jl.Raya Warung Kandang No.51', NULL, NULL),
(13, 'Polsek Kiara Pedes', '(0264) 7021011', 8, 'Jl.Raya Kiara Pedes Purwakarta', NULL, NULL),
(14, 'Polsek Bojong', '(0264) 621101', 2, 'Jl.Raya Bojong KM 30 Purwakarta', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_namakecamatan_unique` (`NamaKecamatan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `firefighters`
--
ALTER TABLE `firefighters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `firefighters_namaposwil_unique` (`NamaPoswil`),
  ADD KEY `firefighters_districts_id_foreign` (`districts_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hospitals_namarumahsakit_unique` (`NamaRumahSakit`),
  ADD KEY `hospitals_districts_id_foreign` (`districts_id`);

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
-- Indexes for table `pdams`
--
ALTER TABLE `pdams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pdams_namapdam_unique` (`NamaPdam`),
  ADD KEY `pdams_districts_id_foreign` (`districts_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plns`
--
ALTER TABLE `plns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plns_namapln_unique` (`NamaPln`),
  ADD KEY `plns_districts_id_foreign` (`districts_id`);

--
-- Indexes for table `polices`
--
ALTER TABLE `polices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `polices_namapolsek_unique` (`NamaPolsek`),
  ADD KEY `polices_districts_id_foreign` (`districts_id`);

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
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firefighters`
--
ALTER TABLE `firefighters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pdams`
--
ALTER TABLE `pdams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plns`
--
ALTER TABLE `plns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `polices`
--
ALTER TABLE `polices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `firefighters`
--
ALTER TABLE `firefighters`
  ADD CONSTRAINT `firefighters_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD CONSTRAINT `hospitals_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `pdams`
--
ALTER TABLE `pdams`
  ADD CONSTRAINT `pdams_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `plns`
--
ALTER TABLE `plns`
  ADD CONSTRAINT `plns_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `polices`
--
ALTER TABLE `polices`
  ADD CONSTRAINT `polices_districts_id_foreign` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
