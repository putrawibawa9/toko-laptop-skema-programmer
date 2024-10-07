-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2024 at 11:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$xXL1L.Dl0wGbjflMalTFne6oND/wPuAPE.3YrZSjaX4ZOqyYnlJeu'),
(2, 'admin', '$2y$10$uiV1MGfNkyWVstt.WoMWc.VFWJqqXUbVuDrVhGmpEmi/B/gQRbSFu'),
(3, 'user', '$2y$10$0qyeNVQ4wo8ZMidD6M.cwe0Q/zt1H85EU2sAc8zUT/TxRubFKKlaO'),
(4, 'user', '$2y$10$iSI3.aC/gVgcUr06pWM.R.fbGmEbip7RhcfvFEQ7w5DGJ11lh6Qre'),
(5, 'putrawibawa9', '$2y$10$JoJz2drJpYDq1.HzGuopP.HPxy2GLSooQ4.f75ieeVV2/fm1xZQ/y'),
(6, 'admin', '$2y$10$I/NYL0/3fulfIdPLbH.nTeC7cqJfDtnuGc5XMTZTQUgo8MR5X8uCS'),
(7, 'admin', '$2y$10$BT9rEc3c4PHBtdyWCes9e.vauWA11Ulo3EsqcXRgm0mXW56aNkPtK');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `harga`, `stok`, `gambar`) VALUES
(21, 'Honda', 'Honda Mitsubishi', 200000, 2, '66e3dffb58458.jpeg'),
(22, 'Mio', 'Mio beat', 900000, 75, '66e3e0323e9f7.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int NOT NULL,
  `produk_id` int NOT NULL,
  `date` date NOT NULL,
  `jumlah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `produk_id`, `date`, `jumlah`) VALUES
(1, 17, '2024-09-12', NULL),
(2, 18, '2024-09-12', NULL),
(3, 17, '2024-09-12', NULL),
(4, 17, '2024-09-12', NULL),
(5, 18, '2024-09-12', NULL),
(6, 18, '2024-09-12', NULL),
(7, 18, '2024-09-12', NULL),
(8, 18, '2024-09-12', NULL),
(9, 18, '2024-09-12', NULL),
(10, 18, '2024-09-12', NULL),
(11, 18, '2024-09-12', NULL),
(12, 18, '2024-09-12', NULL),
(13, 19, '2024-09-12', NULL),
(14, 18, '2024-09-12', NULL),
(15, 18, '2024-09-12', NULL),
(16, 18, '2024-09-12', NULL),
(17, 18, '2024-09-12', NULL),
(18, 19, '2024-09-12', NULL),
(19, 18, '2024-09-12', NULL),
(20, 19, '2024-09-13', NULL),
(21, 22, '2024-09-13', NULL),
(22, 22, '2024-09-13', NULL),
(23, 21, '2024-09-13', NULL),
(24, 21, '2024-09-13', NULL),
(25, 21, '2024-09-13', 2),
(26, 21, '2024-09-13', 6),
(27, 22, '2024-09-13', 16),
(28, 22, '2024-09-13', 2),
(29, 22, '2024-09-13', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'user', '$2y$10$u5znfTJ1ZHvmDo6Zs6GBvOx2LB/CnVhc6SJaP/Jif8vRBI1uOk0J2'),
(2, 'user', '$2y$10$Z6mhqooKWdOXCG8r/bZtKuPXORC/ChyazBwmhiprz00Pv9aprgZzy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
