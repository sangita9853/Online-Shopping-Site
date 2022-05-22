-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 04:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'Sangita ', 'sangita@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(2, 'Apple'),
(3, 'Aduro'),
(6, 'Bajaj'),
(7, 'Books'),
(8, 'Buildskill'),
(10, 'Covifind'),
(11, 'Canon'),
(12, 'Dettol'),
(13, 'Excl'),
(14, 'Hot toys'),
(15, 'Motor parts'),
(16, 'Novels'),
(17, 'Noise'),
(18, 'N95'),
(19, 'Nova'),
(20, 'OnePlus+'),
(21, 'Philips'),
(22, 'RPES'),
(23, 'Redmi'),
(24, 'Samsung'),
(25, 'Stationary'),
(26, 'TAPARIA'),
(27, 'Utensils'),
(28, 'Zebronics');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(15, 1, '::1', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Covid-19 Essentials'),
(3, 'Clothings'),
(4, 'Electronics'),
(6, 'Home &amp; Kitchen'),
(12, 'Mobiles'),
(13, 'Motor Parts &amp; Accessories'),
(14, 'Students necessities'),
(15, 'Tools'),
(16, 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `codb`
--

CREATE TABLE `codb` (
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` int(10) NOT NULL,
  `product` varchar(40) NOT NULL,
  `price` int(100) NOT NULL,
  `no_products` int(5) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 24, 'Samsung Galaxy Z Fold 2', 249999, 5, 'Last yearâ€™s Galaxy Fold was a sort of experiment in the field of foldable phones. The idea was an innovative one but the phone faced a lot of durability issues. Its launch was postponed multiple times because of Samsungâ€™s inability to solve all the problems. Samsung will likely avoid those situations with its successor.', '1616500092_sm-zfold.jpg', 'samsung, mobile, galaxy fold'),
(2, 12, 2, 'Iphone 12 Pro Max', 187000, 7, '5G goes Pro. A14 Bionic rockets past every other smartphone chip. The Pro camera system takes low-light photography to the next level â€” with an even bigger jump on iPhone 12 Pro Max. And Ceramic Shield delivers four times better drop performance.', '1616499931_iph12pm.jpg', 'apple, iphone'),
(4, 12, 24, 'Samsung Galaxy S21 Ultra', 155000, 10, 'This is a demo', '1616492395_Samsung-Galaxy-S21-Ultra-1608287647-0-0.jpg', 'samsung, s21, s21 ultra'),
(5, 12, 20, 'OnePlus 8T', 86000, 13, 'On spec-sheet, the OnePlus 8T boasts plenty of improvements from its predecessor i.e. the OnePlus 8. For instance, its 6.55-inch 1080p OLED display now comes with a faster 120Hz refresh rate. In comparison, the OnePlus 8 had a 90Hz refresh rate. This upgrade seems huge. However, users will agree that you canâ€™t really find much of a difference between 90Hz to 120Hz on a smartphone screen.', '1616500410_OnePlus-8T-5G-Lunar-Silver-8GB-RAM-128GB-Storage-image-4.jpg', 'one plus, oneplus8'),
(10, 4, 3, 'Aduro Wireless Headphones', 4100, 6, 'Amazing Bluetooth headphones sound with aptX technology. High-quality built-in microphone with Bluetooth 5.0 technology', '1616502854_hdphn.jpg', 'headphone, aduro'),
(11, 3, 13, 'Striped Men Hooded Neck Red', 141, 1, 'Striped Men Hooded Neck Red, Black T-Shirt', '1651642632_49.PNG', 'clothes'),
(19, 3, 13, 'Mens Hoodie', 3500, 4, 'Colors: Black/White/Maroon', '1616504885_menshoodie.jpg', 'hood, hoodie'),
(20, 16, 14, 'Thanos Hot Toys', 8150, 19, 'Thanos sixth scale collectible figure.', '1616506942_thanos-hottoys.jpg', 'thanos, marvel, toys, hot toys'),
(72, 2, 22, 'RPES Safety Reusable Hand Glove', 125, 1, 'RPES Safety Reusable Hand Glove For Covid- 19 Cleaning Home Office Industry Polyester Safety Gloves', '1651584845_1.PNG', 'gloves'),
(73, 4, 19, 'Nova Plus Amaze NI 10 1100 W Dry Iron  ', 549, 1, 'Look stunning and exude confidence in crisp, creaseless clothes with the Nova Plus 1100 W Amaze NI 10 Dry Iron.  \r\nThis home appliance features a Non-stick Triple-coated Soleplate, Quick Heat Technology, and a 360-degree swivel cord for easy and quick ironing of different fabrics and garments. ', '1650988040_photo_2022-04-26_21-08-30.jpg', 'Iron'),
(74, 4, 21, 'PHILIPS BT3101/25 Trimmer for Men', 1323, 1, 'PHILIPS BT3101/25 Runtime: 45 min Trimmer for Men (Maroon)  ', '1650989437_photo_2022-04-26_21-08-34.jpg', 'Trimmer'),
(75, 13, 28, 'ZEBRONICS Turbo Car Charger  ', 229, 1, 'ZEBRONICS 2.1 Amp Turbo Car Charger is a car charger that comes in a compact design with dual USB port along with an LED indicator. The charger also has protection to over current, over voltage and over temperature protection.', '1650991868_charger.PNG', 'Car charger'),
(76, 15, 8, 'BUILDSKILL Screwdriver Set ', 301, 1, 'BUILDSKILL Combination Screwdriver Set  (Pack of 7)', '1650992221_screw driver.PNG', 'Screwdriver'),
(241, 3, 13, 'Men Regular Fit Striped Casual Shirt', 295, 1, 'Men Regular Fit Striped Casual Shirt', '1651585636_8.PNG', 'mixer'),
(242, 2, 10, 'CoviFind Covid-19 Rapid Antigen Test Kit', 619, 1, 'CoviFind Covid-19 Rapid Antigen Test Kit- ICMR Approved Covid Test Kit for Home Use (Pack of 5) COVID-19 Rapid Antigen Kit (Home-based/self)', '1651584951_2.PNG', 'testing kit'),
(243, 14, 7, 'Object Oriented Programming(C++)', 438, 1, 'Object Oriented Programming with C++', '1651652394_37.PNG', 'book'),
(244, 15, 26, 'Taparia Double Ended Open Spanner', 236, 8, 'TAPARIA DEP 08 Taparia Double Ended Open Spanner Set Double Sided Open End Wrench  (Pack of 8)', '1651653858_32.PNG', 'wrench'),
(245, 15, 26, 'TAPARIA 1172 Single Sided Open End Wrench', 235, 1, 'TAPARIA 1172 Single Sided Open End Wrench', '1651653924_34.PNG', 'wrench'),
(246, 15, 26, 'TAPARIA 1272 Stillson Single Sided Pipe Wrench', 165, 1, 'TAPARIA 1272 Stillson Single Sided Pipe Wrench', '1651654016_36.PNG', 'wrench'),
(247, 15, 26, 'Snap and grip Double Sided Pipe Wrench', 200, 1, 'snap and grip Double Sided Pipe Wrench', '1651654108_35.PNG', 'wrench'),
(248, 3, 13, 'Men Slim Fit Spread Shirt', 300, 1, 'Men Slim Fit Color Block Spread Collar Casual Shirt', '1651585698_9.PNG', 'shirt'),
(249, 14, 7, 'Data Structures using C and C+', 522, 1, 'Data Structures Using C and C+ 2nd Edition', '1651652517_39.PNG', 'book'),
(250, 2, 12, 'Dettol Surface Disinfectant Spray Sanitizer', 416, 3, 'Dettol Surface Disinfectant Spray Sanitizer for Germ-Protection on Hard & Soft Surfaces  (225 ml)', '1651585084_3.PNG', 'Sanitizer'),
(251, 3, 13, 'Full Sleeves Red Mens T Shirts', 480, 1, 'Full Sleeves Red Mens T Shirts, Size: chest m36 .L38. XL 40', '1651642508_18.PNG', 'shirt'),
(252, 13, 15, 'DIGICOP 5W refrigerator motor fan', 919, 1, 'DIGICOP 5W refrigerator motor fan shaded pole asynchronous freezer fridge cooling fan motor for refrigerator parts Meter Electronic Hobby Kit', '1651649467_25.PNG', 'motor fan'),
(253, 3, 13, 'Men Slim Fit Casual Shirt', 279, 1, 'Men Slim Fit Checkered Casual Shirt', '1651642581_50.PNG', 'shirt'),
(254, 14, 7, 'Mastering C# and .NET Framework', 2628, 1, 'Mastering C# and .NET Framework', '1651652593_40.PNG', 'book'),
(255, 14, 16, 'The Adventures of Tom Sawyer', 199, 1, 'The Adventures of Tom Sawyer', '1651652784_41.PNG', 'book'),
(256, 13, 15, 'CYInternational Car Controller', 7000, 1, 'CYInternational Car Motor Controller 36V/48V 13A 250W 60/120° Aluminium Alloy Brushless Motor Controller Sensitive Control Part for Electric Bicycle Scooter Bike E Rickshaw Motor Control Electronic Hobby Kit', '1651649956_27.PNG', 'controller'),
(257, 14, 7, 'Classmate Longbook A4 Notebook ', 299, 1, 'Classmate Longbook A4 Notebook Single Line 240 Pages', '1651652876_43.PNG', 'book'),
(258, 14, 7, 'Oxford Student Atlas for India', 209, 1, 'Oxford Student Atlas for India', '1651652967_44.PNG', 'book'),
(259, 2, 12, 'Dettol INSTANT HAND SANITIZER', 589, 15, 'Dettol INSTANT HAND SANITIZER [ PACK OF 15 ] Original 50 ml Each, TOTAL 750 ML KILLS 99.9 % OF GERMS WITHOUT WATER.Rinse free protection on the go Hand Sanitizer Bottle  (15 x 50 ml)', '1651585182_4.PNG', 'sanitizer'),
(260, 16, 14, 'Wembley Rock Crawler Rally Car ', 2000, 1, 'Wembley Toys 1:18 Rock Crawler Rally Car 2.4Ghz Remote Control Car 4WD Off Road RC Monster Truck (Blue)  (Blue)', '1651670431_11.PNG', 'car'),
(261, 2, 18, 'Sugero 3 Ply Protective Face Mask', 176, 20, 'CENWELL 20 pcs N95 5 Layer', '1651585348_6.PNG', 'mask'),
(262, 4, 24, 'SAMSUNG LED Smart TV', 15999, 1, 'SAMSUNG 80 cm (32 inch) HD Ready LED Smart TV', '1651642754_19.PNG', 'tv'),
(264, 4, 11, 'Canon EOS 1500D DSLR Camera Body+ 18-55 mm IS II Lens  (Black)', 33490, 1, 'Canon EOS 1500D DSLR Camera Body+ 18-55 mm IS II Lens  (Black)', '1651642867_20.PNG', 'camera'),
(266, 13, 15, 'DC TO DC CURRENT CONVERTER', 289, 1, 'sna DC TO DC CURRENT CONVERTER 36V/48V/64V TO 12V 15AMP Automotive Electronic Hobby Kit', '1651650091_29.PNG', 'converter'),
(267, 4, 17, 'Noise ColorFit Qube SpO2 Smartwatch  (Black Strap, Regular)', 1499, 1, 'Noise ColorFit Qube SpO2 Smartwatch  (Black Strap, Regular)', '1651642967_21.PNG', 'watch'),
(268, 15, 26, 'TAPARIA 1621-8/1621-8N Combination Snap Ring Plier', 230, 1, 'TAPARIA 1621-8/1621-8N Combination Snap Ring Plier', '1651654198_111.PNG', 'plier'),
(269, 12, 23, 'REDMI 10 (Pacific Blue, 64 GB)  (4 GB RAM)', 10999, 1, 'REDMI 10 (Pacific Blue, 64 GB)  (4 GB RAM)', '1651643060_23.PNG', 'mobile'),
(270, 16, 14, 'UNO Original Card game', 85, 1, 'Uno Original Card game', '1651665736_46.PNG', 'card'),
(272, 13, 15, 'Icon ICON_BATTERY CHARGER', 2600, 1, 'Icon ICON_BATTERY CHARGER', '1651650202_30.PNG', 'charger'),
(274, 16, 14, 'Archery Kit', 284, 1, 'Archery Kit', '1651667087_47.PNG', 'kit'),
(275, 16, 14, 'Rubix cube', 200, 1, 'TamBoora 3X3X3 SPEED CUBE HIGH STAYBILITY STICKER LESS SMOOTH SWING FOR FASTER MOVEMENT (1 Pieces)  (1 Pieces)', '1651670643_Capture.PNG', 'rubix'),
(276, 12, 23, 'REDMI Note 10S (Deep Sea Blue, 64 GB) ', 14999, 1, 'REDMI Note 10S (Deep Sea Blue, 64 GB)  (6 GB RAM)', '1651643099_24.PNG', 'mobile'),
(278, 2, 10, 'CANTAMELON PPE KIT', 136, 1, 'CANTAMELON PPE KIT ( For High Risk Users) Medical Protective Coverall Suits (PP Non Woven Laminated With FACE SHIELD ,3 plz mask , SHOE COVER, letex hand gloves , and desposible bag ) Safety Jacket/ Personal Protective Kit (BLUE) Safety Jacket  (BLUE)', '1651585477_7.PNG', 'kit'),
(279, 16, 14, 'Bowling Set', 148, 1, 'tirupaticollection Bowling Set with 10 Pins and 2 Balls Educational Bowling Toy for Kids Sport Game Bowling', '1651670807_443.PNG', 'bowling'),
(282, 13, 15, 'FCW Battery Charger Adaptor', 1549, 1, 'FCW 12V, 10A Battery Charger Worldwide Adaptor', '1651650285_31.PNG', 'battery charger'),
(298, 6, 27, 'Butterfly Friendly Pressure Cooker ', 589, 1, 'Butterfly Friendly 3 L Induction Bottom Pressure Cooker ', '1651643713_16.PNG', 'cooker'),
(299, 6, 27, 'MACARIZE Stainless Steel Lighter', 59, 1, 'MACARIZE 01 pc Heart Hold Stainless Steel Long Lasting Safety Kitchen Lighter Plastic, Steel Gas Lighter  (Steel, Pack of 1)', '1651643808_15.PNG', 'lighter'),
(300, 6, 27, 'MACARIZE Stainless Steel Masher', 69, 1, 'MACARIZE Stainless Steel Masher', '1651643908_17.PNG', 'masher'),
(301, 6, 27, 'Suryaflame Ultimate Gas Stove', 1839, 1, 'Suryaflame Ultimate Gas Stove 2 Burners Stainless Steel Manual - Doorstep Service Stainless Steel Manual Gas Stove  (2 Burners)', '1651646113_22.PNG', 'gas'),
(302, 6, 27, 'Oliveware Lunch Box ', 400, 1, 'Oliveware Cleo Lunch Box | 3 Stainless Steel Containers | Microwave Safe | Leak Proof 2 Containers Lunch Box  (1050 ml)', '1651646190_14.PNG', 'lunch box'),
(308, 6, 6, 'Bajaj GX1 500 W Mixer Grinder', 2999, 1, 'bajaj', '1651574763_IMG_20220426_114011_913.jpg', 'mixer'),
(309, 14, 25, 'Multicolor 400 Sheets Regular', 169, 1, 'Multicolor 400 Sheets Regular', '1652148805_sn.JPG', 'note'),
(310, 14, 25, 'Win Guide Ball Pens  ', 230, 20, 'Win Guide Ball Pens | 20Pcs Pen + 10Pcs Refills, Black | 0.6 mm Fine Tip | Premium Ball Pen  (Pack of 20, Black)', '1652150099_33.JPG', 'pen'),
(311, 14, 25, 'CASIO FX-82MS Scientific Calculator  ', 368, 1, 'CASIO FX-82MS Scientific Calculator  (12 Digit)\r\n', '1652150235_33.JPG', 'calculator'),
(312, 14, 25, 'NATRAJ 621 Writing Pencils Pencil ', 139, 1, 'NATRAJ 621 Writing Pencils Pencil  (Set of 5, Ruby, Black)', '1652150457_55.JPG', 'pencil'),
(313, 14, 25, 'LUXOR  HLTR  (Set of 5, Multicolor)', 70, 1, 'LUXOR 9000025529 HLTR  (Set of 5, Multicolor)', '1652150552_335.JPG', 'marker'),
(314, 14, 25, 'Reynolds Brite Blue Pen', 90, 1, 'Reynolds Brite Blue Pen', '1652150685_Capture.JPG', 'pen'),
(315, 14, 25, 'Classmate Geometry Box', 169, 1, 'Classmate 04010030AA Geometry Box', '1652150820_77.JPG', 'box'),
(316, 14, 25, 'FABER-CASTELL Permanent Marker ', 133, 1, 'FABER-CASTELL Permanent Marker ', '1652151001_gg.JPG', 'marker');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA'),
(7, 'Rubli', 'Serina', 'rubliserina@gmail.com', '2dd748070db55857f66ceff91c82a441', '9999999122', 'Puri ', 'Odisha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
