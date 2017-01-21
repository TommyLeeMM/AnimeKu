-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2017 at 10:29 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animeku`
--

-- --------------------------------------------------------

--
-- Table structure for table `msanime`
--

CREATE TABLE `msanime` (
  `Id` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Rating` double NOT NULL,
  `Episode` int(11) NOT NULL,
  `Aired` date DEFAULT NULL,
  `Season` varchar(20) NOT NULL,
  `Studio` varchar(50) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `music` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msanime`
--

INSERT INTO `msanime` (`Id`, `Title`, `Description`, `Genre`, `Rating`, `Episode`, `Aired`, `Season`, `Studio`, `Duration`, `Status`, `Image`, `music`, `video`) VALUES
(1, 'Kimi no Na Wa', 'Mitsuha Miyamizu, seorang gadis SMA, merindukan untuk menjalani kehidupan anak laki-laki di kota yang ramai dari Tokyo? Sebuah mimpi yang berdiri di kontras dengan kehidupannya sekarang di pedesaan. Sementara di kota, Taki Tachibana menjalani kehidupan yang sibuk sebagai mahasiswa sekolah tinggi sementara juggling nya pekerjaan paruh waktu dan harapan untuk masa depan yang dalam arsitektur. Suatu hari, Mitsuha terbangun di sebuah ruangan yang tidak sendiri dan tiba-tiba menemukan dirinya menjalani kehidupan impian di Tokyo? Tapi dalam tubuh Taki ini! Di tempat lain, Taki menemukan dirinya menjalani hidup yang sederhana Mitsuha di pedesaan. Dalam mengejar jawaban untuk fenomena aneh ini, mereka mulai mencari satu sama lain. Kimi no Na wa. berkisar Mitsuha dan tindakan Taki, para yang mulai memiliki dampak yang dramatis pada kehidupan masing-masing, tenun mereka ke kain diselenggarakan bersama oleh nasib dan keadaan.', 'Drama, Romance, School', 9.38, 1, '2016-08-26', '-', 'CoMix Wave Films', 106, 'Finish', 'images/kimi no na wa.jpg', '', ''),
(2, 'ReLife', 'Berceritakan tentang seorang pengangguran yang tidak dapat pekerjaan yang akhirnya di bantu sama perusahaan relife untuk mengubah dirinya jadi muda lagi dan memperbaiki hidupnya', 'Drama, Comedy', 8, 12, '2016-04-15', 'Summer 2016', 'Nikko Studio', 24, 'Finish', NULL, '', ''),
(4, 'Rezero', 'Hidup mati ngulang', 'Action, Fantasy', 9, 24, '2016-06-16', 'Spring 2016', 'White Fox', 24, 'Finish', NULL, '', ''),
(11, 'Nisekoi', 'nisekoi', 'Romance', 9, 24, '2011-12-12', 'Fall', 'Trans Studio Bandung ', 24, 'Finish', 'images/ibuNTjnWkzfPDL.png', 'music/nisekoi.mp3', 'video/[NisekoiMusic] Kana Hanazawa (Onodera) - Recover Decoration (Full).mp4'),
(12, 'No game no life', 'cerita pemain game akut', 'Fantasy', 9, 24, '2010-12-12', 'Fall', 'Studio apa aja deh', 24, 'Finish', 'images/4a996224c67611e386160002c954d120_6.jpg', 'music/(01)This game.mp3', 'video/11273555_1655814097963321_570465658_n.MP4'),
(13, 'coba insert', 'asasas', 'action', 12, 24, '2010-12-12', 'asasa', 'asasa', 23, 'Finish', 'images/gbr-18.jpg', 'music/(01)Brave Shine.mp3', 'video/Anime 101 - AMV.MP4');

-- --------------------------------------------------------

--
-- Table structure for table `msuser`
--

CREATE TABLE `msuser` (
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msuser`
--

INSERT INTO `msuser` (`Email`, `Name`, `Password`, `Gender`, `role`) VALUES
('admin@admin.com', 'admin', 'admin', 'Male', 'admin'),
('croco.tommychachi@gmail.com', 'Tommy Lee', 'tommy', 'Male', 'member'),
('member@member.com', 'member', 'member', 'Female', 'member'),
('rifqi.naufali@yahoo.com', 'Rifqi Naufali', 'rifqi', 'Male', 'member'),
('sky@connectiva.com', 'Chong Sky', 'asdasdasd', 'Male', 'member'),
('testing@gmail.com', 'testing', 'testing', 'Male', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewId` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AnimeId` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewId`, `Email`, `AnimeId`, `Description`) VALUES
(1, 'croco.tommychachi@gmail.com', 1, 'The Best anime ever'),
(2, 'member@member.com', 1, 'WTH, saya sudah menunggu ini berbulan-bulan dan akhirnya keluar. YESS!!!'),
(3, 'member@member.com', 1, 'test\r\n'),
(4, 'admin@admin.com', 4, 'Anime mati hidup');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msanime`
--
ALTER TABLE `msanime`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `msuser`
--
ALTER TABLE `msuser`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewId`),
  ADD KEY `Email` (`Email`),
  ADD KEY `AnimeId` (`AnimeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msanime`
--
ALTER TABLE `msanime`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `msuser` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`AnimeId`) REFERENCES `msanime` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
