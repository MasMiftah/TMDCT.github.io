-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: April 30, 2021 at 03:53 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `admin` (
`user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(3, 'mas', 'mif', 'mas@gmail.com', 'masmif', 'lasers');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Gaming'),
(2, 'Computers'),
(3, 'Phones'),
(4, 'Tablets'),
(5, 'Earbuds/Earphones'),
(6, 'Television'),
(7, 'Miscelleneous'),
;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
`log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
`order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '', '455.00', 5, ''),
(99, 15, 1, '', '455.00', 6, ''),
(100, 16, 1, '', '1500.00', 6, ''),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '', '455.00', 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(11, 'Apple Air Pods', 'Apple Air Pods', 1000, '129.00', '129.00', 'Earbuds', 'Apple', '1122330099', 'AppleAirPods.jfif', 'AppleAirPods.jfif', 'AppleAirPods.jfif'),
(12, 'Microsoft', 'Microsoft Surface Duo Phone', 1000, '133.00', '155.00', 'Microsoft', 'Microsoft.', '341156780', 'MicrosoftDuoPhone.jpg', 'MicrosoftDuoPhone.jpg', 'MicrosoftDuoPhone.jpg'),
(14, 'Apple', 'Apple Iphone 12', 1000, '700.00', '760.00', 'Apple', 'Apple', '45422791', 'Iphone12.jfif', 'Iphone12.jfif', 'Iphone12.jfif'),
(15, 'Playstaytion', 'Playstation 5', 1000, '450.00', '455.00', 'Console', 'Sony', '456523702', 'PS5.jfif', 'PS5.jfif', 'PS5.jfif'),
(16, 'Xbox', 'Xbox Series X', 1000, '450.00', '450.00', 'Console', 'Microsoft', '890', 'XboxSeriesX.jpg', 'XboxSeriesX.jpg', 'XboxSeriesX.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
`sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE IF NOT EXISTS `sales_details` (
`sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(1, 'Microsoft', 'Microsoft.', '919119199191', 'microsoft@microsoft.com'),
(2, 'Sony', 'Sony', '9191919191', 'sony@sony.com'),
(4, 'Apple', 'Apple', '23423492374', 'Apple@apple.com'),
(5, 'Samsung', 'Samsung', '2929239239239', 'Samsung@samsung.com'),
(6, 'Dell', 'Dell', '23423443', 'Dell@dell.com');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE IF NOT EXISTS `temp_trans` (
`temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(4, '0987', '0987', '0987', '0987', '0987', '0987', '0987', 'a1Bz20ydqelm8m1wql9e1e06ec8e02f0a0074f2fcc6b26303b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
 ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
 ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
 ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
