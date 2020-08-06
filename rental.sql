-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 09:35 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--
CREATE DATABASE IF NOT EXISTS `rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental`;

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `name`, `image`, `date`, `email`, `website`) VALUES
(1, 'BLAST CLEANER 25 L', 'https://www.boels.at/assets/modules/products/blast_cleaner_25_l_big_1.jpg', '2020-09-01 10:00:00', 'office@boels.at', 'https://www.boels.at'),
(2, 'SHOT-BLASTING MACHINE, 230 V', 'https://www.boels.at/assets/modules/products/shot_blasting_machine_230_v_big_1.jpg', '2020-10-01 09:00:00', 'office@boels.at', 'https://www.boels.at/'),
(3, 'BLASTING NOZZLE', 'https://www.boels.at/assets/modules/products/blasting_nozzle_big_1.jpg', '2020-08-21 17:00:00', 'office@boels.at', 'https://www.boels.at/'),
(4, 'DUST EXTRACTOR WITH LONGOPAC, 230 V', 'https://www.boels.at/assets/modules/products/dust_extractor_with_longopac_230_v_big_1.jpg', '2020-08-20 16:00:00', 'office@boels.at', 'https://www.boels.at/'),
(7, 'WET/DRY VACUUM CLEANER 45 L', 'https://www.boels.at/assets/modules/products/wetdry_vacuum_cleaner_45_l_big_1.jpg', '2020-08-20 16:00:00', 'office@boels.at', 'https://www.boels.at/'),
(8, 'POND / SWIMMING POOL PUMP', 'https://www.boels.at/assets/modules/products/pond_swimming_pool_pump_big_1.jpg', '2020-08-10 07:00:00', 'office@boels.at', 'https://www.boels.at/'),
(9, 'ESCALATOR CLEANER', 'https://www.boels.at/assets/modules/products/escalator_cleaner_big_1.jpg', '2020-09-14 11:00:00', 'office@boels.at', 'https://www.boels.at/'),
(10, 'CARPET CLEANER', 'https://www.boels.at/assets/modules/products/carpet_cleaner_big_1.jpg', '2020-10-01 14:00:00', 'office@boels.at', 'https://www.boels.at/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
