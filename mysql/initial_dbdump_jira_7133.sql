-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: jira7133
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `AO_0AC321_RECOMMENDATION_AO`
--

DROP TABLE IF EXISTS `AO_0AC321_RECOMMENDATION_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_0AC321_RECOMMENDATION_AO` (
  `CATEGORY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CUSTOM_FIELD_ID` bigint(20) DEFAULT NULL,
  `ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PERFORMANCE_IMPACT` double DEFAULT NULL,
  `PROJECT_IDS` longtext COLLATE utf8mb4_bin,
  `RESOLVED` tinyint(1) DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_0AC321_RECOMMENDATION_AO`
--

LOCK TABLES `AO_0AC321_RECOMMENDATION_AO` WRITE;
/*!40000 ALTER TABLE `AO_0AC321_RECOMMENDATION_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_0AC321_RECOMMENDATION_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_21D670_WHITELIST_RULES`
--

DROP TABLE IF EXISTS `AO_21D670_WHITELIST_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21D670_WHITELIST_RULES` (
  `ALLOWINBOUND` tinyint(1) DEFAULT NULL,
  `EXPRESSION` longtext COLLATE utf8mb4_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_21D670_WHITELIST_RULES`
--

LOCK TABLES `AO_21D670_WHITELIST_RULES` WRITE;
/*!40000 ALTER TABLE `AO_21D670_WHITELIST_RULES` DISABLE KEYS */;
INSERT INTO `AO_21D670_WHITELIST_RULES` VALUES (0,'http://www.atlassian.com/*',1,'WILDCARD_EXPRESSION'),(0,'http://www.atlassian.com/*',2,'WILDCARD_EXPRESSION');
/*!40000 ALTER TABLE `AO_21D670_WHITELIST_RULES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_21F425_MESSAGE_AO`
--

DROP TABLE IF EXISTS `AO_21F425_MESSAGE_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_MESSAGE_AO` (
  `CONTENT` longtext COLLATE utf8mb4_bin NOT NULL,
  `ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_21F425_MESSAGE_AO`
--

LOCK TABLES `AO_21F425_MESSAGE_AO` WRITE;
/*!40000 ALTER TABLE `AO_21F425_MESSAGE_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_21F425_MESSAGE_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_21F425_MESSAGE_MAPPING_AO`
--

DROP TABLE IF EXISTS `AO_21F425_MESSAGE_MAPPING_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_MESSAGE_MAPPING_AO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `USER_HASH` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_21f425_mes223897723` (`USER_HASH`),
  KEY `index_ao_21f425_mes1965715920` (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_21F425_MESSAGE_MAPPING_AO`
--

LOCK TABLES `AO_21F425_MESSAGE_MAPPING_AO` WRITE;
/*!40000 ALTER TABLE `AO_21F425_MESSAGE_MAPPING_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_21F425_MESSAGE_MAPPING_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_21F425_USER_PROPERTY_AO`
--

DROP TABLE IF EXISTS `AO_21F425_USER_PROPERTY_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_USER_PROPERTY_AO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `USER` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `VALUE` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_21f425_use1458667739` (`USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_21F425_USER_PROPERTY_AO`
--

LOCK TABLES `AO_21F425_USER_PROPERTY_AO` WRITE;
/*!40000 ALTER TABLE `AO_21F425_USER_PROPERTY_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_21F425_USER_PROPERTY_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_38321B_CUSTOM_CONTENT_LINK`
--

DROP TABLE IF EXISTS `AO_38321B_CUSTOM_CONTENT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_38321B_CUSTOM_CONTENT_LINK` (
  `CONTENT_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LINK_LABEL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LINK_URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEQUENCE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_38321b_cus1828044926` (`CONTENT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_38321B_CUSTOM_CONTENT_LINK`
--

LOCK TABLES `AO_38321B_CUSTOM_CONTENT_LINK` WRITE;
/*!40000 ALTER TABLE `AO_38321B_CUSTOM_CONTENT_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_38321B_CUSTOM_CONTENT_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_3B1893_LOOP_DETECTION`
--

DROP TABLE IF EXISTS `AO_3B1893_LOOP_DETECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_3B1893_LOOP_DETECTION` (
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `EXPIRES_AT` bigint(20) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SENDER_EMAIL` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_3B1893_LOOP_DETECTION`
--

LOCK TABLES `AO_3B1893_LOOP_DETECTION` WRITE;
/*!40000 ALTER TABLE `AO_3B1893_LOOP_DETECTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_3B1893_LOOP_DETECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4789DD_HEALTH_CHECK_STATUS`
--

DROP TABLE IF EXISTS `AO_4789DD_HEALTH_CHECK_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_HEALTH_CHECK_STATUS` (
  `APPLICATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `COMPLETE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FAILED_DATE` datetime DEFAULT NULL,
  `FAILURE_REASON` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IS_HEALTHY` tinyint(1) DEFAULT NULL,
  `IS_RESOLVED` tinyint(1) DEFAULT NULL,
  `RESOLVED_DATE` datetime DEFAULT NULL,
  `SEVERITY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4789DD_HEALTH_CHECK_STATUS`
--

LOCK TABLES `AO_4789DD_HEALTH_CHECK_STATUS` WRITE;
/*!40000 ALTER TABLE `AO_4789DD_HEALTH_CHECK_STATUS` DISABLE KEYS */;
INSERT INTO `AO_4789DD_HEALTH_CHECK_STATUS` VALUES ('JIRA','com.atlassian.troubleshooting.plugin-jira:collationHealthCheck','Checks if the database and tables are configured using the required collation.','2019-06-14 15:38:09','The database collation \'utf8mb4_bin\' and table collation \'utf8mb4_bin\' are not supported by JIRA.',1,0,0,NULL,'CRITICAL','Collation'),('JIRA','com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck','Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.','2019-06-14 15:38:37','JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.',2,0,0,NULL,'WARNING','Gadget feed URL');
/*!40000 ALTER TABLE `AO_4789DD_HEALTH_CHECK_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4789DD_PROPERTIES`
--

DROP TABLE IF EXISTS `AO_4789DD_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_PROPERTIES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `PROPERTY_VALUE` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4789DD_PROPERTIES`
--

LOCK TABLES `AO_4789DD_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `AO_4789DD_PROPERTIES` DISABLE KEYS */;
INSERT INTO `AO_4789DD_PROPERTIES` VALUES (1,'last-run','1560526717479');
/*!40000 ALTER TABLE `AO_4789DD_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4789DD_READ_NOTIFICATIONS`
--

DROP TABLE IF EXISTS `AO_4789DD_READ_NOTIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_READ_NOTIFICATIONS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IS_SNOOZED` tinyint(1) DEFAULT NULL,
  `NOTIFICATION_ID` int(11) NOT NULL,
  `SNOOZE_COUNT` int(11) DEFAULT NULL,
  `SNOOZE_DATE` datetime DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4789DD_READ_NOTIFICATIONS`
--

LOCK TABLES `AO_4789DD_READ_NOTIFICATIONS` WRITE;
/*!40000 ALTER TABLE `AO_4789DD_READ_NOTIFICATIONS` DISABLE KEYS */;
INSERT INTO `AO_4789DD_READ_NOTIFICATIONS` VALUES (1,1,1,1,'2019-06-14 15:38:24','jira_local_sysadmin'),(2,1,2,1,'2019-06-14 15:39:18','jira_local_sysadmin');
/*!40000 ALTER TABLE `AO_4789DD_READ_NOTIFICATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4789DD_TASK_MONITOR`
--

DROP TABLE IF EXISTS `AO_4789DD_TASK_MONITOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_TASK_MONITOR` (
  `CLUSTERED_TASK_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NODE_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROGRESS_MESSAGE` longtext COLLATE utf8mb4_bin,
  `PROGRESS_PERCENTAGE` int(11) DEFAULT NULL,
  `SERIALIZED_ERRORS` longtext COLLATE utf8mb4_bin,
  `SERIALIZED_WARNINGS` longtext COLLATE utf8mb4_bin,
  `TASK_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `TASK_MONITOR_KIND` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TASK_STATUS` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_4789DD_TASK_MO1827547914` (`TASK_ID`),
  KEY `index_ao_4789dd_tas42846517` (`TASK_MONITOR_KIND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4789DD_TASK_MONITOR`
--

LOCK TABLES `AO_4789DD_TASK_MONITOR` WRITE;
/*!40000 ALTER TABLE `AO_4789DD_TASK_MONITOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_4789DD_TASK_MONITOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4AEACD_WEBHOOK_DAO`
--

DROP TABLE IF EXISTS `AO_4AEACD_WEBHOOK_DAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4AEACD_WEBHOOK_DAO` (
  `ENABLED` tinyint(1) DEFAULT NULL,
  `ENCODED_EVENTS` longtext COLLATE utf8mb4_bin,
  `FILTER` longtext COLLATE utf8mb4_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JQL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME` longtext COLLATE utf8mb4_bin NOT NULL,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `URL` longtext COLLATE utf8mb4_bin NOT NULL,
  `EXCLUDE_ISSUE_DETAILS` tinyint(1) DEFAULT NULL,
  `PARAMETERS` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4AEACD_WEBHOOK_DAO`
--

LOCK TABLES `AO_4AEACD_WEBHOOK_DAO` WRITE;
/*!40000 ALTER TABLE `AO_4AEACD_WEBHOOK_DAO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_4AEACD_WEBHOOK_DAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_550953_SHORTCUT`
--

DROP TABLE IF EXISTS `AO_550953_SHORTCUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_550953_SHORTCUT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROJECT_ID` bigint(20) DEFAULT NULL,
  `SHORTCUT_URL` longtext COLLATE utf8mb4_bin,
  `URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_550953_sho1778115994` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_550953_SHORTCUT`
--

LOCK TABLES `AO_550953_SHORTCUT` WRITE;
/*!40000 ALTER TABLE `AO_550953_SHORTCUT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_550953_SHORTCUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_ACTIVITY_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTIVITY_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTIVITY_ENTITY` (
  `ACTIVITY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTOR_ID` int(11) DEFAULT NULL,
  `CONTENT` longtext COLLATE utf8mb4_bin,
  `GENERATOR_DISPLAY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `GENERATOR_ID` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `ID` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISSUE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_ID` int(11) DEFAULT NULL,
  `POSTER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PUBLISHED` datetime DEFAULT NULL,
  `TARGET_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `VERB` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `index_ao_563aee_act995325379` (`ACTOR_ID`),
  KEY `index_ao_563aee_act1978295567` (`TARGET_ID`),
  KEY `index_ao_563aee_act1642652291` (`OBJECT_ID`),
  KEY `index_ao_563aee_act972488439` (`ICON_ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_actor_id` FOREIGN KEY (`ACTOR_ID`) REFERENCES `AO_563AEE_ACTOR_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_icon_id` FOREIGN KEY (`ICON_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_object_id` FOREIGN KEY (`OBJECT_ID`) REFERENCES `AO_563AEE_OBJECT_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_target_id` FOREIGN KEY (`TARGET_ID`) REFERENCES `AO_563AEE_TARGET_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_ACTIVITY_ENTITY`
--

LOCK TABLES `AO_563AEE_ACTIVITY_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_ACTIVITY_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_ACTIVITY_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_ACTOR_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTOR_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTOR_ENTITY` (
  `FULL_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFILE_PAGE_URI` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROFILE_PICTURE_URI` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_ACTOR_ENTITY`
--

LOCK TABLES `AO_563AEE_ACTOR_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_ACTOR_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_ACTOR_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_MEDIA_LINK_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_MEDIA_LINK_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_MEDIA_LINK_ENTITY` (
  `DURATION` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_MEDIA_LINK_ENTITY`
--

LOCK TABLES `AO_563AEE_MEDIA_LINK_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_MEDIA_LINK_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_MEDIA_LINK_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_OBJECT_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_OBJECT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_OBJECT_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_obj696886343` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_object_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_OBJECT_ENTITY`
--

LOCK TABLES `AO_563AEE_OBJECT_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_OBJECT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_OBJECT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_TARGET_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_TARGET_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_TARGET_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_tar521440921` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_target_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_TARGET_ENTITY`
--

LOCK TABLES `AO_563AEE_TARGET_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_TARGET_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_TARGET_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_587B34_GLANCE_CONFIG`
--

DROP TABLE IF EXISTS `AO_587B34_GLANCE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_587B34_GLANCE_CONFIG` (
  `ROOM_ID` bigint(20) NOT NULL DEFAULT '0',
  `STATE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SYNC_NEEDED` tinyint(1) DEFAULT NULL,
  `APPLICATION_USER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JQL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ROOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_587B34_GLANCE_CONFIG`
--

LOCK TABLES `AO_587B34_GLANCE_CONFIG` WRITE;
/*!40000 ALTER TABLE `AO_587B34_GLANCE_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_587B34_GLANCE_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_587B34_PROJECT_CONFIG`
--

DROP TABLE IF EXISTS `AO_587B34_PROJECT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_587B34_PROJECT_CONFIG` (
  `CONFIGURATION_GROUP_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME_UNIQUE_CONSTRAINT` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `PROJECT_ID` bigint(20) NOT NULL DEFAULT '0',
  `ROOM_ID` bigint(20) NOT NULL DEFAULT '0',
  `VALUE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_587B34_PROJECT2070954277` (`NAME_UNIQUE_CONSTRAINT`),
  KEY `index_ao_587b34_pro193829489` (`CONFIGURATION_GROUP_ID`),
  KEY `index_ao_587b34_pro1732672724` (`ROOM_ID`),
  KEY `index_ao_587b34_pro2093917684` (`PROJECT_ID`),
  KEY `index_ao_587b34_pro2115480362` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_587B34_PROJECT_CONFIG`
--

LOCK TABLES `AO_587B34_PROJECT_CONFIG` WRITE;
/*!40000 ALTER TABLE `AO_587B34_PROJECT_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_587B34_PROJECT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_LINK`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` (
  `ADDON_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `API_URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONNECT_DESCRIPTOR` longtext COLLATE utf8mb4_bin,
  `GROUP_ID` int(11) DEFAULT '0',
  `GROUP_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OAUTH_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SECRET_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SYSTEM_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SYSTEM_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `SYSTEM_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SYSTEM_USER_TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_5FB9D7_AOHIP_CHAT_LINK`
--

LOCK TABLES `AO_5FB9D7_AOHIP_CHAT_LINK` WRITE;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_USER`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_USER` (
  `HIP_CHAT_LINK_ID` int(11) DEFAULT NULL,
  `HIP_CHAT_USER_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `HIP_CHAT_USER_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REFRESH_CODE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USER_SCOPES` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USER_TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USER_TOKEN_EXPIRY` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_5fb9d7_aoh1981563178` (`USER_KEY`),
  KEY `index_ao_5fb9d7_aoh49772492` (`HIP_CHAT_LINK_ID`),
  CONSTRAINT `fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id` FOREIGN KEY (`HIP_CHAT_LINK_ID`) REFERENCES `AO_5FB9D7_AOHIP_CHAT_LINK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_5FB9D7_AOHIP_CHAT_USER`
--

LOCK TABLES `AO_5FB9D7_AOHIP_CHAT_USER` WRITE;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_97EDAB_USERINVITATION`
--

DROP TABLE IF EXISTS `AO_97EDAB_USERINVITATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_97EDAB_USERINVITATION` (
  `APPLICATION_KEYS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `EXPIRY` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REDEEMED` tinyint(1) DEFAULT NULL,
  `SENDER_USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_97EDAB_USERINVITATION`
--

LOCK TABLES `AO_97EDAB_USERINVITATION` WRITE;
/*!40000 ALTER TABLE `AO_97EDAB_USERINVITATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_97EDAB_USERINVITATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_A0B856_WEB_HOOK_LISTENER_AO`
--

DROP TABLE IF EXISTS `AO_A0B856_WEB_HOOK_LISTENER_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` (
  `DESCRIPTION` longtext COLLATE utf8mb4_bin,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `EVENTS` longtext COLLATE utf8mb4_bin,
  `EXCLUDE_BODY` tinyint(1) DEFAULT NULL,
  `FILTERS` longtext COLLATE utf8mb4_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` longtext COLLATE utf8mb4_bin NOT NULL,
  `PARAMETERS` longtext COLLATE utf8mb4_bin,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `URL` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_A0B856_WEB_HOOK_LISTENER_AO`
--

LOCK TABLES `AO_A0B856_WEB_HOOK_LISTENER_AO` WRITE;
/*!40000 ALTER TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_B9A0F0_APPLIED_TEMPLATE`
--

DROP TABLE IF EXISTS `AO_B9A0F0_APPLIED_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_B9A0F0_APPLIED_TEMPLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` bigint(20) DEFAULT '0',
  `PROJECT_TEMPLATE_MODULE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROJECT_TEMPLATE_WEB_ITEM_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_B9A0F0_APPLIED_TEMPLATE`
--

LOCK TABLES `AO_B9A0F0_APPLIED_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `AO_B9A0F0_APPLIED_TEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_B9A0F0_APPLIED_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_C16815_ALERT_AO`
--

DROP TABLE IF EXISTS `AO_C16815_ALERT_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_C16815_ALERT_AO` (
  `CREATED_DATE` bigint(20) DEFAULT '0',
  `DETAILS_JSON` longtext COLLATE utf8mb4_bin,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISSUE_COMPONENT_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISSUE_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISSUE_SEVERITY` int(11) DEFAULT '0',
  `NODE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_MODULE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_KEY_VERSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_VERSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_C16815_ALERT_AO`
--

LOCK TABLES `AO_C16815_ALERT_AO` WRITE;
/*!40000 ALTER TABLE `AO_C16815_ALERT_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_C16815_ALERT_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_ED669C_SEEN_ASSERTIONS`
--

DROP TABLE IF EXISTS `AO_ED669C_SEEN_ASSERTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_ED669C_SEEN_ASSERTIONS` (
  `ASSERTION_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `EXPIRY_TIMESTAMP` bigint(20) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_ED669C_SEEN_AS1055534769` (`ASSERTION_ID`),
  KEY `index_ao_ed669c_see20117222` (`EXPIRY_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_ED669C_SEEN_ASSERTIONS`
--

LOCK TABLES `AO_ED669C_SEEN_ASSERTIONS` WRITE;
/*!40000 ALTER TABLE `AO_ED669C_SEEN_ASSERTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_ED669C_SEEN_ASSERTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `JQUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `JQUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_CALENDARS`
--

LOCK TABLES `JQUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `JQUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIRED_TIME` bigint(20) DEFAULT NULL,
  `SCHED_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `idx_qrtz_ft_trig_inst_name` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `idx_qrtz_ft_inst_job_req_rcvry` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_ft_j_g` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_t_g` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_ft_tg` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `JQUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_j_req_recovery` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_j_grp` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_JOB_DETAILS`
--

LOCK TABLES `JQUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_JOB_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_LISTENERS` (
  `JOB_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `JOB_LISTENER` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_JOB_LISTENERS`
--

LOCK TABLES `JQUARTZ_JOB_LISTENERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_JOB_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_JOB_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `JQUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_LOCKS`
--

LOCK TABLES `JQUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `JQUARTZ_LOCKS` VALUES (NULL,'CALENDAR_ACCESS'),(NULL,'JOB_ACCESS'),(NULL,'MISFIRE_ACCESS'),(NULL,'STATE_ACCESS'),(NULL,'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `JQUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `JQUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `JQUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `JQUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) DEFAULT NULL,
  `CHECKIN_INTERVAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `JQUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(20) DEFAULT NULL,
  `REPEAT_INTERVAL` bigint(20) DEFAULT NULL,
  `TIMES_TRIGGERED` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `JQUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `JQUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `START_TIME` bigint(20) DEFAULT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(5) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_t_j` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_c` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `idx_qrtz_j_g` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_j_state` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_state` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_g_state` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_next_fire_time` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_nft_st_misfire_grp` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_TRIGGERS`
--

LOCK TABLES `JQUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_TRIGGER_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGER_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGER_LISTENERS` (
  `TRIGGER_NAME` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_LISTENER` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`,`TRIGGER_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_TRIGGER_LISTENERS`
--

LOCK TABLES `JQUARTZ_TRIGGER_LISTENERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGER_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGER_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_CURRENTSTEP`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `wf_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_CURRENTSTEP`
--

LOCK TABLES `OS_CURRENTSTEP` WRITE;
/*!40000 ALTER TABLE `OS_CURRENTSTEP` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_CURRENTSTEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_CURRENTSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_CURRENTSTEP_PREV`
--

LOCK TABLES `OS_CURRENTSTEP_PREV` WRITE;
/*!40000 ALTER TABLE `OS_CURRENTSTEP_PREV` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_CURRENTSTEP_PREV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_HISTORYSTEP`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `historystep_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_HISTORYSTEP`
--

LOCK TABLES `OS_HISTORYSTEP` WRITE;
/*!40000 ALTER TABLE `OS_HISTORYSTEP` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_HISTORYSTEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_HISTORYSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_HISTORYSTEP_PREV`
--

LOCK TABLES `OS_HISTORYSTEP_PREV` WRITE;
/*!40000 ALTER TABLE `OS_HISTORYSTEP_PREV` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_HISTORYSTEP_PREV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_WFENTRY`
--

DROP TABLE IF EXISTS `OS_WFENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_WFENTRY` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `INITIALIZED` decimal(9,0) DEFAULT NULL,
  `STATE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_WFENTRY`
--

LOCK TABLES `OS_WFENTRY` WRITE;
/*!40000 ALTER TABLE `OS_WFENTRY` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_WFENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE_VALUE_ITEM`
--

DROP TABLE IF EXISTS `SEQUENCE_VALUE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE_VALUE_ITEM` (
  `SEQ_NAME` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQ_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE_VALUE_ITEM`
--

LOCK TABLES `SEQUENCE_VALUE_ITEM` WRITE;
/*!40000 ALTER TABLE `SEQUENCE_VALUE_ITEM` DISABLE KEYS */;
INSERT INTO `SEQUENCE_VALUE_ITEM` VALUES ('ApplicationUser',10100),('AuditChangedValue',10100),('AuditItem',10100),('AuditLog',10100),('Avatar',10500),('ClusteredJob',10300),('ConfigurationContext',10200),('EventType',10000),('Feature',10200),('FieldConfigScheme',10200),('FieldConfigSchemeIssueType',10300),('FieldConfiguration',10200),('FieldLayout',10100),('FieldLayoutItem',10200),('FieldScreen',10000),('FieldScreenLayoutItem',10200),('FieldScreenScheme',10000),('FieldScreenSchemeItem',10100),('FieldScreenTab',10100),('GadgetUserPreference',10100),('GenericConfiguration',10100),('GlobalPermissionEntry',10200),('Group',10110),('IssueLinkType',10200),('IssueType',10000),('IssueTypeScreenSchemeEntity',10100),('LicenseRoleDefault',10100),('LicenseRoleGroup',10100),('ListenerConfig',10300),('Membership',10100),('Notification',10200),('NotificationScheme',10100),('OAuthConsumer',10100),('OSPropertyEntry',10400),('OptionConfiguration',10300),('PluginVersion',10300),('PortalPage',10100),('PortletConfiguration',10100),('Priority',10000),('ProductLicense',10100),('ProjectRole',10100),('ProjectRoleActor',10100),('Resolution',10000),('RunDetails',10200),('SchemePermissions',10400),('ServiceConfig',10200),('SharePermissions',10100),('Status',10000),('UpgradeHistory',10200),('UpgradeTaskHistory',10100),('UpgradeTaskHistoryAuditLog',10100),('UpgradeVersionHistory',10100),('User',10100),('UserAttribute',10200),('UserHistoryItem',10100),('Workflow',10100),('WorkflowScheme',10100),('WorkflowSchemeEntity',10100);
/*!40000 ALTER TABLE `SEQUENCE_VALUE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `ID` decimal(18,0) NOT NULL,
  `user_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_key` (`user_key`),
  UNIQUE KEY `uk_lower_user_name` (`lower_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (10000,'jira_local_sysadmin','jira_local_sysadmin');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_changed_value`
--

DROP TABLE IF EXISTS `audit_changed_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_changed_value` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DELTA_FROM` longtext COLLATE utf8mb4_bin,
  `DELTA_TO` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_changed_value_log_id` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_changed_value`
--

LOCK TABLES `audit_changed_value` WRITE;
/*!40000 ALTER TABLE `audit_changed_value` DISABLE KEYS */;
INSERT INTO `audit_changed_value` VALUES (10000,10001,'Permission','','Bulk Change'),(10001,10001,'Group','','jira-core-users'),(10002,10002,'Permission','','Browse Users'),(10003,10002,'Group','','jira-core-users'),(10004,10003,'Permission','','Create Shared Objects'),(10005,10003,'Group','','jira-core-users'),(10006,10004,'Permission','','Manage Group Filter Subscriptions'),(10007,10004,'Group','','jira-core-users'),(10008,10005,'Organisation',NULL,'Actonic'),(10009,10005,'Date Purchased',NULL,'14/Jun/19'),(10010,10005,'License Type',NULL,'Jira Core (Server): Evaluation'),(10011,10005,'Server ID',NULL,'BPH2-7MQW-IB3N-D40M'),(10012,10005,'Support Entitlement Number (SEN)',NULL,'SEN-L13771276'),(10013,10005,'User Limit',NULL,'Unlimited'),(10014,10005,'jira-core',NULL,'-1'),(10015,10006,'Username',NULL,'jira_local_sysadmin'),(10016,10006,'Full name',NULL,'Jira system administrator'),(10017,10006,'Email',NULL,'kasmann@actonic.de'),(10018,10006,'Active / Inactive',NULL,'Active'),(10019,10008,'Permission','','Bulk Change'),(10020,10008,'Group','','jira-administrators'),(10021,10009,'Permission','','Browse Users'),(10022,10009,'Group','','jira-administrators'),(10023,10010,'Permission','','Manage Group Filter Subscriptions'),(10024,10010,'Group','','jira-administrators'),(10025,10011,'Permission','','Create Shared Objects'),(10026,10011,'Group','','jira-administrators');
/*!40000 ALTER TABLE `audit_changed_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_item`
--

DROP TABLE IF EXISTS `audit_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_item` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_item_log_id2` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_item`
--

LOCK TABLES `audit_item` WRITE;
/*!40000 ALTER TABLE `audit_item` DISABLE KEYS */;
INSERT INTO `audit_item` VALUES (10000,10007,'USER','jira_local_sysadmin','jira_local_sysadmin','1','Jira Internal Directory'),(10001,10012,'USER','jira_local_sysadmin','jira_local_sysadmin','1','Jira Internal Directory');
/*!40000 ALTER TABLE `audit_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `ID` decimal(18,0) NOT NULL,
  `REMOTE_ADDRESS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `AUTHOR_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CATEGORY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHOR_TYPE` decimal(9,0) DEFAULT NULL,
  `EVENT_SOURCE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LONG_DESCRIPTION` longtext COLLATE utf8mb4_bin,
  `SEARCH_FIELD` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_log_created` (`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (10000,'37.214.76.102','2019-06-14 15:34:56',NULL,'Group created','group management','GROUP',NULL,'jira-core-users','1','Jira Internal Directory',0,'',NULL,'','37.214.76.102 group created management jira-core-users jira internal directory'),(10001,'37.214.76.102','2019-06-14 15:34:56',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions bulk change jira-core-users'),(10002,'37.214.76.102','2019-06-14 15:34:56',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions browse users jira-core-users'),(10003,'37.214.76.102','2019-06-14 15:34:56',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions create shared objects jira-core-users'),(10004,'37.214.76.102','2019-06-14 15:34:56',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions manage group filter subscriptions jira-core-users'),(10005,'37.214.76.102','2019-06-14 15:34:56',NULL,'New license added','system','LICENSE','0','SEN-L13771276','0','License SEN',0,'',NULL,'','37.214.76.102 new license added system sen-l13771276 sen actonic 14/jun/19 jira core (server): evaluation bph2-7mqw-ib3n-d40m unlimited -1'),(10006,'37.214.76.102','2019-06-14 15:36:47',NULL,'User created','user management','USER','jira_local_sysadmin','jira_local_sysadmin','1','Jira Internal Directory',0,'',NULL,'','37.214.76.102 user created management jira_local_sysadmin jira internal directory system administrator kasmann@actonic.de active'),(10007,'37.214.76.102','2019-06-14 15:36:47',NULL,'User added to group','group management','GROUP',NULL,'jira-administrators','1','Jira Internal Directory',0,'',NULL,'','37.214.76.102 user added to group management jira-administrators jira internal directory jira_local_sysadmin'),(10008,'37.214.76.102','2019-06-14 15:36:47',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions bulk change jira-administrators'),(10009,'37.214.76.102','2019-06-14 15:36:47',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions browse users jira-administrators'),(10010,'37.214.76.102','2019-06-14 15:36:47',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions manage group filter subscriptions jira-administrators'),(10011,'37.214.76.102','2019-06-14 15:36:47',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','37.214.76.102 global permission added permissions create shared objects jira-administrators'),(10012,'37.214.76.102','2019-06-14 15:36:47',NULL,'User added to group','group management','GROUP',NULL,'jira-core-users','1','Jira Internal Directory',0,'',NULL,'','37.214.76.102 user added to group management jira-core-users jira internal directory jira_local_sysadmin');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar` (
  `ID` decimal(18,0) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `contenttype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `avatartype` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `systemavatar` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `avatar_index` (`avatartype`,`owner`),
  KEY `avatar_filename_index` (`filename`,`avatartype`,`systemavatar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (10000,'codegeist.png','image/png','project',NULL,1),(10001,'bird.svg','image/svg+xml','project',NULL,1),(10002,'jm_black.png','image/png','project',NULL,1),(10003,'jm_brown.png','image/png','project',NULL,1),(10004,'jm_orange.png','image/png','project',NULL,1),(10005,'jm_red.png','image/png','project',NULL,1),(10006,'jm_white.png','image/png','project',NULL,1),(10007,'jm_yellow.png','image/png','project',NULL,1),(10008,'monster.png','image/png','project',NULL,1),(10009,'nature.svg','image/svg+xml','project',NULL,1),(10010,'koala.svg','image/svg+xml','project',NULL,1),(10011,'rocket.svg','image/svg+xml','project',NULL,1),(10100,'Avatar-1.png','image/png','user',NULL,1),(10101,'Avatar-2.png','image/png','user',NULL,1),(10102,'Avatar-3.png','image/png','user',NULL,1),(10103,'Avatar-4.png','image/png','user',NULL,1),(10104,'Avatar-5.png','image/png','user',NULL,1),(10105,'Avatar-6.png','image/png','user',NULL,1),(10106,'Avatar-7.png','image/png','user',NULL,1),(10107,'Avatar-8.png','image/png','user',NULL,1),(10108,'Avatar-9.png','image/png','user',NULL,1),(10109,'Avatar-10.png','image/png','user',NULL,1),(10110,'Avatar-11.png','image/png','user',NULL,1),(10111,'Avatar-12.png','image/png','user',NULL,1),(10112,'Avatar-13.png','image/png','user',NULL,1),(10113,'Avatar-14.png','image/png','user',NULL,1),(10114,'Avatar-15.png','image/png','user',NULL,1),(10115,'Avatar-16.png','image/png','user',NULL,1),(10116,'Avatar-17.png','image/png','user',NULL,1),(10117,'Avatar-18.png','image/png','user',NULL,1),(10118,'Avatar-19.png','image/png','user',NULL,1),(10119,'Avatar-20.png','image/png','user',NULL,1),(10120,'Avatar-21.png','image/png','user',NULL,1),(10121,'Avatar-22.png','image/png','user',NULL,1),(10122,'Avatar-default.svg','image/svg+xml','user',NULL,1),(10123,'Avatar-unknown.png','image/png','user',NULL,1),(10200,'cloud.svg','image/svg+xml','project',NULL,1),(10201,'spanner.svg','image/svg+xml','project',NULL,1),(10202,'cd.svg','image/svg+xml','project',NULL,1),(10203,'money.svg','image/svg+xml','project',NULL,1),(10204,'mouse-hand.svg','image/svg+xml','project',NULL,1),(10205,'yeti.svg','image/svg+xml','project',NULL,1),(10206,'power.svg','image/svg+xml','project',NULL,1),(10207,'refresh.svg','image/svg+xml','project',NULL,1),(10208,'phone.svg','image/svg+xml','project',NULL,1),(10209,'settings.svg','image/svg+xml','project',NULL,1),(10210,'storm.svg','image/svg+xml','project',NULL,1),(10211,'plane.svg','image/svg+xml','project',NULL,1),(10300,'genericissue.svg','image/svg+xml','issuetype',NULL,1),(10303,'bug.svg','image/svg+xml','issuetype',NULL,1),(10304,'defect.svg','image/svg+xml','issuetype',NULL,1),(10306,'documentation.svg','image/svg+xml','issuetype',NULL,1),(10307,'epic.svg','image/svg+xml','issuetype',NULL,1),(10308,'exclamation.svg','image/svg+xml','issuetype',NULL,1),(10309,'design_task.svg','image/svg+xml','issuetype',NULL,1),(10310,'improvement.svg','image/svg+xml','issuetype',NULL,1),(10311,'newfeature.svg','image/svg+xml','issuetype',NULL,1),(10312,'remove_feature.svg','image/svg+xml','issuetype',NULL,1),(10313,'requirement.svg','image/svg+xml','issuetype',NULL,1),(10314,'sales.svg','image/svg+xml','issuetype',NULL,1),(10315,'story.svg','image/svg+xml','issuetype',NULL,1),(10316,'subtask.svg','image/svg+xml','issuetype',NULL,1),(10318,'task.svg','image/svg+xml','issuetype',NULL,1),(10320,'question.svg','image/svg+xml','issuetype',NULL,1),(10321,'development_task.svg','image/svg+xml','issuetype',NULL,1),(10322,'feedback.svg','image/svg+xml','issuetype',NULL,1),(10323,'request_access.svg','image/svg+xml','issuetype',NULL,1),(10324,'default.svg','image/svg+xml','project',NULL,1),(10325,'code.svg','image/svg+xml','project',NULL,1),(10326,'coffee.svg','image/svg+xml','project',NULL,1),(10327,'design.svg','image/svg+xml','project',NULL,1),(10328,'drill.svg','image/svg+xml','project',NULL,1),(10329,'food.svg','image/svg+xml','project',NULL,1),(10330,'notes.svg','image/svg+xml','project',NULL,1),(10331,'red-flag.svg','image/svg+xml','project',NULL,1),(10332,'science.svg','image/svg+xml','project',NULL,1),(10333,'support.svg','image/svg+xml','project',NULL,1),(10334,'bull.svg','image/svg+xml','user',NULL,1),(10335,'cat.svg','image/svg+xml','user',NULL,1),(10336,'dog.svg','image/svg+xml','user',NULL,1),(10337,'female_1.svg','image/svg+xml','user',NULL,1),(10338,'female_2.svg','image/svg+xml','user',NULL,1),(10339,'female_3.svg','image/svg+xml','user',NULL,1),(10340,'female_4.svg','image/svg+xml','user',NULL,1),(10341,'ghost.svg','image/svg+xml','user',NULL,1),(10342,'male_1.svg','image/svg+xml','user',NULL,1),(10343,'male_2.svg','image/svg+xml','user',NULL,1),(10344,'male_3.svg','image/svg+xml','user',NULL,1),(10345,'male_4.svg','image/svg+xml','user',NULL,1),(10346,'male_5.svg','image/svg+xml','user',NULL,1),(10347,'male_6.svg','image/svg+xml','user',NULL,1),(10348,'male_8.svg','image/svg+xml','user',NULL,1),(10349,'owl.svg','image/svg+xml','user',NULL,1),(10350,'pirate.svg','image/svg+xml','user',NULL,1),(10351,'robot.svg','image/svg+xml','user',NULL,1),(10352,'vampire.svg','image/svg+xml','user',NULL,1);
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `ID` decimal(18,0) NOT NULL,
  `JQL` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardproject`
--

DROP TABLE IF EXISTS `boardproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardproject` (
  `BOARD_ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`BOARD_ID`,`PROJECT_ID`),
  KEY `idx_board_project_ids` (`PROJECT_ID`),
  KEY `idx_board_board_ids` (`BOARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardproject`
--

LOCK TABLES `boardproject` WRITE;
/*!40000 ALTER TABLE `boardproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `boardproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changegroup`
--

DROP TABLE IF EXISTS `changegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changegroup` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `chggroup_issue` (`issueid`),
  KEY `chggroup_author_created` (`AUTHOR`,`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changegroup`
--

LOCK TABLES `changegroup` WRITE;
/*!40000 ALTER TABLE `changegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `changegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeitem`
--

DROP TABLE IF EXISTS `changeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeitem` (
  `ID` decimal(18,0) NOT NULL,
  `groupid` decimal(18,0) DEFAULT NULL,
  `FIELDTYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OLDVALUE` longtext COLLATE utf8mb4_bin,
  `OLDSTRING` longtext COLLATE utf8mb4_bin,
  `NEWVALUE` longtext COLLATE utf8mb4_bin,
  `NEWSTRING` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `chgitem_chggrp` (`groupid`),
  KEY `chgitem_field` (`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeitem`
--

LOCK TABLES `changeitem` WRITE;
/*!40000 ALTER TABLE `changeitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `changeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusteredjob`
--

DROP TABLE IF EXISTS `clusteredjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusteredjob` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_RUNNER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SCHED_TYPE` char(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `INTERVAL_MILLIS` decimal(18,0) DEFAULT NULL,
  `FIRST_RUN` decimal(18,0) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TIME_ZONE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_RUN` decimal(18,0) DEFAULT NULL,
  `VERSION` decimal(18,0) DEFAULT NULL,
  `PARAMETERS` blob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `clusteredjob_jobid_idx` (`JOB_ID`),
  KEY `clusteredjob_jrk_idx` (`JOB_RUNNER_KEY`),
  KEY `clusteredjob_nextrun_idx` (`NEXT_RUN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusteredjob`
--

LOCK TABLES `clusteredjob` WRITE;
/*!40000 ALTER TABLE `clusteredjob` DISABLE KEYS */;
INSERT INTO `clusteredjob` VALUES (10001,'com.atlassian.jira.service.JiraService:10002','com.atlassian.jira.service.DefaultServiceManager','C',NULL,NULL,'0 0 0 * * ?',NULL,1560556800000,1,_binary '�\�\0sr\07com.google.common.collect.ImmutableBiMap$SerializedForm\0\0\0\0\0\0\0\0\0\0xr\05com.google.common.collect.ImmutableMap$SerializedForm\0\0\0\0\0\0\0\0\0[\0keyst\0[Ljava/lang/Object;[\0valuesq\0~\0xpur\0[Ljava.lang.Object;�\�X�s)l\0\0xp\0\0\0t\03com.atlassian.jira.service.ServiceManager:serviceIduq\0~\0\0\0\0sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\''),(10101,'analytics-collection','com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService','C',NULL,NULL,'0 0 23 * * ?',NULL,1560553200000,1,NULL),(10102,'assertionId-cleanup','com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService','I',3600000,1560530154968,NULL,NULL,1560530154968,1,NULL),(10103,'com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob','DailyAlertAnalyticsJob','C',NULL,NULL,'0 19 * * * ?',NULL,1560529140000,1,NULL),(10104,'com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor','com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor','I',3600000,1560530163628,NULL,NULL,1560530163628,1,NULL),(10105,'com.atlassian.jira.service.JiraService:10001','com.atlassian.jira.service.DefaultServiceManager','C',NULL,NULL,'0 30 3/12 * * ?',NULL,1560569400000,1,_binary '�\�\0sr\07com.google.common.collect.ImmutableBiMap$SerializedForm\0\0\0\0\0\0\0\0\0\0xr\05com.google.common.collect.ImmutableMap$SerializedForm\0\0\0\0\0\0\0\0\0[\0keyst\0[Ljava/lang/Object;[\0valuesq\0~\0xpur\0[Ljava.lang.Object;�\�X�s)l\0\0xp\0\0\0t\03com.atlassian.jira.service.ServiceManager:serviceIduq\0~\0\0\0\0sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\''),(10201,'LocalPluginLicenseNotificationJob-job','LocalPluginLicenseNotificationJob-runner','I',86400000,1560526626358,NULL,NULL,1560613026361,2,NULL),(10202,'PluginRequestCheckJob-job','PluginRequestCheckJob-runner','I',3600000,1560526626361,NULL,NULL,1560530226364,2,NULL),(10203,'PluginUpdateCheckJob-job','PluginUpdateCheckJob-runner','I',86400000,1560543808580,NULL,NULL,1560543808580,1,NULL),(10204,'InstanceTopologyJob-job','InstanceTopologyJob-runner','I',86400000,1560600911292,NULL,NULL,1560600911292,1,NULL),(10205,'com.atlassian.whisper.plugin.fetch.FetchJob','com.atlassian.whisper.plugin.fetch.FetchJob','I',21600000,1560530227499,NULL,NULL,1560530227499,1,NULL),(10206,'TruncateAlertsJobRunner','com.atlassian.diagnostics.internal.DefaultMonitoringService$TruncateAlertsJobRunner','I',86400000,1560613027510,NULL,NULL,1560613027510,1,NULL),(10207,'CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob','CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.ping.RefreshConnectionStatusJobHandler','I',3600000,1560526648493,NULL,NULL,1560530248493,2,NULL),(10208,'CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob','CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.UpdateGlancesDataJobHandler','I',60000,1560526649712,NULL,NULL,1560526829712,4,NULL),(10209,'CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob','CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.InstallGlancesJobHandler','I',3600000,1560526649130,NULL,NULL,1560530249130,2,NULL),(10210,'com.atlassian.jira.analytics.scheduler.AnalyticsScheduler','com.atlassian.jira.analytics.scheduler.AnalyticsScheduler','I',604800000,1560613027645,NULL,NULL,1560613027645,1,NULL),(10211,'applink-status-analytics-job','com.atlassian.applinks.analytics.ApplinkStatusJob','I',86400000,NULL,NULL,NULL,1560613027650,2,NULL),(10212,'CompatibilityPluginScheduler.JobId.Service Provider Session Remover','CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover','I',28800000,1560555427679,NULL,NULL,1560555427679,1,NULL);
/*!40000 ALTER TABLE `clusteredjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusterlockstatus`
--

DROP TABLE IF EXISTS `clusterlockstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusterlockstatus` (
  `ID` decimal(18,0) NOT NULL,
  `LOCK_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOCKED_BY_NODE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPDATE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cluster_lock_name_idx` (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusterlockstatus`
--

LOCK TABLES `clusterlockstatus` WRITE;
/*!40000 ALTER TABLE `clusterlockstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusterlockstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clustermessage`
--

DROP TABLE IF EXISTS `clustermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustermessage` (
  `ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NODE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CLAIMED_BY_NODE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `source_destination_node_idx` (`SOURCE_NODE`,`DESTINATION_NODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clustermessage`
--

LOCK TABLES `clustermessage` WRITE;
/*!40000 ALTER TABLE `clustermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusternode`
--

DROP TABLE IF EXISTS `clusternode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternode` (
  `NODE_ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `NODE_STATE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `TIMESTAMP` decimal(18,0) DEFAULT NULL,
  `IP` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CACHE_LISTENER_PORT` decimal(18,0) DEFAULT NULL,
  `NODE_BUILD_NUMBER` decimal(18,0) DEFAULT NULL,
  `NODE_VERSION` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusternode`
--

LOCK TABLES `clusternode` WRITE;
/*!40000 ALTER TABLE `clusternode` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusternode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusternodeheartbeat`
--

DROP TABLE IF EXISTS `clusternodeheartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternodeheartbeat` (
  `NODE_ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `HEARTBEAT_TIME` decimal(18,0) DEFAULT NULL,
  `DATABASE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusternodeheartbeat`
--

LOCK TABLES `clusternodeheartbeat` WRITE;
/*!40000 ALTER TABLE `clusternodeheartbeat` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusternodeheartbeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusterupgradestate`
--

DROP TABLE IF EXISTS `clusterupgradestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusterupgradestate` (
  `ID` decimal(18,0) NOT NULL,
  `DATABASE_TIME` decimal(18,0) DEFAULT NULL,
  `CLUSTER_BUILD_NUMBER` decimal(18,0) DEFAULT NULL,
  `CLUSTER_VERSION` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORDER_NUMBER` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ordernumber_idx` (`ORDER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusterupgradestate`
--

LOCK TABLES `clusterupgradestate` WRITE;
/*!40000 ALTER TABLE `clusterupgradestate` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusterupgradestate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnlayout`
--

DROP TABLE IF EXISTS `columnlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayout` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEARCHREQUEST` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cl_searchrequest` (`SEARCHREQUEST`),
  KEY `cl_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnlayout`
--

LOCK TABLES `columnlayout` WRITE;
/*!40000 ALTER TABLE `columnlayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `columnlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnlayoutitem`
--

DROP TABLE IF EXISTS `columnlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `COLUMNLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `HORIZONTALPOSITION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_cli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnlayoutitem`
--

LOCK TABLES `columnlayoutitem` WRITE;
/*!40000 ALTER TABLE `columnlayoutitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `columnlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `cname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text COLLATE utf8mb4_bin,
  `URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_component_project` (`PROJECT`),
  KEY `idx_component_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationcontext`
--

DROP TABLE IF EXISTS `configurationcontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationcontext` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECTCATEGORY` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `customfield` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `confcontext` (`PROJECTCATEGORY`,`PROJECT`,`customfield`),
  KEY `confcontextprojectkey` (`PROJECT`,`customfield`),
  KEY `confcontextfieldconfigscheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationcontext`
--

LOCK TABLES `configurationcontext` WRITE;
/*!40000 ALTER TABLE `configurationcontext` DISABLE KEYS */;
INSERT INTO `configurationcontext` VALUES (10000,NULL,NULL,'issuetype',10000),(10100,NULL,NULL,'priority',10100);
/*!40000 ALTER TABLE `configurationcontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield` (
  `ID` decimal(18,0) NOT NULL,
  `cfkey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CUSTOMFIELDTYPEKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CUSTOMFIELDSEARCHERKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `cfname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `defaultvalue` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELDTYPE` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield`
--

LOCK TABLES `customfield` WRITE;
/*!40000 ALTER TABLE `customfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldoption`
--

DROP TABLE IF EXISTS `customfieldoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldoption` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `PARENTOPTIONID` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `customvalue` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `optiontype` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `disabled` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_cfoption` (`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldoption`
--

LOCK TABLES `customfieldoption` WRITE;
/*!40000 ALTER TABLE `customfieldoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldvalue`
--

DROP TABLE IF EXISTS `customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldvalue` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `UPDATED` decimal(18,0) DEFAULT NULL,
  `PARENTKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STRINGVALUE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `NUMBERVALUE` decimal(18,6) DEFAULT NULL,
  `TEXTVALUE` longtext COLLATE utf8mb4_bin,
  `DATEVALUE` datetime DEFAULT NULL,
  `VALUETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cfvalue_issue` (`ISSUE`,`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldvalue`
--

LOCK TABLES `customfieldvalue` WRITE;
/*!40000 ALTER TABLE `customfieldvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_application`
--

DROP TABLE IF EXISTS `cwd_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application` (
  `ID` decimal(18,0) NOT NULL,
  `application_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_application_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `application_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `credential` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_application_name` (`lower_application_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_application`
--

LOCK TABLES `cwd_application` WRITE;
/*!40000 ALTER TABLE `cwd_application` DISABLE KEYS */;
INSERT INTO `cwd_application` VALUES (1,'crowd-embedded','crowd-embedded','2013-02-28 11:57:51','2013-02-28 11:57:51',1,'','CROWD','X');
/*!40000 ALTER TABLE `cwd_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_application_address`
--

DROP TABLE IF EXISTS `cwd_application_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application_address` (
  `application_id` decimal(18,0) NOT NULL,
  `remote_address` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `encoded_address_binary` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `remote_address_mask` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`application_id`,`remote_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_application_address`
--

LOCK TABLES `cwd_application_address` WRITE;
/*!40000 ALTER TABLE `cwd_application_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `cwd_application_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory`
--

DROP TABLE IF EXISTS `cwd_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory` (
  `ID` decimal(18,0) NOT NULL,
  `directory_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_directory_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `impl_class` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_impl_class` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `directory_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `directory_position` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `uk_directory_name` (`lower_directory_name`),
  KEY `idx_directory_active` (`active`),
  KEY `idx_directory_impl` (`lower_impl_class`),
  KEY `idx_directory_type` (`directory_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory`
--

LOCK TABLES `cwd_directory` WRITE;
/*!40000 ALTER TABLE `cwd_directory` DISABLE KEYS */;
INSERT INTO `cwd_directory` VALUES (1,'Jira Internal Directory','jira internal directory','2013-02-28 11:57:51','2013-02-28 11:57:51',1,'Jira default internal directory','com.atlassian.crowd.directory.InternalDirectory','com.atlassian.crowd.directory.internaldirectory','INTERNAL',0);
/*!40000 ALTER TABLE `cwd_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory_attribute`
--

DROP TABLE IF EXISTS `cwd_directory_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_attribute` (
  `directory_id` decimal(18,0) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `attribute_value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`directory_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory_attribute`
--

LOCK TABLES `cwd_directory_attribute` WRITE;
/*!40000 ALTER TABLE `cwd_directory_attribute` DISABLE KEYS */;
INSERT INTO `cwd_directory_attribute` VALUES (1,'user_encryption_method','atlassian-security');
/*!40000 ALTER TABLE `cwd_directory_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory_operation`
--

DROP TABLE IF EXISTS `cwd_directory_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_operation` (
  `directory_id` decimal(18,0) NOT NULL,
  `operation_type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`directory_id`,`operation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory_operation`
--

LOCK TABLES `cwd_directory_operation` WRITE;
/*!40000 ALTER TABLE `cwd_directory_operation` DISABLE KEYS */;
INSERT INTO `cwd_directory_operation` VALUES (1,'CREATE_GROUP'),(1,'CREATE_ROLE'),(1,'CREATE_USER'),(1,'DELETE_GROUP'),(1,'DELETE_ROLE'),(1,'DELETE_USER'),(1,'UPDATE_GROUP'),(1,'UPDATE_GROUP_ATTRIBUTE'),(1,'UPDATE_ROLE'),(1,'UPDATE_ROLE_ATTRIBUTE'),(1,'UPDATE_USER'),(1,'UPDATE_USER_ATTRIBUTE');
/*!40000 ALTER TABLE `cwd_directory_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_group`
--

DROP TABLE IF EXISTS `cwd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group` (
  `ID` decimal(18,0) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_group_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `local` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_name_dir_id` (`lower_group_name`,`directory_id`),
  KEY `idx_group_active` (`lower_group_name`,`active`),
  KEY `idx_group_dir_id` (`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_group`
--

LOCK TABLES `cwd_group` WRITE;
/*!40000 ALTER TABLE `cwd_group` DISABLE KEYS */;
INSERT INTO `cwd_group` VALUES (10000,'jira-administrators','jira-administrators',1,0,'2013-02-28 11:57:51','2013-02-28 11:57:51','',NULL,'GROUP',1),(10010,'jira-core-users','jira-core-users',1,0,'2019-06-14 15:34:56','2019-06-14 15:34:56',NULL,NULL,'GROUP',1);
/*!40000 ALTER TABLE `cwd_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_group_attributes`
--

DROP TABLE IF EXISTS `cwd_group_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `group_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_attr_name_lval` (`group_id`,`attribute_name`,`lower_attribute_value`),
  KEY `idx_group_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_group_attributes`
--

LOCK TABLES `cwd_group_attributes` WRITE;
/*!40000 ALTER TABLE `cwd_group_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cwd_group_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_membership`
--

DROP TABLE IF EXISTS `cwd_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_membership` (
  `ID` decimal(18,0) NOT NULL,
  `parent_id` decimal(18,0) DEFAULT NULL,
  `child_id` decimal(18,0) DEFAULT NULL,
  `membership_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_parent_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `child_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_child_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_mem_parent_child_type` (`parent_id`,`child_id`,`membership_type`),
  KEY `idx_mem_dir_parent_child` (`lower_parent_name`,`lower_child_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_parent` (`lower_parent_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_child` (`lower_child_name`,`membership_type`,`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_membership`
--

LOCK TABLES `cwd_membership` WRITE;
/*!40000 ALTER TABLE `cwd_membership` DISABLE KEYS */;
INSERT INTO `cwd_membership` VALUES (10000,10000,10000,'GROUP_USER',NULL,'jira-administrators','jira-administrators','jira_local_sysadmin','jira_local_sysadmin',1),(10001,10010,10000,'GROUP_USER',NULL,'jira-core-users','jira-core-users','jira_local_sysadmin','jira_local_sysadmin',1);
/*!40000 ALTER TABLE `cwd_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_user`
--

DROP TABLE IF EXISTS `cwd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user` (
  `ID` decimal(18,0) NOT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_first_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_last_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_email_address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREDENTIAL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_externally` decimal(9,0) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_name_dir_id` (`lower_user_name`,`directory_id`),
  KEY `uk_user_externalid_dir_id` (`EXTERNAL_ID`,`directory_id`),
  KEY `idx_first_name` (`lower_first_name`),
  KEY `idx_last_name` (`lower_last_name`),
  KEY `idx_display_name` (`lower_display_name`),
  KEY `idx_email_address` (`lower_email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_user`
--

LOCK TABLES `cwd_user` WRITE;
/*!40000 ALTER TABLE `cwd_user` DISABLE KEYS */;
INSERT INTO `cwd_user` VALUES (10000,1,'jira_local_sysadmin','jira_local_sysadmin',1,'2019-06-14 15:36:46','2019-06-14 15:36:46','Jira','jira','system administrator','system administrator','Jira system administrator','jira system administrator','kasmann@actonic.de','kasmann@actonic.de','{PKCS5S2}lmeM3fEf6dVR/Z+guRDPpjpy3xD81K/db2T9dyp0S/brsLhxjtZpLclWr0E39Swk',NULL,'88b80ef1-3e14-488c-90ec-5206f8d6b92d');
/*!40000 ALTER TABLE `cwd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_user_attributes`
--

DROP TABLE IF EXISTS `cwd_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `user_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_user_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`),
  KEY `uk_user_attr_name_lval` (`user_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_user_attributes`
--

LOCK TABLES `cwd_user_attributes` WRITE;
/*!40000 ALTER TABLE `cwd_user_attributes` DISABLE KEYS */;
INSERT INTO `cwd_user_attributes` VALUES (10000,10000,1,'requiresPasswordChange','false','false'),(10001,10000,1,'invalidPasswordAttempts','0','0'),(10002,10000,1,'passwordLastChanged','1560526606213','1560526606213'),(10003,10000,1,'password.reset.request.expiry','1560613006818','1560613006818'),(10004,10000,1,'password.reset.request.token','f67619897f22a43db3b1a16472c7a9ac0191490c','f67619897f22a43db3b1a16472c7a9ac0191490c'),(10100,10000,1,'login.currentFailedCount','0','0'),(10101,10000,1,'login.lastLoginMillis','1560526627794','1560526627794'),(10102,10000,1,'login.count','1','1');
/*!40000 ALTER TABLE `cwd_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadletter`
--

DROP TABLE IF EXISTS `deadletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadletter` (
  `ID` decimal(18,0) NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_SEEN` decimal(18,0) DEFAULT NULL,
  `MAIL_SERVER_ID` decimal(18,0) DEFAULT NULL,
  `FOLDER_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `deadletter_msg_server_folder` (`MESSAGE_ID`,`MAIL_SERVER_ID`,`FOLDER_NAME`),
  KEY `deadletter_lastSeen` (`LAST_SEEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadletter`
--

LOCK TABLES `deadletter` WRITE;
/*!40000 ALTER TABLE `deadletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `deadletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftworkflowscheme`
--

DROP TABLE IF EXISTS `draftworkflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `WORKFLOW_SCHEME_ID` decimal(18,0) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `draft_workflow_scheme_parent` (`WORKFLOW_SCHEME_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftworkflowscheme`
--

LOCK TABLES `draftworkflowscheme` WRITE;
/*!40000 ALTER TABLE `draftworkflowscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftworkflowscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftworkflowschemeentity`
--

DROP TABLE IF EXISTS `draftworkflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `draft_workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftworkflowschemeentity`
--

LOCK TABLES `draftworkflowschemeentity` WRITE;
/*!40000 ALTER TABLE `draftworkflowschemeentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftworkflowschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_property`
--

DROP TABLE IF EXISTS `entity_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `json_value` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `entityproperty_entity` (`ENTITY_NAME`,`ENTITY_ID`),
  KEY `entityproperty_key` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_property`
--

LOCK TABLES `entity_property` WRITE;
/*!40000 ALTER TABLE `entity_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_property_index_document`
--

DROP TABLE IF EXISTS `entity_property_index_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property_index_document` (
  `ID` decimal(18,0) NOT NULL,
  `PLUGIN_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MODULE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DOCUMENT` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `entpropindexdoc_module` (`PLUGIN_KEY`,`MODULE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_property_index_document`
--

LOCK TABLES `entity_property_index_document` WRITE;
/*!40000 ALTER TABLE `entity_property_index_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_property_index_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_translation`
--

DROP TABLE IF EXISTS `entity_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_translation` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `LOCALE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRANS_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRANS_DESC` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_entitytranslation` (`ENTITY_NAME`,`ENTITY_ID`,`LOCALE`),
  KEY `entitytranslation_locale` (`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_translation`
--

LOCK TABLES `entity_translation` WRITE;
/*!40000 ALTER TABLE `entity_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_entities`
--

DROP TABLE IF EXISTS `external_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_entities` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entitytype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ext_entity_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_entities`
--

LOCK TABLES `external_entities` WRITE;
/*!40000 ALTER TABLE `external_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalgadget`
--

DROP TABLE IF EXISTS `externalgadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalgadget` (
  `ID` decimal(18,0) NOT NULL,
  `GADGET_XML` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalgadget`
--

LOCK TABLES `externalgadget` WRITE;
/*!40000 ALTER TABLE `externalgadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalgadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favouriteassociations`
--

DROP TABLE IF EXISTS `favouriteassociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favouriteassociations` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `favourite_index` (`USERNAME`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favouriteassociations`
--

LOCK TABLES `favouriteassociations` WRITE;
/*!40000 ALTER TABLE `favouriteassociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `favouriteassociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature` (
  `ID` decimal(18,0) NOT NULL,
  `FEATURE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FEATURE_TYPE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `feature_id_userkey` (`ID`,`USER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (10000,'com.atlassian.jira.projects.ProjectCentricNavigation.Switch','site',''),(10001,'com.atlassian.jira.projects.issuenavigator','site',''),(10100,'com.atlassian.jira.agile.darkfeature.kanplan.enabled','site',''),(10101,'com.atlassian.jira.agile.darkfeature.kanplan.epics.and.versions.enabled','site',''),(10102,'com.atlassian.jira.agile.darkfeature.sprint.goal.enabled','site',''),(10103,'com.atlassian.jira.agile.darkfeature.edit.closed.sprint.enabled','site',''),(10104,'com.atlassian.jira.agile.darkfeature.splitissue','site','');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfigscheme`
--

DROP TABLE IF EXISTS `fieldconfigscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigscheme` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `FIELDID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfigscheme`
--

LOCK TABLES `fieldconfigscheme` WRITE;
/*!40000 ALTER TABLE `fieldconfigscheme` DISABLE KEYS */;
INSERT INTO `fieldconfigscheme` VALUES (10000,'Default Issue Type Scheme','Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.','issuetype',NULL),(10100,'Default priority scheme','This is default priority scheme used by all projects without any other scheme assigned','priority',NULL);
/*!40000 ALTER TABLE `fieldconfigscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfigschemeissuetype`
--

DROP TABLE IF EXISTS `fieldconfigschemeissuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigschemeissuetype` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDCONFIGURATION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_issuetype` (`ISSUETYPE`),
  KEY `fcs_scheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfigschemeissuetype`
--

LOCK TABLES `fieldconfigschemeissuetype` WRITE;
/*!40000 ALTER TABLE `fieldconfigschemeissuetype` DISABLE KEYS */;
INSERT INTO `fieldconfigschemeissuetype` VALUES (10100,NULL,10000,10000),(10200,NULL,10100,10100);
/*!40000 ALTER TABLE `fieldconfigschemeissuetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfiguration`
--

DROP TABLE IF EXISTS `fieldconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `FIELDID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fc_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfiguration`
--

LOCK TABLES `fieldconfiguration` WRITE;
/*!40000 ALTER TABLE `fieldconfiguration` DISABLE KEYS */;
INSERT INTO `fieldconfiguration` VALUES (10000,'Default Configuration for Issue Type','Default configuration generated by Jira','issuetype',NULL),(10100,'Default configuration for priority','Default configuration generated by Jira','priority',NULL);
/*!40000 ALTER TABLE `fieldconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayout`
--

DROP TABLE IF EXISTS `fieldlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayout` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `layout_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayout`
--

LOCK TABLES `fieldlayout` WRITE;
/*!40000 ALTER TABLE `fieldlayout` DISABLE KEYS */;
INSERT INTO `fieldlayout` VALUES (10000,'Default Field Configuration','The default field configuration','default',NULL);
/*!40000 ALTER TABLE `fieldlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutitem`
--

DROP TABLE IF EXISTS `fieldlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `VERTICALPOSITION` decimal(18,0) DEFAULT NULL,
  `ISHIDDEN` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISREQUIRED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `RENDERERTYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_fli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutitem`
--

LOCK TABLES `fieldlayoutitem` WRITE;
/*!40000 ALTER TABLE `fieldlayoutitem` DISABLE KEYS */;
INSERT INTO `fieldlayoutitem` VALUES (10100,10000,'summary',NULL,NULL,'false','true','jira-text-renderer'),(10101,10000,'issuetype',NULL,NULL,'false','true','jira-text-renderer'),(10102,10000,'security',NULL,NULL,'false','false','jira-text-renderer'),(10103,10000,'priority',NULL,NULL,'false','false','jira-text-renderer'),(10104,10000,'duedate',NULL,NULL,'false','false','jira-text-renderer'),(10105,10000,'components',NULL,NULL,'false','false','frother-control-renderer'),(10106,10000,'versions',NULL,NULL,'false','false','frother-control-renderer'),(10107,10000,'fixVersions',NULL,NULL,'false','false','frother-control-renderer'),(10108,10000,'assignee',NULL,NULL,'false','false','jira-text-renderer'),(10109,10000,'reporter',NULL,NULL,'false','true','jira-text-renderer'),(10110,10000,'environment','For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).',NULL,'false','false','atlassian-wiki-renderer'),(10111,10000,'description',NULL,NULL,'false','false','atlassian-wiki-renderer'),(10112,10000,'timetracking','An estimate of how much work remains until this issue will be resolved.<br>The format of this is \' *w *d *h *m \' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>',NULL,'false','false','jira-text-renderer'),(10113,10000,'resolution',NULL,NULL,'false','false','jira-text-renderer'),(10114,10000,'attachment',NULL,NULL,'false','false','jira-text-renderer'),(10115,10000,'comment',NULL,NULL,'false','false','atlassian-wiki-renderer'),(10116,10000,'labels',NULL,NULL,'false','false','jira-text-renderer'),(10117,10000,'worklog','Allows work to be logged whilst creating, editing or transitioning issues.',NULL,'false','false','atlassian-wiki-renderer'),(10118,10000,'issuelinks',NULL,NULL,'false','false','jira-text-renderer');
/*!40000 ALTER TABLE `fieldlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutscheme`
--

DROP TABLE IF EXISTS `fieldlayoutscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutscheme`
--

LOCK TABLES `fieldlayoutscheme` WRITE;
/*!40000 ALTER TABLE `fieldlayoutscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutschemeassociation`
--

DROP TABLE IF EXISTS `fieldlayoutschemeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeassociation` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `FIELDLAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fl_scheme_assoc` (`PROJECT`,`ISSUETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutschemeassociation`
--

LOCK TABLES `fieldlayoutschemeassociation` WRITE;
/*!40000 ALTER TABLE `fieldlayoutschemeassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutschemeassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutschemeentity`
--

DROP TABLE IF EXISTS `fieldlayoutschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldlayout_scheme` (`SCHEME`),
  KEY `fieldlayout_layout` (`FIELDLAYOUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutschemeentity`
--

LOCK TABLES `fieldlayoutschemeentity` WRITE;
/*!40000 ALTER TABLE `fieldlayoutschemeentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreen`
--

DROP TABLE IF EXISTS `fieldscreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreen` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreen`
--

LOCK TABLES `fieldscreen` WRITE;
/*!40000 ALTER TABLE `fieldscreen` DISABLE KEYS */;
INSERT INTO `fieldscreen` VALUES (1,'Default Screen','Allows to update all system fields.'),(2,'Workflow Screen','This screen is used in the workflow and enables you to assign issues'),(3,'Resolve Issue Screen','Allows to set resolution, change fix versions and assign an issue.');
/*!40000 ALTER TABLE `fieldscreen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenlayoutitem`
--

DROP TABLE IF EXISTS `fieldscreenlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENTAB` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscitem_tab` (`FIELDSCREENTAB`),
  KEY `fieldscreen_field` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenlayoutitem`
--

LOCK TABLES `fieldscreenlayoutitem` WRITE;
/*!40000 ALTER TABLE `fieldscreenlayoutitem` DISABLE KEYS */;
INSERT INTO `fieldscreenlayoutitem` VALUES (10000,'summary',0,10000),(10001,'issuetype',1,10000),(10002,'security',2,10000),(10003,'priority',3,10000),(10004,'duedate',4,10000),(10005,'components',5,10000),(10006,'versions',6,10000),(10007,'fixVersions',7,10000),(10008,'assignee',8,10000),(10009,'reporter',9,10000),(10010,'environment',10,10000),(10011,'description',11,10000),(10012,'timetracking',12,10000),(10013,'attachment',13,10000),(10014,'assignee',0,10001),(10015,'resolution',0,10002),(10016,'fixVersions',1,10002),(10017,'assignee',2,10002),(10018,'worklog',3,10002),(10100,'labels',14,10000);
/*!40000 ALTER TABLE `fieldscreenlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenscheme`
--

DROP TABLE IF EXISTS `fieldscreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenscheme`
--

LOCK TABLES `fieldscreenscheme` WRITE;
/*!40000 ALTER TABLE `fieldscreenscheme` DISABLE KEYS */;
INSERT INTO `fieldscreenscheme` VALUES (1,'Default Screen Scheme','Default Screen Scheme');
/*!40000 ALTER TABLE `fieldscreenscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenschemeitem`
--

DROP TABLE IF EXISTS `fieldscreenschemeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenschemeitem` (
  `ID` decimal(18,0) NOT NULL,
  `OPERATION` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `screenitem_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenschemeitem`
--

LOCK TABLES `fieldscreenschemeitem` WRITE;
/*!40000 ALTER TABLE `fieldscreenschemeitem` DISABLE KEYS */;
INSERT INTO `fieldscreenschemeitem` VALUES (10000,NULL,1,1);
/*!40000 ALTER TABLE `fieldscreenschemeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreentab`
--

DROP TABLE IF EXISTS `fieldscreentab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreentab` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_tab` (`FIELDSCREEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreentab`
--

LOCK TABLES `fieldscreentab` WRITE;
/*!40000 ALTER TABLE `fieldscreentab` DISABLE KEYS */;
INSERT INTO `fieldscreentab` VALUES (10000,'Field Tab',NULL,0,1),(10001,'Field Tab',NULL,0,2),(10002,'Field Tab',NULL,0,3);
/*!40000 ALTER TABLE `fieldscreentab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileattachment`
--

DROP TABLE IF EXISTS `fileattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattachment` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `MIMETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `FILESIZE` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `zip` decimal(9,0) DEFAULT NULL,
  `thumbnailable` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `attach_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileattachment`
--

LOCK TABLES `fileattachment` WRITE;
/*!40000 ALTER TABLE `fileattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtersubscription`
--

DROP TABLE IF EXISTS `filtersubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtersubscription` (
  `ID` decimal(18,0) NOT NULL,
  `FILTER_I_D` decimal(18,0) DEFAULT NULL,
  `USERNAME` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `groupname` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_RUN` datetime DEFAULT NULL,
  `EMAIL_ON_EMPTY` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `subscrpt_user` (`FILTER_I_D`,`USERNAME`),
  KEY `subscrptn_group` (`FILTER_I_D`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtersubscription`
--

LOCK TABLES `filtersubscription` WRITE;
/*!40000 ALTER TABLE `filtersubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtersubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgetuserpreference`
--

DROP TABLE IF EXISTS `gadgetuserpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgetuserpreference` (
  `ID` decimal(18,0) NOT NULL,
  `PORTLETCONFIGURATION` decimal(18,0) DEFAULT NULL,
  `USERPREFKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERPREFVALUE` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `userpref_portletconfiguration` (`PORTLETCONFIGURATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgetuserpreference`
--

LOCK TABLES `gadgetuserpreference` WRITE;
/*!40000 ALTER TABLE `gadgetuserpreference` DISABLE KEYS */;
INSERT INTO `gadgetuserpreference` VALUES (10000,10002,'isConfigured','true'),(10001,10003,'keys','__all_projects__'),(10002,10003,'isConfigured','true'),(10003,10003,'title','Your Company Jira'),(10004,10003,'numofentries','5');
/*!40000 ALTER TABLE `gadgetuserpreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genericconfiguration`
--

DROP TABLE IF EXISTS `genericconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genericconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `DATATYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DATAKEY` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `XMLVALUE` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type_key` (`DATATYPE`,`DATAKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genericconfiguration`
--

LOCK TABLES `genericconfiguration` WRITE;
/*!40000 ALTER TABLE `genericconfiguration` DISABLE KEYS */;
INSERT INTO `genericconfiguration` VALUES (10000,'DefaultValue','10000','<string>1</string>');
/*!40000 ALTER TABLE `genericconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalpermissionentry`
--

DROP TABLE IF EXISTS `globalpermissionentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalpermissionentry` (
  `ID` decimal(18,0) NOT NULL,
  `PERMISSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalpermissionentry`
--

LOCK TABLES `globalpermissionentry` WRITE;
/*!40000 ALTER TABLE `globalpermissionentry` DISABLE KEYS */;
INSERT INTO `globalpermissionentry` VALUES (10000,'ADMINISTER','jira-administrators'),(10006,'SYSTEM_ADMIN','jira-administrators'),(10100,'BULK_CHANGE','jira-core-users'),(10101,'USER_PICKER','jira-core-users'),(10102,'CREATE_SHARED_OBJECTS','jira-core-users'),(10103,'MANAGE_GROUP_FILTER_SUBSCRIPTIONS','jira-core-users'),(10104,'BULK_CHANGE','jira-administrators'),(10105,'USER_PICKER','jira-administrators'),(10106,'MANAGE_GROUP_FILTER_SUBSCRIPTIONS','jira-administrators'),(10107,'CREATE_SHARED_OBJECTS','jira-administrators');
/*!40000 ALTER TABLE `globalpermissionentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupbase`
--

DROP TABLE IF EXISTS `groupbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupbase` (
  `ID` decimal(18,0) NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osgroup_name` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupbase`
--

LOCK TABLES `groupbase` WRITE;
/*!40000 ALTER TABLE `groupbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_field_option`
--

DROP TABLE IF EXISTS `issue_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_field_option` (
  `ID` decimal(18,0) NOT NULL,
  `OPTION_ID` decimal(18,0) DEFAULT NULL,
  `FIELD_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROPERTIES` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_field_option`
--

LOCK TABLES `issue_field_option` WRITE;
/*!40000 ALTER TABLE `issue_field_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_field_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_field_option_scope`
--

DROP TABLE IF EXISTS `issue_field_option_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_field_option_scope` (
  `ID` decimal(18,0) NOT NULL,
  `OPTION_ID` decimal(18,0) DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SCOPE_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_field_option_scope`
--

LOCK TABLES `issue_field_option_scope` WRITE;
/*!40000 ALTER TABLE `issue_field_option_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_field_option_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuelink`
--

DROP TABLE IF EXISTS `issuelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelink` (
  `ID` decimal(18,0) NOT NULL,
  `LINKTYPE` decimal(18,0) DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `DESTINATION` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issuelink_src` (`SOURCE`),
  KEY `issuelink_dest` (`DESTINATION`),
  KEY `issuelink_type` (`LINKTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuelink`
--

LOCK TABLES `issuelink` WRITE;
/*!40000 ALTER TABLE `issuelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuelinktype`
--

DROP TABLE IF EXISTS `issuelinktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelinktype` (
  `ID` decimal(18,0) NOT NULL,
  `LINKNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `INWARD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `OUTWARD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `linktypename` (`LINKNAME`),
  KEY `linktypestyle` (`pstyle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuelinktype`
--

LOCK TABLES `issuelinktype` WRITE;
/*!40000 ALTER TABLE `issuelinktype` DISABLE KEYS */;
INSERT INTO `issuelinktype` VALUES (10000,'Blocks','is blocked by','blocks',NULL),(10001,'Cloners','is cloned by','clones',NULL),(10002,'Duplicate','is duplicated by','duplicates',NULL),(10003,'Relates','relates to','relates to',NULL),(10100,'jira_subtask_link','jira_subtask_inward','jira_subtask_outward','jira_subtask');
/*!40000 ALTER TABLE `issuelinktype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuesecurityscheme`
--

DROP TABLE IF EXISTS `issuesecurityscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuesecurityscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `DEFAULTLEVEL` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuesecurityscheme`
--

LOCK TABLES `issuesecurityscheme` WRITE;
/*!40000 ALTER TABLE `issuesecurityscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuesecurityscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuestatus` (
  `ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `ICONURL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUSCATEGORY` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

LOCK TABLES `issuestatus` WRITE;
/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES ('1',1,'Open','The issue is open and ready for the assignee to start work on it.','/images/icons/statuses/open.png',2),('3',3,'In Progress','This issue is being actively worked on at the moment by the assignee.','/images/icons/statuses/inprogress.png',4),('4',4,'Reopened','This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.','/images/icons/statuses/reopened.png',2),('5',5,'Resolved','A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.','/images/icons/statuses/resolved.png',3),('6',6,'Closed','The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.','/images/icons/statuses/closed.png',3);
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetype`
--

DROP TABLE IF EXISTS `issuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetype` (
  `ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `ICONURL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetype`
--

LOCK TABLES `issuetype` WRITE;
/*!40000 ALTER TABLE `issuetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetypescreenscheme`
--

DROP TABLE IF EXISTS `issuetypescreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetypescreenscheme`
--

LOCK TABLES `issuetypescreenscheme` WRITE;
/*!40000 ALTER TABLE `issuetypescreenscheme` DISABLE KEYS */;
INSERT INTO `issuetypescreenscheme` VALUES (1,'Default Issue Type Screen Scheme','The default issue type screen scheme');
/*!40000 ALTER TABLE `issuetypescreenscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetypescreenschemeentity`
--

DROP TABLE IF EXISTS `issuetypescreenschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetypescreenschemeentity`
--

LOCK TABLES `issuetypescreenschemeentity` WRITE;
/*!40000 ALTER TABLE `issuetypescreenschemeentity` DISABLE KEYS */;
INSERT INTO `issuetypescreenschemeentity` VALUES (10000,NULL,1,1);
/*!40000 ALTER TABLE `issuetypescreenschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraaction`
--

DROP TABLE IF EXISTS `jiraaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraaction` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `actiontype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `actionlevel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `actionbody` longtext COLLATE utf8mb4_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `actionnum` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `action_author_created` (`AUTHOR`,`CREATED`),
  KEY `action_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraaction`
--

LOCK TABLES `jiraaction` WRITE;
/*!40000 ALTER TABLE `jiraaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiradraftworkflows`
--

DROP TABLE IF EXISTS `jiradraftworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiradraftworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `PARENTNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiradraftworkflows`
--

LOCK TABLES `jiradraftworkflows` WRITE;
/*!40000 ALTER TABLE `jiradraftworkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiradraftworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraeventtype`
--

DROP TABLE IF EXISTS `jiraeventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraeventtype` (
  `ID` decimal(18,0) NOT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `event_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraeventtype`
--

LOCK TABLES `jiraeventtype` WRITE;
/*!40000 ALTER TABLE `jiraeventtype` DISABLE KEYS */;
INSERT INTO `jiraeventtype` VALUES (1,NULL,'Issue Created','This is the \'issue created\' event.','jira.system.event.type'),(2,NULL,'Issue Updated','This is the \'issue updated\' event.','jira.system.event.type'),(3,NULL,'Issue Assigned','This is the \'issue assigned\' event.','jira.system.event.type'),(4,NULL,'Issue Resolved','This is the \'issue resolved\' event.','jira.system.event.type'),(5,NULL,'Issue Closed','This is the \'issue closed\' event.','jira.system.event.type'),(6,NULL,'Issue Commented','This is the \'issue commented\' event.','jira.system.event.type'),(7,NULL,'Issue Reopened','This is the \'issue reopened\' event.','jira.system.event.type'),(8,NULL,'Issue Deleted','This is the \'issue deleted\' event.','jira.system.event.type'),(9,NULL,'Issue Moved','This is the \'issue moved\' event.','jira.system.event.type'),(10,NULL,'Work Logged On Issue','This is the \'work logged on issue\' event.','jira.system.event.type'),(11,NULL,'Work Started On Issue','This is the \'work started on issue\' event.','jira.system.event.type'),(12,NULL,'Work Stopped On Issue','This is the \'work stopped on issue\' event.','jira.system.event.type'),(13,NULL,'Generic Event','This is the \'generic event\' event.','jira.system.event.type'),(14,NULL,'Issue Comment Edited','This is the \'issue comment edited\' event.','jira.system.event.type'),(15,NULL,'Issue Worklog Updated','This is the \'issue worklog updated\' event.','jira.system.event.type'),(16,NULL,'Issue Worklog Deleted','This is the \'issue worklog deleted\' event.','jira.system.event.type'),(17,NULL,'Issue Comment Deleted','This is the \'issue comment deleted\' event.','jira.system.event.type');
/*!40000 ALTER TABLE `jiraeventtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraissue`
--

DROP TABLE IF EXISTS `jiraissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraissue` (
  `ID` decimal(18,0) NOT NULL,
  `pkey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `issuenum` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `REPORTER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ASSIGNEE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` longtext COLLATE utf8mb4_bin,
  `ENVIRONMENT` longtext COLLATE utf8mb4_bin,
  `PRIORITY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `RESOLUTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `issuestatus` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DUEDATE` datetime DEFAULT NULL,
  `RESOLUTIONDATE` datetime DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `WATCHES` decimal(18,0) DEFAULT NULL,
  `TIMEORIGINALESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMEESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMESPENT` decimal(18,0) DEFAULT NULL,
  `WORKFLOW_ID` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `FIXFOR` decimal(18,0) DEFAULT NULL,
  `COMPONENT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issue_proj_num` (`issuenum`,`PROJECT`),
  KEY `issue_proj_status` (`PROJECT`,`issuestatus`),
  KEY `issue_created` (`CREATED`),
  KEY `issue_updated` (`UPDATED`),
  KEY `issue_duedate` (`DUEDATE`),
  KEY `issue_resolutiondate` (`RESOLUTIONDATE`),
  KEY `issue_assignee` (`ASSIGNEE`),
  KEY `issue_reporter` (`REPORTER`),
  KEY `issue_workflow` (`WORKFLOW_ID`),
  KEY `issue_votes` (`VOTES`),
  KEY `issue_watches` (`WATCHES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraissue`
--

LOCK TABLES `jiraissue` WRITE;
/*!40000 ALTER TABLE `jiraissue` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraperms`
--

DROP TABLE IF EXISTS `jiraperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraperms` (
  `ID` decimal(18,0) NOT NULL,
  `permtype` decimal(18,0) DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraperms`
--

LOCK TABLES `jiraperms` WRITE;
/*!40000 ALTER TABLE `jiraperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraworkflows`
--

DROP TABLE IF EXISTS `jiraworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `workflowname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `creatorname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8mb4_bin,
  `ISLOCKED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraworkflows`
--

LOCK TABLES `jiraworkflows` WRITE;
/*!40000 ALTER TABLE `jiraworkflows` DISABLE KEYS */;
INSERT INTO `jiraworkflows` VALUES (10000,'classic default workflow',NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE workflow PUBLIC \"-//OpenSymphony Group//DTD OSWorkflow 2.8//EN\" \"http://www.opensymphony.com/osworkflow/workflow_2_8.dtd\">\n<workflow>\n  <meta name=\"jira.description\">The classic Jira default workflow</meta>\n  <initial-actions>\n    <action id=\"1\" name=\"Create Issue\">\n      <meta name=\"opsbar-sequence\">0</meta>\n      <meta name=\"jira.i18n.title\">common.forms.create</meta>\n      <validators>\n        <validator name=\"\" type=\"class\">\n          <arg name=\"class.name\">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name=\"permission\">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Open\" step=\"1\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id=\"2\" name=\"Close Issue\" view=\"resolveissue\">\n      <meta name=\"opsbar-sequence\">60</meta>\n      <meta name=\"jira.i18n.submit\">closeissue.close</meta>\n      <meta name=\"jira.i18n.description\">closeissue.desc</meta>\n      <meta name=\"jira.i18n.title\">closeissue.title</meta>\n      <restrict-to>\n        <conditions type=\"AND\">\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Closed\" step=\"6\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"3\" name=\"Reopen Issue\" view=\"commentassign\">\n      <meta name=\"opsbar-sequence\">80</meta>\n      <meta name=\"jira.i18n.submit\">issue.operations.reopen.issue</meta>\n      <meta name=\"jira.i18n.description\">issue.operations.reopen.description</meta>\n      <meta name=\"jira.i18n.title\">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Reopened\" step=\"5\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"field.name\">resolution</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"4\" name=\"Start Progress\">\n      <meta name=\"opsbar-sequence\">20</meta>\n      <meta name=\"jira.i18n.title\">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Underway\" step=\"3\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"field.name\">resolution</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"5\" name=\"Resolve Issue\" view=\"resolveissue\">\n      <meta name=\"opsbar-sequence\">40</meta>\n      <meta name=\"jira.i18n.submit\">resolveissue.resolve</meta>\n      <meta name=\"jira.i18n.description\">resolveissue.desc.line1</meta>\n      <meta name=\"jira.i18n.title\">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Resolved\" step=\"4\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id=\"1\" name=\"Open\">\n      <meta name=\"jira.status.id\">1</meta>\n      <actions>\n<common-action id=\"4\" />\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n      </actions>\n    </step>\n    <step id=\"3\" name=\"In Progress\">\n      <meta name=\"jira.status.id\">3</meta>\n      <actions>\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n        <action id=\"301\" name=\"Stop Progress\">\n          <meta name=\"opsbar-sequence\">20</meta>\n          <meta name=\"jira.i18n.title\">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type=\"class\">\n                <arg name=\"class.name\">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status=\"Finished\" status=\"Assigned\" step=\"1\">\n              <post-functions>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name=\"field.value\"></arg>\n                  <arg name=\"field.name\">resolution</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name=\"eventTypeId\">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id=\"4\" name=\"Resolved\">\n      <meta name=\"jira.status.id\">5</meta>\n      <actions>\n<common-action id=\"3\" />\n        <action id=\"701\" name=\"Close Issue\" view=\"commentassign\">\n          <meta name=\"opsbar-sequence\">60</meta>\n          <meta name=\"jira.i18n.submit\">closeissue.close</meta>\n          <meta name=\"jira.i18n.description\">closeissue.desc</meta>\n          <meta name=\"jira.i18n.title\">closeissue.title</meta>\n          <meta name=\"jira.description\">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type=\"class\">\n                <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name=\"permission\">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status=\"Finished\" status=\"Closed\" step=\"6\">\n              <post-functions>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name=\"eventTypeId\">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id=\"5\" name=\"Reopened\">\n      <meta name=\"jira.status.id\">4</meta>\n      <actions>\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n<common-action id=\"4\" />\n      </actions>\n    </step>\n    <step id=\"6\" name=\"Closed\">\n      <meta name=\"jira.status.id\">6</meta>\n      <meta name=\"jira.issue.editable\">false</meta>\n      <actions>\n<common-action id=\"3\" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n',NULL);
/*!40000 ALTER TABLE `jiraworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraworkflowstatuses`
--

DROP TABLE IF EXISTS `jiraworkflowstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraworkflowstatuses` (
  `ID` decimal(18,0) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `parentname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_parent_name` (`parentname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraworkflowstatuses`
--

LOCK TABLES `jiraworkflowstatuses` WRITE;
/*!40000 ALTER TABLE `jiraworkflowstatuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraworkflowstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` decimal(18,0) DEFAULT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `LABEL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `label_fieldissue` (`ISSUE`,`FIELDID`),
  KEY `label_fieldissuelabel` (`ISSUE`,`FIELDID`,`LABEL`),
  KEY `label_label` (`LABEL`),
  KEY `label_issue` (`ISSUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenserolesdefault`
--

DROP TABLE IF EXISTS `licenserolesdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesdefault` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenseroledefault_index` (`LICENSE_ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenserolesdefault`
--

LOCK TABLES `licenserolesdefault` WRITE;
/*!40000 ALTER TABLE `licenserolesdefault` DISABLE KEYS */;
INSERT INTO `licenserolesdefault` VALUES (10000,'jira-core');
/*!40000 ALTER TABLE `licenserolesdefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenserolesgroup`
--

DROP TABLE IF EXISTS `licenserolesgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesgroup` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PRIMARY_GROUP` char(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenserolegroup_index` (`LICENSE_ROLE_NAME`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenserolesgroup`
--

LOCK TABLES `licenserolesgroup` WRITE;
/*!40000 ALTER TABLE `licenserolesgroup` DISABLE KEYS */;
INSERT INTO `licenserolesgroup` VALUES (10000,'jira-core','jira-core-users','Y'),(10001,'jira-core','jira-administrators','N');
/*!40000 ALTER TABLE `licenserolesgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenerconfig`
--

DROP TABLE IF EXISTS `listenerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listenerconfig` (
  `ID` decimal(18,0) NOT NULL,
  `CLAZZ` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `listenername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenerconfig`
--

LOCK TABLES `listenerconfig` WRITE;
/*!40000 ALTER TABLE `listenerconfig` DISABLE KEYS */;
INSERT INTO `listenerconfig` VALUES (10000,'com.atlassian.jira.event.listeners.mail.MailListener','Mail Listener'),(10001,'com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener','Issue Assignment Listener'),(10200,'com.atlassian.jira.event.listeners.search.IssueIndexListener','Issue Index Listener');
/*!40000 ALTER TABLE `listenerconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailserver`
--

DROP TABLE IF EXISTS `mailserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailserver` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `mailfrom` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PREFIX` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `smtp_port` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `protocol` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `server_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `SERVERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JNDILOCATION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mailusername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mailpassword` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISTLSREQUIRED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `socks_port` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `socks_host` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailserver`
--

LOCK TABLES `mailserver` WRITE;
/*!40000 ALTER TABLE `mailserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managedconfigurationitem`
--

DROP TABLE IF EXISTS `managedconfigurationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managedconfigurationitem` (
  `ID` decimal(18,0) NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ITEM_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MANAGED` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_LEVEL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SOURCE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `managedconfigitem_id_type_idx` (`ITEM_ID`,`ITEM_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managedconfigurationitem`
--

LOCK TABLES `managedconfigurationitem` WRITE;
/*!40000 ALTER TABLE `managedconfigurationitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `managedconfigurationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershipbase`
--

DROP TABLE IF EXISTS `membershipbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershipbase` (
  `ID` decimal(18,0) NOT NULL,
  `USER_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `GROUP_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `mshipbase_user` (`USER_NAME`),
  KEY `mshipbase_group` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershipbase`
--

LOCK TABLES `membershipbase` WRITE;
/*!40000 ALTER TABLE `membershipbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershipbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moved_issue_key`
--

DROP TABLE IF EXISTS `moved_issue_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moved_issue_key` (
  `ID` decimal(18,0) NOT NULL,
  `OLD_ISSUE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISSUE_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_old_issue_key` (`OLD_ISSUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moved_issue_key`
--

LOCK TABLES `moved_issue_key` WRITE;
/*!40000 ALTER TABLE `moved_issue_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `moved_issue_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeassociation`
--

DROP TABLE IF EXISTS `nodeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeassociation` (
  `SOURCE_NODE_ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE_ENTITY` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `node_source` (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`),
  KEY `node_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeassociation`
--

LOCK TABLES `nodeassociation` WRITE;
/*!40000 ALTER TABLE `nodeassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodeassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeindexcounter`
--

DROP TABLE IF EXISTS `nodeindexcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeindexcounter` (
  `ID` decimal(18,0) NOT NULL,
  `NODE_ID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `SENDING_NODE_ID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `INDEX_OPERATION_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `node_id_idx` (`NODE_ID`,`SENDING_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeindexcounter`
--

LOCK TABLES `nodeindexcounter` WRITE;
/*!40000 ALTER TABLE `nodeindexcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodeindexcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `EVENT` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `EVENT_TYPE_ID` decimal(18,0) DEFAULT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `notif_type` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `notif_parameter` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ntfctn_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (10000,10000,NULL,1,NULL,'Current_Assignee',NULL),(10001,10000,NULL,1,NULL,'Current_Reporter',NULL),(10002,10000,NULL,1,NULL,'All_Watchers',NULL),(10003,10000,NULL,2,NULL,'Current_Assignee',NULL),(10004,10000,NULL,2,NULL,'Current_Reporter',NULL),(10005,10000,NULL,2,NULL,'All_Watchers',NULL),(10006,10000,NULL,3,NULL,'Current_Assignee',NULL),(10007,10000,NULL,3,NULL,'Current_Reporter',NULL),(10008,10000,NULL,3,NULL,'All_Watchers',NULL),(10009,10000,NULL,4,NULL,'Current_Assignee',NULL),(10010,10000,NULL,4,NULL,'Current_Reporter',NULL),(10011,10000,NULL,4,NULL,'All_Watchers',NULL),(10012,10000,NULL,5,NULL,'Current_Assignee',NULL),(10013,10000,NULL,5,NULL,'Current_Reporter',NULL),(10014,10000,NULL,5,NULL,'All_Watchers',NULL),(10015,10000,NULL,6,NULL,'Current_Assignee',NULL),(10016,10000,NULL,6,NULL,'Current_Reporter',NULL),(10017,10000,NULL,6,NULL,'All_Watchers',NULL),(10018,10000,NULL,7,NULL,'Current_Assignee',NULL),(10019,10000,NULL,7,NULL,'Current_Reporter',NULL),(10020,10000,NULL,7,NULL,'All_Watchers',NULL),(10021,10000,NULL,8,NULL,'Current_Assignee',NULL),(10022,10000,NULL,8,NULL,'Current_Reporter',NULL),(10023,10000,NULL,8,NULL,'All_Watchers',NULL),(10024,10000,NULL,9,NULL,'Current_Assignee',NULL),(10025,10000,NULL,9,NULL,'Current_Reporter',NULL),(10026,10000,NULL,9,NULL,'All_Watchers',NULL),(10027,10000,NULL,10,NULL,'Current_Assignee',NULL),(10028,10000,NULL,10,NULL,'Current_Reporter',NULL),(10029,10000,NULL,10,NULL,'All_Watchers',NULL),(10030,10000,NULL,11,NULL,'Current_Assignee',NULL),(10031,10000,NULL,11,NULL,'Current_Reporter',NULL),(10032,10000,NULL,11,NULL,'All_Watchers',NULL),(10033,10000,NULL,12,NULL,'Current_Assignee',NULL),(10034,10000,NULL,12,NULL,'Current_Reporter',NULL),(10035,10000,NULL,12,NULL,'All_Watchers',NULL),(10036,10000,NULL,13,NULL,'Current_Assignee',NULL),(10037,10000,NULL,13,NULL,'Current_Reporter',NULL),(10038,10000,NULL,13,NULL,'All_Watchers',NULL),(10100,10000,NULL,14,NULL,'Current_Assignee',NULL),(10101,10000,NULL,14,NULL,'Current_Reporter',NULL),(10102,10000,NULL,14,NULL,'All_Watchers',NULL),(10103,10000,NULL,15,NULL,'Current_Assignee',NULL),(10104,10000,NULL,15,NULL,'Current_Reporter',NULL),(10105,10000,NULL,15,NULL,'All_Watchers',NULL),(10106,10000,NULL,16,NULL,'Current_Assignee',NULL),(10107,10000,NULL,16,NULL,'Current_Reporter',NULL),(10108,10000,NULL,16,NULL,'All_Watchers',NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationinstance`
--

DROP TABLE IF EXISTS `notificationinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationinstance` (
  `ID` decimal(18,0) NOT NULL,
  `notificationtype` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `emailaddress` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGEID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `notif_source` (`SOURCE`),
  KEY `notif_messageid` (`MESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationinstance`
--

LOCK TABLES `notificationinstance` WRITE;
/*!40000 ALTER TABLE `notificationinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationscheme`
--

DROP TABLE IF EXISTS `notificationscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationscheme`
--

LOCK TABLES `notificationscheme` WRITE;
/*!40000 ALTER TABLE `notificationscheme` DISABLE KEYS */;
INSERT INTO `notificationscheme` VALUES (10000,'Default Notification Scheme',NULL);
/*!40000 ALTER TABLE `notificationscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthconsumer`
--

DROP TABLE IF EXISTS `oauthconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `consumerservice` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8mb4_bin,
  `PRIVATE_KEY` text COLLATE utf8mb4_bin,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `CALLBACK` text COLLATE utf8mb4_bin,
  `SIGNATURE_METHOD` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `SHARED_SECRET` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_index` (`CONSUMER_KEY`),
  UNIQUE KEY `oauth_consumer_service_index` (`consumerservice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthconsumer`
--

LOCK TABLES `oauthconsumer` WRITE;
/*!40000 ALTER TABLE `oauthconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthconsumertoken`
--

DROP TABLE IF EXISTS `oauthconsumertoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumertoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_token_key_index` (`TOKEN_KEY`),
  KEY `oauth_consumer_token_index` (`TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthconsumertoken`
--

LOCK TABLES `oauthconsumertoken` WRITE;
/*!40000 ALTER TABLE `oauthconsumertoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthconsumertoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthspconsumer`
--

DROP TABLE IF EXISTS `oauthspconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthspconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8mb4_bin,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `CALLBACK` text COLLATE utf8mb4_bin,
  `TWO_L_O_ALLOWED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `EXECUTING_TWO_L_O_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TWO_L_O_IMPERSONATION_ALLOWED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `THREE_L_O_ALLOWED` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_consumer_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthspconsumer`
--

LOCK TABLES `oauthspconsumer` WRITE;
/*!40000 ALTER TABLE `oauthspconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthspconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthsptoken`
--

DROP TABLE IF EXISTS `oauthsptoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthsptoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TTL` decimal(18,0) DEFAULT NULL,
  `spauth` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `CALLBACK` text COLLATE utf8mb4_bin,
  `spverifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `spversion` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `SESSION_HANDLE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SESSION_CREATION_TIME` datetime DEFAULT NULL,
  `SESSION_LAST_RENEWAL_TIME` datetime DEFAULT NULL,
  `SESSION_TIME_TO_LIVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_token_index` (`TOKEN`),
  KEY `oauth_sp_consumer_key_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthsptoken`
--

LOCK TABLES `oauthsptoken` WRITE;
/*!40000 ALTER TABLE `oauthsptoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthsptoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionconfiguration`
--

DROP TABLE IF EXISTS `optionconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optionconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `OPTIONID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldid_optionid` (`FIELDID`,`OPTIONID`),
  KEY `fieldid_fieldconf` (`FIELDID`,`FIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionconfiguration`
--

LOCK TABLES `optionconfiguration` WRITE;
/*!40000 ALTER TABLE `optionconfiguration` DISABLE KEYS */;
INSERT INTO `optionconfiguration` VALUES (10200,'priority','1',10100,1),(10201,'priority','2',10100,2),(10202,'priority','3',10100,3),(10203,'priority','4',10100,4),(10204,'priority','5',10100,5);
/*!40000 ALTER TABLE `optionconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionscheme`
--

DROP TABLE IF EXISTS `permissionscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionscheme`
--

LOCK TABLES `permissionscheme` WRITE;
/*!40000 ALTER TABLE `permissionscheme` DISABLE KEYS */;
INSERT INTO `permissionscheme` VALUES (0,'Default Permission Scheme','This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.');
/*!40000 ALTER TABLE `permissionscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionschemeattribute`
--

DROP TABLE IF EXISTS `permissionschemeattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionschemeattribute` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `ATTRIBUTE_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ATTRIBUTE_VALUE` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `prmssn_scheme_attr_idx` (`SCHEME`),
  KEY `prmssn_scheme_attr_key_idx` (`SCHEME`,`ATTRIBUTE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionschemeattribute`
--

LOCK TABLES `permissionschemeattribute` WRITE;
/*!40000 ALTER TABLE `permissionschemeattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionschemeattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginstate`
--

DROP TABLE IF EXISTS `pluginstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginstate` (
  `pluginkey` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `pluginenabled` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`pluginkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginstate`
--

LOCK TABLES `pluginstate` WRITE;
/*!40000 ALTER TABLE `pluginstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginversion`
--

DROP TABLE IF EXISTS `pluginversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginversion` (
  `ID` decimal(18,0) NOT NULL,
  `pluginname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pluginkey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pluginversion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginversion`
--

LOCK TABLES `pluginversion` WRITE;
/*!40000 ALTER TABLE `pluginversion` DISABLE KEYS */;
INSERT INTO `pluginversion` VALUES (10000,'Jira Projects Plugin','com.atlassian.jira.jira-projects-plugin','4.5.33','2019-06-14 15:36:04'),(10001,'Atlassian OAuth Consumer Plugin','com.atlassian.oauth.consumer','2.1.1','2019-06-14 15:36:04'),(10002,'Atlassian Jira - Plugins - My Jira Home','com.atlassian.jira.jira-my-home-plugin','7.13.3','2019-06-14 15:36:04'),(10003,'Project Creation Plugin SPI for JIRA','com.atlassian.plugins.jira-project-creation','3.2.1','2019-06-14 15:36:04'),(10004,'Atlassian Embedded Crowd - Administration Plugin','com.atlassian.crowd.embedded.admin','2.3.3','2019-06-14 15:36:04'),(10005,'Analytics Client Plugin','com.atlassian.analytics.analytics-client','5.6.2','2019-06-14 15:36:04'),(10006,'Jira Help Tips plugin','com.atlassian.plugins.helptips.jira-help-tips','7.13.3','2019-06-14 15:36:04'),(10007,'Atlassian Navigation Links Plugin','com.atlassian.plugins.atlassian-nav-links-plugin','4.3.0','2019-06-14 15:36:04'),(10008,'JIRA Core Romanian (Romania) Language Pack','tac.jira core.languages.ro_RO','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10009,'Atlassian Jira - Plugins - Issue Web Link','com.atlassian.jira.jira-issue-link-web-plugin','7.13.3','2019-06-14 15:36:04'),(10010,'JIRA Core Slovak (Slovakia) Language Pack','tac.jira core.languages.sk_SK','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10011,'Atlassian Hipchat Integration Plugin Core','com.atlassian.plugins.base-hipchat-integration-plugin-api','7.10.3','2019-06-14 15:36:04'),(10012,'Whisper Messages Plugin','whisper.messages','1.0','2019-06-14 15:36:04'),(10013,'Project Role Actors Plugin','com.atlassian.jira.plugin.system.projectroleactors','1.0','2019-06-14 15:36:04'),(10014,'Atlassian Jira - Plugins - OAuth Service Provider SPI','com.atlassian.jira.oauth.serviceprovider','7.13.3','2019-06-14 15:36:04'),(10015,'Keyboard Shortcuts Plugin','jira.keyboard.shortcuts','1.0','2019-06-14 15:36:04'),(10016,'Bitbucket Importer Plugin for JIM','com.atlassian.jira.plugins.jira-importers-bitbucket-plugin','1.0.19','2019-06-14 15:36:04'),(10017,'Atlassian Remote Event Common Plugin','com.atlassian.plugins.atlassian-remote-event-common-plugin','1.0.13','2019-06-14 15:36:04'),(10018,'Jira GitHub Issue Importer','com.atlassian.jira.plugins.jira-importers-github-plugin','3.0.3','2019-06-14 15:36:04'),(10019,'JIRA Password Policy Plugin','com.atlassian.jira.plugins.jira-password-policy-plugin','2.0.2','2019-06-14 15:36:04'),(10020,'ROME: RSS/Atom syndication and publishing tools','com.springsource.com.sun.syndication-0.9.0','0.9.0','2019-06-14 15:36:04'),(10021,'JIRA iCalendar Plugin','com.atlassian.jira.extra.jira-ical-feed','1.4.7','2019-06-14 15:36:04'),(10022,'Jira Drag and Drop Attachment Plugin','com.atlassian.jira.plugins.jira-dnd-attachment-plugin','4.4.20','2019-06-14 15:36:04'),(10023,'Atlassian Jira - Plugins - Post setup announcements plugin','com.atlassian.jira.jira-postsetup-announcements-plugin','7.13.3','2019-06-14 15:36:04'),(10024,'Streams Inline Actions Plugin','com.atlassian.streams.actions','6.4.8','2019-06-14 15:36:04'),(10025,'JIRA Core Swedish (Sweden) Language Pack','tac.jira core.languages.sv_SE','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10026,'Comment Panel Plugin','com.atlassian.jira.plugin.system.comment-panel','1.0','2019-06-14 15:36:04'),(10027,'Atlassian Remote Event Consumer Plugin','com.atlassian.plugins.atlassian-remote-event-consumer-plugin','1.0.13','2019-06-14 15:36:04'),(10028,'scala-2.11-provider-plugin','com.atlassian.scala.plugins.scala-2.11-provider-plugin','0.13','2019-06-14 15:36:04'),(10029,'JIRA Workflow Transition Tabs','com.atlassian.jira.plugin.system.workfloweditor.transition.tabs','1.0','2019-06-14 15:36:04'),(10030,'JIRA Core Czech (Czech Republic) Language Pack','tac.jira core.languages.cs_CZ','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10031,'Renderer Plugin','com.atlassian.jira.plugin.system.jirarenderers','1.0','2019-06-14 15:36:04'),(10032,'Atlassian Gadgets OAuth Service Provider Plugin','com.atlassian.gadgets.oauth.serviceprovider','4.2.32','2019-06-14 15:36:04'),(10033,'Functional Optics Library','io.atlassian.fugue.optics-4.5.0','4.5.0','2019-06-14 15:36:04'),(10034,'JIRA Core Japanese (Japan) Language Pack','tac.jira core.languages.ja_JP','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10035,'JIRA Core Italian (Italy) Language Pack','tac.jira core.languages.it_IT','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10036,'JIRA Core Polish (Poland) Language Pack','tac.jira core.languages.pl_PL','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10037,'Functional Extensions Retry Inter-Ops','io.atlassian.fugue.retry-4.5.0','4.5.0','2019-06-14 15:36:04'),(10038,'Atlassian Jira - Plugins - Admin Navigation Component','com.atlassian.jira.jira-admin-navigation-plugin','7.13.3','2019-06-14 15:36:04'),(10039,'JIRA Core German (Germany) Language Pack','tac.jira core.languages.de_DE','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10040,'Atlassian Plugins - Web Resources - Implementation Plugin','com.atlassian.plugins.atlassian-plugins-webresource-plugin','3.5.43','2019-06-14 15:36:04'),(10041,'Preset Filters Sections','jira.webfragments.preset.filters','1.0','2019-06-14 15:36:04'),(10042,'Atlassian Jira - Plugins - Project Config Plugin','com.atlassian.jira.jira-project-config-plugin','7.13.3','2019-06-14 15:36:04'),(10043,'Crowd System Password Encoders','crowd.system.passwordencoders','1.0','2019-06-14 15:36:04'),(10044,'Atlassian UI Plugin','com.atlassian.auiplugin','7.9.9','2019-06-14 15:36:04'),(10045,'Atlassian Jira - Plugins - Share Content Component','com.atlassian.jira.jira-share-plugin','7.13.3','2019-06-14 15:36:04'),(10046,'Atlassian Jira - Plugins - Statistics plugin','com.atlassian.jira.jira-statistics-plugin','7.13.3','2019-06-14 15:36:04'),(10047,'Atlassian Jira - Plugins - Remote Jira Link','com.atlassian.jira.jira-issue-link-remote-jira-plugin','7.13.3','2019-06-14 15:36:04'),(10048,'Remote Link Aggregator Plugin','com.atlassian.plugins.remote-link-aggregator-plugin','2.0.14','2019-06-14 15:36:04'),(10049,'Atlassian HealthCheck Common Module','com.atlassian.healthcheck.atlassian-healthcheck','3.0.1','2019-06-14 15:36:04'),(10050,'Workbox - Common Plugin','com.atlassian.mywork.mywork-common-plugin','5.0.3','2019-06-14 15:36:04'),(10051,'Jira Workflow Sharing Plugin','com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin','2.1.6','2019-06-14 15:36:04'),(10052,'Entity property conditions','system.entity.property.conditions','1.0','2019-06-14 15:36:04'),(10053,'org.osgi:org.osgi.service.cm','org.osgi.service.cm-1.5.0.201505202024','1.5.0.201505202024','2019-06-14 15:36:04'),(10054,'Atlassian Jira - Plugins - APDEX','com.atlassian.jira.jira-apdex-plugin','7.13.3','2019-06-14 15:36:04'),(10055,'JQL Functions','jira.jql.function','1.0','2019-06-14 15:36:04'),(10056,'Atlassian Soy - Plugin','com.atlassian.soy.soy-template-plugin','4.3.0','2019-06-14 15:36:04'),(10057,'atlassian-failure-cache-plugin','com.atlassian.atlassian-failure-cache-plugin','0.15','2019-06-14 15:36:04'),(10058,'Atlassian Jira - Plugins - View Issue Panels','com.atlassian.jira.jira-view-issue-plugin','7.13.3','2019-06-14 15:36:04'),(10059,'Functional Extensions Scala Inter-Ops','io.atlassian.fugue.scala-4.5.0','4.5.0','2019-06-14 15:36:04'),(10060,'JIRA Footer','jira.footer','1.0','2019-06-14 15:36:04'),(10061,'Applinks - Plugin - Core','com.atlassian.applinks.applinks-plugin','5.4.12','2019-06-14 15:36:04'),(10062,'jira-optimizer-plugin','com.atlassian.jira.plugins.jira-optimizer-plugin','1.0.17','2019-06-14 15:36:04'),(10063,'Analytics Whitelist Plugin','com.atlassian.analytics.analytics-whitelist','3.68','2019-06-14 15:36:04'),(10064,'Atlassian Whitelist API Plugin','com.atlassian.plugins.atlassian-whitelist-api-plugin-4.0.5','4.0.5','2019-06-14 15:36:04'),(10065,'Atlassian Jira - Plugins - Invite User','com.atlassian.jira.jira-invite-user-plugin','2.2.5','2019-06-14 15:36:04'),(10066,'Applinks - Plugin - Basic Authentication','com.atlassian.applinks.applinks-basicauth-plugin','5.4.12','2019-06-14 15:36:04'),(10067,'Atlassian Jira - Plugins - Quick Search','com.atlassian.jira.plugins.jira-quicksearch-plugin','7.13.3','2019-06-14 15:36:04'),(10068,'User Profile Links','jira.webfragments.user.profile.links','1.0','2019-06-14 15:36:04'),(10069,'Admin Menu Sections','jira.webfragments.admin','1.0','2019-06-14 15:36:04'),(10070,'wiki-editor','com.atlassian.jira.plugins.jira-wiki-editor','2.3.5','2019-06-14 15:36:04'),(10071,'Atlassian OAuth Service Provider SPI','com.atlassian.oauth.atlassian-oauth-service-provider-spi','2.1.1','2019-06-14 15:36:04'),(10072,'Top Navigation Bar','jira.top.navigation.bar','1.0','2019-06-14 15:36:04'),(10073,'Apache Apache HttpClient OSGi bundle','org.apache.httpcomponents.httpclient-4.5.5','4.5.5','2019-06-14 15:36:04'),(10074,'Applinks - Plugin - Trusted Apps','com.atlassian.applinks.applinks-trustedapps-plugin','5.4.12','2019-06-14 15:36:04'),(10075,'Wiki Renderer Macros Plugin','com.atlassian.jira.plugin.system.renderers.wiki.macros','1.0','2019-06-14 15:36:04'),(10076,'Issue Views Plugin','jira.issueviews','1.0','2019-06-14 15:36:04'),(10077,'JIRA Core Icelandic (Iceland) Language Pack','tac.jira core.languages.is_IS','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10078,'Streams SPI','com.atlassian.streams.streams-spi','6.4.8','2019-06-14 15:36:04'),(10079,'Applinks - Plugin - CORS','com.atlassian.applinks.applinks-cors-plugin','5.4.12','2019-06-14 15:36:04'),(10080,'Streams Third Party Provider Plugin','com.atlassian.streams.streams-thirdparty-plugin','6.4.8','2019-06-14 15:36:04'),(10081,'Atlassian OAuth Service Provider Plugin','com.atlassian.oauth.serviceprovider','2.1.1','2019-06-14 15:36:04'),(10082,'Atlassian Jira - Plugins - Common AppLinks Based Issue Link Plugin','com.atlassian.jira.jira-issue-link-applinks-common-plugin','7.13.3','2019-06-14 15:36:04'),(10083,'Web Resources Plugin','jira.webresources','1.0','2019-06-14 15:36:04'),(10084,'Embedded Gadgets Plugin','com.atlassian.gadgets.embedded','4.2.32','2019-06-14 15:36:04'),(10085,'Atlassian Jira - Plugins - Core Reports','com.atlassian.jira.jira-core-reports-plugin','7.13.3','2019-06-14 15:36:04'),(10086,'Streams Plugin','com.atlassian.streams','6.4.8','2019-06-14 15:36:04'),(10087,'Browse Project Operations Sections','jira.webfragments.browse.project.links','1.0','2019-06-14 15:36:04'),(10088,'JIRA Issue Collector Plugin','com.atlassian.jira.collector.plugin.jira-issue-collector-plugin','2.0.31','2019-06-14 15:36:04'),(10089,'Atlassian Whitelist Core Plugin','com.atlassian.plugins.atlassian-whitelist-core-plugin','4.0.5','2019-06-14 15:36:04'),(10090,'JIRA Core Russian (Russia) Language Pack','tac.jira core.languages.ru_RU','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10091,'ICU4J','com.atlassian.bundles.icu4j-3.8.0.1','3.8.0.1','2019-06-14 15:36:04'),(10092,'Streams Core Plugin','com.atlassian.streams.core','6.4.8','2019-06-14 15:36:04'),(10093,'Atlassian Jira - Plugins - WebHooks Plugin','com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin','7.13.3','2019-06-14 15:36:04'),(10094,'Issue Operations Plugin','com.atlassian.jira.plugin.system.issueoperations','1.0','2019-06-14 15:36:04'),(10095,'Gadget Directory Plugin','com.atlassian.gadgets.directory','4.2.32','2019-06-14 15:36:04'),(10096,'Attach Image for JIRA','com.atlassian.plugins.jira-html5-attach-images','4.0.0','2019-06-14 15:36:04'),(10097,'Jira Monitoring Plugin','com.atlassian.jira.jira-monitoring-plugin','05.7.2','2019-06-14 15:36:04'),(10098,'Atlassian Hipchat Integration Plugin','com.atlassian.plugins.base-hipchat-integration-plugin','7.10.3','2019-06-14 15:36:04'),(10099,'Atlassian Jira - Plugins - Project Centric Issue Navigator','com.atlassian.jira.jira-projects-issue-navigator','8.10.2','2019-06-14 15:36:04'),(10100,'jira-importers-plugin','com.atlassian.jira.plugins.jira-importers-plugin','8.0.17','2019-06-14 15:36:04'),(10101,'Atlassian Plugins - JavaScript libraries','com.atlassian.plugin.jslibs','1.1.1','2019-06-14 15:36:04'),(10102,'Jira Time Zone Detection plugin','com.atlassian.jira.jira-tzdetect-plugin','3.0.3','2019-06-14 15:36:04'),(10103,'HipChat for JIRA','com.atlassian.labs.hipchat.hipchat-for-jira-plugin','7.10.3','2019-06-14 15:36:04'),(10104,'Atlassian Jira - Plugins - Diagnostics Plugin','com.atlassian.jira.diagnostics','7.13.3','2019-06-14 15:36:04'),(10105,'JIRA Core Dutch (Netherlands) Language Pack','tac.jira core.languages.nl_NL','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10106,'JIRA Core Estonian (Estonia) Language Pack','tac.jira core.languages.et_EE','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10107,'JSON Library','com.atlassian.bundles.json-20070829.0.0.1','20070829.0.0.1','2019-06-14 15:36:04'),(10108,'JDOM DOM Processor','com.springsource.org.jdom-1.0.0','1.0.0','2019-06-14 15:36:04'),(10109,'JIRA Core Chinese (China) Language Pack','tac.jira core.languages.zh_CN','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10110,'Atlassian Jira - Plugins - Feedback Plugin','com.atlassian.feedback.jira-feedback-plugin','7.13.3','2019-06-14 15:36:04'),(10111,'ActiveObjects Plugin - OSGi Bundle','com.atlassian.activeobjects.activeobjects-plugin','2.0.0','2019-06-14 15:36:04'),(10112,'Atlassian Jira - Plugins - Header Plugin','com.atlassian.jira.jira-header-plugin','7.13.3','2019-06-14 15:36:04'),(10113,'Issue Tab Panels Plugin','com.atlassian.jira.plugin.system.issuetabpanels','1.0','2019-06-14 15:36:04'),(10114,'JIRA Feature Keys','jira.feature.keys','1.0','2019-06-14 15:36:04'),(10115,'JIRA Streams Inline Actions Plugin','com.atlassian.streams.jira.inlineactions','6.4.8','2019-06-14 15:36:04'),(10116,'Atlassian Jira - Plugins - Application Properties','com.atlassian.jira.jira-application-properties-plugin','7.13.3','2019-06-14 15:36:04'),(10117,'Atlassian Jira - Plugins - Gadgets Plugin','com.atlassian.jira.gadgets','7.13.3','2019-06-14 15:36:04'),(10118,'Atlassian Jira - Plugins - Analytics whitelist','com.atlassian.jira.jira-analytics-whitelist-plugin','7.13.3','2019-06-14 15:36:04'),(10119,'jira-inline-issue-create-plugin','com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin','1.7.4','2019-06-14 15:36:04'),(10120,'Workbox - JIRA Provider Plugin','com.atlassian.mywork.mywork-jira-provider-plugin','5.0.3','2019-06-14 15:36:04'),(10121,'JIRA Core Korean (South Korea) Language Pack','tac.jira core.languages.ko_KR','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10122,'Content Link Resolvers Plugin','com.atlassian.jira.plugin.wiki.contentlinkresolvers','1.0','2019-06-14 15:36:04'),(10123,'Atlassian Application Manager plugin','com.atlassian.upm.upm-application-plugin','2.22.15','2019-06-14 15:36:04'),(10124,'JIRA Core Spanish (Spain) Language Pack','tac.jira core.languages.es_ES','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10125,'Jira Mobile','com.atlassian.jira.mobile','3.2.0','2019-06-14 15:36:04'),(10126,'Atlassian Jira - Plugins - Onboarding','com.atlassian.jira.jira-onboarding-assets-plugin','7.13.3','2019-06-14 15:36:04'),(10127,'Atlassian JIRA - Admin Helper Plugin','com.atlassian.jira.plugins.jira-admin-helper-plugin','4.1.8','2019-06-14 15:36:04'),(10128,'Atlassian browser metrics plugin','com.atlassian.plugins.browser.metrics.browser-metrics-plugin','7.0.1','2019-06-14 15:36:04'),(10129,'Atlassian Jira - Plugins - Global Issue Navigator','com.atlassian.jira.jira-issue-nav-plugin','8.10.2','2019-06-14 15:36:04'),(10130,'User Navigation Bar Sections','jira.webfragments.user.navigation.bar','1.0','2019-06-14 15:36:04'),(10131,'Atlassian Troubleshooting and Support Tools','com.atlassian.troubleshooting.plugin-jira','1.14.1','2019-06-14 15:36:04'),(10132,'Neko HTML','com.atlassian.bundles.nekohtml-1.9.12.1','1.9.12.1','2019-06-14 15:36:04'),(10133,'JIRA Global Permissions','jira.system.global.permissions','1.0','2019-06-14 15:36:04'),(10134,'Atlassian Template Renderer API','com.atlassian.templaterenderer.api','2.0.0','2019-06-14 15:36:04'),(10135,'JIRA Core Danish (Denmark) Language Pack','tac.jira core.languages.da_DK','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10136,'Atlassian JIRA - Plugins - File viewer plugin','com.atlassian.jira.jira-fileviewer-plugin','7.3.3','2019-06-14 15:36:04'),(10137,'Atlassian Pretty URLs Plugin','com.atlassian.prettyurls.atlassian-pretty-urls-plugin','2.1.2','2019-06-14 15:36:04'),(10138,'JIRA Attachment Archive File Processors','jira.system.attachment.processors','1.0','2019-06-14 15:36:04'),(10139,'Atlassian Jira - Plugins - Admin Upgrades','com.atlassian.jira.jira-admin-updates-plugin','7.13.3','2019-06-14 15:36:04'),(10140,'Functional Extensions','io.atlassian.fugue-4.5.0','4.5.0','2019-06-14 15:36:04'),(10141,'jira-ui','com.atlassian.jira.plugins.jira-ui','0.1.1','2019-06-14 15:36:04'),(10142,'Atlassian Universal Plugin Manager Plugin','com.atlassian.upm.atlassian-universal-plugin-manager-plugin','2.22.15','2019-06-14 15:36:04'),(10143,'SAML for Atlassian Data Center','com.atlassian.plugins.authentication.atlassian-authentication-plugin','2.0.8','2019-06-14 15:36:04'),(10144,'Atlassian Whitelist UI Plugin','com.atlassian.plugins.atlassian-whitelist-ui-plugin','4.0.5','2019-06-14 15:36:04'),(10145,'JIRA Core Portuguese (Brazil) Language Pack','tac.jira core.languages.pt_BR','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10146,'Redmine Importers Plugin for JIM','com.atlassian.jira.plugins.jira-importers-redmine-plugin','2.1.9','2019-06-14 15:36:04'),(10147,'Atlassian JIRA - Plugins - Quick Edit Plugin','com.atlassian.jira.jira-quick-edit-plugin','3.2.0','2019-06-14 15:36:04'),(10148,'Soy Function Plugin','com.atlassian.jira.plugin.system.soyfunction','1.0','2019-06-14 15:36:04'),(10149,'Universal Plugin Manager - Role-Based Licensing Implementation Plugin','com.atlassian.upm.role-based-licensing-plugin','2.22.15','2019-06-14 15:36:04'),(10150,'Jira Core Project Templates Plugin','com.atlassian.jira-core-project-templates','6.2.4','2019-06-14 15:36:04'),(10151,'Atlassian OAuth Admin Plugin','com.atlassian.oauth.admin','2.1.1','2019-06-14 15:36:04'),(10152,'Atlassian REST - Module Types','com.atlassian.plugins.rest.atlassian-rest-module','3.2.18','2019-06-14 15:36:04'),(10153,'Crowd REST API','crowd-rest-application-management','1.0','2019-06-14 15:36:04'),(10154,'jira-issue-nav-components','com.atlassian.jira.jira-issue-nav-components','8.10.2','2019-06-14 15:36:04'),(10155,'jquery','com.atlassian.plugins.jquery','1.7.2.1','2019-06-14 15:36:04'),(10156,'Atlassian Jira - Plugins - Auditing Plugin [Audit Log]','com.atlassian.jira.plugins.jira-auditing-plugin','7.13.3','2019-06-14 15:36:04'),(10157,'JIRA Remote Link Aggregator Plugin','com.atlassian.plugins.jira-remote-link-aggregator-plugin','2.0.14','2019-06-14 15:36:04'),(10158,'Streams API','com.atlassian.streams.streams-api','6.4.8','2019-06-14 15:36:04'),(10159,'Atlassian Jira - Plugins - Atlassian Notifications Plugin','com.atlassian.jira.jira-whisper-plugin','7.13.3','2019-06-14 15:36:04'),(10160,'Atlassian HTTP Client, Apache HTTP components impl','com.atlassian.httpclient.atlassian-httpclient-plugin','1.0.1','2019-06-14 15:36:04'),(10161,'Asana Importers Plugin for JIM','com.atlassian.jira.plugins.jira-importers-asana-plugin','2.0.2','2019-06-14 15:36:04'),(10162,'Atlassian Awareness Capability','com.atlassian.plugins.atlassian-awareness-capability','0.0.6','2019-06-14 15:36:04'),(10163,'Atlassian Plugins - Web Resources REST','com.atlassian.plugins.atlassian-plugins-webresource-rest','3.5.43','2019-06-14 15:36:04'),(10164,'Custom Field Types & Searchers','com.atlassian.jira.plugin.system.customfieldtypes','1.0','2019-06-14 15:36:04'),(10165,'Project Creation Capability Product REST Plugin','com.atlassian.plugins.atlassian-project-creation-plugin','3.2.1','2019-06-14 15:36:04'),(10166,'Atlassian Jira - Plugins - REST Plugin','com.atlassian.jira.rest','7.13.3','2019-06-14 15:36:04'),(10167,'Atlassian Spring Scanner Runtime','com.atlassian.plugin.atlassian-spring-scanner-runtime','2.0.0','2019-06-14 15:36:04'),(10168,'Opensocial Plugin','com.atlassian.gadgets.opensocial','4.2.32','2019-06-14 15:36:04'),(10169,'Atlassian Jira - Plugins - Confluence Link','com.atlassian.jira.jira-issue-link-confluence-plugin','7.13.3','2019-06-14 15:36:04'),(10170,'Atlassian Net Promoter Score','com.atlassian.plugins.atlassian-nps-plugin','3.1.25','2019-06-14 15:36:04'),(10171,'ROME, RSS and atOM utilitiEs for Java','rome.rome-1.0','1.0','2019-06-14 15:36:04'),(10172,'User Format','jira.user.format','1.0','2019-06-14 15:36:04'),(10173,'JIRA Core Finnish (Finland) Language Pack','tac.jira core.languages.fi_FI','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10174,'View Project Operations Sections','jira.webfragments.view.project.operations','1.0','2019-06-14 15:36:04'),(10175,'atlassian-servlet-plugin','com.atlassian.web.atlassian-servlet-plugin','5.2.0','2019-06-14 15:36:04'),(10176,'Apache Apache HttpCore OSGi bundle','org.apache.httpcomponents.httpcore-4.4.1','4.4.1','2019-06-14 15:36:04'),(10177,'Crowd REST API','crowd-rest-plugin','1.0','2019-06-14 15:36:04'),(10178,'Atlassian OAuth Consumer SPI','com.atlassian.oauth.atlassian-oauth-consumer-spi','2.1.1','2019-06-14 15:36:04'),(10179,'Atlassian Jira - Plugins - Post-Upgrade Landing Page','com.atlassian.jira.plugins.jira-post-upgrade-landing-page-plugin','7.13.3','2019-06-14 15:36:04'),(10180,'JIRA Core Hungarian (Hungary) Language Pack','tac.jira core.languages.hu_HU','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10181,'Atlassian Spring Scanner Annotations','com.atlassian.plugin.atlassian-spring-scanner-annotation','2.0.0','2019-06-14 15:36:04'),(10182,'jackson-module-scala-2.10-provider','com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin','0.5','2019-06-14 15:36:04'),(10183,'Rich Text Editor for JIRA','com.atlassian.jira.plugins.jira-editor-plugin','2.3.5','2019-06-14 15:36:04'),(10184,'Workflow Plugin','com.atlassian.jira.plugin.system.workflow','1.0','2019-06-14 15:36:04'),(10185,'jira-importers-trello-plugin','com.atlassian.jira.plugins.jira-importers-trello-plugin','2.0.8','2019-06-14 15:36:04'),(10186,'Icon Types Plugin','jira.icontypes','1.0','2019-06-14 15:36:04'),(10187,'JIRA Core Norwegian (Norway) Language Pack','tac.jira core.languages.no_NO','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10188,'Atlassian WebHooks Plugin','com.atlassian.webhooks.atlassian-webhooks-plugin','3.2.3','2019-06-14 15:36:04'),(10189,'Help Paths Plugin','jira.help.paths','1.0','2019-06-14 15:36:04'),(10190,'Jira Base URL Plugin','com.atlassian.jira.jira-baseurl-plugin','3.2.0','2019-06-14 15:36:04'),(10191,'Atlassian Jira - Plugins - Look And Feel Logo Upload Plugin','com.atlassian.jira.lookandfeel','7.13.3','2019-06-14 15:36:04'),(10192,'Issue Status Plugin','com.atlassian.plugins.issue-status-plugin','1.1.7','2019-06-14 15:36:04'),(10193,'Gadget Spec Publisher Plugin','com.atlassian.gadgets.publisher','4.2.32','2019-06-14 15:36:04'),(10194,'Atlassian Jira - Plugins - OAuth Consumer SPI','com.atlassian.jira.oauth.consumer','7.13.3','2019-06-14 15:36:04'),(10195,'JIRA Core French (France) Language Pack','tac.jira core.languages.fr_FR','7.13.3.v20190402114722','2019-06-14 15:36:04'),(10196,'Renderer Component Factories Plugin','com.atlassian.jira.plugin.wiki.renderercomponentfactories','1.0','2019-06-14 15:36:04'),(10197,'Atlassian LESS Transformer Plugin','com.atlassian.plugins.less-transformer-plugin','3.3.2','2019-06-14 15:36:04'),(10198,'Pocketknife Feature Flags Plugin','com.atlassian.pocketknife.featureflags-plugin','0.5.4','2019-06-14 15:36:04'),(10199,'Atlassian Bot Session Killer','com.atlassian.labs.atlassian-bot-killer','1.7.9','2019-06-14 15:36:04'),(10200,'User Profile Panels','jira.user.profile.panels','1.0','2019-06-14 15:36:04'),(10201,'scala-2.10-provider-plugin','com.atlassian.scala.plugins.scala-2.10-provider-plugin','0.14','2019-06-14 15:36:04'),(10202,'Atlassian Jira - Plugins - ActiveObjects SPI','com.atlassian.jira.jira-activeobjects-spi-plugin','7.13.3','2019-06-14 15:36:04'),(10203,'JIRA Project Permissions','jira.system.project.permissions','1.0','2019-06-14 15:36:04'),(10204,'Wallboard Plugin','com.atlassian.jirawallboard.atlassian-wallboard-plugin','2.2.10','2019-06-14 15:36:04'),(10205,'Atlassian Jira - Plugins - User Profile Plugin','com.atlassian.jira.jira-user-profile-plugin','3.0.8','2019-06-14 15:36:04'),(10206,'Project Templates Plugin','com.atlassian.jira.project-templates-plugin','6.2.4','2019-06-14 15:36:04'),(10207,'Atlassian Notifications','com.atlassian.whisper.atlassian-whisper-plugin','1.1.12','2019-06-14 15:36:04'),(10208,'Filter Deletion Warning Plugin','jira.filter.deletion.warning','1.0','2019-06-14 15:36:04'),(10209,'English (United States) Language Pack','com.atlassian.jira.jira-languages.en_US','7.13.3','2019-06-14 15:36:04'),(10210,'Functional Extensions Guava Inter-Ops','io.atlassian.fugue.guava-4.5.0','4.5.0','2019-06-14 15:36:04'),(10211,'Atlassian Jira - Plugins - LESS integration','com.atlassian.jira.jira-less-integration','7.13.3','2019-06-14 15:36:04'),(10212,'Atlassian Jira - Plugins - SAL Plugin','com.atlassian.sal.jira','7.13.3','2019-06-14 15:36:04'),(10213,'Atlassian Template Renderer Velocity 1.6 Plugin','com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin','2.0.0','2019-06-14 15:36:04'),(10214,'Atlassian Jira - Plugins - Mail Plugin','com.atlassian.jira.jira-mail-plugin','10.0.18','2019-06-14 15:36:04'),(10215,'Atlassian Jira - Plugins - Closure Template Renderer','com.atlassian.jira.jira-soy-plugin','7.13.3','2019-06-14 15:36:04'),(10216,'Jira Workflow Designer Plugin','com.atlassian.jira.plugins.jira-workflow-designer','7.4.13','2019-06-14 15:36:04'),(10217,'Gadget Dashboard Plugin','com.atlassian.gadgets.dashboard','4.2.32','2019-06-14 15:36:04'),(10218,'Atlassian - Administration - Quick Search - JIRA','com.atlassian.administration.atlassian-admin-quicksearch-jira','2.3.3','2019-06-14 15:36:04'),(10219,'Web Panel Plugin','jira.webpanels','1.0','2019-06-14 15:36:04'),(10220,'Applinks - Plugin - OAuth','com.atlassian.applinks.applinks-oauth-plugin','5.4.12','2019-06-14 15:36:04'),(10221,'JIRA browser metrics integration plugin','com.atlassian.jira.plugins.jira-browser-metrics','2.0.14','2019-06-14 15:36:04'),(10222,'JIRA Activity Stream Plugin','com.atlassian.streams.streams-jira-plugin','6.4.8','2019-06-14 15:36:04'),(10223,'English (United Kingdom) Language Pack','com.atlassian.jira.jira-languages.en_UK','7.13.3','2019-06-14 15:36:04'),(10224,'JIRA Usage Hints','jira.usage.hints','1.0','2019-06-14 15:36:04');
/*!40000 ALTER TABLE `pluginversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpage`
--

DROP TABLE IF EXISTS `portalpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpage` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PAGENAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `LAYOUT` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ppversion` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ppage_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpage`
--

LOCK TABLES `portalpage` WRITE;
/*!40000 ALTER TABLE `portalpage` DISABLE KEYS */;
INSERT INTO `portalpage` VALUES (10000,NULL,'System Dashboard',NULL,0,0,'AA',0);
/*!40000 ALTER TABLE `portalpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletconfiguration`
--

DROP TABLE IF EXISTS `portletconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `PORTALPAGE` decimal(18,0) DEFAULT NULL,
  `PORTLET_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `COLUMN_NUMBER` decimal(9,0) DEFAULT NULL,
  `positionseq` decimal(9,0) DEFAULT NULL,
  `GADGET_XML` text COLLATE utf8mb4_bin,
  `COLOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DASHBOARD_MODULE_COMPLETE_KEY` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletconfiguration`
--

LOCK TABLES `portletconfiguration` WRITE;
/*!40000 ALTER TABLE `portletconfiguration` DISABLE KEYS */;
INSERT INTO `portletconfiguration` VALUES (10000,10000,NULL,0,0,NULL,NULL,'com.atlassian.jira.gadgets:introduction-dashboard-item'),(10002,10000,NULL,1,0,'rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml',NULL,NULL),(10003,10000,NULL,1,1,'rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml',NULL,NULL);
/*!40000 ALTER TABLE `portletconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `ICONURL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_COLOR` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES ('1',1,'Highest','This problem will block progress.','/images/icons/priorities/highest.png','#d04437'),('2',2,'High','Serious problem that could block progress.','/images/icons/priorities/high.png','#f15C75'),('3',3,'Medium','Has the potential to affect progress.','/images/icons/priorities/medium.png','#f79232'),('4',4,'Low','Minor problem or easily worked around.','/images/icons/priorities/low.png','#707070'),('5',5,'Lowest','Trivial problem with little or no impact on progress.','/images/icons/priorities/lowest.png','#999999');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlicense`
--

DROP TABLE IF EXISTS `productlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlicense` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlicense`
--

LOCK TABLES `productlicense` WRITE;
/*!40000 ALTER TABLE `productlicense` DISABLE KEYS */;
INSERT INTO `productlicense` VALUES (10000,'AAABWQ0ODAoPeNp1kU9vgkAQxe98ik16aQ8QwD+kJptUgaYYQCu2vfSyXUfdFhayu5j67buAprbqcWZn3vze25tHwdC05sjpI8ce9fqjgY38YIlc27k30rr4ADFbv0gQEpuO4ZdcEapSUgDO6y+5JdXDpiAst2hZGJ9MEKsS5aqmymoKk5YCrDOVdu6sO68F3RIJAVGAm/OmPTSdgREzClzCcl9Be9efJUm48KNxfHwKvysm9id7XrN3YA0TjXcBNgOxAxEFeDJ/ck0veX4zo0kvNYO+nVxzkikiFAi8JrmEbuiIsGKKlRyH6TJczBdRFl7T0EhsB1iJGgyNxhVwwukVDwd1TRlHQRamZuz0PM9xvaGhK/y3MxMbwpkkLciYqpIzavgC2sb/VPNO+VWH34y7RgCSCla1y1NNi3xNi267mO7eRyjckbxutTprp0ZOo7j0Ub+73fwPoH7SuTAsAhRr/Y4XstSHUA9LyNN6GR/1tC0j7AIUEvc8PQEkdvNwrYtBiLLnYH6rwqQ=X02h1');
/*!40000 ALTER TABLE `productlicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ID` decimal(18,0) NOT NULL,
  `pname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `pkey` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pcounter` decimal(18,0) DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  `ORIGINALKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROJECTTYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_project_key` (`pkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_key`
--

DROP TABLE IF EXISTS `project_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_key` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_all_project_keys` (`PROJECT_KEY`),
  KEY `idx_all_project_ids` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_key`
--

LOCK TABLES `project_key` WRITE;
/*!40000 ALTER TABLE `project_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcategory`
--

DROP TABLE IF EXISTS `projectcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcategory` (
  `ID` decimal(18,0) NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_project_category_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcategory`
--

LOCK TABLES `projectcategory` WRITE;
/*!40000 ALTER TABLE `projectcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectchangedtime`
--

DROP TABLE IF EXISTS `projectchangedtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectchangedtime` (
  `PROJECT_ID` decimal(18,0) NOT NULL,
  `ISSUE_CHANGED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectchangedtime`
--

LOCK TABLES `projectchangedtime` WRITE;
/*!40000 ALTER TABLE `projectchangedtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectchangedtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrole`
--

DROP TABLE IF EXISTS `projectrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrole` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrole`
--

LOCK TABLES `projectrole` WRITE;
/*!40000 ALTER TABLE `projectrole` DISABLE KEYS */;
INSERT INTO `projectrole` VALUES (10002,'Administrators','A project role that represents administrators in a project');
/*!40000 ALTER TABLE `projectrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectroleactor`
--

DROP TABLE IF EXISTS `projectroleactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectroleactor` (
  `ID` decimal(18,0) NOT NULL,
  `PID` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  `ROLETYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ROLETYPEPARAMETER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `role_player_idx` (`PROJECTROLEID`,`PID`),
  KEY `role_pid_idx` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectroleactor`
--

LOCK TABLES `projectroleactor` WRITE;
/*!40000 ALTER TABLE `projectroleactor` DISABLE KEYS */;
INSERT INTO `projectroleactor` VALUES (10002,NULL,10002,'atlassian-group-role-actor','jira-administrators');
/*!40000 ALTER TABLE `projectroleactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectversion`
--

DROP TABLE IF EXISTS `projectversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectversion` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `vname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `RELEASED` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `ARCHIVED` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `RELEASEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_version_project` (`PROJECT`),
  KEY `idx_version_sequence` (`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectversion`
--

LOCK TABLES `projectversion` WRITE;
/*!40000 ALTER TABLE `projectversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydata`
--

DROP TABLE IF EXISTS `propertydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydata` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydata`
--

LOCK TABLES `propertydata` WRITE;
/*!40000 ALTER TABLE `propertydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydate`
--

DROP TABLE IF EXISTS `propertydate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydate` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydate`
--

LOCK TABLES `propertydate` WRITE;
/*!40000 ALTER TABLE `propertydate` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertydate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydecimal`
--

DROP TABLE IF EXISTS `propertydecimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydecimal` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydecimal`
--

LOCK TABLES `propertydecimal` WRITE;
/*!40000 ALTER TABLE `propertydecimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertydecimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyentry`
--

DROP TABLE IF EXISTS `propertyentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertyentry` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `propertytype` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osproperty_all` (`ENTITY_ID`),
  KEY `osproperty_entityName` (`ENTITY_NAME`),
  KEY `osproperty_propertyKey` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyentry`
--

LOCK TABLES `propertyentry` WRITE;
/*!40000 ALTER TABLE `propertyentry` DISABLE KEYS */;
INSERT INTO `propertyentry` VALUES (1,'jira.properties',1,'jira.version.patched',5),(2,'jira.properties',1,'jira.avatar.issuetype.subtask.default.id',5),(3,'jira.properties',1,'jira.avatar.default.id',5),(4,'jira.properties',1,'jira.avatar.issuetype.default.id',5),(5,'jira.properties',1,'jira.avatar.user.default.id',5),(6,'jira.properties',1,'jira.avatar.user.anonymous.id',5),(7,'jira.properties',1,'jira.scheme.default.issue.type',5),(9,'jira.properties',1,'jira.whitelist.disabled',1),(10,'jira.properties',1,'jira.whitelist.rules',6),(11,'jira.properties',1,'jira.option.timetracking',1),(12,'jira.properties',1,'jira.timetracking.estimates.legacy.behaviour',1),(13,'jira.properties',1,'jira.version',5),(14,'jira.properties',1,'jira.downgrade.minimum.version',5),(15,'jira.properties',1,'jira.option.allowunassigned',1),(16,'jira.properties',1,'jira.path.index.use.default.directory',1),(21,'com.atlassian.jira.plugins.jira-workflow-designer',1,'jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47',6),(22,'jira.properties',1,'jira.onboarding.app_user.id.threshold',5),(23,'jira.properties',1,'post.migration.page.displayed',1),(10100,'jira.properties',1,'jira.webresource.superbatch.flushcounter',5),(10101,'jira.properties',1,'jira.i18n.language.index',5),(10102,'jira.properties',1,'jira.sid.key',5),(10103,'jira.properties',1,'AO_587B34_#',5),(10104,'jira.properties',1,'AO_550953_#',5),(10105,'jira.properties',1,'jira.scheme.default.priority',5),(10106,'jira.properties',1,'AO_4AEACD_#',5),(10200,'jira.properties',1,'jira.webresource.flushcounter',5),(10201,'jira.properties',1,'jira.mail.send.disabled',1),(10202,'jira.properties',1,'mailsetting.jira.mail.send.disabled.modifiedBy',5),(10203,'jira.properties',1,'mailsetting.jira.mail.send.disabled.modifiedDate',5),(10204,'jira.properties',1,'jvm.system.timezone',5),(10206,'jira.properties',1,'webwork.i18n.encoding',5),(10207,'jira.properties',1,'jira.title',5),(10208,'jira.properties',1,'jira.baseurl',5),(10209,'jira.properties',1,'jira.mode',5),(10210,'jira.properties',1,'jira.path.attachments',5),(10211,'jira.properties',1,'jira.path.attachments.use.default.directory',1),(10212,'jira.properties',1,'jira.option.allowattachments',1),(10213,'ServiceConfig',10001,'USE_DEFAULT_DIRECTORY',5),(10214,'jira.properties',1,'jira.path.backup',5),(10215,'jira.properties',1,'com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue',3),(10216,'jira.properties',1,'jira.monitoring.jmx.enabled',1),(10217,'jira.properties',1,'jira.setup',5),(10218,'jira.properties',1,'jira.initial.build.number',5),(10219,'jira.properties',1,'jira.option.user.externalmanagement',1),(10220,'jira.properties',1,'jira.option.voting',1),(10221,'jira.properties',1,'jira.option.watching',1),(10222,'jira.properties',1,'jira.option.issuelinking',1),(10223,'jira.properties',1,'jira.option.emailvisible',5),(10300,'jira.properties',1,'jira.option.allowsubtasks',1),(10301,'jira.properties',1,'com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3',5),(10302,'jira.properties',1,'com.atlassian.upm:notifications:notification-plugin.request',5),(10303,'jira.properties',1,'com.atlassian.upm:notifications:notification-edition.mismatch',5),(10304,'jira.properties',1,'com.atlassian.sal.jira:build',5),(10305,'jira.properties',1,'com.atlassian.upm:notifications:notification-evaluation.expired',5),(10306,'jira.properties',1,'com.atlassian.upm:notifications:notification-evaluation.nearlyexpired',5),(10307,'jira.properties',1,'com.atlassian.upm:notifications:notification-maintenance.expired',5),(10308,'jira.properties',1,'com.atlassian.upm:notifications:notification-maintenance.nearlyexpired',5),(10309,'jira.properties',1,'com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled',5),(10310,'jira.properties',1,'com.atlassian.jira.gadgets:build',5),(10311,'jira.properties',1,'com.atlassian.crowd.embedded.admin:build',5),(10312,'jira.properties',1,'com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build',5),(10313,'jira.properties',1,'com.atlassian.plugins.atlassian-whitelist-core-plugin:build',5),(10314,'jira.properties',1,'com.atlassian.jira.jira-mail-plugin:build',5),(10315,'jira.properties',1,'com.atlassian.jira.plugins.jira-workflow-designer:build',5),(10316,'jira.properties',1,'com.atlassian.plugins.custom_apps.hasCustomOrder',5),(10317,'jira.properties',1,'com.atlassian.plugins.atlassian-nav-links-plugin:build',5),(10318,'jira.properties',1,'com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build',5),(10319,'jira.properties',1,'com.atlassian.jira.lookandfeel:isDefaultFavicon',5),(10320,'jira.properties',1,'com.atlassian.jira.lookandfeel:usingCustomFavicon',5),(10321,'jira.properties',1,'com.atlassian.jira.lookandfeel:customDefaultFaviconURL',5),(10322,'jira.properties',1,'com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL',5),(10323,'jira.properties',1,'com.atlassian.jira.lookandfeel:faviconWidth',5),(10324,'jira.properties',1,'com.atlassian.jira.lookandfeel:faviconHeight',5),(10325,'jira.properties',1,'com.atlassian.jira.lookandfeel:build',5),(10326,'jira.properties',1,'com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build',5),(10328,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-plugin.request',5),(10330,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-evaluation.expired',5),(10331,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-evaluation.nearlyexpired',5),(10332,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-edition.mismatch',5),(10333,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-maintenance.expired',5),(10334,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-maintenance.nearlyexpired',5),(10335,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-auto.updated.plugin',5),(10336,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-auto.updated.upm',5),(10337,'jira.properties',1,'com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2',5),(10338,'jira.properties',1,'com.atlassian.jirawallboard.atlassian-wallboard-plugin:build',5),(10339,'jira.properties',1,'com.atlassian.jira.project-templates-plugin:build',5),(10340,'jira.properties',1,'com.atlassian.analytics.client.configuration.uuid',5),(10341,'jira.properties',1,'com.atlassian.analytics.client.configuration.serverid',5),(10342,'jira.properties',1,'com.atlassian.analytics.client.configuration..policy_acknowledged',5),(10343,'jira.properties',1,'com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects',5),(10344,'jira.properties',1,'jira-header-plugin.studio-tab-migration-complete',5),(10345,'jira.properties',1,'com.atlassian.analytics.client.configuration..analytics_enabled',5),(10346,'ApplicationUser',10000,'jira.onboarding.first.use.flow.started',5),(10347,'jira.properties',1,'com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all',6),(10348,'jira.properties',1,'com.atlassian.upm:notifications:notification-update',5),(10349,'jira.properties',1,'com.atlassian.analytics.client.configuration..logged_base_analytics_data',5),(10350,'ApplicationUser',10000,'newsletter.signup.first.view',3),(10351,'ApplicationUser',10000,'jira.onboarding.first.use.flow.current.sequence',5),(10352,'ApplicationUser',10000,'jira.onboarding.first.use.flow.completed',1),(10353,'ApplicationUser',10000,'jira.onboarding.first.use.flow.resolved',1),(10354,'jira.properties',1,'org.apache.shindig.common.crypto.BlobCrypter:key',5),(10355,'ApplicationUser',10000,'com.atlassian.jira.flag.dismissals',6),(10356,'jira.properties',1,'com.atlassian.nps.plugin.status.nps_acknowledged',5),(10357,'jira.properties',1,'com.atlassian.nps.plugin.status.nps_enabled',5),(10358,'ApplicationUser',10000,'jira.user.suppressedTips.qs-onboarding-tip',1),(10359,'jira.properties',1,'jira.email.fromheader.format',5),(10360,'jira.properties',1,'jira.maximum.authentication.attempts.allowed',5),(10361,'jira.properties',1,'jira.projectname.maxlength',5),(10362,'jira.properties',1,'jira.projectkey.maxlength',5),(10363,'jira.properties',1,'jira.option.globalsharing',1),(10364,'jira.properties',1,'jira.option.captcha.on.signup',1),(10365,'jira.properties',1,'jira.option.logoutconfirm',5),(10366,'jira.properties',1,'jira.option.web.usegzip',1),(10367,'jira.properties',1,'jira.option.precedence.header.exclude',1),(10368,'jira.properties',1,'jira.comment.level.visibility.groups',1),(10369,'jira.properties',1,'jira.ajax.autocomplete.issuepicker.enabled',1),(10370,'jira.properties',1,'jira.jql.autocomplete.disabled',1),(10371,'jira.properties',1,'jira.ads.disabled',1),(10372,'jira.properties',1,'jira.attachment.download.mime.sniffing.workaround',5),(10373,'jira.properties',1,'jira.show.contact.administrators.form',1),(10374,'jira.properties',1,'jira.contact.administrators.message',6),(10375,'jira.properties',1,'jira.user.avatar.gravatar.enabled',1),(10376,'jira.properties',1,'jira.issue.inline.edit.disabled',1),(10377,'jira.properties',1,'jira.issuenav.criteria.autoupdate',1),(10378,'jira.properties',1,'jira.project.description.html.enabled',1),(10379,'jira.properties',1,'jira.csv.export.dialog.enabled',1);
/*!40000 ALTER TABLE `propertyentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertynumber`
--

DROP TABLE IF EXISTS `propertynumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertynumber` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertynumber`
--

LOCK TABLES `propertynumber` WRITE;
/*!40000 ALTER TABLE `propertynumber` DISABLE KEYS */;
INSERT INTO `propertynumber` VALUES (9,0),(11,1),(12,0),(15,1),(16,1),(23,1),(10201,0),(10211,1),(10212,1),(10215,0),(10216,0),(10219,0),(10220,1),(10221,1),(10222,1),(10300,1),(10350,1560526645948),(10352,1),(10353,1),(10358,1),(10363,1),(10364,0),(10366,1),(10367,0),(10368,0),(10369,1),(10370,0),(10371,1),(10373,0),(10375,1),(10376,0),(10377,1),(10378,0),(10379,1);
/*!40000 ALTER TABLE `propertynumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertystring`
--

DROP TABLE IF EXISTS `propertystring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertystring` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertystring`
--

LOCK TABLES `propertystring` WRITE;
/*!40000 ALTER TABLE `propertystring` DISABLE KEYS */;
INSERT INTO `propertystring` VALUES (1,'713003'),(2,'10316'),(3,'10011'),(4,'10300'),(5,'10122'),(6,'10123'),(7,'10000'),(13,'7.13.3'),(14,'7.1.2'),(22,'0'),(10100,'3'),(10101,'english-moderate-stemming'),(10102,'BPH2-7MQW-IB3N-D40M'),(10103,'4'),(10104,'1'),(10105,'10100'),(10106,'1'),(10200,'6411e0087192541a09d88223fb51a6a0'),(10202,''),(10203,'1560526444634'),(10204,'GMT'),(10206,'UTF-8'),(10207,'Actonic Jira'),(10208,'http://kubernetes.actonic.io'),(10209,'private'),(10210,'/var/atlassian/application-data/jira/data/attachments'),(10213,'true'),(10214,'/var/atlassian/application-data/jira/export'),(10217,'true'),(10218,'713003'),(10223,'show'),(10301,'#java.util.List\n'),(10302,'#java.util.List\n'),(10303,'#java.util.List\n'),(10304,'2'),(10305,'#java.util.List\n'),(10306,'#java.util.List\n'),(10307,'#java.util.List\n'),(10308,'#java.util.List\n'),(10309,'true'),(10310,'1'),(10311,'3'),(10312,'1'),(10313,'4'),(10314,'2'),(10315,'1'),(10316,'false'),(10317,'1'),(10318,'3'),(10319,'false'),(10320,'false'),(10321,'/favicon.ico'),(10322,'/images/64jira.png'),(10323,'64'),(10324,'64'),(10325,'1'),(10326,'5'),(10328,'#java.util.List\n'),(10330,'#java.util.List\n'),(10331,'#java.util.List\n'),(10332,'#java.util.List\n'),(10333,'#java.util.List\n'),(10334,'#java.util.List\n'),(10335,'#java.util.List\n'),(10336,'#java.util.List\n'),(10337,'#java.util.List\n'),(10338,'6086'),(10339,'2001'),(10340,'bcaa77e6-1015-4ca5-9689-6b114619f821'),(10341,'BPH2-7MQW-IB3N-D40M'),(10342,'true'),(10343,'true'),(10344,'migrated'),(10345,'true'),(10346,'cyoaFirstUseFlow'),(10348,'#java.util.List\ncom.atlassian.troubleshooting.plugin-jira'),(10349,'true'),(10351,'cyoa:return'),(10354,'bvGV1QvmdTxl0xE9/D7P7VlbyjSTF+6Fu0YElayQGg0='),(10356,'true'),(10357,'true'),(10359,'${fullname} (Jira)'),(10360,'3'),(10361,'80'),(10362,'10'),(10365,'never'),(10372,'workaround');
/*!40000 ALTER TABLE `propertystring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertytext`
--

DROP TABLE IF EXISTS `propertytext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertytext` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertytext`
--

LOCK TABLES `propertytext` WRITE;
/*!40000 ALTER TABLE `propertytext` DISABLE KEYS */;
INSERT INTO `propertytext` VALUES (10,'http://www.atlassian.com/*\n'),(21,'{\n    \"edgeMap\": {\n        \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1806.5,\n                    \"y\": 434.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1801.0,\n                    \"y\": 115.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1801.0,\n                \"y\": 115.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1776.85,\n                \"y\": 355.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1806.5,\n                \"y\": 434.0\n            },\n            \"startStepId\": 5\n        },\n        \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1492.25,\n                \"y\": 154.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"startStepId\": 1\n        },\n        \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1551.0,\n                \"y\": 104.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"startStepId\": 1\n        },\n        \"517D7F32-20FB-309E-8639-4D19CE2ACB54\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1434.0,\n                    \"y\": 435.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1435.0,\n                    \"y\": 490.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1947.0,\n                    \"y\": 494.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1950.0,\n                    \"y\": 118.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1435.0,\n                    \"y\": 490.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1947.0,\n                    \"y\": 494.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1950.0,\n                    \"y\": 118.0\n                }\n            ],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1631.25,\n                \"y\": 479.5\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1434.0,\n                \"y\": 435.0\n            },\n            \"startStepId\": 3\n        },\n        \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\": {\n            \"actionId\": 1,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1470.0,\n                    \"y\": 16.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"endStepId\": 1,\n            \"id\": \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\",\n            \"label\": \"Create Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1475.5,\n                \"y\": 48.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"15174530-AE75-04E0-1D9D-4D19CD200835\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1470.0,\n                \"y\": 16.0\n            },\n            \"startStepId\": 1\n        },\n        \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\": {\n            \"actionId\": 4,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1439.5,\n                    \"y\": 116.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1393.0,\n                    \"y\": 116.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1390.0,\n                    \"y\": 434.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1393.0,\n                    \"y\": 116.0\n                }\n            ],\n            \"endNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1390.0,\n                \"y\": 434.0\n            },\n            \"endStepId\": 3,\n            \"id\": \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\",\n            \"label\": \"Start Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1323.65,\n                \"y\": 193.75\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1439.5,\n                \"y\": 116.0\n            },\n            \"startStepId\": 1\n        },\n        \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\": {\n            \"actionId\": 3,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1677.0,\n                    \"y\": 227.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1767.05,\n                    \"y\": 230.05\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1773.5,\n                    \"y\": 425.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1767.05,\n                    \"y\": 230.05\n                }\n            ],\n            \"endNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1773.5,\n                \"y\": 425.0\n            },\n            \"endStepId\": 5,\n            \"id\": \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\",\n            \"label\": \"Reopen Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1703.85,\n                \"y\": 218.5\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1677.0,\n                \"y\": 227.0\n            },\n            \"startStepId\": 6\n        },\n        \"C9EA1792-2332-8B56-A04D-4D19CD725367\": {\n            \"actionId\": 301,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1465.0,\n                    \"y\": 436.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"endStepId\": 1,\n            \"id\": \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n            \"label\": \"Stop Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1407.8,\n                \"y\": 308.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1465.0,\n                \"y\": 436.0\n            },\n            \"startStepId\": 3\n        },\n        \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1764.5,\n                    \"y\": 430.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1677.65,\n                \"y\": 365.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1764.5,\n                \"y\": 430.0\n            },\n            \"startStepId\": 5\n        },\n        \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1488.0,\n                    \"y\": 430.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1492.0,\n                \"y\": 345.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1488.0,\n                \"y\": 430.0\n            },\n            \"startStepId\": 3\n        },\n        \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\": {\n            \"actionId\": 3,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1840.0,\n                    \"y\": 130.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1846.5,\n                    \"y\": 428.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1846.5,\n                \"y\": 428.0\n            },\n            \"endStepId\": 5,\n            \"id\": \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\",\n            \"label\": \"Reopen Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1814.05,\n                \"y\": 169.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1840.0,\n                \"y\": 130.0\n            },\n            \"startStepId\": 4\n        },\n        \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\": {\n            \"actionId\": 4,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1806.5,\n                    \"y\": 434.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1434.0,\n                    \"y\": 435.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1434.0,\n                \"y\": 435.0\n            },\n            \"endStepId\": 3,\n            \"id\": \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\",\n            \"label\": \"Start Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1607.25,\n                \"y\": 423.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1806.5,\n                \"y\": 434.0\n            },\n            \"startStepId\": 5\n        },\n        \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\": {\n            \"actionId\": 701,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1635.75,\n                \"y\": 152.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"startStepId\": 4\n        }\n    },\n    \"nodeMap\": {\n        \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\": {\n            \"id\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"inLinkIds\": [\n                \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\",\n                \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"In Progress\",\n            \"outLinkIds\": [\n                \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n                \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n                \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 146.0,\n                \"x\": 1373.0,\n                \"y\": 419.0\n            },\n            \"stepId\": 3\n        },\n        \"15174530-AE75-04E0-1D9D-4D19CD200835\": {\n            \"id\": \"15174530-AE75-04E0-1D9D-4D19CD200835\",\n            \"inLinkIds\": [],\n            \"isInitialAction\": true,\n            \"label\": \"Create Issue\",\n            \"outLinkIds\": [\n                \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 157.0,\n                \"x\": 1405.0,\n                \"y\": 0.0\n            },\n            \"stepId\": 1\n        },\n        \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\": {\n            \"id\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"inLinkIds\": [\n                \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n                \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\",\n                \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n                \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Closed\",\n            \"outLinkIds\": [\n                \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 120.0,\n                \"x\": 1569.0,\n                \"y\": 210.0\n            },\n            \"stepId\": 6\n        },\n        \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\": {\n            \"id\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"inLinkIds\": [\n                \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n                \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n                \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Resolved\",\n            \"outLinkIds\": [\n                \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n                \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\"\n            ],\n            \"rect\": {\n                \"height\": 44.0,\n                \"positiveController\": null,\n                \"width\": 137.0,\n                \"x\": 1709.0,\n                \"y\": 97.0\n            },\n            \"stepId\": 4\n        },\n        \"778534F4-7595-88B6-45E1-4D19CD518712\": {\n            \"id\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"inLinkIds\": [\n                \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n                \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Open\",\n            \"outLinkIds\": [\n                \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\",\n                \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\",\n                \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 106.0,\n                \"x\": 1429.5,\n                \"y\": 97.0\n            },\n            \"stepId\": 1\n        },\n        \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\": {\n            \"id\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"inLinkIds\": [\n                \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\",\n                \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Reopened\",\n            \"outLinkIds\": [\n                \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n                \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n                \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 142.0,\n                \"x\": 1749.5,\n                \"y\": 418.0\n            },\n            \"stepId\": 5\n        }\n    },\n    \"rootIds\": [\n        \"15174530-AE75-04E0-1D9D-4D19CD200835\"\n    ],\n    \"width\": 1136\n}\n'),(10347,'database.setup=AWAITS;app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCE;mail.properties.setup=ANNOUNCE'),(10355,'{\"com.atlassian.jira.tzdetect.10800000,10800000\":1560526676202,\"com.atlassian.jira.baseurl\":1560526756526}'),(10374,'');
/*!40000 ALTER TABLE `propertytext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `ID` decimal(18,0) DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `cronExperssion` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `ID` decimal(18,0) DEFAULT NULL,
  `ENTRY_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FIRED_TIME` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CLASS_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_DURABLE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_DATA` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_listeners`
--

DROP TABLE IF EXISTS `qrtz_job_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `JOB_LISTENER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_listeners`
--

LOCK TABLES `qrtz_job_listeners` WRITE;
/*!40000 ALTER TABLE `qrtz_job_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `REPEAT_COUNT` decimal(9,0) DEFAULT NULL,
  `REPEAT_INTERVAL` decimal(18,0) DEFAULT NULL,
  `TIMES_TRIGGERED` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_trigger_listeners`
--

DROP TABLE IF EXISTS `qrtz_trigger_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_trigger_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_trigger_listeners`
--

LOCK TABLES `qrtz_trigger_listeners` WRITE;
/*!40000 ALTER TABLE `qrtz_trigger_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_trigger_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `TRIGGER_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `NEXT_FIRE` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reindex_component`
--

DROP TABLE IF EXISTS `reindex_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_component` (
  `ID` decimal(18,0) NOT NULL,
  `REQUEST_ID` decimal(18,0) DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_reindex_component_req_id` (`REQUEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reindex_component`
--

LOCK TABLES `reindex_component` WRITE;
/*!40000 ALTER TABLE `reindex_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `reindex_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reindex_request`
--

DROP TABLE IF EXISTS `reindex_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_request` (
  `ID` decimal(18,0) NOT NULL,
  `TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `COMPLETION_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `EXECUTION_NODE_ID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reindex_request`
--

LOCK TABLES `reindex_request` WRITE;
/*!40000 ALTER TABLE `reindex_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `reindex_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remembermetoken`
--

DROP TABLE IF EXISTS `remembermetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remembermetoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remembermetoken_username_index` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remembermetoken`
--

LOCK TABLES `remembermetoken` WRITE;
/*!40000 ALTER TABLE `remembermetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `remembermetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remotelink`
--

DROP TABLE IF EXISTS `remotelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remotelink` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUEID` decimal(18,0) DEFAULT NULL,
  `GLOBALID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SUMMARY` text COLLATE utf8mb4_bin,
  `URL` text COLLATE utf8mb4_bin,
  `ICONURL` text COLLATE utf8mb4_bin,
  `ICONTITLE` text COLLATE utf8mb4_bin,
  `RELATIONSHIP` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `RESOLVED` char(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUSNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUSDESCRIPTION` text COLLATE utf8mb4_bin,
  `STATUSICONURL` text COLLATE utf8mb4_bin,
  `STATUSICONTITLE` text COLLATE utf8mb4_bin,
  `STATUSICONLINK` text COLLATE utf8mb4_bin,
  `STATUSCATEGORYKEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUSCATEGORYCOLORNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `APPLICATIONTYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `APPLICATIONNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remotelink_issueid` (`ISSUEID`,`GLOBALID`),
  KEY `remotelink_globalid` (`GLOBALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remotelink`
--

LOCK TABLES `remotelink` WRITE;
/*!40000 ALTER TABLE `remotelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `remotelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replicatedindexoperation`
--

DROP TABLE IF EXISTS `replicatedindexoperation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replicatedindexoperation` (
  `ID` decimal(18,0) NOT NULL,
  `INDEX_TIME` datetime DEFAULT NULL,
  `NODE_ID` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `AFFECTED_IDS` longtext COLLATE utf8mb4_bin,
  `OPERATION` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `node_operation_idx` (`NODE_ID`,`AFFECTED_INDEX`,`OPERATION`,`INDEX_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replicatedindexoperation`
--

LOCK TABLES `replicatedindexoperation` WRITE;
/*!40000 ALTER TABLE `replicatedindexoperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `replicatedindexoperation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `ID` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `ICONURL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rundetails`
--

DROP TABLE IF EXISTS `rundetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rundetails` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `RUN_DURATION` decimal(18,0) DEFAULT NULL,
  `RUN_OUTCOME` char(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `INFO_MESSAGE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `rundetails_jobid_idx` (`JOB_ID`),
  KEY `rundetails_starttime_idx` (`START_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rundetails`
--

LOCK TABLES `rundetails` WRITE;
/*!40000 ALTER TABLE `rundetails` DISABLE KEYS */;
INSERT INTO `rundetails` VALUES (10000,'com.atlassian.jira.cache.monitor.CacheStatisticsMonitor','2019-06-14 15:34:05',33,'S',''),(10002,'28cfe190-f13b-40f0-8611-f85a662ca99f','2019-06-14 15:34:05',14694,'S',''),(10003,'com.atlassian.jira.service.JiraService:10001','2019-06-14 15:34:34',793,'S',''),(10004,'com.atlassian.jira.user.UserHistoryDatabaseCompactor','2019-06-14 15:36:04',2,'S',''),(10100,'BundledUpdateCheckJob-job','2019-06-14 15:37:06',6,'S',''),(10101,'PluginRequestCheckJob-job','2019-06-14 15:37:06',28,'S',''),(10102,'LocalPluginLicenseNotificationJob-job','2019-06-14 15:37:06',83,'S',''),(10103,'applink-status-analytics-job','2019-06-14 15:37:08',31,'S',''),(10104,'JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job','2019-06-14 15:37:18',1855,'S',''),(10105,'CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob','2019-06-14 15:37:28',14,'S',''),(10106,'CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob','2019-06-14 15:37:29',7,'S',''),(10109,'JiraPluginScheduler:com.atlassian.troubleshooting.healthcheck.scheduler.HealthCheckSchedulerImpl:job','2019-06-14 15:38:08',1157,'S',''),(10112,'CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob','2019-06-14 15:39:30',4,'S',''),(10113,'com.atlassian.jira.service.JiraService:10000','2019-06-14 15:40:00',1,'S','');
/*!40000 ALTER TABLE `rundetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemeissuesecurities`
--

DROP TABLE IF EXISTS `schemeissuesecurities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecurities` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `sec_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sec_parameter` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sec_scheme` (`SCHEME`),
  KEY `sec_security` (`SECURITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemeissuesecurities`
--

LOCK TABLES `schemeissuesecurities` WRITE;
/*!40000 ALTER TABLE `schemeissuesecurities` DISABLE KEYS */;
/*!40000 ALTER TABLE `schemeissuesecurities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemeissuesecuritylevels`
--

DROP TABLE IF EXISTS `schemeissuesecuritylevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecuritylevels` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemeissuesecuritylevels`
--

LOCK TABLES `schemeissuesecuritylevels` WRITE;
/*!40000 ALTER TABLE `schemeissuesecuritylevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `schemeissuesecuritylevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemepermissions`
--

DROP TABLE IF EXISTS `schemepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `PERMISSION` decimal(18,0) DEFAULT NULL,
  `perm_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `perm_parameter` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PERMISSION_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `prmssn_scheme` (`SCHEME`),
  KEY `permission_key_idx` (`PERMISSION_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemepermissions`
--

LOCK TABLES `schemepermissions` WRITE;
/*!40000 ALTER TABLE `schemepermissions` DISABLE KEYS */;
INSERT INTO `schemepermissions` VALUES (10000,NULL,0,'group','jira-administrators',NULL),(10004,0,23,'projectrole','10002','ADMINISTER_PROJECTS'),(10005,0,10,'applicationRole','','BROWSE_PROJECTS'),(10006,0,11,'applicationRole','','CREATE_ISSUES'),(10007,0,15,'applicationRole','','ADD_COMMENTS'),(10008,0,19,'applicationRole','','CREATE_ATTACHMENTS'),(10009,0,13,'applicationRole','','ASSIGN_ISSUES'),(10010,0,17,'applicationRole','','ASSIGNABLE_USER'),(10011,0,14,'applicationRole','','RESOLVE_ISSUES'),(10012,0,21,'applicationRole','','LINK_ISSUES'),(10013,0,12,'applicationRole','','EDIT_ISSUES'),(10014,0,16,'projectrole','10002','DELETE_ISSUES'),(10015,0,18,'applicationRole','','CLOSE_ISSUES'),(10016,0,25,'applicationRole','','MOVE_ISSUES'),(10017,0,28,'applicationRole','','SCHEDULE_ISSUES'),(10018,0,30,'projectrole','10002','MODIFY_REPORTER'),(10019,0,20,'applicationRole','','WORK_ON_ISSUES'),(10020,0,43,'projectrole','10002','DELETE_ALL_WORKLOGS'),(10021,0,42,'applicationRole','','DELETE_OWN_WORKLOGS'),(10022,0,41,'projectrole','10002','EDIT_ALL_WORKLOGS'),(10023,0,40,'applicationRole','','EDIT_OWN_WORKLOGS'),(10024,0,31,'applicationRole','','VIEW_VOTERS_AND_WATCHERS'),(10025,0,32,'projectrole','10002','MANAGE_WATCHERS'),(10026,0,34,'projectrole','10002','EDIT_ALL_COMMENTS'),(10027,0,35,'applicationRole','','EDIT_OWN_COMMENTS'),(10028,0,36,'projectrole','10002','DELETE_ALL_COMMENTS'),(10029,0,37,'applicationRole','','DELETE_OWN_COMMENTS'),(10030,0,38,'projectrole','10002','DELETE_ALL_ATTACHMENTS'),(10031,0,39,'applicationRole','','DELETE_OWN_ATTACHMENTS'),(10033,0,29,'applicationRole','','VIEW_DEV_TOOLS'),(10101,NULL,44,'group','jira-administrators',NULL),(10200,0,45,'applicationRole','','VIEW_READONLY_WORKFLOW'),(10300,0,46,'applicationRole','','TRANSITION_ISSUES');
/*!40000 ALTER TABLE `schemepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchrequest`
--

DROP TABLE IF EXISTS `searchrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchrequest` (
  `ID` decimal(18,0) NOT NULL,
  `filtername` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `authorname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `reqcontent` longtext COLLATE utf8mb4_bin,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `filtername_lower` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sr_author` (`authorname`),
  KEY `searchrequest_filternameLower` (`filtername_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchrequest`
--

LOCK TABLES `searchrequest` WRITE;
/*!40000 ALTER TABLE `searchrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceconfig`
--

DROP TABLE IF EXISTS `serviceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceconfig` (
  `ID` decimal(18,0) NOT NULL,
  `delaytime` decimal(18,0) DEFAULT NULL,
  `CLAZZ` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `servicename` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceconfig`
--

LOCK TABLES `serviceconfig` WRITE;
/*!40000 ALTER TABLE `serviceconfig` DISABLE KEYS */;
INSERT INTO `serviceconfig` VALUES (10000,60000,'com.atlassian.jira.service.services.mail.MailQueueService','Mail Queue Service','0 * * * * ?'),(10001,43200000,'com.atlassian.jira.service.services.export.ExportService','Backup Service','0 30 3/12 * * ?'),(10002,86400000,'com.atlassian.jira.service.services.auditing.AuditLogCleaningService','Audit log cleaning service','0 0 0 * * ?');
/*!40000 ALTER TABLE `serviceconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharepermissions`
--

DROP TABLE IF EXISTS `sharepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `sharetype` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `PARAM1` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PARAM2` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `RIGHTS` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `share_index` (`entityid`,`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharepermissions`
--

LOCK TABLES `sharepermissions` WRITE;
/*!40000 ALTER TABLE `sharepermissions` DISABLE KEYS */;
INSERT INTO `sharepermissions` VALUES (10000,10000,'PortalPage','global',NULL,NULL,1);
/*!40000 ALTER TABLE `sharepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempattachmentsmonitor`
--

DROP TABLE IF EXISTS `tempattachmentsmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempattachmentsmonitor` (
  `TEMPORARY_ATTACHMENT_ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `FORM_TOKEN` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `FILE_SIZE` decimal(18,0) DEFAULT NULL,
  `CREATED_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`TEMPORARY_ATTACHMENT_ID`),
  KEY `idx_tam_by_form_token` (`FORM_TOKEN`),
  KEY `idx_tam_by_created_time` (`CREATED_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempattachmentsmonitor`
--

LOCK TABLES `tempattachmentsmonitor` WRITE;
/*!40000 ALTER TABLE `tempattachmentsmonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempattachmentsmonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackback_ping`
--

DROP TABLE IF EXISTS `trackback_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackback_ping` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `BLOGNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `EXCERPT` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackback_ping`
--

LOCK TABLES `trackback_ping` WRITE;
/*!40000 ALTER TABLE `trackback_ping` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackback_ping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trustedapp`
--

DROP TABLE IF EXISTS `trustedapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trustedapp` (
  `ID` decimal(18,0) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8mb4_bin,
  `IP_MATCH` text COLLATE utf8mb4_bin,
  `URL_MATCH` text COLLATE utf8mb4_bin,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `trustedapp_id` (`APPLICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trustedapp`
--

LOCK TABLES `trustedapp` WRITE;
/*!40000 ALTER TABLE `trustedapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trustedapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradehistory`
--

DROP TABLE IF EXISTS `upgradehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradehistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `UPGRADECLASS` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DOWNGRADETASKREQUIRED` char(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`UPGRADECLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradehistory`
--

LOCK TABLES `upgradehistory` WRITE;
/*!40000 ALTER TABLE `upgradehistory` DISABLE KEYS */;
INSERT INTO `upgradehistory` VALUES (10000,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100','70100','complete','Y'),(10100,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101','70101','complete','N'),(10101,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102','70102','complete','N'),(10102,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001','71001','complete','N'),(10103,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001','72001','complete','N'),(10104,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002','72002','complete','N'),(10105,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002','73002','complete','N');
/*!40000 ALTER TABLE `upgradehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradetaskhistory`
--

DROP TABLE IF EXISTS `upgradetaskhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradetaskhistory` (
  `ID` decimal(18,0) NOT NULL,
  `UPGRADE_TASK_FACTORY_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `BUILD_NUMBER` decimal(9,0) DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPGRADE_TYPE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradetaskhistory`
--

LOCK TABLES `upgradetaskhistory` WRITE;
/*!40000 ALTER TABLE `upgradetaskhistory` DISABLE KEYS */;
INSERT INTO `upgradetaskhistory` VALUES (10006,'host',73010,'COMPLETED','SERVER'),(10007,'host',73011,'COMPLETED','SERVER'),(10008,'host',74002,'COMPLETED','SERVER'),(10009,'host',75002,'COMPLETED','SERVER'),(10010,'host',75003,'COMPLETED','SERVER'),(10011,'host',75004,'COMPLETED','SERVER'),(10012,'host',75005,'COMPLETED','SERVER'),(10013,'host',76001,'COMPLETED','SERVER'),(10014,'host',77001,'COMPLETED','SERVER'),(10015,'host',710001,'COMPLETED','SERVER'),(10016,'host',711001,'COMPLETED','SERVER'),(10017,'host',712001,'COMPLETED','SERVER');
/*!40000 ALTER TABLE `upgradetaskhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradetaskhistoryauditlog`
--

DROP TABLE IF EXISTS `upgradetaskhistoryauditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradetaskhistoryauditlog` (
  `ID` decimal(18,0) NOT NULL,
  `UPGRADE_TASK_FACTORY_KEY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `BUILD_NUMBER` decimal(9,0) DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPGRADE_TYPE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `TIMEPERFORMED` datetime DEFAULT NULL,
  `ACTION` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradetaskhistoryauditlog`
--

LOCK TABLES `upgradetaskhistoryauditlog` WRITE;
/*!40000 ALTER TABLE `upgradetaskhistoryauditlog` DISABLE KEYS */;
INSERT INTO `upgradetaskhistoryauditlog` VALUES (10000,'host',70101,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10001,'host',70102,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10002,'host',71001,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10003,'host',72001,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10004,'host',72002,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10005,'host',73002,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10006,'host',73010,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10007,'host',73011,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10008,'host',74002,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10009,'host',75002,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10010,'host',75003,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10011,'host',75004,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10012,'host',75005,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10013,'host',76001,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10014,'host',77001,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10015,'host',710001,'COMPLETED','SERVER','2019-06-14 15:34:04','upgrade'),(10016,'host',711001,'COMPLETED','SERVER','2019-06-14 15:34:05','upgrade'),(10017,'host',712001,'COMPLETED','SERVER','2019-06-14 15:34:05','upgrade');
/*!40000 ALTER TABLE `upgradetaskhistoryauditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradeversionhistory`
--

DROP TABLE IF EXISTS `upgradeversionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradeversionhistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `TIMEPERFORMED` datetime DEFAULT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `TARGETVERSION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`TARGETBUILD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradeversionhistory`
--

LOCK TABLES `upgradeversionhistory` WRITE;
/*!40000 ALTER TABLE `upgradeversionhistory` DISABLE KEYS */;
INSERT INTO `upgradeversionhistory` VALUES (10000,'2019-06-14 15:34:05','712001','7.13.3');
/*!40000 ALTER TABLE `upgradeversionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userassociation`
--

DROP TABLE IF EXISTS `userassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassociation` (
  `SOURCE_NAME` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NAME`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `user_source` (`SOURCE_NAME`),
  KEY `user_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userassociation`
--

LOCK TABLES `userassociation` WRITE;
/*!40000 ALTER TABLE `userassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `userassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbase`
--

DROP TABLE IF EXISTS `userbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbase` (
  `ID` decimal(18,0) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PASSWORD_HASH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osuser_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbase`
--

LOCK TABLES `userbase` WRITE;
/*!40000 ALTER TABLE `userbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `userbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhistoryitem`
--

DROP TABLE IF EXISTS `userhistoryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhistoryitem` (
  `ID` decimal(18,0) NOT NULL,
  `entitytype` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `entityid` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastviewed` decimal(18,0) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uh_type_user_entity` (`entitytype`,`USERNAME`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhistoryitem`
--

LOCK TABLES `userhistoryitem` WRITE;
/*!40000 ALTER TABLE `userhistoryitem` DISABLE KEYS */;
INSERT INTO `userhistoryitem` VALUES (10000,'Dashboard','10000','jira_local_sysadmin',1560526751588,NULL);
/*!40000 ALTER TABLE `userhistoryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfilter`
--

DROP TABLE IF EXISTS `userpickerfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilter` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `enabled` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `upf_customfield` (`CUSTOMFIELD`),
  KEY `upf_fieldconfigid` (`CUSTOMFIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfilter`
--

LOCK TABLES `userpickerfilter` WRITE;
/*!40000 ALTER TABLE `userpickerfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfiltergroup`
--

DROP TABLE IF EXISTS `userpickerfiltergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfiltergroup` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfiltergroup` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfiltergroup`
--

LOCK TABLES `userpickerfiltergroup` WRITE;
/*!40000 ALTER TABLE `userpickerfiltergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfiltergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfilterrole`
--

DROP TABLE IF EXISTS `userpickerfilterrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilterrole` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfilterrole` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfilterrole`
--

LOCK TABLES `userpickerfilterrole` WRITE;
/*!40000 ALTER TABLE `userpickerfilterrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfilterrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versioncontrol`
--

DROP TABLE IF EXISTS `versioncontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versioncontrol` (
  `ID` decimal(18,0) NOT NULL,
  `vcsname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `vcsdescription` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `vcstype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versioncontrol`
--

LOCK TABLES `versioncontrol` WRITE;
/*!40000 ALTER TABLE `versioncontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `versioncontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votehistory`
--

DROP TABLE IF EXISTS `votehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votehistory` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `votehistory_issue_index` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votehistory`
--

LOCK TABLES `votehistory` WRITE;
/*!40000 ALTER TABLE `votehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `votehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowscheme`
--

DROP TABLE IF EXISTS `workflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb4_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowscheme`
--

LOCK TABLES `workflowscheme` WRITE;
/*!40000 ALTER TABLE `workflowscheme` DISABLE KEYS */;
INSERT INTO `workflowscheme` VALUES (10000,'classic','classic');
/*!40000 ALTER TABLE `workflowscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowschemeentity`
--

DROP TABLE IF EXISTS `workflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowschemeentity`
--

LOCK TABLES `workflowschemeentity` WRITE;
/*!40000 ALTER TABLE `workflowschemeentity` DISABLE KEYS */;
INSERT INTO `workflowschemeentity` VALUES (10000,10000,'classic default workflow','0');
/*!40000 ALTER TABLE `workflowschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worklog`
--

DROP TABLE IF EXISTS `worklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worklog` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `grouplevel` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `worklogbody` longtext COLLATE utf8mb4_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `timeworked` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `worklog_issue` (`issueid`),
  KEY `worklog_author` (`AUTHOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worklog`
--

LOCK TABLES `worklog` WRITE;
/*!40000 ALTER TABLE `worklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `worklog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 17:40:02