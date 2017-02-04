-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2017 at 08:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_loader`
--

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `text`) VALUES
(2, 'Donec vel lectus nec magna placerat consequat nec nec tortor'),
(3, 'Curabitur in sapien finibus felis vehicula mollis sit amet at lectus'),
(4, 'Nullam gravida risus id lorem ornare, vitae finibus ipsum finibus'),
(6, 'Quisque convallis et sem at consequat. Proin quis porttitor eros.'),
(7, 'Etiam nec maximus sapien. Ut eget tempus ante.'),
(8, 'Praesent aliquam erat quis aliquet rhoncus. '),
(9, 'Integer iaculis erat ac libero dignissim congue. Suspendisse lorem justo, dapibus quis sagittis sed, sagittis non tortor.'),
(11, 'Duis luctus congue turpis at blandit. Fusce urna velit, pretium in mattis nec, venenatis vel sapien.'),
(12, 'Ut eget tempus ante. Integer accumsan pellentesque nisl dictum condimentum. '),
(13, 'Okay, this is working. Maybe I''m gonna upload this so that a lot noob can use this. Cheers!'),
(14, 'Nulla laoreet mi turpis, at fermentum velit accumsan eget. Duis ac diam iaculis velit vehicula imperdiet. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
