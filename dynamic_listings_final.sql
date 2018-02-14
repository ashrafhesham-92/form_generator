-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 10:32 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_listings3`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `target_action_id` int(10) UNSIGNED DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `target_content` varchar(255) DEFAULT NULL,
  `content_id` int(10) UNSIGNED DEFAULT NULL,
  `target_lay_out_id` int(10) UNSIGNED DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `icon_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `name`, `title`, `target_action_id`, `target_type`, `target_content`, `content_id`, `target_lay_out_id`, `target_url`, `icon_id`) VALUES
(1, 'action', 'hard', 2, 'popup', 'block', 334, 445, NULL, NULL),
(2, 'mood', 'action 2', 5, 'not pop up', 'content', 66, 123, 'https://website.com', NULL),
(3, 'factor', 'factor', 55, 'red', 'reddit123', 23, 123, 'jjjj', NULL),
(4, 'balance', 'red', 2, 'big', 'to big', 5, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cells`
--

CREATE TABLE `cells` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `row_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cells`
--

INSERT INTO `cells` (`id`, `name`, `row_id`) VALUES
(1, 'kkkk', 0),
(2, 'yuyu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cells_actions`
--

CREATE TABLE `cells_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `cell_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cells_actions`
--

INSERT INTO `cells_actions` (`id`, `cell_id`, `action_id`) VALUES
(1, 2, 4),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `list_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `name`, `label`, `list_id`) VALUES
(2, 'type', 'type', 0),
(3, 'struct', 'structure', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `name`) VALUES
(0, 'The list');

-- --------------------------------------------------------

--
-- Table structure for table `lists_actions`
--

CREATE TABLE `lists_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lists_actions`
--

INSERT INTO `lists_actions` (`id`, `list_id`, `action_id`) VALUES
(1, 0, 3),
(2, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rows`
--

CREATE TABLE `rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rows`
--

INSERT INTO `rows` (`id`, `list_id`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rows_actions`
--

CREATE TABLE `rows_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `row_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rows_actions`
--

INSERT INTO `rows_actions` (`id`, `row_id`, `action_id`) VALUES
(1, 0, 3),
(2, 0, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cells`
--
ALTER TABLE `cells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cells_ibfk_2` (`row_id`);

--
-- Indexes for table `cells_actions`
--
ALTER TABLE `cells_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cell_id` (`cell_id`),
  ADD KEY `action_id` (`action_id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lists_actions`
--
ALTER TABLE `lists_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `action_id` (`action_id`);

--
-- Indexes for table `rows`
--
ALTER TABLE `rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `rows_actions`
--
ALTER TABLE `rows_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `action_id` (`action_id`);

--
-- AUTO_INCREMENT for dumped tables
--


ALTER TABLE `lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

 ALTER TABLE `rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cells`
--
ALTER TABLE `cells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cells_actions`
--
ALTER TABLE `cells_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lists_actions`
--
ALTER TABLE `lists_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rows_actions`
--
ALTER TABLE `rows_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cells`
--
ALTER TABLE `cells`
  ADD CONSTRAINT `cells_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `rows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cells_ibfk_2` FOREIGN KEY (`row_id`) REFERENCES `rows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cells_actions`
--
ALTER TABLE `cells_actions`
  ADD CONSTRAINT `cells_actions_ibfk_1` FOREIGN KEY (`cell_id`) REFERENCES `cells` (`id`),
  ADD CONSTRAINT `cells_actions_ibfk_2` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`);

--
-- Constraints for table `headers`
--
ALTER TABLE `headers`
  ADD CONSTRAINT `headers_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`),
  ADD CONSTRAINT `headers_ibfk_2` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lists_actions`
--
ALTER TABLE `lists_actions`
  ADD CONSTRAINT `lists_actions_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`),
  ADD CONSTRAINT `lists_actions_ibfk_2` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`);

--
-- Constraints for table `rows`
--
ALTER TABLE `rows`
  ADD CONSTRAINT `rows_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`),
  ADD CONSTRAINT `rows_ibfk_2` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rows_actions`
--
ALTER TABLE `rows_actions`
  ADD CONSTRAINT `rows_actions_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `rows` (`id`),
  ADD CONSTRAINT `rows_actions_ibfk_2` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
