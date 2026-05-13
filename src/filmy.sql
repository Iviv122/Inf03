-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `filmy`;
USE `filmy`;

-- --------------------------------------------------------
-- Table: filmy (must be created FIRST)
-- --------------------------------------------------------

CREATE TABLE `filmy` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `nazwa_pl` VARCHAR(255) NOT NULL,
    `nazwa_rum` VARCHAR(255) NOT NULL,
    `rok` YEAR NOT NULL,
    `suma` INT(11) NOT NULL DEFAULT 0,
    `count_ocen` INT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `filmy`
(`id`, `nazwa_pl`, `nazwa_rum`, `rok`, `suma`, `count_ocen`)
VALUES
(1, 'Matrix', 'The Matrix', 1999, 15, 3),
(2, 'John Wick', 'John Wick', 2014, 0, 0),
(3, 'Kac Vegas', 'The Hangover', 2009, 17, 5),
(4, 'Obecność', 'The Conjuring', 2013, 0, 0),
(5, 'Skazani na Shawshank', 'The Shawshank Redemption', 1994, 0, 0);

-- --------------------------------------------------------
-- Table: kategorie
-- --------------------------------------------------------

CREATE TABLE `kategorie` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `film_id` INT(11) NOT NULL,
    `nazwa` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_filmy_kategorie` (`film_id`),
    CONSTRAINT `fk_filmy_kategorie`
        FOREIGN KEY (`film_id`)
        REFERENCES `filmy` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `kategorie` (`film_id`, `nazwa`) VALUES
(1, 'Akcja'),
(1, 'Komedia'),
(3, 'Sci-Fi'),
(3, 'Horror'),
(5, 'Dramat');

-- --------------------------------------------------------
-- Table: zdjecia
-- --------------------------------------------------------

CREATE TABLE `zdjecia` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `film_id` INT(11) NOT NULL,
    `name` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_zdjecia_filmy` (`film_id`),
    CONSTRAINT `fk_zdjecia_filmy`
        FOREIGN KEY (`film_id`)
        REFERENCES `filmy` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `zdjecia`
(`id`, `film_id`, `name`)
VALUES
(27, 1, 'film_1_poster.jpg'),
(28, 1, 'film_1.1_poster.jpg'),
(29, 2, 'film_2_poster.jpg'),
(30, 3, 'film_3_poster.jpg'),
(31, 3, 'film_3.1_poster.jpg');

COMMIT;