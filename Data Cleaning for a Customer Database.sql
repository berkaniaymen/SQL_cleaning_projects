CREATE TABLE `e_customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(7) NOT NULL,
  `LastName` varchar(7)  NOT NULL,
  `Email` varchar(27)  NOT NULL,
  `Phone` varchar(12)  NOT NULL,
  `Address` varchar(13)  NOT NULL,
  `City` varchar(10)  NOT NULL,
  `ZipCode` int NOT NULL,
  `SignupDate` datetime NOT NULL,
  KEY `idx_customer_id` (`CustomerID`));
  
  CREATE TABLE `e_orders` (
  `OrderID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `ProductID` int NOT NULL,
  `OrderDate` datetime NOT NULL,
  `Quantity` int NOT NULL,
  `OrderStatus` varchar(10)  NOT NULL,
  `TotalAmount` decimal(5,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID_idx` (`CustomerID`),
  KEY `idx_product_id` (`ProductID`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`CustomerID`) REFERENCES `e_customers` (`CustomerID`),
  CONSTRAINT `fk_products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`));
  
  CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(8) NOT NULL,
  `Category` varchar(7) NOT NULL,
  `Price` decimal(4,1) NOT NULL,
  `StockQuantity` int NOT NULL,
  KEY `idx_products_id` (`ProductID`));
-- --------------------------------------------------------------------
  INSERT INTO `e_orders` VALUES (101,146,1005,'2020-07-16 00:00:00',2,'Canceled',320.97),
	(102,198,1005,'2021-04-29 00:00:00',3,'Delivered',60.32),
	(103,37,1002,'2022-12-18 00:00:00',4,'Canceled',194.95),
	(104,60,1003,'2022-04-16 00:00:00',5,'Delivered',336.42),
	(105,176,1005,'2022-10-05 00:00:00',2,'Canceled',117.05),
	(106,28,1001,'2021-11-21 00:00:00',3,'Shipped',362.94),
	(107,197,1005,'2022-11-01 00:00:00',2,'Shipped',385.67),
	(108,81,1002,'2021-05-04 00:00:00',4,'Shipped',491.89),
	(109,114,1002,'2020-10-02 00:00:00',2,'Shipped',144.43),
	(110,40,1003,'2021-11-23 00:00:00',1,'Shipped',421.31),
	(111,45,1005,'2020-08-29 00:00:00',3,'Shipped',284.13),
	(112,62,1001,'2020-05-05 00:00:00',2,'Delivered',218.06),
	(113,93,1001,'2020-08-04 00:00:00',4,'Returned',105.07),
	(114,115,1004,'2022-11-28 00:00:00',4,'Canceled',380.98),
	(115,186,1001,'2021-05-09 00:00:00',2,'Shipped',156.14),
	(116,67,1003,'2021-03-02 00:00:00',4,'Delivered',217.14),
	(117,56,1003,'2022-07-07 00:00:00',5,'Delivered',78.14),
	(118,40,1001,'2020-05-30 00:00:00',5,'Delivered',410.62),
	(119,98,1001,'2021-01-18 00:00:00',5,'Returned',394.96),
	(120,40,1004,'2020-11-03 00:00:00',1,'Canceled',380.13),
	(121,91,1001,'2022-01-15 00:00:00',2,'Returned',184.75),
	(122,33,1004,'2022-06-10 00:00:00',1,'Processing',128.07),
	(123,6,1004,'2021-01-09 00:00:00',4,'Delivered',336.9),
	(124,147,1001,'2022-10-28 00:00:00',1,'Processing',273.27),
	(125,80,1002,'2020-05-08 00:00:00',4,'Shipped',130.21),
	(126,168,1002,'2022-10-11 00:00:00',4,'Shipped',358.66),
	(127,92,1004,'2021-10-30 00:00:00',3,'Returned',496.01),
	(128,97,1001,'2021-05-31 00:00:00',5,'Canceled',386.25),
	(129,59,1002,'2020-03-26 00:00:00',4,'Processing',382.99),
	(130,59,1001,'2020-11-06 00:00:00',3,'Canceled',477.64),
	(131,48,1001,'2021-03-02 00:00:00',5,'Returned',141.32),
	(132,169,1001,'2020-04-23 00:00:00',4,'Shipped',304.5),
	(133,13,1005,'2020-10-29 00:00:00',4,'Canceled',490.84),
	(134,107,1001,'2022-01-13 00:00:00',1,'Canceled',124.38),
	(135,45,1005,'2021-08-10 00:00:00',1,'Shipped',365.11),
	(136,89,1004,'2022-09-13 00:00:00',5,'Processing',313.61),
	(137,181,1002,'2020-12-10 00:00:00',4,'Shipped',313.92),
	(138,170,1002,'2022-03-24 00:00:00',2,'Canceled',363.95),
	(139,100,1002,'2022-03-11 00:00:00',1,'Processing',468.33),
	(140,191,1002,'2022-10-21 00:00:00',5,'Processing',402.16),
	(141,155,1002,'2022-12-12 00:00:00',4,'Shipped',75.26),
	(142,166,1002,'2022-12-28 00:00:00',4,'Canceled',433.73),
	(143,188,1002,'2020-12-26 00:00:00',2,'Returned',151.49),
	(144,7,1004,'2022-10-06 00:00:00',5,'Canceled',219.61),
	(145,133,1001,'2021-12-04 00:00:00',4,'Delivered',257.78),
	(146,45,1003,'2021-07-28 00:00:00',1,'Returned',266.41),
	(147,58,1005,'2021-11-18 00:00:00',2,'Processing',245.83),
	(148,31,1003,'2022-02-19 00:00:00',5,'Returned',471.81),
	(149,23,1003,'2021-08-07 00:00:00',2,'Processing',367.71),
	(150,170,1001,'2021-08-11 00:00:00',1,'Processing',334.03),
	(151,138,1001,'2021-05-03 00:00:00',5,'Returned',72.43),
	(152,160,1001,'2022-08-28 00:00:00',2,'Processing',456.76),
	(153,107,1002,'2021-05-08 00:00:00',3,'Processing',459.23),
	(154,181,1004,'2020-01-19 00:00:00',1,'Delivered',401.1),
	(155,158,1002,'2021-01-31 00:00:00',1,'Canceled',53.16),
	(156,39,1004,'2022-09-27 00:00:00',1,'Canceled',75.78),
	(157,159,1004,'2022-04-30 00:00:00',3,'Delivered',151.35),
	(158,82,1003,'2022-04-01 00:00:00',3,'Returned',109.11),
	(159,100,1003,'2021-03-30 00:00:00',4,'Shipped',229.48),
	(160,2,1004,'2021-12-25 00:00:00',2,'Shipped',465.18),
	(161,77,1004,'2022-12-24 00:00:00',4,'Shipped',262.43),
	(162,12,1002,'2021-12-11 00:00:00',2,'Delivered',56.03),
	(163,39,1002,'2020-05-22 00:00:00',3,'Delivered',177.24),
	(164,194,1003,'2022-07-05 00:00:00',3,'Processing',70.07),
	(165,13,1001,'2022-04-07 00:00:00',4,'Shipped',66.33),
	(166,46,1004,'2021-08-27 00:00:00',5,'Returned',174.07),
	(167,155,1002,'2020-10-31 00:00:00',4,'Returned',174.03),
	(168,113,1003,'2022-01-05 00:00:00',2,'Shipped',404.21),
	(169,17,1002,'2020-10-17 00:00:00',4,'Shipped',488.68),
	(170,104,1004,'2020-04-11 00:00:00',1,'Shipped',217.04),
	(171,98,1004,'2022-05-16 00:00:00',2,'Delivered',243.0),
	(172,188,1005,'2022-08-25 00:00:00',2,'Delivered',430.16),
	(173,192,1001,'2022-08-31 00:00:00',5,'Delivered',170.66),
	(174,88,1005,'2022-04-21 00:00:00',3,'Canceled',120.37),
	(175,109,1003,'2022-08-19 00:00:00',2,'Returned',433.89),
	(176,163,1002,'2022-07-30 00:00:00',3,'Returned',70.93),
	(177,70,1003,'2022-10-23 00:00:00',4,'Processing',328.86),
	(178,158,1004,'2020-03-25 00:00:00',1,'Delivered',302.9),
	(179,199,1005,'2020-11-23 00:00:00',5,'Canceled',205.66),
	(180,74,1005,'2022-03-26 00:00:00',3,'Canceled',191.84),
	(181,63,1005,'2021-03-29 00:00:00',2,'Returned',397.34),
	(182,156,1003,'2021-09-20 00:00:00',3,'Delivered',88.89),
	(183,60,1004,'2021-10-26 00:00:00',2,'Processing',156.55),
	(184,79,1002,'2020-01-12 00:00:00',3,'Delivered',379.6),
	(185,37,1002,'2020-10-30 00:00:00',2,'Shipped',296.74),
	(186,22,1003,'2022-09-01 00:00:00',4,'Delivered',107.59),
	(187,196,1005,'2022-02-21 00:00:00',2,'Shipped',446.96),
	(188,148,1001,'2020-02-12 00:00:00',2,'Shipped',227.05),
	(189,96,1003,'2022-08-01 00:00:00',1,'Processing',422.54),
	(190,68,1003,'2020-12-08 00:00:00',2,'Returned',404.47),
	(191,192,1004,'2021-05-12 00:00:00',1,'Delivered',330.99),
	(192,17,1002,'2020-12-29 00:00:00',5,'Shipped',272.52),
	(193,12,1003,'2022-06-09 00:00:00',1,'Delivered',490.8),
	(194,150,1003,'2021-03-02 00:00:00',4,'Returned',115.23),
	(195,145,1005,'2022-10-01 00:00:00',1,'Returned',376.32),
	(196,138,1005,'2020-01-21 00:00:00',5,'Canceled',136.04),
	(197,118,1001,'2021-02-10 00:00:00',4,'Returned',202.22),
	(198,193,1004,'2021-09-10 00:00:00',3,'Processing',188.91),
	(199,22,1001,'2022-10-11 00:00:00',3,'Shipped',476.17),
	(200,120,1005,'2020-12-01 00:00:00',1,'Canceled',485.31),
	(201,50,1002,'2021-02-02 00:00:00',1,'Processing',132.36),
	(202,14,1005,'2022-03-03 00:00:00',5,'Delivered',59.92),
	(203,192,1004,'2021-12-15 00:00:00',5,'Shipped',374.0),
	(204,175,1005,'2020-02-20 00:00:00',2,'Returned',238.1),
	(205,29,1004,'2020-11-19 00:00:00',5,'Shipped',89.98),
	(206,164,1004,'2022-02-27 00:00:00',2,'Delivered',357.69),
	(207,180,1004,'2020-05-20 00:00:00',4,'Canceled',295.3),
	(208,125,1004,'2021-04-14 00:00:00',1,'Canceled',491.23),
	(209,7,1004,'2022-02-25 00:00:00',4,'Canceled',152.33),
	(210,29,1002,'2022-08-21 00:00:00',5,'Returned',231.79),
	(211,139,1001,'2022-10-04 00:00:00',4,'Processing',294.15),
	(212,33,1003,'2021-01-07 00:00:00',4,'Processing',406.26),
	(213,134,1001,'2021-05-08 00:00:00',4,'Shipped',296.98),
	(214,111,1004,'2022-01-20 00:00:00',5,'Returned',325.81),
	(215,79,1002,'2020-10-17 00:00:00',4,'Canceled',151.77),
	(216,160,1005,'2020-04-15 00:00:00',2,'Canceled',431.11),
	(217,179,1002,'2021-10-31 00:00:00',5,'Delivered',242.88),
	(218,58,1004,'2020-01-02 00:00:00',4,'Delivered',113.43),
	(219,26,1002,'2021-08-11 00:00:00',5,'Canceled',348.88),
	(220,174,1002,'2021-10-05 00:00:00',3,'Canceled',147.24),
	(221,29,1004,'2020-03-30 00:00:00',2,'Returned',93.9),
	(222,4,1002,'2020-12-15 00:00:00',4,'Processing',437.89),
	(223,99,1003,'2022-11-28 00:00:00',3,'Delivered',257.07),
	(224,141,1003,'2022-06-27 00:00:00',3,'Processing',387.18),
	(225,39,1002,'2020-06-07 00:00:00',5,'Returned',180.76),
	(226,15,1005,'2022-08-16 00:00:00',3,'Canceled',404.14),
	(227,119,1004,'2020-11-07 00:00:00',2,'Processing',100.37),
	(228,29,1003,'2021-03-20 00:00:00',2,'Canceled',210.19),
	(229,157,1005,'2020-10-24 00:00:00',1,'Canceled',490.13),
	(230,75,1002,'2022-08-09 00:00:00',2,'Shipped',407.3),
	(231,116,1005,'2020-02-05 00:00:00',3,'Processing',273.77),
	(232,32,1001,'2021-07-12 00:00:00',2,'Processing',202.9),
	(233,130,1003,'2022-06-09 00:00:00',5,'Canceled',442.46),
	(234,175,1002,'2020-05-20 00:00:00',1,'Returned',295.18),
	(235,84,1004,'2022-06-05 00:00:00',3,'Shipped',391.29),
	(236,22,1002,'2021-12-26 00:00:00',1,'Canceled',389.35),
	(237,27,1004,'2022-11-15 00:00:00',3,'Delivered',58.08),
	(238,195,1002,'2021-06-04 00:00:00',5,'Delivered',106.81),
	(239,81,1005,'2020-01-10 00:00:00',1,'Shipped',346.83),
	(240,126,1005,'2022-09-10 00:00:00',4,'Returned',122.73),
	(241,184,1005,'2021-01-12 00:00:00',3,'Canceled',164.97),
	(242,92,1001,'2021-11-12 00:00:00',4,'Processing',475.99),
	(243,21,1004,'2021-08-06 00:00:00',1,'Shipped',302.08),
	(244,47,1005,'2020-05-31 00:00:00',4,'Returned',387.83),
	(245,101,1001,'2021-12-20 00:00:00',4,'Processing',301.09),
	(246,187,1004,'2022-12-08 00:00:00',1,'Delivered',298.63),
	(247,84,1002,'2022-05-08 00:00:00',5,'Delivered',92.37),
	(248,6,1001,'2020-02-19 00:00:00',4,'Processing',204.65),
	(249,147,1003,'2021-10-25 00:00:00',4,'Shipped',177.09),
	(250,185,1001,'2021-06-14 00:00:00',5,'Delivered',225.83),
	(251,197,1001,'2022-12-19 00:00:00',4,'Canceled',409.25),
	(252,131,1004,'2022-05-06 00:00:00',4,'Processing',217.37),
	(253,1,1002,'2020-05-25 00:00:00',4,'Processing',253.26),
	(254,58,1003,'2022-07-03 00:00:00',2,'Delivered',228.82),
	(255,124,1005,'2022-09-19 00:00:00',5,'Shipped',92.03),
	(256,166,1005,'2020-08-29 00:00:00',4,'Canceled',248.48),
	(257,15,1001,'2021-08-03 00:00:00',5,'Shipped',138.02),
	(258,162,1004,'2021-11-17 00:00:00',3,'Returned',134.03),
	(259,189,1004,'2021-04-27 00:00:00',3,'Returned',92.32),
	(260,163,1005,'2021-11-03 00:00:00',4,'Delivered',210.5),
	(261,64,1003,'2021-09-22 00:00:00',5,'Delivered',390.87),
	(262,25,1002,'2021-10-22 00:00:00',5,'Delivered',174.4),
	(263,24,1003,'2021-10-23 00:00:00',5,'Returned',190.56),
	(264,12,1002,'2022-03-15 00:00:00',2,'Shipped',339.2),
	(265,18,1005,'2021-02-22 00:00:00',3,'Shipped',138.13),
	(266,15,1002,'2022-09-14 00:00:00',5,'Delivered',453.63),
	(267,27,1004,'2021-10-11 00:00:00',5,'Canceled',284.09),
	(268,72,1001,'2022-08-26 00:00:00',2,'Shipped',251.42),
	(269,60,1001,'2021-08-12 00:00:00',2,'Returned',301.02),
	(270,174,1005,'2021-05-23 00:00:00',5,'Processing',124.72),
	(271,145,1004,'2021-03-16 00:00:00',1,'Processing',326.06),
	(272,93,1003,'2022-07-09 00:00:00',5,'Processing',213.4),
	(273,53,1004,'2022-02-08 00:00:00',5,'Canceled',453.73),
	(274,8,1001,'2020-09-19 00:00:00',2,'Delivered',125.98),
	(275,79,1001,'2021-09-28 00:00:00',2,'Returned',278.17),
	(276,27,1004,'2021-04-03 00:00:00',5,'Canceled',319.15),
	(277,174,1004,'2022-09-25 00:00:00',5,'Returned',65.02),
	(278,50,1001,'2021-11-30 00:00:00',5,'Returned',213.66),
	(279,199,1003,'2020-10-28 00:00:00',2,'Delivered',379.69),
	(280,131,1005,'2021-07-07 00:00:00',5,'Processing',419.17),
	(281,93,1005,'2020-10-14 00:00:00',5,'Delivered',190.92),
	(282,192,1004,'2021-09-12 00:00:00',4,'Canceled',409.37),
	(283,172,1005,'2022-10-02 00:00:00',1,'Canceled',485.49),
	(284,181,1001,'2020-02-05 00:00:00',3,'Canceled',435.59),
	(285,24,1001,'2022-01-13 00:00:00',1,'Delivered',102.94),
	(286,60,1004,'2020-12-18 00:00:00',4,'Returned',382.88),
	(287,122,1004,'2020-03-13 00:00:00',3,'Returned',193.85),
	(288,131,1004,'2021-10-09 00:00:00',5,'Shipped',494.79),
	(289,148,1003,'2022-12-29 00:00:00',4,'Canceled',268.41),
	(290,46,1005,'2021-02-28 00:00:00',5,'Returned',105.1),
	(291,15,1004,'2022-09-25 00:00:00',2,'Shipped',376.33),
	(292,153,1002,'2021-12-08 00:00:00',4,'Returned',195.36),
	(293,199,1002,'2021-07-14 00:00:00',2,'Canceled',498.69),
	(294,17,1001,'2022-04-07 00:00:00',4,'Processing',490.9),
	(295,126,1005,'2022-08-13 00:00:00',4,'Canceled',345.26),
	(296,84,1004,'2021-05-31 00:00:00',2,'Delivered',108.42),
	(297,9,1002,'2021-03-03 00:00:00',3,'Returned',359.09),
	(298,166,1005,'2020-06-08 00:00:00',1,'Returned',91.86),
	(299,176,1001,'2020-05-28 00:00:00',5,'Delivered',63.21),
	(300,188,1003,'2022-02-14 00:00:00',4,'Delivered',420.33);
  
INSERT INTO `e_customers` VALUES (1,'Pat','Taylor','pat.taylor@example.com','727-686-2648','101 Elm St.','Marrakech',30000,'2018-06-04 00:00:00'),
	(2,'Eve','Lee','eve.lee@example.com','519-521-5199','456 Oak St.','Casablanca',20000,'2018-08-26 00:00:00'),
	(3,'Mallory','Taylor','mallory.taylor@example.com','951-353-3557','202 Birch St.','Marrakech',10000,'2015-04-08 00:00:00'),
	(4,'Pat','Smith','pat.smith@example.com','572-198-3200','202 Birch St.','Marrakech',10000,'2015-02-24 00:00:00'),
	(5,'Charlie','Johnson','charlie.johnson@example.com','960-995-5973','123 Maple St.','Casablanca',10000,'2017-01-27 00:00:00'),
	(6,'Sam','Davis','sam.davis@example.com','437-805-3869','202 Birch St.','Rabat',30000,'2016-02-10 00:00:00'),
	(7,'Mallory','Lee','mallory.lee@example.com','262-819-1956','123 Maple St.','Rabat',40000,'2020-10-17 00:00:00'),
	(8,'Mallory','Johnson','mallory.johnson@example.com','780-260-6699','101 Elm St.','Fes',40000,'2018-08-05 00:00:00'),
	(9,'Pat','White','pat.white@example.com','900-497-5911','456 Oak St.','Casablanca',10000,'2019-11-21 00:00:00'),
	(10,'Bob','Davis','bob.davis@example.com','603-995-2218','456 Oak St.','Fes',40000,'2017-01-20 00:00:00'),
	(11,'Charlie','Taylor','charlie.taylor@example.com','500-739-5555','123 Maple St.','Fes',40000,'2019-10-29 00:00:00'),
	(12,'Pat','Taylor','pat.taylor@example.com','982-569-4446','456 Oak St.','Fes',30000,'2015-12-31 00:00:00'),
	(13,'Charlie','Davis','charlie.davis@example.com','121-849-2693','202 Birch St.','Rabat',20000,'2020-07-19 00:00:00'),
	(14,'Charlie','Taylor','charlie.taylor@example.com','137-329-4436','789 Pine St.','Casablanca',10000,'2016-04-26 00:00:00'),
	(15,'Sam','Brown','sam.brown@example.com','662-537-6895','123 Maple St.','Fes',10000,'2021-02-26 00:00:00'),
	(16,'Mallory','Davis','mallory.davis@example.com','382-126-1225','456 Oak St.','Casablanca',30000,'2015-06-03 00:00:00'),
	(17,'Eve','Johnson','eve.johnson@example.com','376-897-8022','123 Maple St.','Casablanca',30000,'2019-03-05 00:00:00'),
	(18,'Sam','Davis','sam.davis@example.com','580-552-8996','123 Maple St.','Rabat',40000,'2020-10-21 00:00:00'),
	(19,'Sam','Lee','sam.lee@example.com','915-758-8683','789 Pine St.','Fes',10000,'2021-06-01 00:00:00'),
	(20,'Charlie','Taylor','charlie.taylor@example.com','646-291-8679','202 Birch St.','Fes',20000,'2017-11-06 00:00:00'),
	(21,'Oscar','Brown','oscar.brown@example.com','116-271-3205','123 Maple St.','Casablanca',30000,'2019-07-23 00:00:00'),
	(22,'Mallory','Brown','mallory.brown@example.com','576-145-4444','456 Oak St.','Marrakech',20000,'2018-05-25 00:00:00'),
	(23,'Bob','White','bob.white@example.com','617-198-2060','101 Elm St.','Rabat',20000,'2015-03-02 00:00:00'),
	(24,'Sam','Johnson','sam.johnson@example.com','379-448-1301','123 Maple St.','Rabat',10000,'2017-07-27 00:00:00'),
	(25,'Eve','Jones','eve.jones@example.com','280-706-4170','123 Maple St.','Rabat',10000,'2019-06-28 00:00:00'),
	(26,'Oscar','Jones','oscar.jones@example.com','799-215-1190','789 Pine St.','Rabat',30000,'2020-09-20 00:00:00'),
	(27,'Oscar','Davis','oscar.davis@example.com','352-260-4327','202 Birch St.','Fes',10000,'2015-01-25 00:00:00'),
	(28,'Bob','White','bob.white@example.com','422-227-2816','101 Elm St.','Fes',10000,'2017-11-28 00:00:00'),
	(29,'Sam','Smith','sam.smith@example.com','834-665-1569','456 Oak St.','Marrakech',10000,'2015-05-11 00:00:00'),
	(30,'Eve','Davis','eve.davis@example.com','422-971-3733','101 Elm St.','Rabat',20000,'2018-06-06 00:00:00'),
	(31,'Mallory','White','mallory.white@example.com','891-725-8455','456 Oak St.','Rabat',30000,'2015-04-18 00:00:00'),
	(32,'Alice','Johnson','alice.johnson@example.com','953-762-4009','202 Birch St.','Casablanca',40000,'2015-06-21 00:00:00'),
	(33,'Eve','Johnson','eve.johnson@example.com','738-254-2409','456 Oak St.','Fes',20000,'2018-12-29 00:00:00'),
	(34,'Bob','Johnson','bob.johnson@example.com','884-203-9096','789 Pine St.','Rabat',10000,'2015-04-12 00:00:00'),
	(35,'Oscar','Johnson','oscar.johnson@example.com','492-910-8343','789 Pine St.','Marrakech',20000,'2021-05-11 00:00:00'),
	(36,'Mallory','Johnson','mallory.johnson@example.com','138-576-6801','789 Pine St.','Marrakech',10000,'2019-06-25 00:00:00'),
	(37,'Eve','White','eve.white@example.com','858-637-6986','789 Pine St.','Fes',10000,'2017-11-06 00:00:00'),
	(38,'Alice','White','alice.white@example.com','917-507-9716','101 Elm St.','Marrakech',20000,'2015-11-26 00:00:00'),
	(39,'Alice','Brown','alice.brown@example.com','927-605-3950','202 Birch St.','Marrakech',30000,'2019-03-01 00:00:00'),
	(40,'Charlie','Lee','charlie.lee@example.com','924-135-5780','456 Oak St.','Fes',10000,'2015-01-12 00:00:00'),
	(41,'Charlie','Jones','charlie.jones@example.com','119-420-7655','456 Oak St.','Rabat',30000,'2018-09-03 00:00:00'),
	(42,'Pat','Taylor','pat.taylor@example.com','499-753-7002','789 Pine St.','Rabat',40000,'2015-08-04 00:00:00'),
	(43,'Bob','Johnson','bob.johnson@example.com','570-242-6919','789 Pine St.','Marrakech',10000,'2015-12-05 00:00:00'),
	(44,'Sam','Smith','sam.smith@example.com','826-953-5146','123 Maple St.','Marrakech',30000,'2019-12-05 00:00:00'),
	(45,'Eve','Taylor','eve.taylor@example.com','764-797-1574','202 Birch St.','Rabat',30000,'2019-10-17 00:00:00'),
	(46,'Eve','White','eve.white@example.com','289-224-7293','101 Elm St.','Fes',40000,'2019-02-17 00:00:00'),
	(47,'Sam','Smith','sam.smith@example.com','413-669-8509','456 Oak St.','Marrakech',30000,'2021-08-18 00:00:00'),
	(48,'Pat','Smith','pat.smith@example.com','404-791-5777','123 Maple St.','Casablanca',30000,'2016-12-10 00:00:00'),
	(49,'Oscar','Smith','oscar.smith@example.com','937-882-3491','123 Maple St.','Fes',40000,'2018-05-08 00:00:00'),
	(50,'Oscar','Brown','oscar.brown@example.com','712-363-4124','456 Oak St.','Marrakech',10000,'2021-11-18 00:00:00'),
	(51,'Pat','White','pat.white@example.com','671-719-1004','101 Elm St.','Marrakech',30000,'2018-01-17 00:00:00'),
	(52,'Oscar','Smith','oscar.smith@example.com','202-295-5869','123 Maple St.','Casablanca',30000,'2018-07-15 00:00:00'),
	(53,'Charlie','Johnson','charlie.johnson@example.com','976-983-5142','123 Maple St.','Casablanca',30000,'2016-05-03 00:00:00'),
	(54,'Eve','Davis','eve.davis@example.com','966-922-8079','202 Birch St.','Rabat',20000,'2019-04-11 00:00:00'),
	(55,'Pat','Smith','pat.smith@example.com','919-755-5465','101 Elm St.','Fes',40000,'2015-02-16 00:00:00'),
	(56,'Eve','Brown','eve.brown@example.com','735-205-2693','123 Maple St.','Fes',20000,'2017-02-16 00:00:00'),
	(57,'Sam','Taylor','sam.taylor@example.com','758-756-9311','101 Elm St.','Rabat',40000,'2017-11-05 00:00:00'),
	(58,'Alice','White','alice.white@example.com','930-886-6177','456 Oak St.','Fes',10000,'2016-12-11 00:00:00'),
	(59,'Charlie','Lee','charlie.lee@example.com','445-840-9308','789 Pine St.','Fes',10000,'2016-02-05 00:00:00'),
	(60,'Mallory','Brown','mallory.brown@example.com','929-890-2150','123 Maple St.','Fes',30000,'2019-12-23 00:00:00'),
	(61,'Charlie','Smith','charlie.smith@example.com','492-740-2081','202 Birch St.','Fes',40000,'2015-09-07 00:00:00'),
	(62,'Pat','White','pat.white@example.com','733-612-8805','456 Oak St.','Fes',10000,'2016-01-26 00:00:00'),
	(63,'Mallory','Davis','mallory.davis@example.com','217-659-4672','101 Elm St.','Casablanca',40000,'2015-12-01 00:00:00'),
	(64,'Alice','Smith','alice.smith@example.com','587-336-4343','456 Oak St.','Fes',10000,'2016-09-20 00:00:00'),
	(65,'Pat','Brown','pat.brown@example.com','288-803-1580','123 Maple St.','Casablanca',20000,'2015-05-17 00:00:00'),
	(66,'Bob','Jones','bob.jones@example.com','889-960-9130','101 Elm St.','Fes',10000,'2019-03-02 00:00:00'),
	(67,'Eve','Johnson','eve.johnson@example.com','175-253-2679','789 Pine St.','Rabat',20000,'2017-04-06 00:00:00'),
	(68,'Alice','Lee','alice.lee@example.com','534-185-3744','456 Oak St.','Marrakech',10000,'2016-12-27 00:00:00'),
	(69,'Eve','Taylor','eve.taylor@example.com','384-319-6188','123 Maple St.','Casablanca',30000,'2019-02-09 00:00:00'),
	(70,'Oscar','Brown','oscar.brown@example.com','146-193-7617','202 Birch St.','Fes',20000,'2017-09-16 00:00:00'),
	(71,'Bob','White','bob.white@example.com','531-440-8421','101 Elm St.','Rabat',10000,'2021-08-16 00:00:00'),
	(72,'Bob','Lee','bob.lee@example.com','833-456-6881','456 Oak St.','Marrakech',30000,'2017-07-23 00:00:00'),
	(73,'Alice','Lee','alice.lee@example.com','621-857-3849','456 Oak St.','Casablanca',20000,'2016-02-06 00:00:00'),
	(74,'Bob','Lee','bob.lee@example.com','279-322-7905','789 Pine St.','Marrakech',30000,'2019-01-06 00:00:00'),
	(75,'Mallory','Smith','mallory.smith@example.com','758-541-5611','789 Pine St.','Rabat',40000,'2016-09-06 00:00:00'),
	(76,'Bob','Johnson','bob.johnson@example.com','115-891-9527','202 Birch St.','Casablanca',40000,'2018-07-20 00:00:00'),
	(77,'Eve','Smith','eve.smith@example.com','858-357-7303','202 Birch St.','Marrakech',20000,'2018-03-28 00:00:00'),
	(78,'Eve','White','eve.white@example.com','574-951-2687','123 Maple St.','Fes',10000,'2021-02-13 00:00:00'),
	(79,'Pat','Smith','pat.smith@example.com','789-774-3427','123 Maple St.','Casablanca',20000,'2018-01-26 00:00:00'),
	(80,'Eve','Jones','eve.jones@example.com','644-790-6732','202 Birch St.','Marrakech',30000,'2015-05-11 00:00:00'),
	(81,'Pat','Johnson','pat.johnson@example.com','367-934-6536','202 Birch St.','Rabat',10000,'2018-04-09 00:00:00'),
	(82,'Eve','Johnson','eve.johnson@example.com','267-941-2066','101 Elm St.','Rabat',40000,'2015-07-02 00:00:00'),
	(83,'Mallory','White','mallory.white@example.com','655-384-5107','789 Pine St.','Casablanca',10000,'2015-12-30 00:00:00'),
	(84,'Sam','Taylor','sam.taylor@example.com','706-401-9945','123 Maple St.','Marrakech',40000,'2015-02-08 00:00:00'),
	(85,'Pat','Jones','pat.jones@example.com','134-826-9967','789 Pine St.','Casablanca',10000,'2021-12-19 00:00:00'),
	(86,'Charlie','Brown','charlie.brown@example.com','704-701-1417','789 Pine St.','Casablanca',10000,'2018-10-04 00:00:00'),
	(87,'Oscar','Smith','oscar.smith@example.com','214-716-4974','202 Birch St.','Marrakech',10000,'2017-07-09 00:00:00'),
	(88,'Alice','Davis','alice.davis@example.com','295-925-8668','101 Elm St.','Marrakech',30000,'2015-01-16 00:00:00'),
	(89,'Eve','Smith','eve.smith@example.com','725-592-1412','456 Oak St.','Fes',30000,'2016-05-07 00:00:00'),
	(90,'Bob','Lee','bob.lee@example.com','475-519-1728','101 Elm St.','Marrakech',20000,'2018-12-20 00:00:00'),
	(91,'Sam','Smith','sam.smith@example.com','376-860-9867','101 Elm St.','Rabat',20000,'2018-02-05 00:00:00'),
	(92,'Eve','Brown','eve.brown@example.com','493-968-3504','789 Pine St.','Casablanca',40000,'2015-11-07 00:00:00'),
	(93,'Bob','Smith','bob.smith@example.com','291-838-2122','101 Elm St.','Casablanca',30000,'2017-01-08 00:00:00'),
	(94,'Oscar','Jones','oscar.jones@example.com','647-195-7806','123 Maple St.','Rabat',40000,'2016-06-29 00:00:00'),
	(95,'Oscar','Jones','oscar.jones@example.com','289-835-4440','789 Pine St.','Marrakech',20000,'2021-09-27 00:00:00'),
	(96,'Oscar','Johnson','oscar.johnson@example.com','794-624-3914','123 Maple St.','Rabat',40000,'2015-09-08 00:00:00'),
	(97,'Bob','White','bob.white@example.com','972-897-9787','456 Oak St.','Rabat',20000,'2017-01-28 00:00:00'),
	(98,'Eve','Taylor','eve.taylor@example.com','979-828-2365','789 Pine St.','Fes',30000,'2019-12-10 00:00:00'),
	(99,'Oscar','Davis','oscar.davis@example.com','496-798-8186','456 Oak St.','Rabat',10000,'2018-07-21 00:00:00'),
	(100,'Mallory','Lee','mallory.lee@example.com','276-711-1395','789 Pine St.','Casablanca',30000,'2019-06-20 00:00:00'),
	(101,'Pat','Smith','pat.smith@example.com','544-332-9082','202 Birch St.','Rabat',40000,'2020-03-29 00:00:00'),
	(102,'Bob','Smith','bob.smith@example.com','175-364-3502','101 Elm St.','Casablanca',40000,'2017-03-24 00:00:00'),
	(103,'Bob','Brown','bob.brown@example.com','895-817-3782','202 Birch St.','Casablanca',30000,'2015-01-29 00:00:00'),
	(104,'Eve','White','eve.white@example.com','483-663-5946','456 Oak St.','Casablanca',30000,'2017-08-15 00:00:00'),
	(105,'Bob','Jones','bob.jones@example.com','605-466-9335','101 Elm St.','Marrakech',20000,'2020-07-25 00:00:00'),
	(106,'Bob','Davis','bob.davis@example.com','984-168-8266','789 Pine St.','Fes',40000,'2016-04-21 00:00:00'),
	(107,'Oscar','Johnson','oscar.johnson@example.com','495-124-6588','101 Elm St.','Casablanca',40000,'2015-11-14 00:00:00'),
	(108,'Eve','Jones','eve.jones@example.com','583-664-2167','123 Maple St.','Casablanca',30000,'2015-09-02 00:00:00'),
	(109,'Oscar','Lee','oscar.lee@example.com','668-138-3156','101 Elm St.','Marrakech',10000,'2017-01-17 00:00:00'),
	(110,'Pat','White','pat.white@example.com','792-141-6305','123 Maple St.','Casablanca',40000,'2016-11-27 00:00:00'),
	(111,'Sam','Lee','sam.lee@example.com','497-322-5729','101 Elm St.','Rabat',10000,'2015-09-29 00:00:00'),
	(112,'Pat','Taylor','pat.taylor@example.com','232-262-6334','123 Maple St.','Rabat',30000,'2019-11-07 00:00:00'),
	(113,'Sam','Johnson','sam.johnson@example.com','832-334-9010','456 Oak St.','Fes',30000,'2018-06-16 00:00:00'),
	(114,'Oscar','Taylor','oscar.taylor@example.com','757-850-7731','202 Birch St.','Casablanca',20000,'2021-08-21 00:00:00'),
	(115,'Pat','Brown','pat.brown@example.com','108-173-1953','789 Pine St.','Marrakech',40000,'2015-09-23 00:00:00'),
	(116,'Eve','Lee','eve.lee@example.com','591-352-2542','101 Elm St.','Rabat',10000,'2017-07-09 00:00:00'),
	(117,'Alice','Brown','alice.brown@example.com','273-752-2191','202 Birch St.','Marrakech',20000,'2015-12-06 00:00:00'),
	(118,'Oscar','Smith','oscar.smith@example.com','269-492-7938','789 Pine St.','Marrakech',40000,'2016-01-24 00:00:00'),
	(119,'Sam','Taylor','sam.taylor@example.com','733-293-2540','789 Pine St.','Rabat',20000,'2020-08-12 00:00:00'),
	(120,'Mallory','White','mallory.white@example.com','128-264-6541','123 Maple St.','Marrakech',30000,'2018-03-11 00:00:00'),
	(121,'Sam','Lee','sam.lee@example.com','438-747-2365','456 Oak St.','Rabat',40000,'2016-01-11 00:00:00'),
	(122,'Mallory','Davis','mallory.davis@example.com','599-756-9702','456 Oak St.','Marrakech',20000,'2020-07-26 00:00:00'),
	(123,'Bob','Johnson','bob.johnson@example.com','426-316-2324','202 Birch St.','Rabat',20000,'2021-06-29 00:00:00'),
	(124,'Pat','Jones','pat.jones@example.com','231-903-4141','456 Oak St.','Casablanca',10000,'2015-05-26 00:00:00'),
	(125,'Mallory','White','mallory.white@example.com','351-514-2810','101 Elm St.','Fes',20000,'2020-06-04 00:00:00'),
	(126,'Sam','White','sam.white@example.com','544-975-6301','456 Oak St.','Rabat',40000,'2015-10-20 00:00:00'),
	(127,'Bob','Brown','bob.brown@example.com','266-190-9905','202 Birch St.','Rabat',40000,'2016-03-07 00:00:00'),
	(128,'Alice','Taylor','alice.taylor@example.com','957-630-5268','456 Oak St.','Fes',10000,'2016-12-05 00:00:00'),
	(129,'Eve','Lee','eve.lee@example.com','752-853-4709','101 Elm St.','Rabat',40000,'2020-06-21 00:00:00'),
	(130,'Eve','Lee','eve.lee@example.com','157-759-7619','123 Maple St.','Rabat',30000,'2016-02-03 00:00:00'),
	(131,'Eve','Smith','eve.smith@example.com','555-928-4072','202 Birch St.','Marrakech',40000,'2017-08-21 00:00:00'),
	(132,'Mallory','Smith','mallory.smith@example.com','486-447-1504','123 Maple St.','Fes',40000,'2021-02-12 00:00:00'),
	(133,'Alice','Johnson','alice.johnson@example.com','290-607-8576','123 Maple St.','Casablanca',20000,'2020-08-03 00:00:00'),
	(134,'Mallory','Brown','mallory.brown@example.com','923-216-1133','123 Maple St.','Rabat',20000,'2020-01-03 00:00:00'),
	(135,'Pat','White','pat.white@example.com','157-655-7316','789 Pine St.','Fes',40000,'2020-10-09 00:00:00'),
	(136,'Mallory','Lee','mallory.lee@example.com','928-914-5175','789 Pine St.','Marrakech',10000,'2017-07-27 00:00:00'),
	(137,'Alice','Davis','alice.davis@example.com','985-312-6348','123 Maple St.','Casablanca',20000,'2016-12-10 00:00:00'),
	(138,'Alice','Brown','alice.brown@example.com','775-326-7190','202 Birch St.','Fes',10000,'2017-03-17 00:00:00'),
	(139,'Pat','Johnson','pat.johnson@example.com','332-404-6645','101 Elm St.','Casablanca',40000,'2019-01-03 00:00:00'),
	(140,'Alice','Johnson','alice.johnson@example.com','242-514-4584','101 Elm St.','Casablanca',40000,'2018-08-18 00:00:00'),
	(141,'Sam','Brown','sam.brown@example.com','472-665-9053','456 Oak St.','Casablanca',30000,'2015-01-11 00:00:00'),
	(142,'Alice','Johnson','alice.johnson@example.com','358-755-9662','202 Birch St.','Rabat',20000,'2017-12-21 00:00:00'),
	(143,'Eve','Brown','eve.brown@example.com','111-429-6063','789 Pine St.','Rabat',40000,'2020-02-12 00:00:00'),
	(144,'Sam','Jones','sam.jones@example.com','457-507-1667','123 Maple St.','Marrakech',30000,'2021-03-23 00:00:00'),
	(145,'Sam','Brown','sam.brown@example.com','472-107-7819','456 Oak St.','Marrakech',20000,'2017-02-10 00:00:00'),
	(146,'Pat','Taylor','pat.taylor@example.com','189-747-3745','101 Elm St.','Fes',40000,'2019-05-14 00:00:00'),
	(147,'Charlie','Brown','charlie.brown@example.com','415-277-1539','789 Pine St.','Marrakech',40000,'2019-05-27 00:00:00'),
	(148,'Charlie','Johnson','charlie.johnson@example.com','831-968-5835','789 Pine St.','Casablanca',20000,'2018-08-26 00:00:00'),
	(149,'Alice','Lee','alice.lee@example.com','803-601-8102','123 Maple St.','Casablanca',20000,'2017-06-03 00:00:00'),
	(150,'Sam','Taylor','sam.taylor@example.com','244-300-7132','101 Elm St.','Rabat',20000,'2018-10-21 00:00:00'),
	(151,'Charlie','Johnson','charlie.johnson@example.com','823-560-3779','202 Birch St.','Casablanca',40000,'2015-08-14 00:00:00'),
	(152,'Charlie','Smith','charlie.smith@example.com','851-657-8714','789 Pine St.','Fes',40000,'2017-04-04 00:00:00'),
	(153,'Alice','Smith','alice.smith@example.com','352-489-6713','123 Maple St.','Casablanca',30000,'2021-03-15 00:00:00'),
	(154,'Charlie','Lee','charlie.lee@example.com','982-355-5804','202 Birch St.','Casablanca',10000,'2017-07-25 00:00:00'),
	(155,'Mallory','Lee','mallory.lee@example.com','914-549-1009','101 Elm St.','Fes',20000,'2021-12-28 00:00:00'),
	(156,'Bob','Taylor','bob.taylor@example.com','923-897-8409','789 Pine St.','Marrakech',40000,'2021-04-25 00:00:00'),
	(157,'Pat','Jones','pat.jones@example.com','350-976-6124','202 Birch St.','Marrakech',40000,'2020-03-26 00:00:00'),
	(158,'Bob','Lee','bob.lee@example.com','218-900-3193','202 Birch St.','Fes',20000,'2019-12-02 00:00:00'),
	(159,'Alice','Smith','alice.smith@example.com','323-338-8449','202 Birch St.','Rabat',10000,'2015-02-23 00:00:00'),
	(160,'Eve','Brown','eve.brown@example.com','162-316-4925','789 Pine St.','Casablanca',20000,'2016-12-27 00:00:00'),
	(161,'Pat','Johnson','pat.johnson@example.com','926-894-5784','789 Pine St.','Fes',10000,'2019-03-25 00:00:00'),
	(162,'Alice','Smith','alice.smith@example.com','560-709-8266','456 Oak St.','Casablanca',40000,'2017-11-09 00:00:00'),
	(163,'Sam','Smith','sam.smith@example.com','610-484-1404','101 Elm St.','Rabat',10000,'2020-03-28 00:00:00'),
	(164,'Eve','Jones','eve.jones@example.com','922-617-3000','123 Maple St.','Casablanca',30000,'2019-11-12 00:00:00'),
	(165,'Bob','Taylor','bob.taylor@example.com','808-962-6989','202 Birch St.','Fes',40000,'2019-05-16 00:00:00'),
	(166,'Alice','Taylor','alice.taylor@example.com','870-536-8190','456 Oak St.','Casablanca',30000,'2020-03-29 00:00:00'),
	(167,'Sam','White','sam.white@example.com','664-776-5809','123 Maple St.','Marrakech',20000,'2021-10-02 00:00:00'),
	(168,'Pat','Jones','pat.jones@example.com','557-182-8245','456 Oak St.','Rabat',20000,'2017-04-29 00:00:00'),
	(169,'Pat','Brown','pat.brown@example.com','556-977-3048','789 Pine St.','Rabat',20000,'2020-10-10 00:00:00'),
	(170,'Oscar','Taylor','oscar.taylor@example.com','150-784-1716','202 Birch St.','Rabat',10000,'2021-03-13 00:00:00'),
	(171,'Sam','Johnson','sam.johnson@example.com','871-545-5544','123 Maple St.','Fes',40000,'2015-01-03 00:00:00'),
	(172,'Mallory','Lee','mallory.lee@example.com','980-587-4419','123 Maple St.','Rabat',20000,'2015-06-09 00:00:00'),
	(173,'Charlie','Jones','charlie.jones@example.com','194-171-1249','123 Maple St.','Marrakech',20000,'2017-02-19 00:00:00'),
	(174,'Eve','Lee','eve.lee@example.com','773-537-1770','123 Maple St.','Fes',40000,'2017-06-11 00:00:00'),
	(175,'Sam','Smith','sam.smith@example.com','990-405-5363','123 Maple St.','Marrakech',20000,'2020-07-23 00:00:00'),
	(176,'Oscar','Johnson','oscar.johnson@example.com','153-335-9580','456 Oak St.','Casablanca',30000,'2021-07-04 00:00:00'),
	(177,'Charlie','Johnson','charlie.johnson@example.com','833-862-7544','202 Birch St.','Casablanca',40000,'2016-08-02 00:00:00'),
	(178,'Charlie','Smith','charlie.smith@example.com','723-866-4374','789 Pine St.','Casablanca',40000,'2020-04-17 00:00:00'),
	(179,'Alice','Jones','alice.jones@example.com','306-328-7996','789 Pine St.','Casablanca',40000,'2018-10-12 00:00:00'),
	(180,'Charlie','Smith','charlie.smith@example.com','677-174-5530','789 Pine St.','Marrakech',30000,'2018-07-14 00:00:00'),
	(181,'Mallory','Lee','mallory.lee@example.com','202-521-7881','789 Pine St.','Fes',40000,'2019-06-29 00:00:00'),
	(182,'Pat','White','pat.white@example.com','905-405-7241','456 Oak St.','Fes',30000,'2017-08-09 00:00:00'),
	(183,'Oscar','Johnson','oscar.johnson@example.com','949-897-8002','101 Elm St.','Rabat',40000,'2017-09-14 00:00:00'),
	(184,'Charlie','Davis','charlie.davis@example.com','534-546-2331','202 Birch St.','Marrakech',10000,'2018-05-03 00:00:00'),
	(185,'Alice','Davis','alice.davis@example.com','348-265-8648','123 Maple St.','Casablanca',20000,'2017-07-09 00:00:00'),
	(186,'Mallory','Lee','mallory.lee@example.com','434-641-5854','101 Elm St.','Marrakech',10000,'2018-09-17 00:00:00'),
	(187,'Bob','Brown','bob.brown@example.com','205-662-3180','789 Pine St.','Rabat',20000,'2015-06-19 00:00:00'),
	(188,'Pat','Taylor','pat.taylor@example.com','896-237-7327','101 Elm St.','Rabat',30000,'2016-06-04 00:00:00'),
	(189,'Pat','Smith','pat.smith@example.com','500-429-3832','202 Birch St.','Marrakech',10000,'2019-01-26 00:00:00'),
	(190,'Oscar','Smith','oscar.smith@example.com','607-951-5164','123 Maple St.','Marrakech',40000,'2015-02-09 00:00:00'),
	(191,'Pat','Brown','pat.brown@example.com','645-873-6569','123 Maple St.','Marrakech',20000,'2019-04-10 00:00:00'),
	(192,'Charlie','Brown','charlie.brown@example.com','304-225-4818','202 Birch St.','Fes',20000,'2018-11-19 00:00:00'),
	(193,'Alice','Lee','alice.lee@example.com','142-851-2906','202 Birch St.','Casablanca',10000,'2017-08-12 00:00:00'),
	(194,'Pat','Lee','pat.lee@example.com','210-860-8830','789 Pine St.','Marrakech',30000,'2017-09-10 00:00:00'),
	(195,'Pat','Brown','pat.brown@example.com','282-947-7238','123 Maple St.','Marrakech',10000,'2017-09-01 00:00:00'),
	(196,'Bob','Johnson','bob.johnson@example.com','473-619-9472','101 Elm St.','Marrakech',30000,'2015-02-07 00:00:00'),
	(197,'Bob','Lee','bob.lee@example.com','294-963-4266','456 Oak St.','Rabat',30000,'2021-07-03 00:00:00'),
	(198,'Eve','White','eve.white@example.com','766-192-1671','456 Oak St.','Rabat',20000,'2018-06-28 00:00:00'),
	(199,'Mallory','Lee','mallory.lee@example.com','160-733-8570','202 Birch St.','Fes',10000,'2018-04-14 00:00:00'),
	(200,'Charlie','Smith','charlie.smith@example.com','888-104-6585','789 Pine St.','Casablanca',10000,'2019-06-14 00:00:00');
  
  
  INSERT INTO `products` VALUES (1001,'Widget A','Widgets',100.0,10),
	(1002,'Widget B','Widgets',150.0,0),
	(1003,'Widget C','Gadgets',120.0,5),
	(1004,'Widget D','Gadgets',90.0,0),
	(1005,'Widget E','Tools',110.0,3);

  -- --------------------------------------------------------------------
  
-- 1 . Identify and Handle Duplicates
-- Problem: Duplicate entries might exist for customers or orders, leading to inaccurate customer counts and order data.

-- Identify duplicate customers by name and email
SELECT FirstName, LastName, Email, COUNT(*)
FROM e_customers
GROUP BY FirstName, LastName, Email
HAVING COUNT(*) > 1;

-- Remove duplicates based on CustomerID, keeping the earliest SignupDate

-- Temporarily disable foreign key checks
SET FOREIGN_KEY_CHECKS = 0;

-- Step 1: Create a temporary table to store the IDs to keep
CREATE TEMPORARY TABLE temp_customers AS
SELECT MIN(CustomerID) AS CustomerID
FROM e_customers
GROUP BY FirstName, LastName, Email;

-- Step 2: Delete from the original table where CustomerID is not in the temporary table
DELETE FROM e_customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM temp_customers);

-- Step 3: Drop the temporary table (optional, as it will disappear after session ends)
DROP TEMPORARY TABLE temp_customers;
-- anable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;


-- 2 Standardize Inconsistent Formats
-- Problem: Fields like Phone, ZipCode, or SignupDate may have inconsistent formats.

-- Phone Number Standardization: Strip any non-numeric characters.
UPDATE e_customers
SET Phone = REGEXP_REPLACE(Phone, '[^0-9]', '');
-- Date Format Consistency: Ensure SignupDate is in YYYY-MM-DD.
UPDATE e_customers
SET SignupDate = STR_TO_DATE(SignupDate, '%Y-%m-%d');

-- 3. Handle Missing or Null Values
-- Problem: Key columns like Email, Phone, ZipCode, and TotalAmount might have NULL or empty values.

-- Calculate TotalAmount for Orders with Missing Values:
UPDATE e_orders AS o
JOIN products AS p ON o.ProductID = p.ProductID
SET o.TotalAmount = o.Quantity * p.Price
WHERE o.TotalAmount IS NULL;

-- 4 Check Referential Integrity
-- Problem: Some Order entries may reference CustomerID or ProductID values that don’t exist in Customers or Products tables.
-- Find orders with invalid CustomerIDs
SELECT OrderID
FROM e_orders
WHERE CustomerID NOT IN (SELECT CustomerID FROM e_customers);

-- Optionally delete these orders
DELETE FROM e_orders
WHERE CustomerID NOT IN (SELECT CustomerID FROM e_customers);

-- 5. Fix Inconsistent Data in Categorical Fields
-- Problem: OrderStatus may have inconsistent values like "Shipped," "shipped," "Delivered," "delivered," etc.

UPDATE e_orders
SET OrderStatus = 'Shipped'
WHERE LOWER(OrderStatus) = 'shipped';

-- 6. Remove Inactive or Unused Products
-- Problem: There may be products with zero stock and no related orders, cluttering the Products table.

DELETE FROM products
WHERE StockQuantity = 0
  AND ProductID NOT IN (SELECT ProductID FROM e_orders);
  
-- FINAL
-- Count of customers and orders after cleaning
SELECT 
    (SELECT COUNT(*) FROM e_customers) AS TotalCustomers,
    (SELECT COUNT(*) FROM e_orders) AS TotalOrders,
    (SELECT COUNT(*) FROM products WHERE StockQuantity > 0) AS AvailableProducts;