-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 03:22 PM
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
-- Database: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'Biraj', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(20, 'IMG_32223.png'),
(21, 'IMG_88834.png'),
(22, 'IMG_31709.png'),
(23, 'IMG_36748.png'),
(24, 'IMG_72634.png'),
(25, 'IMG_38068.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Baluwatar, Kathmandu, Nepal.', 'https://goo.gl/maps/jFdoRUnTvq314zJy6', 9779828238382, 9779846582347, 'info@hotelDeluna.com', 'facebook.com', 'instagram.com', 'twitter.com', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7063.391869035566!2d85.330725!3d27.726673!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19168de06f8b:0xcfa1995cfd8b4e8d!2sBaluwatar, Kathmandu 44600!5e0!3m2!1sen!2snp!4v1704998040897!5m2!1sen!2snp');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(8) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`, `Age`) VALUES
(1, 'Jenny', 'Brown', 'j.brown@leedsbeckett.ac.uk', 'brown01', 'F', 23),
(2, 'Ray', 'Green', 'r.green@leedsbeckett.ac.uk', 'green01', 'M', 19),
(3, 'Arjun', 'Patel', 'a.patel@leedsbeckett.ac.uk', 'patel01', 'M', 20),
(4, 'Steve', 'Rich', 's.rich@leedsbeckett.ac.uk', 'rich01', 'M', 27),
(5, 'Amy', 'Park', 'a.park@leedsbeckett.ac.uk', 'park01', 'F', 20),
(6, 'Rehana', 'Hashmi', 'r.hashmi@leedsbeckett.ac.uk', 'hashmi01', 'F', 22),
(8, 'Tarun ', 'Agarwal', 't.agarwal@leedsbeckett.ac.uk', 'vgruf', 'M', 19);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(20, 'IMG_27121.svg', 'Wifi', 'At Hotel DeLuna, we understand the importance of staying connected during your stay. That&#039;s why we offer complimentary high-speed Wi-Fi access throughout our entire facility. Whether you&#039;re in your luxurious room, relaxing by the pool, or e'),
(21, 'IMG_70618.svg', 'TV', 'At Hotel DeLuna, we believe in offering a home away from home experience, and that includes entertainment. Each room in our facility is equipped with a flat-screen TV, providing a wide range of channels to cater to your preferences. Whether you want '),
(22, 'IMG_45535.svg', 'Air Conditioner', 'At Hotel DeLuna, we want to ensure your comfort and relaxation throughout your stay. Our facility is equipped with state-of-the-art air conditioning systems that provide efficient and personalized climate control in every room and common area. Whethe'),
(23, 'IMG_55914.svg', 'Spa', 'Experience the epitome of relaxation at Hotel DeLuna&#039;s exquisite spa. Nestled within our luxurious establishment, our spa is your haven of serenity and rejuvenation. From the moment you step inside, you&#039;ll be transported to a world of tranq'),
(24, 'IMG_33751.svg', 'Geyser', 'At Hotel DeLuna, we understand the importance of a refreshing and comfortable start to your day. That&#039;s why we provide a geyser in every room, ensuring you have access to hot water whenever you need it. Whether it&#039;s for a soothing morning s'),
(25, 'IMG_66645.svg', 'Room Heater', 'As your home away from home, Hotel DeLuna strives to ensure your utmost comfort, even during chilly weather. Each of our well-appointed rooms is equipped with a room heater, allowing you to create the perfect cozy ambiance during your stay. Whether y');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductName` varchar(50) NOT NULL,
  `ProductPrice` varchar(50) NOT NULL,
  `ProductImageName` varchar(50) NOT NULL,
  `ProductID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductName`, `ProductPrice`, `ProductImageName`, `ProductID`) VALUES
('Cube', '1.99', 'cube.jpg', 2),
('Book', '5.89', 'book.jpg', 3),
('Calendar', '6.9', 'calendar.jpg', 4),
('Caps', '6.3', 'Caps.jpg', 5),
('Mug', '3.99', 'Mug.jpg', 6),
('T-Shirt', '100.99', 'T-shirt.jpeg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1),
(3, 'Simple Room', 250, 300, 10, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 0, 1),
(4, 'Deluxe Room', 300, 500, 10, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(5, 'Luxury Room', 600, 600, 2, 8, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(6, 'Supreme deluxe room', 500, 900, 12, 9, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(7, 'eqeq', 100, 500, 4, 3, 2, 'dada', 1, 1),
(8, 'Superior Deluxe', 450, 5000, 5, 3, 2, 'Unwind in style with our Superior Deluxe Room at HOTEL DELUNA. This sophisticated retreat offers a perfect blend of comfort and elegance. Revel in the contemporary design, featuring a plush queen-sized bed, modern amenities, and a sleek workspace.\r\n\r\nIndulge in the well-appointed bathroom with upscale toiletries, and enjoy complimentary high-speed', 1, 0),
(9, 'Deluxe Room', 260, 2000, 8, 4, 3, 'A deluxe room is a refined and upgraded hotel accommodation, designed to provide guests with a more luxurious and comfortable stay compared to standard rooms. These rooms often feature extra amenities, upscale furnishings, and added space, making them an excellent choice for travelers seeking a touch of elegance during their stay.', 1, 0),
(10, 'Suite', 700, 10000, 4, 5, 3, 'Indulge in luxury and sophistication with our exquisite Suite Room at HOTEL DELUNA. This lavishly appointed space is designed for those seeking the pinnacle of comfort and style during their stay.\r\n\r\nThe Suite Room seamlessly combines modern elegance with thoughtful amenities, providing a haven of relaxation. Step into a spacious retreat adorned wi', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(78, 8, 20),
(79, 8, 21),
(80, 8, 22),
(81, 9, 20),
(82, 9, 21),
(83, 10, 20),
(84, 10, 21),
(85, 10, 22),
(86, 10, 23),
(87, 10, 24),
(88, 10, 25);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(73, 8, 13),
(74, 8, 14),
(75, 8, 15),
(76, 9, 13),
(77, 9, 14),
(78, 9, 15),
(79, 10, 13),
(80, 10, 14),
(81, 10, 15),
(82, 10, 17);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(27, 9, 'IMG_48125.jpg', 1),
(28, 9, 'IMG_28655.jpg', 0),
(29, 9, 'IMG_70929.jpg', 0),
(30, 8, 'IMG_22558.jpeg', 1),
(31, 8, 'IMG_35506.jpeg', 0),
(32, 10, 'IMG_32539.jpg', 0),
(33, 10, 'IMG_96374.jpg', 1),
(34, 10, 'IMG_58724.jpg', 0),
(35, 10, 'IMG_50195.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(2500) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Hotel Deluna', 'Welcome to Hotel Deluna – Where Paradise Meets \n\nNestled in the heart of paradise, Hotel Deluna offers elegant accommodations, culinary delights, and a haven of serenity. Whether you', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(17, 'Prayash Bhattarai', 'IMG_37261.jpg'),
(19, 'Bebu Shrestha', 'IMG_36208.jpeg'),
(20, 'Unnat Subedi', 'IMG_12121.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`) VALUES
(3, 'test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Table structure for table `user_creds`
--

CREATE TABLE `user_creds` (
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_creds`
--

INSERT INTO `user_creds` (`name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `password`) VALUES
('Dipen Shrestha', 'shresthabiraj102@gmail.com', 'Antonie-Möbis-Weg 14\r\nEidelstedt', '123', 22523, '2024-01-02', '123'),
('Dipen Shrestha', 'birajstha.paypal@gmail.com', 'Antonie-Möbis-Weg 14\r\nEidelstedt', '123', 22523, '2024-01-03', '123'),
('Biraj Shrestha', 'hellobiraj@gmail.com', 'Nepal', '9813283814', 44600, '2003-09-30', '$2y$10$S5n3KMo0D5AWLSTG6Qd0G.cu4AIIjmykfpsfGZM5GGIngiixFKYma'),
('Unnat', 'unnat@gmail.com', 'Antonie-Möbis-Weg 14\r\nEidelstedt', '9813283814', 22523, '2024-01-01', '$2y$10$EEiatFWcYsQvA7F3f0RiPuFyWEWdyUwOqDjnnBlN0z.urAKIqCCEy'),
('paru', 'paru@gmail.com', 'Teku', '9838428481', 22987, '2003-01-17', '$2y$10$ROPgRVX0bl2MRfiJmoMYjeqc5kUZaw4mKXigmCRud4TeIVPlCciLW'),
('kale', 'kale2@gmail.com', 'anmt', '9813838383', 12312, '2024-01-03', '$2y$10$Yjn2mK1gAgQuQ0yoPdWrTuZdqLZya.sVqvrZqaKup6vBnmcpQD3ta'),
('Dipen Shrestha', 'shresthabiraj1@gmail.com', 'Antonie-Möbis-Weg 14\r\nEidelstedt', '', 22523, '0000-00-00', '$2y$10$Wq/9yhqmtZ7WwenaKhJk8Ocug2OekKlH8obR3i1gpSOelv5jb1SeW'),
('unnati', 'unnati@gmail.com', 'teku', '9812323123', 1233, '2003-01-17', '$2y$10$KN3etkah2DrXNELOE7LByur8wfIf9LRRLN6SCnJXLoC.GymOiT8TC');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(13, 'Dipen Shrestha', 'shresthabiraj102@gmail.com', 'queries', 'Hello, I really liked the room', '2024-01-16 21:31:32', 1),
(14, 'Deepsa Shrestha', 'Deepsa@gmail.com', 'Yummy food', 'I really loved the food', '2024-01-16 22:10:16', 0),
(15, 'Unnat', 'unnat123@gmail.com', 'hello', 'hello', '2024-01-17 15:47:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
