-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinefooddeliverysystem
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Address_id` varchar(10) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Zip` int(11) NOT NULL,
  PRIMARY KEY (`Address_id`),
  UNIQUE KEY `Address_id_UNIQUE` (`Address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('A1','75 St alphonsus street','Boston','Massachusettes',2120),('A10','54 Hudson lane','Boston','Massachusettes',95335),('A11','31 Alum rock','Boston','Massachusettes',95035),('A12','92 King','Wrandham','Massachusettes',95050),('A13','11 Ciloy lane','Mein','Massachusettes',95005),('A14','41 Stevan crook street','Newton','Massachusettes',95235),('A15','12 Pantro lane','Boston','Massachusettes',95001),('A16','7 Troll pkwy','Waldham','Massachusettes',95230),('A17','638 Bandra street','Boston','Massachusettes',95135),('A18','332 Landry avanue','Somorville','Massachusettes',95205),('A19','72 Abion','Boston','Massachusettes',95050),('A2','46 Deamon street','Boston','Massachusettes',2125),('A20','85 Seynour pkwy','Boston','Massachusettes',95234),('A21','92 Hoadly lane','Newton','Massachusettes',95300),('A22','44 Haven street','Rhode Island','Massachusettes',95015),('A23','77 Balfe lane','Boston','Massachusettes',95025),('A24','83 Milson road','Wrandham','Massachusettes',95230),('A25','94 Woolwich church street','Boston','Massachusettes',95110),('A26','431 El camino real','Fitchburg','Massachusettes',95050),('A27','750 Miller street','Boston','Massachusettes',95014),('A28','236 Bellomy street','Somorville','Massachusettes',95110),('A29','129 Newhall street','Boston','Massachusettes',95004),('A3','17 Trimble lane','Waldham','Massachusettes',54231),('A30','25 North market church street','Newton','Massachusettes',95110),('A31','2949 Alum rock avenue','Boston','Massachusettes',95127),('A32','98 Martha street','Waldham','Massachusettes',95128),('A33','710 Leigh avenue','Rhode Island','Massachusettes',95200),('A34','25 North market church street','Waldham','Massachusettes',95110),('A35','1386 Cherry avenue','Wrandham','Massachusettes',95125),('A36','25 North market church street','Boston','Massachusettes',95110),('A37','800 Emory street','Newton','Massachusettes',95126),('A38','28 North market street','Boston','Massachusettes',95110),('A39','150 Cambridge Street','Cambridge','Massachusettes',95112),('A4','86 Domocili lane','Freemont','Massachusettes',54789),('A5','9 Paceway pkwy','Ryndham','Massachusettes',78935),('A6','22 Gilroy pkwy','Boston','Massachusettes',95080),('A7','9 Paceway pkwy','Wenton','Massachusettes',95005),('A8','2 Fill lane','Fithcburg','Massachusettes',95235),('A9','4 Rayban street','Somorville','Massachusettes',95035);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Customer_id`),
  UNIQUE KEY `Customer_id_UNIQUE` (`Customer_id`),
  KEY `fk_Customer_Person1_idx` (`Customer_id`),
  CONSTRAINT `fk_Customer_Person1` FOREIGN KEY (`Customer_id`) REFERENCES `person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C001'),('C002'),('C003'),('C004'),('C005'),('C006'),('C007'),('C008'),('C009'),('C010');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_service_person`
--

DROP TABLE IF EXISTS `customer_service_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_service_person` (
  `Customer_Service_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Customer_Service_id`),
  KEY `fk_Customer_Service_Person_Person1_idx` (`Customer_Service_id`),
  CONSTRAINT `fk_Customer_Service_Person_Person1` FOREIGN KEY (`Customer_Service_id`) REFERENCES `person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_service_person`
--

LOCK TABLES `customer_service_person` WRITE;
/*!40000 ALTER TABLE `customer_service_person` DISABLE KEYS */;
INSERT INTO `customer_service_person` VALUES ('CSP001'),('CSP002');
/*!40000 ALTER TABLE `customer_service_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `Order_Id` varchar(10) NOT NULL,
  `Delivery_person_id` varchar(10) NOT NULL,
  `Delivery_Time` time(6) NOT NULL,
  PRIMARY KEY (`Order_Id`),
  UNIQUE KEY `Orders_Order_Id_UNIQUE` (`Order_Id`),
  KEY `fk_Deliveries_Orders1_idx` (`Order_Id`),
  CONSTRAINT `fk_Deliveries_Orders` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES ('001','DP001','04:14:07.000000'),('002','DP001','03:59:07.000000'),('003','DP002','04:15:00.000000'),('005','DP001','07:11:07.000000'),('006','DP002','05:14:00.000000'),('007','DP001','04:14:07.000000'),('010','DP003','04:12:07.000000'),('011','DP002','06:14:07.000000');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_manager`
--

DROP TABLE IF EXISTS `delivery_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_manager` (
  `Delivery_Manager_id` varchar(10) NOT NULL,
  `Area` varchar(10) NOT NULL,
  PRIMARY KEY (`Delivery_Manager_id`),
  UNIQUE KEY `Delivery_Manager_id_UNIQUE` (`Delivery_Manager_id`),
  KEY `fk_Delivery_Manager_Person1_idx` (`Delivery_Manager_id`),
  CONSTRAINT `fk_Delivery_Manager_Person1` FOREIGN KEY (`Delivery_Manager_id`) REFERENCES `person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_manager`
--

LOCK TABLES `delivery_manager` WRITE;
/*!40000 ALTER TABLE `delivery_manager` DISABLE KEYS */;
INSERT INTO `delivery_manager` VALUES ('DM001','Boston'),('DM002','Waldham'),('DM003','Wardham'),('DM004','Newton'),('DM005','Boston'),('DM006','Ryndhum'),('DM007','Waldham');
/*!40000 ALTER TABLE `delivery_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_person`
--

DROP TABLE IF EXISTS `delivery_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_person` (
  `Delivery_person_id` varchar(10) NOT NULL,
  `Delivery_Manager_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Delivery_person_id`),
  KEY `fk_Delivery_Person_Person1_idx` (`Delivery_person_id`),
  CONSTRAINT `fk_Delivery_Person_Person1` FOREIGN KEY (`Delivery_person_id`) REFERENCES `person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_person`
--

LOCK TABLES `delivery_person` WRITE;
/*!40000 ALTER TABLE `delivery_person` DISABLE KEYS */;
INSERT INTO `delivery_person` VALUES ('DP001','DM003'),('DP002','DM002'),('DP003','DM004');
/*!40000 ALTER TABLE `delivery_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `Issues_Id` varchar(10) NOT NULL,
  `Customer_id` varchar(10) NOT NULL,
  `Customer_Service_id` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Order_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`Issues_Id`),
  UNIQUE KEY `Issues_Id_UNIQUE` (`Issues_Id`),
  KEY `fk_Issues_Orders1_idx` (`Order_Id`),
  CONSTRAINT `fk_Issues_Orders1` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES ('I1','C001','CS001','THE PAYMENT AMOUNT WAS NOT SHOWING THE DISCOUNTED PRICE','PENDING','001'),('I2','C002','CS001','I WAS NOT ABLE TO ADD MORE THAN 2 BURGERS FOR MCDONALDS','RESOLVED','002'),('I3','C004','CS002','THE DELIVERY WAS 40 MINUTES LATE THAN EXPECTED','PENDING','003'),('I4','C006','CS001','MY ORDER PLACED COULD NOT BE CANCELLED.','RESOLVED','006');
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `Restaurant_id` varchar(10) NOT NULL,
  `Menu_id` varchar(10) NOT NULL,
  `Menu_name` varchar(10) NOT NULL,
  PRIMARY KEY (`Menu_id`,`Restaurant_id`),
  KEY `fk_Menu_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Menu_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('R001','001','Lunch'),('R002','001','Mocktails'),('R003','001','Dinner'),('R004','001','Lunch'),('R005','001','Lunch'),('R006','001','Breakfast'),('R007','001','Sides'),('R010','001','Dinner'),('R011','001','Dinner'),('R012','001','Lunch'),('R002','002','Lunch'),('R004','002','Drinks'),('R007','002','Lunch');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `Restaurant_id` varchar(10) NOT NULL,
  `Menu_id` varchar(10) NOT NULL,
  `Item_Id` int(11) NOT NULL,
  `Item_Price` float NOT NULL,
  `Item_Name` varchar(25) NOT NULL,
  `Item_Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Restaurant_id`,`Menu_id`,`Item_Id`),
  KEY `fk_Menu_Items_Menu1_idx` (`Menu_id`),
  KEY `fk_Menu_Items_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Menu_Items_Menu_Id` FOREIGN KEY (`Menu_id`) REFERENCES `menu` (`Menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Menu_Items_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES ('R001','001',1,10,'Red Curry','Red Curry With Tofu And Vegetables'),('R001','001',2,15,'Green Curry','Green Curry With Chicken And Vegetables '),('R002','001',1,25,'Bloody Mary',NULL),('R002','001',3,11,'LIT','Perfect Blend Of Happiness'),('R002','002',2,9,'Noodles','Sichuan Style Hakka Noodles'),('R003','001',1,25,'Pineapple Fried Rice','Rice With Tofu And Vegetables'),('R004','001',1,10,'Margarita Pizza','Cheese Pizza'),('R004','002',2,15,'Sex On The Beach','Litchee Based Vodka Drink'),('R005','001',1,25,'Red Curry','Red Curry With Tofu And Vegetables'),('R005','001',2,10,'Cheese Noodles','Noodles With Rice And Vegetables'),('R005','001',3,10,'Hunan Paneer','Spicy Paneer'),('R006','001',1,5,'Bean Burito','Burito With Beans And Sour Cream'),('R006','001',2,15,'Mexican Fiesta','Taco, Buritos And Nachos On A Plate'),('R007','001',1,10,'Paneer Tikka Masala','Spicy Paneer In Red Velevty Buttery Gravy'),('R007','001',4,15,'Masala Cheese Naan','Cheese Stuffed Naan With Minced Garlic And Spring Onions'),('R007','002',2,15,'Vegetable Dum Biryani','Aromatic Basmati Rice Slow Cooked With Vegetables '),('R007','002',3,25,'Punjabi Platter','Choice Of 2 Curry , 2 Roti, Dal Tadka, Jeera Rice And Pickle'),('R010','001',1,10,'Pasta','Pesto Pasta'),('R010','001',2,17,'Risotto Balls','Risotto Balls Served With Marinara Sauce'),('R011','001',1,35,'Korean Special','Korean Special BBQ, Serves 5'),('R012','001',1,20,'Paahd Thai Noodles','Flat Rice Noodles With Tofu And Vegetables'),('R012','001',2,10,'Chou Fun','Noodles With Tofu And Vegetables');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `Order_Id` varchar(10) NOT NULL,
  `Restaurant_id` varchar(10) NOT NULL,
  `Item_Id` int(11) NOT NULL,
  `Qty_Ordered` int(11) NOT NULL,
  PRIMARY KEY (`Order_Id`,`Item_Id`),
  KEY `fk_Order_Item_Orders1_idx` (`Order_Id`),
  KEY `fk_Order_Item_Restaurant1_idx` (`Restaurant_id`),
  KEY `fk_Order_Item_Menu_Items_idx` (`Item_Id`),
  CONSTRAINT `fk_Order_Item_Orders1` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Item_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES ('001','R001',1,1),('001','R001',2,2),('002','R002',1,1),('002','R002',2,1),('002','R002',3,2),('003','R004',1,1),('003','R004',2,2),('005','R012',1,1),('005','R012',2,1),('006','R011',1,2),('007','R010',1,1),('007','R010',2,1),('008','R007',1,2),('008','R007',2,2),('008','R007',3,2),('008','R007',4,2),('009','R001',1,3),('010','R006',1,4),('010','R006',2,2),('011','R005',1,3),('011','R005',2,5),('011','R005',3,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Order_Id` varchar(10) NOT NULL,
  `Customer_id` varchar(10) NOT NULL,
  `Restaurant_id` varchar(10) NOT NULL,
  `Order_Date` date NOT NULL,
  `Order_Time` time(6) NOT NULL,
  `Order_Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Order_Id`),
  UNIQUE KEY `Order_Id_UNIQUE` (`Order_Id`),
  KEY `fk_Orders_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Orders_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('001','C001','R002','2016-11-04','03:14:07.000000','Delivered'),('002','C002','R001','2016-11-07','03:19:07.000000','Delivered'),('003','C004','R002','2016-11-07','03:44:07.000000','Delivered'),('005','C005','R004','2016-11-01','03:34:07.000000','Delivered'),('006','C006','R002','2016-11-04','03:04:07.000000','Delivered'),('007','C007','R008','2016-11-01','02:01:07.000000','Delivered'),('008','C003','R003','2016-11-21','02:14:07.000000','Pending'),('009','C010','R008','2016-11-21','11:14:07.000000','Pending'),('010','C009','R012','2016-11-13','02:14:00.000000','Delivered'),('011','C008','R011','2016-11-05','02:14:12.000000','Delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `Payment_Id` varchar(10) NOT NULL,
  `Order_Id` varchar(10) NOT NULL,
  `Order_Total` float NOT NULL,
  `Discount` float DEFAULT NULL,
  `Tip_Amount` float DEFAULT NULL,
  `Payment_Total` float NOT NULL,
  PRIMARY KEY (`Payment_Id`),
  UNIQUE KEY `Payment_Id_UNIQUE` (`Payment_Id`),
  KEY `fk_Payment_Orders1_idx` (`Order_Id`),
  CONSTRAINT `fk_Payment_Orders1` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('PY001','001',40,0,5,45),('PY002','002',56,6,10,60),('PY003','003',40,0,0,40),('PY005','005',30,0,10,40),('PY006','006',70,10,20,90),('PY007','007',27,0,13,50),('PY008','008',130,30,5,105),('PY009','009',30,0,5,35),('PY010','010',50,0,0,50),('PY011','011',135,20,0,115);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `Person_id` varchar(10) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Phone_Number` bigint(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Address_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Person_id`),
  UNIQUE KEY `Entity_id_UNIQUE` (`Person_id`),
  KEY `fk_Person_Address1_idx` (`Address_id`),
  CONSTRAINT `fk_Person_Address1` FOREIGN KEY (`Address_id`) REFERENCES `address` (`Address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('C001','Ketul','Shukla',6177944256,'1994-10-25','A1'),('C002','Margi','Mehta',4087074884,'1994-01-03','A2'),('C003','Parshwa','Shah',6692566167,'1995-04-25','A3'),('C004','Akshar','Takle',9712915959,'1993-03-21','A4'),('C005','Karan','Diware',9825555154,'1990-04-04','A5'),('C006','Kavish','Shah',6096789543,'1990-04-24','A7'),('C007','Dhruv','Masturlal',669234897,'1990-03-03','A8'),('C008','Vinit','Shah',4158521818,'1995-08-29','A9'),('C009','Aayush','Mehta',9825555154,'1990-04-04','A10'),('C010','Kush','Shah',7328818558,'1986-02-06','A11'),('CSP001','Ritu','Sani',897675895,'1995-05-22','A18'),('CSP002','Alisha','Shah',9825904774,'1995-02-02','A19'),('DM001','Saloni','Palkhiwala',7899870023,'1995-12-26','A12'),('DM002','Pavni','Patel',9638361816,'1995-10-05','A13'),('DM003','Sulay','Lavsi',9979877721,'1994-03-26','A14'),('DM004','Sonal','Shah',6098674563,'1990-04-04','A23'),('DM005','Rutvij','Shah',6693504912,'1990-04-24','A24'),('DM006','Rujuta','Shah',663454912,'1990-06-26','A25'),('DM007','Harsh','Shah',6764504912,'1990-06-04','A26'),('DP001','Anmol','Patwa',9712446782,'1995-10-19','A15'),('DP002','Karan','Nawab',9687609077,'1995-07-07','A16'),('DP003','Dhruv','Masturlal',890890789,'1994-08-18','A17'),('RM001','Dhara','Vora',987987002,'1995-03-03','A20'),('RM002','Aakash','Mehta',6751234567,'1993-03-23','A21'),('SA001','Shailesh','Agrawal',9825015959,'1987-05-05','A22'),('SA002','Meghal','Gosalia',4156789870,'1986-10-10','A27');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `Restaurant_id` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Area` varchar(10) NOT NULL,
  `Rating` float DEFAULT NULL,
  `System_Admin_id` varchar(10) NOT NULL,
  `Address_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Restaurant_id`),
  UNIQUE KEY `Restaurant_id_UNIQUE` (`Restaurant_id`),
  KEY `fk_Restaurant_Address1_idx` (`Address_id`),
  CONSTRAINT `fk_Restaurant_Address1` FOREIGN KEY (`Address_id`) REFERENCES `address` (`Address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES ('R001','Sukanta','Tremont',4.8,'SA002','A28'),('R002','Koongs','Somorville',2,'SA002','A29'),('R003','China Gate','Waldham',3.9,'SA001','A30'),('R004','Subway','Raythem',3.5,'SA001','A31'),('R005','Papaya Thai','Wrantham',4.2,'SA002','A32'),('R006','Taco Bell','Newton',4,'SA001','A33'),('R007','Ikes','Waldham',4.2,'SA002','A34'),('R008','Burger King','Roxbury',3.8,'SA002','A35'),('R009','BMC','Charles',2.4,'SA002','A36'),('R010','Mc Donalds','Huntington',1.9,'SA001','A37'),('R011','Deli','Boston',4.7,'SA002','A38'),('R012','Parilla','Tremont',4.2,'SA002','A39');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_cuisine`
--

DROP TABLE IF EXISTS `restaurant_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_cuisine` (
  `Restaurant_id` varchar(10) NOT NULL,
  `Cuisine` varchar(10) NOT NULL,
  KEY `fk_Restaurant_Cuisine_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Restaurant_Cuisine_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_cuisine`
--

LOCK TABLES `restaurant_cuisine` WRITE;
/*!40000 ALTER TABLE `restaurant_cuisine` DISABLE KEYS */;
INSERT INTO `restaurant_cuisine` VALUES ('R001','THAI'),('R002','INDIAN'),('R003','THAI'),('R004','ITALIAN'),('R005','MOROCCON'),('R006','MEXICAN'),('R007','INDIAN'),('R008','MALAYSIAN'),('R009','LEBANESE'),('R010','ITALIAN'),('R011','KOREAN'),('R012','CHINESE'),('R002','EGYPTIAN'),('R004','THAI');
/*!40000 ALTER TABLE `restaurant_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_manager`
--

DROP TABLE IF EXISTS `restaurant_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_manager` (
  `Rest_Manager_Id` varchar(10) NOT NULL,
  `Restaurant_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Rest_Manager_Id`),
  UNIQUE KEY `Rest_Manager_Id_UNIQUE` (`Rest_Manager_Id`),
  KEY `fk_Restaurant_Manager_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Restaurant_Manager_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_manager`
--

LOCK TABLES `restaurant_manager` WRITE;
/*!40000 ALTER TABLE `restaurant_manager` DISABLE KEYS */;
INSERT INTO `restaurant_manager` VALUES ('RM001','R001'),('RM004','R001'),('RM003','R004'),('RM002','R005'),('RM006','R007'),('RM007','R008'),('RM005','R012');
/*!40000 ALTER TABLE `restaurant_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `Review_id` varchar(10) NOT NULL,
  `Restaurant_id` varchar(10) NOT NULL,
  `Customer_id` varchar(10) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Stars` float DEFAULT NULL,
  PRIMARY KEY (`Review_id`),
  UNIQUE KEY `Review_id_UNIQUE` (`Review_id`),
  KEY `fk_Reviews_Restaurant1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Reviews_Restaurant1` FOREIGN KEY (`Restaurant_id`) REFERENCES `restaurant` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('001','R001','C001','FOOD WAS AWESOME. WE REALLY ENJOYED THE AMBIANCE. THE STAFF WAS GREAT',4.5),('002','R002','C001','FOOD WAS OKAYISH. WE LIKED THE AMBIANCE.',4),('003','R003','C005','WE LIKED THE SOUPS. WE REALLY ENJOYED THE VEGETARIAN OPTIONS. THE STAFF WAS GREAT',4.1),('004','R004','C010','FOOD WAS LESS IN QUANTITY. WE WERENT ATTENDED FOR A LONG TIME. THE STAFF WAS PATHETIC',2),('005','R005','C003','I ENJOYED THEIR SERVING STYLE. I WAS ALSO IMPRESSED WITH THEIR MENU ITEMS. THE STAFF WAS VERY PLEASING',4.5),('006','R007','C009','I LIKED THE FOOD BUT THE PLACE WAS DIRTY',3.8),('007','R006','C005','I LIKED THE FOOD AND ALSO THE PLACE BUT IT WAS IN THE CORE AREA. THIS MADE ME WASTE A LOT OF TIME ON SEARCHING THE PLACE.',3.9);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ketul`@`%`*/ /*!50003 Trigger updateRatings 
After Insert on Reviews
For Each Row 
Begin 
	declare rate float;
    declare newRate float;
	if new.Stars != null then
    set rate= (select rating from restaurant where restaurant.Restaurant_id=new.Restaurant_id); 
	set newRate= (rate + new.Stars)/2;
    update Restaurant set Rating= newRate where Restaurant.Restaurant_id=new.Restaurant_id;
	end if;
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `system_admin`
--

DROP TABLE IF EXISTS `system_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_admin` (
  `System_Admin_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`System_Admin_Id`),
  KEY `fk_System_Admin_Person1_idx` (`System_Admin_Id`),
  CONSTRAINT `fk_System_Admin_Person1` FOREIGN KEY (`System_Admin_Id`) REFERENCES `person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_admin`
--

LOCK TABLES `system_admin` WRITE;
/*!40000 ALTER TABLE `system_admin` DISABLE KEYS */;
INSERT INTO `system_admin` VALUES ('SA001'),('SA002');
/*!40000 ALTER TABLE `system_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'onlinefooddeliverysystem'
--

--
-- Dumping routines for database 'onlinefooddeliverysystem'
--
/*!50003 DROP PROCEDURE IF EXISTS `CalculateRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ketul`@`%` PROCEDURE `CalculateRevenue`(Restaurant_Name VARCHAR(20))
BEGIN
    select r.Name, sum(p.Payment_Total) as 'Total Revenue'
	from Restaurant r, Payment p , Orders o
	where exists( Select oi.Restaurant_id, oi.Order_Id from order_item oi where oi.Order_Id in (select p.Order_Id from Payment p))
	and p.Order_Id= o.Order_Id and o.Restaurant_id = r.Restaurant_id and r.Name=Restaurant_Name
	group by o.Restaurant_id, r.Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12 14:40:25
