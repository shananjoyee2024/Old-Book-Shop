-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 09:04 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(1, 258263, 'Hasibul Hossen', 100, 1, '711gd93ifkl_custom-4da4cd0caaee24686552a01b6a9a5fe365b0e08d-s800-c85.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(4, 3, 'shanto', 'hasibulhossenshanto619@gmail.com', '015666666', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `method` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `total_products` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `total_price` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `placed_on` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(4, 3, 'rakib', '0123456789', 'rakib@gmail.com', 'cash on delivery', 'flat no. 1, kkkkk, khulna, Bd - 123456', ', à¦‡à¦šà§à¦›à¦¾ à¦ªà§‚à¦°à¦£ (2) , à¦†à¦®à¦¿ à¦¤à¦ªà§ (2) ', '1000', '13-May-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(10, 'à¦‡à¦šà§à¦›à¦¾ à¦ªà§‚à¦°à¦£', 200, 'download (1).jpeg'),
(11, 'à¦†à¦®à¦¿ à¦¤à¦ªà§', 300, 'download (2).jpeg'),
(12, 'à¦†à¦¬à¦¾à¦°à§‹ à¦Ÿà§à¦¨à§à¦Ÿà§à¦®à¦¿ à¦“ à¦†à¦¬à¦¾à¦°à§‹ à¦›à§‹à¦Ÿà¦¾à¦šà§à¦šà§', 250, 'download (3).jpeg'),
(13, 'à¦—à¦¾à¦¬à§à¦¬à§', 500, 'download (4).jpeg'),
(14, 'à¦à¦¨à¦¿à¦®à§à¦¯à¦¾à¦¨', 500, 'download (5).jpeg'),
(15, 'à¦°à¦¾à¦¶à¦¾', 610, 'download (6).jpeg'),
(16, 'à¦¸à§‡à¦°à¦¿à¦¨à¦¾', 450, 'download (7).jpeg'),
(17, 'à¦­à§‚à¦¤à§‡à¦° à¦¬à¦¾à¦šà§à¦šà¦¾ à¦¸à§‹à¦²à¦¾à§Ÿà¦®à¦¾à¦¨', 1050, 'download (8).jpeg'),
(18, 'à¦®à¦¹à¦¾à¦•à¦¾à¦¶à§‡à¦° à¦ªà§à¦°à¦¾à¦£à§€', 599, 'download (9).jpeg'),
(19, 'à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦•à¦¥à¦¾', 850, 'download (10).jpeg'),
(20, 'à¦¬à¦¿à¦ªà§à¦²à¦¬à§€ à¦†à¦®à¦¿', 450, 'download (11).jpeg'),
(21, 'à¦•à¦¿à¦¶à§‹à¦° à¦•à¦¬à¦¿à¦¤à¦¾', 230, 'download (12).jpeg'),
(22, 'à¦¸à¦¨à§à¦§à§à¦¯à¦¾', 330, 'download (13).jpeg'),
(23, 'à¦¨à¦¤à§à¦¨ à¦šà¦¾à¦à¦¦', 260, 'download (14).jpeg'),
(24, 'à¦¶à§à¦°à§‡à¦·à§à¦  à¦•à¦¬à¦¿à¦¤à¦¾', 260, 'download (15).jpeg'),
(25, 'à¦¸à¦žà§à¦šà¦¿à¦¤à¦¾', 360, 'download (16).jpeg'),
(26, 'à¦®à§‡à¦˜à¦¨à¦¾à¦¦à¦¬à¦§ à¦•à¦¾à¦¬à§à¦¯', 550, 'download (17).jpeg'),
(27, 'à¦šà¦¤à§à¦°à§à¦¦à¦¶à¦ªà¦¦à§€ à¦•à¦¬à¦¿à¦¤à¦¾à¦¬à¦²à¦¿', 220, 'download (18).jpeg'),
(28, 'à¦¬à§€à¦°à¦¾à¦¦à¦¨à¦¾ à¦•à¦¾à¦¬à§à¦¯', 200, 'download (19).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(5, 'NWU Deep Magic', 'shanto@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(258260, 'Hasibul Hossen', 'hasibulhossenshanto610@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258264;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
