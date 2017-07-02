-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2017 at 04:10 PM
-- Server version: 5.6.35-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(30) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `country`) VALUES
(1, 'Frank Herbert', 'United States'),
(2, 'George Orwell', 'United Kingdom'),
(3, 'David Mitchell', 'United Kingdom'),
(4, 'Tasmina Perry', 'United Kingdom'),
(5, 'James Joyce', 'Switzerland'),
(6, 'Gary Paulsen', 'United States'),
(7, 'Robert Louis Stevenson', 'Scotland'),
(8, 'H Rider Haggard', 'England'),
(9, 'Nicholas Sparks', 'United States'),
(10, 'Colleen Hoover', 'United States'),
(11, 'Terry Pratchett', 'England'),
(12, 'Dorothy L Sayers', 'United Kingdom'),
(13, 'Raymond Chandler', 'United States'),
(14, 'Joseph Hamsen', 'United States'),
(15, 'Stephen King', 'United States'),
(16, 'Clive Barker', 'England'),
(17, 'Rupi Kaur', 'India'),
(18, 'Frank O Hara', 'United States'),
(19, 'John Milton', 'England'),
(20, 'Brian K Vaughan', 'United States'),
(21, 'Neil Kleid', 'United States'),
(22, 'Hillary Chute', 'United States'),
(23, 'Yotam Ottolenghi', 'United Kingdom'),
(24, 'David Chang', 'United States'),
(25, 'Chandra Moskowitz', 'United States'),
(26, 'Tina Fey', 'United States'),
(27, 'Malala Yousafzai', 'Pakistan'),
(28, 'Walter Issacson', 'United States'),
(29, 'J.K Rowling', 'England'),
(30, 'Siddharth Mukherjee', 'India'),
(31, 'Atul Gawande', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `author_id`, `genre_id`, `price`) VALUES
(100, 'The Dune', 1, 1, 199),
(101, 'Cloud Atlas', 3, 2, 259),
(102, 'The Notebook', 9, 4, 399),
(103, 'Hatchet', 6, 3, 449),
(104, 'She', 8, 3, 599),
(105, 'Fadeout', 14, 6, 299),
(106, 'Books Of Blood', 16, 5, 149),
(107, 'Sage', 20, 8, 254),
(108, 'Graphic Women', 22, 8, 379),
(109, 'Plenty', 23, 10, 488),
(110, 'Steve Jobs', 28, 11, 711),
(111, 'Discworld', 11, 12, 888),
(112, 'The Gene', 30, 7, 400),
(113, 'Daddy Girl', 4, 2, 349),
(114, 'The Lost World', 8, 3, 540),
(115, 'Being Mortal', 31, 7, 370),
(116, 'Milk And Honey', 17, 9, 285),
(117, 'Lunch Poem', 18, 9, 554),
(118, 'Momofuku', 24, 10, 490),
(119, 'Bossy Pants', 26, 11, 790),
(120, 'Harry Potter', 29, 12, 489),
(121, '1984', 2, 1, 222),
(122, 'Exiles', 5, 2, 672),
(123, 'Treasure Island', 7, 3, 718),
(124, 'Slammed', 10, 4, 426),
(125, 'The Big Sleep', 13, 6, 117),
(126, 'The Shining', 15, 4, 444),
(127, 'Paradise Lost', 19, 9, 333),
(128, 'Veganomicon', 25, 10, 840),
(129, 'I Am Malala', 27, 11, 770),
(130, 'Beautiful Disaster', 9, 4, 866),
(131, 'Gaudy Night', 12, 6, 900),
(132, 'Spiderman', 21, 8, 218),
(133, 'Neuromancer', 1, 1, 939);

-- --------------------------------------------------------

--
-- Table structure for table `cus_order`
--

CREATE TABLE `cus_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `order_date` date NOT NULL,
  `book_id` int(10) DEFAULT NULL,
  `cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cus_order`
--

INSERT INTO `cus_order` (`order_id`, `customer_id`, `order_date`, `book_id`, `cost`) VALUES
(201, 10, '2017-01-20', 101, 259),
(202, 14, '2017-01-23', 111, 888),
(203, 15, '2017-02-02', 106, 149),
(204, 11, '2017-02-03', 107, 254),
(205, 22, '2017-02-03', 111, 888),
(206, 20, '2017-02-14', 113, 349),
(207, 19, '2017-03-14', 110, 711),
(208, 10, '2017-03-05', 132, 218),
(209, 16, '2017-03-06', 113, 349),
(210, 17, '2017-03-07', 129, 770),
(211, 19, '2017-03-07', 130, 866),
(212, 14, '2017-04-01', 126, 444),
(213, 21, '2017-04-02', 124, 426);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(5) NOT NULL,
  `home_number` int(7) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `city` varchar(18) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `home_number`, `area`, `city`, `customer_id`) VALUES
(80, 200, 'Manathvadi_road', 'Mysore', 10),
(81, 338, 'Ring_road', 'Bangalore', 11),
(82, 726, 'Mowbrays_road', 'Chennai', 12),
(83, 84, 'Ashoka_road', 'Mysore', 13),
(84, 2822, 'Charmi_road', 'Mumbai', 14),
(85, 1097, 'Bailey_road', 'Patna', 15),
(86, 123, 'Kodiabail', 'Mangalore', 16),
(87, 123, 'M.G._road', 'Bangalore', 17),
(88, 19, 'Siddharth_road', 'Mysore', 18),
(89, 233, 'Tolstoy_road', 'Delhi', 19),
(90, 267, 'Amer_road', 'Jaipur', 20),
(91, 543, 'Tilak_marg', 'Delhi', 21),
(92, 297, 'Boring_road', 'Patna', 22);

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `phone_number` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`customer_id`, `name`, `phone_number`) VALUES
(10, 'George', 82923142),
(11, 'Janis', 87546091),
(12, 'Jeniffer', 77903526),
(13, 'James', 89453280),
(14, 'Joyce', 89473250),
(15, 'Robert', 99473550),
(16, 'Rahul', 99877650),
(17, 'Sumita', 78432166),
(18, 'Radhika', 98422166),
(19, 'Harsh', 93599166),
(20, 'Rishi', 82344922),
(21, 'Anuj', 82246452),
(22, 'James', 73498330);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_description` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_description`) VALUES
(1, 'science_fiction'),
(2, 'drama'),
(3, 'action'),
(4, 'romance'),
(5, 'horror'),
(6, 'mystery'),
(7, 'health'),
(8, 'comic'),
(9, 'poetry'),
(10, 'cooking'),
(11, 'biography'),
(12, 'fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` varchar(10) NOT NULL,
  `book_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `book_id`, `customer_id`, `rating`) VALUES
('70', 101, 10, 3),
('71', 111, 14, 4),
('72', 106, 15, 5),
('73', 122, 20, 1),
('74', 116, 10, 2),
('75', 113, 16, 3),
('76', 126, 19, 3),
('77', 124, 21, 5),
('78', 113, 20, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `cus_order`
--
ALTER TABLE `cus_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `cus_order`
--
ALTER TABLE `cus_order`
  ADD CONSTRAINT `cus_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_detail` (`customer_id`),
  ADD CONSTRAINT `cus_order_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_detail` (`customer_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_detail` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
