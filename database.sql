/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.14-MariaDB : Database - jawabanno1b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jawabanno1b` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jawabanno1b`;

/*Table structure for table `fact` */

DROP TABLE IF EXISTS `fact`;

CREATE TABLE `fact` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `vendor` varchar(10) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fact_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `fact` */

insert  into `fact`(`id`,`task_name`,`vendor`,`site_id`,`site_name`,`area`) values (1,'proj 1','BA',1,'site name 1','area 1'),(2,'proj 2','BA',2,'site name 2','area 1'),(3,'proj 3','BA',3,'site name 3','area 1'),(4,'proj 4','BO',4,'site name 4','area 1'),(5,'proj 5','BO',5,'site name 5','area 1'),(6,'proj 6','BO',6,'site name 6','area 1'),(7,'proj 7','BO',7,'site name 7','area 1'),(8,'proj 8','NE',8,'site name 8','area 1'),(9,'proj 9','NE',9,'site name 9','area 2'),(10,'proj 10','NE',10,'site name 10','area 2'),(11,'proj 11','NE',11,'site name 11','area 2'),(12,'proj 12','AI',12,'site name 12','area 3'),(13,'proj 13','AI',13,'site name 13','area 3'),(14,'proj 14','AI',14,'site name 14','area 3'),(15,'proj 15','AI',15,'site name 15','area 3'),(16,'proj 16','AI',16,'site name 16','area 3'),(17,'proj 17','AI',17,'site name 17','area 3'),(18,'proj 18','O2',18,'site name 18','area 3'),(19,'proj 19','O2',19,'site name 19','area 4'),(20,'proj 20','O2',20,'site name 20','area 4');

/*Table structure for table `site` */

DROP TABLE IF EXISTS `site`;

CREATE TABLE `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `site` */

insert  into `site`(`id`,`site_name`,`area`) values (1,'site name 1','area 1'),(2,'site name 2','area 1'),(3,'site name 3','area 1'),(4,'site name 4','area 1'),(5,'site name 5','area 1'),(6,'site name 6','area 1'),(7,'site name 7','area 1'),(8,'site name 8','area 1'),(9,'site name 9','area 2'),(10,'site name 10','area 2'),(11,'site name 11','area 2'),(12,'site name 12','area 3'),(13,'site name 13','area 3'),(14,'site name 14','area 3'),(15,'site name 15','area 3'),(16,'site name 16','area 3'),(17,'site name 17','area 3'),(18,'site name 18','area 3'),(19,'site name 19','area 4'),(20,'site name 20','area 4');

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `vendor` varchar(10) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `task` */

insert  into `task`(`id`,`task_name`,`vendor`,`site_id`) values (1,'proj 1','BA',1),(2,'proj 2','BA',2),(3,'proj 3','BA',3),(4,'proj 4','BO',4),(5,'proj 5','BO',5),(6,'proj 6','BO',6),(7,'proj 7','BO',7),(8,'proj 8','NE',8),(9,'proj 9','NE',9),(10,'proj 10','NE',10),(11,'proj 11','NE',11),(12,'proj 12','AI',12),(13,'proj 13','AI',13),(14,'proj 14','AI',14),(15,'proj 15','AI',15),(16,'proj 16','AI',16),(17,'proj 17','AI',17),(18,'proj 18','O2',18),(19,'proj 19','O2',19),(20,'proj 20','O2',20);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id_user`,`nama`,`username`,`email`,`no_telp`,`role`,`password`,`created_at`,`foto`,`is_active`) values (1,'Adminisitrator','admin','admin@admin.com','025123456789','admin','$2y$10$d2QUZv7QBxBa/FGVRmY6.eAsx5H9FFP40zjuFlroMmDD1vaHivMHy',1568689561,'d5f22535b639d55be7d099a7315e1f7f.png',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
