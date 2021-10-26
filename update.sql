/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt-log : Database - mylayout
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `dealwith` */
use 'mylayout';

DROP TABLE IF EXISTS `dealwith`;

CREATE TABLE `dealwith` (
  `dealwith_id` int(11) NOT NULL auto_increment,
  `dealwith_type` varchar(10) NOT NULL,
  `description` varchar(10) NOT NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`dealwith_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `dealwith` */

LOCK TABLES `dealwith` WRITE;

insert  into `dealwith`(`dealwith_id`,`dealwith_type`,`description`,`active`) values (1,'repair','修复',1),(2,'repair','更换',1),(3,'repair','新添',1),(4,'repair','其它',1);

UNLOCK TABLES;

/*Table structure for table `satisfaction` */

DROP TABLE IF EXISTS `satisfaction`;

CREATE TABLE `satisfaction` (
  `id_satisfaction` tinyint(4) NOT NULL auto_increment,
  `satisfaction` varchar(10) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`id_satisfaction`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `satisfaction` */

LOCK TABLES `satisfaction` WRITE;

insert  into `satisfaction`(`id_satisfaction`,`satisfaction`,`active`) values (1,'不满意',1),(2,'满意',1),(3,'非常满意',1);

UNLOCK TABLES;

/*Table structure for table `statusinfo` */

DROP TABLE IF EXISTS `statusinfo`;

CREATE TABLE `statusinfo` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_type` varchar(10) NOT NULL,
  `description` varchar(10) NOT NULL,
  `active` tinyint(4) default '1',
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `statusinfo` */

LOCK TABLES `statusinfo` WRITE;

insert  into `statusinfo`(`status_id`,`status_type`,`description`,`active`) values (1,'repair','未修',1),(2,'repair','已修',1),(3,'complaint','未处理',1),(4,'complaint','已处理',1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
