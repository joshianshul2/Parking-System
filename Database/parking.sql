/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.0.37-community-nt : Database - parking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`parking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `parking`;

/*Table structure for table `registeruser` */

DROP TABLE IF EXISTS `registeruser`;

CREATE TABLE `registeruser` (
  `UserID` int(11) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `vehicleNumber` varchar(10) default NULL,
  `contact` varchar(10) default NULL,
  `vehicletype` varchar(2) default NULL,
  `address` varchar(50) default NULL,
  PRIMARY KEY  (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registeruser` */

insert  into `registeruser`(`UserID`,`username`,`vehicleNumber`,`contact`,`vehicletype`,`address`) values (1,'shweta','1234','909090909','2','indore'),(2,'Kanishka','2222','6545689','2','indore'),(3,'Pankaj','3142','7828430065','2','Indore'),(4,'Surbhi','9999','789654132','4','indore'),(5,'Raj','1234','123456798','4','indore');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `floornumber` varchar(2) default NULL,
  `slotnumber` varchar(5) NOT NULL,
  `status` varchar(10) default NULL,
  `vehicletype` int(2) default NULL,
  PRIMARY KEY  (`slotnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `status` */

insert  into `status`(`floornumber`,`slotnumber`,`status`,`vehicletype`) values ('A','A1','free',2),('A','A10','free',2),('A','A11','busy',2),('A','A12','busy',2),('A','A13','busy',2),('A','A14','free',2),('A','A15','free',2),('A','A16','free',2),('A','A17','free',2),('A','A18','free',2),('A','A19','free',2),('A','A2','free',2),('A','A20','free',2),('A','A3','free',2),('A','A4','free',2),('A','A5','free',2),('A','A6','free',2),('A','A7','free',2),('A','A8','free',2),('A','A9','free',2),('B','B1','busy',4),('B','B10','free',4),('B','B2','free',4),('B','B3','free',4),('B','B4','free',4),('B','B5','free',4),('B','B6','free',4),('B','B7','free',4),('B','B8','free',4),('B','B9','free',4),('C','C1','free',4),('C','C10','free',4),('C','C2','free',4),('C','C3','free',4),('C','C4','free',4),('C','C5','free',4),('C','C6','free',4),('C','C7','free',4),('C','C8','free',4),('C','C9','free',4);

/*Table structure for table `tokengenerator` */

DROP TABLE IF EXISTS `tokengenerator`;

CREATE TABLE `tokengenerator` (
  `TokenID` int(11) NOT NULL auto_increment,
  `CustomerName` varchar(30) default NULL,
  `vehicleNumber` varchar(20) default NULL,
  `CurrentDate` varchar(10) default NULL,
  `currentTime` varchar(10) default NULL,
  `vehicleType` int(2) default NULL,
  `floorNumber` varchar(2) default NULL,
  `slotNumber` varchar(5) default NULL,
  `currenttimemilis` varchar(30) default NULL,
  PRIMARY KEY  (`TokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tokengenerator` */

insert  into `tokengenerator`(`TokenID`,`CustomerName`,`vehicleNumber`,`CurrentDate`,`currentTime`,`vehicleType`,`floorNumber`,`slotNumber`,`currenttimemilis`) values (1,'Sweta','1234',NULL,NULL,NULL,NULL,NULL,'1399194837285'),(2,'shweta','1234','30-4-2014','4:14:13',2,'A','A1','1399190000000'),(3,'shweta','1234','30-4-2014','4:16:45',2,'A','A1','1399194837285'),(4,'shweta','1234','30-4-2014','4:17:22',2,'A','A1','1399194837285'),(5,'shweta','1234','30-4-2014','4:18:29',2,'A','A1','1399194837285'),(6,'shweta','1234','30-4-2014','4:20:59',2,'A','A1','1399194837285'),(7,'shweta','1234','30-4-2014','4:22:2',2,'A','A1','1399194837285'),(8,'shweta','1234','30-4-2014','4:22:11',2,'A','A1','1399194837285'),(9,'shweta','1234','30-4-2014','4:23:5',2,'A','A1','1399194837285'),(10,'shweta','1234','30-4-2014','4:24:55',2,'A','A10','1399194837285'),(11,'shweta','1234','30-4-2014','8:25:6',2,'A','A11','1399194837285'),(12,'Kanishka','2222','30-4-2014','8:26:52',2,'A','A12','1399194837285'),(13,'shweta','1234','4-5-2014','11:32:28',2,'A','A13','1399194837285'),(14,'Surbhi','9999','4-5-2014','2:43:34',4,'B','B1','1399194837285'),(15,'Surbhi','9999','4-5-2014','3:23:41',4,'B','B10','1399197235535'),(16,'shweta','1234','4-5-2014','3:24:4',2,'A','A14','1399197251947');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
