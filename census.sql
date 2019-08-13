-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: census
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `Year` int(11) NOT NULL,
  `Female` varchar(10) DEFAULT NULL,
  `Male` varchar(10) DEFAULT NULL,
  `Education_level` varchar(50) NOT NULL,
  `Total` float DEFAULT NULL,
  PRIMARY KEY (`Year`,`Education_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1981,'100.00','100.00','All levels',100),(1981,'0.70','2.10','Graduate and above',1.4),(1981,'0.80','2.20','Higher Secondary',1.5),(1981,'75.20','53.10','Illiterate',64.175),(1981,'8.60','14.40','Literate without education level',11.5),(1981,'2.30','5.90','Metriculate/Secondary',4.1),(1981,'4.20','8.40','Middle',6.3),(1981,'0.0','0.0','Non Technical Diploma',0),(1981,'8.10','13.60','Primary',10.85),(1981,'0.10','0.30','Technical Diploma',0.2),(1991,'100.00','100.00','All levels',100),(1991,'1.44','3.40','Graduate and above',2.42),(1991,'1.39','3.18','Higher Secondary',2.285),(1991,'67.83','47.25','Illiterate',57.54),(1991,'8.94','12.53','Literate without education level',10.735),(1991,'3.59','7.57','Metriculate/Secondary',5.58),(1991,'6.55','11.19','Middle',8.87),(1991,'0.06','0.10','Non Technical Diploma',0.08),(1991,'10.09','14.38','Primary',12.64),(1991,'0.11','0.40','Technical Diploma',2.55),(2001,'100.00','100.00','All levels',100),(2001,'2.44','4.80','Graduate and above',3.62),(2001,'2.66','4.62','Higher Secondary',3.64),(2001,'54.85','36.76','Illiterate',45.805),(2001,'14.58','17.40','Literate without education level',15.99),(2001,'5.65','9.62','Metriculate/Secondary',7.635),(2001,'6.91','10.50','Middle',8.705),(2001,'0.03','0.05','Non Technical Diploma',0.04),(2001,'12.73','15.70','Primary',14.215),(2001,'0.15','0.55','Technical Diploma',0.35),(2011,'100.00','100.00','All levels',100),(2011,'3.60','5.90','Graduate and above',4.75),(2011,'4.00','6.30','Higher Secondary',5.15),(2011,'37.70','19.50','Illiterate',28.6),(2011,'17.00','19.20','Literate without education level',18.1),(2011,'7.60','11.20','Metriculate/Secondary',9.4),(2011,'12.00','16.80','Middle',14.4),(2011,'0.20','0.50','Non Technical Diploma',0.35),(2011,'17.70','20.10','Primary',18.9),(2011,'0.20','0.50','Technical Diploma',0.35);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Relationship` varchar(30) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `marital_status` varchar(15) DEFAULT NULL,
  `Education` varchar(20) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL,
  `father_spouse` varchar(30) DEFAULT NULL,
  `Religion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1049,'Naganna L','Male','no. 6, girinivasa,Channapatna_Ramanagra_Karnakata','Head of the Family','12/5/1965','Married','Graduate','Self Employeed','Lingegowda','Hindu'),(1057,'Shanmuk Hubballi','Male','no 433,kittur_Belagum_Karnataka','Head of the Family','1/1/1971','Married','Graduate','Business','Basavaraj','Hindu'),(1063,'Savitha R','Female','no 42,vrb coleny,basaweshwar nagar_bangalore_Karnataka','Head of the Family','19/03/1970','Married','Graduate','IT/BT','Ramachandr','Hindu'),(1066,'Akash M','Male','No 90,Pavitra Nilaya,RR Nagar_Bangalore Rural_Karnataka','Head of the Family','01/07/1989','Married','Graduate','IT/BT','Anandraya','Hindu'),(1071,'Shivanna','Male','Bm Road,Ramanagar_Ramanagar_Karnataka','Head of the Family','14/5/1952','Married','Graduate','Central governament','Bayregowda','Hindu'),(1075,'Umesh N','Male','Kittur_Belagavi_Karnataka','Head of the Family','25/05/1973','Married','Graduate','State governament','Basavaraj','Hindu'),(1079,'Isha','Female','Mysore_Mysore_Karnataka','Head of the Family','1/1/1971','Single','Graduate','IT/BT','Basavaraj','Hindu');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family1`
--

DROP TABLE IF EXISTS `family1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family1` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Relationship` varchar(30) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `marital_status` varchar(15) DEFAULT NULL,
  `Education` varchar(20) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL,
  `father_spouse` varchar(30) DEFAULT NULL,
  `Religion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Name`),
  KEY `ID` (`ID`),
  CONSTRAINT `family1_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `family` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family1`
--

LOCK TABLES `family1` WRITE;
/*!40000 ALTER TABLE `family1` DISABLE KEYS */;
INSERT INTO `family1` VALUES (1049,'Girja','Female','no. 6, girinivasa,Channapatna_Ramanagra_Karnakata','Spouse','28/10/1975','Married','Higher Secondary','Self Employeed','Naganna','Hindu'),(1049,'Punitha','Female','no. 6, girinivasa,Channapatna_Ramanagra_Karnakata','Son/Daughter','1/5/96','Single','Graduate','Student','Naganna','Hindu'),(1057,'Manjula','Female','no 433,kittur_Belagum_Karnataka','Spouse','23/5/1977','Married','Higher Secondary','Self Employeed','Shanmuk','Hindu'),(1057,'Yashoda','Female','no 433,kittur_Belagum_Karnataka','Son/Daughter','30/06/1996','Single','Graduate','Student','Shanmuk','Hindu'),(1063,'Ananya','Female','no 42,vrb coleny,basaweshwar nagar_bangalore_Karnataka','Son/Daughter','21/4/1997','Single','Graduate','Student','Harish','Hindu'),(1066,'Navyashree','Female','No 90,Pavitra Nilaya,RR Nagar_Bangalore Rural_Karnataka','Spouse','04/04/1994','Married','Graduate','Student','Akash M','Hindu'),(1066,'Sumedh A','Male','No 90,Pavitra Nilaya,RR Nagar_Bangalore Rural_Karnataka','Son/Daughter','01/06/2016','Single','Primary School','Student','Akash M','Hindu'),(1071,'Bhagyamma','Female','Bm Road,Ramanagar_Ramanagar_Karnataka','Spouse','23/06/1959','Married','Higher Secondary','Self Employeed','Shivanna','Hindu'),(1075,'Pooja N','Female','Kittur_Belagavi_Karnataka','Son/Daughter','15/11/1996','Single','Graduate','IT/BT','Umesh N','Hindu'),(1079,'Punitha Gowda','Female','no2, Girinivasa, 6th cross, raja kempegowda badawane_bangalore_Karnataka','Sibling','30/06/1996','Single','Illiterate','Self Employeed','Ramachandr','Hindu');
/*!40000 ALTER TABLE `family1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_employment`
--

DROP TABLE IF EXISTS `female_employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_employment` (
  `Year` int(11) NOT NULL,
  `Government` varchar(20) NOT NULL,
  `Female` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  PRIMARY KEY (`Year`,`Government`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_employment`
--

LOCK TABLES `female_employment` WRITE;
/*!40000 ALTER TABLE `female_employment` DISABLE KEYS */;
INSERT INTO `female_employment` VALUES (1981,'Central government',0.14,3.19),(1981,'Local bodies',0.41,2.4),(1981,'State government',0.65,5.67),(1981,'Total',1.2,10.91),(1991,'Central government',0.21,3.4),(1991,'Local bodies',0.55,2.26),(1991,'State government',0.81,6.28),(1991,'Total',1.79,12.64),(2001,'Central government',0.26,3.26),(2001,'Local bodies',0.59,2.26),(2001,'State government',1.41,7.42),(2001,'Total',2.26,12.94),(2011,'Central government',0.24,2.8),(2011,'Local bodies',0.59,2.13),(2011,'State government',1.51,7.2),(2011,'Total',2.37,12.14);
/*!40000 ALTER TABLE `female_employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fid`
--

DROP TABLE IF EXISTS `fid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fid` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fid`
--

LOCK TABLES `fid` WRITE;
/*!40000 ALTER TABLE `fid` DISABLE KEYS */;
INSERT INTO `fid` VALUES (1000),(1001),(1002),(1003),(1004),(1005),(1006),(1007),(1008),(1009),(1010),(1011),(1012),(1013),(1014),(1015),(1016),(1017),(1018),(1019),(1020),(1021),(1022),(1023),(1024),(1025),(1026),(1027),(1028),(1029),(1030),(1031),(1032),(1033),(1034),(1035),(1036),(1037),(1038),(1039),(1040),(1041),(1042),(1043),(1044),(1045),(1046),(1047),(1048),(1049),(1050),(1051),(1052),(1053),(1054),(1055),(1056),(1057),(1058),(1059),(1060),(1061),(1062),(1063),(1064),(1065),(1066),(1067),(1068),(1069),(1070),(1071),(1072),(1073),(1074),(1075),(1076),(1077),(1078),(1079),(1080),(1081);
/*!40000 ALTER TABLE `fid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officer1`
--

DROP TABLE IF EXISTS `officer1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officer1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `homecity` varchar(15) DEFAULT NULL,
  `workcity` varchar(15) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officer1`
--

LOCK TABLES `officer1` WRITE;
/*!40000 ALTER TABLE `officer1` DISABLE KEYS */;
INSERT INTO `officer1` VALUES (1008,'Yashoda','Female','30/06/1996','Kittur','Bangalore',1154643468,'yashodash99@gmail.com','yashu777'),(1010,'Punitha Gowda','Female','01/05/1996','Channapatna','Bangalore',5275242450,'punithagowda79@gmail.com','welcome123*'),(1011,'Nayana','Female','05/04/1996','Kumuta','Bangalore',7893245252,'nayana@gmail.com','welcome123*'),(1013,'Anu','Female','30/06/1996','Bangalore','Mysore',7865745637,'anu@gmail.com','anu777');
/*!40000 ALTER TABLE `officer1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oid`
--

DROP TABLE IF EXISTS `oid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oid` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oid`
--

LOCK TABLES `oid` WRITE;
/*!40000 ALTER TABLE `oid` DISABLE KEYS */;
INSERT INTO `oid` VALUES (1000),(1001),(1002),(1003),(1004),(1005),(1006),(1007),(1008),(1009),(1010),(1011),(1012),(1013);
/*!40000 ALTER TABLE `oid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `population1`
--

DROP TABLE IF EXISTS `population1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `population1` (
  `Year` int(11) NOT NULL,
  `Region` varchar(10) NOT NULL,
  `Tmale` float DEFAULT NULL,
  `Tfemale` float DEFAULT NULL,
  `Person` float DEFAULT NULL,
  `Sex_ratio` float DEFAULT NULL,
  `Male` float DEFAULT NULL,
  `Female` float DEFAULT NULL,
  PRIMARY KEY (`Year`,`Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `population1`
--

LOCK TABLES `population1` WRITE;
/*!40000 ALTER TABLE `population1` DISABLE KEYS */;
INSERT INTO `population1` VALUES (1981,'All',353.57,329.96,683.33,934,51.74,48.26),(1981,'Rural',268.5,255.37,523.87,951,51.25,48.75),(1981,'Urban',84.87,74.59,159.46,879,53.22,46.78),(1991,'All',439.36,407.06,846.42,927,51.91,48.09),(1991,'Rural',324.45,304.41,628.86,938,51.59,48.41),(1991,'Urban',114.91,102.65,217.56,894,52.84,47.61),(2001,'All',532.16,496.45,1028.6,933,51.74,48.26),(2001,'Rural',381.67,360.95,742.62,946,51.39,48.61),(2001,'Urban',150.55,135.57,286.12,901,52.62,47.38),(2011,'All',623.72,586.47,1210.19,940,51.37,48.46),(2011,'Rural',427.92,405.17,833.09,947,51.37,48.46),(2011,'Urban',195.8,181.3,377.1,926,51.92,48.08);
/*!40000 ALTER TABLE `population1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unemployment_rate`
--

DROP TABLE IF EXISTS `unemployment_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unemployment_rate` (
  `Year` int(11) NOT NULL,
  `Age_group` varchar(20) NOT NULL,
  `Region` varchar(10) NOT NULL,
  `Male` float DEFAULT NULL,
  `Female` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  PRIMARY KEY (`Year`,`Age_group`,`Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unemployment_rate`
--

LOCK TABLES `unemployment_rate` WRITE;
/*!40000 ALTER TABLE `unemployment_rate` DISABLE KEYS */;
INSERT INTO `unemployment_rate` VALUES (1981,'15-29','All',16.9,18.3,17.6),(1981,'15-29','Rural',4.7,2.8,3.75),(1981,'15-29','Urban',12.2,15.5,13.85),(1981,'30-44','All',1.9,2.6,2.25),(1981,'30-44','Rural',0.5,0.5,0.5),(1981,'30-44','Urban',1.4,2.1,1.75),(1981,'45-59','All',0.9,1.1,1),(1981,'45-59','Rural',0.2,0.4,0.3),(1981,'45-59','Urban',0.7,0.7,0.7),(1981,'60 and Above','All',0.8,9.7,5.25),(1981,'60 and Above','Rural',0.2,0.6,0.4),(1981,'60 and Above','Urban',0.6,9.1,4.85),(1981,'Total','All',8,8.3,8.15),(1981,'Total','Rural',2.1,1.4,1.75),(1981,'Total','Urban',5.9,6.9,6.4),(1991,'15-29','All',15.6,22.6,19.1),(1991,'15-29','Rural',4.8,3.2,4),(1991,'15-29','Urban',10.8,19.4,15.1),(1991,'30-44','All',1.4,3.2,2.35),(1991,'30-44','Rural',0.4,0.5,0.45),(1991,'30-44','Urban',1.1,2.7,1.9),(1991,'45-59','All',0.4,0.5,0.45),(1991,'45-59','Rural',0.1,0.1,0.1),(1991,'45-59','Urban',0.3,0.4,0.35),(1991,'60 and Above','All',0.3,0.6,0.45),(1991,'60 and Above','Rural',0,0.2,0.1),(1991,'60 and Above','Urban',0.3,0.4,0.35),(1991,'Total','All',6.5,9.7,8.1),(1991,'Total','Rural',2,1.4,1.7),(1991,'Total','Urban',4.5,8.3,6.4),(2001,'15-29','All',13,18.6,15.8),(2001,'15-29','Rural',3.4,5.2,4.3),(2001,'15-29','Urban',9.6,13.4,11.5),(2001,'30-44','All',1.3,1.5,1.4),(2001,'30-44','Rural',0.4,0.3,0.35),(2001,'30-44','Urban',0.9,1.2,1.05),(2001,'45-59','All',0.7,0,0.35),(2001,'45-59','Rural',0.1,0,0.05),(2001,'45-59','Urban',0.6,0,0.3),(2001,'60 and Above','All',0,0,0),(2001,'60 and Above','Rural',0,0,0),(2001,'60 and Above','Urban',0,0,0),(2001,'Total','All',5.4,6.9,6.15),(2001,'Total','Rural',1.3,2,1.65),(2001,'Total','Urban',4.1,4.9,4.5),(2011,'15-29','All',13.4,24,18.7),(2011,'15-29','Rural',5.5,6.6,6.05),(2011,'15-29','Urban',7.9,17.4,12.65),(2011,'30-44','All',1,3.5,2.25),(2011,'30-44','Rural',0.2,1,0.6),(2011,'30-44','Urban',0.8,2.5,1.65),(2011,'45-59','All',0.6,0.8,0.7),(2011,'45-59','Rural',0.2,0.2,0.2),(2011,'45-59','Urban',0.4,0.6,0.5),(2011,'60 and Above','All',0.3,0.5,0.4),(2011,'60 and Above','Rural',0,0.5,0.25),(2011,'60 and Above','Urban',0.3,0,0.15),(2011,'Total','All',5.1,9.4,7.25),(2011,'Total','Rural',2,2.4,2.2),(2011,'Total','Urban',3.1,7,5.05);
/*!40000 ALTER TABLE `unemployment_rate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-15 12:31:56
