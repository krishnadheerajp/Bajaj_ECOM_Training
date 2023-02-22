-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2023 at 04:37 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car-rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `cdid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `cdid`, `uid`, `start_date`, `end_date`, `amount`, `created_at`, `updated_at`) VALUES
(3, 2, 25, '2023-02-09', '2023-02-17', 38000, '2023-02-09 15:03:10', '2023-02-09 15:03:10'),
(4, 4, 25, '2023-02-10', '2023-02-24', 86240, '2023-02-09 16:34:48', '2023-02-09 16:34:48'),
(5, 1, 28, '2023-02-09', '2023-03-22', 194750, '2023-02-09 16:37:54', '2023-02-09 16:37:54'),
(6, 2, 28, '2023-03-16', '2023-04-12', 128250, '2023-02-09 16:38:12', '2023-02-09 16:38:12'),
(8, 1, 25, '2023-02-10', '2023-02-22', 57000, '2023-02-10 04:17:29', '2023-02-10 04:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `base_img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `type`, `base_img`, `price`, `discount`, `created_at`, `update_at`) VALUES
(1, 'Ertiga', 'Maruti Suzuki', 'SUV', 'https://cdn.autoportal.com/img/new-cars-gallery/marutisuzuki/ertiga-facelift/exterior/marutisuzuki-ertiga-facelift-42ccfb0a.jpg', 5000, 5, '2023-02-08 05:19:34', '2023-02-09 11:53:38'),
(3, 'Carens', 'KIA', 'Hatchback', 'https://imgd.aeplcdn.com/642x336/n/tykphua_1547713.jpg?q=75', 4000, 0, '2023-02-08 05:22:34', '2023-02-08 07:45:56'),
(4, 'POLO', 'Volkswagen', 'Hatchback', 'https://images.jdmagicbox.com/quickquotes/images_main/volkswagen-polo-1-0-tsi-highline-plus-bs6-petrol-reflex-silver-184535721-60lnk.png', 7000, 12, '2023-02-08 05:24:33', '2023-02-08 07:46:04'),
(5, 'City', 'Honda', 'Sedan', 'https://imgd-ct.aeplcdn.com/1056x660/n/1yff93a_1571617.jpg?q=75', 6500, 0, '2023-02-08 05:27:58', '2023-02-08 09:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL,
  `image_url` varchar(225) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`id`, `color`, `number`, `image_url`, `is_available`, `created_at`, `updated_at`, `cid`) VALUES
(1, 'black', 'MH0123', 'https://cdn.autoportal.com/img/new-cars-gallery/marutisuzuki/ertiga-facelift/exterior/marutisuzuki-ertiga-facelift-42ccfb0a.jpg', 1, '2023-02-08 07:34:33', '2023-02-08 07:34:45', 1),
(2, 'red', 'MH9765', 'https://stimg.cardekho.com/images/car-images/large/Maruti/Ertiga/8711/1650016330874/221_red_7c080f.jpg?impolicy=resize&imwidth=420', 1, '2023-02-08 07:35:45', '2023-02-08 10:28:52', 1),
(3, 'blue', 'TS7923', 'https://imgd.aeplcdn.com/642x336/n/tykphua_1547713.jpg?q=75', 1, '2023-02-08 07:37:30', '2023-02-08 07:38:07', 3),
(4, 'silver', 'AP2973', 'https://images.jdmagicbox.com/quickquotes/images_main/volkswagen-polo-1-0-tsi-highline-plus-bs6-petrol-reflex-silver-184535721-60lnk.png', 1, '2023-02-08 07:38:50', '2023-02-08 07:38:50', 4),
(5, 'white', 'TN79823', 'https://i0.wp.com/gomechanic.in/blog/wp-content/uploads/2019/10/Webp.net-compress-image-1.jpg?resize=1000%2C606&ssl=1', 1, '2023-02-08 07:39:15', '2023-02-08 07:39:29', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `contact`, `created_at`, `updated_at`) VALUES
(25, 'Dheeraj', 'pkd', 'temp@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '9912344', '2023-02-07 10:37:12', '2023-02-07 10:37:12'),
(26, 'kypyjage', 'vyvyt', 'megajylit@mailinator.com', '8cb2237d0679ca88db6464eac60da96345513964', '928398', '2023-02-07 10:38:57', '2023-02-07 10:38:57'),
(28, 'dheeraj12', 'dheeraj1', 'cha@dheeraj.in', '8cb2237d0679ca88db6464eac60da96345513964', '991234411', '2023-02-07 10:42:11', '2023-02-07 10:42:11'),
(29, 'jaswanth', 'jas', 'hi@gmail.com', '5c69461e26c45dbaff2cc4e5cc766144bbcc017b', '72630', '2023-02-07 10:43:26', '2023-02-07 10:43:26'),
(30, 'pehyqipy', 'buporopu', 'xipoqoset@mailinator.com', '19865795547116ae27f09115e72c74d2c517d0b2', '1397831', '2023-02-07 11:41:43', '2023-02-07 11:41:43'),
(31, 'nyrigopoq', 'vijicyd', 'somedyni@mailinator.com', '8cb2237d0679ca88db6464eac60da96345513964', '9823408', '2023-02-07 11:55:02', '2023-02-07 11:55:02'),
(32, 'vufaky', 'lecezuzu', 'gihizidu@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '68754', '2023-02-08 04:17:42', '2023-02-08 04:17:42'),
(33, 'befeq', 'wivoziri', 'vaporyfeh@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '7857587', '2023-02-08 04:22:24', '2023-02-08 04:22:24'),
(34, 'repopes', 'ryfutes', 'jovex@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '9579669', '2023-02-08 04:26:01', '2023-02-08 04:26:01'),
(35, 'wisezyro', 'xecicaj', 'ryqekyce@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '5486886', '2023-02-08 04:30:45', '2023-02-08 04:30:45'),
(36, 'codogida', 'rynilid', 'josazi@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '9879768', '2023-02-08 04:58:09', '2023-02-08 04:58:09'),
(37, 'reworyhyba', 'repanyv', 'levufy@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '987978', '2023-02-08 05:04:28', '2023-02-08 05:04:28'),
(38, 'codeqoj', 'mofahe', 'bejy@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '89978', '2023-02-08 05:17:39', '2023-02-08 05:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cdid` (`cdid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`cdid`) REFERENCES `car_details` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `car_details`
--
ALTER TABLE `car_details`
  ADD CONSTRAINT `car_details_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
