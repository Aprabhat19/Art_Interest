-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2022 at 08:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_art_gallery_database_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `art_work`
--

CREATE TABLE `art_work` (
  `ART_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_TITLE` varchar(50) NOT NULL,
  `ART_DESCRIPTION` mediumtext DEFAULT NULL,
  `ART_PRICE` int(11) NOT NULL,
  `ART_DATE` date NOT NULL,
  `ART_WIDTH` int(11) NOT NULL,
  `ART_HEIGHT` int(11) NOT NULL,
  `ART_THICKNESS` int(11) NOT NULL,
  `ART_CATEGORY` varchar(20) NOT NULL,
  `ART_MEDIA` varchar(20) NOT NULL,
  `ART_STATUS` varchar(20) NOT NULL,
  `art_stock` int(50) NOT NULL,
  `COMMENT_ID` int(11) DEFAULT NULL,
  `ART_IMAGEPATH` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `art_work`
--

INSERT INTO `art_work` (`ART_ID`, `USER_ID`, `ART_TITLE`, `ART_DESCRIPTION`, `ART_PRICE`, `ART_DATE`, `ART_WIDTH`, `ART_HEIGHT`, `ART_THICKNESS`, `ART_CATEGORY`, `ART_MEDIA`, `ART_STATUS`, `art_stock`, `COMMENT_ID`, `ART_IMAGEPATH`) VALUES
(5, 16, 'Siete', '', 100000, '2014-03-13', 50, 50, 1, 'Photography', 'Gelatin', 'SOLD', 0, NULL, 'large.jpg'),
(6, 13, 'The Shipwreck of Don Juan', 'French painter Eugène Delacroix was inspired to create this painting by Lord Byron\'s poem Don Juan in which survivors of a shipwreck draw lots to decide who must sacrifice his life to feed the others.', 900000, '0000-00-00', 10, 10, 10, 'Painting', 'oil', 'Available', 1, NULL, 'Delacroix-The-Shipwreck-of-Don-Juan-1840-1024x688.jpg'),
(7, 17, 'Rain clouds', 'A set of nine porcelain sculptures\r\nMade by the artist in Western Australia', 100000, '2018-03-15', 10, 10, 10, 'Sculpture', 'Porcelain', 'AVAILABLE', 1, NULL, 'PD266.drysdale.jpg'),
(8, 18, 'Benares', 'This landscape, painted in 1943, he anticipates these travels and depicts the harmonious synergy of pilgrims on the banks and the architectural silhouettes of the temples and monuments. Within this composition, the landscape metamorphoses into a harmonious, organic, seamless entity with its myriad of cadences and surfaces which dissolve into one another. The play of light, which is effortlessly illustrated in a soft diffusive style, acts as a lyrical signifier of the mood and movement of the place.', 100000, '1943-03-17', 10, 10, 10, 'Painting', 'Watercolor', 'AVAILABLE', 1, NULL, 'k.jpg'),
(9, 13, 'Faust and Mephistopheles', 'He makes a bargain with Faust: Mephistopheles will serve Faust with his magic powers for a set number of years, but at the end of the term, the Devil will claim Faust\'s soul, and Faust will be eternally enslaved. During the term of the bargain, Faust makes use of Mephistopheles in various ways.', 100000, '1817-03-13', 10, 10, 10, 'Painting', 'Oil', 'SOLD', 0, NULL, 'Delacroix_-_Faust_and_Mephistopheles,_1827-8.jpeg'),
(10, 13, 'Jacob Wrestling with the Angel ', 'Its technique expresses the energetic fervor of an early draft and bridges the distinction between drawing and painting.\" This preparatory sketch lays out the composition for one of Delacroix\'s most important and influential murals, Jacob Wrestling with the Angel, in the Church of Saint-Sulpice in Paris.', 1000000, '1839-03-06', 10, 10, 10, 'Painting', 'oil', 'AVAILABLE', 1, NULL, 'Jacob_Angel_Delacroix.jpeg'),
(11, 16, 'Tumbonas Las Termas', NULL, 100000, '2019-06-07', 10, 10, 10, 'Photography', 'Gelatin', 'SOLD', 0, NULL, 'l.jpg'),
(12, 17, ' Rainbow Ledge Breakaway', 'Drysdale’s technique is to add layers of glaze to a vessel, then making linear incisions through a masking resist to carve delicate patterns in the surface. The lines are then brushed out and filled with color. The inside of the vessels are colored by swirling colored glaze inside it until a perfectly consistent coating is produced.The desired effect cannot be achieved by spraying, which would leave the surface powdery and dry. Only small areas can be worked on at a time, meaning a meaning a single vessel can take days to create.', 200000, '2015-07-10', 10, 10, 10, 'Sculpture', 'porcelain', 'SOLD', 0, NULL, 'Image-6.jpg'),
(13, 18, 'La Mer', '', 200000, '1968-05-10', 10, 10, 10, 'Painting', 'Acrylic', 'SOLD', 0, NULL, 'sayed-haider-raza-la-mer.jpeg'),
(14, 16, 'Alma', NULL, 350000, '2015-01-13', 10, 30, 10, 'Photography', 'Gelatin', 'Available', 1, NULL, 'sl.jpg');

--
-- Triggers `art_work`
--
DELIMITER $$
CREATE TRIGGER `DELETELOG` AFTER DELETE ON `art_work` FOR EACH ROW INSERT INTO logs VALUES(null,OLD.USER_id,'deleted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATELOG` AFTER UPDATE ON `art_work` FOR EACH ROW INSERT INTO logs VALUES(null,NEW.USER_id,'updated',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertlog` AFTER INSERT ON `art_work` FOR EACH ROW INSERT INTO logs VALUES(null,NEW.USER_id,'inserted',NOW())
$$
DELIMITER ;
-- --------------------------------------------------------

--
-- Table structure for table `buy_transaction`
--

CREATE TABLE `buy_transaction` (
  `TRANSACTION_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `Courier_Name` varchar(50) NOT NULL,
  `Courier_Contact` bigint(20) NOT NULL,
  `ordered_date` date NOT NULL,
  `DELIVERY_DATE` date DEFAULT NULL,
  `ordered_no` int(10) NOT NULL,
  `total_price` int(50) NOT NULL,
  `shipping_area` varchar(50) NOT NULL,
  `shipping_city` varchar(50) NOT NULL,
  `shipping_state` varchar(50) NOT NULL,
  `shipping_pincode` varchar(10) NOT NULL,
  `shipping_street` varchar(50) NOT NULL,
  `shipping_house_num` varchar(50) NOT NULL,
  `SHIPPING_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy_transaction`
--

INSERT INTO `buy_transaction` (`TRANSACTION_ID`, `USER_ID`, `ART_ID`, `Courier_Name`, `Courier_Contact`, `ordered_date`, `DELIVERY_DATE`, `ordered_no`, `total_price`, `shipping_area`, `shipping_city`, `shipping_state`, `shipping_pincode`, `shipping_street`, `shipping_house_num`, `SHIPPING_STATUS`) VALUES
(14, 14, 9, 'Austin', 1111, '2021-03-09', '2021-03-26', 1, 100000, 'nn', 'yuy', 'yy', 'yyui', 'uyi', 'yiuiy', 'Delivered'),
(15, 14, 13, ' Austin earl', 9475293353, '2021-03-10', '2021-03-31', 1, 200000, 'Lebron', 'Castilla', 'Spain', '7104', 'San palo Street', '217', 'Delivered'),
(16, 14, 12, 'Austin Earl', 9475293353, '2021-04-01', '2021-05-13', 1, 200000, 'mindanao', 'Castilla', 'Spain', '7104', 'San palo Street', '217', 'Delivered'),
(17, 15, 5, 'Dyron', 0, '2021-08-04', '2021-10-01', 1, 100000, 'lebron', 'JKB', 'JKB', 'JKB', 'bulcivlBUJC', 'nsdljvn', 'Delivered'),
(18, 14, 11, 'Columbus', 9475293353, '2020-03-11', '2021-04-01', 1, 100000, 'Samuel port', 'sk', 'Barcelona', '', 'kb', 'ji', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `COMMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `COMMENT_DATE` date NOT NULL,
  `COMMENT_CONTENT` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`COMMENT_ID`, `USER_ID`, `ART_ID`, `COMMENT_DATE`, `COMMENT_CONTENT`) VALUES
(1, 14, 13, '2008-03-19', 'aaaaaaa'),
(2, 15, 8, '2021-09-10', 'nice\r\n');

-- --------------------------------------------------------
--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ART_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ART_ID`, `USER_ID`, `action`, `date`) VALUES
(1, 5, 'inserted', '2022-02-01 12:08:03'),
(2, 16, 'updated', '2022-02-01 12:28:44'),
(3, 5, 'deleted', '2022-02-01 12:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RATING_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ART_ID` int(11) NOT NULL,
  `RATING_VALUE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`RATING_ID`, `USER_ID`, `ART_ID`, `RATING_VALUE`) VALUES
(1, 14, 13, 5),
(2, 15, 6, 4),
(3, 15, 8, 3),
(4, 13, 6, 2),
(8, 13, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `USER_FNAME` varchar(30) NOT NULL,
  `USER_MNAME` varchar(30) DEFAULT NULL,
  `USER_LNAME` varchar(30) NOT NULL,
  `USER_GENDER` varchar(10) NOT NULL,
  `USER_AGE` int(11) NOT NULL,
  `USER_BDAY` date NOT NULL,
  `USER_CONTACT` bigint(11) NOT NULL,
  `USER_CITY` varchar(50) DEFAULT NULL,
  `USER_STATE` varchar(50) DEFAULT NULL,
  `USER_PINCODE` varchar(10) DEFAULT NULL,
  `USER_STREET` varchar(50) DEFAULT NULL,
  `USER_HOUSE_NUMBER` varchar(10) DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `USER_TYPE` varchar(20) NOT NULL,
  `User_imagepath` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `username`, `password`, `USER_FNAME`, `USER_MNAME`, `USER_LNAME`, `USER_GENDER`, `USER_AGE`, `USER_BDAY`, `USER_CONTACT`, `USER_CITY`, `USER_STATE`, `USER_PINCODE`, `USER_STREET`, `USER_HOUSE_NUMBER`, `user_email`, `USER_TYPE`, `User_imagepath`) VALUES
(5, 'amisha', 'ams', 'Amisha', NULL, 'Prabhat', 'Female', 21, '2000-04-16', 930889062, NULL, NULL, NULL, NULL, NULL, 'amishaprabhat@gmail.com', 'Admin', ''),
(13, 'eug', 'eug', 'Eugene', NULL, 'Delacroix', 'Male', 0, '1997-01-13', 895878808, 'Paris', 'Île-de-France', NULL, NULL, '1001', 'eugdelc@gmail.com', 'Artist', 'eds.jpg'),
(14, 'austin', 'austin', 'Austin', NULL, 'Earl', 'Male', 0, '1998-08-02', 9061790058, 'Napa', 'California', NULL, NULL, '12', 'austin@gmail.com', 'Customer', ''),
(15, 'dyron', 'dyron', 'Dyron', '', 'Scott', 'Male', 0, '0000-00-00', 9090909, 'Ottawa', 'ILLINOIS', '', '', '', 'dyron@gmail.com', 'Customer', ''),
(16, 'Laura', 'lau', 'Laura', '', 'Cohen', 'Female', 0, '0000-00-00', 9475293353, 'Mexico City', 'Mexico City', '', '', '', 'cohenlaura@gmail.com', 'Artist', 'lc.jpeg'),
(17, 'pip', 'pip', 'Pippin', NULL, 'Drsydale', 'Female', 78, '1972-01-05', 79828390, NULL, NULL, NULL, NULL, NULL, 'pipdrys@gmail.com', 'Artist', 'pd.jpeg'),
(18, 'sh', 'sh', 'S H', NULL, 'Raza', 'Male', 0, '2006-01-10', 699965, 'New Delhi', 'New Delhi', NULL, NULL, NULL, 'raza@gmail.com', 'Artist', 'sh.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art_work`
--
ALTER TABLE `art_work`
  ADD PRIMARY KEY (`ART_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `COMMENT_ID` (`COMMENT_ID`);

--
-- Indexes for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  ADD PRIMARY KEY (`TRANSACTION_ID`),
  ADD KEY `ART_ID` (`ART_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`COMMENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `ART_ID` (`ART_ID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ART_ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RATING_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `ART_ID` (`ART_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_work`
--
ALTER TABLE `art_work`
  MODIFY `ART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  MODIFY `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `RATING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_work`
--
ALTER TABLE `art_work`
  ADD CONSTRAINT `art_work_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `art_work_ibfk_2` FOREIGN KEY (`COMMENT_ID`) REFERENCES `comment` (`COMMENT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `buy_transaction`
--
ALTER TABLE `buy_transaction`
  ADD CONSTRAINT `buy_transaction_ibfk_1` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_transaction_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`ART_ID`) REFERENCES `art_work` (`ART_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
