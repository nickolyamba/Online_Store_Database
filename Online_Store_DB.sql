-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: oniddb
-- Generation Time: Jan 19, 2015 at 01:02 AM
-- Server version: 5.1.63
-- PHP Version: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goncharn-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `street1` varchar(255) NOT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `stateID` int(4) DEFAULT NULL,
  `countryID` int(5) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`addressID`),
  UNIQUE KEY `address` (`street1`,`street2`,`city`,`zip`,`stateID`,`countryID`),
  KEY `stateID` (`stateID`),
  KEY `countryID` (`countryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressID`, `street1`, `street2`, `stateID`, `countryID`, `city`, `zip`) VALUES
(65, '1307 Flora DRIVE', '', 66, 32, 'Green', '99875'),
(43, '139 Northcreek Circle', '', NULL, NULL, 'Town', '94589'),
(44, '139 Northcreek Circle', '', NULL, NULL, 'Town', '94598'),
(11, '1430 Berkshire Circle', NULL, 43, 1, 'Knoxville', '37917'),
(59, '15 One Shields Ave', '', 6, 1, 'Saratov', '12365'),
(60, '1520 Orange Ave', 'Room 6', 6, 1, 'Colorado', '92198'),
(7, '1571 Medical Center Drive', NULL, 6, 1, 'St Armands Key', '34236'),
(6, '1694 Austin Avenue', 'Apt. 264', 6, 1, 'Omega', '31775'),
(13, '1806 Emily Renzelli Boulevard', 'Apt. 378', 6, 1, 'Seaside', '93955'),
(4, '1918 Dancing Dove Lane', 'Apt. 404', 6, 1, 'Elmsford', '10523'),
(12, '2035 Wolf Pen Road', NULL, 6, 1, 'Palo Alto', '94306'),
(68, '2250 Patterson st', '', 43, 1, 'Eugene', '97405'),
(66, '24522 Christina Court', '', 6, 1, 'boston', '90001'),
(67, '24542 Christina Court', '', 6, 1, 'boston', '90001'),
(8, '2575 Dawson Drive', NULL, NULL, 43, 'Conway', '72032'),
(2, '2631 Armory Road', NULL, 4, 1, 'Wilmington', '28401'),
(29, '2799 Bubby Drive', NULL, 51, 1, 'Austin', '78701'),
(17, '3071 Hudson Street', NULL, 6, 1, 'Secaucus', '07094'),
(3, '3678 Simpson Avenue', NULL, 4, 1, 'Harrisburg', '17101'),
(9, '4768 Amethyst Drive', NULL, 6, 1, 'Lansing', '48933'),
(5, '48 Shell Road', 'Building 3', 6, 1, 'BELLS BEACH', '3228'),
(10, '4934 Keyser Ridge Road', 'Building 7', 6, 1, 'Elkin', '28621'),
(64, '7438 Ave', '', 6, 1, 'SF', '94578'),
(62, 'Creekside', '', 66, 1, 'City', '94596'),
(61, 'Creekside Drive', '', 6, 1, 'City', '94596'),
(63, 'Creekside Drive', '', 66, 1, 'City', '94596'),
(51, 'One Shields Ave', '', 66, 500, 'Davis', '95616');

-- --------------------------------------------------------

--
-- Table structure for table `billAddr`
--

CREATE TABLE IF NOT EXISTS `billAddr` (
  `billAddrID` int(11) NOT NULL AUTO_INCREMENT,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`billAddrID`),
  KEY `billAddr_ibfk_1` (`addressID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `billAddr`
--

INSERT INTO `billAddr` (`billAddrID`, `addressID`) VALUES
(2, 7),
(1, 17),
(5, 59),
(6, 60),
(7, 61),
(8, 63),
(10, 64),
(12, 65),
(13, 67),
(14, 68);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countryID` int(5) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(50) NOT NULL,
  PRIMARY KEY (`countryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=501 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryID`, `countryName`) VALUES
(1, 'United States'),
(2, 'Andorra'),
(3, 'United Arab Emirates'),
(4, 'Afghanistan'),
(5, 'Antigua and Barbuda'),
(6, 'Anguilla'),
(7, 'Albania'),
(8, 'Armenia'),
(9, 'Angola'),
(10, 'Antarctica'),
(11, 'Argentina'),
(12, 'American Samoa'),
(13, 'Austria'),
(14, 'Australia'),
(15, 'Aruba'),
(16, 'Åland'),
(17, 'Azerbaijan'),
(18, 'Bosnia and Herzegovina'),
(19, 'Barbados'),
(20, 'Bangladesh'),
(21, 'Belgium'),
(22, 'Burkina Faso'),
(23, 'Bulgaria'),
(24, 'Bahrain'),
(25, 'Burundi'),
(26, 'Benin'),
(27, 'Saint Barthélemy'),
(28, 'Bermuda'),
(29, 'Brunei'),
(30, 'Bolivia'),
(31, 'Bonaire'),
(32, 'Brazil'),
(33, 'Bahamas'),
(34, 'Bhutan'),
(35, 'Bouvet Island'),
(36, 'Botswana'),
(37, 'Belarus'),
(38, 'Belize'),
(39, 'Canada'),
(40, 'Cocos [Keeling] Islands'),
(41, 'Democratic Republic of the Congo'),
(42, 'Central African Republic'),
(43, 'Republic of the Congo'),
(44, 'Switzerland'),
(45, 'Ivory Coast'),
(46, 'Cook Islands'),
(47, 'Chile'),
(48, 'Cameroon'),
(49, 'China'),
(50, 'Colombia'),
(51, 'Costa Rica'),
(52, 'Cuba'),
(53, 'Cape Verde'),
(54, 'Curacao'),
(55, 'Christmas Island'),
(56, 'Cyprus'),
(57, 'Czechia'),
(58, 'Germany'),
(59, 'Djibouti'),
(60, 'Denmark'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Algeria'),
(64, 'Ecuador'),
(65, 'Estonia'),
(66, 'Egypt'),
(67, 'Western Sahara'),
(68, 'Eritrea'),
(69, 'Spain'),
(70, 'Ethiopia'),
(71, 'Finland'),
(72, 'Fiji'),
(73, 'Falkland Islands'),
(74, 'Micronesia'),
(75, 'Faroe Islands'),
(76, 'France'),
(77, 'Gabon'),
(78, 'United Kingdom'),
(79, 'Grenada'),
(80, 'Georgia'),
(81, 'French Guiana'),
(82, 'Guernsey'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greenland'),
(86, 'Gambia'),
(87, 'Guinea'),
(88, 'Guadeloupe'),
(89, 'Equatorial Guinea'),
(90, 'Greece'),
(91, 'South Georgia and the South Sandwich Islands'),
(92, 'Guatemala'),
(93, 'Guam'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Hong Kong'),
(97, 'Heard Island and McDonald Islands'),
(98, 'Honduras'),
(99, 'Croatia'),
(100, 'Haiti'),
(101, 'Hungary'),
(102, 'Indonesia'),
(103, 'Ireland'),
(104, 'Israel'),
(105, 'Isle of Man'),
(106, 'India'),
(107, 'British Indian Ocean Territory'),
(108, 'Iraq'),
(109, 'Iran'),
(110, 'Iceland'),
(111, 'Italy'),
(112, 'Jersey'),
(113, 'Jamaica'),
(114, 'Jordan'),
(115, 'Japan'),
(116, 'Kenya'),
(117, 'Kyrgyzstan'),
(118, 'Cambodia'),
(119, 'Kiribati'),
(120, 'Comoros'),
(121, 'Saint Kitts and Nevis'),
(122, 'North Korea'),
(123, 'South Korea'),
(124, 'Kuwait'),
(125, 'Cayman Islands'),
(126, 'Kazakhstan'),
(127, 'Laos'),
(128, 'Lebanon'),
(129, 'Saint Lucia'),
(130, 'Liechtenstein'),
(131, 'Sri Lanka'),
(132, 'Liberia'),
(133, 'Lesotho'),
(134, 'Lithuania'),
(135, 'Luxembourg'),
(136, 'Latvia'),
(137, 'Libya'),
(138, 'Morocco'),
(139, 'Monaco'),
(140, 'Moldova'),
(141, 'Montenegro'),
(142, 'Saint Martin'),
(143, 'Madagascar'),
(144, 'Marshall Islands'),
(145, 'Macedonia'),
(146, 'Mali'),
(147, 'Myanmar [Burma]'),
(148, 'Mongolia'),
(149, 'Macao'),
(150, 'Northern Mariana Islands'),
(151, 'Martinique'),
(152, 'Mauritania'),
(153, 'Montserrat'),
(154, 'Malta'),
(155, 'Mauritius'),
(156, 'Maldives'),
(157, 'Malawi'),
(158, 'Mexico'),
(159, 'Malaysia'),
(160, 'Mozambique'),
(161, 'Namibia'),
(162, 'New Caledonia'),
(163, 'Niger'),
(164, 'Norfolk Island'),
(165, 'Nigeria'),
(166, 'Nicaragua'),
(167, 'Netherlands'),
(168, 'Norway'),
(169, 'Nepal'),
(170, 'Nauru'),
(171, 'Niue'),
(172, 'New Zealand'),
(173, 'Oman'),
(174, 'Panama'),
(175, 'Peru'),
(176, 'French Polynesia'),
(177, 'Papua New Guinea'),
(178, 'Philippines'),
(179, 'Pakistan'),
(180, 'Poland'),
(181, 'Saint Pierre and Miquelon'),
(182, 'Pitcairn Islands'),
(183, 'Puerto Rico'),
(184, 'Palestine'),
(185, 'Portugal'),
(186, 'Palau'),
(187, 'Paraguay'),
(188, 'Qatar'),
(189, 'Réunion'),
(190, 'Romania'),
(191, 'Serbia'),
(192, 'Russia'),
(193, 'Rwanda'),
(194, 'Saudi Arabia'),
(195, 'Solomon Islands'),
(196, 'Seychelles'),
(197, 'Sudan'),
(198, 'Sweden'),
(199, 'Singapore'),
(200, 'Saint Helena'),
(201, 'Slovenia'),
(202, 'Svalbard and Jan Mayen'),
(203, 'Slovakia'),
(204, 'Sierra Leone'),
(205, 'San Marino'),
(206, 'Senegal'),
(207, 'Somalia'),
(208, 'Suriname'),
(209, 'South Sudan'),
(210, 'São Tomé and Príncipe'),
(211, 'El Salvador'),
(212, 'Sint Maarten'),
(213, 'Syria'),
(214, 'Swaziland'),
(215, 'Turks and Caicos Islands'),
(216, 'Chad'),
(217, 'French Southern Territories'),
(218, 'Togo'),
(219, 'Thailand'),
(220, 'Tajikistan'),
(221, 'Tokelau'),
(222, 'East Timor'),
(223, 'Turkmenistan'),
(224, 'Tunisia'),
(225, 'Tonga'),
(226, 'Turkey'),
(227, 'Trinidad and Tobago'),
(228, 'Tuvalu'),
(229, 'Taiwan'),
(230, 'Tanzania'),
(231, 'Ukraine'),
(232, 'Uganda'),
(233, 'U.S. Minor Outlying Islands'),
(234, 'Uruguay'),
(235, 'Uzbekistan'),
(236, 'Vatican City'),
(237, 'Saint Vincent and the Grenadines'),
(238, 'Venezuela'),
(239, 'British Virgin Islands'),
(240, 'U.S. Virgin Islands'),
(241, 'Vietnam'),
(242, 'Vanuatu'),
(243, 'Wallis and Futuna'),
(244, 'Samoa'),
(245, 'Kosovo'),
(246, 'Yemen'),
(247, 'Mayotte'),
(248, 'South Africa'),
(249, 'Zambia'),
(250, 'Zimbabwe'),
(252, 'Andorra'),
(253, 'United Arab Emirates'),
(254, 'Afghanistan'),
(255, 'Antigua and Barbuda'),
(256, 'Anguilla'),
(257, 'Albania'),
(258, 'Armenia'),
(259, 'Angola'),
(260, 'Antarctica'),
(261, 'Argentina'),
(262, 'American Samoa'),
(263, 'Austria'),
(264, 'Australia'),
(265, 'Aruba'),
(266, 'Åland'),
(267, 'Azerbaijan'),
(268, 'Bosnia and Herzegovina'),
(269, 'Barbados'),
(270, 'Bangladesh'),
(271, 'Belgium'),
(272, 'Burkina Faso'),
(273, 'Bulgaria'),
(274, 'Bahrain'),
(275, 'Burundi'),
(276, 'Benin'),
(277, 'Saint Barthélemy'),
(278, 'Bermuda'),
(279, 'Brunei'),
(280, 'Bolivia'),
(281, 'Bonaire'),
(282, 'Brazil'),
(283, 'Bahamas'),
(284, 'Bhutan'),
(285, 'Bouvet Island'),
(286, 'Botswana'),
(287, 'Belarus'),
(288, 'Belize'),
(289, 'Canada'),
(290, 'Cocos [Keeling] Islands'),
(291, 'Democratic Republic of the Congo'),
(292, 'Central African Republic'),
(293, 'Republic of the Congo'),
(294, 'Switzerland'),
(295, 'Ivory Coast'),
(296, 'Cook Islands'),
(297, 'Chile'),
(298, 'Cameroon'),
(299, 'China'),
(300, 'Colombia'),
(301, 'Costa Rica'),
(302, 'Cuba'),
(303, 'Cape Verde'),
(304, 'Curacao'),
(305, 'Christmas Island'),
(306, 'Cyprus'),
(307, 'Czechia'),
(308, 'Germany'),
(309, 'Djibouti'),
(310, 'Denmark'),
(311, 'Dominica'),
(312, 'Dominican Republic'),
(313, 'Algeria'),
(314, 'Ecuador'),
(315, 'Estonia'),
(316, 'Egypt'),
(317, 'Western Sahara'),
(318, 'Eritrea'),
(319, 'Spain'),
(320, 'Ethiopia'),
(321, 'Finland'),
(322, 'Fiji'),
(323, 'Falkland Islands'),
(324, 'Micronesia'),
(325, 'Faroe Islands'),
(326, 'France'),
(327, 'Gabon'),
(328, 'United Kingdom'),
(329, 'Grenada'),
(330, 'Georgia'),
(331, 'French Guiana'),
(332, 'Guernsey'),
(333, 'Ghana'),
(334, 'Gibraltar'),
(335, 'Greenland'),
(336, 'Gambia'),
(337, 'Guinea'),
(338, 'Guadeloupe'),
(339, 'Equatorial Guinea'),
(340, 'Greece'),
(341, 'South Georgia and the South Sandwich Islands'),
(342, 'Guatemala'),
(343, 'Guam'),
(344, 'Guinea-Bissau'),
(345, 'Guyana'),
(346, 'Hong Kong'),
(347, 'Heard Island and McDonald Islands'),
(348, 'Honduras'),
(349, 'Croatia'),
(350, 'Haiti'),
(351, 'Hungary'),
(352, 'Indonesia'),
(353, 'Ireland'),
(354, 'Israel'),
(355, 'Isle of Man'),
(356, 'India'),
(357, 'British Indian Ocean Territory'),
(358, 'Iraq'),
(359, 'Iran'),
(360, 'Iceland'),
(361, 'Italy'),
(362, 'Jersey'),
(363, 'Jamaica'),
(364, 'Jordan'),
(365, 'Japan'),
(366, 'Kenya'),
(367, 'Kyrgyzstan'),
(368, 'Cambodia'),
(369, 'Kiribati'),
(370, 'Comoros'),
(371, 'Saint Kitts and Nevis'),
(372, 'North Korea'),
(373, 'South Korea'),
(374, 'Kuwait'),
(375, 'Cayman Islands'),
(376, 'Kazakhstan'),
(377, 'Laos'),
(378, 'Lebanon'),
(379, 'Saint Lucia'),
(380, 'Liechtenstein'),
(381, 'Sri Lanka'),
(382, 'Liberia'),
(383, 'Lesotho'),
(384, 'Lithuania'),
(385, 'Luxembourg'),
(386, 'Latvia'),
(387, 'Libya'),
(388, 'Morocco'),
(389, 'Monaco'),
(390, 'Moldova'),
(391, 'Montenegro'),
(392, 'Saint Martin'),
(393, 'Madagascar'),
(394, 'Marshall Islands'),
(395, 'Macedonia'),
(396, 'Mali'),
(397, 'Myanmar [Burma]'),
(398, 'Mongolia'),
(399, 'Macao'),
(400, 'Northern Mariana Islands'),
(401, 'Martinique'),
(402, 'Mauritania'),
(403, 'Montserrat'),
(404, 'Malta'),
(405, 'Mauritius'),
(406, 'Maldives'),
(407, 'Malawi'),
(408, 'Mexico'),
(409, 'Malaysia'),
(410, 'Mozambique'),
(411, 'Namibia'),
(412, 'New Caledonia'),
(413, 'Niger'),
(414, 'Norfolk Island'),
(415, 'Nigeria'),
(416, 'Nicaragua'),
(417, 'Netherlands'),
(418, 'Norway'),
(419, 'Nepal'),
(420, 'Nauru'),
(421, 'Niue'),
(422, 'New Zealand'),
(423, 'Oman'),
(424, 'Panama'),
(425, 'Peru'),
(426, 'French Polynesia'),
(427, 'Papua New Guinea'),
(428, 'Philippines'),
(429, 'Pakistan'),
(430, 'Poland'),
(431, 'Saint Pierre and Miquelon'),
(432, 'Pitcairn Islands'),
(433, 'Puerto Rico'),
(434, 'Palestine'),
(435, 'Portugal'),
(436, 'Palau'),
(437, 'Paraguay'),
(438, 'Qatar'),
(439, 'Réunion'),
(440, 'Romania'),
(441, 'Serbia'),
(442, 'Russia'),
(443, 'Rwanda'),
(444, 'Saudi Arabia'),
(445, 'Solomon Islands'),
(446, 'Seychelles'),
(447, 'Sudan'),
(448, 'Sweden'),
(449, 'Singapore'),
(450, 'Saint Helena'),
(451, 'Slovenia'),
(452, 'Svalbard and Jan Mayen'),
(453, 'Slovakia'),
(454, 'Sierra Leone'),
(455, 'San Marino'),
(456, 'Senegal'),
(457, 'Somalia'),
(458, 'Suriname'),
(459, 'South Sudan'),
(460, 'São Tomé and Príncipe'),
(461, 'El Salvador'),
(462, 'Sint Maarten'),
(463, 'Syria'),
(464, 'Swaziland'),
(465, 'Turks and Caicos Islands'),
(466, 'Chad'),
(467, 'French Southern Territories'),
(468, 'Togo'),
(469, 'Thailand'),
(470, 'Tajikistan'),
(471, 'Tokelau'),
(472, 'East Timor'),
(473, 'Turkmenistan'),
(474, 'Tunisia'),
(475, 'Tonga'),
(476, 'Turkey'),
(477, 'Trinidad and Tobago'),
(478, 'Tuvalu'),
(479, 'Taiwan'),
(480, 'Tanzania'),
(481, 'Ukraine'),
(482, 'Uganda'),
(483, 'U.S. Minor Outlying Islands'),
(484, 'Uruguay'),
(485, 'Uzbekistan'),
(486, 'Vatican City'),
(487, 'Saint Vincent and the Grenadines'),
(488, 'Venezuela'),
(489, 'British Virgin Islands'),
(490, 'U.S. Virgin Islands'),
(491, 'Vietnam'),
(492, 'Vanuatu'),
(493, 'Wallis and Futuna'),
(494, 'Samoa'),
(495, 'Kosovo'),
(496, 'Yemen'),
(497, 'Mayotte'),
(498, 'South Africa'),
(499, 'Zambia'),
(500, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `billAddrID` int(11) NOT NULL,
  `shipAddrID` int(11) NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `email` (`email`),
  KEY `customer_ibfk_2` (`shipAddrID`),
  KEY `customer_ibfk_1` (`billAddrID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `userName`, `password`, `phone`, `email`, `billAddrID`, `shipAddrID`) VALUES
(23, 'Sara', 'Crandall', 'Drefoonew', 'oXoohaiPhee2', '504-371-0969', 'qassuzawe-0879@yopmail.com', 1, 1),
(31, 'Carrie', 'White', 'Munplad37', 'goRieng2Toh', '917-424-0014', 'TheImperfect@gmail.com', 2, 4),
(32, 'Nick', 'Bim', 'Munp', 'ieng2Toh', '917-424-0014', 'perfect@gmail.com', 2, 4),
(33, 'Nick', 'White', 'Munplad', 'gRieng2Toh', '917-424-0014', 'imperfect@gmail.com', 2, 4),
(36, 'Django', 'Unchained', 'Voutter', 'yieKaeQuoi0', '806-687-8932', 'someemail@email.com', 8, 11),
(40, 'Tina', 'Rose', 'A123123', 'Username', '5412223333', 'tina@example.com', 14, 17);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customerID` int(11) NOT NULL,
  PRIMARY KEY (`orderID`),
  KEY `order_ibfk_1` (`customerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `orderDate`, `customerID`) VALUES
(2, '2014-06-04 22:54:39', 31),
(3, '2014-06-04 23:13:17', 23),
(10, '2014-06-07 01:37:45', 33),
(12, '2014-06-07 02:15:07', 23),
(13, '2014-06-07 02:53:16', 23);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `cardNum` varchar(255) NOT NULL,
  `paymentType` varchar(255) NOT NULL,
  `expDate` date NOT NULL,
  `customerID` int(11) NOT NULL,
  PRIMARY KEY (`paymentID`),
  UNIQUE KEY `cardNum` (`cardNum`),
  KEY `payment_ibfk_1` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment`
--


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `retailPrice` double(12,2) NOT NULL,
  `wholePrice` double(12,2) NOT NULL,
  `quantStock` int(11) NOT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `productName` (`productName`,`retailPrice`,`wholePrice`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `retailPrice`, `wholePrice`, `quantStock`) VALUES
(1, 'Lab Hold', 150.00, 130.00, 150),
(2, 'Strongzoonix', 15.00, 10.00, 300),
(3, 'Zumlux', 125.00, 95.00, 500),
(4, 'Sol Eco', 300.00, 200.00, 600),
(5, 'K-tip', 680.00, 500.00, 950),
(37, 'Biowax', 25.00, 15.00, 500),
(38, 'Pizza', 30.00, 25.00, 50),
(39, 'Watermelon', 10.00, 5.00, 60),
(40, 'Melon', 10.55, 8.55, 90),
(41, 'Berry', 20.00, 10.00, 149),
(45, 'Juice', 25.00, 30.00, 150);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `productID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `quantOrdered` int(11) NOT NULL,
  PRIMARY KEY (`orderID`,`productID`),
  KEY `productID` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`productID`, `orderID`, `quantOrdered`) VALUES
(2, 2, 15),
(41, 2, 40),
(38, 3, 14),
(40, 10, 15),
(39, 12, 25),
(41, 13, 12);

-- --------------------------------------------------------

--
-- Table structure for table `shipAddr`
--

CREATE TABLE IF NOT EXISTS `shipAddr` (
  `shipAddrID` int(11) NOT NULL AUTO_INCREMENT,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`shipAddrID`),
  KEY `shipAddr_ibfk_1` (`addressID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `shipAddr`
--

INSERT INTO `shipAddr` (`shipAddrID`, `addressID`) VALUES
(4, 2),
(1, 17),
(8, 59),
(9, 60),
(10, 61),
(11, 62),
(13, 64),
(15, 65),
(16, 66),
(17, 68);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `stateID` int(4) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(50) DEFAULT NULL,
  `abbrev` char(2) DEFAULT NULL,
  PRIMARY KEY (`stateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateID`, `stateName`, `abbrev`) VALUES
(1, 'Alaska', 'AK'),
(2, 'Alabama', 'AL'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Columbia', 'DC'),
(11, 'Federated States of Micronesia', 'FM'),
(12, 'Florida', 'FL'),
(13, 'Georgia', 'GA'),
(14, 'Guam', 'GU'),
(15, 'Hawaii', 'HI'),
(16, 'Idaho', 'ID'),
(17, 'Illinois', 'IL'),
(18, 'Indiana', 'IN'),
(19, 'Iowa', 'IA'),
(20, 'Kansas', 'KS'),
(21, 'Kentucky', 'KY'),
(22, 'Louisiana', 'LA'),
(23, 'Maine', 'ME'),
(24, 'Marshall Islands', 'MH'),
(25, 'Maryland', 'MD'),
(26, 'Massachusetts', 'MA'),
(27, 'Michigan', 'MI'),
(28, 'Minnesota', 'MN'),
(29, 'Mississippi', 'MS'),
(30, 'Missouri', 'MO'),
(31, 'Montana', 'MT'),
(32, 'Nebraska', 'NE'),
(33, 'Nevada', 'NV'),
(34, 'New Hampshire', 'NH'),
(35, 'New Jersey', 'NJ'),
(36, 'New Mexico', 'NM'),
(37, 'New York', 'NY'),
(38, 'North Carolina', 'NC'),
(39, 'North Dakota', 'ND'),
(40, 'Northern Mariana Islands', 'MP'),
(41, 'Ohio', 'OH'),
(42, 'Oklahoma', 'OK'),
(43, 'Oregon', 'OR'),
(44, 'Palau', 'PW'),
(45, 'Pennsylvania', 'PA'),
(46, 'Puerto Rico', 'PR'),
(47, 'Rhode Island', 'RI'),
(48, 'South Carolina', 'SC'),
(49, 'South Dakota', 'SD'),
(50, 'Tennessee', 'TN'),
(51, 'Texas', 'TX'),
(52, 'Utah', 'UT'),
(53, 'Vermont', 'VT'),
(54, 'Virgin Islands', 'VI'),
(55, 'Virginia', 'VA'),
(56, 'Washington', 'WA'),
(57, 'West Virginia', 'WV'),
(58, 'Wisconsin', 'WI'),
(59, 'Wyoming', 'WY'),
(60, 'Armed Forces Africa', 'AE'),
(61, 'Armed Forces Americas (except Canada)', 'AA'),
(62, 'Armed Forces Canada', 'AE'),
(63, 'Armed Forces Europe', 'AE'),
(64, 'Armed Forces Middle East', 'AE'),
(65, 'Armed Forces Pacific', 'AP'),
(66, 'NULL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplierID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `supName` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplierID`),
  UNIQUE KEY `supName` (`supName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supName`, `phone`, `website`) VALUES
(1, '3M Co', '1(888)364-3577', 'http://solutions.3m.com/'),
(2, 'AAC Technologies Holdings Inc', '0519-83052018Extension82862', 'http://www.aactechnologies.com/'),
(3, 'ACON Group', '+49-(0)-89-244-118-200', 'http://www.theacongroup.com/en/'),
(4, 'AKM Semiconductor Inc', '+81-6-7636-3133', 'http://www.akm.com/'),
(5, 'Amphenol', '(847)478-5600', 'http://www.amphenol.com/'),
(6, 'Molex Inc', '(408)946-4700', 'http://www.molex.com/'),
(7, 'Santak Holdings Ltd.', '(65)6755-4788', 'http://www.santak.com.sg/');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE IF NOT EXISTS `supplier_product` (
  `productID` int(11) NOT NULL,
  `supplierID` mediumint(9) NOT NULL,
  PRIMARY KEY (`supplierID`,`productID`),
  KEY `productID` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`productID`, `supplierID`) VALUES
(2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`stateID`) REFERENCES `states` (`stateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`countryID`) REFERENCES `countries` (`countryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `billAddr`
--
ALTER TABLE `billAddr`
  ADD CONSTRAINT `billAddr_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`billAddrID`) REFERENCES `billAddr` (`billAddrID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`shipAddrID`) REFERENCES `shipAddr` (`shipAddrID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipAddr`
--
ALTER TABLE `shipAddr`
  ADD CONSTRAINT `shipAddr_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD CONSTRAINT `supplier_product_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplier_product_ibfk_2` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`) ON DELETE CASCADE ON UPDATE CASCADE;
