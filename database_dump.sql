-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: sql103.epizy.com    Database: thesis_census
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_admin_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` int DEFAULT '0',
  `status` int DEFAULT '0',
  `barangay_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@psu.com','$2a$12$9lBHW66UKE66D9g8hHzA4O8Odw3nmeb3rZ3Cj/pi8P1rFOShAuiNe',NULL,NULL,NULL,'2021-12-22 14:20:10.703059','2021-12-26 10:46:06.711640','ADMIN',0,0,NULL),(2,'ambonaobhw@cal.com','$2a$12$ojjh9yHF0Krg.FozHy.mTu0CSyGR79XzxslpepN3rWDHZcY6FEdZi',NULL,NULL,NULL,'2021-12-26 06:11:00.488062','2021-12-26 06:30:37.681386','AMBONAO',1,0,8),(3,'ambuetelbhw@cal.com','$2a$12$rm5OfZO1ArI2UdaktClzaeV409N7.MENyVM37Vi.SKuJmzXJzjDXa',NULL,NULL,NULL,'2021-12-26 06:32:06.832691','2021-12-26 06:32:06.832691','AMBUETEL',1,0,9),(4,'banaoangbhw@cal.com','$2a$12$2KZaKOqgElyXBqbznhhUEuqLCVcYUUki2d6AQp.49dQeIeaT2xMMe',NULL,NULL,NULL,'2021-12-26 06:33:40.566607','2021-12-26 06:33:40.566607','BANAOANG',1,0,10),(5,'buedbhw@cal.com','$2a$12$UiqXcnE8YbPCmplQo.nSD.ukW5DpetfdgUt1aWFWzh/h0W/Jr6bHy',NULL,NULL,NULL,'2021-12-26 06:36:08.880399','2021-12-26 06:36:08.880399','BUED',1,0,11),(6,'buenlagbhw@cal.com','$2a$12$IgZ5yRMscLDALqBI.nHMJeFC5i5xsLaiIc8t3lutss8t.NZwdzkYu',NULL,NULL,NULL,'2021-12-26 06:37:10.615299','2021-12-26 06:37:10.615299','BUENLAG',1,0,12),(7,'cabilocaanbhw@cal.com','$2a$12$uFAB4FwvkRzj8Y//4FYBMuGiTYjsJ7sXufK0eJBmQ5pPztue8RRm2',NULL,NULL,NULL,'2021-12-26 06:38:01.222136','2021-12-26 06:38:01.222136','CABILOCAAN',1,0,13),(8,'dinalaoanbhw@cal.com','$2a$12$8pbCUqvhm/8r/o4rcysep.SdemZG1DE/DPL2kqDuKZLNNUpku9Voi',NULL,NULL,NULL,'2021-12-26 06:38:48.706379','2021-12-26 06:38:48.706379','DINALAOAN',1,0,14),(9,'doyongbhw@cal.com','$2a$12$6JYvnKg2ueWxxWZkVVB1EuqOseh61bJKEoaS0dDpFJ8oWrqwaEp8S',NULL,NULL,NULL,'2021-12-26 06:39:23.012776','2021-12-26 06:39:23.012776','DOYONG',1,0,15),(10,'gabonbhw@cal.com','$2a$12$Sza0bJQY8p3Vdws1ua.EveeqLGxRjFRH2ij6qjOsFGDGhFhS.OoFS',NULL,NULL,NULL,'2021-12-26 06:40:01.210650','2021-12-26 06:40:01.210650','GABON',1,0,16),(11,'lasipbhw@cal.com','$2a$12$jaCOemGm9sNjexMMhoNEFOXPF03TCaFnpbX/zaBVzShUARoAhbedK',NULL,NULL,NULL,'2021-12-26 06:40:37.686290','2021-12-26 06:40:37.686290','LASIP',1,0,17),(12,'longosbhw@cal.com','$2a$12$6de8qaOLuDsjVRP/coMnKuxpEnq0gHUKv8seOjU0mmSPTubQ9Uije',NULL,NULL,NULL,'2021-12-26 06:41:20.208909','2021-12-26 06:41:20.208909','LONGOS',1,0,18),(13,'lumbangbhw@cal.com','$2a$12$8ATds45gJrtsaa.DZ1evfeEziL2idX90deR7RDg6uhsMYaZw/MyCS',NULL,NULL,NULL,'2021-12-26 06:42:02.021603','2021-12-26 06:42:02.021603','LUMBANG',1,0,19),(14,'macabitobhw@cal.com','$2a$12$swkOMAveqnwvnM71wpsm4uXhAcKiIZmPS2jrmp2t5N0HnrtSZ4k1K',NULL,NULL,NULL,'2021-12-26 06:42:37.704730','2021-12-26 06:42:37.704730','MACABITO',1,0,20),(15,'malabagobhw@cal.com','$2a$12$gNex3gB/LXmRjPZtr/ZgCuH3A1mlVvVVpPxRh4eMNkpVZYhP8uxnq',NULL,NULL,NULL,'2021-12-26 06:43:14.226173','2021-12-26 06:43:14.226173','MALABAGO',1,0,21),(16,'mancupbhw@cal.com','$2a$12$DwcxQwaUQtn/caqoRoVU/OA9tp7B71cAlzamsZ8hplgXfF8xft.M2',NULL,NULL,NULL,'2021-12-26 06:43:56.657927','2021-12-26 06:43:56.657927','MANCUP',1,0,22),(17,'nagsaingbhw@cal.com','$2a$12$h1UYI2NcPBeBU.P13rL8kOAHSLRbumOM/pZs/MQ5io/IYPUopbmyS',NULL,NULL,NULL,'2021-12-26 06:44:31.720178','2021-12-26 06:44:31.720178','NAGSAING',1,0,23),(18,'nalsianbhw@cal.com','$2a$12$dTaFjp1GjzbSeDTNJb5ePO5DsyhQu2q0wA6x4Fni1FLoD6INr4QMy',NULL,NULL,NULL,'2021-12-26 06:45:04.085463','2021-12-26 06:45:04.085463','NALSIAN',1,0,24),(19,'poblacioneastbhw@cal.com','$2a$12$GBm7C/DyE4TPVL0EduVgSu.cxYpfyASxKjJTLvklc.LwNoTYNqKSi',NULL,NULL,NULL,'2021-12-26 06:46:06.004028','2021-12-26 06:46:51.019732','POBLACION EAST',1,0,25),(20,'poblacionwestbhw@cal.com','$2a$12$UIsOOim52xqEEwuhwYbpWebrXzfZFPHeGerPD7UJvW6CaM7Oi1fKG',NULL,NULL,NULL,'2021-12-26 06:47:46.521589','2021-12-26 06:47:46.521589','POBLACION WEST',1,0,26),(21,'quesbanbhw@cal.com','$2a$12$filLRK3KCWlijxgJTuMPR.zydWGgQiWShiW795T7sckz4VFLvkutK',NULL,NULL,NULL,'2021-12-26 06:48:37.569984','2021-12-26 06:48:37.569984','QUESBAN',1,0,27),(22,'sanmiguelbhw@cal.com','$2a$12$25NjwtuAV4a91ura9Q/mXu.3zKrdpo/sVO0IbN112cFlX.JydVd/e',NULL,NULL,NULL,'2021-12-26 06:49:15.611656','2021-12-26 06:49:15.611656','SAN MIGUEL',1,0,28),(23,'sanvicentebhw@cal.com','$2a$12$uqg3kBrfqtUt.jcNqo1.DegFU0vAW4zUsKdgmyXAWnjmPn1CQdbIW',NULL,NULL,NULL,'2021-12-26 06:50:02.181567','2021-12-26 06:50:02.181567','SAN VICENTE',1,0,29),(24,'songkoybhw@cal.com','$2a$12$FD8Oh/RkWrJHMVYnoW6nHe543PL9HzgTrNoVO87mS71uvubh.vnIm',NULL,NULL,NULL,'2021-12-26 06:50:40.702946','2021-12-26 06:50:40.702946','SONGKOY',1,0,30),(25,'talibaewbhw@cal.com','$2a$12$IV/gkVjwdOiVny2vKTZmLegCMAR80.1zoMYaWk.L/p0qXJ5eIH2ZG',NULL,NULL,NULL,'2021-12-26 06:51:29.819207','2021-12-26 06:51:29.819207','TALIBAEW',1,0,31);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-12-22 14:16:10.954666','2021-12-22 14:16:10.954666');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barangays`
--

DROP TABLE IF EXISTS `barangays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barangays` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barangays`
--

LOCK TABLES `barangays` WRITE;
/*!40000 ALTER TABLE `barangays` DISABLE KEYS */;
INSERT INTO `barangays` VALUES (8,'AMBONAO',0,'2021-12-26 06:19:17.000608','2021-12-26 06:19:17.000608'),(9,'AMBUETEL',0,'2021-12-26 06:22:32.168126','2021-12-26 06:22:32.168126'),(10,'BANAOANG',0,'2021-12-26 06:23:22.666428','2021-12-26 06:23:22.666428'),(11,'BUED',0,'2021-12-26 06:23:40.182247','2021-12-26 06:23:40.182247'),(12,'BUENLAG',0,'2021-12-26 06:24:00.434648','2021-12-26 06:24:00.434648'),(13,'CABILOCAAN',0,'2021-12-26 06:24:21.422118','2021-12-26 06:24:21.422118'),(14,'DINALAOAN',0,'2021-12-26 06:25:00.717217','2021-12-26 06:25:00.717217'),(15,'DOYONG',0,'2021-12-26 06:25:16.770653','2021-12-26 06:25:16.770653'),(16,'GABON',0,'2021-12-26 06:25:28.091239','2021-12-26 06:25:28.091239'),(17,'LASIP',0,'2021-12-26 06:25:54.636562','2021-12-26 06:25:54.636562'),(18,'LONGOS',0,'2021-12-26 06:26:07.092956','2021-12-26 06:26:07.092956'),(19,'LUMBANG',0,'2021-12-26 06:26:18.189749','2021-12-26 06:26:18.189749'),(20,'MACABITO',0,'2021-12-26 06:26:27.707760','2021-12-26 06:26:27.707760'),(21,'MALABAGO',0,'2021-12-26 06:26:39.239698','2021-12-26 06:26:39.239698'),(22,'MANCUP',0,'2021-12-26 06:26:49.318591','2021-12-26 06:26:49.318591'),(23,'NAGSAING',0,'2021-12-26 06:27:02.283056','2021-12-26 06:27:02.283056'),(24,'NALSIAN',0,'2021-12-26 06:27:12.199272','2021-12-26 06:27:12.199272'),(25,'POBLACION EAST',0,'2021-12-26 06:27:42.659997','2021-12-26 06:27:42.659997'),(26,'POBLACION WEST',0,'2021-12-26 06:27:51.312794','2021-12-26 06:27:51.312794'),(27,'QUESBAN',0,'2021-12-26 06:28:07.081577','2021-12-26 06:28:07.081577'),(28,'SAN MIGUEL',0,'2021-12-26 06:28:18.208519','2021-12-26 06:28:18.208519'),(29,'SAN VICENTE',0,'2021-12-26 06:28:28.099196','2021-12-26 06:28:28.099196'),(30,'SONGKOY',0,'2021-12-26 06:28:38.148751','2021-12-26 06:28:38.148751'),(31,'TALIBAEW',0,'2021-12-26 06:28:49.229639','2021-12-26 06:28:49.229639');
/*!40000 ALTER TABLE `barangays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `province_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cities_on_province_id` (`province_id`),
  CONSTRAINT `fk_rails_ea36d40e0b` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `household_people`
--

DROP TABLE IF EXISTS `household_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `household_people` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `migrated` varchar(255) DEFAULT NULL,
  `highest_education` varchar(255) DEFAULT NULL,
  `school_attended` varchar(255) DEFAULT NULL,
  `osy` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `household_id` int DEFAULT NULL,
  `can_read` varchar(255) DEFAULT NULL,
  `employment` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `type_of_work` varchar(255) DEFAULT NULL,
  `family_income` int DEFAULT NULL,
  `dialect` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `household_people`
--

LOCK TABLES `household_people` WRITE;
/*!40000 ALTER TABLE `household_people` DISABLE KEYS */;
INSERT INTO `household_people` VALUES (1,'1','DELA CRUZ, ADRIANA MAURA P.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 07:02:51.118144','2021-12-26 07:02:51.118144',1,'Yes','N/A','Government','Part Time',10000,'Pangasinan','Roman Catholic'),(2,'2','DELA CRUZ, JONALYN MARIE P.','21','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 07:05:51.137368','2021-12-26 07:05:51.137368',1,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(3,'1','PARIS, VANESSA MAE G.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 07:09:24.484958','2021-12-26 07:09:24.484958',2,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(4,'1','VINOYA, ANGELA DG.','22','Female','FILIPINO','Single','Yes','College Student','Public','No','2021-12-26 07:14:49.599326','2021-12-26 07:14:49.599326',3,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(5,'1','PEREZ, RAFAEL JR. L.','22','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 07:18:58.036436','2021-12-26 07:18:58.036436',4,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(6,'1','PARIS, MARVILYN C.','19','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 07:24:04.921659','2021-12-26 07:24:04.921659',5,'Yes','N/A','Government','Part Time',0,'Pangasinan','Christian'),(7,'1','CALIMLIM, MARK VINCENT V.','21','Male','FILIPINO','Single','No','College Graduate','Private','No','2021-12-26 07:30:12.853082','2021-12-26 07:30:12.853082',6,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(8,'1','GANGAT, MARK JINDER R.','22','Male','FILIPINO','Single','No','College Graduate','Private','No','2021-12-26 07:33:43.954567','2021-12-26 07:33:43.954567',7,'Yes','','Government','Part Time',0,'Pangasinan','Christian'),(9,'1','CALAUNAN, RANGIE A.','23','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 07:36:48.798447','2021-12-26 07:36:48.798447',8,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(10,'1','JOSE, VANIX ANN LAURICE M.','22','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 07:39:52.328680','2021-12-26 07:39:52.328680',9,'Yes','N/A','Government','Part Time',0,'Pangasinan','Latter Day Saints'),(11,'1','RIZA','37','Female','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 08:04:56.909229','2021-12-26 08:04:56.909229',10,'Yes','N/A','Private','Full Time',10000,'Pangasinan','Roman Catholic'),(12,'1','CASPILLAN, MARY VICTORIA H.','25','Female','FILIPINO','Single','No','College Graduate','Public','No','2021-12-26 08:14:38.164952','2021-12-26 08:14:38.164952',11,'Yes','PROFESSIONAL','Government','Full Time',50000,'Pangasinan','Roman Catholic'),(13,'1','CORPUZ, JOHN PAUL V.','22','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 08:17:44.623250','2021-12-26 08:17:44.623250',12,'Yes','N/A','Government','Part Time',0,'Pangasinan','Christian'),(14,'1','ORTIZ, RENZO F.','27','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 08:20:18.846406','2021-12-26 08:20:18.846406',13,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(15,'1','HILOMEN, JENICA A.','27','Female','FILIPINO','Single','No','College Graduate','Private','No','2021-12-26 08:23:45.569087','2021-12-26 08:23:45.569087',14,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(16,'1','NUNEZ, KRISTA BEA B.','21','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 08:28:05.046862','2021-12-26 08:28:05.046862',15,'Yes','LABOR','Private','Full Time',6000,'Pangasinan','Roman Catholic'),(17,'1','LAYNO, CHRISTIAN C.','22','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 08:31:07.533334','2021-12-26 08:31:07.533334',16,'Yes','N/A','Government','Part Time',0,'Pangasinan','Christian'),(18,'1','ENRIQUEZ, FRANCIS C.','21','Male','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 08:35:07.336580','2021-12-26 08:35:07.336580',17,'Yes','VEBDOR','Private','Full Time',10000,'Pangasinan','Roman Catholic'),(19,'1','CARINO, ABEGAIL B.','22','Female','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 08:40:05.048718','2021-12-26 08:40:05.048718',18,'Yes','N/A','Government','Part Time',0,'Pangasinan','Jehovah\'s Witness'),(20,'1','NUNEZ, LEE ANN C.','29','Female','FILIPINO','Single','No','College Graduate','Public','No','2021-12-26 08:43:53.502040','2021-12-26 08:43:53.502040',19,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(21,'1','CARCHA, RAFAEL M.','22','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 08:49:36.694548','2021-12-26 08:49:36.694548',20,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(22,'1','DIOLAZO, ANTONETTE E.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 08:53:31.560925','2021-12-26 08:53:31.560925',21,'Yes','LABOR','Private','Full Time',8000,'Pangasinan','Roman Catholic'),(23,'1','MENDOZA, STEPHANIE P.','22','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 08:56:06.280533','2021-12-26 08:56:06.280533',22,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(24,'1','PARAYNO, ANGELINE D.','20','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 08:58:23.283166','2021-12-26 08:58:23.283166',23,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(25,'1','CASTRO, EDUARDO G.','22','Male','FILIPINO','Single','Yes','College Student','Private','No','2021-12-26 09:01:28.159960','2021-12-26 09:01:28.159960',24,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(26,'1','DELOS SANTOS, JOMARI I.','21','Male','FILIPINO','Single','No','College Graduate','Private','No','2021-12-26 09:07:01.739530','2021-12-26 09:07:01.739530',25,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(27,'1','MINGUA, PAULA M.','25','Female','FILIPINO','Married','No','High School Graduate','Private','No','2021-12-26 09:09:46.580245','2021-12-26 09:09:46.580245',26,'Yes','N/A','Government','Part Time',0,'Pangasinan','Iglesia ni Cristo'),(28,'1','FERNANDEZ, MARK WEIN C.','23','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 09:12:11.159192','2021-12-26 09:12:11.159192',27,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(29,'1','ROSARIO, JOSHUA A.','22','Male','FILIPINO','Single','No','College Graduate','Private','No','2021-12-26 09:15:07.526590','2021-12-26 09:15:07.526590',28,'Yes','N/A','Government','Part Time',0,'Pangasinan','Christian'),(30,'1','FERRER, JESSA S.','22','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 09:19:02.604791','2021-12-26 09:19:02.604791',29,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(31,'1','ACOSTA, RALSIE BEA G.','21','Female','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 09:24:42.642860','2021-12-26 09:24:42.642860',30,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(32,'1','DE GUZMAN, MARJON M.','21','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 09:29:17.999459','2021-12-26 09:29:17.999459',31,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(33,'1','OFICIAR, DEXTHER  DG.','22','Male','FILIPINO','Married','No','High School Graduate','Public','No','2021-12-26 09:32:19.432446','2021-12-26 09:32:19.432446',32,'Yes','N/A','Government','Part Time',NULL,'Pangasinan','Roman Catholic'),(34,'1','AZARCON, JOSE DG.','23','Male','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 09:35:39.485798','2021-12-26 09:35:39.485798',33,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(35,'1','ESPIRITU, JUSTINE JOHN S.','21','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 09:38:53.011025','2021-12-26 09:38:53.011025',34,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(36,'1','BERNARDINO, BERNADETTE R.','25','Female','FILIPINO','Single','No','College Graduate','Public','No','2021-12-26 09:41:37.000051','2021-12-26 09:41:37.000051',35,'Yes','PROFESSIONAL','Private','Full Time',16000,'Pangasinan','Roman Catholic'),(37,'1','DE VERA, CHRISTIAN J.','22','Male','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 09:45:30.296815','2021-12-26 09:45:30.296815',36,'Yes','RETAIL','Private','Full Time',10000,'Pangasinan','Roman Catholic'),(38,'1','BENITO, VINA ANDREA T.','23','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 09:49:04.424447','2021-12-26 09:49:04.424447',37,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(39,'1','MONSAYAC, JULIO MANUEL B.','22','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 09:52:09.332635','2021-12-26 09:52:09.332635',38,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(40,'1','DE VERA, RONALYN C.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 09:55:20.537584','2021-12-26 09:55:20.537584',39,'Yes','VENDOR','Private','Part Time',5000,'Pangasinan','Roman Catholic'),(41,'1','JUNIO, JULIUS JAY P.','38','Male','FILIPINO','Married','No','High School Graduate','Public','No','2021-12-26 09:59:20.812408','2021-12-26 09:59:20.812408',40,'Yes','LABOR','Private','Full Time',10000,'Pangasinan','Roman Catholic'),(42,'1','USON, PRINCESS ARBIE S.','21','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 10:03:32.703410','2021-12-26 10:03:32.703410',41,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(43,'1','LOPEZ, DARWIN JAMES D.','22','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 10:06:10.301502','2021-12-26 10:06:10.301502',42,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(44,'1','NAVARRO, KAYLA A.','22','Female','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 10:09:29.800402','2021-12-26 10:09:29.800402',43,'Yes','RETAIL','Private','Full Time',6000,'Pangasinan','Roman Catholic'),(45,'1',' MURLA, ROMELYN L.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 10:11:36.576362','2021-12-26 10:11:36.576362',44,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(46,'1','ROSARIO, GERALD A.','22','Male','FILIPINO','Single','No','College Student','Private','No','2021-12-26 10:20:27.287087','2021-12-26 10:20:27.287087',45,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(47,'1','ORIENZA, RENSLY C.','22','Male','FILIPINO','Single','No','College Student','Public','No','2021-12-26 10:28:13.972150','2021-12-26 10:28:13.972150',46,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(48,'1','VISPERAS, SHEILA MARIE N.','22','Female','FILIPINO','Single','No','College Student','Public','No','2021-12-26 10:30:49.539576','2021-12-26 10:30:49.539576',47,'Yes','N/A','Government','Part Time',0,'Pangasinan','Roman Catholic'),(49,'1','CANLAS, JASMIN T.','22','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 10:33:48.198863','2021-12-26 10:33:48.198863',48,'Yes','RETAIL','Private','Full Time',5000,'Pangasinan','Roman Catholic'),(50,'1','AGUSTIN, JAYSON D.','21','Male','FILIPINO','Single','No','High School Graduate','Public','No','2021-12-26 10:37:29.408876','2021-12-26 10:37:29.408876',49,'Yes','LABOR','Private','Full Time',6000,'Pangasinan','Roman Catholic'),(51,'1','GARCIA, RHEA MAE C.','22','Female','FILIPINO','Single','No','College Student','Private','No','2021-12-26 10:40:13.592724','2021-12-26 10:40:13.592724',50,'Yes','LABOR','Private','Full Time',10000,'Tagalog','Latter Day Saints');
/*!40000 ALTER TABLE `household_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `households`
--

DROP TABLE IF EXISTS `households`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `households` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `barangay_id` bigint NOT NULL,
  `sitio` varchar(255) DEFAULT NULL,
  `house_no` varchar(255) DEFAULT NULL,
  `date_of_survey` date DEFAULT NULL,
  `informant` varchar(255) DEFAULT NULL,
  `surveyed_by` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `house` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `house_type` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `electricity` varchar(255) DEFAULT NULL,
  `telecommunication` varchar(255) DEFAULT NULL,
  `toilet_facilities` varchar(255) DEFAULT NULL,
  `refuse_disposal` varchar(255) DEFAULT NULL,
  `fuel` varchar(255) DEFAULT NULL,
  `water_supply` varchar(255) DEFAULT NULL,
  `housing_risk_factor` varchar(255) DEFAULT NULL,
  `business` varchar(255) DEFAULT NULL,
  `floor_area` varchar(255) DEFAULT NULL,
  `number_of_employees` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_households_on_barangay_id` (`barangay_id`),
  CONSTRAINT `fk_rails_494f060d31` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `households`
--

LOCK TABLES `households` WRITE;
/*!40000 ALTER TABLE `households` DISABLE KEYS */;
INSERT INTO `households` VALUES (1,19,'SAGOR','#319','2021-12-26','LANI PARIS','LANI PARIS',0,'2021-12-26 06:58:07.118945','2021-12-26 07:15:47.250681','owned','owned','Single','Concrete','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(2,19,'SAGOR','#318','2021-12-26','LANI PARIS','LANI PARIS',0,'2021-12-26 07:08:37.308694','2021-12-26 07:15:28.549356','caretaker','caretaker','Single','Concrete','DECORP','None','Water Sealed','Burning','Wood','Public shallow well','Others','N/A','N/A',0),(3,19,'CENTRO','#89','2021-12-26','LANI PARIS','LANI PARIS',0,'2021-12-26 07:14:01.722330','2021-12-26 07:14:01.722330','owned','owned','Two Storey','Mixed','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(4,19,'ARCO','#21','2021-12-26','LANI PARIS','LANI PARIS',0,'2021-12-26 07:17:44.707553','2021-12-26 07:17:44.707553','owned','owned','Single','Concrete','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(5,19,'SAGOR','#219','2021-12-26','LANI PARIS','LANI PARIS',0,'2021-12-26 07:23:19.819008','2021-12-26 07:23:19.819008','owned','owned','Two Storey','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(6,22,'PUROK 4','#28','2021-12-26','VICKY CALIMLIM','VICKY CALIMLIM',0,'2021-12-26 07:29:25.153406','2021-12-26 07:56:18.234784','owned','owned','Two Storey','Concrete','DECORP','PLDT','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(7,22,'CENTRO','#98','2021-12-26','VICKY CALIMLIM','VICKY CALIMLIM',0,'2021-12-26 07:32:30.020326','2021-12-26 07:40:55.636166','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(8,22,'CENTRO','#190','2021-12-26','VICKY CALIMLIM','VICKY CALIMLIM',0,'2021-12-26 07:35:24.618573','2021-12-26 07:40:36.016392','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(9,22,'NASANGAAN','#310','2021-12-26','VICKY CALIMLIM','VICKY CALIMLIM',0,'2021-12-26 07:38:42.435790','2021-12-26 07:40:14.867943','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(10,26,'MALONG ST.','#89','2021-12-26','MARICRIS MENDOZA','MARICRIS MENDOZA',0,'2021-12-26 08:03:03.918716','2021-12-26 08:05:17.614381','rented','rented','Single','Concrete','DECORP','None','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(11,26,'MALONG ST.','#96','2021-12-26','MARICRIS MENDOZA','MARICRIS MENDOZA',0,'2021-12-26 08:09:04.647222','2021-12-26 08:09:04.647222','owned','owned','Two Storey','Concrete','DECORP','PLDT','Water Sealed','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','COFFEE SHOP','40sq. m.',1),(12,26,'BONIFACIO ST.','#215','2021-12-26','MARICRIS MENDOZA','MARICRIS MENDOZA',0,'2021-12-26 08:16:54.311723','2021-12-26 08:16:54.311723','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(13,26,'BONIFACIO ST.','#210','2021-12-26','MARICRIS MENDOZA','MARICRIS MENDOZA',0,'2021-12-26 08:19:24.675721','2021-12-26 08:19:24.675721','owned','owned','Two Storey','Wood','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(14,26,'MALONG ST.','#87','2021-12-26','MARICRIS MENDOZA','MARICRIS MENDOZA',0,'2021-12-26 08:22:40.754983','2021-12-26 08:22:40.754983','owned','owned','Two Storey','Mixed','DECORP','PLDT','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(15,28,'HI-WAY','#814','2021-12-26','VICTORIA LAYNO','VICTORIA LAYNO',0,'2021-12-26 08:26:29.398481','2021-12-26 08:26:29.398481','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(16,28,'RELES','#390','2021-12-26','VICTORIA LAYNO','VICTORIA LAYNO',0,'2021-12-26 08:30:25.671020','2021-12-26 08:30:25.671020','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along PNR','N/A','N/A',0),(17,28,'RELES','#220','2021-12-26','VICTORIA LAYNO','VICTORIA LAYNO',0,'2021-12-26 08:32:44.791075','2021-12-26 08:35:33.766923','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along PNR','N/A','N/A',0),(18,28,'CENTRO','#321','2021-12-26','VICTORIA LAYNO','VICTORIA LAYNO',0,'2021-12-26 08:38:28.852324','2021-12-26 08:38:28.852324','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along PNR','N/A','N/A',0),(19,28,'HI-WAY','#813','2021-12-26','VICTORIA LAYNO','VICTORIA LAYNO',0,'2021-12-26 08:42:44.386688','2021-12-26 08:42:44.386688','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(20,27,'KEBEB','#56','2021-12-26','MELAI PARAYNO','MELAI PARAYNO',0,'2021-12-26 08:49:04.767851','2021-12-26 08:49:04.767851','rented','rented','Single','Concrete','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(21,27,'CENTRO','#125','2021-12-26','MELAI PARAYNO','MELAI PARAYNO',0,'2021-12-26 08:51:05.487312','2021-12-26 08:51:05.487312','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(22,27,'KEBEB','#77','2021-12-26','MELAI PARAYNO','MELAI PARAYNO',0,'2021-12-26 08:54:59.708042','2021-12-26 08:54:59.708042','owned','owned','Two Storey','Concrete','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(23,27,'CENTRO','#130','2021-12-26','MELAI PARAYNO','MELAI PARAYNO',0,'2021-12-26 08:57:28.540287','2021-12-26 08:57:28.540287','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(24,27,'SAGOR','#90','2021-12-26','MELAI PARAYNO','MELAI PARAYNO',0,'2021-12-26 09:00:30.493309','2021-12-26 09:00:30.493309','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(25,9,'GARCIA','#156','2021-12-26','ELEN GARCIA','ELEN GARCIA',0,'2021-12-26 09:06:01.320929','2021-12-26 09:06:01.320929','owned','owned','Single','Concrete','DECORP','OTHERS','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(26,9,'GARCIA','#150','2021-12-26','ELEN GARCIA','ELEN GARCIA',0,'2021-12-26 09:08:37.174033','2021-12-26 09:08:37.174033','owned','owned','Single','Concrete','DECORP','None','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(27,9,'GARCIA','#157','2021-12-26','ELEN GARCIA','ELEN GARCIA',0,'2021-12-26 09:11:03.864493','2021-12-26 09:11:03.864493','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(28,9,'GARCIA','#210','2021-12-26','ELEN GARCIA','ELEN GARCIA',0,'2021-12-26 09:14:19.884571','2021-12-26 09:14:19.884571','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(29,9,'CENTRO','#309','2021-12-26','ELEN GARCIA','ELEN GARCIA',0,'2021-12-26 09:18:10.576963','2021-12-26 09:18:10.576963','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(30,22,'PUROK 4','#30','2021-12-26','VICKY CALIMLIM','VICKY CALIMLIM',0,'2021-12-26 09:23:37.009704','2021-12-26 09:23:37.009704','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(31,23,'IDOLDOL','#150','2021-12-26','MARITES DE GUZMAN','MARITES DE GUZMAN',0,'2021-12-26 09:27:57.991829','2021-12-26 09:27:57.991829','owned','owned','Two Storey','Mixed','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(32,23,'IDOLDOL','#170','2021-12-26','MARITES DE GUZMAN','MARITES DE GUZMAN',0,'2021-12-26 09:31:14.555189','2021-12-26 09:31:14.555189','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(33,23,'IDOLDOL','#145','2021-12-26','MARITES DE GUZMAN','MARITES DE GUZMAN',0,'2021-12-26 09:34:21.074825','2021-12-26 09:34:21.074825','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(34,23,'CENTRO','#307','2021-12-26','MARITES DE GUZMAN','MARITES DE GUZMAN',0,'2021-12-26 09:37:44.256338','2021-12-26 09:37:44.256338','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','VENDOR','10sq. m.',1),(35,23,'IDOLDOL','#245','2021-12-26','MARITES DE GUZMAN','MARITES DE GUZMAN',0,'2021-12-26 09:40:15.702048','2021-12-26 09:40:15.702048','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Others','N/A','N/A',0),(36,12,'LASIP 3','#0176','2021-12-26','MARIA MAYNIGO','MARIA MAYNIGO',0,'2021-12-26 09:43:59.431961','2021-12-26 09:43:59.431961','owned','owned','Single','Mixed','DECORP','GLOBE','Antipolo type','Burning','LPG','Private shallow well','Flood Prone Area','N/A','N/A',0),(37,12,'RAMOS','#326','2021-12-26','MARIA MAYNIGO','MARIA MAYNIGO',0,'2021-12-26 09:48:17.390276','2021-12-26 09:48:17.390276','owned','owned','Two Storey','Concrete','DECORP','GLOBE','Water Sealed','Garbage Truck Collection','LPG','Individual Connection (Water District)','Along Highway','VENDOR','5sq. m.',1),(38,12,'RAMOS','#318','2021-12-26','MARIA MAYNIGO','MARIA MAYNIGO',0,'2021-12-26 09:50:54.800789','2021-12-26 09:50:54.800789','owned','owned','Single','Concrete','DECORP','None','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(39,12,'BINCO','#287','2021-12-26','MARIA MAYNIGO','MARIA MAYNIGO',0,'2021-12-26 09:53:56.074443','2021-12-26 09:53:56.074443','owned','owned','Single','Wood','DECORP','GLOBE','Antipolo type','Burning','Wood','Private shallow well','Flood Prone Area','N/A','N/A',0),(40,12,'LASIP 3','#0180','2021-12-26','MARIA MAYNIGO','MARIA MAYNIGO',0,'2021-12-26 09:58:17.689818','2021-12-26 09:58:17.689818','owned','owned','Two Storey','Mixed','DECORP','None','Antipolo type','Burning','LPG','Public shallow well','Flood Prone Area','VENDOR','5sq. m.',1),(41,14,'ALEGRIA','#177','2021-12-26','CHERRY AGSALUD','CHERRY AGSALUD',0,'2021-12-26 10:02:45.282355','2021-12-26 10:02:45.282355','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','VENDORO','20sq. m.',2),(42,14,'ALEGRIA','#267','2021-12-26','CHERRY AGSALUD','CHERRY AGSALUD',0,'2021-12-26 10:04:45.868820','2021-12-26 10:04:45.868820','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(43,14,'LEKSAB','#316','2021-12-26','CHERRY AGSALUD','CHERRY AGSALUD',0,'2021-12-26 10:07:52.660611','2021-12-26 10:07:52.660611','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along PNR','N/A','N/A',0),(44,14,'GUAM','#189','2021-12-26','CHERRY AGSALUD','CHERRY AGSALUD',0,'2021-12-26 10:10:42.165454','2021-12-26 10:10:42.165454','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(45,14,'ALEGRIA','#190','2021-12-26','CHERRY AGSALUD','CHERRY AGSALUD',0,'2021-12-26 10:19:40.227475','2021-12-26 10:19:40.227475','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(46,29,'','#72','2021-12-26','KOLIN HANS','KOLIN HANS',0,'2021-12-26 10:27:25.871384','2021-12-26 10:27:25.871384','owned','owned','Two Storey','Concrete','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','N/A','N/A',0),(47,29,'','#91','2021-12-26','KOLIN HANS','KOLIN HANS',0,'2021-12-26 10:30:01.992735','2021-12-26 10:30:01.992735','owned','owned','Single','Mixed','DECORP','SMART','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','SERVICES','10sq. m.',1),(48,29,'','#313','2021-12-26','KOLIN HANS','KOLIN HANS',0,'2021-12-26 10:32:36.813868','2021-12-26 10:32:36.813868','owned','owned','Single','Concrete','DECORP','PLDT','Antipolo type','Burning','LPG','Individual Connection (Water District)','Along Highway','VENDOR','20sq. m.',2),(49,29,'','#231','2021-12-26','KOLIN HANS','KOLIN HANS',0,'2021-12-26 10:36:36.487806','2021-12-26 10:36:36.487806','owned','owned','Single','Concrete','DECORP','GLOBE','Antipolo type','Burying','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0),(50,29,'','#90','2021-12-26','KOLIN HANS','KOLIN HANS',0,'2021-12-26 10:38:42.408295','2021-12-26 10:38:42.408295','owned','owned','Two Storey','Mixed','DECORP','GLOBE','Antipolo type','Burning','LPG','Individual Connection (Water District)','Flood Prone Area','N/A','N/A',0);
/*!40000 ALTER TABLE `households` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_releases`
--

DROP TABLE IF EXISTS `mobile_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_releases` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `build_code` int DEFAULT NULL,
  `update_type` int DEFAULT NULL,
  `maintenance_mode` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_releases`
--

LOCK TABLES `mobile_releases` WRITE;
/*!40000 ALTER TABLE `mobile_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `wholesale_price` decimal(10,0) DEFAULT NULL,
  `wholesale_minimum_quantity` varchar(255) DEFAULT NULL,
  `stocks` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `region_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_provinces_on_region_id` (`region_id`),
  CONSTRAINT `fk_rails_5aca3eede1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20201206035411'),('20201206091718'),('20201220133414'),('20201229194516'),('20210111034138'),('20210111053347'),('20210407060922'),('20210722060746'),('20210722060759'),('20210802060811'),('20210802065039'),('20210802065449'),('20210802065828'),('20210802071211'),('20210803031631'),('20210806032823'),('20210817060938'),('20210818070158'),('20210819051026'),('20210823022347'),('20211011122043'),('20211011122443'),('20211030111055'),('20211117122529'),('20211117125336'),('20211122110058'),('20211122111111'),('20211122113617'),('20211122121546'),('20211212123837'),('20211212132932'),('20211212140013'),('20211222062457'),('20211222080542'),('20211222113622');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `role` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `verification_sent_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login_type` int DEFAULT '0',
  `auth_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `carrier` varchar(255) DEFAULT NULL,
  `system_version` varchar(255) DEFAULT NULL,
  `online_status` int DEFAULT '0',
  `last_online` datetime DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sss` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `philhealth` varchar(255) DEFAULT NULL,
  `pag_ibig` varchar(255) DEFAULT NULL,
  `user_type` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `household_id` bigint NOT NULL,
  `vehicle_type` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_vehicles_on_household_id` (`household_id`),
  CONSTRAINT `fk_rails_ce95dc7252` FOREIGN KEY (`household_id`) REFERENCES `households` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,6,2,'2021-12-26 06:58:07.224211','2021-12-26 06:58:07.224211'),(2,3,6,1,'2021-12-26 07:14:01.727503','2021-12-26 07:14:01.727503'),(3,3,7,1,'2021-12-26 07:14:01.734352','2021-12-26 07:14:01.734352'),(4,4,6,1,'2021-12-26 07:17:44.711738','2021-12-26 07:17:44.711738'),(5,4,7,2,'2021-12-26 07:17:44.715403','2021-12-26 07:17:44.715403'),(6,5,6,1,'2021-12-26 07:23:19.825201','2021-12-26 07:23:19.825201'),(7,5,7,2,'2021-12-26 07:23:19.828329','2021-12-26 07:23:19.828329'),(8,6,7,1,'2021-12-26 07:29:25.161953','2021-12-26 07:29:25.161953'),(9,7,0,1,'2021-12-26 07:32:30.024247','2021-12-26 07:32:30.024247'),(10,7,7,2,'2021-12-26 07:32:30.032049','2021-12-26 07:32:30.032049'),(11,8,7,1,'2021-12-26 07:35:24.623090','2021-12-26 07:35:24.623090'),(12,9,7,2,'2021-12-26 07:38:42.439662','2021-12-26 07:38:42.439662'),(13,10,7,1,'2021-12-26 08:03:03.926229','2021-12-26 08:03:03.926229'),(14,11,0,2,'2021-12-26 08:09:04.655022','2021-12-26 08:09:04.655022'),(15,11,7,1,'2021-12-26 08:09:04.658477','2021-12-26 08:09:04.658477'),(16,12,7,1,'2021-12-26 08:16:54.318090','2021-12-26 08:16:54.318090'),(17,14,0,1,'2021-12-26 08:22:40.760011','2021-12-26 08:22:40.760011'),(18,15,6,1,'2021-12-26 08:26:29.403365','2021-12-26 08:26:29.403365'),(19,17,6,1,'2021-12-26 08:32:44.800370','2021-12-26 08:32:44.800370'),(20,17,7,1,'2021-12-26 08:32:44.804048','2021-12-26 08:32:44.804048'),(21,18,6,1,'2021-12-26 08:38:28.856797','2021-12-26 08:38:28.856797'),(22,19,0,1,'2021-12-26 08:42:44.394994','2021-12-26 08:42:44.394994'),(23,20,6,1,'2021-12-26 08:49:04.773484','2021-12-26 08:49:04.773484'),(24,20,7,2,'2021-12-26 08:49:04.777491','2021-12-26 08:49:04.777491'),(25,21,7,1,'2021-12-26 08:51:05.496122','2021-12-26 08:51:05.496122'),(26,22,7,2,'2021-12-26 08:54:59.716364','2021-12-26 08:54:59.716364'),(27,23,7,3,'2021-12-26 08:57:28.547458','2021-12-26 08:57:28.547458'),(28,24,6,1,'2021-12-26 09:00:30.499283','2021-12-26 09:00:30.499283'),(29,25,7,1,'2021-12-26 09:06:01.326972','2021-12-26 09:06:01.326972'),(30,27,7,1,'2021-12-26 09:11:03.868541','2021-12-26 09:11:03.868541'),(31,28,6,1,'2021-12-26 09:14:19.888717','2021-12-26 09:14:19.888717'),(32,29,6,1,'2021-12-26 09:18:10.581695','2021-12-26 09:18:10.581695'),(33,30,6,1,'2021-12-26 09:23:37.014397','2021-12-26 09:23:37.014397'),(34,32,7,2,'2021-12-26 09:31:14.559582','2021-12-26 09:31:14.559582'),(35,33,7,1,'2021-12-26 09:34:21.079270','2021-12-26 09:34:21.079270'),(36,34,7,1,'2021-12-26 09:37:44.263693','2021-12-26 09:37:44.263693'),(37,36,7,1,'2021-12-26 09:43:59.440622','2021-12-26 09:43:59.440622'),(38,36,6,1,'2021-12-26 09:43:59.446927','2021-12-26 09:43:59.446927'),(39,37,6,1,'2021-12-26 09:48:17.397663','2021-12-26 09:48:17.397663'),(40,39,6,1,'2021-12-26 09:53:56.084936','2021-12-26 09:53:56.084936'),(41,40,6,1,'2021-12-26 09:58:17.697337','2021-12-26 09:58:17.697337'),(42,41,0,2,'2021-12-26 10:02:45.290835','2021-12-26 10:02:45.290835'),(43,41,6,1,'2021-12-26 10:02:45.298199','2021-12-26 10:02:45.298199'),(44,42,7,1,'2021-12-26 10:04:45.878157','2021-12-26 10:04:45.878157'),(45,43,7,1,'2021-12-26 10:07:52.670075','2021-12-26 10:07:52.670075'),(46,44,7,1,'2021-12-26 10:10:42.172324','2021-12-26 10:10:42.172324'),(47,45,7,1,'2021-12-26 10:19:40.271936','2021-12-26 10:19:40.271936'),(48,46,7,1,'2021-12-26 10:27:25.880163','2021-12-26 10:27:25.880163'),(49,47,7,1,'2021-12-26 10:30:02.003504','2021-12-26 10:30:02.003504'),(50,47,6,1,'2021-12-26 10:30:02.008772','2021-12-26 10:30:02.008772'),(51,48,6,1,'2021-12-26 10:32:36.823578','2021-12-26 10:32:36.823578'),(52,49,7,2,'2021-12-26 10:36:36.494288','2021-12-26 10:36:36.494288');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-03 21:09:03
