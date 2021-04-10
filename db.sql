/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - amaoneclone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`amaoneclone` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `amaoneclone`;

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `brand_id` bigint NOT NULL,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `brands` */

insert  into `brands`(`brand_id`,`brand_title`) values 
(1,'HP'),
(2,'Samsung'),
(3,'Apple'),
(4,'Sony'),
(5,'LG'),
(6,'Biba'),
(7,'Flying Machine'),
(8,'Nike'),
(9,'Adidas'),
(10,'Kidzee'),
(11,'Ikea'),
(12,'Philips');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL,
  `p_id` bigint NOT NULL,
  `ip_add` varchar(300) NOT NULL,
  `user_id` bigint NOT NULL,
  `product_title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_image` varchar(400) NOT NULL,
  `qty` bigint NOT NULL,
  `price` bigint NOT NULL,
  `total_amount` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cart` */

insert  into `cart`(`id`,`p_id`,`ip_add`,`user_id`,`product_title`,`product_image`,`qty`,`price`,`total_amount`) values 
(79,11,'0.0.0.0',2,'Baby Shirt','babyshirt.JPG',1,500,500),
(80,2,'0.0.0.0',2,'iPhone 5s','iphonemobile.JPG',1,25000,25000),
(79,11,'0.0.0.0',2,'Baby Shirt','babyshirt.JPG',1,500,500),
(80,2,'0.0.0.0',2,'iPhone 5s','iphonemobile.JPG',1,25000,25000);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `cat_id` bigint NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `categories` */

insert  into `categories`(`cat_id`,`cat_title`) values 
(1,'Electronics'),
(2,'Ladies Wear'),
(3,'Mens Wear'),
(4,'Kids Wear'),
(5,'Home Appliances'),
(6,'Sports');

/*Table structure for table `customer_order` */

DROP TABLE IF EXISTS `customer_order`;

CREATE TABLE `customer_order` (
  `id` bigint NOT NULL,
  `uid` bigint NOT NULL,
  `pid` bigint NOT NULL,
  `p_name` varchar(300) NOT NULL,
  `p_price` bigint NOT NULL,
  `p_qty` bigint NOT NULL,
  `p_status` varchar(200) NOT NULL,
  `tr_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customer_order` */

insert  into `customer_order`(`id`,`uid`,`pid`,`p_name`,`p_price`,`p_qty`,`p_status`,`tr_id`) values 
(30,2,6,'LG Aqua 2',15000,1,'CONFIRMED','15179'),
(31,2,15,'Football Shoes',2500,1,'CONFIRMED','15179'),
(32,2,16,'Football',600,1,'CONFIRMED','15179');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` bigint NOT NULL,
  `product_cat` varchar(300) NOT NULL,
  `product_brand` varchar(200) NOT NULL,
  `product_title` varchar(300) NOT NULL,
  `product_price` bigint NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `products` */

insert  into `products`(`product_id`,`product_cat`,`product_brand`,`product_title`,`product_price`,`product_desc`,`product_image`,`product_keywords`) values 
(1,'1','2','Samsung',5000,'Samsung Duos 2 mobile phone','samsungduos.JPG','samsung mobile electronics'),
(2,'1','3','iPhone',25000,'iPhone mobile ','iphonemobile.JPG','apple iphone mobile electronics'),
(3,'1','3','iPad',30000,'iPad tablet for use','iPad.jpg','apple ipad tablet'),
(4,'1','2','Samsung Tab',10000,'samsung tablet for home use','samsungtab.JPG','samsung tablet electronics'),
(5,'1','4','Sony Vaio Laptop',25000,'Vaio Laptop','vaio.JPG','sony laptop vaio'),
(6,'1','5','LG Aqua 2',15000,'LG aqua mobile phone all featured','lgaqua.JPG','lg mobile phone aqua'),
(7,'2','6','Draped Lehenga',1500,'Matching Lehenga','lehenga.JPG','lehenga biba'),
(8,'2','6','SIlk Saree',1000,'Pure Silk Saree','saree.JPG','biba saree'),
(9,'3','7','T-Shirt',700,'T-Shirt for summer','tshirt.JPG','flying machine tshirt'),
(10,'3','7','FM Jeans',1800,'Jeans for the ones who do','jeans.JPG','flying machine jeans'),
(11,'4','10','Baby Shirt',500,'Shirt for the babies','babyshirt.JPG','kids shirt kidzee'),
(12,'4','10','Kids Jeans',800,'Jeans for kids','kidsjeans.JPG','kids jeans kidzee'),
(13,'5','11','Computer Table',2000,'Table for computer','computertable.JPG','computer table ikea '),
(14,'5','12','Trimmer',1500,'Trimmer by Philips','philipstrimmer.JPG','philips trimmer'),
(15,'6','8','Football Shoes',2500,'Shoes to play football by Nike','nikeshoes.JPG','nike shoes football'),
(16,'6','9','Football',600,'Football by Adidas','adidasfootball.JPG','football adidas');

/*Table structure for table `received_payment` */

DROP TABLE IF EXISTS `received_payment`;

CREATE TABLE `received_payment` (
  `id` bigint NOT NULL,
  `uid` bigint NOT NULL,
  `amt` bigint NOT NULL,
  `tr_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `received_payment` */

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_info` */

insert  into `user_info`(`user_id`,`first_name`,`last_name`,`email`,`password`,`mobile`,`address1`,`address2`) values 
(1,'Satyam','Raj','satyammast@gmail.com','3814d460c26c2dbab2d80294d2cc9882','8235639917','Prem Electronics Block Road Ratu','Prem Electronics Block Road Ratu'),
(2,'Abhijeet','Kumar','abhinav@krotos.com','6cebe3b43c4495fdf87fcaa43b485236','7631649503','West Lohanipur, Kadamkuan, MNS Lane','Patna'),
(3,'Krotos','Kumar','kroto@star.com','e3daab6a6b16a140aaf0f1df98d3be24','7631649503','West Lohanipur, Kadamkuan, MNS Lane','Patna'),
(4,'Pranav','Prem','pranav.prem@gmail.com','929847725b8d48b47ecba736b0d04520','8235639917','Prem Electronics Block Road Ratu','sdsd'),
(5,'Shubham','Raj','shubham@gmail.com','5568fda880263b9be0b72104354fa3dc','8235639917','Prem Electronics Block Road Ratu','bangalore'),
(6,'Md','Ikram','admin@gmail.com','e10adc3949ba59abbe56e057f20f883e','0123456789','simple','simple1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
