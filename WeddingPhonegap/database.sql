/*
SQLyog Community v10.0 
MySQL - 5.5.23 : Database - weddingpics
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weddingpics` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `weddingpics`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `albumId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `weddingId` varchar(200) NOT NULL,
  `weddingdate` datetime DEFAULT NULL,
  `firstUser` varchar(200) DEFAULT NULL,
  `firstUserType` tinyint(1) DEFAULT NULL,
  `secondUser` varchar(200) DEFAULT NULL,
  `secondUserType` tinyint(1) DEFAULT NULL,
  `description` text,
  `coverImage` text,
  `modifyDttm` datetime DEFAULT NULL,
  PRIMARY KEY (`albumId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `pictureId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `albumId` int(11) DEFAULT NULL,
  `imageType` tinyint(1) DEFAULT NULL,
  `pictureTitle` varchar(200) DEFAULT NULL,
  `url` text,
  `pictureDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pictureId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(200) NOT NULL,
  `fullName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `userImage` text,
  `modifyDttm` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `user_album` */

DROP TABLE IF EXISTS `user_album`;

CREATE TABLE `user_album` (
  `userAlbumId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  `modifyDttm` datetime DEFAULT NULL,
  PRIMARY KEY (`userAlbumId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
