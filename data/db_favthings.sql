-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2019 at 03:08 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
CREATE TABLE IF NOT EXISTS `tbl_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `MovieID` varchar(10) NOT NULL,
  `IMDb_Rating` varchar(50) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Release_Date` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `MovieID`, `IMDb_Rating`, `Genre`, `Director`, `Release_Date`, `bio`) VALUES
(1, '1', '8.1/10', 'Drama/Fantasy', 'Peter Weir', 'June 5, 1998 ', 'He doesn\'t know it, but everything in Truman Burbank\'s (Jim Carrey) life is part of a massive TV set. Executive producer Christof (Ed Harris) orchestrates \"The Truman Show,\" a live broadcast of Truman\'s every move captured by hidden cameras. Cristof tries to control Truman\'s mind, even removing his true love, Sylvia (Natascha McElhone), from the show and replacing her with Meryl (Laura Linney). As Truman gradually discovers the truth, however, he must decide whether to act on it.'),
(2, '2', '9.3/10', ' Drama/Mystery', 'Frank Darabont', 'September 10, 1994 ', 'Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn\'t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.'),
(3, '3', '8.8/10', 'Drama/Thriller', 'David Fincher', 'October 15, 1999', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler\'s attention.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

DROP TABLE IF EXISTS `tbl_movie`;
CREATE TABLE IF NOT EXISTS `tbl_movie` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Actors` varchar(200) NOT NULL,
  `Screenplay` varchar(50) NOT NULL,
  `Movie Length` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`ID`, `Name`, `Image`, `Actors`, `Screenplay`, `Movie Length`) VALUES
(1, 'The Truman Show', 'trumanshow.jpg', 'Jim Carrey,Laura Linney,Noah Emmerich,', 'Andrew Niccol', '1h 47m'),
(2, 'The Shawshank Redemption', 'shawshank.jpg', 'Tim Robbins,Morgan Freeman,Bob Gunton', 'Stephen King, Frank Darabont', '2h 22m'),
(3, 'Fight Club', 'fightclub.jpg', 'Edward Norton,Brad Pitt,Meat Loaf', ' Jim Uhls', '2h 31m');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
