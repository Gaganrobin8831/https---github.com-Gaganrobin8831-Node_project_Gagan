-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 08:03 AM
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
-- Database: `tour_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cab_booking`
--

CREATE TABLE `cab_booking` (
  `bookingid` int(11) NOT NULL,
  `taxi_for_day` varchar(50) NOT NULL,
  `taxi_for` varchar(50) NOT NULL,
  `from_location` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `noof_traveller` varchar(50) NOT NULL,
  `taxi_id` int(11) NOT NULL,
  `noof_cars` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `suggestions` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_booking`
--

INSERT INTO `cab_booking` (`bookingid`, `taxi_for_day`, `taxi_for`, `from_location`, `destination`, `noof_traveller`, `taxi_id`, `noof_cars`, `email_id`, `suggestions`, `date`) VALUES
(3, 'nne', '', '', '', '', 0, 0, '', '', ''),
(4, 'nne', '', '', '', '', 0, 0, '', '', ''),
(5, 'nne', '', '', '', '', 0, 0, '', '', ''),
(6, 'nne', 'none', 'none', '', '6', 88, 8, 'singhnavdeep12347@gmail.com', 'npo', ''),
(7, 'nooo', 'none', 'none', '2024-01-24', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-24'),
(8, 'nooo', 'none', 'none', '2024-01-24', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-24'),
(9, 'nooo', 'none', 'none', '', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', ''),
(10, 'nooo', 'none', 'none', '2024-01-23', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-23'),
(11, 'nooo', 'none', 'none', '', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-23'),
(12, 'nooo', 'none', 'none', 'wednesday', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-09'),
(13, 'nooo', 'none', 'none', 'wednesday', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-01-09'),
(14, 'nooo', 'none', 'none', 'wednesday', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-02-08'),
(15, 'nooo', 'none', 'none', 'wednesday', '69', 880, 80, 'singhnavdeep12347@gmail.com', 'npo', '2024-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `cab_table`
--

CREATE TABLE `cab_table` (
  `taxi_id` int(11) NOT NULL,
  `taxi_type` varchar(50) NOT NULL,
  `taxi_model` varchar(50) NOT NULL,
  `rent_for_a_day` varchar(50) NOT NULL,
  `no_of_seats` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_table`
--

INSERT INTO `cab_table` (`taxi_id`, `taxi_type`, `taxi_model`, `rent_for_a_day`, `no_of_seats`, `image`) VALUES
(9, 'nooo', 'none', 'none', '', '4.jpg'),
(10, 'Navdeep Singh', 'none', 'none', '4', '14.jpg'),
(11, 'nooo', 'none', 'none', '4', '3.jpg'),
(12, 'nooo', 'none', 'none', '4', '3.jpg'),
(13, 'nooo', 'none', 'none', '4', '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(11) NOT NULL,
  `catergory_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `catergory_name`) VALUES
(2, 'Adventure Tours'),
(3, 'Beach Tours'),
(4, 'Cultural Tours'),
(5, 'Hill Station Tours'),
(8, 'Safari Tour'),
(9, 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`id`, `name`, `mobile_no`, `email_id`, `feedback`) VALUES
(5, 'Navdeep Singh', '07717457153', 'singhnavdeep12347@gmail.com', 'this is a very good place '),
(6, 'Navdeep Singh', '07717457153', 'singhnavdeep12347@gmail.com', 'this is a very good place '),
(7, 'sannia', '09988776655', 'sanniaarora88@gmail.com', 'good'),
(8, 'Gagandeep_singh', '06280738831', 'gaganrobin71@gmail.com', 'dfghgfdvbn\r\nvdfgbhgfdfgh\r\ndbfhbgdbs\r\ndsnb\r\nsgd\r\nbns\r\ngdbhhsd\r\ngbnsnbdg'),
(9, 'Gagandeep_singh', '06280738831', 'gaganrobin71@gmail.com', 'dfghgfdvbn\r\nvdfgbhgfdfgh\r\ndbfhbgdbs\r\ndsnb\r\nsgd\r\nbns\r\ngdbhhsd\r\ngbnsnbdg'),
(10, 'gagan singh', '876543212345', 'gagansingh@gmail.com', 'sdfghjhgfds\r\nghjhgrfdsdfghnmj\r\ncvbnghm\r\nngbfdsd'),
(11, 'joban singh', '123456765432', 'joban@gmail.com', 'dfvdsvcc\r\nsd\r\nvs\r\nd\r\nvsd\r\n'),
(12, 'Gagandeep_singh', '06280738831', 'gaganrobin71@gmail.com', 'dsbsfbs\r\nbs\r\nb\r\nsb\r\ns\r\nb\r\nwf\r\nh\r\net'),
(13, 'gshsg', '23456yu765432', 'gaganrobin71@gmail.com', 'fgdsfg\r\new\r\ng\r\nsdg\r\ns\r\ng'),
(14, 'gagan singh', '06280738831', 'gaganrobin71@gmail.com', 'eegd\\sah\r\ngs\r\ndgwsh\r\ngw\r\nr\r\nhg\r\nwq');

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE `forget_password` (
  `id` int(11) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `mobile_number` decimal(18,2) NOT NULL,
  `new_password` varchar(50) NOT NULL,
  `confirm_new_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`id`, `User_name`, `email_id`, `mobile_number`, `new_password`, `confirm_new_password`) VALUES
(1, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456.', '123456.'),
(2, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456.', '123456.'),
(3, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456.', '123456.');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking_table`
--

CREATE TABLE `hotel_booking_table` (
  `booking_hotel_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` decimal(18,2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_persons` varchar(50) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_booking_table`
--

INSERT INTO `hotel_booking_table` (`booking_hotel_id`, `name`, `mobile`, `email`, `no_of_persons`, `id_proof`, `check_in_date`, `check_out_date`, `amount`, `status`, `hotel_id`, `tour_id`) VALUES
(7, 'Navdeep Singh', 7717457153.00, 'singhnavdeep12347@gmail.com', '50', 'none', '2024-01-26', '2024-01-31', '80000', 'pending', 2, 8),
(8, 'sannia', 9988776655.00, 'sanniaarora88@gmail.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(9, 'sannia', 9988776655.00, 'sanniaarora88@gmail.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(10, 'sannia', 9988776655.00, 'sanniaarora88@gmail.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(11, 'navdee', 9988776655.00, 'shivangi@mehra.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(12, 'navdee', 9988776655.00, 'shivangi@mehra.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(13, 'navdee', 9988776655.00, 'shivangi@mehra.com', 'Choose...', '', '0000-00-00', '0000-00-00', '', '', 0, 0),
(14, 'Marriott Hotel', 7717457153.00, 'singhnavdeep12347@gmail.com', '8', 'n0ne', '2024-03-05', '2024-03-14', '2000', 'true', 5, 10),
(15, 'harman', 7717457153.00, 'singhnavdeep12347@gmail.com', '8', 'n0ne', '2024-03-05', '2024-03-12', '2000', 'true', 5, 11),
(16, 'harman', 7717457153.00, 'singhnavdeep12347@gmail.com', '8', 'n0ne', '2024-03-05', '2024-03-13', '2000', 'true', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE `hotel_gallery` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`id`, `hotel_id`, `image`) VALUES
(2, 1, '3.jpg'),
(3, 1, '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_table`
--

CREATE TABLE `hotel_table` (
  `hotel_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `rent` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_table`
--

INSERT INTO `hotel_table` (`hotel_id`, `name`, `description`, `rent`, `image`) VALUES
(4, 'Club Mahindra Hotel', ' We create memorable holidays in the most popular resorts ', '1500 ', 'club.jpg'),
(5, 'Marriott Hotel', 'Travel with us as we expand our world, improve the communities we serve and open doors to new opportunities', '2000', 'mmar.jpg'),
(6, 'Lemon Tree Hotel', 'We operate in the upscale segment and in mid-price sector.', '1500', 'lemon.jpg'),
(7, 'ITC Hotel', 'ITC hotel group integrates India renowned tradition of hospitality and warmth, with globally benchmarked facilities and services.', '1800', 'itc.jpg'),
(8, 'Hyatt Hotel', ' As one the world top hospitality companies, Hyatt remains  committed to caring for people so they can be their best ', '1500 ', 'haytt.webp'),
(9, 'Sahara Star Hotel', 'I stayed at Sahara Star, Santacruz twice during my travel to mumbai, upon arrival for 2 nights. I stayed with my husband, 4 yr old son, parents as well as my infant of 11 months. The stay was magnificent. Hence we booked the same hotel upon returning to mumbai after domestic travels within India.', '4000', 'sahara.webp');

-- --------------------------------------------------------

--
-- Table structure for table `new_tour_booking`
--

CREATE TABLE `new_tour_booking` (
  `booking_id` int(255) NOT NULL,
  `tour_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `no_of_person` varchar(255) NOT NULL,
  `tour_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_tour_booking`
--

INSERT INTO `new_tour_booking` (`booking_id`, `tour_id`, `name`, `email`, `phone`, `amount`, `no_of_person`, `tour_name`) VALUES
(1, 0, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(2, 0, 'joban singh', 'joban@gmail.com', '123456765432', '11000', '4', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(3, 0, 'gagan singh', 'gagansingh@gmail.com', '876543212345', '11000', '1', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(4, 0, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(5, 0, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(6, 0, 'joban singh', 'joban@gmail.com', '123456765432', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(7, 0, 'joban singh', 'joban@gmail.com', '123456765432', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(8, 0, 'robin_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '4', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(9, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(10, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(11, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(12, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(13, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(14, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(15, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '11000', '2', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi '),
(16, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '06280738831', '76000', '4', 'Delhi to Manali');

-- --------------------------------------------------------

--
-- Table structure for table `payment_table`
--

CREATE TABLE `payment_table` (
  `Payment_id` int(11) NOT NULL,
  `Booking_id` int(11) NOT NULL,
  `Card_type` varchar(50) NOT NULL,
  `Card_nunber` decimal(18,2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `exp_date` varchar(50) NOT NULL,
  `cvv` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_table`
--

INSERT INTO `payment_table` (`Payment_id`, `Booking_id`, `Card_type`, `Card_nunber`, `name`, `amount`, `exp_date`, `cvv`) VALUES
(4, 0, '4', 1234567890.00, 'Navdeep Singh', 19000.00, '2029-07-30', ''),
(5, 0, '4', 1234567890.00, 'Navdeep Singh', 19000.00, '2029-07-30', ''),
(6, 13, '4', 123456787654.00, 'Navdeep Singh', 2000.00, '2024-03-29', ''),
(7, 8, '8', 123456787654.00, 'Navdeep Singh', 19000.00, '2024-03-07', ''),
(8, 9, 'Choose...', 123456787654.00, 'Navdeep Singh', 11000.00, '2024-03-21', ''),
(9, 10, 'Debit card', 123456787654.00, 'Navdeep Singh', 11000.00, '2024-03-28', ''),
(10, 8, 'credit card', 123456787654.00, 'Navdeep Singh', 1500.00, '2024-03-28', ''),
(11, 8, 'credit card', 123456787654.00, 'Navdeep Singh', 1500.00, '2024-03-28', ''),
(12, 36, 'visa', 1234565432.00, 'jsdhdhs', 323000.00, '2024-04-24', '222'),
(13, 37, 'visa', 123456754321.00, 'gagan', 285000.00, '2024-04-09', '332'),
(14, 37, 'visa', 98765432123.00, 'jsdhdhs', 285000.00, '2024-04-25', '222'),
(15, 37, 'visa', 65342342543.00, '', 285000.00, '2024-05-03', '5434543'),
(16, 37, 'visa', 123456.00, 'hgsgs', 285000.00, '2024-04-18', '234'),
(17, 38, 'visa', 12345432.00, 'sjfhscj', 132000.00, '2024-04-15', '2232'),
(18, 38, 'gsgs', 7654321.00, 'robin', 132000.00, '2024-04-25', '123'),
(19, 38, 'rupay', 32345432.00, 'robin', 132000.00, '2024-04-26', '432'),
(20, 38, 'rupay', 543456789765.00, 'wes', 132000.00, '2024-04-25', '321'),
(21, 38, 'gagan', 24356878654.00, 'tfgfg', 132000.00, '2024-04-21', '87654'),
(22, 38, 'rere', 12345678.00, '544568tgyur5', 132000.00, '2024-04-25', '567'),
(23, 38, 'visa', 9999999999999999.99, 'gagan', 132000.00, '2024-04-16', '3232'),
(24, 38, 'rupay', 87654323456789.00, 'ghgu', 132000.00, '2024-04-20', '456'),
(25, 38, 'rupay', 987654345678.00, 'hdhdhd', 132000.00, '2024-04-14', '424'),
(26, 38, 'visa', 987654345678.00, 'mjhgfd', 132000.00, '2024-05-02', '987'),
(27, 38, 'rupay', 2345432134.00, 'dhfhs', 132000.00, '2024-05-08', '988'),
(28, 41, 'rupay', 87654321.00, 'bhgvcd', 266000.00, '2024-04-25', '5432'),
(29, 42, 'rupay', 5675675765675.00, 'gagan', 266000.00, '2024-04-25', '111'),
(30, 43, 'visa', 123456765432.00, 'gsgs', 22000.00, '2024-04-12', '123'),
(31, 44, 'rupay', 421345324312.00, 'jsdhdhs', 95000.00, '2024-04-25', '123'),
(32, 13, 'visa', 2345654321.00, 'gagan', 11000.00, '2024-05-14', '2321'),
(33, 14, 'rupay', 4567898765432.00, 'Gagandeep_singh', 11000.00, '2024-05-01', '345'),
(34, 14, 'rupay', 4567898765432.00, 'Gagandeep_singh', 11000.00, '2024-05-01', '345'),
(35, 15, 'rupay', 4567898765432.00, 'Gagandeep_singh', 11000.00, '2024-05-02', '345');

-- --------------------------------------------------------

--
-- Table structure for table `suscribe`
--

CREATE TABLE `suscribe` (
  `id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_table`
--

CREATE TABLE `system_table` (
  `id` int(11) NOT NULL,
  `Image_Id` int(11) NOT NULL,
  `Booking_Id` int(11) NOT NULL,
  `c_booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_table`
--

INSERT INTO `system_table` (`id`, `Image_Id`, `Booking_Id`, `c_booking_id`) VALUES
(0, 78, 0, 0),
(0, 78, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_booking`
--

CREATE TABLE `tour_booking` (
  `booking_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Mobile_number` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `no_of_person` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `catagary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_booking`
--

INSERT INTO `tour_booking` (`booking_id`, `tour_id`, `name`, `email_id`, `Mobile_number`, `address`, `no_of_person`, `start_date`, `amount`, `catagary`) VALUES
(2, 1, 'navdeep', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', 'none', '2024-01-04', 99990.00, ''),
(3, 15, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '880', '2024-02-23', 20000.00, ''),
(4, 15, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '880', '2024-02-23', 20000.00, ''),
(5, 10, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '880', '2024-02-24', 11000.00, ''),
(6, 10, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '10', '2024-03-12', 11000.00, ''),
(7, 11, 'jasleen kaur', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '10', '2024-03-12', 19000.00, ''),
(8, 11, 'jasleen kaur', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '10', '2024-03-27', 19000.00, ''),
(9, 10, 'nnn', 'harman12347@gmail.com', '07717457153', 'https://www.itchotels.com/in/en/welcomhotelamritsar/hotel-information', '10', '2024-03-14', 11000.00, ''),
(10, 10, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', '07717457153', 'ganda singh colony tarn taran road amritsar', '10', '2024-03-14', 11000.00, ''),
(11, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '3', '', 57000.00, 'Adventure Tours'),
(12, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '3', '', 57000.00, 'Adventure Tours'),
(13, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '3', '', 57000.00, 'Adventure Tours'),
(14, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '3', '', 57000.00, 'Adventure Tours'),
(25, 11, 'robin_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '3', '', 57000.00, 'Beach Tours'),
(26, 11, 'robin_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '', '', 57000.00, 'Beach Tours'),
(27, 11, 'gagan singh', 'gagansingh@gmail.com', '876543212345', 'Delhi to Manali', '8', '', 152000.00, 'Adventure Tours'),
(28, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '6', '', 114000.00, 'Adventure Tours'),
(29, 11, 'joban singh', 'joban@gmail.com', '123456765432', 'Delhi to Manali', '7', '', 133000.00, 'Hill Station Tours'),
(30, 11, 'joban singh', 'joban@gmail.com', '123456765432', 'Delhi to Manali', '21', '', 399000.00, 'Adventure Tours'),
(31, 11, 'joban singh', 'joban@gmail.com', '123456765432', 'Delhi to Manali', '16', '', 304000.00, 'Adventure Tours'),
(32, 11, 'joban singh', 'joban@gmail.com', '123456765432', 'Delhi to Manali', '18', '', 342000.00, 'Adventure Tours'),
(33, 11, 'jaspreet singh', 'gaganrobin71@gmail.com', '423567879', 'Delhi to Manali', '17', '', 323000.00, 'Adventure Tours'),
(34, 11, 'jaspreet singh', 'gaganrobin71@gmail.com', '123456765432', 'Delhi to Manali', '18', '', 342000.00, 'Beach Tours'),
(35, 11, 'gagan singh', 'gagansingh@gmail.com', '876543212345', 'Delhi to Manali', '17', '', 323000.00, 'Adventure Tours'),
(36, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '17', '', 323000.00, 'Adventure Tours'),
(37, 11, 'jaspreet singh', 'gaganrobin71@gmail.com', '123456765432', 'Delhi to Manali', '15', '', 285000.00, 'Cultural Tours'),
(38, 10, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi ', '12', '', 132000.00, 'Adventure Tours'),
(39, 11, 'gasga', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '15', '', 285000.00, 'Beach Tours'),
(40, 11, 'gagan singh', 'gagansingh@gmail.com', '876543212345', 'Delhi to Manali', '16', '', 304000.00, 'Adventure Tours'),
(41, 11, 'gagan singh', 'gagansingh@gmail.com', '876543212345', 'Delhi to Manali', '14', '', 266000.00, 'Adventure Tours'),
(42, 11, 'gagan singh', 'gagansingh@gmail.com', '876543212345', 'Delhi to Manali', '14', '', 266000.00, 'Beach Tours'),
(43, 10, 'gagan singh', 'gagansingh@gmail.com', '876543212345', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi ', '2', '', 22000.00, 'Adventure Tours'),
(44, 11, 'Gagandeep_singh', 'gaganrobin71@gmail.com', '+916280738831', 'Delhi to Manali', '5', '', 95000.00, 'Adventure Tours');

-- --------------------------------------------------------

--
-- Table structure for table `tour_details`
--

CREATE TABLE `tour_details` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `day_detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_details`
--

INSERT INTO `tour_details` (`id`, `tour_id`, `day`, `day_detail`) VALUES
(4, 10, 'Sunday', 'nhjg');

-- --------------------------------------------------------

--
-- Table structure for table `tour_gallery`
--

CREATE TABLE `tour_gallery` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_gallery`
--

INSERT INTO `tour_gallery` (`id`, `tour_id`, `image`) VALUES
(3, 1, '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tour_table`
--

CREATE TABLE `tour_table` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(50) NOT NULL,
  `package` varchar(50) NOT NULL,
  `destination` varchar(500) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_table`
--

INSERT INTO `tour_table` (`tour_id`, `tour_name`, `package`, `destination`, `duration`, `image`, `no_of_days`, `category`, `amount`) VALUES
(10, 'Roopkund Trek', '11000 ', ' Delhi - Shimla - Kufri - Kullu - Manali - Rohtang Pass - Chandigarh - Delhi ', '07 Days - 06 Nights', 'Roopkund.jpg', 7, 'Adventure Tours', 11000.00),
(11, 'Motorcycle Touring', '19000', 'Delhi to Manali', '04 Days - 03 Nights', 'spiti-valley-motorcycle-tour.jpg', 4, 'Adventure Tours', 19000.00),
(15, 'Ajanta Ellora Caves', '20000', 'Maharashtra', '07 Days - 06 Nights', 'Maharashtra.jpg', 7, 'Adventure Tours', 19000.00),
(16, 'Parasailing', '20000', 'HIMACHAL PRADESH', '07 Days - 06 Nights', 'Parasailing-in-Himachal-Pradesh.webp', 7, 'Adventure Tours', 20000.00),
(17, 'Flyboarding', '20000', 'Goa', '07 Days - 06 Nights', 'Flyboard_India.jpg', 7, 'Adventure Tours', 20000.00),
(18, 'Marina Beach', '17000', 'Chennai', '07 Days - 06 Nights', 'Marina-Beach-Chennai-768x472.jpg', 7, 'Beach Tours', 17000.00),
(19, 'Kovalam Beach', '21000', 'Kerala', '010 Days - 09 Nights', 'Kovalam-Beach-Kerala-768x472.jpg', 10, 'Beach Tours', 21000.00),
(20, 'Radhanagar Beach- Havelock Island', '22000', 'Andaman and Nicobar Islands', '010 Days - 09 Nights', 'Radhanagar-Beach-Andaman.jpg', 10, 'Beach Tours', 22000.00),
(21, 'Porto Vromi', '21000', 'Delhi - Porto Vromi - Delhi', '07 Days - 06 Nights', 'bach.webp', 7, 'Beach Tours', 21000.00),
(22, 'goa', '19000', 'Delhi - goa - Delhi', '07 Days - 06 Nights', 'goa.jpeg', 7, 'Beach Tours', 21000.00),
(23, 'Taj Mahal', '32000', 'Delhi - Agra - Delhi', '07 Days - 06 Nights', 'taj-mahal.webp', 7, 'Cultural Tours', 21000.00),
(24, 'Rajasthan', '50000', 'Amritsar-Rajasthan-Amritsar', '10day-9night', 'rajasthan.webp', 10, 'Cultural Tours', 50000.00),
(25, 'Lucknow', '60000', 'Amritsar-Lucknow-Amritsar', '10day-9night', 'lucknow.webp', 10, 'Cultural Tours', 50000.00),
(26, ' Mysore', '70000 ', 'Amritsar-Mysore-Amritsar', '10day-9night', 'mysore.webp', 10, 'Cultural Tours', 50000.00),
(27, 'Mysore', '70000', 'Amritsar-Mysore-Amritsar', '10day-9night', '', 10, 'Cultural Tours', 50000.00),
(28, 'Nainital', '10000', 'Amritsar- Nainital -Amritsar', '10day-9night', 'nainital-boating.jpg', 10, 'Hill Station Tours', 10000.00),
(29, 'Munnar', '10000', 'Amritsar- Kerala -Amritsar', '10day-9night', 'Munnar-Hill-Station-Kerala.jpg', 10, 'Hill Station Tours', 10000.00),
(30, 'Ranikhet', '10000', 'Amritsar- Uttarakhand -Amritsar', '10day-9night', 'Ranikhet-Beautiful-Forest-Veiw.jpg', 10, 'Hill Station Tours', 10000.00),
(31, 'Dharamshala', '15000', 'Delhi - Himachal Pradesh - Delhi', '015 Days - 14 Nights', 'Dharamshala-Himachal.jpg', 15, 'Hill Station Tours', 15000.00),
(32, 'Ranthambore National Park', '9000', 'Amritsar-Rajasthan-Amritsar', '015 Days - 14 Nights', 'Reclining_Tiger_Ranthambore_National_Park.jpg', 15, 'Safari Tour', 15000.00),
(33, 'Hemis National Park', '9000', 'Amritsar-Ladakh-Amritsar', '010 Days - 09 Nights', 'navrino.jpg', 10, 'Safari Tour', 15000.00),
(34, 'Jim Corbett', '7000', 'Amritsar-Uttarakhand-Amritsar', '010 Days - 09 Nights', 'Uttarakhand.jpg', 10, 'Safari Tour', 7000.00),
(35, 'Bandhavgarh National Park', '8000', 'Amritsar-Madhya Pradesh-Amritsar', '010 Days - 09 Nights', 'Madhya Pradesh.jpg', 10, 'Safari Tour', 7000.00),
(36, 'abc', '2lac', 'nhjg', 'hsg', 'apple.jpg', 4, 'Adventure Tours', 5000.00),
(37, ' navdeep', '500000 ', 'none', '10000', 'mall.jpg', 4, 'Adventure Tours', 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_table`
--

CREATE TABLE `user_login_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login_table`
--

INSERT INTO `user_login_table` (`user_id`, `user_name`, `password`) VALUES
(10, 'harman', '0987654'),
(12, 'jasu', 'navdeep'),
(13, 'nooo', '1234567'),
(14, 'Navdeep Singh', '0987654321'),
(15, '', ''),
(16, '', ''),
(17, 'gunmeet', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration_table`
--

CREATE TABLE `user_registration_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` decimal(18,2) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration_table`
--

INSERT INTO `user_registration_table` (`user_id`, `user_name`, `email`, `mobile_number`, `password`) VALUES
(1, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456'),
(2, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456'),
(3, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456'),
(4, 'Navdeep Singh', 'singhnavdeep12347@gmail.com', 7717457153.00, '123456'),
(5, 'jasleen', 'singhnavdeep12347@gmail.com', 7717457153.00, '12345678.'),
(6, 'jasleen', 'singhnavdeep12347@gmail.com', 7717457153.00, '12345678.'),
(7, 'harman', 'singhnavdeep12347@gmail.com', 7717457153.00, '0987654'),
(8, 'harman', 'singhnavdeep12347@gmail.com', 7717457153.00, '0987654'),
(9, 'harman', 'singhnavdeep12347@gmail.com', 7717457153.00, '0987654'),
(10, 'harman', 'singhnavdeep12347@gmail.com', 7717457153.00, '0987654'),
(11, 'Himachal', 'singhnavdeep12347@gmail.com', 7717457153.00, '87654321'),
(12, 'Himachal', 'singhnavdeep12347@gmail.com', 7717457153.00, '87654321'),
(13, 'jasu', 'singhnavdeep12347@gmail.com', 7717457153.00, 'navdeep'),
(14, 'jasu', 'singhnavdeep12347@gmail.com', 7717457153.00, 'navdeep'),
(15, 'nooo', 'singhnavdeep12347@gmail.com', 7717457153.00, '1234567'),
(16, 'nooo', 'singhnavdeep12347@gmail.com', 7717457153.00, '1234567'),
(17, 'Navdeep Singh', 'singhnavdeep112347@gmail.com', 9876543210.00, '0987654321'),
(18, 'Navdeep Singh', 'singhnavdeep112347@gmail.com', 9876543210.00, '0987654321'),
(19, '', '', 0.00, ''),
(20, '', '', 0.00, ''),
(21, '', '', 0.00, ''),
(22, '', '', 0.00, ''),
(23, 'gunmeet', 'singhnavdeep12347@gmail.com', 7717457153.00, '1234567890'),
(24, 'gunmeet', 'singhnavdeep12347@gmail.com', 7717457153.00, '1234567890'),
(25, 'Gaganrobin', 'gaganrobin71@gmail.com', 916280738831.00, '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Mobile_no` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `pickup_address` varchar(500) NOT NULL,
  `drop_off_address` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `email_id`, `Mobile_no`, `gender`, `pickup_address`, `drop_off_address`, `name`) VALUES
(1, 'singhnavdeep12347@gmail.com', '07717457153', 'Man', 'ganda singh colony tarn taran road amritsar', 'delhi', 'Navdeep Singh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cab_booking`
--
ALTER TABLE `cab_booking`
  ADD PRIMARY KEY (`bookingid`);

--
-- Indexes for table `cab_table`
--
ALTER TABLE `cab_table`
  ADD PRIMARY KEY (`taxi_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_booking_table`
--
ALTER TABLE `hotel_booking_table`
  ADD PRIMARY KEY (`booking_hotel_id`);

--
-- Indexes for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_table`
--
ALTER TABLE `hotel_table`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `new_tour_booking`
--
ALTER TABLE `new_tour_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `payment_table`
--
ALTER TABLE `payment_table`
  ADD PRIMARY KEY (`Payment_id`);

--
-- Indexes for table `suscribe`
--
ALTER TABLE `suscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_booking`
--
ALTER TABLE `tour_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tour_details`
--
ALTER TABLE `tour_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_gallery`
--
ALTER TABLE `tour_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_table`
--
ALTER TABLE `tour_table`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `user_login_table`
--
ALTER TABLE `user_login_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_registration_table`
--
ALTER TABLE `user_registration_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cab_booking`
--
ALTER TABLE `cab_booking`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cab_table`
--
ALTER TABLE `cab_table`
  MODIFY `taxi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_booking_table`
--
ALTER TABLE `hotel_booking_table`
  MODIFY `booking_hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_table`
--
ALTER TABLE `hotel_table`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `new_tour_booking`
--
ALTER TABLE `new_tour_booking`
  MODIFY `booking_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_table`
--
ALTER TABLE `payment_table`
  MODIFY `Payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `suscribe`
--
ALTER TABLE `suscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_booking`
--
ALTER TABLE `tour_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tour_details`
--
ALTER TABLE `tour_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tour_gallery`
--
ALTER TABLE `tour_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour_table`
--
ALTER TABLE `tour_table`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_login_table`
--
ALTER TABLE `user_login_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_registration_table`
--
ALTER TABLE `user_registration_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
