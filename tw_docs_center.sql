-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: tw_docs_center
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc` (
  `pk_id` varchar(35) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` mediumtext,
  `type` varchar(45) DEFAULT NULL,
  `author_id` varchar(35) NOT NULL,
  `project_id` varchar(35) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `team_id` varchar(35) DEFAULT NULL,
  `stared` int DEFAULT '0',
  `liked` int DEFAULT '0',
  PRIMARY KEY (`pk_id`),
  UNIQUE KEY `pk_id_UNIQUE` (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc`
--

LOCK TABLES `doc` WRITE;
/*!40000 ALTER TABLE `doc` DISABLE KEYS */;
INSERT INTO `doc` VALUES ('4ee90f6818884e7faf766e68690c56a2','测试1','<p>测试1测试1</p>','测试类型','71022b4908a54243b4ac352003b06950','','2020-03-08 11:10:01','2020-03-08 11:10:01','b907f9ec7c6146d49587ca98f9a60a90',0,0),('5c5a3ab8bea248e0a84d727c5de95966','测试2','<p>测试2测试2测试2测试2</p>','测试类型','8d68826010d54b418fa4192571135bd6','','2020-03-08 11:10:35','2020-03-08 11:10:35','b907f9ec7c6146d49587ca98f9a60a90',0,0),('8b24b5c042d040dbac4ee1efdb6ef23f','测试','<h1>测试</h1><p></p><p><span style=\"font-size:28px\"><span style=\"line-height:3\"><strong>hello world</strong></span></span></p><p></p>','测试类型','efa5a42313ca4f3b9570e9a1c95871bd','','2020-03-07 14:28:24','2020-03-07 14:28:24','b907f9ec7c6146d49587ca98f9a60a90',0,0),('a37056fcacdf4452802aa562a56751d6','测试','<p>测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试</p>','测试类型','efa5a42313ca4f3b9570e9a1c95871bd','','2020-03-06 18:08:20','2020-03-06 18:08:20','b907f9ec7c6146d49587ca98f9a60a90',0,0),('d377cd28211f4320b77047bdc78f7c1d','Springboot技术分享','<p><span style=\"font-size:24px\"><span style=\"line-height:2\"><span style=\"color:#000000\">SpringBoot介绍</span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p><p style=\"text-indent:2em;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\"><span style=\"background-color:#ffffff\"><span style=\"line-height:2\"><span style=\"font-size:14px\"><span style=\"color:#999999\">Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</span></span></span></span></p>','技术分享','efa5a42313ca4f3b9570e9a1c95871bd','','2020-03-10 13:45:19','2020-03-10 13:45:19','b907f9ec7c6146d49587ca98f9a60a90',0,0);
/*!40000 ALTER TABLE `doc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-10 14:50:20
