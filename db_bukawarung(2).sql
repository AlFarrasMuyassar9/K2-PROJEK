-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 04:10 PM
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
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Alfarras Muyassar', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '+62 895-6097-02904', 'alfrsmysr3117@gmail.com', 'Jl. Tanjung No 15 Rawa Laut, Enggal, Tanjung Karang Timur, Kota Bandar Lampung, Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(2, 'Laptopp'),
(7, 'Iphone '),
(13, 'Buah'),
(14, 'Sayur'),
(15, 'Headset');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(2, 2, 'Advan Stylus', 7000000, '<p>Cocok Untuk Para Karyawan</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n', 'produk1717082434.png', 1, '2024-01-18 15:02:33'),
(9, 14, 'kol', 30000, '<p>segar</p>\r\n', 'produk1705638029.jpeg', 1, '2024-01-19 04:20:29'),
(10, 14, 'sawi', 200000, '<p>Enak cocok dibuat capcay</p>\r\n', 'produk1705638099.jpeg', 1, '2024-01-19 04:21:39'),
(11, 15, 'Tws Gm 2Pro', 900000, '<p>Cocok buat Gaming no Delay</p>\r\n', 'produk1717081936.jpg', 1, '2024-01-19 04:22:44'),
(12, 7, 'Iphone 12 Pro', 14000000, '<p>Cocok buat Gengsi</p>\r\n', 'produk1717081424.jpg', 1, '2024-01-19 04:23:30'),
(13, 14, 'labusiam', 10000, '<p>enak cocok untuk lalapan</p>\r\n', 'produk1706069699.jpeg', 1, '2024-01-19 04:24:15'),
(14, 13, 'durian', 95000, '<p>enak dan manis</p>\r\n', 'produk1705638301.jpeg', 1, '2024-01-19 04:25:01'),
(15, 13, 'alpukat', 30000, '<p>manis dan gurih seperti mentega</p>\r\n', 'produk1705638343.jpeg', 1, '2024-01-19 04:25:43'),
(16, 14, 'brokoli', 40000, '<p>Sehat bergizi</p>\r\n', 'produk1705638399.jpg', 1, '2024-01-19 04:26:39'),
(19, 13, 'Stroberry', 30000, '<p>manis asem kecut</p>\r\n', 'produk1717081316.png', 1, '2024-01-19 04:29:13'),
(20, 2, 'msi 3000', 6000000, '<p>Laptop Gacor</p>\r\n\r\n<p>&quot;</p>\r\n', 'produk1717081121.jpg', 1, '2024-01-25 04:00:12'),
(21, 2, 'Acer Aspire', 8000000, '<p>Cocok untuk keperluan sehari hari</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1717083012.jpg', 1, '2024-05-30 15:25:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
