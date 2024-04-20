-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 03:48 AM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(3, 1, 2, 'Apple iPhone 15 Pro Max (256 GB) - Blue Titanium', 148900, 1, '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'test', '7823659970', 'test@test.com', 'paytm', 'flat no. abc, abc, abc, abc, India - 189322', 'Apple iPhone 15 Pro Max (256 GB) - Blue Titanium (148900 x 1) - ', 148900, '2024-04-20', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'AirPods-Pro', 'plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience.', 24000, 'airpods-pro-2-apple.jpeg', 'airpods2.jpeg', 'airpods.jpeg'),
(2, 'Apple iPhone 15 Pro Max (256 GB) - Blue Titanium', 'The iPhone 15 Pro Max boasts cutting-edge features, including enhanced camera capabilities and powerful performance upgrades, continuing Apple&#39;s legacy of innovation in smartphone technology.', 148900, '2.jpg', '1.jpg', '3.jpg'),
(3, 'Nokia 2660 Flip 4G', 'Nokia 2660 Flip 4G Volte keypad Phone with Dual SIM, Dual Screen, inbuilt MP3 Player & Wireless FM Radio | Black', 4349, 'nf1.jpg', 'nf2.jpg', 'nf3.jpg'),
(4, 'Realme narzo 60X 5G', 'realme narzo 60X 5G (Stellar Green,6GB,128GB Storage) Up to 2TB External Memory | 50 MP AI Primary Camera | Segments only 33W Supervooc Charge', 11499, 'r1.jpg', 'r2.jpg', 'r3.jpg'),
(5, 'amsung Galaxy S24 Ultra 5G ', 'Meet Galaxy S24 Ultra, the ultimate form of Galaxy Ultra with a new titanium exterior and a 17.25cm (6.8&#34;) flat display. It&#39;s an absolute marvel of design.', 139999, 's24 1.jpg', 's24 2.jpg', 's24 3.jpg'),
(6, 'Nokia G42 5G', 'Nokia G42 5G Powered by Snapdragon® 480 Plus 5G | 50MP Triple Rear AI Camera | 6GB RAM (4GB RAM + 2GB Virtual RAM) | 128GB Storage | 3-Day Battery Life | 2 Years of Android Upgrades | SO Purple', 9999, 'n1.jpg', 'n2.jpg', 'n3.jpg'),
(7, 'boAt Airdopes 141', 'boAt Airdopes 141 Bluetooth TWS Earbuds with 42H Playtime,Low Latency Mode for Gaming, ENx Tech, IWP, IPX4 Water Resistance, Smooth Touch Controls(Bold Black)', 899, 'b1.jpg', 'b2.jpg', 'b3.jpg'),
(8, 'pTron Bassbuds Zen In-Ear TWS Earbuds', 'pTron Bassbuds Zen In-Ear TWS Earbuds with Quad Mic TruTalk ENC Calls, 50Hrs Playtime, Bluetooth 5.3 Headphones with Mic, Deep Bass, Game/Music Modes, Touch Control, Type-C Fast Charging & IPX4 (Blue)', 999, 'p1.jpg', 'p2.jpg', 'p3.jpg'),
(9, 'Boult Audio Z40 ', 'Boult Audio Z40 True Wireless in Ear Earbuds with 60H Playtime, Zen™ ENC Mic, Low Latency Gaming, Type-C Fast Charging, Made in India, 10mm Rich Bass Drivers, IPX5, Bluetooth 5.3 Ear Buds TWS (Blue)', 1164, 'bl1.jpg', 'bl2.jpg', 'bl3.jpg'),
(10, 'Wings Phantom Pro Earphones', 'Wings Phantom Pro Earphones Gaming Earbuds with LED Battery Indicator, 50ms Low Latency, Bluetooth 5.3, 40 Hours Playtime, MEMs Mic, IPX4 Resist, 12mm Driver, 500mah case, Headphones, (Black TWS)', 1099, 'w1.jpg', 'w2.jpg', 'w3.jpg'),
(11, 'Noise Newly Launched Quad Call', 'Noise Newly Launched Quad Call 1.81&#34; Display, Bluetooth Calling Smart Watch, AI Voice Assistance, 160+Hrs Battery Life, Metallic Build, in-Built Games, 100 Sports Modes, 100+ Watch Faces (Jet Black)', 1299, 'nn1.jpg', 'nn2.jpg', 'nn3.jpg'),
(12, 'boAt Wave Call 2', 'boAt Wave Call 2 with 1.83&#34; HD Display, Advanced BT Calling, DIY Watch Face Studio, Coins, 700+Active Modes, Live Cricket Scores, Smart Watch for Men & Women(Active Black)', 1499, 'b1.jpg', 'b2.jpg', 'b3.jpg'),
(13, 'Noise Newly Launched Vortex Plus', 'Noise Newly Launched Vortex Plus 1.46” AMOLED Display, AoD, BT Calling, Sleek Metal Finish, 7 Days Battery Life, All New OS with 100+ Watch Faces & Health Suite (Jet Black)', 2499, 'n1.jpg', 'n2.jpg', 'n3.jpg'),
(14, 'TIMEX iConnect EVO+', 'TIMEX iConnect EVO+Made in India Unisex Smartwatch|Largest Display 2.04&#34; AMOLED with 368x448 Pixel Bluetooth Calling|Rotating Functional Crown|AI Voice Assist|Upto 7 Days Battery -TWIXW404T', 1795, 't1.jpg', 't2.jpg', 't3.jpg'),
(15, 'HP Victus Gaming Laptop', '\r\nClick to open expanded view\r\n\r\n\r\n4 VIDEOS\r\n\r\n\r\n\r\n\r\n\r\nHP Victus Gaming Laptop, 12th Gen Intel Core i5-12450H, 4GB RTX 3050 GPU, 15.6-inch (39.6 cm) FHD IPS 144Hz, 16GB DDR4, 512GB SSD, Backlit KB, B&O Dual Speakers (Win 11, MSO, Blue, 2.37 kg), fa0666TX', 68000, 'hp1.jpg', 'hp2.jpg', 'hp3.jpg'),
(16, 'ASUS TUF Gaming F15', 'ASUS TUF Gaming F15, 15.6&#34;(39.62 cms) FHD 144Hz, Intel Core i7-11800H 11th Gen, 4GB NVIDIA GeForce RTX 3050 Ti, Gaming Laptop (16GB/512GB SSD/Windows 11/90WHrs Battery/Black/2.30 Kg), FX506HE-HN382W', 67000, 't1.jpg', 't2.jpg', 't3.jpg'),
(17, 'Acer Nitro V Gaming Laptop ', 'Acer Nitro V Gaming Laptop 13th Gen Intel Core i5-13420H with RTX 3050 Graphics 6 GB VRAM, 144Hz Display (16 GB DDR5/ 1 TB SSD/Windows 11 Home/Wi-Fi 6),15.6&#34;(39.6cms) FHD ANV15-51', 74000, 'a1.jpg', 'a2.jpg', 'a3.jpg'),
(18, 'Lenovo IdeaPad Gaming 3 ', 'Lenovo IdeaPad Gaming 3 AMD Ryzen 7 6800H 15.6&#34; (39.62cm) FHD IPS 120Hz Gaming Laptop (16GB/512GB SSD/Win11/Office/NVIDIA RTX 3050 4GB/RGB Keyboard/Alexa/3 Month Game Pass/Onyx Grey/2.32Kg),82SB00Y8IN', 66000, 'l1.jpg', 'l2.jpg', 'l3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'test', 'test@test.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
