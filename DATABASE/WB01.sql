/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - collegesystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`collegesystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `collegesystem`;

/*Table structure for table `attendence` */

DROP TABLE IF EXISTS `attendence`;

CREATE TABLE `attendence` (
  `studentname` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `year` varchar(250) DEFAULT NULL,
  `semister` varchar(250) DEFAULT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `month` varchar(250) DEFAULT NULL,
  `presents` varchar(250) DEFAULT NULL,
  `workingdays` varchar(250) DEFAULT NULL,
  `percentage` varchar(250) DEFAULT NULL,
  `performance` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendence` */

insert  into `attendence`(`studentname`,`branch`,`year`,`semister`,`userid`,`month`,`presents`,`workingdays`,`percentage`,`performance`) values ('Kiran','CSE','first ','1','144','jan','22','28','78.57142857142857','GOOD'),('srisrija','CSE','second','2','432','feb','20','24','83.33333333333334','EXCELLENT'),('NarendraYadav','ECE','THIRD','1','122','JANUARY','22','28','78.57142857142857','GOOD'),('rajasekhar','EEE','SECOND','1','85','JANUARY','16','28','57.14285714285714','BAD'),('SriLatha','CIVIL','SECOND','2','40','JANUARY','14','27','51.85185185185185','BAD'),('SandeepA','CSE','FOURTH','1','4','JANUARY','20','25','80','EXCELLENT');

/*Table structure for table `aupload` */

DROP TABLE IF EXISTS `aupload`;

CREATE TABLE `aupload` (
  `collegename` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `university` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `path` varchar(800) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `sno` int(250) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `aupload` */

insert  into `aupload`(`collegename`,`city`,`rank`,`university`,`state`,`country`,`path`,`filename`,`sno`) values ('SIRI INSTITUTE OF SCIENCE AND TECHNOLOGY','tirupati','1','JNTU-Anatapur','ANDRAPARDESH','INDIA','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\images.jpg','images.jpg',1),('SWETHA INSTITUTE OF TECHNOLOGY AND SCIENCE','TIRUPATI','2','JNTU-Anatapur','ANDRAPRADESH','INDIA','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\images (6).jpg','images (6).jpg',2),('NARAYANADRI INSTITUTE OF SCIENCE AND TECHNOLOGY','RAJAMPETA','1','JNTU-Anatapur','ANDRAPARDESH','INDIA','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\images (5).jpg','images (5).jpg',3),('nagarjuna','nellore','2','JNTU-Anatapur','ANDRAPARDESH','INDIA','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\images (5).jpg','images (6).jpg',4),('modulakalavathamma intitute of science and technology','rajampeta','2','JNTU-Anatapur','andrapradesh','India','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\th.jpg','th.jpg',7);

/*Table structure for table `auploadosmania` */

DROP TABLE IF EXISTS `auploadosmania`;

CREATE TABLE `auploadosmania` (
  `collegename` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `university` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `sno` int(250) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `auploadosmania` */

insert  into `auploadosmania`(`collegename`,`city`,`rank`,`university`,`state`,`country`,`path`,`filename`,`sno`) values (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,2),('l','l','l','l','l','l','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\muybridge12-hp-p.jpg','muybridge12-hp-p.jpg',3);

/*Table structure for table `external` */

DROP TABLE IF EXISTS `external`;

CREATE TABLE `external` (
  `sname` varchar(250) DEFAULT NULL,
  `userid` varchar(250) NOT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `year` varchar(250) DEFAULT NULL,
  `sem` varchar(250) DEFAULT NULL,
  `english` varchar(250) DEFAULT NULL,
  `result1` varchar(250) DEFAULT NULL,
  `math1` varchar(250) DEFAULT NULL,
  `result2` varchar(250) DEFAULT NULL,
  `math2` varchar(250) DEFAULT NULL,
  `result3` varchar(250) DEFAULT NULL,
  `physics` varchar(250) DEFAULT NULL,
  `result4` varchar(250) DEFAULT NULL,
  `chemistry` varchar(250) DEFAULT NULL,
  `result5` varchar(250) DEFAULT NULL,
  `computers` varchar(250) DEFAULT NULL,
  `result6` varchar(250) DEFAULT NULL,
  `total` varchar(500) DEFAULT NULL,
  `percentage` varchar(600) DEFAULT NULL,
  `performance` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `external` */

insert  into `external`(`sname`,`userid`,`branch`,`year`,`sem`,`english`,`result1`,`math1`,`result2`,`math2`,`result3`,`physics`,`result4`,`chemistry`,`result5`,`computers`,`result6`,`total`,`percentage`,`performance`) values ('srisrija','432','CSE','SECOND','2','50','PASS','63','PASS','67','PASS','40','PASS','62','PASS','59','PASS','341','81.19047619047619','EXCELLENT'),('SandeepA','4','CSE','FOURTH','1','55','PASS','60','PASS','61','PASS','65','PASS','57','PASS','70','PASS','368','87.61904761904762','EXCELLENT');

/*Table structure for table `internal` */

DROP TABLE IF EXISTS `internal`;

CREATE TABLE `internal` (
  `sname` varchar(250) DEFAULT NULL,
  `userid` varchar(250) NOT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `year` varchar(250) DEFAULT NULL,
  `sem` varchar(250) DEFAULT NULL,
  `internal` varchar(250) DEFAULT NULL,
  `english` varchar(250) DEFAULT NULL,
  `result1` varchar(250) DEFAULT NULL,
  `math1` varchar(250) DEFAULT NULL,
  `result2` varchar(250) DEFAULT NULL,
  `math2` varchar(250) DEFAULT NULL,
  `result3` varchar(250) DEFAULT NULL,
  `physics` varchar(250) DEFAULT NULL,
  `result4` varchar(250) DEFAULT NULL,
  `chemistry` varchar(250) DEFAULT NULL,
  `result5` varchar(250) DEFAULT NULL,
  `computers` varchar(250) DEFAULT NULL,
  `result6` varchar(250) DEFAULT NULL,
  `total` varchar(250) DEFAULT NULL,
  `percentage` varchar(250) DEFAULT NULL,
  `performance` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `internal` */

insert  into `internal`(`sname`,`userid`,`branch`,`year`,`sem`,`internal`,`english`,`result1`,`math1`,`result2`,`math2`,`result3`,`physics`,`result4`,`chemistry`,`result5`,`computers`,`result6`,`total`,`percentage`,`performance`) values ('srisrija','432','CSE','SECOND','2','1','21','PASS','23','PASS','24','PASS','17','PASS','23','PASS','24','PASS','132','73.33333333333333','GOOD'),('KiranManohar','HA170212','CSE','FIRST','1','1','20','PASS','23','PASS','22','PASS','21','PASS','21','PASS','24','PASS','131','72.77777777777777','GOOD'),('srisrija','432','CSE','SECOND','2','2','23','PASS','21','PASS','22','PASS','20','PASS','23','PASS','23','PASS','132','73.33333333333333','GOOD'),('NarendraYadav','122','ECE','THIRD','1','1','20','PASS','22','PASS','21','PASS','19','PASS','20','PASS','23','PASS','125','69.44444444444444','AVERAGE'),('SriLatha','40','CIVIL','SECOND','2','1','17','PASS','15','PASS','19','PASS','14','FAIL','18','PASS','20','PASS','103','57.22222222222222','BAD'),('SandeepA','4','CSE','FOURTH','1','choose','30','PASS','25','PASS','24','PASS','26','PASS','25','PASS','30','PASS','160','88.88888888888889','EXCELLENT');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `mailid` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `conformpassword` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `phoneno` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `userid` int(45) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `Year` varchar(30) DEFAULT NULL,
  `semister` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`fname`,`lname`,`mailid`,`password`,`conformpassword`,`dob`,`Gender`,`phoneno`,`address`,`userid`,`branch`,`Year`,`semister`) values ('Sandeep','A','sandeep@gmail.com','Sandeep@16','Sandeep@16','16/6/2019','male','7895458965','Andhra Pradesh',4,'CSE','FOURTH','1'),('Sri','Latha','latha90@gmail.com','latha','latha','19/2/1987','male','4','4',40,'CIVIL','SECOND','2'),('Madav','Kumar','ram@gmail.com','madav123','madav123','16/3/2004','male','7894652315','hyd',120,'CSE','FIRST','2'),('Narendra','Yadav','kar@gmail.com','karthi','karthi','16/5/2000','male','7894652315','hyd',122,'ECE','THIRD','1'),('Kiran','Manohar','manohar@gmail.com','manohar123','radha123','18/10/1996','male','9981682219','hyderabad',144,'CSE','FIRST','1'),('uma','kishore','kishore123@gmail.com','uma122','uma123','16/8/1998','male','7791077211','chennai',191,'CSE','THIRD','2'),('sri','ramana','sriramana09@gmail.com','sriram','sriram','14/2/1970','male','9999999999','universe',430,'CIVIL','THIRD','1'),('sri','srija','srija1@gmail.com','srija','srija','18/11/1997','female','7799008866','chennai',432,'CSE','SECOND','2');

/*Table structure for table `uploadfiles` */

DROP TABLE IF EXISTS `uploadfiles`;

CREATE TABLE `uploadfiles` (
  `filename` varchar(250) DEFAULT NULL,
  `filetype` varchar(250) DEFAULT NULL,
  `filesize` varchar(500) DEFAULT NULL,
  `filecontent` varchar(700) DEFAULT NULL,
  `ss` varchar(400) DEFAULT NULL,
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(250) DEFAULT NULL,
  `collegename` varchar(250) DEFAULT NULL,
  `university` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `uploadfiles` */

insert  into `uploadfiles`(`filename`,`filetype`,`filesize`,`filecontent`,`ss`,`sno`,`branchname`,`collegename`,`university`) values ('CSE.pdf','application/pdf','635162','635162','%%EOF',1,'cse','narayana',NULL),('ECE.pdf','application/pdf','789648','789648','%%EOF',2,'ece','narayana',NULL),('Civil_Engineering.pdf','j','j','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\Software Testing LAB Manual.pdf','Software Testing LAB Manual.pdf',3,'civil','Software Testing LAB Manual.pdf','Software Testing LAB Manual.pdf'),('Software Testing LAB Manual.pdf',NULL,NULL,NULL,NULL,4,'Software Testing LAB Manual',NULL,NULL),('Case-Tools-Lab-Manual-IV-CSE.pdf',NULL,NULL,NULL,NULL,5,'Case-Tools-Lab-Manual-IV-CSE',NULL,NULL);

/*Table structure for table `uploadsvu` */

DROP TABLE IF EXISTS `uploadsvu`;

CREATE TABLE `uploadsvu` (
  `collgename` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `university` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `uploadsvu` */

insert  into `uploadsvu`(`collgename`,`city`,`rank`,`university`,`state`,`country`,`path`,`filename`,`sno`) values ('o','o','o','o','o','o','C:\\siva workspace perminent\\University-Hub\\WebContent\\Uploadimage\\muybridge12-hp-p.jpg','muybridge12-hp-p.jpg',1),('k','k','k','k','k','k','C:\\siva workspace perminent\\University-Hub\\WebContent\\SVUUploadimage\\muybridge12-hp-p.jpg','muybridge12-hp-p.jpg',2),('karunaran','chetthisghad','4','himalaya','chenndhigat','isrrail','C:\\siva workspace perminent\\University-Hub\\WebContent\\SVUUploadimage\\library.jpg','library.jpg',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
