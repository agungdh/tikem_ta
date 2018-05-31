-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 05:33 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tikem_ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('r97cuv1r9sdmjhnpcllvkmsg7otp9i3k', '::1', 1527771524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737313331303b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('87n14jdsvtn4vsdiehps8vn11vm77pc6', '::1', 1527772319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737323032343b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('5mkoqlshjld4ql20p8bhu4hq9hao4s2o', '::1', 1527772709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737323333323b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('c0livj7vuj3i8dmsdn8h9git7e0r8dm7', '::1', 1527773001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737323731303b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('00bpnl9t03l20l2fdgp411g6r980tdh8', '::1', 1527773279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737333032343b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('dkdmndlqnotc38g5q9i707v7c0d83m6i', '::1', 1527773542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737333334373b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('gl7d5n2i6ldf048s9lesja9oo0k3ph7m', '::1', 1527774052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737333736333b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('muelco8c06v6jo43t2b0j0c8nuh0rlqj', '::1', 1527774355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737343037313b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('24psuk5k28t0ar79ldm1h9ga1tlr4j5i', '::1', 1527774507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737343337333b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('7ofpkvljq2pcsp2ahrjk712ivakjkgo1', '::1', 1527774915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737343734333b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('drtfbkdig1hjc53urh9khcrpa98cksgi', '::1', 1527776123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737353833393b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('ld1i9753g356qiuu9m6aeao8gusv6dfd', '::1', 1527776758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737363436303b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('crb4rrbanh6h2eccv2eb0oo3qagm0gnf', '::1', 1527777586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737373035343b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('eam3enmprigniqn3jcor7q1mlkjj15q3', '::1', 1527777880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737373539303b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b),
('p2ap2j2tak2eqscgl1e2lni01j2t2ddq', '::1', 1527779795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532373737393634303b69647c733a313a2231223b6e616d617c733a31333a2241646d696e6973747261746f72223b757365726e616d657c733a353a2261646d696e223b6c6f67696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `judul_aplikasi` varchar(255) NOT NULL,
  `judul_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`judul_aplikasi`, `judul_menu`) VALUES
('TIKEM TA', 'TIKEM');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`) VALUES
(1, 'Fakultas Teknik'),
(5, 'fakultas kemplo');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nip`, `nama`, `prodi_id`) VALUES
(1, '15753003', 'Agung Sapto Margono Dh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama`, `fakultas_id`) VALUES
(2, 'test 123', 1),
(4, '1', 5),
(5, '2', 5),
(6, '234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 'Administrator'),
(12, 'egipsons', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 'Egipson A. W.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mahasiswa`
-- (See below for the actual view)
--
CREATE TABLE `v_mahasiswa` (
`id` int(11)
,`nip` varchar(255)
,`nama` varchar(255)
,`prodi_id` int(11)
,`nama_prodi` varchar(255)
,`fakultas_id` int(11)
,`nama_fakultas` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_prodi`
-- (See below for the actual view)
--
CREATE TABLE `v_prodi` (
`id` int(11)
,`nama_prodi` varchar(255)
,`fakultas_id` int(11)
,`nama_fakultas` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `v_mahasiswa`
--
DROP TABLE IF EXISTS `v_mahasiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mahasiswa`  AS  select `m`.`id` AS `id`,`m`.`nip` AS `nip`,`m`.`nama` AS `nama`,`m`.`prodi_id` AS `prodi_id`,`p`.`nama` AS `nama_prodi`,`p`.`fakultas_id` AS `fakultas_id`,`f`.`nama` AS `nama_fakultas` from ((`mahasiswa` `m` join `prodi` `p`) join `fakultas` `f`) where ((`m`.`prodi_id` = `p`.`id`) and (`p`.`fakultas_id` = `f`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_prodi`
--
DROP TABLE IF EXISTS `v_prodi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_prodi`  AS  select `p`.`id` AS `id`,`p`.`nama` AS `nama_prodi`,`p`.`fakultas_id` AS `fakultas_id`,`f`.`nama` AS `nama_fakultas` from (`prodi` `p` join `fakultas` `f`) where (`p`.`fakultas_id` = `f`.`id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
