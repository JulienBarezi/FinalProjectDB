-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 01:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `premise_id` int(11) DEFAULT NULL,
  `tarrif_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `premise_id`, `tarrif_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 2),
(4, 3, 1),
(5, 5, 2),
(6, 7, 1),
(7, 6, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 2),
(11, 11, 1),
(12, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `charge_structure`
--

CREATE TABLE `charge_structure` (
  `tarrif_id` int(11) DEFAULT NULL,
  `lower_limit` varchar(255) DEFAULT NULL,
  `upper_limit` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charge_structure`
--

INSERT INTO `charge_structure` (`tarrif_id`, `lower_limit`, `upper_limit`, `charge`) VALUES
(1, '100000', '200000', '150000'),
(2, '1000000', '2000000', '1300000');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(255) DEFAULT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `telephone_number`, `zone_id`) VALUES
(1, 'Peter', '0789398493', 0),
(2, 'Paul', '0789398987', 0),
(3, 'Steve', '0789988493', 0),
(4, 'Christian', '0788746849', 0),
(5, 'Hervis', '0789849049', 0),
(6, 'Carine', '0789399033', 0),
(7, 'Kenneth', '0780939849', 0),
(8, 'Derick', '0789908493', 0),
(9, 'Brian', '0789309493', 0),
(10, 'Evan', '0780988493', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `bill_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount_paid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`bill_id`, `transaction_id`, `amount_paid`) VALUES
(1, 'T001', '150000'),
(2, 'T002', '120000'),
(3, 'T003', '1100000'),
(4, 'T004', '150000'),
(5, 'T005', '1300000'),
(6, 'T006', '150000'),
(7, 'T007', '150000'),
(8, 'T008', '1000000'),
(9, 'T009', '90000'),
(10, 'T010', '1300000'),
(11, 'T011', '150000'),
(12, 'T012', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(255) DEFAULT NULL,
  `plant_capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_name`, `plant_capacity`) VALUES
(1, 'Nzove', '3000'),
(2, 'Gihira', '4000'),
(3, 'KivuWatt', '10000'),
(4, 'Vision', '8000'),
(5, 'Kinigi', '7000'),
(6, 'Ruyenzi', '5000'),
(7, 'Iriba', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `premise`
--

CREATE TABLE `premise` (
  `premise_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `meter_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premise`
--

INSERT INTO `premise` (`premise_id`, `customer_id`, `meter_number`, `status`, `zone_id`) VALUES
(1, 1, '0989384993', 'active', 14),
(2, 2, '0098284993', 'active', 13),
(3, 4, '2039384993', 'active', 1),
(4, 8, '0980984993', 'active', 5),
(5, 7, '2109384993', 'suspended', 37),
(6, 5, '0909884993', 'suspended ', 6),
(7, 10, '0956084993', 'suspended', 13),
(8, 9, '2039384993', 'suspended', 6),
(9, 3, '0989098993', 'active', 1),
(10, 6, '2039238499', 'suspended', 5),
(11, 4, '2003384993', 'active', 1),
(12, 6, '3080984993', 'active', 5);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `status`) VALUES
(1, 'KK 200 ST', 'active'),
(2, 'KK 390 ST', 'active'),
(3, 'KK 002 ST', 'active'),
(4, 'KG 456 ST', 'off'),
(5, 'KG 090 ST', 'off'),
(6, 'KK 006 ST', 'active'),
(7, 'KG 209 ST', 'active'),
(8, 'KK 409 ST', 'off'),
(9, 'KG 800 ST', 'active'),
(10, 'KK 500 ST', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `sector_id` int(11) NOT NULL,
  `sector_name` varchar(255) DEFAULT NULL,
  `office_physical_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_name`, `office_physical_address`) VALUES
(1, 'Muhima', 'Tetero'),
(2, 'Nyarugenge', 'Kiyovu'),
(3, 'Bumbogo', 'Mvuzo'),
(4, 'Kimironko', 'Kagara'),
(5, 'Ndera', 'Kibenga'),
(6, 'Rusororo', 'Kinyana'),
(7, 'Kanombe', 'Kabeza'),
(8, 'Gahanga', 'Muringa'),
(9, 'Nduba', 'Shango'),
(10, 'Jali', 'Muko'),
(11, 'Jabana', 'Kabuye'),
(12, 'Gitega', 'Akabeza');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `sector_id`) VALUES
(1, 'Christian ishimwe', 1),
(2, 'Shema ken', 2),
(3, 'Gedeon Mugisha', 3),
(4, 'Leslie nshuti', 4),
(5, 'Brian shimwa', 5),
(6, 'Belise Nirere', 6),
(7, 'Kenny cyubahiro', 7),
(8, 'Brenda Kalimba', 8),
(9, 'Paul Shema', 9),
(10, 'Bill karenzi', 10),
(11, 'Leonard Mugisha', 11),
(12, 'Kevin kayihura', 12);

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `supply_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supply_id`, `plant_id`, `sector_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 4, 1),
(4, 3, 12),
(5, 7, 12),
(6, 4, 8),
(7, 6, 7),
(8, 5, 10),
(9, 1, 9),
(10, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tarrif`
--

CREATE TABLE `tarrif` (
  `tarrif_id` int(11) NOT NULL,
  `tarrif_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tarrif`
--

INSERT INTO `tarrif` (`tarrif_id`, `tarrif_name`) VALUES
(1, 'domestic'),
(2, 'commercial');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `zone_name`, `sector_id`) VALUES
(1, 'Kabeza', 1),
(2, 'Nyabugogo', 1),
(3, 'Rugenge', 1),
(4, 'Tetero', 1),
(5, 'Biryogo', 2),
(6, 'Kiyovu', 2),
(7, 'Agatare ', 2),
(8, 'Rwampara', 2),
(9, 'Kinyaga', 3),
(10, 'Mvuzo', 3),
(11, 'Ngara ', 3),
(12, 'Musave', 3),
(13, 'Bibare', 4),
(14, 'Kibagabaga', 4),
(15, 'Nyagatovu', 4),
(16, 'Kagara', 4),
(17, 'Masoro', 5),
(18, 'Bwiza', 5),
(19, 'Kibenga', 5),
(20, 'Rudashya', 5),
(21, 'Bisenga', 6),
(22, 'Gasagara', 6),
(23, 'Kinyana', 6),
(24, 'Mbandazi', 6),
(25, 'Buganza', 7),
(26, 'Kabeza', 7),
(27, 'Karama', 7),
(28, 'Rubirizi', 7),
(29, 'kagasa', 8),
(30, 'Muringa', 8),
(31, 'Nunga', 8),
(32, 'Rwabutenge', 8),
(33, 'Gasanze', 9),
(34, 'Muremure', 9),
(35, 'Shango', 9),
(36, 'Butare', 9),
(37, 'Buliza', 10),
(38, 'Muko', 10),
(39, 'Nkusi', 10),
(40, 'Nyabuliba', 10),
(41, 'Kabuye', 11),
(42, 'Kidashya', 11),
(43, 'Akamatamu', 11),
(44, 'Ngiryi', 11),
(45, 'Akabahizi', 12),
(46, 'Akabeza', 12),
(47, 'Gacyamo', 12),
(48, 'Kigarama', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `premise_id` (`premise_id`),
  ADD KEY `tarrif_id` (`tarrif_id`);

--
-- Indexes for table `charge_structure`
--
ALTER TABLE `charge_structure`
  ADD KEY `tarrif_id` (`tarrif_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `premise`
--
ALTER TABLE `premise`
  ADD PRIMARY KEY (`premise_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supply_id`),
  ADD KEY `sector_id` (`sector_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Indexes for table `tarrif`
--
ALTER TABLE `tarrif`
  ADD PRIMARY KEY (`tarrif_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`premise_id`) REFERENCES `premise` (`premise_id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`tarrif_id`) REFERENCES `tarrif` (`tarrif_id`);

--
-- Constraints for table `charge_structure`
--
ALTER TABLE `charge_structure`
  ADD CONSTRAINT `charge_structure_ibfk_1` FOREIGN KEY (`tarrif_id`) REFERENCES `tarrif` (`tarrif_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`);

--
-- Constraints for table `premise`
--
ALTER TABLE `premise`
  ADD CONSTRAINT `premise_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `premise_ibfk_2` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`);

--
-- Constraints for table `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `supply_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`),
  ADD CONSTRAINT `supply_ibfk_2` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`);

--
-- Constraints for table `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `zone_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
