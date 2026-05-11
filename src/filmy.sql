-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: May 11, 2026 at 03:42 PM
-- Server version: 12.2.2-MariaDB-ubu2404
-- PHP Version: 8.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmy`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `nazwa_pl` varchar(255) NOT NULL,
  `nazwa_rum` varchar(255) NOT NULL,
  `rok` year(4) NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `suma` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id`, `nazwa_pl`, `nazwa_rum`, `rok`, `kategoria_id`, `suma`, `count`) VALUES
(1, 'Matrix', 'The Matrix', '1999', 3, 15, 3),
(2, 'John Wick', 'John Wick', '2014', 1, 0, 0),
(3, 'Kac Vegas', 'The Hangover', '2009', 2, 17, 5),
(4, 'Obecność', 'The Conjuring', '2013', 4, 0, 0),
(5, 'Skazani na Shawshank', 'The Shawshank Redemption', '1994', 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`) VALUES
(1, 'Akcja'),
(2, 'Komedia'),
(3, 'Sci-Fi'),
(4, 'Horror'),
(5, 'Dramat');

-- --------------------------------------------------------

--
-- Table structure for table `ocena`
--

CREATE TABLE `ocena` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL CHECK (`rate` between 1 and 10),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `ocena`
--

INSERT INTO `ocena` (`id`, `film_id`, `rate`, `description`) VALUES
(1, 1, 10, 'Klasyk science fiction'),
(2, 2, 9, 'Bardzo dobra akcja'),
(3, 3, 8, 'Świetna komedia'),
(4, 4, 7, 'Straszny horror'),
(5, 5, 10, 'Arcydzieło dramatu'),
(6, 3, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zdjecza`
--

CREATE TABLE `zdjecza` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `zdjecza`
--

INSERT INTO `zdjecza` (`id`, `film_id`, `name`) VALUES
(27, 1, 'film_1_poster.jpg'),
(28, 1, 'film_1.1_poster.jpg'),
(29, 2, 'film_2_poster.jpg'),
(30, 3, 'film_3_poster.jpg'),
(31, 3, 'film_3.1_poster.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmy_kategorie` (`kategoria_id`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ocena`
--
ALTER TABLE `ocena`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ocena_filmy` (`film_id`);

--
-- Indexes for table `zdjecza`
--
ALTER TABLE `zdjecza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_film_id` (`film_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ocena`
--
ALTER TABLE `ocena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zdjecza`
--
ALTER TABLE `zdjecza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filmy`
--
ALTER TABLE `filmy`
  ADD CONSTRAINT `fk_filmy_kategorie` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ocena`
--
ALTER TABLE `ocena`
  ADD CONSTRAINT `fk_ocena_filmy` FOREIGN KEY (`film_id`) REFERENCES `filmy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zdjecza`
--
ALTER TABLE `zdjecza`
  ADD CONSTRAINT `1` FOREIGN KEY (`film_id`) REFERENCES `filmy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
