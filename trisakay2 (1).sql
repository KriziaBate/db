-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 01:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trisakay2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `Verified2` tinyint(1) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FirstName`, `LastName`, `Email`, `Password`, `Verified`, `Verified2`, `status`) VALUES
(21, 'Robert', 'Junior', '202010321@btech.ph.education', '3d2a06899ce90d771338756e78f53327', 1, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `baliuag`
--

CREATE TABLE `baliuag` (
  `placeid` int(11) NOT NULL,
  `border` mediumtext NOT NULL,
  `place` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baliuag`
--

INSERT INTO `baliuag` (`placeid`, `border`, `place`, `status`) VALUES
(1, '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":14.95017509152946,\"lng\":120.8639430999756},{\"lat\":14.935579731023546,\"lng\":120.86866378784181},{\"lat\":14.940555533575113,\"lng\":120.88514328002931},{\"lat\":14.952248215648293,\"lng\":120.88119506835939}]]}', 'Baliuag', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `CommuterID` int(255) NOT NULL,
  `PlateNumber` varchar(255) DEFAULT NULL,
  `Toda` varchar(255) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `PickupPoint` varchar(255) NOT NULL,
  `PickupAddress` varchar(255) NOT NULL,
  `DropoffPoint` varchar(255) NOT NULL,
  `DropoffAddress` varchar(255) NOT NULL,
  `PickupTime` datetime DEFAULT NULL,
  `DropoffTime` datetime DEFAULT NULL,
  `PassengerCount` varchar(1) NOT NULL,
  `Fare` varchar(255) NOT NULL,
  `ConvenienceFee` varchar(255) NOT NULL,
  `Distance` varchar(255) NOT NULL,
  `DriverETA` varchar(255) NOT NULL,
  `Rating` varchar(1) DEFAULT NULL,
  `BookingDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `CommuterID`, `PlateNumber`, `Toda`, `Status`, `PickupPoint`, `PickupAddress`, `DropoffPoint`, `DropoffAddress`, `PickupTime`, `DropoffTime`, `PassengerCount`, `Fare`, `ConvenienceFee`, `Distance`, `DriverETA`, `Rating`, `BookingDate`) VALUES
(21, 1, 'JKQ-069', 'Piel', 'completed', '14.954283534502583,120.90080909502916', '', '14.954031086368913,120.89256763458253', '', NULL, NULL, '3', '40', '7', '1.0749000000000002', '2', '3', '2023-10-27 10:08:58'),
(22, 1, 'JKQ-069', 'Piel', 'completed', '14.954283534502583,120.90080909502916', '', '14.953906700520372,120.89089393615724', '', NULL, NULL, '3', '40', '7', '1.256', '2', '5', NULL),
(23, 0, '', 'St. Barbara', 'pending', '14.954283534502583,120.90080909502916', '', '14.95618709628358,120.89162349700928', '', NULL, NULL, '1', '30', '20', '1.2915999999999999', '6', NULL, NULL),
(24, 0, '', 'Piel', 'pending', '14.954283534502583,120.90080909502916', '', '14.95582672406225,120.89647293090822', '', NULL, NULL, '1', '30', '7', '0.6167', '2', NULL, NULL),
(25, 1, 'JKQ-069', 'Piel', 'completed', '14.954283534502583,120.90080909502916', '', '14.954238395956223,120.89128017425539', '', NULL, NULL, '1', '30', '7', '1.2025', '2', '1', NULL),
(26, 0, NULL, 'Piel', 'pending', '14.954283534502583,120.90080909502916', '', '14.953989624427418,120.89166641235353', '', NULL, NULL, '4', '45', '7', '1.1712', '2', NULL, NULL),
(27, 1, NULL, 'Sabang', 'pending', '14.954283534502583,120.90080909502916', '', '14.961659947190817,120.89853286743165', '', NULL, NULL, '2', '35', '15', '1.0709000000000002', '5', NULL, NULL),
(28, 1, NULL, 'Sabang', 'pending', '14.954283534502583,120.90080909502916', '', '14.96128532385534,120.89844703674318', '', NULL, NULL, '3', '40', '15', '1', '5', NULL, '2023-10-27 10:56:22'),
(29, 1, NULL, 'St. Barbara', 'pending', '14.954283534502583,120.90080909502916', '', '14.9563866924798,120.890851020813', '', NULL, NULL, '3', '40', '20', '1', '6', NULL, '2023-10-27 11:00:26'),
(30, 1, NULL, 'Piel', 'pending', '14.954283534502583,120.90080909502916', '', '14.954238395956223,120.89179515838624', '', NULL, NULL, '1', '30', '7', '1', '2', NULL, '2023-10-27 11:13:11'),
(31, 1, 'JKQ-069', 'St. Barbara', 'completed', '14.954283534502583,120.90080909502916', '', '14.956677292378343,120.89097976684572', '', NULL, NULL, '2', '35', '20', '1', '6', '2', '2023-10-27 11:19:27'),
(32, 1, 'JKQ-069', 'St. Barbara\n', 'completed', '14.954283534502583,120.90080909502916', '', '14.954137302847464,120.89552879333498', '', NULL, NULL, '4', '45', '7', '0', '2', '3', '2023-10-27 14:14:39'),
(33, 1, 'JKQ-069', 'St. Barbara', 'completed', '14.954283534502583,120.90080909502916', '', '14.95664317252698,120.89080810546876', '', NULL, NULL, '3', '40', '20', '1', '6', '5', '2023-10-27 14:16:54'),
(34, 1, 'JKQ-069', 'St. Barbara', 'completed', '14.954283534502583,120.90080909502916', '', '14.956701905147028,120.89100122451784', '', NULL, NULL, '2', '35', '20', '1', '6', '5', '2023-10-27 14:19:53'),
(35, 1, 'JKQ-069', 'St. Barbara', 'accepted', '14.954283534502583,120.90080909502916', '', '14.957050920240777,120.89261054992677', '', NULL, NULL, '3', '40', '20', '1', '6', NULL, '2023-10-27 14:23:16'),
(36, 1, NULL, 'Sabang', 'pending', '15.1486464,120.5927936', '', '14.959047454295007,120.89949638965898', '', NULL, NULL, '1', '533', '782', '52', '235', NULL, '2023-10-28 05:20:38'),
(37, 1, NULL, 'Piel', 'pending', '15.1486464,120.5927936', '', '14.95334602760384,120.89649188619936', '', NULL, NULL, '1', '521', '787', '51.1328', '236', NULL, '2023-10-28 05:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `commuter`
--

CREATE TABLE `commuter` (
  `CommuterID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MobileNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `NoShow` int(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `IP` varchar(255) NOT NULL,
  `OTP` int(10) DEFAULT NULL,
  `Verified` tinyint(1) NOT NULL,
  `Verified2` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commuter`
--

INSERT INTO `commuter` (`CommuterID`, `Email`, `MobileNumber`, `Password`, `FirstName`, `LastName`, `NoShow`, `status`, `IP`, `OTP`, `Verified`, `Verified2`) VALUES
(1, 'dnkrtdev@gmail.com', '09505887362', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'Dan', 'Salazar', NULL, NULL, 'ac2f0877f8f0c656e5ba6f6a43d4ff78492a75f98715c156833292efcdb9f6aa4271ceb312ae6b5a87bfcd7f259a78f05fed1a0814e3fb3a37ed223378c93cef', NULL, 0, 0),
(13, 'just.gaming0921@gmail.com', '1212121', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e', 'Armando', 'Cruz', NULL, 'active', '', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher`
--

CREATE TABLE `dispatcher` (
  `DispatcherID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `TODA` varchar(255) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dispatcher`
--

INSERT INTO `dispatcher` (`DispatcherID`, `Email`, `Password`, `FirstName`, `LastName`, `TODA`, `DateCreated`, `status`) VALUES
(1, 'vannadoggo@gmail.com', '7d9184cfbd6260dcf352090c04779de4429f4ea623768e6109e18fd39d68004e729c7e80a33355e5682765a6a498b88a4bb2f57a6d24abbd15bc1b7f3fc1d2e4', 'Savanna', 'Salazar', 'Piel', '2023-10-02 15:56:06', NULL),
(6, 'trisakay0@gmail.com', 'ac3452d63843f0713acb987905f8e1086cd0f73a0777c670e99329b6f2bf887ebe97597f1cdd422dcb6354ba55506c7635ac93a9f0c63594a95d10a14f4cd770', 'Armando', 'Cruz', 'Sta.Barbara', '2023-11-19 15:23:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DriverID` int(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `ContactNumber` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ChasisNumber` varchar(255) NOT NULL,
  `BodyNumber` varchar(255) NOT NULL,
  `MotorNumber` varchar(255) NOT NULL,
  `PlateNumber` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Toda` varchar(255) NOT NULL,
  `YearApplied` date NOT NULL,
  `YearExpire` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `Verified2` tinyint(1) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `FirstName`, `LastName`, `ContactNumber`, `qrcode`, `Address`, `ChasisNumber`, `BodyNumber`, `MotorNumber`, `PlateNumber`, `Model`, `Color`, `Toda`, `YearApplied`, `YearExpire`, `Email`, `Password`, `Verified`, `Verified2`, `status`) VALUES
(1, 'Paolo ', 'Cruz', '92134424513', 'qrcodes/Paolo  Cruz.png', 'Sto.Cristo', 'ABC36383612848', '1', 'LMM45F023981', 'XYZ789', 'Barako', 'Black', 'Apo Cristo', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(2, 'Miguel ', 'Santos', '95734857216', 'qrcodes/Miguel  Santos.png', 'Tibag', 'VGB242742I48642', '4', 'QTT12A045678', 'ABC123', 'Kawasaki', 'Red', 'Sta.Elena', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(3, 'Gabriel ', 'Reyes', '9546789542', 'qrcodes/Gabriel  Reyes.png', 'Tiaong', 'GHC34628346234', '2', 'XYP08B012345', 'DEF456', 'TMX', 'Red', 'BA', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(4, 'Carlos ', 'Lim', '9213784356', 'qrcodes/Carlos  Lim.png', 'Sabang', 'FGD3478294724', '5', 'ZZR36D098765', 'GHI789', 'Rusi', 'Black', 'STS', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(5, 'Luis ', 'Fernandez', '9546327189', 'qrcodes/Luis  Fernandez.png', 'Concepcion', 'TVGH47284561864', '6', 'HJL17C034219', 'JKL321', 'Honda', 'Red', 'Concepcion', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(6, 'Diego ', 'Aquino', '9432897652', 'qrcodes/Diego  Aquino.png', 'Piel', 'ADC2547594723842', '3', 'VVB29X056732', 'MNO654', 'Kawasaki', 'Black', 'Piel', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(7, 'Antonio ', 'Martinez', '9334578951', 'qrcodes/Antonio  Martinez.png', 'Aldama', 'TDG244729247242', '10', 'NNC51Y078945', 'PQR987', 'Bajaj', 'Black', 'BA', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(8, 'Angelo ', 'Rivera', '9547895432', 'qrcodes/Angelo  Rivera.png', 'Makinabang', 'FGC6452732836', '8', 'PPO63Z021356', 'STU543', 'Bajaj', 'Red', 'BA', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(9, 'Marco ', 'Rivera', '9564321765', 'qrcodes/Marco  Rivera.png', 'Sta.Barbara', 'UTD357398217341', '7', 'WWR94L067823', 'VWX876', 'Barako', 'Black', 'ASA', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL),
(10, 'Tomas ', 'Dela Cruz', '95647386752', 'qrcodes/Tomas  Dela Cruz.png', 'Tiaong', 'ASW1325378667997', '9', 'UUT72K032154', 'YZA234', 'tmx', 'Black', 'ASA', '2023-11-23', '2024-04-25', '', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `farematrix`
--

CREATE TABLE `farematrix` (
  `FareMatrixID` int(11) NOT NULL,
  `BaseFare` float NOT NULL,
  `PerKM` float NOT NULL,
  `NightDiff` float NOT NULL,
  `FarePerPassenger` float NOT NULL,
  `DateCreated` datetime NOT NULL,
  `DateDepreciated` datetime DEFAULT NULL,
  `Status` varchar(255) NOT NULL,
  `proposed_by` int(255) NOT NULL,
  `AdminIP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farematrix`
--

INSERT INTO `farematrix` (`FareMatrixID`, `BaseFare`, `PerKM`, `NightDiff`, `FarePerPassenger`, `DateCreated`, `DateDepreciated`, `Status`, `proposed_by`, `AdminIP`) VALUES
(1, 30, 10, 3, 5, '2023-10-11 12:41:57', NULL, 'active', 1, 'ac2f0877f8f0c656e5ba6f6a43d4ff78492a75f98715c156833292efcdb9f6aa4271ceb312ae6b5a87bfcd7f259a78f05fed1a0814e3fb3a37ed223378c93cef'),
(6, 3, 3, 3, 33, '2023-11-05 21:15:43', NULL, 'active', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `report_concern` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `user_id`, `subject`, `plate_number`, `report_concern`, `date_time`) VALUES
(1, '1', 'Lost Wallet', 'ABC-123', 'Lost', '2023-11-21 19:44:55'),
(2, '1', 'Lost Bag', 'ABC-222', 'I lost my bag', '2023-11-21 20:04:50'),
(3, '1', 'Lost Cellphone', 'WWW-123', 'Samsung', '2023-11-21 20:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RouteID` int(11) NOT NULL,
  `Toda` varchar(255) NOT NULL,
  `Borders` varchar(1000) NOT NULL,
  `Creator` varchar(255) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `DateDeprecated` datetime DEFAULT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RouteID`, `Toda`, `Borders`, `Creator`, `DateCreated`, `DateDeprecated`, `Status`) VALUES
(7, 'Piel', '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":14.952932342211593,\"lng\":120.89951992034914},{\"lat\":14.956663903242273,\"lng\":120.89782476425172},{\"lat\":14.954259126903922,\"lng\":120.89065790176393},{\"lat\":14.949677538760437,\"lng\":120.89271783828737}]]}', 'DevDan', '2023-10-11 02:59:15', NULL, 'active'),
(8, 'SJDD', '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":14.957244362456944,\"lng\":120.89997053146364},{\"lat\":14.954238395956223,\"lng\":120.90179443359376},{\"lat\":14.956912671669501,\"lng\":120.90466976165773},{\"lat\":14.959047922135378,\"lng\":120.9020733833313}]]}', 'DevDan', '2023-10-11 03:11:52', NULL, 'active'),
(10, 'Sabang', '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":14.96153556576685,\"lng\":120.89758872985841},{\"lat\":14.95778335889249,\"lng\":120.89954137802125},{\"lat\":14.959213765941996,\"lng\":120.90181589126588},{\"lat\":14.959939331087892,\"lng\":120.90248107910158},{\"lat\":14.963048868190059,\"lng\":120.90007781982423}]]}', 'DevDan', '2023-10-11 03:59:59', NULL, 'active'),
(11, 'St. Barbara', '{\"type\":\"polygon\",\"latlngs\":[[{\"lat\":14.958799156184948,\"lng\":120.8934259414673},{\"lat\":14.956539518920463,\"lng\":120.89441299438477},{\"lat\":14.955109094035068,\"lng\":120.89059352874757},{\"lat\":14.956850479589745,\"lng\":120.89044332504274}]]}', 'DevDan', '2023-10-11 04:01:12', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `todalocation`
--

CREATE TABLE `todalocation` (
  `TodaID` int(11) NOT NULL,
  `Toda` varchar(255) NOT NULL,
  `Terminal` varchar(2000) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `DateDepreciated` datetime DEFAULT NULL,
  `AdminID` int(11) NOT NULL,
  `AdminIP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todalocation`
--

INSERT INTO `todalocation` (`TodaID`, `Toda`, `Terminal`, `DateCreated`, `DateDepreciated`, `AdminID`, `AdminIP`) VALUES
(1, 'Piel', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.952606079606278,\"lng\":120.89787847559734}}', '2023-10-11 03:13:42', NULL, 12312, 'dasdad'),
(2, 'SJDD', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.956319116713315,\"lng\":120.90238940371549}}', '2023-10-11 03:16:18', NULL, 123123, 'dasdasd'),
(3, 'Sabang', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.961114144732555,\"lng\":120.90076314356054}}', '2023-10-11 03:59:13', NULL, 23132, 'dasdasd'),
(4, 'St. Barbara', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.956882119229656,\"lng\":120.89181723907254}}', '2023-10-11 04:02:06', NULL, 12312, 'sdadd'),
(13, 'awit', '{\"type\":\"marker\",\"latlng\":{\"lat\":14.953677364601687,\"lng\":120.89347266229535}}', '2023-11-07 19:05:44', NULL, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `baliuag`
--
ALTER TABLE `baliuag`
  ADD PRIMARY KEY (`placeid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `commuter`
--
ALTER TABLE `commuter`
  ADD PRIMARY KEY (`CommuterID`);

--
-- Indexes for table `dispatcher`
--
ALTER TABLE `dispatcher`
  ADD PRIMARY KEY (`DispatcherID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indexes for table `farematrix`
--
ALTER TABLE `farematrix`
  ADD PRIMARY KEY (`FareMatrixID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RouteID`);

--
-- Indexes for table `todalocation`
--
ALTER TABLE `todalocation`
  ADD PRIMARY KEY (`TodaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `baliuag`
--
ALTER TABLE `baliuag`
  MODIFY `placeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `commuter`
--
ALTER TABLE `commuter`
  MODIFY `CommuterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dispatcher`
--
ALTER TABLE `dispatcher`
  MODIFY `DispatcherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `DriverID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `farematrix`
--
ALTER TABLE `farematrix`
  MODIFY `FareMatrixID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `todalocation`
--
ALTER TABLE `todalocation`
  MODIFY `TodaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
