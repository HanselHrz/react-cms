CREATE DATABASE  IF NOT EXISTS `strapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `strapi`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: strapi
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `about_startups`
--

DROP TABLE IF EXISTS `about_startups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_startups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `about_startups_created_by_id_fk` (`created_by_id`),
  KEY `about_startups_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `about_startups_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `about_startups_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_startups`
--

LOCK TABLES `about_startups` WRITE;
/*!40000 ALTER TABLE `about_startups` DISABLE KEYS */;
INSERT INTO `about_startups` VALUES (1,'2024-07-08 14:23:59.634000','2024-07-08 14:44:58.752000','2024-07-08 14:24:01.095000',1,1);
/*!40000 ALTER TABLE `about_startups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_startups_components`
--

DROP TABLE IF EXISTS `about_startups_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_startups_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about_startups_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `about_startups_field_index` (`field`),
  KEY `about_startups_component_type_index` (`component_type`),
  KEY `about_startups_entity_fk` (`entity_id`),
  CONSTRAINT `about_startups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `about_startups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_startups_components`
--

LOCK TABLES `about_startups_components` WRITE;
/*!40000 ALTER TABLE `about_startups_components` DISABLE KEYS */;
INSERT INTO `about_startups_components` VALUES (21,1,2,'about-side.header','PageContent',1),(22,1,2,'about-side.gallery','PageContent',2),(23,1,2,'about-side.numeros','PageContent',3),(24,1,2,'about-side.story','PageContent',4),(25,1,2,'about-side.equipo','PageContent',5);
/*!40000 ALTER TABLE `about_startups_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `abouts_created_by_id_fk` (`created_by_id`),
  KEY `abouts_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abouts_components`
--

DROP TABLE IF EXISTS `abouts_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abouts_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `abouts_field_index` (`field`),
  KEY `abouts_component_type_index` (`component_type`),
  KEY `abouts_entity_fk` (`entity_id`),
  CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts_components`
--

LOCK TABLES `abouts_components` WRITE;
/*!40000 ALTER TABLE `abouts_components` DISABLE KEYS */;
INSERT INTO `abouts_components` VALUES (1,1,1,'sections.sections','section',1),(2,1,2,'sections.sections','section',2),(3,1,3,'sections.sections','section',3),(4,1,4,'sections.sections','section',4),(5,1,6,'sections.sections','section',5),(6,1,5,'sections.sections','section',6);
/*!40000 ALTER TABLE `abouts_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::upload.read','{}',NULL,'{}','[]','2024-07-01 14:54:53.708000','2024-07-01 14:54:53.708000',NULL,NULL),(2,'plugin::upload.configure-view','{}',NULL,'{}','[]','2024-07-01 14:54:53.718000','2024-07-01 14:54:53.718000',NULL,NULL),(3,'plugin::upload.assets.create','{}',NULL,'{}','[]','2024-07-01 14:54:53.727000','2024-07-01 14:54:53.727000',NULL,NULL),(4,'plugin::upload.assets.update','{}',NULL,'{}','[]','2024-07-01 14:54:53.734000','2024-07-01 14:54:53.734000',NULL,NULL),(5,'plugin::upload.assets.download','{}',NULL,'{}','[]','2024-07-01 14:54:53.742000','2024-07-01 14:54:53.742000',NULL,NULL),(6,'plugin::upload.assets.copy-link','{}',NULL,'{}','[]','2024-07-01 14:54:53.749000','2024-07-01 14:54:53.749000',NULL,NULL),(7,'plugin::upload.read','{}',NULL,'{}','[\"admin::is-creator\"]','2024-07-01 14:54:53.761000','2024-07-01 14:54:53.761000',NULL,NULL),(8,'plugin::upload.configure-view','{}',NULL,'{}','[]','2024-07-01 14:54:53.769000','2024-07-01 14:54:53.769000',NULL,NULL),(9,'plugin::upload.assets.create','{}',NULL,'{}','[]','2024-07-01 14:54:53.778000','2024-07-01 14:54:53.778000',NULL,NULL),(10,'plugin::upload.assets.update','{}',NULL,'{}','[\"admin::is-creator\"]','2024-07-01 14:54:53.787000','2024-07-01 14:54:53.787000',NULL,NULL),(11,'plugin::upload.assets.download','{}',NULL,'{}','[]','2024-07-01 14:54:53.797000','2024-07-01 14:54:53.797000',NULL,NULL),(12,'plugin::upload.assets.copy-link','{}',NULL,'{}','[]','2024-07-01 14:54:53.807000','2024-07-01 14:54:53.807000',NULL,NULL),(16,'plugin::content-manager.explorer.delete','{}','plugin::users-permissions.user','{}','[]','2024-07-01 14:54:53.879000','2024-07-01 14:54:53.879000',NULL,NULL),(17,'plugin::content-manager.single-types.configure-view','{}',NULL,'{}','[]','2024-07-01 14:54:53.887000','2024-07-01 14:54:53.887000',NULL,NULL),(18,'plugin::content-manager.collection-types.configure-view','{}',NULL,'{}','[]','2024-07-01 14:54:53.896000','2024-07-01 14:54:53.896000',NULL,NULL),(19,'plugin::content-manager.components.configure-layout','{}',NULL,'{}','[]','2024-07-01 14:54:53.905000','2024-07-01 14:54:53.905000',NULL,NULL),(20,'plugin::content-type-builder.read','{}',NULL,'{}','[]','2024-07-01 14:54:53.914000','2024-07-01 14:54:53.914000',NULL,NULL),(21,'plugin::email.settings.read','{}',NULL,'{}','[]','2024-07-01 14:54:53.922000','2024-07-01 14:54:53.922000',NULL,NULL),(22,'plugin::upload.read','{}',NULL,'{}','[]','2024-07-01 14:54:53.931000','2024-07-01 14:54:53.931000',NULL,NULL),(23,'plugin::upload.assets.create','{}',NULL,'{}','[]','2024-07-01 14:54:53.948000','2024-07-01 14:54:53.948000',NULL,NULL),(24,'plugin::upload.assets.update','{}',NULL,'{}','[]','2024-07-01 14:54:53.956000','2024-07-01 14:54:53.956000',NULL,NULL),(25,'plugin::upload.assets.download','{}',NULL,'{}','[]','2024-07-01 14:54:53.964000','2024-07-01 14:54:53.964000',NULL,NULL),(26,'plugin::upload.assets.copy-link','{}',NULL,'{}','[]','2024-07-01 14:54:53.973000','2024-07-01 14:54:53.973000',NULL,NULL),(27,'plugin::upload.configure-view','{}',NULL,'{}','[]','2024-07-01 14:54:53.981000','2024-07-01 14:54:53.981000',NULL,NULL),(28,'plugin::upload.settings.read','{}',NULL,'{}','[]','2024-07-01 14:54:53.990000','2024-07-01 14:54:53.990000',NULL,NULL),(29,'plugin::users-permissions.roles.create','{}',NULL,'{}','[]','2024-07-01 14:54:53.998000','2024-07-01 14:54:53.998000',NULL,NULL),(30,'plugin::users-permissions.roles.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.006000','2024-07-01 14:54:54.006000',NULL,NULL),(31,'plugin::users-permissions.roles.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.015000','2024-07-01 14:54:54.015000',NULL,NULL),(32,'plugin::users-permissions.roles.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.027000','2024-07-01 14:54:54.027000',NULL,NULL),(33,'plugin::users-permissions.providers.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.035000','2024-07-01 14:54:54.035000',NULL,NULL),(34,'plugin::users-permissions.providers.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.043000','2024-07-01 14:54:54.043000',NULL,NULL),(35,'plugin::users-permissions.email-templates.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.051000','2024-07-01 14:54:54.051000',NULL,NULL),(36,'plugin::users-permissions.email-templates.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.064000','2024-07-01 14:54:54.064000',NULL,NULL),(37,'plugin::users-permissions.advanced-settings.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.073000','2024-07-01 14:54:54.073000',NULL,NULL),(38,'plugin::users-permissions.advanced-settings.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.081000','2024-07-01 14:54:54.081000',NULL,NULL),(39,'plugin::i18n.locale.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.090000','2024-07-01 14:54:54.090000',NULL,NULL),(40,'plugin::i18n.locale.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.099000','2024-07-01 14:54:54.099000',NULL,NULL),(41,'plugin::i18n.locale.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.107000','2024-07-01 14:54:54.107000',NULL,NULL),(42,'plugin::i18n.locale.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.114000','2024-07-01 14:54:54.114000',NULL,NULL),(43,'admin::marketplace.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.122000','2024-07-01 14:54:54.122000',NULL,NULL),(44,'admin::webhooks.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.133000','2024-07-01 14:54:54.133000',NULL,NULL),(45,'admin::webhooks.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.141000','2024-07-01 14:54:54.141000',NULL,NULL),(46,'admin::webhooks.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.149000','2024-07-01 14:54:54.149000',NULL,NULL),(47,'admin::webhooks.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.158000','2024-07-01 14:54:54.158000',NULL,NULL),(48,'admin::users.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.166000','2024-07-01 14:54:54.166000',NULL,NULL),(49,'admin::users.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.175000','2024-07-01 14:54:54.175000',NULL,NULL),(50,'admin::users.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.183000','2024-07-01 14:54:54.183000',NULL,NULL),(51,'admin::users.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.192000','2024-07-01 14:54:54.192000',NULL,NULL),(52,'admin::roles.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.200000','2024-07-01 14:54:54.200000',NULL,NULL),(53,'admin::roles.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.209000','2024-07-01 14:54:54.209000',NULL,NULL),(54,'admin::roles.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.217000','2024-07-01 14:54:54.217000',NULL,NULL),(55,'admin::roles.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.225000','2024-07-01 14:54:54.225000',NULL,NULL),(56,'admin::api-tokens.access','{}',NULL,'{}','[]','2024-07-01 14:54:54.234000','2024-07-01 14:54:54.234000',NULL,NULL),(57,'admin::api-tokens.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.242000','2024-07-01 14:54:54.242000',NULL,NULL),(58,'admin::api-tokens.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.250000','2024-07-01 14:54:54.250000',NULL,NULL),(59,'admin::api-tokens.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.258000','2024-07-01 14:54:54.258000',NULL,NULL),(60,'admin::api-tokens.regenerate','{}',NULL,'{}','[]','2024-07-01 14:54:54.266000','2024-07-01 14:54:54.266000',NULL,NULL),(61,'admin::api-tokens.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.275000','2024-07-01 14:54:54.275000',NULL,NULL),(62,'admin::project-settings.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.282000','2024-07-01 14:54:54.282000',NULL,NULL),(63,'admin::project-settings.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.290000','2024-07-01 14:54:54.290000',NULL,NULL),(64,'admin::transfer.tokens.access','{}',NULL,'{}','[]','2024-07-01 14:54:54.297000','2024-07-01 14:54:54.297000',NULL,NULL),(65,'admin::transfer.tokens.create','{}',NULL,'{}','[]','2024-07-01 14:54:54.305000','2024-07-01 14:54:54.305000',NULL,NULL),(66,'admin::transfer.tokens.read','{}',NULL,'{}','[]','2024-07-01 14:54:54.314000','2024-07-01 14:54:54.314000',NULL,NULL),(67,'admin::transfer.tokens.update','{}',NULL,'{}','[]','2024-07-01 14:54:54.324000','2024-07-01 14:54:54.324000',NULL,NULL),(68,'admin::transfer.tokens.regenerate','{}',NULL,'{}','[]','2024-07-01 14:54:54.334000','2024-07-01 14:54:54.334000',NULL,NULL),(69,'admin::transfer.tokens.delete','{}',NULL,'{}','[]','2024-07-01 14:54:54.344000','2024-07-01 14:54:54.344000',NULL,NULL),(73,'plugin::content-manager.explorer.delete','{}','api::blog.blog','{}','[]','2024-07-01 15:07:17.079000','2024-07-01 15:07:17.079000',NULL,NULL),(74,'plugin::content-manager.explorer.publish','{}','api::blog.blog','{}','[]','2024-07-01 15:07:17.094000','2024-07-01 15:07:17.094000',NULL,NULL),(84,'plugin::content-manager.explorer.create','{}','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\"]}','[]','2024-07-03 10:47:13.791000','2024-07-03 10:47:13.791000',NULL,NULL),(85,'plugin::content-manager.explorer.read','{}','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\"]}','[]','2024-07-03 10:47:13.803000','2024-07-03 10:47:13.803000',NULL,NULL),(86,'plugin::content-manager.explorer.update','{}','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"avatar\"]}','[]','2024-07-03 10:47:13.813000','2024-07-03 10:47:13.813000',NULL,NULL),(90,'plugin::content-manager.explorer.delete','{}','api::review.review','{}','[]','2024-07-03 12:51:09.647000','2024-07-03 12:51:09.647000',NULL,NULL),(91,'plugin::content-manager.explorer.publish','{}','api::review.review','{}','[]','2024-07-03 12:51:09.660000','2024-07-03 12:51:09.660000',NULL,NULL),(93,'plugin::content-manager.explorer.create','{}','api::review.review','{\"fields\": [\"review\", \"reviewer\", \"blog\"]}','[]','2024-07-03 13:04:37.614000','2024-07-03 13:04:37.614000',NULL,NULL),(95,'plugin::content-manager.explorer.read','{}','api::review.review','{\"fields\": [\"review\", \"reviewer\", \"blog\"]}','[]','2024-07-03 13:04:37.634000','2024-07-03 13:04:37.634000',NULL,NULL),(97,'plugin::content-manager.explorer.update','{}','api::review.review','{\"fields\": [\"review\", \"reviewer\", \"blog\"]}','[]','2024-07-03 13:04:37.654000','2024-07-03 13:04:37.654000',NULL,NULL),(106,'plugin::content-manager.explorer.create','{}','api::blog.blog','{\"fields\": [\"title\", \"content\", \"author\", \"category\", \"publishedDate\", \"description\", \"image\", \"tags\", \"reviews\", \"user\", \"avatar\"]}','[]','2024-07-03 15:05:21.907000','2024-07-03 15:05:21.907000',NULL,NULL),(107,'plugin::content-manager.explorer.read','{}','api::blog.blog','{\"fields\": [\"title\", \"content\", \"author\", \"category\", \"publishedDate\", \"description\", \"image\", \"tags\", \"reviews\", \"user\", \"avatar\"]}','[]','2024-07-03 15:05:21.918000','2024-07-03 15:05:21.918000',NULL,NULL),(108,'plugin::content-manager.explorer.update','{}','api::blog.blog','{\"fields\": [\"title\", \"content\", \"author\", \"category\", \"publishedDate\", \"description\", \"image\", \"tags\", \"reviews\", \"user\", \"avatar\"]}','[]','2024-07-03 15:05:21.928000','2024-07-03 15:05:21.928000',NULL,NULL),(141,'plugin::content-manager.explorer.create','{}','api::web-basic.web-basic','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 00:57:17.463000','2024-07-08 00:57:17.463000',NULL,NULL),(142,'plugin::content-manager.explorer.read','{}','api::web-basic.web-basic','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 00:57:17.477000','2024-07-08 00:57:17.477000',NULL,NULL),(143,'plugin::content-manager.explorer.update','{}','api::web-basic.web-basic','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 00:57:17.489000','2024-07-08 00:57:17.489000',NULL,NULL),(144,'plugin::content-manager.explorer.delete','{}','api::web-basic.web-basic','{}','[]','2024-07-08 00:57:17.499000','2024-07-08 00:57:17.499000',NULL,NULL),(145,'plugin::content-manager.explorer.publish','{}','api::web-basic.web-basic','{}','[]','2024-07-08 00:57:17.508000','2024-07-08 00:57:17.508000',NULL,NULL),(146,'plugin::content-manager.explorer.create','{}','api::customer-storie.customer-storie','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:03:27.271000','2024-07-08 02:03:27.271000',NULL,NULL),(147,'plugin::content-manager.explorer.read','{}','api::customer-storie.customer-storie','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:03:27.281000','2024-07-08 02:03:27.281000',NULL,NULL),(148,'plugin::content-manager.explorer.update','{}','api::customer-storie.customer-storie','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:03:27.288000','2024-07-08 02:03:27.288000',NULL,NULL),(149,'plugin::content-manager.explorer.delete','{}','api::customer-storie.customer-storie','{}','[]','2024-07-08 02:03:27.298000','2024-07-08 02:03:27.298000',NULL,NULL),(150,'plugin::content-manager.explorer.publish','{}','api::customer-storie.customer-storie','{}','[]','2024-07-08 02:03:27.306000','2024-07-08 02:03:27.306000',NULL,NULL),(154,'plugin::content-manager.explorer.create','{}','api::enterprise.enterprise','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:40:41.866000','2024-07-08 02:40:41.866000',NULL,NULL),(155,'plugin::content-manager.explorer.read','{}','api::enterprise.enterprise','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:40:41.876000','2024-07-08 02:40:41.876000',NULL,NULL),(156,'plugin::content-manager.explorer.update','{}','api::enterprise.enterprise','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 02:40:41.884000','2024-07-08 02:40:41.884000',NULL,NULL),(157,'plugin::content-manager.explorer.delete','{}','api::enterprise.enterprise','{}','[]','2024-07-08 02:40:41.892000','2024-07-08 02:40:41.892000',NULL,NULL),(158,'plugin::content-manager.explorer.publish','{}','api::enterprise.enterprise','{}','[]','2024-07-08 02:40:41.901000','2024-07-08 02:40:41.901000',NULL,NULL),(199,'plugin::content-manager.explorer.create','{}','api::about-startup.about-startup','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 14:20:23.685000','2024-07-08 14:20:23.685000',NULL,NULL),(200,'plugin::content-manager.explorer.read','{}','api::about-startup.about-startup','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 14:20:23.698000','2024-07-08 14:20:23.698000',NULL,NULL),(201,'plugin::content-manager.explorer.update','{}','api::about-startup.about-startup','{\"fields\": [\"PageContent\"]}','[]','2024-07-08 14:20:23.705000','2024-07-08 14:20:23.705000',NULL,NULL),(202,'plugin::content-manager.explorer.delete','{}','api::about-startup.about-startup','{}','[]','2024-07-08 14:20:23.713000','2024-07-08 14:20:23.713000',NULL,NULL),(203,'plugin::content-manager.explorer.publish','{}','api::about-startup.about-startup','{}','[]','2024-07-08 14:20:23.722000','2024-07-08 14:20:23.722000',NULL,NULL),(204,'plugin::content-manager.explorer.create','{}','api::about.about','{\"fields\": [\"section.title\", \"section.subtitle\", \"section.description\", \"section.image1\", \"section.video\", \"section.items.title\", \"section.items.description\", \"section.items.images\", \"section.items.subtitle\", \"section.items.button.title\", \"section.items.button.icon\", \"section.section_name\", \"section.accordion.title\", \"section.accordion.subtitle\", \"section.accordion.description\", \"section.accordion.button.title\", \"section.accordion.button.icon\", \"section.button.title\", \"section.button.icon\"]}','[]','2024-07-08 14:58:29.264000','2024-07-08 14:58:29.264000',NULL,NULL),(205,'plugin::content-manager.explorer.create','{}','api::contac-us-pop.contac-us-pop','{\"fields\": [\"title\", \"paragraph\", \"email\", \"address\"]}','[]','2024-07-08 14:58:29.275000','2024-07-08 14:58:29.275000',NULL,NULL),(206,'plugin::content-manager.explorer.create','{}','api::faq.faq','{\"fields\": [\"FAQ\"]}','[]','2024-07-08 14:58:29.287000','2024-07-08 14:58:29.287000',NULL,NULL),(207,'plugin::content-manager.explorer.create','{}','api::helpcenter.helpcenter','{\"fields\": [\"FAQpage\"]}','[]','2024-07-08 14:58:29.296000','2024-07-08 14:58:29.296000',NULL,NULL),(208,'plugin::content-manager.explorer.create','{}','api::home.home','{\"fields\": [\"homepage\"]}','[]','2024-07-08 14:58:29.305000','2024-07-08 14:58:29.305000',NULL,NULL),(209,'plugin::content-manager.explorer.create','{}','api::logistic.logistic','{\"fields\": [\"sections\"]}','[]','2024-07-08 14:58:29.314000','2024-07-08 14:58:29.314000',NULL,NULL),(210,'plugin::content-manager.explorer.create','{}','api::question.question','{\"fields\": [\"question\", \"answer\"]}','[]','2024-07-08 14:58:29.324000','2024-07-08 14:58:29.324000',NULL,NULL),(211,'plugin::content-manager.explorer.create','{}','api::section.section','{\"fields\": [\"title\", \"subtitle\", \"image\", \"video\", \"description\", \"items.title\", \"items.description\", \"items.images\", \"items.subtitle\", \"items.button.title\", \"items.button.icon\", \"section_name\", \"comments.title\", \"comments.description\", \"comments.avatar\", \"comments.state\", \"comments.userName\", \"alert.title\", \"alert.description\"]}','[]','2024-07-08 14:58:29.335000','2024-07-08 14:58:29.335000',NULL,NULL),(212,'plugin::content-manager.explorer.create','{}','api::term.term','{\"fields\": [\"title\", \"questions\", \"subtitle\", \"contactUs.question\", \"contactUs.email\", \"contactUs.paragraph\", \"contactUs.address\"]}','[]','2024-07-08 14:58:29.344000','2024-07-08 14:58:29.344000',NULL,NULL),(213,'plugin::content-manager.explorer.read','{}','api::about.about','{\"fields\": [\"section.title\", \"section.subtitle\", \"section.description\", \"section.image1\", \"section.video\", \"section.items.title\", \"section.items.description\", \"section.items.images\", \"section.items.subtitle\", \"section.items.button.title\", \"section.items.button.icon\", \"section.section_name\", \"section.accordion.title\", \"section.accordion.subtitle\", \"section.accordion.description\", \"section.accordion.button.title\", \"section.accordion.button.icon\", \"section.button.title\", \"section.button.icon\"]}','[]','2024-07-08 14:58:29.355000','2024-07-08 14:58:29.355000',NULL,NULL),(214,'plugin::content-manager.explorer.read','{}','api::contac-us-pop.contac-us-pop','{\"fields\": [\"title\", \"paragraph\", \"email\", \"address\"]}','[]','2024-07-08 14:58:29.363000','2024-07-08 14:58:29.363000',NULL,NULL),(215,'plugin::content-manager.explorer.read','{}','api::faq.faq','{\"fields\": [\"FAQ\"]}','[]','2024-07-08 14:58:29.371000','2024-07-08 14:58:29.371000',NULL,NULL),(216,'plugin::content-manager.explorer.read','{}','api::helpcenter.helpcenter','{\"fields\": [\"FAQpage\"]}','[]','2024-07-08 14:58:29.379000','2024-07-08 14:58:29.379000',NULL,NULL),(217,'plugin::content-manager.explorer.read','{}','api::home.home','{\"fields\": [\"homepage\"]}','[]','2024-07-08 14:58:29.387000','2024-07-08 14:58:29.387000',NULL,NULL),(218,'plugin::content-manager.explorer.read','{}','api::logistic.logistic','{\"fields\": [\"sections\"]}','[]','2024-07-08 14:58:29.397000','2024-07-08 14:58:29.397000',NULL,NULL),(219,'plugin::content-manager.explorer.read','{}','api::question.question','{\"fields\": [\"question\", \"answer\"]}','[]','2024-07-08 14:58:29.406000','2024-07-08 14:58:29.406000',NULL,NULL),(220,'plugin::content-manager.explorer.read','{}','api::section.section','{\"fields\": [\"title\", \"subtitle\", \"image\", \"video\", \"description\", \"items.title\", \"items.description\", \"items.images\", \"items.subtitle\", \"items.button.title\", \"items.button.icon\", \"section_name\", \"comments.title\", \"comments.description\", \"comments.avatar\", \"comments.state\", \"comments.userName\", \"alert.title\", \"alert.description\"]}','[]','2024-07-08 14:58:29.418000','2024-07-08 14:58:29.418000',NULL,NULL),(221,'plugin::content-manager.explorer.read','{}','api::term.term','{\"fields\": [\"title\", \"questions\", \"subtitle\", \"contactUs.question\", \"contactUs.email\", \"contactUs.paragraph\", \"contactUs.address\"]}','[]','2024-07-08 14:58:29.432000','2024-07-08 14:58:29.432000',NULL,NULL),(222,'plugin::content-manager.explorer.update','{}','api::about.about','{\"fields\": [\"section.title\", \"section.subtitle\", \"section.description\", \"section.image1\", \"section.video\", \"section.items.title\", \"section.items.description\", \"section.items.images\", \"section.items.subtitle\", \"section.items.button.title\", \"section.items.button.icon\", \"section.section_name\", \"section.accordion.title\", \"section.accordion.subtitle\", \"section.accordion.description\", \"section.accordion.button.title\", \"section.accordion.button.icon\", \"section.button.title\", \"section.button.icon\"]}','[]','2024-07-08 14:58:29.443000','2024-07-08 14:58:29.443000',NULL,NULL),(223,'plugin::content-manager.explorer.update','{}','api::contac-us-pop.contac-us-pop','{\"fields\": [\"title\", \"paragraph\", \"email\", \"address\"]}','[]','2024-07-08 14:58:29.452000','2024-07-08 14:58:29.452000',NULL,NULL),(224,'plugin::content-manager.explorer.update','{}','api::faq.faq','{\"fields\": [\"FAQ\"]}','[]','2024-07-08 14:58:29.462000','2024-07-08 14:58:29.462000',NULL,NULL),(225,'plugin::content-manager.explorer.update','{}','api::helpcenter.helpcenter','{\"fields\": [\"FAQpage\"]}','[]','2024-07-08 14:58:29.471000','2024-07-08 14:58:29.471000',NULL,NULL),(226,'plugin::content-manager.explorer.update','{}','api::home.home','{\"fields\": [\"homepage\"]}','[]','2024-07-08 14:58:29.479000','2024-07-08 14:58:29.479000',NULL,NULL),(227,'plugin::content-manager.explorer.update','{}','api::logistic.logistic','{\"fields\": [\"sections\"]}','[]','2024-07-08 14:58:29.494000','2024-07-08 14:58:29.494000',NULL,NULL),(228,'plugin::content-manager.explorer.update','{}','api::question.question','{\"fields\": [\"question\", \"answer\"]}','[]','2024-07-08 14:58:29.504000','2024-07-08 14:58:29.504000',NULL,NULL),(229,'plugin::content-manager.explorer.update','{}','api::section.section','{\"fields\": [\"title\", \"subtitle\", \"image\", \"video\", \"description\", \"items.title\", \"items.description\", \"items.images\", \"items.subtitle\", \"items.button.title\", \"items.button.icon\", \"section_name\", \"comments.title\", \"comments.description\", \"comments.avatar\", \"comments.state\", \"comments.userName\", \"alert.title\", \"alert.description\"]}','[]','2024-07-08 14:58:29.514000','2024-07-08 14:58:29.514000',NULL,NULL),(230,'plugin::content-manager.explorer.update','{}','api::term.term','{\"fields\": [\"title\", \"questions\", \"subtitle\", \"contactUs.question\", \"contactUs.email\", \"contactUs.paragraph\", \"contactUs.address\"]}','[]','2024-07-08 14:58:29.522000','2024-07-08 14:58:29.522000',NULL,NULL),(231,'plugin::content-manager.explorer.delete','{}','api::about.about','{}','[]','2024-07-08 14:58:29.544000','2024-07-08 14:58:29.544000',NULL,NULL),(232,'plugin::content-manager.explorer.delete','{}','api::contac-us-pop.contac-us-pop','{}','[]','2024-07-08 14:58:29.555000','2024-07-08 14:58:29.555000',NULL,NULL),(233,'plugin::content-manager.explorer.delete','{}','api::faq.faq','{}','[]','2024-07-08 14:58:29.566000','2024-07-08 14:58:29.566000',NULL,NULL),(234,'plugin::content-manager.explorer.delete','{}','api::helpcenter.helpcenter','{}','[]','2024-07-08 14:58:29.575000','2024-07-08 14:58:29.575000',NULL,NULL),(235,'plugin::content-manager.explorer.delete','{}','api::home.home','{}','[]','2024-07-08 14:58:29.585000','2024-07-08 14:58:29.585000',NULL,NULL),(236,'plugin::content-manager.explorer.delete','{}','api::logistic.logistic','{}','[]','2024-07-08 14:58:29.595000','2024-07-08 14:58:29.595000',NULL,NULL),(237,'plugin::content-manager.explorer.delete','{}','api::question.question','{}','[]','2024-07-08 14:58:29.606000','2024-07-08 14:58:29.606000',NULL,NULL),(238,'plugin::content-manager.explorer.delete','{}','api::section.section','{}','[]','2024-07-08 14:58:29.618000','2024-07-08 14:58:29.618000',NULL,NULL),(239,'plugin::content-manager.explorer.delete','{}','api::term.term','{}','[]','2024-07-08 14:58:29.630000','2024-07-08 14:58:29.630000',NULL,NULL),(240,'plugin::content-manager.explorer.publish','{}','api::about.about','{}','[]','2024-07-08 14:58:29.641000','2024-07-08 14:58:29.641000',NULL,NULL),(241,'plugin::content-manager.explorer.publish','{}','api::contac-us-pop.contac-us-pop','{}','[]','2024-07-08 14:58:29.649000','2024-07-08 14:58:29.649000',NULL,NULL),(242,'plugin::content-manager.explorer.publish','{}','api::faq.faq','{}','[]','2024-07-08 14:58:29.658000','2024-07-08 14:58:29.658000',NULL,NULL),(243,'plugin::content-manager.explorer.publish','{}','api::helpcenter.helpcenter','{}','[]','2024-07-08 14:58:29.665000','2024-07-08 14:58:29.665000',NULL,NULL),(244,'plugin::content-manager.explorer.publish','{}','api::home.home','{}','[]','2024-07-08 14:58:29.674000','2024-07-08 14:58:29.674000',NULL,NULL),(245,'plugin::content-manager.explorer.publish','{}','api::logistic.logistic','{}','[]','2024-07-08 14:58:29.685000','2024-07-08 14:58:29.685000',NULL,NULL),(246,'plugin::content-manager.explorer.publish','{}','api::question.question','{}','[]','2024-07-08 14:58:29.696000','2024-07-08 14:58:29.696000',NULL,NULL),(247,'plugin::content-manager.explorer.publish','{}','api::section.section','{}','[]','2024-07-08 14:58:29.707000','2024-07-08 14:58:29.707000',NULL,NULL),(248,'plugin::content-manager.explorer.publish','{}','api::term.term','{}','[]','2024-07-08 14:58:29.719000','2024-07-08 14:58:29.719000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,1,2,1),(2,2,2,2),(3,3,2,3),(4,4,2,4),(5,5,2,5),(6,6,2,6),(7,7,3,1),(8,8,3,2),(9,9,3,3),(10,10,3,4),(11,11,3,5),(12,12,3,6),(16,16,1,4),(17,17,1,5),(18,18,1,6),(19,19,1,7),(20,20,1,8),(21,21,1,9),(22,22,1,10),(23,23,1,11),(24,24,1,12),(25,25,1,13),(26,26,1,14),(27,27,1,15),(28,28,1,16),(29,29,1,17),(30,30,1,18),(31,31,1,19),(32,32,1,20),(33,33,1,21),(34,34,1,22),(35,35,1,23),(36,36,1,24),(37,37,1,25),(38,38,1,26),(39,39,1,27),(40,40,1,28),(41,41,1,29),(42,42,1,30),(43,43,1,31),(44,44,1,32),(45,45,1,33),(46,46,1,34),(47,47,1,35),(48,48,1,36),(49,49,1,37),(50,50,1,38),(51,51,1,39),(52,52,1,40),(53,53,1,41),(54,54,1,42),(55,55,1,43),(56,56,1,44),(57,57,1,45),(58,58,1,46),(59,59,1,47),(60,60,1,48),(61,61,1,49),(62,62,1,50),(63,63,1,51),(64,64,1,52),(65,65,1,53),(66,66,1,54),(67,67,1,55),(68,68,1,56),(69,69,1,57),(73,73,1,61),(74,74,1,62),(84,84,1,66),(85,85,1,67),(86,86,1,68),(90,90,1,72),(91,91,1,73),(93,93,1,75),(95,95,1,77),(97,97,1,79),(106,106,1,80),(107,107,1,81),(108,108,1,82),(141,141,1,96),(142,142,1,97),(143,143,1,98),(144,144,1,99),(145,145,1,100),(146,146,1,101),(147,147,1,102),(148,148,1,103),(149,149,1,104),(150,150,1,105),(154,154,1,106),(155,155,1,107),(156,156,1,108),(157,157,1,109),(158,158,1,110),(199,199,1,111),(200,200,1,112),(201,201,1,113),(202,202,1,114),(203,203,1,115),(204,204,1,116),(205,205,1,117),(206,206,1,118),(207,207,1,119),(208,208,1,120),(209,209,1,121),(210,210,1,122),(211,211,1,123),(212,212,1,124),(213,213,1,125),(214,214,1,126),(215,215,1,127),(216,216,1,128),(217,217,1,129),(218,218,1,130),(219,219,1,131),(220,220,1,132),(221,221,1,133),(222,222,1,134),(223,223,1,135),(224,224,1,136),(225,225,1,137),(226,226,1,138),(227,227,1,139),(228,228,1,140),(229,229,1,141),(230,230,1,142),(231,231,1,143),(232,232,1,144),(233,233,1,145),(234,234,1,146),(235,235,1,147),(236,236,1,148),(237,237,1,149),(238,238,1,150),(239,239,1,151),(240,240,1,152),(241,241,1,153),(242,242,1,154),(243,243,1,155),(244,244,1,156),(245,245,1,157),(246,246,1,158),(247,247,1,159),(248,248,1,160);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2024-07-01 14:54:53.683000','2024-07-01 14:54:53.683000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2024-07-01 14:54:53.696000','2024-07-01 14:54:53.696000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2024-07-01 14:54:53.702000','2024-07-01 14:54:53.702000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Hansel','Hernández',NULL,'hansel.hernandezc@gmail.com','$2a$10$kXvJHUt0jR3iRA3d.abrfOB.7nJUNfQjVDsglKLrAqNAVzN/ZedpC',NULL,NULL,1,0,NULL,'2024-07-01 14:56:52.788000','2024-07-01 14:56:52.788000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` double unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `description` longtext,
  `tags` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_created_by_id_fk` (`created_by_id`),
  KEY `blogs_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `blogs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `blogs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'LOREM IPSUM DOLOR SIT AMET','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','2024-07-02 00:50:59.122000','2024-07-03 14:31:32.679000','2024-07-02 00:51:02.578000',1,1,'Clara Bertoletti ','Bank','2024-07-02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.','[\"UX\", \"Design\", \"Themes\"]'),(2,'CONSECTETUR ADIPISCING ELIT','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','2024-07-02 00:56:29.836000','2024-07-03 14:31:16.107000','2024-07-02 00:56:35.057000',1,1,'Jhon Anderson','Bank','2024-07-02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.','[\"News\", \"UX\", \"Themes\"]'),(3,'Eiusmod tempor incididunt',NULL,'2024-07-03 14:44:12.794000','2024-07-03 15:05:51.793000','2024-07-03 14:44:32.749000',1,1,NULL,NULL,'2024-07-01','Sed ut perspiciatis unde omnis iste natus error sit voluptatem',NULL),(4,'Sed ut perspiciatis',NULL,'2024-07-03 14:45:22.079000','2024-07-03 15:06:02.740000','2024-07-03 14:45:44.222000',1,1,NULL,NULL,'2024-07-01','At vero eos et accusamus et iusto odio dignissimos ducimus',NULL),(5,'Unde omnis iste natus',NULL,'2024-07-03 14:46:28.922000','2024-07-03 15:07:03.458000','2024-07-03 14:46:36.435000',1,1,NULL,NULL,'2024-07-02','Qui blanditiis praesentium voluptatum deleniti atque corrupti',NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_user_links`
--

DROP TABLE IF EXISTS `blogs_user_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_user_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_user_links_unique` (`blog_id`,`user_id`),
  KEY `blogs_user_links_fk` (`blog_id`),
  KEY `blogs_user_links_inv_fk` (`user_id`),
  CONSTRAINT `blogs_user_links_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blogs_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_user_links`
--

LOCK TABLES `blogs_user_links` WRITE;
/*!40000 ALTER TABLE `blogs_user_links` DISABLE KEYS */;
INSERT INTO `blogs_user_links` VALUES (2,1,1),(1,2,1),(3,3,1),(4,4,3),(5,5,2);
/*!40000 ALTER TABLE `blogs_user_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_card_equipos`
--

DROP TABLE IF EXISTS `components_about_side_card_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_card_equipos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_card_equipos`
--

LOCK TABLES `components_about_side_card_equipos` WRITE;
/*!40000 ALTER TABLE `components_about_side_card_equipos` DISABLE KEYS */;
INSERT INTO `components_about_side_card_equipos` VALUES (1,'Chary Smith','SEO at Comoti','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(2,'Clara Bertoletti','Junior Designer','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(3,'Chary Smith','SEO at Comoti','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(4,'Jhon Anderson','Senior Frontend Developer','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(5,'Fernando','Web Developer','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(6,'Chary Smith','Junior Designer','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(7,'Clara Bertoletti','SEO at Comoti','I am an ambitious workaholic, but apart from that, pretty simple person.',NULL,NULL,NULL),(8,'Josue Castillo','CEO','I am an ambitious workaholic, but apart from that, pretty simple person',NULL,NULL,NULL);
/*!40000 ALTER TABLE `components_about_side_card_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_equipos`
--

DROP TABLE IF EXISTS `components_about_side_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_equipos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_equipos`
--

LOCK TABLES `components_about_side_equipos` WRITE;
/*!40000 ALTER TABLE `components_about_side_equipos` DISABLE KEYS */;
INSERT INTO `components_about_side_equipos` VALUES (1),(2);
/*!40000 ALTER TABLE `components_about_side_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_equipos_components`
--

DROP TABLE IF EXISTS `components_about_side_equipos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_equipos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_about_side_equipos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_about_side_equipos_field_index` (`field`),
  KEY `components_about_side_equipos_component_type_index` (`component_type`),
  KEY `components_about_side_equipos_entity_fk` (`entity_id`),
  CONSTRAINT `components_about_side_equipos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_about_side_equipos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_equipos_components`
--

LOCK TABLES `components_about_side_equipos_components` WRITE;
/*!40000 ALTER TABLE `components_about_side_equipos_components` DISABLE KEYS */;
INSERT INTO `components_about_side_equipos_components` VALUES (1,1,1,'about-side.card-equipo','card',1),(3,1,2,'about-side.card-equipo','card',2),(4,1,3,'about-side.card-equipo','card',3),(5,1,4,'about-side.card-equipo','card',4),(7,2,5,'about-side.card-equipo','card',1),(8,2,6,'about-side.card-equipo','card',2),(9,2,7,'about-side.card-equipo','card',3),(16,2,8,'about-side.card-equipo','card',4);
/*!40000 ALTER TABLE `components_about_side_equipos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_estadisticas`
--

DROP TABLE IF EXISTS `components_about_side_estadisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_estadisticas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_estadisticas`
--

LOCK TABLES `components_about_side_estadisticas` WRITE;
/*!40000 ALTER TABLE `components_about_side_estadisticas` DISABLE KEYS */;
INSERT INTO `components_about_side_estadisticas` VALUES (2,'12','12 years in business.'),(3,'5,2K','5.200 sold copies'),(4,'99%','99% customer statisfication.'),(5,'13','13 years in business.'),(6,'5,2K','5.200 sold copies'),(7,'99%','99% customer statisfication.');
/*!40000 ALTER TABLE `components_about_side_estadisticas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_galleries`
--

DROP TABLE IF EXISTS `components_about_side_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_galleries`
--

LOCK TABLES `components_about_side_galleries` WRITE;
/*!40000 ALTER TABLE `components_about_side_galleries` DISABLE KEYS */;
INSERT INTO `components_about_side_galleries` VALUES (1),(2);
/*!40000 ALTER TABLE `components_about_side_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_header_s`
--

DROP TABLE IF EXISTS `components_about_side_header_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_header_s` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_header_s`
--

LOCK TABLES `components_about_side_header_s` WRITE;
/*!40000 ALTER TABLE `components_about_side_header_s` DISABLE KEYS */;
INSERT INTO `components_about_side_header_s` VALUES (1,'About us','We take you by hand on each step of the process\nAs experts in both design & development, we help you go through the complete process. From your new website idea, to design, development, launch and scale!'),(2,'About us','We take you by hand on each step of the process\nAs experts in both design & development, we help you go through the complete process. From your new website idea, to design, development, launch and scale!');
/*!40000 ALTER TABLE `components_about_side_header_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_numeros`
--

DROP TABLE IF EXISTS `components_about_side_numeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_numeros` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_numeros`
--

LOCK TABLES `components_about_side_numeros` WRITE;
/*!40000 ALTER TABLE `components_about_side_numeros` DISABLE KEYS */;
INSERT INTO `components_about_side_numeros` VALUES (1),(2);
/*!40000 ALTER TABLE `components_about_side_numeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_numeros_components`
--

DROP TABLE IF EXISTS `components_about_side_numeros_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_numeros_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_about_side_numeros_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_about_side_numeros_field_index` (`field`),
  KEY `components_about_side_numeros_component_type_index` (`component_type`),
  KEY `components_about_side_numeros_entity_fk` (`entity_id`),
  CONSTRAINT `components_about_side_numeros_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_about_side_numeros` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_numeros_components`
--

LOCK TABLES `components_about_side_numeros_components` WRITE;
/*!40000 ALTER TABLE `components_about_side_numeros_components` DISABLE KEYS */;
INSERT INTO `components_about_side_numeros_components` VALUES (1,1,2,'about-side.estadistica','numeros',1),(2,1,3,'about-side.estadistica','numeros',2),(3,1,4,'about-side.estadistica','numeros',3),(4,2,5,'about-side.estadistica','numeros',1),(5,2,6,'about-side.estadistica','numeros',2),(6,2,7,'about-side.estadistica','numeros',3);
/*!40000 ALTER TABLE `components_about_side_numeros_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_about_side_stories`
--

DROP TABLE IF EXISTS `components_about_side_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_about_side_stories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_about_side_stories`
--

LOCK TABLES `components_about_side_stories` WRITE;
/*!40000 ALTER TABLE `components_about_side_stories` DISABLE KEYS */;
INSERT INTO `components_about_side_stories` VALUES (1,'We design and implement creative solutions to everyday business problems','We are a team of creative consultants who help bridge the digital gap between companies and their clients with websites that not only serve as marketing platforms but also provide solutions to online business problems and digital marketing strategies that connect you with the ideal client and help create a loyal customer.\n\nWe are a team of creative consultants who help bridge the digital gap between companies and their clients with websites that not only serve as marketing platforms but also provide solutions to online business problems and digital marketing strategies that connect you with the ideal client and help create a loyal customer.'),(2,'We design and implement creative solutions to everyday business problems','We are a team of creative consultants who help bridge the digital gap between companies and their clients with websites that not only serve as marketing platforms but also provide solutions to online business problems and digital marketing strategies that connect you with the ideal client and help create a loyal customer.\n\nWe are a team of creative consultants who help bridge the digital gap between companies and their clients with websites that not only serve as marketing platforms but also provide solutions to online business problems and digital marketing strategies that connect you with the ideal client and help create a loyal customer.');
/*!40000 ALTER TABLE `components_about_side_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_comments_comments`
--

DROP TABLE IF EXISTS `components_comments_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_comments_comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `state` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_comments_comments`
--

LOCK TABLES `components_comments_comments` WRITE;
/*!40000 ALTER TABLE `components_comments_comments` DISABLE KEYS */;
INSERT INTO `components_comments_comments` VALUES (1,NULL,'Estándares americanos y cultura europea: cómo evitar una experiencia vacacional decepcionante mientras viajas por Europa\n\n','Amante de MUI','Clara Bertoletti'),(2,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\n','Amante de MUI','Clara Bertoletti'),(3,NULL,'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n','Desarrollador Frontend Senior','Jhon Anderson'),(4,NULL,'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n\n\n\n\n\n','SEO en Comoti','Chary Smith');
/*!40000 ALTER TABLE `components_comments_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_card_relatos`
--

DROP TABLE IF EXISTS `components_customers_card_relatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_card_relatos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_card_relatos`
--

LOCK TABLES `components_customers_card_relatos` WRITE;
/*!40000 ALTER TABLE `components_customers_card_relatos` DISABLE KEYS */;
INSERT INTO `components_customers_card_relatos` VALUES (1,'Unforgettable trips start with Airbnb. Find adventures nearby or in faraway places and access unique homes, experiences, and places around the world.'),(2,'Free delivery on millions of items with Prime. Low prices across earth\\\'s biggest selection of books, music, DVDs, electronics, computers, software\''),(3,'Find your fit with Fitbit\\\'s family of fitness products that help you stay motivated and improve your health by tracking your activity, exercise, food, weight and sleep.'),(4,'Search the world\\\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\\\'re looking for.'),(5,'HubSpot offers a full platform of marketing, sales, customer service, and CRM software — plus the methodology, resources, and support — to help businesses.'),(6,'Integrate custom live maps, location search, and turn-by-turn navigation into any mobile or web app with Mapbox APIs & SDKs. Get started for free.'),(7,'Watch Netflix movies & TV shows online or stream right to your smart TV, game console, PC, Mac, mobile, tablet and more.'),(8,'PayPal is the faster, safer way to send money, make an online payment, receive money or set up a merchant account'),(9,'\'Slack is a new way to communicate with your team. It\\\'s faster, better organized, and more secure than email.');
/*!40000 ALTER TABLE `components_customers_card_relatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_contactos`
--

DROP TABLE IF EXISTS `components_customers_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_contactos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_contactos`
--

LOCK TABLES `components_customers_contactos` WRITE;
/*!40000 ALTER TABLE `components_customers_contactos` DISABLE KEYS */;
INSERT INTO `components_customers_contactos` VALUES (1,'Ready to growth your business?','Your website is fully responsive so visitors can view your content from their choice of device.');
/*!40000 ALTER TABLE `components_customers_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_contactos_components`
--

DROP TABLE IF EXISTS `components_customers_contactos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_contactos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_customers_contactos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_customers_contactos_field_index` (`field`),
  KEY `components_customers_contactos_component_type_index` (`component_type`),
  KEY `components_customers_contactos_entity_fk` (`entity_id`),
  CONSTRAINT `components_customers_contactos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_customers_contactos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_contactos_components`
--

LOCK TABLES `components_customers_contactos_components` WRITE;
/*!40000 ALTER TABLE `components_customers_contactos_components` DISABLE KEYS */;
INSERT INTO `components_customers_contactos_components` VALUES (1,1,13,'enterprise.button','CTO',NULL);
/*!40000 ALTER TABLE `components_customers_contactos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_relatos`
--

DROP TABLE IF EXISTS `components_customers_relatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_relatos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_relatos`
--

LOCK TABLES `components_customers_relatos` WRITE;
/*!40000 ALTER TABLE `components_customers_relatos` DISABLE KEYS */;
INSERT INTO `components_customers_relatos` VALUES (1,'See how we are helping teams and businesses');
/*!40000 ALTER TABLE `components_customers_relatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_relatos_components`
--

DROP TABLE IF EXISTS `components_customers_relatos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_relatos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_customers_relatos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_customers_relatos_field_index` (`field`),
  KEY `components_customers_relatos_component_type_index` (`component_type`),
  KEY `components_customers_relatos_entity_fk` (`entity_id`),
  CONSTRAINT `components_customers_relatos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_customers_relatos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_relatos_components`
--

LOCK TABLES `components_customers_relatos_components` WRITE;
/*!40000 ALTER TABLE `components_customers_relatos_components` DISABLE KEYS */;
INSERT INTO `components_customers_relatos_components` VALUES (1,1,1,'customers.card-relatos','empresas',1),(2,1,2,'customers.card-relatos','empresas',2),(3,1,3,'customers.card-relatos','empresas',3),(4,1,4,'customers.card-relatos','empresas',4),(5,1,5,'customers.card-relatos','empresas',5),(6,1,6,'customers.card-relatos','empresas',6),(7,1,7,'customers.card-relatos','empresas',7),(8,1,8,'customers.card-relatos','empresas',8),(9,1,9,'customers.card-relatos','empresas',9);
/*!40000 ALTER TABLE `components_customers_relatos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_customers_titulars`
--

DROP TABLE IF EXISTS `components_customers_titulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_customers_titulars` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_customers_titulars`
--

LOCK TABLES `components_customers_titulars` WRITE;
/*!40000 ALTER TABLE `components_customers_titulars` DISABLE KEYS */;
INSERT INTO `components_customers_titulars` VALUES (1,'You\'re in good company.','Join millions of businesses today.');
/*!40000 ALTER TABLE `components_customers_titulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_buttons`
--

DROP TABLE IF EXISTS `components_enterprise_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_buttons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_buttons`
--

LOCK TABLES `components_enterprise_buttons` WRITE;
/*!40000 ALTER TABLE `components_enterprise_buttons` DISABLE KEYS */;
INSERT INTO `components_enterprise_buttons` VALUES (5,'hello.com',NULL),(6,'Bye.com',NULL),(9,'https://mui.com/store/items/the-front-landing-page/','Purchase now'),(10,'https://thefront.maccarianagency.com/docs/introduction','View documentation'),(11,NULL,'Download'),(12,NULL,'See pricing'),(13,NULL,'Request a demo'),(14,'https://mui.com/store/items/the-front-landing-page/','Purchase Now'),(15,'https://thefront.maccarianagency.com/docs/introduction','View Documentation');
/*!40000 ALTER TABLE `components_enterprise_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_cards`
--

DROP TABLE IF EXISTS `components_enterprise_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_cards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_cards`
--

LOCK TABLES `components_enterprise_cards` WRITE;
/*!40000 ALTER TABLE `components_enterprise_cards` DISABLE KEYS */;
INSERT INTO `components_enterprise_cards` VALUES (1,NULL,NULL),(2,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(9,'Your brand platform','Monetize your website and manage all guest interactions with your own brand, logo and domains.'),(10,'\'Your brand platform','Monetize your website and manage all guest interactions with your own brand, logo and domains.'),(11,'Client portal access','Simple customer dashboards'),(12,'Mobile compatible platform\'','Introduce your brand-new mobile friendly website to your customers. Seamlessly integrates with WiFi hardware and marketing automation software.');
/*!40000 ALTER TABLE `components_enterprise_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_compatibilities`
--

DROP TABLE IF EXISTS `components_enterprise_compatibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_compatibilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_compatibilities`
--

LOCK TABLES `components_enterprise_compatibilities` WRITE;
/*!40000 ALTER TABLE `components_enterprise_compatibilities` DISABLE KEYS */;
INSERT INTO `components_enterprise_compatibilities` VALUES (3,'Compatibility Compatible with all major browsers');
/*!40000 ALTER TABLE `components_enterprise_compatibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_compatibilities_components`
--

DROP TABLE IF EXISTS `components_enterprise_compatibilities_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_compatibilities_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_enterprise_compatibilities_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_enterprise_compatibilities_field_index` (`field`),
  KEY `components_enterprise_compatibilities_component_type_index` (`component_type`),
  KEY `components_enterprise_compatibilities_entity_fk` (`entity_id`),
  CONSTRAINT `components_enterprise_compatibilities_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_enterprise_compatibilities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_compatibilities_components`
--

LOCK TABLES `components_enterprise_compatibilities_components` WRITE;
/*!40000 ALTER TABLE `components_enterprise_compatibilities_components` DISABLE KEYS */;
INSERT INTO `components_enterprise_compatibilities_components` VALUES (17,3,5,'enterprise.compatibility-card','card',1),(18,3,6,'enterprise.compatibility-card','card',6),(19,3,7,'enterprise.compatibility-card','card',7),(20,3,8,'enterprise.compatibility-card','card',8),(21,3,9,'enterprise.compatibility-card','navegadores',1),(22,3,10,'enterprise.compatibility-card','navegadores',2),(23,3,11,'enterprise.compatibility-card','navegadores',3),(24,3,12,'enterprise.compatibility-card','navegadores',4);
/*!40000 ALTER TABLE `components_enterprise_compatibilities_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_compatibility_cards`
--

DROP TABLE IF EXISTS `components_enterprise_compatibility_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_compatibility_cards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_compatibility_cards`
--

LOCK TABLES `components_enterprise_compatibility_cards` WRITE;
/*!40000 ALTER TABLE `components_enterprise_compatibility_cards` DISABLE KEYS */;
INSERT INTO `components_enterprise_compatibility_cards` VALUES (5,'Google Chrome','Google Chrome is a cross-platform web browser developed by Google'),(6,'Safari','Safari is a graphical web browser developed by Apple, based on the WebKit engine.'),(7,'Microsoft Edge','Microsoft Edge is a web browser developed by Microsoft. It was first released for Windows 10'),(8,'\'Mozilla Firefox','Mozilla Firefox, or simply Firefox, is a free and web browser developed by the Mozilla.'),(9,'Mozilla Firefox','Mozilla Firefox, or simply Firefox, is a free and web browser developed by the Mozilla'),(10,'Microsoft Edge','Microsoft Edge is a web browser developed by Microsoft. It was first released for Windows 10'),(11,'Safari','Safari is a graphical web browser developed by Apple, based on the WebKit engine.'),(12,'Google Chrome','Google Chrome is a cross-platform web browser developed by Google.');
/*!40000 ALTER TABLE `components_enterprise_compatibility_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_header_s`
--

DROP TABLE IF EXISTS `components_enterprise_header_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_header_s` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_header_s`
--

LOCK TABLES `components_enterprise_header_s` WRITE;
/*!40000 ALTER TABLE `components_enterprise_header_s` DISABLE KEYS */;
INSERT INTO `components_enterprise_header_s` VALUES (5,'Turn your ideas into ','Build a beautiful, modern website with flexible, fully customizable, atomic MUI components.\nAn experience you\'d expect from a design system.');
/*!40000 ALTER TABLE `components_enterprise_header_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_header_s_components`
--

DROP TABLE IF EXISTS `components_enterprise_header_s_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_header_s_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_enterprise_header_s_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_enterprise_header_s_field_index` (`field`),
  KEY `components_enterprise_header_s_component_type_index` (`component_type`),
  KEY `components_enterprise_header_s_entity_fk` (`entity_id`),
  CONSTRAINT `components_enterprise_header_s_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_enterprise_header_s` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_header_s_components`
--

LOCK TABLES `components_enterprise_header_s_components` WRITE;
/*!40000 ALTER TABLE `components_enterprise_header_s_components` DISABLE KEYS */;
INSERT INTO `components_enterprise_header_s_components` VALUES (21,5,14,'enterprise.button','primerBoton',NULL),(22,5,15,'enterprise.button','segundoBoton',NULL);
/*!40000 ALTER TABLE `components_enterprise_header_s_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_partners`
--

DROP TABLE IF EXISTS `components_enterprise_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_partners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_partners`
--

LOCK TABLES `components_enterprise_partners` WRITE;
/*!40000 ALTER TABLE `components_enterprise_partners` DISABLE KEYS */;
INSERT INTO `components_enterprise_partners` VALUES (4,'Trusted by you favorite companies','Build a beautiful, modern website with flexible, fully customizable, atomic MUI components.\nAn experience you\'d expect from a design system.');
/*!40000 ALTER TABLE `components_enterprise_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_resenas`
--

DROP TABLE IF EXISTS `components_enterprise_resenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_resenas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_resenas`
--

LOCK TABLES `components_enterprise_resenas` WRITE;
/*!40000 ALTER TABLE `components_enterprise_resenas` DISABLE KEYS */;
INSERT INTO `components_enterprise_resenas` VALUES (2),(3);
/*!40000 ALTER TABLE `components_enterprise_resenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_resenas_components`
--

DROP TABLE IF EXISTS `components_enterprise_resenas_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_resenas_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_enterprise_resenas_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_enterprise_resenas_field_index` (`field`),
  KEY `components_enterprise_resenas_component_type_index` (`component_type`),
  KEY `components_enterprise_resenas_entity_fk` (`entity_id`),
  CONSTRAINT `components_enterprise_resenas_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_enterprise_resenas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_resenas_components`
--

LOCK TABLES `components_enterprise_resenas_components` WRITE;
/*!40000 ALTER TABLE `components_enterprise_resenas_components` DISABLE KEYS */;
INSERT INTO `components_enterprise_resenas_components` VALUES (4,2,7,'enterprise.reviews','card',1),(5,2,8,'enterprise.reviews','card',5),(6,2,9,'enterprise.reviews','card',6),(7,2,10,'enterprise.reviews','card',7),(8,2,11,'enterprise.reviews','card',8),(9,2,12,'enterprise.reviews','card',9),(22,3,13,'enterprise.reviews','resena',1),(23,3,14,'enterprise.reviews','resena',2),(24,3,15,'enterprise.reviews','resena',3),(34,2,16,'enterprise.reviews','resena',1),(35,2,17,'enterprise.reviews','resena',2),(36,2,18,'enterprise.reviews','resena',3);
/*!40000 ALTER TABLE `components_enterprise_resenas_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_reviews`
--

DROP TABLE IF EXISTS `components_enterprise_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `comentario` longtext,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_reviews`
--

LOCK TABLES `components_enterprise_reviews` WRITE;
/*!40000 ALTER TABLE `components_enterprise_reviews` DISABLE KEYS */;
INSERT INTO `components_enterprise_reviews` VALUES (7,'MUI lover','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Clara Bertolett'),(8,'Senior Frontend Developer','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Jhon Anderson'),(9,'SEO at Comoti','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Chary Smith'),(10,'MUI lover','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Clara Bertoletti'),(11,'Senior Frontend Developer','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Jhon Anderson'),(12,'SEO at Comoti','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Chary Smith'),(13,'Senior Frontend Developer','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Jhon Anderson'),(14,'MUI lover','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Clara Bertoletti'),(15,'SEO at Comoti','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Chary Smith'),(16,'MUI lover','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Clara Bertoletti'),(17,'Jhon Anderso','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Senior Frontend Developer'),(18,'Developer','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Chary Smith');
/*!40000 ALTER TABLE `components_enterprise_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_solutions`
--

DROP TABLE IF EXISTS `components_enterprise_solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_solutions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_solutions`
--

LOCK TABLES `components_enterprise_solutions` WRITE;
/*!40000 ALTER TABLE `components_enterprise_solutions` DISABLE KEYS */;
INSERT INTO `components_enterprise_solutions` VALUES (3,' Your new website marketing solution is here','      theFront Kit offers a completely customizable website landing pages\n          and supported pages management platform.\n          <br />\n          Here’s what makes us different.');
/*!40000 ALTER TABLE `components_enterprise_solutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_solutions_components`
--

DROP TABLE IF EXISTS `components_enterprise_solutions_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_solutions_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_enterprise_solutions_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_enterprise_solutions_field_index` (`field`),
  KEY `components_enterprise_solutions_component_type_index` (`component_type`),
  KEY `components_enterprise_solutions_entity_fk` (`entity_id`),
  CONSTRAINT `components_enterprise_solutions_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_enterprise_solutions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_solutions_components`
--

LOCK TABLES `components_enterprise_solutions_components` WRITE;
/*!40000 ALTER TABLE `components_enterprise_solutions_components` DISABLE KEYS */;
INSERT INTO `components_enterprise_solutions_components` VALUES (29,3,9,'enterprise.cards','card',1),(30,3,10,'enterprise.cards','card',2),(31,3,11,'enterprise.cards','card',3),(32,3,12,'enterprise.cards','card',4);
/*!40000 ALTER TABLE `components_enterprise_solutions_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_enterprise_video_sections`
--

DROP TABLE IF EXISTS `components_enterprise_video_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_enterprise_video_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_enterprise_video_sections`
--

LOCK TABLES `components_enterprise_video_sections` WRITE;
/*!40000 ALTER TABLE `components_enterprise_video_sections` DISABLE KEYS */;
INSERT INTO `components_enterprise_video_sections` VALUES (6);
/*!40000 ALTER TABLE `components_enterprise_video_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_generics_accordions`
--

DROP TABLE IF EXISTS `components_generics_accordions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_generics_accordions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_generics_accordions`
--

LOCK TABLES `components_generics_accordions` WRITE;
/*!40000 ALTER TABLE `components_generics_accordions` DISABLE KEYS */;
INSERT INTO `components_generics_accordions` VALUES (1,'Problemas de Autenticación','Problemas relacionados con iniciar sesión, cerrar sesión o el uso de múltiples dispositivos.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'),(2,'¿Por qué mi cuenta no permanece conectada?','Problemas relacionados con la autenticación','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'),(3,'Problemas de Autenticación','Problemas relacionados con iniciar sesión, cerrar sesión o el uso de múltiples dispositivos.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'),(4,'¿Por qué mi cuenta no permanece conectada?','Problemas relacionados con la autenticación','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt rerum minima a possimus, amet perferendis, temporibus obcaecati pariatur. Reprehenderit magnam necessitatibus vel culpa provident quas nesciunt sunt aut cupiditate fugiat!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'),(5,'¿Puedo comprar un certificado de regalo?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n'),(6,'¿Cuál es su política de devoluciones?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n'),(7,'¿Venden tarjetas de regalo?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n'),(8,'¿Puedo cambiar de plan más adelante?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n'),(9,'¿Es este un servicio de suscripción?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n'),(10,'¿Mi cuenta tiene un máximo de ingresos?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n'),(11,'¿Cuáles son los ajustes predeterminados?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n'),(12,'Consideraciones de uso de la cuenta',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n'),(13,'¿Cómo mantengo segura mi cuenta?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n'),(14,'¿Tienen verificación en dos pasos?',NULL,'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\n\n\n\n\n\n\n\n\n\n');
/*!40000 ALTER TABLE `components_generics_accordions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_generics_accordions_components`
--

DROP TABLE IF EXISTS `components_generics_accordions_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_generics_accordions_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_generics_accordions_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_generics_accordions_field_index` (`field`),
  KEY `components_generics_accordions_component_type_index` (`component_type`),
  KEY `components_generics_accordions_entity_fk` (`entity_id`),
  CONSTRAINT `components_generics_accordions_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_generics_accordions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_generics_accordions_components`
--

LOCK TABLES `components_generics_accordions_components` WRITE;
/*!40000 ALTER TABLE `components_generics_accordions_components` DISABLE KEYS */;
INSERT INTO `components_generics_accordions_components` VALUES (1,1,1,'generics.button','button',1),(2,2,2,'generics.button','button',1),(3,3,3,'generics.button','button',1),(4,4,4,'generics.button','button',1);
/*!40000 ALTER TABLE `components_generics_accordions_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_generics_buttons`
--

DROP TABLE IF EXISTS `components_generics_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_generics_buttons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_generics_buttons`
--

LOCK TABLES `components_generics_buttons` WRITE;
/*!40000 ALTER TABLE `components_generics_buttons` DISABLE KEYS */;
INSERT INTO `components_generics_buttons` VALUES (1,'Contacte con el equipo de soporte'),(2,'Contactar al equipo de soporte'),(3,'Contactar a soporte'),(4,'Contactar con soporte'),(5,'8 respuestas'),(6,'9 respuestas'),(7,'7 respuestas'),(8,'Contáctanos'),(9,'Saber más'),(10,'Descargar la guía.'),(11,'Preguntar');
/*!40000 ALTER TABLE `components_generics_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_items_num_items`
--

DROP TABLE IF EXISTS `components_items_num_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_items_num_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_items_num_items`
--

LOCK TABLES `components_items_num_items` WRITE;
/*!40000 ALTER TABLE `components_items_num_items` DISABLE KEYS */;
INSERT INTO `components_items_num_items` VALUES (1,'Hecho para desarrolladores','theFront está diseñado para facilitarte la vida. Variables, herramientas de construcción, documentación y componentes reutilizables.\n\n',NULL),(2,'Diseñado para ser moderno','Diseñado teniendo en cuenta las últimas tendencias de diseño. theFront se siente moderno, minimalista y hermoso.\n\n',NULL),(3,'Documentación para todo','Hemos escrito documentación extensa para componentes y herramientas, para que nunca tengas que hacer ingeniería inversa de nada.\n\n\n\n\n\n\n',NULL),(4,'Completa tu solicitud','Llena nuestra solicitud estandarizada en nuestra plataforma. La mayoría de los solicitantes terminan en menos de una hora.\n\n',NULL),(5,'Selecciona empresas','Te emparejaremos inmediatamente con cualquier vacante relevante y podrás elegir las que te interesen.\n\n',NULL),(6,'Elige tu oferta','Después de 3 días, recibirás todas tus ofertas y tendrás otros 7 días para seleccionar tu nueva empresa.\n\n\n\n\n\n\n',NULL),(7,'La motivación es el primer paso hacia el éxito','Una vez configurado, retira pagos instantáneamente o deposítalos en tu cuenta bancaria en un plazo de 2-3 días hábiles.\n',NULL),(8,'Pasos hacia el éxito para tu vida personal o empresarial','Nos aseguramos de incluir todas las comodidades y amenidades que una startup en crecimiento podría necesitar.\n',NULL),(9,'Aumentando la prosperidad con pensamiento positivo','Una vez configurado, retira pagos instantáneamente o deposítalos en tu cuenta bancaria en un plazo de 2-3 días hábiles.\n',NULL),(10,NULL,'Nuestro registro es extremadamente sencillo. Solo requerimos la información básica de tu empresa.',NULL),(11,NULL,'Admitimos la carga masiva a través de SQL, integraciones con la mayoría de los productos de almacenamiento de datos.',NULL),(12,NULL,'Simplemente selecciona a dónde te gustaría transferir tus datos.\n\n\n\n\n\n\n',NULL),(13,'Google Drive','Una plantilla muy simple y moderna con un esquema de colores muy armonioso. Además, los plugins adicionales, como las estadísticas, son excelentes y encajan perfectamente en el conjunto.\n\n',NULL),(14,'Google Ad Manager','Una plantilla muy simple y moderna con un esquema de colores muy armonioso. Además, los plugins adicionales, como las estadísticas, son excelentes y encajan perfectamente en el conjunto.\n\n',NULL),(15,'Atlassian','Mantén a todo tu equipo sincronizado con el desarrollo y gestiona fácilmente tareas, objetivos y plazos. Administra y edita fácilmente cualquier campaña de Adwords en línea para mejorar el ROI con una revisión constante.\n\n\n\n\n\n\n',NULL),(16,NULL,NULL,NULL),(17,NULL,NULL,NULL),(18,NULL,NULL,NULL),(19,'¿Quiénes somos?','Nuestro registro es simple. Solo requerimos la información básica de tu empresa y el tipo de almacenamiento de datos que deseas. Nuestro registro es extremadamente sencillo. Solo requerimos la información básica de tu empresa y el tipo de almacenamiento de datos que deseas.',NULL),(20,'Nuestro proceso','Apoyamos la carga masiva a través de SQL, integraciones con la mayoría de los productos de almacenamiento de datos, o puedes usar nuestra API. Simplemente selecciona a dónde te gustaría transferir tus datos y comenzaremos el proceso de migración al instante.\n\n\n\n\n\n\n',NULL),(21,'Clara Bertoletti',NULL,'Amante de MUI'),(22,'Jhon Anderson',NULL,'Desarrollador Frontend Senior'),(23,'Chary Smith',NULL,'SEO en Comoti'),(24,'Teléfono',NULL,'+39 659-657-0133'),(25,'Correo electrónico',NULL,'hi@maccarianagency.com'),(26,'Dirección',NULL,'Via Venini 33, 20147'),(27,'Cuenta',NULL,'Intentemos solucionar tus problemas de cuenta.'),(28,'Organizaciones',NULL,'Intentemos solucionar tus problemas organizativos.'),(29,'Personalización',NULL,'Intentemos solucionar tus problemas de personalización.'),(30,'Cuenta',NULL,'Intentemos solucionar tus problemas de cuenta.'),(31,'Organizaciones',NULL,'Intentemos solucionar tus problemas organizativos.'),(32,'Personalización',NULL,'Intentemos solucionar tus problemas de personalización.');
/*!40000 ALTER TABLE `components_items_num_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_items_num_items_components`
--

DROP TABLE IF EXISTS `components_items_num_items_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_items_num_items_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_items_num_items_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_items_num_items_field_index` (`field`),
  KEY `components_items_num_items_component_type_index` (`component_type`),
  KEY `components_items_num_items_entity_fk` (`entity_id`),
  CONSTRAINT `components_items_num_items_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_items_num_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_items_num_items_components`
--

LOCK TABLES `components_items_num_items_components` WRITE;
/*!40000 ALTER TABLE `components_items_num_items_components` DISABLE KEYS */;
INSERT INTO `components_items_num_items_components` VALUES (1,30,5,'generics.button','button',1),(2,31,6,'generics.button','button',1),(3,32,7,'generics.button','button',1);
/*!40000 ALTER TABLE `components_items_num_items_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_pops_contac_us_pops`
--

DROP TABLE IF EXISTS `components_pops_contac_us_pops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_pops_contac_us_pops` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `paragraph` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_pops_contac_us_pops`
--

LOCK TABLES `components_pops_contac_us_pops` WRITE;
/*!40000 ALTER TABLE `components_pops_contac_us_pops` DISABLE KEYS */;
INSERT INTO `components_pops_contac_us_pops` VALUES (1,'¿Cómo puede contactarnos?','hi@maccarianagency.com','Si tiene alguna pregunta o inquietud sobre la política de privacidad, por favor contáctenos.','Via Gola 4 Milán, Milano 20143 Italia');
/*!40000 ALTER TABLE `components_pops_contac_us_pops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_pops_pop_alerts`
--

DROP TABLE IF EXISTS `components_pops_pop_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_pops_pop_alerts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_pops_pop_alerts`
--

LOCK TABLES `components_pops_pop_alerts` WRITE;
/*!40000 ALTER TABLE `components_pops_pop_alerts` DISABLE KEYS */;
INSERT INTO `components_pops_pop_alerts` VALUES (1,'¿Te gusta lo que estás leyendo?','Recibe consejos y recursos gratuitos de programación en línea directamente en tu bandeja de entrada.\n'),(2,NULL,NULL);
/*!40000 ALTER TABLE `components_pops_pop_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_sections`
--

DROP TABLE IF EXISTS `components_sections_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext,
  `section_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_sections`
--

LOCK TABLES `components_sections_sections` WRITE;
/*!40000 ALTER TABLE `components_sections_sections` DISABLE KEYS */;
INSERT INTO `components_sections_sections` VALUES (1,'SOBRE NOSOTROS','Fuimos fundados por un destacado académico e investigador en el campo de la Ingeniería de Sistemas Industriales.',NULL,'hero'),(2,'Nuestra historia',NULL,'Nuestro enfoque siempre está en encontrar a las mejores personas para trabajar con nosotros. Nuestro estándar es alto, pero parece que estás listo para asumir el desafío.\nDiseñamos e implementamos soluciones creativas a los problemas cotidianos de las empresas.\n\nSomos un equipo de consultores creativos que ayudan a cerrar la brecha digital entre las empresas y sus clientes con sitios web que no solo sirven como plataformas de marketing, sino que también proporcionan soluciones a los problemas de negocios en línea y estrategias de marketing digital que te conectan con el cliente ideal y ayudan a crear clientes leales.','story'),(3,'Equipo pequeño. Grandes corazones.','NUESTRO EQUIPO','Nuestro enfoque siempre está en encontrar a las mejores personas para trabajar con nosotros. Nuestro estándar es alto, pero parece que estás listo para asumir el desafío.','team'),(4,'Confiado por tus empresas favoritas','Estamos registrados como distribuidores con AMFI, asesores de inversión con SEBI y socios de plataforma con BSE.',NULL,'partners'),(5,'Equipo pequeño. Grandes corazones.','GALERÍA','Nuestro enfoque siempre está en encontrar a las mejores personas para trabajar con nosotros. Nuestro estándar es alto, pero parece que estás listo para asumir el desafío.\n\n\n\n\n\n\n','gallery'),(6,'Contáctanos',NULL,'En lugar de preocuparte por cambiar de oficina cada par de años, puedes quedarte en el mismo lugar y crecer desde tu espacio de coworking compartido hasta una oficina que ocupe un piso entero.\n\n','contact'),(7,'Es el titulo','Es el subtitulo','Esta es la descripcion.','hero'),(8,NULL,NULL,NULL,'Features'),(9,NULL,NULL,NULL,'Accordion'),(10,'Categorías relacionadas en el Centro de Ayuda','Para emprendedores, startups y freelancers. Si no encontraste lo que necesitabas, ¡estas podrían ayudarte!',NULL,'helpcenter'),(11,NULL,NULL,NULL,'Accordions'),(12,'Categorías relacionadas en el Centro de Ayuda','Para emprendedores, startups y freelancers. Si no encontraste lo que necesitabas, ¡estas podrían ayudarte!',NULL,'helpcenterinfo'),(13,'¿Tienes una pregunta?','F.A.Q','Busca en nuestras preguntas frecuentes para encontrar respuestas a cualquier cosa que puedas preguntar.\n\n','hero'),(14,'Básicos',NULL,NULL,'accordion1'),(15,'Cuenta y configuración',NULL,NULL,'accordion2'),(16,'Seguridad',NULL,NULL,'accordion3'),(17,'¿No encontraste lo que buscas?',NULL,NULL,'question');
/*!40000 ALTER TABLE `components_sections_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_sections_components`
--

DROP TABLE IF EXISTS `components_sections_sections_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_sections_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_sections_sections_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_sections_sections_field_index` (`field`),
  KEY `components_sections_sections_component_type_index` (`component_type`),
  KEY `components_sections_sections_entity_fk` (`entity_id`),
  CONSTRAINT `components_sections_sections_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_sections_components`
--

LOCK TABLES `components_sections_sections_components` WRITE;
/*!40000 ALTER TABLE `components_sections_sections_components` DISABLE KEYS */;
INSERT INTO `components_sections_sections_components` VALUES (1,2,19,'items-num.items','items',1),(2,2,20,'items-num.items','items',2),(3,3,21,'items-num.items','items',1),(4,3,22,'items-num.items','items',2),(5,3,23,'items-num.items','items',3),(6,6,24,'items-num.items','items',1),(7,6,25,'items-num.items','items',2),(8,6,26,'items-num.items','items',3),(9,9,1,'generics.accordion','accordion',1),(10,10,27,'items-num.items','items',1),(11,10,28,'items-num.items','items',2),(12,10,29,'items-num.items','items',3),(13,9,2,'generics.accordion','accordion',2),(14,11,3,'generics.accordion','accordion',1),(15,11,4,'generics.accordion','accordion',2),(16,12,30,'items-num.items','items',1),(17,12,31,'items-num.items','items',2),(18,12,32,'items-num.items','items',3),(19,12,8,'generics.button','button',1),(20,12,9,'generics.button','button',2),(21,14,5,'generics.accordion','accordion',1),(22,14,6,'generics.accordion','accordion',2),(23,14,7,'generics.accordion','accordion',3),(24,14,8,'generics.accordion','accordion',4),(25,14,9,'generics.accordion','accordion',5),(26,15,10,'generics.accordion','accordion',1),(27,15,11,'generics.accordion','accordion',2),(28,15,12,'generics.accordion','accordion',3),(29,16,13,'generics.accordion','accordion',1),(30,16,14,'generics.accordion','accordion',2),(31,17,10,'generics.button','button',1),(32,17,11,'generics.button','button',2);
/*!40000 ALTER TABLE `components_sections_sections_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_acercas`
--

DROP TABLE IF EXISTS `components_web_basic_acercas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_acercas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo_resaltado` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_acercas`
--

LOCK TABLES `components_web_basic_acercas` WRITE;
/*!40000 ALTER TABLE `components_web_basic_acercas` DISABLE KEYS */;
INSERT INTO `components_web_basic_acercas` VALUES (1,'Develop anything','Build a beautiful, modern website with flexible, fully customizable, atomic MUI components.','Build a beautiful, modern website with flexible, fully customizable, atomic MUI components.');
/*!40000 ALTER TABLE `components_web_basic_acercas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_acercas_components`
--

DROP TABLE IF EXISTS `components_web_basic_acercas_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_acercas_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_acercas_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_acercas_field_index` (`field`),
  KEY `components_web_basic_acercas_component_type_index` (`component_type`),
  KEY `components_web_basic_acercas_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_acercas_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_acercas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_acercas_components`
--

LOCK TABLES `components_web_basic_acercas_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_acercas_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_acercas_components` VALUES (2,1,5,'web-basic.card-servicios','caracteristicas',1),(3,1,6,'web-basic.card-servicios','caracteristicas',2),(4,1,7,'web-basic.card-servicios','caracteristicas',3);
/*!40000 ALTER TABLE `components_web_basic_acercas_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_caracteristicas`
--

DROP TABLE IF EXISTS `components_web_basic_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_caracteristicas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_caracteristicas`
--

LOCK TABLES `components_web_basic_caracteristicas` WRITE;
/*!40000 ALTER TABLE `components_web_basic_caracteristicas` DISABLE KEYS */;
INSERT INTO `components_web_basic_caracteristicas` VALUES (1,'Stay focused on your business. Let us handle the design.','You have a business to run. Stop worring about cross-browser bugs, designing new pages, keeping your components up to date. Let us do that for you.');
/*!40000 ALTER TABLE `components_web_basic_caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_caracteristicas_components`
--

DROP TABLE IF EXISTS `components_web_basic_caracteristicas_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_caracteristicas_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_caracteristicas_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_caracteristicas_field_index` (`field`),
  KEY `components_web_basic_caracteristicas_component_type_index` (`component_type`),
  KEY `components_web_basic_caracteristicas_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_caracteristicas_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_caracteristicas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_caracteristicas_components`
--

LOCK TABLES `components_web_basic_caracteristicas_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_caracteristicas_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_caracteristicas_components` VALUES (1,1,1,'web-basic.card-caracteristica','caracteristicas',1),(2,1,2,'web-basic.card-caracteristica','caracteristicas',2),(3,1,3,'web-basic.card-caracteristica','caracteristicas',3);
/*!40000 ALTER TABLE `components_web_basic_caracteristicas_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_card_caracteristicas`
--

DROP TABLE IF EXISTS `components_web_basic_card_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_card_caracteristicas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  `sufijo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_card_caracteristicas`
--

LOCK TABLES `components_web_basic_card_caracteristicas` WRITE;
/*!40000 ALTER TABLE `components_web_basic_card_caracteristicas` DISABLE KEYS */;
INSERT INTO `components_web_basic_card_caracteristicas` VALUES (1,'300','300 + component compositions, which will help you to build any page easily.','+'),(2,'45','45 + landing and supported pages to Build a professional website.','+'),(3,'99','99% of our customers rated 5-star our themes over 5 years.','%');
/*!40000 ALTER TABLE `components_web_basic_card_caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_card_planes`
--

DROP TABLE IF EXISTS `components_web_basic_card_planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_card_planes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `resaltar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_card_planes`
--

LOCK TABLES `components_web_basic_card_planes` WRITE;
/*!40000 ALTER TABLE `components_web_basic_card_planes` DISABLE KEYS */;
INSERT INTO `components_web_basic_card_planes` VALUES (1,'Starter','$22',0),(2,'Pro','$44',1),(4,'Enterprise','$77',0);
/*!40000 ALTER TABLE `components_web_basic_card_planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_card_planes_components`
--

DROP TABLE IF EXISTS `components_web_basic_card_planes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_card_planes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_card_planes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_card_planes_field_index` (`field`),
  KEY `components_web_basic_card_planes_component_type_index` (`component_type`),
  KEY `components_web_basic_card_planes_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_card_planes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_card_planes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_card_planes_components`
--

LOCK TABLES `components_web_basic_card_planes_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_card_planes_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_card_planes_components` VALUES (1,1,7,'web-basic.lista','caracteristicas',1),(2,1,8,'web-basic.lista','caracteristicas',2),(3,1,9,'web-basic.lista','caracteristicas',3),(4,2,10,'web-basic.lista','caracteristicas',1),(5,2,11,'web-basic.lista','caracteristicas',2),(6,2,12,'web-basic.lista','caracteristicas',3),(7,2,13,'web-basic.lista','caracteristicas',4),(8,4,14,'web-basic.lista','caracteristicas',1),(9,4,15,'web-basic.lista','caracteristicas',2),(10,4,16,'web-basic.lista','caracteristicas',3),(11,4,17,'web-basic.lista','caracteristicas',4),(12,4,18,'web-basic.lista','caracteristicas',5),(13,4,19,'web-basic.lista','caracteristicas',6);
/*!40000 ALTER TABLE `components_web_basic_card_planes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_card_preguntas`
--

DROP TABLE IF EXISTS `components_web_basic_card_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_card_preguntas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_card_preguntas`
--

LOCK TABLES `components_web_basic_card_preguntas` WRITE;
/*!40000 ALTER TABLE `components_web_basic_card_preguntas` DISABLE KEYS */;
INSERT INTO `components_web_basic_card_preguntas` VALUES (1,'Share Requirements','You provide details about the services you\'re looking for, ideal budget, and timeline.'),(2,'We Identify Best-Fits','We anonymize your project brief and send it to the service providers who meet your requirements.'),(3,'Get Matched','We introduce you to 1-4 best-fit service providers via email within 24 hours of the free consultation.'),(4,' Begin Discussions','You take it from there. Typically, companies will reach out to schedule introductory calls within a few days of connecting.');
/*!40000 ALTER TABLE `components_web_basic_card_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_card_servicios`
--

DROP TABLE IF EXISTS `components_web_basic_card_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_card_servicios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_card_servicios`
--

LOCK TABLES `components_web_basic_card_servicios` WRITE;
/*!40000 ALTER TABLE `components_web_basic_card_servicios` DISABLE KEYS */;
INSERT INTO `components_web_basic_card_servicios` VALUES (1,'Built for developers','theFront is built to make your life easier. Variables, build tooling, documentation, and reusable components.'),(2,'Designed to be modern','Designed with the latest design trends in mind. theFront feels modern, minimal, and beautiful.'),(3,'Documentation for everything','We\'ve written extensive documentation for components and tools, so you never have to reverse engineer anything.'),(5,'Built for developers','theFront is built to make your life easier. Variables, build tooling, documentation, and reusable components.'),(6,'Designed to be modern','Designed with the latest design trends in mind. theFront feels modern, minimal, and beautiful.'),(7,'Documentation for everything','We\'ve written extensive documentation for components and tools, so you never have to reverse engineer anything.');
/*!40000 ALTER TABLE `components_web_basic_card_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_contactos`
--

DROP TABLE IF EXISTS `components_web_basic_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_contactos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `titulo_resaltado` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_contactos`
--

LOCK TABLES `components_web_basic_contactos` WRITE;
/*!40000 ALTER TABLE `components_web_basic_contactos` DISABLE KEYS */;
INSERT INTO `components_web_basic_contactos` VALUES (1,'The most useful resource ever created for ','startups','Using theFront to build your site means never worrying about designing another page or cross browser compatibility. Our ever-growing library of components and pre-designed layouts will make your life easier.');
/*!40000 ALTER TABLE `components_web_basic_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_contactos_components`
--

DROP TABLE IF EXISTS `components_web_basic_contactos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_contactos_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_contactos_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_contactos_field_index` (`field`),
  KEY `components_web_basic_contactos_component_type_index` (`component_type`),
  KEY `components_web_basic_contactos_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_contactos_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_contactos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_contactos_components`
--

LOCK TABLES `components_web_basic_contactos_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_contactos_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_contactos_components` VALUES (1,1,1,'web-basic.lista','caracteristicas',1),(2,1,2,'web-basic.lista','caracteristicas',2),(3,1,3,'web-basic.lista','caracteristicas',3),(4,1,4,'web-basic.lista','caracteristicas',4),(5,1,5,'web-basic.lista','caracteristicas',5),(6,1,6,'web-basic.lista','caracteristicas',6);
/*!40000 ALTER TABLE `components_web_basic_contactos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_encabezados`
--

DROP TABLE IF EXISTS `components_web_basic_encabezados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_encabezados` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `titulo_resaltado` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_encabezados`
--

LOCK TABLES `components_web_basic_encabezados` WRITE;
/*!40000 ALTER TABLE `components_web_basic_encabezados` DISABLE KEYS */;
INSERT INTO `components_web_basic_encabezados` VALUES (1,'Develop anything your','business needs.','theFront will make your product look modern and professional while saving you precious time.');
/*!40000 ALTER TABLE `components_web_basic_encabezados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_encabezados_components`
--

DROP TABLE IF EXISTS `components_web_basic_encabezados_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_encabezados_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_encabezados_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_encabezados_field_index` (`field`),
  KEY `components_web_basic_encabezados_component_type_index` (`component_type`),
  KEY `components_web_basic_encabezados_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_encabezados_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_encabezados` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_encabezados_components`
--

LOCK TABLES `components_web_basic_encabezados_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_encabezados_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_encabezados_components` VALUES (1,1,9,'enterprise.button','primerBoton',1),(2,1,10,'enterprise.button','segundoBoton',2);
/*!40000 ALTER TABLE `components_web_basic_encabezados_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_faqs`
--

DROP TABLE IF EXISTS `components_web_basic_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_faqs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_faqs`
--

LOCK TABLES `components_web_basic_faqs` WRITE;
/*!40000 ALTER TABLE `components_web_basic_faqs` DISABLE KEYS */;
INSERT INTO `components_web_basic_faqs` VALUES (1);
/*!40000 ALTER TABLE `components_web_basic_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_faqs_components`
--

DROP TABLE IF EXISTS `components_web_basic_faqs_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_faqs_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_faqs_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_faqs_field_index` (`field`),
  KEY `components_web_basic_faqs_component_type_index` (`component_type`),
  KEY `components_web_basic_faqs_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_faqs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_faqs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_faqs_components`
--

LOCK TABLES `components_web_basic_faqs_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_faqs_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_faqs_components` VALUES (1,1,1,'web-basic.card-pregunta','preguntas',1),(2,1,2,'web-basic.card-pregunta','preguntas',2),(3,1,3,'web-basic.card-pregunta','preguntas',3),(4,1,4,'web-basic.card-pregunta','preguntas',4);
/*!40000 ALTER TABLE `components_web_basic_faqs_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_iconos`
--

DROP TABLE IF EXISTS `components_web_basic_iconos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_iconos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_iconos`
--

LOCK TABLES `components_web_basic_iconos` WRITE;
/*!40000 ALTER TABLE `components_web_basic_iconos` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_web_basic_iconos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_listas`
--

DROP TABLE IF EXISTS `components_web_basic_listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_listas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `caracteristica` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_listas`
--

LOCK TABLES `components_web_basic_listas` WRITE;
/*!40000 ALTER TABLE `components_web_basic_listas` DISABLE KEYS */;
INSERT INTO `components_web_basic_listas` VALUES (1,'All feature'),(2,'Lifetime updates'),(3,'Email support'),(4,'Tech support'),(5,'Integration Ready'),(6,'Tons of assets'),(7,'1 User'),(8,'1 App'),(9,'Integrations'),(10,'All in Starter plan'),(11,'Google Ads'),(12,'SSO via Google'),(13,'API access'),(14,'All features'),(15,'Email support'),(16,'Google Ads'),(17,'SSO via Google'),(18,'API access'),(19,'Facebook Ads');
/*!40000 ALTER TABLE `components_web_basic_listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_precios`
--

DROP TABLE IF EXISTS `components_web_basic_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_precios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_precios`
--

LOCK TABLES `components_web_basic_precios` WRITE;
/*!40000 ALTER TABLE `components_web_basic_precios` DISABLE KEYS */;
INSERT INTO `components_web_basic_precios` VALUES (1,'Flexible and transparent pricing','Whatever your status, our offers evolve according to your needs.');
/*!40000 ALTER TABLE `components_web_basic_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_precios_components`
--

DROP TABLE IF EXISTS `components_web_basic_precios_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_precios_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_precios_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_precios_field_index` (`field`),
  KEY `components_web_basic_precios_component_type_index` (`component_type`),
  KEY `components_web_basic_precios_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_precios_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_precios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_precios_components`
--

LOCK TABLES `components_web_basic_precios_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_precios_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_precios_components` VALUES (1,1,1,'web-basic.card-planes','planes',1),(2,1,2,'web-basic.card-planes','planes',2),(4,1,4,'web-basic.card-planes','planes',3);
/*!40000 ALTER TABLE `components_web_basic_precios_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_servicios`
--

DROP TABLE IF EXISTS `components_web_basic_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_servicios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_servicios`
--

LOCK TABLES `components_web_basic_servicios` WRITE;
/*!40000 ALTER TABLE `components_web_basic_servicios` DISABLE KEYS */;
INSERT INTO `components_web_basic_servicios` VALUES (1);
/*!40000 ALTER TABLE `components_web_basic_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_servicios_components`
--

DROP TABLE IF EXISTS `components_web_basic_servicios_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_servicios_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_servicios_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_servicios_field_index` (`field`),
  KEY `components_web_basic_servicios_component_type_index` (`component_type`),
  KEY `components_web_basic_servicios_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_servicios_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_servicios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_servicios_components`
--

LOCK TABLES `components_web_basic_servicios_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_servicios_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_servicios_components` VALUES (1,1,1,'web-basic.card-servicios','card',1),(2,1,2,'web-basic.card-servicios','card',2),(3,1,3,'web-basic.card-servicios','card',3);
/*!40000 ALTER TABLE `components_web_basic_servicios_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_socios_iconos`
--

DROP TABLE IF EXISTS `components_web_basic_socios_iconos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_socios_iconos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_socios_iconos`
--

LOCK TABLES `components_web_basic_socios_iconos` WRITE;
/*!40000 ALTER TABLE `components_web_basic_socios_iconos` DISABLE KEYS */;
INSERT INTO `components_web_basic_socios_iconos` VALUES (1),(2);
/*!40000 ALTER TABLE `components_web_basic_socios_iconos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_usuarios`
--

DROP TABLE IF EXISTS `components_web_basic_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_usuarios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_usuarios`
--

LOCK TABLES `components_web_basic_usuarios` WRITE;
/*!40000 ALTER TABLE `components_web_basic_usuarios` DISABLE KEYS */;
INSERT INTO `components_web_basic_usuarios` VALUES (1,'BUILD UP A COMMUNITY','Join the biggest community of users','For entrepreneurs, startups and freelancers.\nBuild a beautiful, modern website with flexible, fully customizable, atomic MUI components.');
/*!40000 ALTER TABLE `components_web_basic_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_web_basic_usuarios_components`
--

DROP TABLE IF EXISTS `components_web_basic_usuarios_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_web_basic_usuarios_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_web_basic_usuarios_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_web_basic_usuarios_field_index` (`field`),
  KEY `components_web_basic_usuarios_component_type_index` (`component_type`),
  KEY `components_web_basic_usuarios_entity_fk` (`entity_id`),
  CONSTRAINT `components_web_basic_usuarios_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_web_basic_usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_web_basic_usuarios_components`
--

LOCK TABLES `components_web_basic_usuarios_components` WRITE;
/*!40000 ALTER TABLE `components_web_basic_usuarios_components` DISABLE KEYS */;
INSERT INTO `components_web_basic_usuarios_components` VALUES (1,1,11,'enterprise.button','primerBoton',NULL),(3,1,12,'enterprise.button','segundoBoton',NULL);
/*!40000 ALTER TABLE `components_web_basic_usuarios_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contac_us_pops`
--

DROP TABLE IF EXISTS `contac_us_pops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contac_us_pops` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `paragraph` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contac_us_pops_created_by_id_fk` (`created_by_id`),
  KEY `contac_us_pops_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `contac_us_pops_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `contac_us_pops_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contac_us_pops`
--

LOCK TABLES `contac_us_pops` WRITE;
/*!40000 ALTER TABLE `contac_us_pops` DISABLE KEYS */;
INSERT INTO `contac_us_pops` VALUES (1,'¿Cómo puede contactarnos sobre este aviso?','Si tiene alguna pregunta o inquietud sobre la política de privacidad, por favor contáctenos.','hi@maccarianagency.com','Via Gola 4\nMilán, Milano 20143\nItalia',NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `contac_us_pops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_stories`
--

DROP TABLE IF EXISTS `customer_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_stories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_stories_created_by_id_fk` (`created_by_id`),
  KEY `customer_stories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `customer_stories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `customer_stories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_stories`
--

LOCK TABLES `customer_stories` WRITE;
/*!40000 ALTER TABLE `customer_stories` DISABLE KEYS */;
INSERT INTO `customer_stories` VALUES (1,'2024-07-08 02:04:36.810000','2024-07-08 13:54:37.941000','2024-07-08 13:38:24.142000',1,1);
/*!40000 ALTER TABLE `customer_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_stories_components`
--

DROP TABLE IF EXISTS `customer_stories_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_stories_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_stories_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `customer_stories_field_index` (`field`),
  KEY `customer_stories_component_type_index` (`component_type`),
  KEY `customer_stories_entity_fk` (`entity_id`),
  CONSTRAINT `customer_stories_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `customer_stories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_stories_components`
--

LOCK TABLES `customer_stories_components` WRITE;
/*!40000 ALTER TABLE `customer_stories_components` DISABLE KEYS */;
INSERT INTO `customer_stories_components` VALUES (6,1,1,'customers.titular','PageContent',1),(7,1,2,'web-basic.socios-iconos','PageContent',2),(8,1,1,'customers.relatos','PageContent',3),(9,1,1,'customers.contacto','PageContent',4);
/*!40000 ALTER TABLE `customer_stories_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprises`
--

DROP TABLE IF EXISTS `enterprises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprises` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enterprises_created_by_id_fk` (`created_by_id`),
  KEY `enterprises_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `enterprises_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `enterprises_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprises`
--

LOCK TABLES `enterprises` WRITE;
/*!40000 ALTER TABLE `enterprises` DISABLE KEYS */;
INSERT INTO `enterprises` VALUES (1,'2024-07-08 02:41:40.685000','2024-07-08 15:58:44.897000','2024-07-08 02:42:12.213000',1,1);
/*!40000 ALTER TABLE `enterprises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprises_components`
--

DROP TABLE IF EXISTS `enterprises_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprises_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enterprises_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `enterprises_field_index` (`field`),
  KEY `enterprises_component_type_index` (`component_type`),
  KEY `enterprises_entity_fk` (`entity_id`),
  CONSTRAINT `enterprises_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `enterprises` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprises_components`
--

LOCK TABLES `enterprises_components` WRITE;
/*!40000 ALTER TABLE `enterprises_components` DISABLE KEYS */;
INSERT INTO `enterprises_components` VALUES (91,1,5,'enterprise.header','PageContent',1),(92,1,6,'enterprise.video-section','PageContent',2),(93,1,4,'enterprise.partners','PageContent',3),(94,1,3,'enterprise.solutions','PageContent',4),(95,1,3,'enterprise.resenas','PageContent',5),(96,1,3,'enterprise.compatibility','PageContent',6);
/*!40000 ALTER TABLE `enterprises_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_created_by_id_fk` (`created_by_id`),
  KEY `faqs_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `faqs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `faqs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_components`
--

DROP TABLE IF EXISTS `faqs_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqs_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `faqs_field_index` (`field`),
  KEY `faqs_component_type_index` (`component_type`),
  KEY `faqs_entity_fk` (`entity_id`),
  CONSTRAINT `faqs_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_components`
--

LOCK TABLES `faqs_components` WRITE;
/*!40000 ALTER TABLE `faqs_components` DISABLE KEYS */;
INSERT INTO `faqs_components` VALUES (1,1,13,'sections.sections','FAQ',1),(2,1,14,'sections.sections','FAQ',2),(3,1,15,'sections.sections','FAQ',3),(4,1,16,'sections.sections','FAQ',4),(5,1,17,'sections.sections','FAQ',5);
/*!40000 ALTER TABLE `faqs_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'img25.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img25_45c9884c9d.jpg\", \"hash\": \"small_img25_45c9884c9d\", \"mime\": \"image/jpeg\", \"name\": \"small_img25.jpg\", \"path\": null, \"size\": 23.35, \"width\": 500, \"height\": 334, \"sizeInBytes\": 23349}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img25_45c9884c9d.jpg\", \"hash\": \"thumbnail_img25_45c9884c9d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img25.jpg\", \"path\": null, \"size\": 8.24, \"width\": 234, \"height\": 156, \"sizeInBytes\": 8243}}','img25_45c9884c9d','.jpg','image/jpeg',32.35,'/uploads/img25_45c9884c9d.jpg',NULL,'local',NULL,'/','2024-07-02 00:50:07.260000','2024-07-02 00:50:07.260000',1,1),(2,'img3.jpg',NULL,NULL,1920,1281,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_img3_4cbc8b1da6.jpg\", \"hash\": \"large_img3_4cbc8b1da6\", \"mime\": \"image/jpeg\", \"name\": \"large_img3.jpg\", \"path\": null, \"size\": 91.24, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 91242}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img3_4cbc8b1da6.jpg\", \"hash\": \"small_img3_4cbc8b1da6\", \"mime\": \"image/jpeg\", \"name\": \"small_img3.jpg\", \"path\": null, \"size\": 31.34, \"width\": 500, \"height\": 333, \"sizeInBytes\": 31335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img3_4cbc8b1da6.jpg\", \"hash\": \"medium_img3_4cbc8b1da6\", \"mime\": \"image/jpeg\", \"name\": \"medium_img3.jpg\", \"path\": null, \"size\": 58.04, \"width\": 750, \"height\": 500, \"sizeInBytes\": 58035}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img3_4cbc8b1da6.jpg\", \"hash\": \"thumbnail_img3_4cbc8b1da6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img3.jpg\", \"path\": null, \"size\": 10.07, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10072}}','img3_4cbc8b1da6','.jpg','image/jpeg',275.14,'/uploads/img3_4cbc8b1da6.jpg',NULL,'local',NULL,'/','2024-07-02 00:55:59.772000','2024-07-02 00:55:59.772000',1,1),(3,'male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg',NULL,NULL,980,980,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115.jpg\", \"hash\": \"small_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115\", \"mime\": \"image/jpeg\", \"name\": \"small_male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg\", \"path\": null, \"size\": 11.75, \"width\": 500, \"height\": 500, \"sizeInBytes\": 11752}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115.jpg\", \"hash\": \"medium_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115\", \"mime\": \"image/jpeg\", \"name\": \"medium_male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg\", \"path\": null, \"size\": 18.6, \"width\": 750, \"height\": 750, \"sizeInBytes\": 18599}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115.jpg\", \"hash\": \"thumbnail_male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg\", \"path\": null, \"size\": 3.11, \"width\": 156, \"height\": 156, \"sizeInBytes\": 3111}}','male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115','.jpg','image/jpeg',23.95,'/uploads/male_avatar_profile_icon_of_smiling_caucasian_man_vector_0a57e92115.jpg',NULL,'local',NULL,'/','2024-07-03 10:50:14.879000','2024-07-03 10:50:24.445000',1,1),(4,'83a9a144ab03763667b8d8aa381bb441.jpg',NULL,NULL,400,400,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_83a9a144ab03763667b8d8aa381bb441_d8f5acc14c.jpg\", \"hash\": \"thumbnail_83a9a144ab03763667b8d8aa381bb441_d8f5acc14c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_83a9a144ab03763667b8d8aa381bb441.jpg\", \"path\": null, \"size\": 3.71, \"width\": 156, \"height\": 156, \"sizeInBytes\": 3711}}','83a9a144ab03763667b8d8aa381bb441_d8f5acc14c','.jpg','image/jpeg',12.03,'/uploads/83a9a144ab03763667b8d8aa381bb441_d8f5acc14c.jpg',NULL,'local',NULL,'/','2024-07-03 14:39:07.733000','2024-07-03 15:06:59.631000',1,1),(5,'images.jpg',NULL,NULL,225,225,'{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_636ec7706d.jpg\", \"hash\": \"thumbnail_images_636ec7706d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images.jpg\", \"path\": null, \"size\": 4.06, \"width\": 156, \"height\": 156, \"sizeInBytes\": 4056}}','images_636ec7706d','.jpg','image/jpeg',6.11,'/uploads/images_636ec7706d.jpg',NULL,'local',NULL,'/','2024-07-03 14:40:03.308000','2024-07-03 15:05:45.061000',1,1),(6,'img13.jpg',NULL,NULL,634,951,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img13_b3980d9cdd.jpg\", \"hash\": \"small_img13_b3980d9cdd\", \"mime\": \"image/jpeg\", \"name\": \"small_img13.jpg\", \"path\": null, \"size\": 33.18, \"width\": 333, \"height\": 500, \"sizeInBytes\": 33182}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img13_b3980d9cdd.jpg\", \"hash\": \"medium_img13_b3980d9cdd\", \"mime\": \"image/jpeg\", \"name\": \"medium_img13.jpg\", \"path\": null, \"size\": 68.15, \"width\": 500, \"height\": 750, \"sizeInBytes\": 68152}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img13_b3980d9cdd.jpg\", \"hash\": \"thumbnail_img13_b3980d9cdd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img13.jpg\", \"path\": null, \"size\": 4.23, \"width\": 104, \"height\": 156, \"sizeInBytes\": 4227}}','img13_b3980d9cdd','.jpg','image/jpeg',106.97,'/uploads/img13_b3980d9cdd.jpg',NULL,'local',NULL,'/','2024-07-03 14:43:40.365000','2024-07-03 14:43:40.365000',1,1),(7,'img14.jpg',NULL,NULL,600,900,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img14_c30c341724.jpg\", \"hash\": \"small_img14_c30c341724\", \"mime\": \"image/jpeg\", \"name\": \"small_img14.jpg\", \"path\": null, \"size\": 26.02, \"width\": 333, \"height\": 500, \"sizeInBytes\": 26020}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img14_c30c341724.jpg\", \"hash\": \"medium_img14_c30c341724\", \"mime\": \"image/jpeg\", \"name\": \"medium_img14.jpg\", \"path\": null, \"size\": 52.44, \"width\": 500, \"height\": 750, \"sizeInBytes\": 52442}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img14_c30c341724.jpg\", \"hash\": \"thumbnail_img14_c30c341724\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img14.jpg\", \"path\": null, \"size\": 3.52, \"width\": 104, \"height\": 156, \"sizeInBytes\": 3521}}','img14_c30c341724','.jpg','image/jpeg',71.40,'/uploads/img14_c30c341724.jpg',NULL,'local',NULL,'/','2024-07-03 14:43:40.591000','2024-07-03 14:43:40.591000',1,1),(8,'img17.jpg',NULL,NULL,640,1317,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_img17_3f3602fe4c.jpg\", \"hash\": \"large_img17_3f3602fe4c\", \"mime\": \"image/jpeg\", \"name\": \"large_img17.jpg\", \"path\": null, \"size\": 92.75, \"width\": 486, \"height\": 1000, \"sizeInBytes\": 92747}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img17_3f3602fe4c.jpg\", \"hash\": \"small_img17_3f3602fe4c\", \"mime\": \"image/jpeg\", \"name\": \"small_img17.jpg\", \"path\": null, \"size\": 25.5, \"width\": 243, \"height\": 500, \"sizeInBytes\": 25501}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img17_3f3602fe4c.jpg\", \"hash\": \"medium_img17_3f3602fe4c\", \"mime\": \"image/jpeg\", \"name\": \"medium_img17.jpg\", \"path\": null, \"size\": 54.12, \"width\": 364, \"height\": 750, \"sizeInBytes\": 54119}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img17_3f3602fe4c.jpg\", \"hash\": \"thumbnail_img17_3f3602fe4c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img17.jpg\", \"path\": null, \"size\": 3.18, \"width\": 76, \"height\": 156, \"sizeInBytes\": 3182}}','img17_3f3602fe4c','.jpg','image/jpeg',150.31,'/uploads/img17_3f3602fe4c.jpg',NULL,'local',NULL,'/','2024-07-03 14:43:40.751000','2024-07-03 14:43:40.751000',1,1),(9,'video.mp4',NULL,NULL,NULL,NULL,NULL,'video_bfb7189b7f','.mp4','video/mp4',2643.35,'/uploads/video_bfb7189b7f.mp4',NULL,'local',NULL,'/','2024-07-05 01:05:37.173000','2024-07-05 01:05:37.173000',1,1),(10,'netflix-original.svg',NULL,NULL,200,67,NULL,'netflix_original_9fdb83149a','.svg','image/svg+xml',1.20,'/uploads/netflix_original_9fdb83149a.svg',NULL,'local',NULL,'/','2024-07-05 03:53:45.065000','2024-07-05 03:53:45.065000',1,1),(11,'fitbit-original.svg',NULL,NULL,200,67,NULL,'fitbit_original_49e8c31116','.svg','image/svg+xml',4.70,'/uploads/fitbit_original_49e8c31116.svg',NULL,'local',NULL,'/','2024-07-05 03:53:45.067000','2024-07-05 03:53:45.067000',1,1),(12,'paypal-original.svg',NULL,NULL,200,67,NULL,'paypal_original_d37fc68986','.svg','image/svg+xml',3.78,'/uploads/paypal_original_d37fc68986.svg',NULL,'local',NULL,'/','2024-07-05 03:53:45.332000','2024-07-05 03:53:45.332000',1,1),(13,'google-original.svg',NULL,NULL,200,67,NULL,'google_original_258da2650c','.svg','image/svg+xml',2.26,'/uploads/google_original_258da2650c.svg',NULL,'local',NULL,'/','2024-07-05 03:53:45.334000','2024-07-05 03:53:45.334000',1,1),(14,'airbnb-original.svg',NULL,NULL,200,67,NULL,'airbnb_original_d3c4a512e2','.svg','image/svg+xml',3.33,'/uploads/airbnb_original_d3c4a512e2.svg',NULL,'local',NULL,'/','2024-07-05 03:53:45.337000','2024-07-05 03:53:45.337000',1,1),(15,'illustration4.svg',NULL,NULL,1328,854,NULL,'illustration4_f1c231d62e','.svg','image/svg+xml',11.69,'/uploads/illustration4_f1c231d62e.svg',NULL,'local',NULL,'/','2024-07-05 04:10:15.126000','2024-07-05 04:10:15.126000',1,1),(16,'illustration1.svg',NULL,NULL,1328,808,NULL,'illustration1_634cfe6c70','.svg','image/svg+xml',19.11,'/uploads/illustration1_634cfe6c70.svg',NULL,'local',NULL,'/','2024-07-05 04:10:56.057000','2024-07-05 04:10:56.057000',1,1),(17,'illustration3.svg',NULL,NULL,1183,1241,NULL,'illustration3_37ea3f9b36','.svg','image/svg+xml',93.65,'/uploads/illustration3_37ea3f9b36.svg',NULL,'local',NULL,'/','2024-07-05 04:10:56.334000','2024-07-05 04:10:56.334000',1,1),(18,'illustration2.svg',NULL,NULL,1308,748,NULL,'illustration2_7552bfbb0f','.svg','image/svg+xml',14.44,'/uploads/illustration2_7552bfbb0f.svg',NULL,'local',NULL,'/','2024-07-05 04:10:56.685000','2024-07-05 04:10:56.685000',1,1),(19,'safari.png',NULL,NULL,240,239,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_safari_2bae06a069.png\", \"hash\": \"thumbnail_safari_2bae06a069\", \"mime\": \"image/png\", \"name\": \"thumbnail_safari.png\", \"path\": null, \"size\": 36.08, \"width\": 157, \"height\": 156, \"sizeInBytes\": 36082}}','safari_2bae06a069','.png','image/png',12.45,'/uploads/safari_2bae06a069.png',NULL,'local',NULL,'/','2024-07-05 04:25:11.618000','2024-07-05 04:25:11.618000',1,1),(20,'edge.png',NULL,NULL,240,240,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_edge_387e1436e5.png\", \"hash\": \"thumbnail_edge_387e1436e5\", \"mime\": \"image/png\", \"name\": \"thumbnail_edge.png\", \"path\": null, \"size\": 25.66, \"width\": 156, \"height\": 156, \"sizeInBytes\": 25661}}','edge_387e1436e5','.png','image/png',8.37,'/uploads/edge_387e1436e5.png',NULL,'local',NULL,'/','2024-07-05 04:25:11.621000','2024-07-05 04:25:11.621000',1,1),(21,'firefox.png',NULL,NULL,240,226,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_firefox_bdbb056f6f.png\", \"hash\": \"thumbnail_firefox_bdbb056f6f\", \"mime\": \"image/png\", \"name\": \"thumbnail_firefox.png\", \"path\": null, \"size\": 30.61, \"width\": 166, \"height\": 156, \"sizeInBytes\": 30612}}','firefox_bdbb056f6f','.png','image/png',10.77,'/uploads/firefox_bdbb056f6f.png',NULL,'local',NULL,'/','2024-07-05 04:25:11.655000','2024-07-05 04:25:11.655000',1,1),(22,'chrome.png',NULL,NULL,240,240,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_chrome_cec96af527.png\", \"hash\": \"thumbnail_chrome_cec96af527\", \"mime\": \"image/png\", \"name\": \"thumbnail_chrome.png\", \"path\": null, \"size\": 15.56, \"width\": 156, \"height\": 156, \"sizeInBytes\": 15564}}','chrome_cec96af527','.png','image/png',4.94,'/uploads/chrome_cec96af527.png',NULL,'local',NULL,'/','2024-07-05 04:25:11.703000','2024-07-05 04:25:11.703000',1,1),(23,'img2.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img2_05f39831cf.jpg\", \"hash\": \"small_img2_05f39831cf\", \"mime\": \"image/jpeg\", \"name\": \"small_img2.jpg\", \"path\": null, \"size\": 19.54, \"width\": 500, \"height\": 500, \"sizeInBytes\": 19540}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img2_05f39831cf.jpg\", \"hash\": \"thumbnail_img2_05f39831cf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img2.jpg\", \"path\": null, \"size\": 3.43, \"width\": 156, \"height\": 156, \"sizeInBytes\": 3426}}','img2_05f39831cf','.jpg','image/jpeg',28.53,'/uploads/img2_05f39831cf.jpg',NULL,'local',NULL,'/','2024-07-05 04:31:56.632000','2024-07-05 04:31:56.632000',1,1),(24,'img1.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img1_c60ab9803f.jpg\", \"hash\": \"small_img1_c60ab9803f\", \"mime\": \"image/jpeg\", \"name\": \"small_img1.jpg\", \"path\": null, \"size\": 32.45, \"width\": 500, \"height\": 500, \"sizeInBytes\": 32446}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img1_c60ab9803f.jpg\", \"hash\": \"thumbnail_img1_c60ab9803f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img1.jpg\", \"path\": null, \"size\": 4.22, \"width\": 156, \"height\": 156, \"sizeInBytes\": 4216}}','img1_c60ab9803f','.jpg','image/jpeg',50.59,'/uploads/img1_c60ab9803f.jpg',NULL,'local',NULL,'/','2024-07-05 04:31:56.636000','2024-07-05 04:31:56.636000',1,1),(25,'img3 (1).jpg',NULL,NULL,640,708,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img3_1_cb7debf94e.jpg\", \"hash\": \"small_img3_1_cb7debf94e\", \"mime\": \"image/jpeg\", \"name\": \"small_img3 (1).jpg\", \"path\": null, \"size\": 50.07, \"width\": 452, \"height\": 500, \"sizeInBytes\": 50068}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img3_1_cb7debf94e.jpg\", \"hash\": \"thumbnail_img3_1_cb7debf94e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img3 (1).jpg\", \"path\": null, \"size\": 6.41, \"width\": 141, \"height\": 156, \"sizeInBytes\": 6408}}','img3_1_cb7debf94e','.jpg','image/jpeg',87.81,'/uploads/img3_1_cb7debf94e.jpg',NULL,'local',NULL,'/','2024-07-05 04:31:56.641000','2024-07-05 04:31:56.641000',1,1),(26,'drawkit-illustration4.svg',NULL,NULL,1002,1004,NULL,'drawkit_illustration4_c1b5d02a86','.svg','image/svg+xml',12.27,'/uploads/drawkit_illustration4_c1b5d02a86.svg',NULL,'local',NULL,'/','2024-07-08 00:59:51.220000','2024-07-08 00:59:51.220000',1,1),(27,'icons8-libros-24.png',NULL,NULL,24,24,NULL,'icons8_libros_24_cb75ff096f','.png','image/png',0.24,'/uploads/icons8_libros_24_cb75ff096f.png',NULL,'local',NULL,'/','2024-07-08 01:04:44.057000','2024-07-08 01:04:44.057000',1,1),(28,'icons8-código-50.png',NULL,NULL,50,50,NULL,'icons8_codigo_50_d31c8b1094','.png','image/png',0.37,'/uploads/icons8_codigo_50_d31c8b1094.png',NULL,'local',NULL,'/','2024-07-08 01:04:44.059000','2024-07-08 01:04:44.059000',1,1),(29,'icons8-natural-user-interface-2-50.png',NULL,NULL,50,50,NULL,'icons8_natural_user_interface_2_50_485b4db0e3','.png','image/png',0.49,'/uploads/icons8_natural_user_interface_2_50_485b4db0e3.png',NULL,'local',NULL,'/','2024-07-08 01:04:44.059000','2024-07-08 01:04:44.059000',1,1),(30,'slack.svg',NULL,NULL,1000,1000,NULL,'slack_16f2177bea','.svg','image/svg+xml',1.53,'/uploads/slack_16f2177bea.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.139000','2024-07-08 01:16:58.139000',1,1),(31,'atlassian.svg',NULL,NULL,1000,1000,NULL,'atlassian_d2b11c0ef9','.svg','image/svg+xml',0.81,'/uploads/atlassian_d2b11c0ef9.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.141000','2024-07-08 01:16:58.141000',1,1),(32,'dropbox.svg',NULL,NULL,1000,1000,NULL,'dropbox_4dec2ade20','.svg','image/svg+xml',0.46,'/uploads/dropbox_4dec2ade20.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.142000','2024-07-08 01:16:58.142000',1,1),(33,'google-drive.svg',NULL,NULL,1000,1000,NULL,'google_drive_fcfd26c19b','.svg','image/svg+xml',1.29,'/uploads/google_drive_fcfd26c19b.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.162000','2024-07-08 01:16:58.162000',1,1),(34,'google-ad-manager.svg',NULL,NULL,1000,1000,NULL,'google_ad_manager_6ab5ed6a93','.svg','image/svg+xml',1.20,'/uploads/google_ad_manager_6ab5ed6a93.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.237000','2024-07-08 01:16:58.237000',1,1),(35,'mailchimp.svg',NULL,NULL,1000,1000,NULL,'mailchimp_8aa6780ad8','.svg','image/svg+xml',49.90,'/uploads/mailchimp_8aa6780ad8.svg',NULL,'local',NULL,'/','2024-07-08 01:16:58.247000','2024-07-08 01:16:58.247000',1,1),(36,'img24.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img24_dd4636d03e.jpg\", \"hash\": \"small_img24_dd4636d03e\", \"mime\": \"image/jpeg\", \"name\": \"small_img24.jpg\", \"path\": null, \"size\": 33.14, \"width\": 500, \"height\": 334, \"sizeInBytes\": 33142}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img24_dd4636d03e.jpg\", \"hash\": \"thumbnail_img24_dd4636d03e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img24.jpg\", \"path\": null, \"size\": 9.96, \"width\": 234, \"height\": 156, \"sizeInBytes\": 9956}}','img24_dd4636d03e','.jpg','image/jpeg',48.27,'/uploads/img24_dd4636d03e.jpg',NULL,'local',NULL,'/','2024-07-08 01:40:54.553000','2024-07-08 01:40:54.553000',1,1),(37,'img22.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img22_7446400693.jpg\", \"hash\": \"small_img22_7446400693\", \"mime\": \"image/jpeg\", \"name\": \"small_img22.jpg\", \"path\": null, \"size\": 35.35, \"width\": 500, \"height\": 334, \"sizeInBytes\": 35346}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img22_7446400693.jpg\", \"hash\": \"thumbnail_img22_7446400693\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img22.jpg\", \"path\": null, \"size\": 10.81, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10812}}','img22_7446400693','.jpg','image/jpeg',50.18,'/uploads/img22_7446400693.jpg',NULL,'local',NULL,'/','2024-07-08 01:40:54.554000','2024-07-08 01:40:54.554000',1,1),(38,'img21.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img21_86f3cc06f9.jpg\", \"hash\": \"small_img21_86f3cc06f9\", \"mime\": \"image/jpeg\", \"name\": \"small_img21.jpg\", \"path\": null, \"size\": 36.19, \"width\": 500, \"height\": 334, \"sizeInBytes\": 36186}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img21_86f3cc06f9.jpg\", \"hash\": \"thumbnail_img21_86f3cc06f9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img21.jpg\", \"path\": null, \"size\": 10.47, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10468}}','img21_86f3cc06f9','.jpg','image/jpeg',53.55,'/uploads/img21_86f3cc06f9.jpg',NULL,'local',NULL,'/','2024-07-08 01:40:54.556000','2024-07-08 01:40:54.556000',1,1),(39,'img25 (1).jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img25_1_31f7b4b521.jpg\", \"hash\": \"small_img25_1_31f7b4b521\", \"mime\": \"image/jpeg\", \"name\": \"small_img25 (1).jpg\", \"path\": null, \"size\": 23.35, \"width\": 500, \"height\": 334, \"sizeInBytes\": 23349}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img25_1_31f7b4b521.jpg\", \"hash\": \"thumbnail_img25_1_31f7b4b521\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img25 (1).jpg\", \"path\": null, \"size\": 8.24, \"width\": 234, \"height\": 156, \"sizeInBytes\": 8243}}','img25_1_31f7b4b521','.jpg','image/jpeg',32.35,'/uploads/img25_1_31f7b4b521.jpg',NULL,'local',NULL,'/','2024-07-08 01:40:54.698000','2024-07-08 01:40:54.698000',1,1),(40,'img6.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img6_eff1e495b5.jpg\", \"hash\": \"small_img6_eff1e495b5\", \"mime\": \"image/jpeg\", \"name\": \"small_img6.jpg\", \"path\": null, \"size\": 16.94, \"width\": 500, \"height\": 500, \"sizeInBytes\": 16936}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img6_eff1e495b5.jpg\", \"hash\": \"thumbnail_img6_eff1e495b5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img6.jpg\", \"path\": null, \"size\": 3.28, \"width\": 156, \"height\": 156, \"sizeInBytes\": 3277}}','img6_eff1e495b5','.jpg','image/jpeg',24.08,'/uploads/img6_eff1e495b5.jpg',NULL,'local',NULL,'/','2024-07-08 01:45:00.889000','2024-07-08 01:45:00.889000',1,1),(41,'img4.jpg',NULL,NULL,640,584,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img4_c598e75e6b.jpg\", \"hash\": \"small_img4_c598e75e6b\", \"mime\": \"image/jpeg\", \"name\": \"small_img4.jpg\", \"path\": null, \"size\": 42.53, \"width\": 500, \"height\": 456, \"sizeInBytes\": 42530}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img4_c598e75e6b.jpg\", \"hash\": \"thumbnail_img4_c598e75e6b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img4.jpg\", \"path\": null, \"size\": 7.71, \"width\": 171, \"height\": 156, \"sizeInBytes\": 7712}}','img4_c598e75e6b','.jpg','image/jpeg',60.95,'/uploads/img4_c598e75e6b.jpg',NULL,'local',NULL,'/','2024-07-08 01:45:00.902000','2024-07-08 01:45:00.902000',1,1),(42,'img5.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img5_3937e0d344.jpg\", \"hash\": \"small_img5_3937e0d344\", \"mime\": \"image/jpeg\", \"name\": \"small_img5.jpg\", \"path\": null, \"size\": 42.71, \"width\": 500, \"height\": 500, \"sizeInBytes\": 42711}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img5_3937e0d344.jpg\", \"hash\": \"thumbnail_img5_3937e0d344\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img5.jpg\", \"path\": null, \"size\": 7.33, \"width\": 156, \"height\": 156, \"sizeInBytes\": 7328}}','img5_3937e0d344','.jpg','image/jpeg',60.27,'/uploads/img5_3937e0d344.jpg',NULL,'local',NULL,'/','2024-07-08 01:45:00.904000','2024-07-08 01:45:00.904000',1,1),(43,'amazon-original.svg',NULL,NULL,200,67,NULL,'amazon_original_83e514722f','.svg','image/svg+xml',3.71,'/uploads/amazon_original_83e514722f.svg',NULL,'local',NULL,'/','2024-07-08 02:10:26.056000','2024-07-08 02:10:26.056000',1,1),(44,'img1 (1).jpg',NULL,NULL,1920,1280,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_img1_1_932ff19dbf.jpg\", \"hash\": \"large_img1_1_932ff19dbf\", \"mime\": \"image/jpeg\", \"name\": \"large_img1 (1).jpg\", \"path\": null, \"size\": 89.46, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 89458}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img1_1_932ff19dbf.jpg\", \"hash\": \"small_img1_1_932ff19dbf\", \"mime\": \"image/jpeg\", \"name\": \"small_img1 (1).jpg\", \"path\": null, \"size\": 30.36, \"width\": 500, \"height\": 333, \"sizeInBytes\": 30360}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img1_1_932ff19dbf.jpg\", \"hash\": \"medium_img1_1_932ff19dbf\", \"mime\": \"image/jpeg\", \"name\": \"medium_img1 (1).jpg\", \"path\": null, \"size\": 57.17, \"width\": 750, \"height\": 500, \"sizeInBytes\": 57170}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img1_1_932ff19dbf.jpg\", \"hash\": \"thumbnail_img1_1_932ff19dbf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img1 (1).jpg\", \"path\": null, \"size\": 9.21, \"width\": 234, \"height\": 156, \"sizeInBytes\": 9207}}','img1_1_932ff19dbf','.jpg','image/jpeg',227.88,'/uploads/img1_1_932ff19dbf.jpg',NULL,'local',NULL,'/','2024-07-08 02:13:01.188000','2024-07-08 02:13:01.188000',1,1),(45,'hubspot-original.svg',NULL,NULL,200,67,NULL,'hubspot_original_eacc0f9367','.svg','image/svg+xml',2.73,'/uploads/hubspot_original_eacc0f9367.svg',NULL,'local',NULL,'/','2024-07-08 02:13:20.303000','2024-07-08 02:13:20.303000',1,1),(46,'mapbox-original.svg',NULL,NULL,200,67,NULL,'mapbox_original_6100984e03','.svg','image/svg+xml',3.21,'/uploads/mapbox_original_6100984e03.svg',NULL,'local',NULL,'/','2024-07-08 02:14:22.101000','2024-07-08 02:14:22.101000',1,1),(47,'img3 (2).jpg',NULL,NULL,1920,1281,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_img3_2_426377024c.jpg\", \"hash\": \"large_img3_2_426377024c\", \"mime\": \"image/jpeg\", \"name\": \"large_img3 (2).jpg\", \"path\": null, \"size\": 91.24, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 91242}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img3_2_426377024c.jpg\", \"hash\": \"small_img3_2_426377024c\", \"mime\": \"image/jpeg\", \"name\": \"small_img3 (2).jpg\", \"path\": null, \"size\": 31.34, \"width\": 500, \"height\": 333, \"sizeInBytes\": 31335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_img3_2_426377024c.jpg\", \"hash\": \"medium_img3_2_426377024c\", \"mime\": \"image/jpeg\", \"name\": \"medium_img3 (2).jpg\", \"path\": null, \"size\": 58.04, \"width\": 750, \"height\": 500, \"sizeInBytes\": 58035}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img3_2_426377024c.jpg\", \"hash\": \"thumbnail_img3_2_426377024c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img3 (2).jpg\", \"path\": null, \"size\": 10.07, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10072}}','img3_2_426377024c','.jpg','image/jpeg',275.14,'/uploads/img3_2_426377024c.jpg',NULL,'local',NULL,'/','2024-07-08 02:14:22.399000','2024-07-08 02:14:22.399000',1,1),(48,'slack-original.svg',NULL,NULL,200,67,NULL,'slack_original_d9cf3f8175','.svg','image/svg+xml',2.57,'/uploads/slack_original_d9cf3f8175.svg',NULL,'local',NULL,'/','2024-07-08 02:16:16.089000','2024-07-08 02:16:16.089000',1,1),(49,'ms_surface.mp4',NULL,NULL,NULL,NULL,NULL,'ms_surface_cb22d82e65','.mp4','video/mp4',849.12,'/uploads/ms_surface_cb22d82e65.mp4',NULL,'local',NULL,'/','2024-07-08 15:24:02.436000','2024-07-08 15:24:02.436000',1,1),(50,'kisspng-businessperson-presentation-flat-design-business-vector-material-5aa36c61cb9093.3848831915206595538338.png',NULL,NULL,1181,1181,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7.png\", \"hash\": \"large_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7\", \"mime\": \"image/png\", \"name\": \"large_kisspng-businessperson-presentation-flat-design-business-vector-material-5aa36c61cb9093.3848831915206595538338.png\", \"path\": null, \"size\": 170.73, \"width\": 1000, \"height\": 1000, \"sizeInBytes\": 170726}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7.png\", \"hash\": \"small_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7\", \"mime\": \"image/png\", \"name\": \"small_kisspng-businessperson-presentation-flat-design-business-vector-material-5aa36c61cb9093.3848831915206595538338.png\", \"path\": null, \"size\": 72.74, \"width\": 500, \"height\": 500, \"sizeInBytes\": 72739}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7.png\", \"hash\": \"medium_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7\", \"mime\": \"image/png\", \"name\": \"medium_kisspng-businessperson-presentation-flat-design-business-vector-material-5aa36c61cb9093.3848831915206595538338.png\", \"path\": null, \"size\": 118.19, \"width\": 750, \"height\": 750, \"sizeInBytes\": 118185}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7.png\", \"hash\": \"thumbnail_kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7\", \"mime\": \"image/png\", \"name\": \"thumbnail_kisspng-businessperson-presentation-flat-design-business-vector-material-5aa36c61cb9093.3848831915206595538338.png\", \"path\": null, \"size\": 18.8, \"width\": 156, \"height\": 156, \"sizeInBytes\": 18804}}','kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7','.png','image/png',27.91,'/uploads/kisspng_businessperson_presentation_flat_design_business_vector_material_5aa36c61cb9093_3848831915206595538338_bacceb2ef7.png',NULL,'local',NULL,'/',NULL,NULL,1,1),(51,'truckingimage.png',NULL,NULL,2880,2468,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_truckingimage_ffbfd2f901.png\", \"hash\": \"large_truckingimage_ffbfd2f901\", \"mime\": \"image/png\", \"name\": \"large_truckingimage.png\", \"path\": null, \"size\": 141.82, \"width\": 1000, \"height\": 857, \"sizeInBytes\": 141818}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_truckingimage_ffbfd2f901.png\", \"hash\": \"small_truckingimage_ffbfd2f901\", \"mime\": \"image/png\", \"name\": \"small_truckingimage.png\", \"path\": null, \"size\": 49.94, \"width\": 500, \"height\": 428, \"sizeInBytes\": 49937}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_truckingimage_ffbfd2f901.png\", \"hash\": \"medium_truckingimage_ffbfd2f901\", \"mime\": \"image/png\", \"name\": \"medium_truckingimage.png\", \"path\": null, \"size\": 88.71, \"width\": 750, \"height\": 643, \"sizeInBytes\": 88707}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_truckingimage_ffbfd2f901.png\", \"hash\": \"thumbnail_truckingimage_ffbfd2f901\", \"mime\": \"image/png\", \"name\": \"thumbnail_truckingimage.png\", \"path\": null, \"size\": 12.15, \"width\": 182, \"height\": 156, \"sizeInBytes\": 12151}}','truckingimage_ffbfd2f901','.png','image/png',148.31,'/uploads/truckingimage_ffbfd2f901.png',NULL,'local',NULL,'/',NULL,NULL,1,1),(52,'usuario-de-perfil.png',NULL,NULL,512,512,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_usuario_de_perfil_a4bcf6ce06.png\", \"hash\": \"small_usuario_de_perfil_a4bcf6ce06\", \"mime\": \"image/png\", \"name\": \"small_usuario-de-perfil.png\", \"path\": null, \"size\": 20.31, \"width\": 500, \"height\": 500, \"sizeInBytes\": 20307}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_usuario_de_perfil_a4bcf6ce06.png\", \"hash\": \"thumbnail_usuario_de_perfil_a4bcf6ce06\", \"mime\": \"image/png\", \"name\": \"thumbnail_usuario-de-perfil.png\", \"path\": null, \"size\": 4.61, \"width\": 156, \"height\": 156, \"sizeInBytes\": 4606}}','usuario_de_perfil_a4bcf6ce06','.png','image/png',4.62,'/uploads/usuario_de_perfil_a4bcf6ce06.png',NULL,'local',NULL,'/',NULL,NULL,1,1),(53,'item1news.jpg',NULL,NULL,1920,1920,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_item1news_0e6394bc77.jpg\", \"hash\": \"large_item1news_0e6394bc77\", \"mime\": \"image/jpeg\", \"name\": \"large_item1news.jpg\", \"path\": null, \"size\": 118, \"width\": 1000, \"height\": 1000, \"sizeInBytes\": 117995}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_item1news_0e6394bc77.jpg\", \"hash\": \"small_item1news_0e6394bc77\", \"mime\": \"image/jpeg\", \"name\": \"small_item1news.jpg\", \"path\": null, \"size\": 32.6, \"width\": 500, \"height\": 500, \"sizeInBytes\": 32599}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_item1news_0e6394bc77.jpg\", \"hash\": \"medium_item1news_0e6394bc77\", \"mime\": \"image/jpeg\", \"name\": \"medium_item1news.jpg\", \"path\": null, \"size\": 68.96, \"width\": 750, \"height\": 750, \"sizeInBytes\": 68961}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_item1news_0e6394bc77.jpg\", \"hash\": \"thumbnail_item1news_0e6394bc77\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_item1news.jpg\", \"path\": null, \"size\": 4.91, \"width\": 156, \"height\": 156, \"sizeInBytes\": 4914}}','item1news_0e6394bc77','.jpg','image/jpeg',267.74,'/uploads/item1news_0e6394bc77.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(54,'item2news.jpg',NULL,NULL,1920,1281,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_item2news_905d1854c8.jpg\", \"hash\": \"large_item2news_905d1854c8\", \"mime\": \"image/jpeg\", \"name\": \"large_item2news.jpg\", \"path\": null, \"size\": 91.24, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 91242}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_item2news_905d1854c8.jpg\", \"hash\": \"small_item2news_905d1854c8\", \"mime\": \"image/jpeg\", \"name\": \"small_item2news.jpg\", \"path\": null, \"size\": 31.34, \"width\": 500, \"height\": 333, \"sizeInBytes\": 31335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_item2news_905d1854c8.jpg\", \"hash\": \"medium_item2news_905d1854c8\", \"mime\": \"image/jpeg\", \"name\": \"medium_item2news.jpg\", \"path\": null, \"size\": 58.04, \"width\": 750, \"height\": 500, \"sizeInBytes\": 58035}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_item2news_905d1854c8.jpg\", \"hash\": \"thumbnail_item2news_905d1854c8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_item2news.jpg\", \"path\": null, \"size\": 10.07, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10072}}','item2news_905d1854c8','.jpg','image/jpeg',275.14,'/uploads/item2news_905d1854c8.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(55,'item3news.jpg',NULL,NULL,900,900,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_item3news_307317d344.jpg\", \"hash\": \"small_item3news_307317d344\", \"mime\": \"image/jpeg\", \"name\": \"small_item3news.jpg\", \"path\": null, \"size\": 24.66, \"width\": 500, \"height\": 500, \"sizeInBytes\": 24658}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_item3news_307317d344.jpg\", \"hash\": \"medium_item3news_307317d344\", \"mime\": \"image/jpeg\", \"name\": \"medium_item3news.jpg\", \"path\": null, \"size\": 45.59, \"width\": 750, \"height\": 750, \"sizeInBytes\": 45593}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_item3news_307317d344.jpg\", \"hash\": \"thumbnail_item3news_307317d344\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_item3news.jpg\", \"path\": null, \"size\": 4.46, \"width\": 156, \"height\": 156, \"sizeInBytes\": 4455}}','item3news_307317d344','.jpg','image/jpeg',61.59,'/uploads/item3news_307317d344.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(56,'videoimage.jpg',NULL,NULL,1920,1280,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_videoimage_0bf8414828.jpg\", \"hash\": \"large_videoimage_0bf8414828\", \"mime\": \"image/jpeg\", \"name\": \"large_videoimage.jpg\", \"path\": null, \"size\": 101.33, \"width\": 1000, \"height\": 667, \"sizeInBytes\": 101334}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_videoimage_0bf8414828.jpg\", \"hash\": \"small_videoimage_0bf8414828\", \"mime\": \"image/jpeg\", \"name\": \"small_videoimage.jpg\", \"path\": null, \"size\": 29.31, \"width\": 500, \"height\": 333, \"sizeInBytes\": 29305}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_videoimage_0bf8414828.jpg\", \"hash\": \"medium_videoimage_0bf8414828\", \"mime\": \"image/jpeg\", \"name\": \"medium_videoimage.jpg\", \"path\": null, \"size\": 60.31, \"width\": 750, \"height\": 500, \"sizeInBytes\": 60306}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_videoimage_0bf8414828.jpg\", \"hash\": \"thumbnail_videoimage_0bf8414828\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_videoimage.jpg\", \"path\": null, \"size\": 7.9, \"width\": 234, \"height\": 156, \"sizeInBytes\": 7901}}','videoimage_0bf8414828','.jpg','image/jpeg',319.53,'/uploads/videoimage_0bf8414828.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(57,'aboutbottom.png',NULL,NULL,545,543,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_aboutbottom_4533906398.png\", \"hash\": \"small_aboutbottom_4533906398\", \"mime\": \"image/png\", \"name\": \"small_aboutbottom.png\", \"path\": null, \"size\": 468.47, \"width\": 500, \"height\": 498, \"sizeInBytes\": 468469}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_aboutbottom_4533906398.png\", \"hash\": \"thumbnail_aboutbottom_4533906398\", \"mime\": \"image/png\", \"name\": \"thumbnail_aboutbottom.png\", \"path\": null, \"size\": 54.76, \"width\": 157, \"height\": 156, \"sizeInBytes\": 54764}}','aboutbottom_4533906398','.png','image/png',130.54,'/uploads/aboutbottom_4533906398.png',NULL,'local',NULL,'/',NULL,NULL,1,1),(58,'comment1review.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_comment1review_f261c969dd.jpg\", \"hash\": \"small_comment1review_f261c969dd\", \"mime\": \"image/jpeg\", \"name\": \"small_comment1review.jpg\", \"path\": null, \"size\": 42.71, \"width\": 500, \"height\": 500, \"sizeInBytes\": 42711}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_comment1review_f261c969dd.jpg\", \"hash\": \"thumbnail_comment1review_f261c969dd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_comment1review.jpg\", \"path\": null, \"size\": 7.33, \"width\": 156, \"height\": 156, \"sizeInBytes\": 7328}}','comment1review_f261c969dd','.jpg','image/jpeg',60.27,'/uploads/comment1review_f261c969dd.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(59,'comment2review.jpg',NULL,NULL,640,584,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_comment2review_4ce645e730.jpg\", \"hash\": \"small_comment2review_4ce645e730\", \"mime\": \"image/jpeg\", \"name\": \"small_comment2review.jpg\", \"path\": null, \"size\": 42.53, \"width\": 500, \"height\": 456, \"sizeInBytes\": 42530}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_comment2review_4ce645e730.jpg\", \"hash\": \"thumbnail_comment2review_4ce645e730\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_comment2review.jpg\", \"path\": null, \"size\": 7.71, \"width\": 171, \"height\": 156, \"sizeInBytes\": 7712}}','comment2review_4ce645e730','.jpg','image/jpeg',60.95,'/uploads/comment2review_4ce645e730.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(60,'comment3review.jpg',NULL,NULL,640,640,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_comment3review_1feca68bfb.jpg\", \"hash\": \"small_comment3review_1feca68bfb\", \"mime\": \"image/jpeg\", \"name\": \"small_comment3review.jpg\", \"path\": null, \"size\": 16.94, \"width\": 500, \"height\": 500, \"sizeInBytes\": 16936}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_comment3review_1feca68bfb.jpg\", \"hash\": \"thumbnail_comment3review_1feca68bfb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_comment3review.jpg\", \"path\": null, \"size\": 3.28, \"width\": 156, \"height\": 156, \"sizeInBytes\": 3277}}','comment3review_1feca68bfb','.jpg','image/jpeg',24.08,'/uploads/comment3review_1feca68bfb.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(61,'heroabout.jpg',NULL,NULL,1920,1080,'{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_heroabout_5838116412.jpg\", \"hash\": \"large_heroabout_5838116412\", \"mime\": \"image/jpeg\", \"name\": \"large_heroabout.jpg\", \"path\": null, \"size\": 67.18, \"width\": 1000, \"height\": 563, \"sizeInBytes\": 67179}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_heroabout_5838116412.jpg\", \"hash\": \"small_heroabout_5838116412\", \"mime\": \"image/jpeg\", \"name\": \"small_heroabout.jpg\", \"path\": null, \"size\": 25.07, \"width\": 500, \"height\": 281, \"sizeInBytes\": 25070}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_heroabout_5838116412.jpg\", \"hash\": \"medium_heroabout_5838116412\", \"mime\": \"image/jpeg\", \"name\": \"medium_heroabout.jpg\", \"path\": null, \"size\": 44.31, \"width\": 750, \"height\": 422, \"sizeInBytes\": 44309}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_heroabout_5838116412.jpg\", \"hash\": \"thumbnail_heroabout_5838116412\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_heroabout.jpg\", \"path\": null, \"size\": 9.1, \"width\": 245, \"height\": 138, \"sizeInBytes\": 9102}}','heroabout_5838116412','.jpg','image/jpeg',171.99,'/uploads/heroabout_5838116412.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(62,'img22.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img22_4ba7f62ee9.jpg\", \"hash\": \"small_img22_4ba7f62ee9\", \"mime\": \"image/jpeg\", \"name\": \"small_img22.jpg\", \"path\": null, \"size\": 35.35, \"width\": 500, \"height\": 334, \"sizeInBytes\": 35346}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img22_4ba7f62ee9.jpg\", \"hash\": \"thumbnail_img22_4ba7f62ee9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img22.jpg\", \"path\": null, \"size\": 10.81, \"width\": 234, \"height\": 156, \"sizeInBytes\": 10812}}','img22_4ba7f62ee9','.jpg','image/jpeg',50.18,'/uploads/img22_4ba7f62ee9.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1),(63,'img25.jpg',NULL,NULL,640,427,'{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_img25_39a36ac9a8.jpg\", \"hash\": \"small_img25_39a36ac9a8\", \"mime\": \"image/jpeg\", \"name\": \"small_img25.jpg\", \"path\": null, \"size\": 23.35, \"width\": 500, \"height\": 334, \"sizeInBytes\": 23349}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_img25_39a36ac9a8.jpg\", \"hash\": \"thumbnail_img25_39a36ac9a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_img25.jpg\", \"path\": null, \"size\": 8.24, \"width\": 234, \"height\": 156, \"sizeInBytes\": 8243}}','img25_39a36ac9a8','.jpg','image/jpeg',32.35,'/uploads/img25_39a36ac9a8.jpg',NULL,'local',NULL,'/',NULL,NULL,1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  KEY `files_related_morphs_order_index` (`order`),
  KEY `files_related_morphs_id_column_index` (`related_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (3,3,1,'plugin::users-permissions.user','avatar',1),(4,2,2,'api::blog.blog','image',1),(5,1,1,'api::blog.blog','image',1),(7,4,2,'plugin::users-permissions.user','avatar',1),(8,5,3,'plugin::users-permissions.user','avatar',1),(11,8,3,'api::blog.blog','image',1),(12,5,3,'api::blog.blog','avatar',1),(13,7,4,'api::blog.blog','image',1),(14,3,4,'api::blog.blog','avatar',1),(15,6,5,'api::blog.blog','image',1),(16,4,5,'api::blog.blog','avatar',1),(115,15,1,'enterprise.cards','image',1),(116,17,2,'enterprise.cards','image',1),(160,10,2,'enterprise.partners','icons',1),(161,11,2,'enterprise.partners','icons',2),(162,12,2,'enterprise.partners','icons',3),(163,13,2,'enterprise.partners','icons',4),(164,14,2,'enterprise.partners','icons',5),(165,18,1,'enterprise.cards','imageSolution',1),(166,17,2,'enterprise.cards','imageSolution',1),(167,16,3,'enterprise.cards','imageSolution',1),(168,15,4,'enterprise.cards','imageSolution',1),(169,22,1,'enterprise.compatibility-card','icon',1),(170,19,2,'enterprise.compatibility-card','icon',1),(171,20,3,'enterprise.compatibility-card','icon',1),(172,21,4,'enterprise.compatibility-card','icon',1),(325,24,7,'enterprise.reviews','avatar',1),(326,23,8,'enterprise.reviews','avatar',1),(327,25,9,'enterprise.reviews','avatar',1),(328,24,10,'enterprise.reviews','avatar',1),(329,23,11,'enterprise.reviews','avatar',1),(330,25,12,'enterprise.reviews','avatar',1),(337,36,1,'about-side.gallery','galeria',1),(338,37,1,'about-side.gallery','galeria',2),(339,38,1,'about-side.gallery','galeria',3),(340,39,1,'about-side.gallery','galeria',4),(341,14,1,'about-side.story','iconos',1),(342,11,1,'about-side.story','iconos',2),(343,10,1,'about-side.story','iconos',3),(344,13,1,'about-side.story','iconos',4),(345,12,1,'about-side.story','iconos',5),(346,25,1,'about-side.card-equipo','avatar',1),(347,40,2,'about-side.card-equipo','avatar',1),(348,42,3,'about-side.card-equipo','avatar',1),(349,41,4,'about-side.card-equipo','avatar',1),(405,22,5,'enterprise.compatibility-card','icono',1),(406,19,6,'enterprise.compatibility-card','icono',1),(407,20,7,'enterprise.compatibility-card','icono',1),(408,21,8,'enterprise.compatibility-card','icono',1),(576,35,2,'web-basic.socios-iconos','iconos',1),(577,34,2,'web-basic.socios-iconos','iconos',2),(578,33,2,'web-basic.socios-iconos','iconos',3),(579,32,2,'web-basic.socios-iconos','iconos',4),(580,31,2,'web-basic.socios-iconos','iconos',5),(581,30,2,'web-basic.socios-iconos','iconos',6),(582,38,1,'customers.card-relatos','imagen',1),(583,14,1,'customers.card-relatos','logo',1),(584,37,2,'customers.card-relatos','imagen',1),(585,43,2,'customers.card-relatos','logo',1),(586,36,3,'customers.card-relatos','imagen',1),(587,11,3,'customers.card-relatos','logo',1),(588,39,4,'customers.card-relatos','imagen',1),(589,13,4,'customers.card-relatos','logo',1),(590,44,5,'customers.card-relatos','imagen',1),(591,45,5,'customers.card-relatos','logo',1),(592,47,6,'customers.card-relatos','imagen',1),(593,46,6,'customers.card-relatos','logo',1),(594,38,7,'customers.card-relatos','imagen',1),(595,10,7,'customers.card-relatos','logo',1),(596,37,8,'customers.card-relatos','imagen',1),(597,12,8,'customers.card-relatos','logo',1),(598,36,9,'customers.card-relatos','imagen',1),(599,48,9,'customers.card-relatos','logo',1),(654,47,2,'about-side.gallery','galeria',1),(655,39,2,'about-side.gallery','galeria',2),(656,38,2,'about-side.gallery','galeria',3),(657,48,2,'about-side.story','iconos',1),(658,46,2,'about-side.story','iconos',2),(659,45,2,'about-side.story','iconos',3),(660,43,2,'about-side.story','iconos',4),(661,12,2,'about-side.story','iconos',5),(662,13,2,'about-side.story','iconos',6),(663,10,2,'about-side.story','iconos',7),(664,40,5,'about-side.card-equipo','avatar',1),(665,41,6,'about-side.card-equipo','avatar',1),(666,42,7,'about-side.card-equipo','avatar',1),(667,23,8,'about-side.card-equipo','avatar',1),(690,26,1,'web-basic.encabezado','imagen',1),(691,29,1,'web-basic.card-servicios','icono',1),(692,27,2,'web-basic.card-servicios','icono',1),(693,28,3,'web-basic.card-servicios','icono',1),(694,14,1,'web-basic.socios-iconos','iconos',1),(695,11,1,'web-basic.socios-iconos','iconos',2),(696,10,1,'web-basic.socios-iconos','iconos',3),(697,13,1,'web-basic.socios-iconos','iconos',4),(698,12,1,'web-basic.socios-iconos','iconos',5),(699,29,5,'web-basic.card-servicios','icono',1),(700,27,6,'web-basic.card-servicios','icono',1),(701,28,7,'web-basic.card-servicios','icono',1),(702,30,1,'web-basic.usuarios','iconos',1),(703,31,1,'web-basic.usuarios','iconos',2),(704,32,1,'web-basic.usuarios','iconos',3),(705,33,1,'web-basic.usuarios','iconos',4),(706,34,1,'web-basic.usuarios','iconos',5),(707,35,1,'web-basic.usuarios','iconos',6),(708,40,16,'enterprise.reviews','avatar',1),(709,41,17,'enterprise.reviews','avatar',1),(710,42,18,'enterprise.reviews','avatar',1),(711,16,1,'web-basic.caracteristicas','imagen',1),(830,9,6,'enterprise.video-section','video',1),(831,14,4,'enterprise.partners','iconos',1),(832,10,4,'enterprise.partners','iconos',2),(833,13,4,'enterprise.partners','iconos',3),(834,12,4,'enterprise.partners','iconos',4),(835,11,4,'enterprise.partners','iconos',5),(836,15,9,'enterprise.cards','imagen',1),(837,16,10,'enterprise.cards','imagen',1),(838,17,11,'enterprise.cards','imagen',1),(839,18,12,'enterprise.cards','imagen',1),(840,40,13,'enterprise.reviews','avatar',1),(841,42,14,'enterprise.reviews','avatar',1),(842,41,15,'enterprise.reviews','avatar',1),(843,21,9,'enterprise.compatibility-card','icono',1),(844,20,10,'enterprise.compatibility-card','icono',1),(845,19,11,'enterprise.compatibility-card','icono',1),(846,22,12,'enterprise.compatibility-card','icono',1),(847,1,1,'api::section.section','image',1),(848,2,2,'api::section.section','image',1),(849,3,1,'comments.comments','avatar',1),(850,4,7,'items-num.items','images',1),(851,5,8,'items-num.items','images',1),(852,6,9,'items-num.items','images',1),(853,7,7,'api::section.section','image',1),(854,8,11,'api::section.section','image',1),(855,9,2,'comments.comments','avatar',1),(856,10,3,'comments.comments','avatar',1),(857,11,4,'comments.comments','avatar',1),(858,4,10,'items-num.items','images',1),(859,5,11,'items-num.items','images',1),(860,6,12,'items-num.items','images',1),(861,12,1,'sections.sections','image1',1),(862,9,21,'items-num.items','images',1),(863,11,22,'items-num.items','images',1),(864,10,23,'items-num.items','images',1),(865,13,5,'sections.sections','video',1),(866,14,5,'sections.sections','video',2),(867,12,5,'sections.sections','video',3),(868,5,5,'sections.sections','video',4),(869,5,2,'sections.sections','image1',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpcenters`
--

DROP TABLE IF EXISTS `helpcenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helpcenters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `helpcenters_created_by_id_fk` (`created_by_id`),
  KEY `helpcenters_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `helpcenters_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `helpcenters_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpcenters`
--

LOCK TABLES `helpcenters` WRITE;
/*!40000 ALTER TABLE `helpcenters` DISABLE KEYS */;
INSERT INTO `helpcenters` VALUES (1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `helpcenters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpcenters_components`
--

DROP TABLE IF EXISTS `helpcenters_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helpcenters_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `helpcenters_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `helpcenters_field_index` (`field`),
  KEY `helpcenters_component_type_index` (`component_type`),
  KEY `helpcenters_entity_fk` (`entity_id`),
  CONSTRAINT `helpcenters_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `helpcenters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpcenters_components`
--

LOCK TABLES `helpcenters_components` WRITE;
/*!40000 ALTER TABLE `helpcenters_components` DISABLE KEYS */;
INSERT INTO `helpcenters_components` VALUES (1,1,11,'sections.sections','FAQpage',1),(2,1,12,'sections.sections','FAQpage',2);
/*!40000 ALTER TABLE `helpcenters_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homes_created_by_id_fk` (`created_by_id`),
  KEY `homes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `homes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `homes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_components`
--

DROP TABLE IF EXISTS `homes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `homes_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `homes_field_index` (`field`),
  KEY `homes_component_type_index` (`component_type`),
  KEY `homes_entity_fk` (`entity_id`),
  CONSTRAINT `homes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_components`
--

LOCK TABLES `homes_components` WRITE;
/*!40000 ALTER TABLE `homes_components` DISABLE KEYS */;
INSERT INTO `homes_components` VALUES (1,1,7,'sections.sections','homepage',1),(2,1,8,'sections.sections','homepage',2);
/*!40000 ALTER TABLE `homes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2024-07-01 14:54:53.636000','2024-07-01 14:54:53.636000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistics_created_by_id_fk` (`created_by_id`),
  KEY `logistics_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `logistics_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `logistics_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics`
--

LOCK TABLES `logistics` WRITE;
/*!40000 ALTER TABLE `logistics` DISABLE KEYS */;
INSERT INTO `logistics` VALUES (1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `logistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics_sections_links`
--

DROP TABLE IF EXISTS `logistics_sections_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistics_sections_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `logistic_id` int unsigned DEFAULT NULL,
  `section_id` int unsigned DEFAULT NULL,
  `section_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `logistics_sections_links_unique` (`logistic_id`,`section_id`),
  KEY `logistics_sections_links_fk` (`logistic_id`),
  KEY `logistics_sections_links_inv_fk` (`section_id`),
  KEY `logistics_sections_links_order_fk` (`section_order`),
  CONSTRAINT `logistics_sections_links_fk` FOREIGN KEY (`logistic_id`) REFERENCES `logistics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `logistics_sections_links_inv_fk` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics_sections_links`
--

LOCK TABLES `logistics_sections_links` WRITE;
/*!40000 ALTER TABLE `logistics_sections_links` DISABLE KEYS */;
INSERT INTO `logistics_sections_links` VALUES (1,1,1,1),(2,1,2,2),(3,1,3,3),(4,1,6,6),(5,1,5,5),(6,1,4,4),(7,1,12,12),(8,1,10,11),(9,1,7,10),(10,1,11,9),(11,1,9,8),(12,1,8,7);
/*!40000 ALTER TABLE `logistics_sections_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `answer` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_created_by_id_fk` (`created_by_id`),
  KEY `questions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `questions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `questions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'1. ¿Qué información recopilamos?','[{\"type\": \"paragraph\", \"children\": [{\"text\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}]',NULL,NULL,NULL,1,1),(2,'2. ¿Cómo usamos su información?','[{\"type\": \"paragraph\", \"children\": [{\"text\": \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}]',NULL,NULL,NULL,1,1),(3,'3. ¿Usamos cookies u otras tecnologías de seguimiento?','[{\"type\": \"paragraph\", \"children\": [{\"text\": \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}]',NULL,NULL,NULL,1,1),(4,'4. ¿Cuánto tiempo conservamos su información?','[{\"type\": \"paragraph\", \"children\": [{\"text\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}, {\"type\": \"paragraph\", \"children\": [{\"text\": \"\", \"type\": \"text\"}]}]',NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `reviewer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_created_by_id_fk` (`created_by_id`),
  KEY `reviews_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `reviews_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `reviews_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Cool','Hansel','2024-07-03 13:06:49.220000','2024-07-03 13:07:06.756000','2024-07-03 13:07:06.749000',1,1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_blog_links`
--

DROP TABLE IF EXISTS `reviews_blog_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews_blog_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int unsigned DEFAULT NULL,
  `blog_id` int unsigned DEFAULT NULL,
  `review_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_blog_links_unique` (`review_id`,`blog_id`),
  KEY `reviews_blog_links_fk` (`review_id`),
  KEY `reviews_blog_links_inv_fk` (`blog_id`),
  KEY `reviews_blog_links_order_inv_fk` (`review_order`),
  CONSTRAINT `reviews_blog_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_blog_links_inv_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_blog_links`
--

LOCK TABLES `reviews_blog_links` WRITE;
/*!40000 ALTER TABLE `reviews_blog_links` DISABLE KEYS */;
INSERT INTO `reviews_blog_links` VALUES (1,1,2,1);
/*!40000 ALTER TABLE `reviews_blog_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext,
  `section_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_created_by_id_fk` (`created_by_id`),
  KEY `sections_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `sections_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sections_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Hacemos que el transporte por carretera sea eficiente.',NULL,'Las empresas con visión de futuro utilizan nuestro servicio de respaldo en la nube para garantizar la fiabilidad y seguridad de los datos.','hero',NULL,NULL,NULL,1,1),(2,' Transporte de carga',NULL,'Los problemas de decisión que enfrentan las empresas de carga fraccionada (LTL) son altamente complejos.','trucking',NULL,NULL,NULL,1,1),(3,'Monitorea y analiza los patrones de uso.','CONTROL TOTAL','Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo.\nLas empresas con visión de futuro utilizan nuestro servicio de respaldo en la nube para garantizar la fiabilidad y seguridad de los datos.','about',NULL,NULL,NULL,1,1),(4,'Nuestras características','Completa nuestra solicitud estandarizada en nuestra plataforma.',NULL,'features',NULL,NULL,NULL,1,1),(5,' Nuestras últimas noticias','Después de 3 días, recibirás todas tus ofertas y tendrás otros 7 días para seleccionar tu nueva empresa.',NULL,'news',NULL,NULL,NULL,1,1),(6,'Nuestros líderes te ayudarán',NULL,'Desarrollamos soluciones inteligentes para que las empresas reduzcan sus costos operativos, aumenten su rentabilidad y mejoren la calidad del servicio.\n\n','team',NULL,NULL,NULL,1,1),(7,'Mira el video','Después de 3 días, recibirás todas tus ofertas y tendrás otros 7 días para seleccionar tu nueva empresa.',NULL,'video',NULL,NULL,NULL,1,1),(8,'Sincronización con diferentes empresas',NULL,'Las empresas con visión de futuro utilizan nuestro servicio de respaldo en la nube para garantizar la fiabilidad y seguridad de los datos.\n\n','integrations',NULL,NULL,NULL,1,1),(9,'Precios flexibles y transparentes','Cualquiera que sea tu situación, nuestras ofertas evolucionan según tus necesidades.',NULL,'pricing',NULL,NULL,NULL,1,1),(10,'Estamos contratando','Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo.',NULL,'jobs',NULL,NULL,NULL,1,1),(11,'Monitorea y analiza los patrones de uso.',NULL,'Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo. Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo. Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo. Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo. Mantén un registro de lo que sucede con tus datos, cambia permisos y ejecuta informes sobre tus datos en cualquier lugar del mundo.\n\n\n\n\n\n\n','aboutBottom',NULL,NULL,NULL,1,1),(12,'Confiado por las empresas más innovadoras del mundo, grandes y pequeñas',NULL,'Empresas de todo el mundo han tenido experiencias fantásticas usando theFront.\nEsto es lo que tienen que decir.\n\n','reviews',NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_components`
--

DROP TABLE IF EXISTS `sections_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `sections_field_index` (`field`),
  KEY `sections_component_type_index` (`component_type`),
  KEY `sections_entity_fk` (`entity_id`),
  CONSTRAINT `sections_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_components`
--

LOCK TABLES `sections_components` WRITE;
/*!40000 ALTER TABLE `sections_components` DISABLE KEYS */;
INSERT INTO `sections_components` VALUES (1,2,1,'items-num.items','items',1),(2,2,2,'items-num.items','items',2),(3,2,3,'items-num.items','items',3),(4,3,1,'comments.comments','comments',1),(5,4,4,'items-num.items','items',1),(6,4,5,'items-num.items','items',2),(7,4,6,'items-num.items','items',3),(8,5,7,'items-num.items','items',1),(9,5,8,'items-num.items','items',2),(10,5,9,'items-num.items','items',3),(11,5,1,'pops.pop-alert','alert',1),(12,6,10,'items-num.items','items',1),(13,6,11,'items-num.items','items',2),(14,6,12,'items-num.items','items',4),(15,8,13,'items-num.items','items',1),(16,8,14,'items-num.items','items',2),(17,8,15,'items-num.items','items',3),(18,9,16,'items-num.items','items',1),(19,10,17,'items-num.items','items',1),(20,11,18,'items-num.items','items',1),(21,12,2,'comments.comments','comments',1),(22,12,3,'comments.comments','comments',2),(23,12,4,'comments.comments','comments',3),(24,6,2,'pops.pop-alert','alert',1);
/*!40000 ALTER TABLE `sections_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions`
--

LOCK TABLES `strapi_api_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

LOCK TABLES `strapi_api_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release-action\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release-action\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"avatar\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"section\":{\"displayName\":\"sections\",\"type\":\"component\",\"repeatable\":true,\"component\":\"sections.sections\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"section\":{\"displayName\":\"sections\",\"type\":\"component\",\"repeatable\":true,\"component\":\"sections.sections\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"about\",\"connection\":\"default\",\"uid\":\"api::about.about\",\"apiName\":\"about\",\"globalId\":\"About\",\"actions\":{},\"lifecycles\":{}},\"api::about-startup.about-startup\":{\"kind\":\"singleType\",\"collectionName\":\"about_startups\",\"info\":{\"singularName\":\"about-startup\",\"pluralName\":\"about-startups\",\"displayName\":\"About-startup\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"about-side.card-equipo\",\"about-side.equipo\",\"about-side.estadistica\",\"about-side.gallery\",\"about-side.header\",\"about-side.numeros\",\"about-side.story\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"about_startups\",\"info\":{\"singularName\":\"about-startup\",\"pluralName\":\"about-startups\",\"displayName\":\"About-startup\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"about-side.card-equipo\",\"about-side.equipo\",\"about-side.estadistica\",\"about-side.gallery\",\"about-side.header\",\"about-side.numeros\",\"about-side.story\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"about-startup\",\"connection\":\"default\",\"uid\":\"api::about-startup.about-startup\",\"apiName\":\"about-startup\",\"globalId\":\"AboutStartup\",\"actions\":{},\"lifecycles\":{}},\"api::blog.blog\":{\"kind\":\"collectionType\",\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blog\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"richtext\"},\"author\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"publishedDate\":{\"type\":\"date\"},\"description\":{\"type\":\"text\",\"maxLength\":160},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"tags\":{\"type\":\"json\",\"options\":[\"UX\",\"UI\",\"Design\",\"News\",\"Themes\",\"Money\"],\"customField\":\"plugin::multi-select.multi-select\"},\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::review.review\",\"mappedBy\":\"blog\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"avatar\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"blogs\",\"info\":{\"singularName\":\"blog\",\"pluralName\":\"blogs\",\"displayName\":\"Blog\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"richtext\"},\"author\":{\"type\":\"string\"},\"category\":{\"type\":\"string\"},\"publishedDate\":{\"type\":\"date\"},\"description\":{\"type\":\"text\",\"maxLength\":160},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"tags\":{\"type\":\"customField\",\"options\":[\"UX\",\"UI\",\"Design\",\"News\",\"Themes\",\"Money\"],\"customField\":\"plugin::multi-select.multi-select\"},\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::review.review\",\"mappedBy\":\"blog\"},\"user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"avatar\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"blog\",\"connection\":\"default\",\"uid\":\"api::blog.blog\",\"apiName\":\"blog\",\"globalId\":\"Blog\",\"actions\":{},\"lifecycles\":{}},\"api::contac-us-pop.contac-us-pop\":{\"kind\":\"singleType\",\"collectionName\":\"contac_us_pops\",\"info\":{\"singularName\":\"contac-us-pop\",\"pluralName\":\"contac-us-pops\",\"displayName\":\"contacUsPop\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"paragraph\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"contac_us_pops\",\"info\":{\"singularName\":\"contac-us-pop\",\"pluralName\":\"contac-us-pops\",\"displayName\":\"contacUsPop\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"paragraph\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"contac-us-pop\",\"connection\":\"default\",\"uid\":\"api::contac-us-pop.contac-us-pop\",\"apiName\":\"contac-us-pop\",\"globalId\":\"ContacUsPop\",\"actions\":{},\"lifecycles\":{}},\"api::customer-storie.customer-storie\":{\"kind\":\"singleType\",\"collectionName\":\"customer_stories\",\"info\":{\"singularName\":\"customer-storie\",\"pluralName\":\"customer-stories\",\"displayName\":\"Customer-storie\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"customers.card-relatos\",\"customers.contacto\",\"customers.relatos\",\"customers.titular\",\"web-basic.socios-iconos\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"customer_stories\",\"info\":{\"singularName\":\"customer-storie\",\"pluralName\":\"customer-stories\",\"displayName\":\"Customer-storie\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"customers.card-relatos\",\"customers.contacto\",\"customers.relatos\",\"customers.titular\",\"web-basic.socios-iconos\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"customer-storie\",\"connection\":\"default\",\"uid\":\"api::customer-storie.customer-storie\",\"apiName\":\"customer-storie\",\"globalId\":\"CustomerStorie\",\"actions\":{},\"lifecycles\":{}},\"api::enterprise.enterprise\":{\"kind\":\"singleType\",\"collectionName\":\"enterprises\",\"info\":{\"singularName\":\"enterprise\",\"pluralName\":\"enterprises\",\"displayName\":\"Enterprise\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"enterprise.button\",\"enterprise.cards\",\"enterprise.compatibility-card\",\"enterprise.compatibility\",\"enterprise.header\",\"enterprise.partners\",\"enterprise.resenas\",\"enterprise.reviews\",\"enterprise.solutions\",\"enterprise.video-section\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"enterprises\",\"info\":{\"singularName\":\"enterprise\",\"pluralName\":\"enterprises\",\"displayName\":\"Enterprise\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"enterprise.button\",\"enterprise.cards\",\"enterprise.compatibility-card\",\"enterprise.compatibility\",\"enterprise.header\",\"enterprise.partners\",\"enterprise.resenas\",\"enterprise.reviews\",\"enterprise.solutions\",\"enterprise.video-section\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"enterprise\",\"connection\":\"default\",\"uid\":\"api::enterprise.enterprise\",\"apiName\":\"enterprise\",\"globalId\":\"Enterprise\",\"actions\":{},\"lifecycles\":{}},\"api::faq.faq\":{\"kind\":\"singleType\",\"collectionName\":\"faqs\",\"info\":{\"singularName\":\"faq\",\"pluralName\":\"faqs\",\"displayName\":\"Faq\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"FAQ\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"faqs\",\"info\":{\"singularName\":\"faq\",\"pluralName\":\"faqs\",\"displayName\":\"Faq\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"FAQ\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"faq\",\"connection\":\"default\",\"uid\":\"api::faq.faq\",\"apiName\":\"faq\",\"globalId\":\"Faq\",\"actions\":{},\"lifecycles\":{}},\"api::helpcenter.helpcenter\":{\"kind\":\"singleType\",\"collectionName\":\"helpcenters\",\"info\":{\"singularName\":\"helpcenter\",\"pluralName\":\"helpcenters\",\"displayName\":\"HelpCenter\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"FAQpage\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"helpcenters\",\"info\":{\"singularName\":\"helpcenter\",\"pluralName\":\"helpcenters\",\"displayName\":\"HelpCenter\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"FAQpage\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"helpcenter\",\"connection\":\"default\",\"uid\":\"api::helpcenter.helpcenter\",\"apiName\":\"helpcenter\",\"globalId\":\"Helpcenter\",\"actions\":{},\"lifecycles\":{}},\"api::home.home\":{\"kind\":\"singleType\",\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"homepage\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"homes\",\"info\":{\"singularName\":\"home\",\"pluralName\":\"homes\",\"displayName\":\"Home\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"homepage\":{\"type\":\"dynamiczone\",\"components\":[\"sections.sections\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"home\",\"connection\":\"default\",\"uid\":\"api::home.home\",\"apiName\":\"home\",\"globalId\":\"Home\",\"actions\":{},\"lifecycles\":{}},\"api::logistic.logistic\":{\"kind\":\"singleType\",\"collectionName\":\"logistics\",\"info\":{\"singularName\":\"logistic\",\"pluralName\":\"logistics\",\"displayName\":\"Logistics\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"sections\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::section.section\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"logistics\",\"info\":{\"singularName\":\"logistic\",\"pluralName\":\"logistics\",\"displayName\":\"Logistics\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"sections\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::section.section\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"logistic\",\"connection\":\"default\",\"uid\":\"api::logistic.logistic\",\"apiName\":\"logistic\",\"globalId\":\"Logistic\",\"actions\":{},\"lifecycles\":{}},\"api::question.question\":{\"kind\":\"collectionType\",\"collectionName\":\"questions\",\"info\":{\"singularName\":\"question\",\"pluralName\":\"questions\",\"displayName\":\"questions\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\"},\"answer\":{\"type\":\"blocks\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"questions\",\"info\":{\"singularName\":\"question\",\"pluralName\":\"questions\",\"displayName\":\"questions\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\"},\"answer\":{\"type\":\"blocks\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"question\",\"connection\":\"default\",\"uid\":\"api::question.question\",\"apiName\":\"question\",\"globalId\":\"Question\",\"actions\":{},\"lifecycles\":{}},\"api::review.review\":{\"kind\":\"collectionType\",\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"review\":{\"type\":\"text\"},\"reviewer\":{\"type\":\"string\"},\"blog\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::blog.blog\",\"inversedBy\":\"reviews\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"review\":{\"type\":\"text\"},\"reviewer\":{\"type\":\"string\"},\"blog\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::blog.blog\",\"inversedBy\":\"reviews\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"review\",\"connection\":\"default\",\"uid\":\"api::review.review\",\"apiName\":\"review\",\"globalId\":\"Review\",\"actions\":{},\"lifecycles\":{}},\"api::section.section\":{\"kind\":\"collectionType\",\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"Sections\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"video\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"description\":{\"type\":\"text\"},\"items\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"items-num.items\"},\"section_name\":{\"type\":\"string\"},\"comments\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"comments.comments\"},\"alert\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"pops.pop-alert\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sections\",\"info\":{\"singularName\":\"section\",\"pluralName\":\"sections\",\"displayName\":\"Sections\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"video\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"description\":{\"type\":\"text\"},\"items\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"items-num.items\"},\"section_name\":{\"type\":\"string\"},\"comments\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"comments.comments\"},\"alert\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"pops.pop-alert\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"section\",\"connection\":\"default\",\"uid\":\"api::section.section\",\"apiName\":\"section\",\"globalId\":\"Section\",\"actions\":{},\"lifecycles\":{}},\"api::term.term\":{\"kind\":\"singleType\",\"collectionName\":\"terms\",\"info\":{\"singularName\":\"term\",\"pluralName\":\"terms\",\"displayName\":\"terms\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"questions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::question.question\"},\"subtitle\":{\"type\":\"string\"},\"contactUs\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"pops.contac-us-pop\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"terms\",\"info\":{\"singularName\":\"term\",\"pluralName\":\"terms\",\"displayName\":\"terms\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"questions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::question.question\"},\"subtitle\":{\"type\":\"string\"},\"contactUs\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"pops.contac-us-pop\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"term\",\"connection\":\"default\",\"uid\":\"api::term.term\",\"apiName\":\"term\",\"globalId\":\"Term\",\"actions\":{},\"lifecycles\":{}},\"api::web-basic.web-basic\":{\"kind\":\"singleType\",\"collectionName\":\"web_basics\",\"info\":{\"singularName\":\"web-basic\",\"pluralName\":\"web-basics\",\"displayName\":\"Web-basic\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"web-basic.acerca\",\"web-basic.caracteristicas\",\"web-basic.card-caracteristica\",\"web-basic.card-pregunta\",\"web-basic.card-servicios\",\"web-basic.contacto\",\"web-basic.encabezado\",\"web-basic.faq\",\"web-basic.icono\",\"web-basic.lista\",\"web-basic.servicios\",\"web-basic.socios-iconos\",\"web-basic.usuarios\",\"enterprise.resenas\",\"web-basic.card-planes\",\"web-basic.precios\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"web_basics\",\"info\":{\"singularName\":\"web-basic\",\"pluralName\":\"web-basics\",\"displayName\":\"Web-basic\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"PageContent\":{\"type\":\"dynamiczone\",\"components\":[\"web-basic.acerca\",\"web-basic.caracteristicas\",\"web-basic.card-caracteristica\",\"web-basic.card-pregunta\",\"web-basic.card-servicios\",\"web-basic.contacto\",\"web-basic.encabezado\",\"web-basic.faq\",\"web-basic.icono\",\"web-basic.lista\",\"web-basic.servicios\",\"web-basic.socios-iconos\",\"web-basic.usuarios\",\"enterprise.resenas\",\"web-basic.card-planes\",\"web-basic.precios\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"web-basic\",\"connection\":\"default\",\"uid\":\"api::web-basic.web-basic\",\"apiName\":\"web-basic\",\"globalId\":\"WebBasic\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::permission','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::role','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::user','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::api-token-permission','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::admin::transfer-token','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::admin::transfer-token-permission','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"locale\":{\"edit\":{\"label\":\"locale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"locale\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"locale\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"locale\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}','object',NULL,NULL),(11,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}','object',NULL,NULL),(12,'plugin_content_manager_configuration_content_types::plugin::content-releases.release','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}','object',NULL,NULL),(13,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}','object',NULL,NULL),(14,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}','object',NULL,NULL),(15,'plugin_content_manager_configuration_content_types::admin::api-token','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}','object',NULL,NULL),(16,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}','object',NULL,NULL),(17,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(18,'plugin_upload_view_configuration','{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}','object',NULL,NULL),(19,'plugin_upload_metrics','{\"weeklySchedule\":\"53 59 14 * * 1\",\"lastWeeklyUpdate\":1720472393028}','object',NULL,NULL),(20,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}','object',NULL,NULL),(21,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(22,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(23,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_content_types::api::blog.blog','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"publishedDate\":{\"edit\":{\"label\":\"publishedDate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"publishedDate\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"tags\":{\"edit\":{\"label\":\"tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tags\",\"searchable\":false,\"sortable\":false}},\"reviews\":{\"edit\":{\"label\":\"reviews\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"reviewer\"},\"list\":{\"label\":\"reviews\",\"searchable\":false,\"sortable\":false}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"author\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"publishedDate\",\"size\":4},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"tags\",\"size\":12}],[{\"name\":\"reviews\",\"size\":6},{\"name\":\"user\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6}]]},\"uid\":\"api::blog.blog\"}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::api::review.review','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"reviewer\",\"defaultSortBy\":\"reviewer\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"review\":{\"edit\":{\"label\":\"review\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"review\",\"searchable\":true,\"sortable\":true}},\"reviewer\":{\"edit\":{\"label\":\"reviewer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"reviewer\",\"searchable\":true,\"sortable\":true}},\"blog\":{\"edit\":{\"label\":\"blog\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"blog\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"review\",\"reviewer\",\"createdAt\"],\"edit\":[[{\"name\":\"review\",\"size\":6},{\"name\":\"reviewer\",\"size\":6}],[{\"name\":\"blog\",\"size\":6}]]},\"uid\":\"api::review.review\"}','object',NULL,NULL),(29,'plugin_content_manager_configuration_components::enterprise.header','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"primerBoton\":{\"edit\":{\"label\":\"primerBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"primerBoton\",\"searchable\":false,\"sortable\":false}},\"segundoBoton\":{\"edit\":{\"label\":\"segundoBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"segundoBoton\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"primerBoton\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"primerBoton\",\"size\":12}],[{\"name\":\"segundoBoton\",\"size\":12}]]},\"uid\":\"enterprise.header\",\"isComponent\":true}','object',NULL,NULL),(30,'plugin_content_manager_configuration_components::enterprise.button','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"link\",\"titulo\"],\"edit\":[[{\"name\":\"link\",\"size\":6},{\"name\":\"titulo\",\"size\":6}]]},\"uid\":\"enterprise.button\",\"isComponent\":true}','object',NULL,NULL),(32,'plugin_content_manager_configuration_components::enterprise.video-section','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"video\"],\"edit\":[[{\"name\":\"video\",\"size\":6}]]},\"uid\":\"enterprise.video-section\",\"isComponent\":true}','object',NULL,NULL),(33,'plugin_content_manager_configuration_components::enterprise.partners','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"iconos\":{\"edit\":{\"label\":\"iconos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iconos\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"iconos\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"iconos\",\"size\":6}]]},\"uid\":\"enterprise.partners\",\"isComponent\":true}','object',NULL,NULL),(37,'plugin_content_manager_configuration_components::enterprise.reviews','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"comentario\":{\"edit\":{\"label\":\"comentario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comentario\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"comentario\",\"nombre\"],\"edit\":[[{\"name\":\"avatar\",\"size\":6},{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"comentario\",\"size\":6},{\"name\":\"nombre\",\"size\":6}]]},\"uid\":\"enterprise.reviews\",\"isComponent\":true}','object',NULL,NULL),(39,'plugin_content_manager_configuration_components::about-side.header','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}]]},\"uid\":\"about-side.header\",\"isComponent\":true}','object',NULL,NULL),(40,'plugin_content_manager_configuration_components::about-side.gallery','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"galeria\":{\"edit\":{\"label\":\"galeria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"galeria\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"galeria\"],\"edit\":[[{\"name\":\"galeria\",\"size\":6}]]},\"uid\":\"about-side.gallery\",\"isComponent\":true}','object',NULL,NULL),(42,'plugin_content_manager_configuration_components::about-side.story','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"iconos\":{\"edit\":{\"label\":\"iconos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iconos\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"descripcion\",\"iconos\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"iconos\",\"size\":6}]]},\"uid\":\"about-side.story\",\"isComponent\":true}','object',NULL,NULL),(45,'plugin_content_manager_configuration_components::enterprise.solutions','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"descripcion\",\"card\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"card\",\"size\":12}]]},\"uid\":\"enterprise.solutions\",\"isComponent\":true}','object',NULL,NULL),(46,'plugin_content_manager_configuration_components::enterprise.cards','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"imagen\":{\"edit\":{\"label\":\"imagen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imagen\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"descripcion\",\"imagen\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"imagen\",\"size\":6}]]},\"uid\":\"enterprise.cards\",\"isComponent\":true}','object',NULL,NULL),(47,'plugin_content_manager_configuration_components::enterprise.compatibility-card','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"icono\":{\"edit\":{\"label\":\"icono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icono\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"descripcion\",\"icono\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"icono\",\"size\":6}]]},\"uid\":\"enterprise.compatibility-card\",\"isComponent\":true}','object',NULL,NULL),(48,'plugin_content_manager_configuration_components::enterprise.compatibility','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"navegadores\":{\"edit\":{\"label\":\"navegadores\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"navegadores\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"navegadores\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"navegadores\",\"size\":12}]]},\"uid\":\"enterprise.compatibility\",\"isComponent\":true}','object',NULL,NULL),(50,'plugin_content_manager_configuration_components::about-side.numeros','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"numeros\":{\"edit\":{\"label\":\"numeros\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"numeros\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"numeros\"],\"edit\":[[{\"name\":\"numeros\",\"size\":12}]]},\"uid\":\"about-side.numeros\",\"isComponent\":true}','object',NULL,NULL),(51,'plugin_content_manager_configuration_components::about-side.estadistica','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}]]},\"uid\":\"about-side.estadistica\",\"isComponent\":true}','object',NULL,NULL),(52,'plugin_content_manager_configuration_components::about-side.equipo','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"card\"],\"edit\":[[{\"name\":\"card\",\"size\":12}]]},\"uid\":\"about-side.equipo\",\"isComponent\":true}','object',NULL,NULL),(53,'plugin_content_manager_configuration_components::about-side.card-equipo','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"facebook\":{\"edit\":{\"label\":\"facebook\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"facebook\",\"searchable\":true,\"sortable\":true}},\"x\":{\"edit\":{\"label\":\"x\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"x\",\"searchable\":true,\"sortable\":true}},\"github\":{\"edit\":{\"label\":\"github\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"github\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"avatar\",\"nombre\",\"titulo\"],\"edit\":[[{\"name\":\"avatar\",\"size\":6},{\"name\":\"nombre\",\"size\":6}],[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"facebook\",\"size\":6},{\"name\":\"x\",\"size\":6}],[{\"name\":\"github\",\"size\":6}]]},\"uid\":\"about-side.card-equipo\",\"isComponent\":true}','object',NULL,NULL),(54,'plugin_content_manager_configuration_components::enterprise.resenas','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"resena\":{\"edit\":{\"label\":\"resena\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resena\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"resena\"],\"edit\":[[{\"name\":\"resena\",\"size\":12}]]},\"uid\":\"enterprise.resenas\",\"isComponent\":true}','object',NULL,NULL),(55,'plugin_content_manager_configuration_components::web-basic.encabezado','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"tituloResaltado\":{\"edit\":{\"label\":\"tituloResaltado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tituloResaltado\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"primerBoton\":{\"edit\":{\"label\":\"primerBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"primerBoton\",\"searchable\":false,\"sortable\":false}},\"segundoBoton\":{\"edit\":{\"label\":\"segundoBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"segundoBoton\",\"searchable\":false,\"sortable\":false}},\"imagen\":{\"edit\":{\"label\":\"imagen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imagen\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"tituloResaltado\",\"descripcion\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"tituloResaltado\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"primerBoton\",\"size\":12}],[{\"name\":\"segundoBoton\",\"size\":12}],[{\"name\":\"imagen\",\"size\":6}]]},\"uid\":\"web-basic.encabezado\",\"isComponent\":true}','object',NULL,NULL),(56,'plugin_content_manager_configuration_components::web-basic.card-servicios','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"icono\":{\"edit\":{\"label\":\"icono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icono\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"icono\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"icono\",\"size\":6}]]},\"uid\":\"web-basic.card-servicios\",\"isComponent\":true}','object',NULL,NULL),(57,'plugin_content_manager_configuration_components::web-basic.servicios','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"card\":{\"edit\":{\"label\":\"card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"card\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"card\"],\"edit\":[[{\"name\":\"card\",\"size\":12}]]},\"uid\":\"web-basic.servicios\",\"isComponent\":true}','object',NULL,NULL),(58,'plugin_content_manager_configuration_components::web-basic.icono','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"icono\":{\"edit\":{\"label\":\"icono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icono\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"icono\"],\"edit\":[[{\"name\":\"icono\",\"size\":6}]]},\"uid\":\"web-basic.icono\",\"isComponent\":true}','object',NULL,NULL),(59,'plugin_content_manager_configuration_components::web-basic.socios-iconos','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"iconos\":{\"edit\":{\"label\":\"iconos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iconos\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"iconos\"],\"edit\":[[{\"name\":\"iconos\",\"size\":6}]]},\"uid\":\"web-basic.socios-iconos\",\"isComponent\":true}','object',NULL,NULL),(60,'plugin_content_manager_configuration_components::web-basic.contacto','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"tituloResaltado\":{\"edit\":{\"label\":\"tituloResaltado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tituloResaltado\",\"searchable\":true,\"sortable\":true}},\"caracteristicas\":{\"edit\":{\"label\":\"caracteristicas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caracteristicas\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"tituloResaltado\",\"caracteristicas\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"tituloResaltado\",\"size\":6}],[{\"name\":\"caracteristicas\",\"size\":12}],[{\"name\":\"descripcion\",\"size\":6}]]},\"uid\":\"web-basic.contacto\",\"isComponent\":true}','object',NULL,NULL),(61,'plugin_content_manager_configuration_components::web-basic.lista','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"caracteristica\",\"defaultSortBy\":\"caracteristica\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"caracteristica\":{\"edit\":{\"label\":\"caracteristica\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caracteristica\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"caracteristica\"],\"edit\":[[{\"name\":\"caracteristica\",\"size\":6}]]},\"uid\":\"web-basic.lista\",\"isComponent\":true}','object',NULL,NULL),(62,'plugin_content_manager_configuration_components::web-basic.acerca','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"tituloResaltado\",\"defaultSortBy\":\"tituloResaltado\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"tituloResaltado\":{\"edit\":{\"label\":\"tituloResaltado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tituloResaltado\",\"searchable\":true,\"sortable\":true}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"caracteristicas\":{\"edit\":{\"label\":\"caracteristicas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caracteristicas\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tituloResaltado\",\"titulo\",\"caracteristicas\"],\"edit\":[[{\"name\":\"tituloResaltado\",\"size\":6},{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"caracteristicas\",\"size\":12}],[{\"name\":\"descripcion\",\"size\":6}]]},\"uid\":\"web-basic.acerca\",\"isComponent\":true}','object',NULL,NULL),(63,'plugin_content_manager_configuration_components::web-basic.usuarios','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"primerBoton\":{\"edit\":{\"label\":\"primerBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"primerBoton\",\"searchable\":false,\"sortable\":false}},\"segundoBoton\":{\"edit\":{\"label\":\"segundoBoton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"segundoBoton\",\"searchable\":false,\"sortable\":false}},\"iconos\":{\"edit\":{\"label\":\"iconos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iconos\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"descripcion\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"primerBoton\",\"size\":12}],[{\"name\":\"segundoBoton\",\"size\":12}],[{\"name\":\"iconos\",\"size\":6}]]},\"uid\":\"web-basic.usuarios\",\"isComponent\":true}','object',NULL,NULL),(64,'plugin_content_manager_configuration_components::web-basic.caracteristicas','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}},\"caracteristicas\":{\"edit\":{\"label\":\"caracteristicas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caracteristicas\",\"searchable\":false,\"sortable\":false}},\"imagen\":{\"edit\":{\"label\":\"imagen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imagen\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"descripcion\",\"caracteristicas\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"descripcion\",\"size\":6}],[{\"name\":\"caracteristicas\",\"size\":12}],[{\"name\":\"imagen\",\"size\":6}]]},\"uid\":\"web-basic.caracteristicas\",\"isComponent\":true}','object',NULL,NULL),(65,'plugin_content_manager_configuration_components::web-basic.card-caracteristica','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"sufijo\":{\"edit\":{\"label\":\"sufijo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sufijo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"sufijo\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"sufijo\",\"size\":6}]]},\"uid\":\"web-basic.card-caracteristica\",\"isComponent\":true}','object',NULL,NULL),(68,'plugin_content_manager_configuration_components::web-basic.card-pregunta','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}]]},\"uid\":\"web-basic.card-pregunta\",\"isComponent\":true}','object',NULL,NULL),(69,'plugin_content_manager_configuration_components::web-basic.faq','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"preguntas\":{\"edit\":{\"label\":\"preguntas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preguntas\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"preguntas\"],\"edit\":[[{\"name\":\"preguntas\",\"size\":12}]]},\"uid\":\"web-basic.faq\",\"isComponent\":true}','object',NULL,NULL),(70,'plugin_content_manager_configuration_content_types::api::web-basic.web-basic','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"PageContent\":{\"edit\":{\"label\":\"PageContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageContent\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"PageContent\",\"size\":12}]]},\"uid\":\"api::web-basic.web-basic\"}','object',NULL,NULL),(71,'plugin_content_manager_configuration_components::web-basic.precios','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"planes\":{\"edit\":{\"label\":\"planes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"planes\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"planes\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"planes\",\"size\":12}]]},\"uid\":\"web-basic.precios\",\"isComponent\":true}','object',NULL,NULL),(72,'plugin_content_manager_configuration_components::web-basic.card-planes','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"precio\":{\"edit\":{\"label\":\"precio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"precio\",\"searchable\":true,\"sortable\":true}},\"caracteristicas\":{\"edit\":{\"label\":\"caracteristicas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caracteristicas\",\"searchable\":false,\"sortable\":false}},\"resaltar\":{\"edit\":{\"label\":\"resaltar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resaltar\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"precio\",\"caracteristicas\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"precio\",\"size\":6}],[{\"name\":\"caracteristicas\",\"size\":12}],[{\"name\":\"resaltar\",\"size\":4}]]},\"uid\":\"web-basic.card-planes\",\"isComponent\":true}','object',NULL,NULL),(73,'plugin_content_manager_configuration_components::customers.titular','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}]]},\"uid\":\"customers.titular\",\"isComponent\":true}','object',NULL,NULL),(74,'plugin_content_manager_configuration_components::customers.relatos','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"empresas\":{\"edit\":{\"label\":\"empresas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"empresas\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"empresas\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6}],[{\"name\":\"empresas\",\"size\":12}]]},\"uid\":\"customers.relatos\",\"isComponent\":true}','object',NULL,NULL),(75,'plugin_content_manager_configuration_components::customers.card-relatos','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descripcion\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"imagen\":{\"edit\":{\"label\":\"imagen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imagen\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descripcion\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"imagen\",\"logo\",\"descripcion\"],\"edit\":[[{\"name\":\"imagen\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}]]},\"uid\":\"customers.card-relatos\",\"isComponent\":true}','object',NULL,NULL),(76,'plugin_content_manager_configuration_components::customers.contacto','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"titulo\",\"defaultSortBy\":\"titulo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"titulo\",\"searchable\":true,\"sortable\":true}},\"subTitulo\":{\"edit\":{\"label\":\"subTitulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTitulo\",\"searchable\":true,\"sortable\":true}},\"CTO\":{\"edit\":{\"label\":\"CTO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CTO\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"titulo\",\"subTitulo\",\"CTO\"],\"edit\":[[{\"name\":\"titulo\",\"size\":6},{\"name\":\"subTitulo\",\"size\":6}],[{\"name\":\"CTO\",\"size\":12}]]},\"uid\":\"customers.contacto\",\"isComponent\":true}','object',NULL,NULL),(77,'plugin_content_manager_configuration_content_types::api::customer-storie.customer-storie','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"PageContent\":{\"edit\":{\"label\":\"PageContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageContent\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"PageContent\",\"size\":12}]]},\"uid\":\"api::customer-storie.customer-storie\"}','object',NULL,NULL),(78,'plugin_content_manager_configuration_content_types::api::enterprise.enterprise','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"PageContent\":{\"edit\":{\"label\":\"PageContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageContent\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"PageContent\",\"size\":12}]]},\"uid\":\"api::enterprise.enterprise\"}','object',NULL,NULL),(94,'plugin_content_manager_configuration_content_types::api::about-startup.about-startup','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"PageContent\":{\"edit\":{\"label\":\"PageContent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PageContent\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"PageContent\",\"size\":12}]]},\"uid\":\"api::about-startup.about-startup\"}','object',NULL,NULL),(95,'plugin_content_manager_configuration_components::comments.comments','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"state\":{\"edit\":{\"label\":\"state\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"state\",\"searchable\":true,\"sortable\":true}},\"userName\":{\"edit\":{\"label\":\"userName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userName\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"avatar\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6},{\"name\":\"state\",\"size\":6}],[{\"name\":\"userName\",\"size\":6}]]},\"uid\":\"comments.comments\",\"isComponent\":true}','object',NULL,NULL),(96,'plugin_content_manager_configuration_components::generics.accordion','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"button\",\"size\":12}]]},\"uid\":\"generics.accordion\",\"isComponent\":true}','object',NULL,NULL),(97,'plugin_content_manager_configuration_components::generics.button','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]},\"uid\":\"generics.button\",\"isComponent\":true}','object',NULL,NULL),(98,'plugin_content_manager_configuration_components::items-num.items','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"images\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"images\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"button\",\"size\":12}]]},\"uid\":\"items-num.items\",\"isComponent\":true}','object',NULL,NULL),(99,'plugin_content_manager_configuration_components::pops.contac-us-pop','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"paragraph\":{\"edit\":{\"label\":\"paragraph\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paragraph\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"email\",\"paragraph\"],\"edit\":[[{\"name\":\"question\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"paragraph\",\"size\":6},{\"name\":\"address\",\"size\":6}]]},\"uid\":\"pops.contac-us-pop\",\"isComponent\":true}','object',NULL,NULL),(100,'plugin_content_manager_configuration_components::pops.pop-alert','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"pops.pop-alert\",\"isComponent\":true}','object',NULL,NULL),(101,'plugin_content_manager_configuration_components::sections.sections','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image1\":{\"edit\":{\"label\":\"image1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image1\",\"searchable\":false,\"sortable\":false}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}},\"section_name\":{\"edit\":{\"label\":\"section_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"section_name\",\"searchable\":true,\"sortable\":true}},\"accordion\":{\"edit\":{\"label\":\"accordion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accordion\",\"searchable\":false,\"sortable\":false}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image1\",\"size\":6}],[{\"name\":\"video\",\"size\":6}],[{\"name\":\"items\",\"size\":12}],[{\"name\":\"section_name\",\"size\":6}],[{\"name\":\"accordion\",\"size\":12}],[{\"name\":\"button\",\"size\":12}]]},\"uid\":\"sections.sections\",\"isComponent\":true}','object',NULL,NULL),(102,'plugin_content_manager_configuration_content_types::api::about.about','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"section\":{\"edit\":{\"label\":\"section\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"section\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"section\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"section\",\"size\":12}]]},\"uid\":\"api::about.about\"}','object',NULL,NULL),(103,'plugin_content_manager_configuration_content_types::api::contac-us-pop.contac-us-pop','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"paragraph\":{\"edit\":{\"label\":\"paragraph\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paragraph\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"paragraph\",\"email\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"paragraph\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"address\",\"size\":6}]]},\"uid\":\"api::contac-us-pop.contac-us-pop\"}','object',NULL,NULL),(104,'plugin_content_manager_configuration_content_types::api::faq.faq','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"FAQ\":{\"edit\":{\"label\":\"FAQ\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FAQ\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"FAQ\",\"size\":12}]]},\"uid\":\"api::faq.faq\"}','object',NULL,NULL),(105,'plugin_content_manager_configuration_content_types::api::helpcenter.helpcenter','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"FAQpage\":{\"edit\":{\"label\":\"FAQpage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FAQpage\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"FAQpage\",\"size\":12}]]},\"uid\":\"api::helpcenter.helpcenter\"}','object',NULL,NULL),(106,'plugin_content_manager_configuration_content_types::api::home.home','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"homepage\":{\"edit\":{\"label\":\"homepage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"homepage\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"homepage\",\"size\":12}]]},\"uid\":\"api::home.home\"}','object',NULL,NULL),(107,'plugin_content_manager_configuration_content_types::api::logistic.logistic','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"sections\":{\"edit\":{\"label\":\"sections\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sections\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"sections\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"sections\",\"size\":6}]]},\"uid\":\"api::logistic.logistic\"}','object',NULL,NULL),(108,'plugin_content_manager_configuration_content_types::api::question.question','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":true,\"sortable\":true}},\"answer\":{\"edit\":{\"label\":\"answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"answer\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"question\",\"size\":6}],[{\"name\":\"answer\",\"size\":12}]]},\"uid\":\"api::question.question\"}','object',NULL,NULL),(109,'plugin_content_manager_configuration_content_types::api::section.section','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}},\"section_name\":{\"edit\":{\"label\":\"section_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"section_name\",\"searchable\":true,\"sortable\":true}},\"comments\":{\"edit\":{\"label\":\"comments\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comments\",\"searchable\":false,\"sortable\":false}},\"alert\":{\"edit\":{\"label\":\"alert\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alert\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"video\",\"size\":6}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"items\",\"size\":12}],[{\"name\":\"section_name\",\"size\":6}],[{\"name\":\"comments\",\"size\":12}],[{\"name\":\"alert\",\"size\":12}]]},\"uid\":\"api::section.section\"}','object',NULL,NULL),(110,'plugin_content_manager_configuration_content_types::api::term.term','{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"questions\":{\"edit\":{\"label\":\"questions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"questions\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"contactUs\":{\"edit\":{\"label\":\"contactUs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contactUs\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"questions\",\"subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"questions\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"contactUs\",\"size\":12}]]},\"uid\":\"api::term.term\"}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (93,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"action_parameters\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_releases\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"released_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"scheduled_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"timezone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_entry_valid\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"abouts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"abouts_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"abouts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"abouts_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"abouts_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"about_startups\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"about_startups_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"about_startups_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"about_startups_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"about_startups_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"blogs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"author\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"published_date\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tags\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"blogs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"blogs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"blogs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"blogs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"contac_us_pops\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paragraph\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"address\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"contac_us_pops_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"contac_us_pops_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"contac_us_pops_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"contac_us_pops_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"customer_stories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"customer_stories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"customer_stories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"customer_stories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"customer_stories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"enterprises\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"enterprises_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"enterprises_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"enterprises_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"enterprises_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"faqs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"faqs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"faqs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"faqs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"faqs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"helpcenters\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"helpcenters_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"helpcenters_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"helpcenters_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"helpcenters_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"homes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"homes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"logistics\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"logistics_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"logistics_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"logistics_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"logistics_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"questions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"question\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"answer\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"questions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"questions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"questions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"questions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"review\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reviewer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"reviews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"reviews_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sections_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sections_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"terms\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"terms_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"terms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"terms_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"terms_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"web_basics\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"web_basics_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"web_basics_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"web_basics_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"web_basics_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_about_side_card_equipos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nombre\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"descripcion\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"facebook\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"x\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"github\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_equipos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_estadisticas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_galleries\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_header_s\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sub_titulo\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_numeros\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_about_side_stories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_comments_comments\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"state\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_customers_card_relatos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"descripcion\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_customers_contactos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sub_titulo\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_customers_relatos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_customers_titulars\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_buttons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"link\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"descripcion\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_compatibility_cards\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_compatibilities\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_header_s\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sub_titulo\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_partners\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sub_titulo\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_resenas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_reviews\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"comentario\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nombre\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_solutions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_enterprise_video_sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_generics_accordions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_generics_buttons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_items_num_items\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_pops_contac_us_pops\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"question\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"paragraph\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_pops_pop_alerts\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_sections\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_acercas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo_resaltado\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_caracteristicas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_card_caracteristicas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sufijo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_card_planes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"precio\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"resaltar\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_card_preguntas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_card_servicios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"sub_titulo\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_contactos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"titulo_resaltado\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_encabezados\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"titulo_resaltado\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_faqs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_iconos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_listas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"caracteristica\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_precios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_servicios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_socios_iconos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_web_basic_usuarios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sub_titulo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"descripcion\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions_release_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"release_action_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_action_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_unique\", \"type\": \"unique\", \"columns\": [\"release_action_id\", \"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_order_inv_fk\", \"columns\": [\"release_action_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_release_actions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_releases\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"abouts_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"abouts_field_index\", \"columns\": [\"field\"]}, {\"name\": \"abouts_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"abouts_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"abouts_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"abouts_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"abouts\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"about_startups_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"about_startups_field_index\", \"columns\": [\"field\"]}, {\"name\": \"about_startups_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"about_startups_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"about_startups_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"about_startups_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"about_startups\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"blogs_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"blog_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"blogs_user_links_fk\", \"columns\": [\"blog_id\"]}, {\"name\": \"blogs_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"blogs_user_links_unique\", \"type\": \"unique\", \"columns\": [\"blog_id\", \"user_id\"]}], \"foreignKeys\": [{\"name\": \"blogs_user_links_fk\", \"columns\": [\"blog_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"blogs\", \"referencedColumns\": [\"id\"]}, {\"name\": \"blogs_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"customer_stories_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"customer_stories_field_index\", \"columns\": [\"field\"]}, {\"name\": \"customer_stories_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"customer_stories_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"customer_stories_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"customer_stories_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"customer_stories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"enterprises_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"enterprises_field_index\", \"columns\": [\"field\"]}, {\"name\": \"enterprises_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"enterprises_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"enterprises_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"enterprises_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"enterprises\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"faqs_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"faqs_field_index\", \"columns\": [\"field\"]}, {\"name\": \"faqs_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"faqs_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"faqs_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"faqs_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"faqs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"helpcenters_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"helpcenters_field_index\", \"columns\": [\"field\"]}, {\"name\": \"helpcenters_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"helpcenters_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"helpcenters_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"helpcenters_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"helpcenters\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"homes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"homes_field_index\", \"columns\": [\"field\"]}, {\"name\": \"homes_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"homes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"homes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"homes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"logistics_sections_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"logistic_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"section_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"logistics_sections_links_fk\", \"columns\": [\"logistic_id\"]}, {\"name\": \"logistics_sections_links_inv_fk\", \"columns\": [\"section_id\"]}, {\"name\": \"logistics_sections_links_unique\", \"type\": \"unique\", \"columns\": [\"logistic_id\", \"section_id\"]}, {\"name\": \"logistics_sections_links_order_fk\", \"columns\": [\"section_order\"]}], \"foreignKeys\": [{\"name\": \"logistics_sections_links_fk\", \"columns\": [\"logistic_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"logistics\", \"referencedColumns\": [\"id\"]}, {\"name\": \"logistics_sections_links_inv_fk\", \"columns\": [\"section_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews_blog_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"review_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blog_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"review_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_blog_links_fk\", \"columns\": [\"review_id\"]}, {\"name\": \"reviews_blog_links_inv_fk\", \"columns\": [\"blog_id\"]}, {\"name\": \"reviews_blog_links_unique\", \"type\": \"unique\", \"columns\": [\"review_id\", \"blog_id\"]}, {\"name\": \"reviews_blog_links_order_inv_fk\", \"columns\": [\"review_order\"]}], \"foreignKeys\": [{\"name\": \"reviews_blog_links_fk\", \"columns\": [\"review_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"reviews\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_blog_links_inv_fk\", \"columns\": [\"blog_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"blogs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sections_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sections_field_index\", \"columns\": [\"field\"]}, {\"name\": \"sections_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"sections_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"sections_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"sections_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"terms_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"terms_field_index\", \"columns\": [\"field\"]}, {\"name\": \"terms_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"terms_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"terms_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"terms_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"terms\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"terms_questions_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"term_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"question_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"question_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"terms_questions_links_fk\", \"columns\": [\"term_id\"]}, {\"name\": \"terms_questions_links_inv_fk\", \"columns\": [\"question_id\"]}, {\"name\": \"terms_questions_links_unique\", \"type\": \"unique\", \"columns\": [\"term_id\", \"question_id\"]}, {\"name\": \"terms_questions_links_order_fk\", \"columns\": [\"question_order\"]}], \"foreignKeys\": [{\"name\": \"terms_questions_links_fk\", \"columns\": [\"term_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"terms\", \"referencedColumns\": [\"id\"]}, {\"name\": \"terms_questions_links_inv_fk\", \"columns\": [\"question_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"questions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"web_basics_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"web_basics_field_index\", \"columns\": [\"field\"]}, {\"name\": \"web_basics_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"web_basics_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"web_basics_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"web_basics_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"web_basics\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_about_side_equipos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_about_side_equipos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_about_side_equipos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_about_side_equipos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_about_side_equipos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_about_side_equipos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_about_side_equipos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_about_side_numeros_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_about_side_numeros_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_about_side_numeros_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_about_side_numeros_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_about_side_numeros_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_about_side_numeros_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_about_side_numeros\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_customers_contactos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_customers_contactos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_customers_contactos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_customers_contactos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_customers_contactos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_customers_contactos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_customers_contactos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_customers_relatos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_customers_relatos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_customers_relatos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_customers_relatos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_customers_relatos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_customers_relatos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_customers_relatos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_enterprise_compatibilities_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_enterprise_compatibilities_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_enterprise_compatibilities_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_enterprise_compatibilities_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_enterprise_compatibilities_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_enterprise_compatibilities_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_enterprise_compatibilities\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_enterprise_header_s_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_enterprise_header_s_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_enterprise_header_s_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_enterprise_header_s_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_enterprise_header_s_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_enterprise_header_s_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_enterprise_header_s\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_enterprise_resenas_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_enterprise_resenas_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_enterprise_resenas_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_enterprise_resenas_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_enterprise_resenas_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_enterprise_resenas_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_enterprise_resenas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_enterprise_solutions_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_enterprise_solutions_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_enterprise_solutions_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_enterprise_solutions_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_enterprise_solutions_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_enterprise_solutions_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_enterprise_solutions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_generics_accordions_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_generics_accordions_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_generics_accordions_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_generics_accordions_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_generics_accordions_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_generics_accordions_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_generics_accordions\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_items_num_items_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_items_num_items_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_items_num_items_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_items_num_items_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_items_num_items_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_items_num_items_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_items_num_items\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_sections_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_sections_sections_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_sections_sections_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_sections_sections_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_sections_sections_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_sections_sections_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_sections_sections\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_acercas_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_acercas_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_acercas_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_acercas_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_acercas_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_acercas_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_acercas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_caracteristicas_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_caracteristicas_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_caracteristicas_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_caracteristicas_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_caracteristicas_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_caracteristicas_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_caracteristicas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_card_planes_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_card_planes_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_card_planes_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_card_planes_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_card_planes_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_card_planes_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_card_planes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_contactos_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_contactos_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_contactos_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_contactos_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_contactos_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_contactos_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_contactos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_encabezados_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_encabezados_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_encabezados_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_encabezados_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_encabezados_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_encabezados_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_encabezados\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_faqs_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_faqs_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_faqs_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_faqs_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_faqs_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_faqs_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_faqs\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_precios_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_precios_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_precios_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_precios_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_precios_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_precios_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_precios\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_servicios_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_servicios_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_servicios_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_servicios_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_servicios_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_servicios_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_servicios\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_web_basic_usuarios_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_web_basic_usuarios_field_index\", \"columns\": [\"field\"]}, {\"name\": \"components_web_basic_usuarios_component_type_index\", \"columns\": [\"component_type\"]}, {\"name\": \"components_web_basic_usuarios_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_web_basic_usuarios_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_web_basic_usuarios_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_web_basic_usuarios\", \"referencedColumns\": [\"id\"]}]}]}','2024-07-08 14:58:28','56cc45a24128f492be6cc088ae98529f');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_release_actions`
--

DROP TABLE IF EXISTS `strapi_release_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_release_actions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `target_id` int unsigned DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_release_actions`
--

LOCK TABLES `strapi_release_actions` WRITE;
/*!40000 ALTER TABLE `strapi_release_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_release_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_release_actions_release_links`
--

DROP TABLE IF EXISTS `strapi_release_actions_release_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_release_actions_release_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `release_action_id` int unsigned DEFAULT NULL,
  `release_id` int unsigned DEFAULT NULL,
  `release_action_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`),
  CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_release_actions_release_links`
--

LOCK TABLES `strapi_release_actions_release_links` WRITE;
/*!40000 ALTER TABLE `strapi_release_actions_release_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_release_actions_release_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_releases`
--

DROP TABLE IF EXISTS `strapi_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_releases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_releases`
--

LOCK TABLES `strapi_releases` WRITE;
/*!40000 ALTER TABLE `strapi_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_transfer_token_permissions`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_transfer_token_permissions`
--

LOCK TABLES `strapi_transfer_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_transfer_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_transfer_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `transfer_token_permission_id` int unsigned DEFAULT NULL,
  `transfer_token_id` int unsigned DEFAULT NULL,
  `transfer_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`),
  CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_transfer_token_permissions_token_links`
--

LOCK TABLES `strapi_transfer_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_transfer_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_transfer_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_transfer_tokens`
--

DROP TABLE IF EXISTS `strapi_transfer_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_transfer_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_transfer_tokens`
--

LOCK TABLES `strapi_transfer_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_transfer_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_transfer_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `terms_created_by_id_fk` (`created_by_id`),
  KEY `terms_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `terms_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `terms_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` VALUES (1,'Términos de la empresa y política de privacidad','Última modificación el 23 de agosto de 2021',NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_components`
--

DROP TABLE IF EXISTS `terms_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `terms_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `terms_field_index` (`field`),
  KEY `terms_component_type_index` (`component_type`),
  KEY `terms_entity_fk` (`entity_id`),
  CONSTRAINT `terms_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_components`
--

LOCK TABLES `terms_components` WRITE;
/*!40000 ALTER TABLE `terms_components` DISABLE KEYS */;
INSERT INTO `terms_components` VALUES (1,1,1,'pops.contac-us-pop','contactUs',NULL);
/*!40000 ALTER TABLE `terms_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_questions_links`
--

DROP TABLE IF EXISTS `terms_questions_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_questions_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `term_id` int unsigned DEFAULT NULL,
  `question_id` int unsigned DEFAULT NULL,
  `question_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `terms_questions_links_unique` (`term_id`,`question_id`),
  KEY `terms_questions_links_fk` (`term_id`),
  KEY `terms_questions_links_inv_fk` (`question_id`),
  KEY `terms_questions_links_order_fk` (`question_order`),
  CONSTRAINT `terms_questions_links_fk` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `terms_questions_links_inv_fk` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_questions_links`
--

LOCK TABLES `terms_questions_links` WRITE;
/*!40000 ALTER TABLE `terms_questions_links` DISABLE KEYS */;
INSERT INTO `terms_questions_links` VALUES (1,1,1,1),(2,1,4,4),(3,1,3,3),(4,1,2,2);
/*!40000 ALTER TABLE `terms_questions_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.user.me','2024-07-01 14:54:53.598000','2024-07-01 14:54:53.598000',NULL,NULL),(2,'plugin::users-permissions.auth.changePassword','2024-07-01 14:54:53.598000','2024-07-01 14:54:53.598000',NULL,NULL),(3,'plugin::users-permissions.auth.callback','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(4,'plugin::users-permissions.auth.connect','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(5,'plugin::users-permissions.auth.forgotPassword','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(6,'plugin::users-permissions.auth.resetPassword','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(7,'plugin::users-permissions.auth.register','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(8,'plugin::users-permissions.auth.emailConfirmation','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(9,'plugin::users-permissions.auth.sendEmailConfirmation','2024-07-01 14:54:53.611000','2024-07-01 14:54:53.611000',NULL,NULL),(10,'api::blog.blog.find','2024-07-01 16:00:11.771000','2024-07-01 16:00:11.771000',NULL,NULL),(11,'api::blog.blog.findOne','2024-07-01 16:00:11.771000','2024-07-01 16:00:11.771000',NULL,NULL),(12,'api::blog.blog.create','2024-07-01 16:00:11.771000','2024-07-01 16:00:11.771000',NULL,NULL),(13,'api::blog.blog.update','2024-07-01 16:00:11.771000','2024-07-01 16:00:11.771000',NULL,NULL),(14,'api::blog.blog.delete','2024-07-01 16:00:11.771000','2024-07-01 16:00:11.771000',NULL,NULL),(15,'plugin::upload.content-api.find','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(16,'plugin::upload.content-api.findOne','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(17,'plugin::upload.content-api.destroy','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(18,'plugin::upload.content-api.upload','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(19,'plugin::users-permissions.user.create','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(20,'plugin::users-permissions.user.update','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(21,'plugin::users-permissions.user.find','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(22,'plugin::users-permissions.user.findOne','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(23,'plugin::users-permissions.user.count','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(24,'plugin::users-permissions.user.destroy','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(25,'plugin::users-permissions.user.me','2024-07-01 16:00:34.992000','2024-07-01 16:00:34.992000',NULL,NULL),(26,'api::blog.blog.find','2024-07-03 11:18:31.862000','2024-07-03 11:18:31.862000',NULL,NULL),(27,'api::blog.blog.findOne','2024-07-03 11:18:31.863000','2024-07-03 11:18:31.863000',NULL,NULL),(28,'plugin::upload.content-api.find','2024-07-03 11:18:31.863000','2024-07-03 11:18:31.863000',NULL,NULL),(29,'plugin::upload.content-api.upload','2024-07-03 11:18:31.863000','2024-07-03 11:18:31.863000',NULL,NULL),(30,'api::review.review.find','2024-07-03 13:58:27.018000','2024-07-03 13:58:27.018000',NULL,NULL),(31,'api::review.review.findOne','2024-07-03 13:58:27.018000','2024-07-03 13:58:27.018000',NULL,NULL),(32,'api::review.review.create','2024-07-03 13:58:27.018000','2024-07-03 13:58:27.018000',NULL,NULL),(33,'api::review.review.update','2024-07-03 13:58:27.018000','2024-07-03 13:58:27.018000',NULL,NULL),(34,'api::review.review.delete','2024-07-03 13:58:27.018000','2024-07-03 13:58:27.018000',NULL,NULL),(35,'plugin::content-type-builder.components.getComponents','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(36,'plugin::content-type-builder.components.getComponent','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(37,'plugin::users-permissions.role.createRole','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(38,'plugin::users-permissions.role.findOne','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(39,'plugin::users-permissions.role.find','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(40,'plugin::users-permissions.role.updateRole','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(41,'plugin::users-permissions.role.deleteRole','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(42,'plugin::users-permissions.permissions.getPermissions','2024-07-03 14:58:23.670000','2024-07-03 14:58:23.670000',NULL,NULL),(43,'plugin::upload.content-api.findOne','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(44,'plugin::upload.content-api.destroy','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(45,'plugin::users-permissions.auth.callback','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(46,'plugin::users-permissions.auth.resetPassword','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(47,'plugin::users-permissions.auth.connect','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(48,'plugin::users-permissions.auth.forgotPassword','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(49,'plugin::users-permissions.auth.register','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(50,'plugin::users-permissions.auth.emailConfirmation','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(51,'plugin::users-permissions.auth.sendEmailConfirmation','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(52,'plugin::users-permissions.user.create','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(53,'plugin::users-permissions.user.update','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(54,'plugin::users-permissions.user.find','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(55,'plugin::users-permissions.user.findOne','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(56,'plugin::users-permissions.user.count','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(57,'plugin::users-permissions.user.destroy','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(58,'plugin::users-permissions.role.createRole','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(59,'plugin::users-permissions.role.findOne','2024-07-03 14:58:51.511000','2024-07-03 14:58:51.511000',NULL,NULL),(60,'plugin::users-permissions.role.find','2024-07-03 14:58:51.512000','2024-07-03 14:58:51.512000',NULL,NULL),(61,'plugin::users-permissions.role.updateRole','2024-07-03 14:58:51.512000','2024-07-03 14:58:51.512000',NULL,NULL),(62,'plugin::users-permissions.role.deleteRole','2024-07-03 14:58:51.512000','2024-07-03 14:58:51.512000',NULL,NULL),(63,'plugin::users-permissions.permissions.getPermissions','2024-07-03 14:58:51.512000','2024-07-03 14:58:51.512000',NULL,NULL),(64,'plugin::content-type-builder.content-types.getContentTypes','2024-07-03 15:01:20.028000','2024-07-03 15:01:20.028000',NULL,NULL),(65,'plugin::content-type-builder.content-types.getContentType','2024-07-03 15:01:20.028000','2024-07-03 15:01:20.028000',NULL,NULL),(66,'plugin::email.email.send','2024-07-03 15:01:20.028000','2024-07-03 15:01:20.028000',NULL,NULL),(67,'plugin::users-permissions.auth.changePassword','2024-07-03 15:04:08.394000','2024-07-03 15:04:08.394000',NULL,NULL),(79,'api::enterprise.enterprise.find','2024-07-08 02:42:51.587000','2024-07-08 02:42:51.587000',NULL,NULL),(80,'api::enterprise.enterprise.update','2024-07-08 02:42:51.587000','2024-07-08 02:42:51.587000',NULL,NULL),(81,'api::enterprise.enterprise.delete','2024-07-08 02:42:51.587000','2024-07-08 02:42:51.587000',NULL,NULL),(82,'api::web-basic.web-basic.find','2024-07-08 02:43:37.113000','2024-07-08 02:43:37.113000',NULL,NULL),(83,'api::web-basic.web-basic.update','2024-07-08 02:43:37.113000','2024-07-08 02:43:37.113000',NULL,NULL),(84,'api::web-basic.web-basic.delete','2024-07-08 02:43:37.113000','2024-07-08 02:43:37.113000',NULL,NULL),(88,'api::customer-storie.customer-storie.find','2024-07-08 13:35:15.896000','2024-07-08 13:35:15.896000',NULL,NULL),(89,'api::customer-storie.customer-storie.update','2024-07-08 13:35:15.896000','2024-07-08 13:35:15.896000',NULL,NULL),(90,'api::customer-storie.customer-storie.delete','2024-07-08 13:35:15.896000','2024-07-08 13:35:15.896000',NULL,NULL),(91,'api::about-startup.about-startup.find','2024-07-08 14:24:12.920000','2024-07-08 14:24:12.920000',NULL,NULL),(92,'api::about-startup.about-startup.update','2024-07-08 14:24:12.920000','2024-07-08 14:24:12.920000',NULL,NULL),(93,'api::about-startup.about-startup.delete','2024-07-08 14:24:12.920000','2024-07-08 14:24:12.920000',NULL,NULL),(94,'plugin::users-permissions.user.me',NULL,NULL,NULL,NULL),(95,'plugin::users-permissions.auth.changePassword',NULL,NULL,NULL,NULL),(96,'plugin::users-permissions.auth.callback',NULL,NULL,NULL,NULL),(97,'plugin::users-permissions.auth.connect',NULL,NULL,NULL,NULL),(98,'plugin::users-permissions.auth.forgotPassword',NULL,NULL,NULL,NULL),(99,'plugin::users-permissions.auth.resetPassword',NULL,NULL,NULL,NULL),(100,'plugin::users-permissions.auth.register',NULL,NULL,NULL,NULL),(101,'plugin::users-permissions.auth.emailConfirmation',NULL,NULL,NULL,NULL),(102,'plugin::users-permissions.auth.sendEmailConfirmation',NULL,NULL,NULL,NULL),(103,'api::blog.blog.find',NULL,NULL,NULL,NULL),(104,'api::blog.blog.findOne',NULL,NULL,NULL,NULL),(105,'api::blog.blog.create',NULL,NULL,NULL,NULL),(106,'api::blog.blog.update',NULL,NULL,NULL,NULL),(107,'api::blog.blog.delete',NULL,NULL,NULL,NULL),(108,'api::contac-us-pop.contac-us-pop.find',NULL,NULL,NULL,NULL),(109,'api::question.question.find',NULL,NULL,NULL,NULL),(110,'api::question.question.findOne',NULL,NULL,NULL,NULL),(111,'api::term.term.find',NULL,NULL,NULL,NULL),(112,'api::term.term.find',NULL,NULL,NULL,NULL),(113,'api::term.term.update',NULL,NULL,NULL,NULL),(114,'api::term.term.delete',NULL,NULL,NULL,NULL),(115,'api::logistic.logistic.find',NULL,NULL,NULL,NULL),(116,'api::section.section.find',NULL,NULL,NULL,NULL),(117,'api::section.section.findOne',NULL,NULL,NULL,NULL),(118,'api::about.about.find',NULL,NULL,NULL,NULL),(119,'api::home.home.find',NULL,NULL,NULL,NULL),(120,'api::home.home.update',NULL,NULL,NULL,NULL),(121,'api::home.home.delete',NULL,NULL,NULL,NULL),(122,'api::helpcenter.helpcenter.find',NULL,NULL,NULL,NULL),(123,'api::helpcenter.helpcenter.update',NULL,NULL,NULL,NULL),(124,'api::helpcenter.helpcenter.delete',NULL,NULL,NULL,NULL),(125,'api::faq.faq.find',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (1,1,1,1),(2,2,1,1),(3,3,2,1),(4,4,2,1),(5,6,2,1),(6,5,2,1),(7,7,2,2),(8,8,2,2),(9,9,2,2),(10,10,2,3),(11,11,2,3),(12,12,2,3),(13,13,2,3),(14,14,2,3),(15,15,2,4),(16,18,2,4),(17,16,2,4),(18,17,2,4),(19,19,2,4),(20,20,2,4),(21,21,2,4),(22,22,2,5),(23,23,2,5),(24,24,2,5),(25,25,2,5),(26,26,1,2),(27,27,1,2),(28,28,1,2),(29,29,1,2),(30,30,2,6),(31,31,2,6),(32,32,2,6),(33,33,2,6),(34,34,2,6),(35,35,2,7),(36,36,2,7),(37,37,2,7),(38,38,2,7),(39,39,2,7),(40,40,2,7),(41,41,2,8),(42,42,2,8),(43,43,1,3),(44,49,1,3),(45,44,1,3),(46,46,1,3),(47,47,1,3),(48,45,1,3),(49,48,1,3),(50,50,1,3),(51,51,1,3),(52,52,1,3),(53,53,1,4),(54,54,1,4),(55,55,1,4),(56,57,1,4),(57,56,1,4),(58,58,1,4),(59,59,1,4),(60,62,1,4),(61,60,1,5),(62,61,1,5),(63,63,1,5),(64,64,2,9),(65,65,2,9),(66,66,2,9),(67,67,2,10),(79,79,2,11),(80,80,2,11),(81,81,2,11),(82,82,2,12),(83,83,2,12),(84,84,2,12),(88,88,2,14),(89,89,2,14),(90,90,2,14),(91,91,2,15),(92,92,2,15),(93,93,2,15);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2024-07-01 14:54:53.583000','2024-07-05 10:09:56.243000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2024-07-01 14:54:53.588000','2024-07-08 15:22:38.525000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
INSERT INTO `up_users` VALUES (1,'Hansel','hansel@gmail.com','local','$2a$10$JUXhdDLdzuJQF8aahS.bCejB6juuD3XJz9hYL/hSW/GHt9AYGVy6.',NULL,NULL,1,0,'2024-07-03 10:51:58.467000','2024-07-03 10:51:58.467000',1,1),(2,'Carlos','carlos@gmail.com','local','$2a$10$ur.t41hrTTyHG.szoorLMOOG4wj/GU99d66jIARq9KNktHA2YB9Sy',NULL,NULL,1,0,'2024-07-03 14:39:18.938000','2024-07-03 14:39:28.976000',1,1),(3,'Fausto','fausto@gmail.com','local','$2a$10$w327cgw24K.qKSBMlgOoNO.XQhchzf84PqbNS77McsN.HIUwsolIa',NULL,NULL,1,0,'2024-07-03 14:40:10.621000','2024-07-03 14:40:10.621000',1,1);
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
INSERT INTO `up_users_role_links` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3);
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_basics`
--

DROP TABLE IF EXISTS `web_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_basics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `web_basics_created_by_id_fk` (`created_by_id`),
  KEY `web_basics_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `web_basics_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `web_basics_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_basics`
--

LOCK TABLES `web_basics` WRITE;
/*!40000 ALTER TABLE `web_basics` DISABLE KEYS */;
INSERT INTO `web_basics` VALUES (1,'2024-07-08 01:06:25.448000','2024-07-08 15:19:50.958000','2024-07-08 02:44:18.735000',1,1);
/*!40000 ALTER TABLE `web_basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_basics_components`
--

DROP TABLE IF EXISTS `web_basics_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_basics_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_basics_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `web_basics_field_index` (`field`),
  KEY `web_basics_component_type_index` (`component_type`),
  KEY `web_basics_entity_fk` (`entity_id`),
  CONSTRAINT `web_basics_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `web_basics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_basics_components`
--

LOCK TABLES `web_basics_components` WRITE;
/*!40000 ALTER TABLE `web_basics_components` DISABLE KEYS */;
INSERT INTO `web_basics_components` VALUES (101,1,1,'web-basic.encabezado','PageContent',1),(102,1,1,'web-basic.servicios','PageContent',2),(103,1,1,'web-basic.socios-iconos','PageContent',3),(104,1,1,'web-basic.contacto','PageContent',4),(105,1,1,'web-basic.acerca','PageContent',5),(106,1,1,'web-basic.usuarios','PageContent',6),(107,1,2,'enterprise.resenas','PageContent',7),(108,1,1,'web-basic.caracteristicas','PageContent',8),(109,1,1,'web-basic.precios','PageContent',9),(110,1,1,'web-basic.faq','PageContent',10);
/*!40000 ALTER TABLE `web_basics_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'strapi'
--

--
-- Dumping routines for database 'strapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 22:46:42
