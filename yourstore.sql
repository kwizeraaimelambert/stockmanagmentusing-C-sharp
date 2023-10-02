-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 11:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Rate` double NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`Product_ID`, `Product_Name`, `Category`, `Rate`, `Quantity`) VALUES
(1, 'mangoes', 'Foods', 15, 280);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `TransactionID` int(12) NOT NULL,
  `TransactionType` varchar(15) NOT NULL,
  `SysUser` int(100) NOT NULL,
  `GrandTotal` double NOT NULL,
  `TransactionDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`TransactionID`, `TransactionType`, `SysUser`, `GrandTotal`, `TransactionDate`) VALUES
(3, 'Purchase', 0, 4068, '2023-10-01 15:34:56'),
(4, 'Sale', 0, 271.2, '2023-10-01 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactiondetails`
--

CREATE TABLE `tbl_transactiondetails` (
  `ID` double NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Tax` double NOT NULL,
  `Discount` double NOT NULL,
  `Rate` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transactiondetails`
--

INSERT INTO `tbl_transactiondetails` (`ID`, `ProductID`, `Tax`, `Discount`, `Rate`, `Quantity`, `Total`) VALUES
(1, 1, 468, 900, 15, 300, 4068),
(2, 1, 31.2, 60, 15, 20, 271.2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `UserID` int(12) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `UserType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`UserID`, `FullName`, `Username`, `Email`, `Contact`, `Password`, `UserType`) VALUES
(1, 'aime', 'aimolly', 'test@gmail.com', '08999788', '1234', 'Admin'),
(2, 'olive', 'mukeshimana', 'aimolly@gmail.com', '08796564', '1234', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`TransactionID`);

--
-- Indexes for table `tbl_transactiondetails`
--
ALTER TABLE `tbl_transactiondetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `TransactionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_transactiondetails`
--
ALTER TABLE `tbl_transactiondetails`
  MODIFY `ID` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `UserID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
