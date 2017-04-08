-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: keevitaja
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB

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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_application_references` (`reference`),
  UNIQUE KEY `unique_application_domains` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications_domains`
--

DROP TABLE IF EXISTS `applications_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_application_aliases` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications_domains`
--

LOCK TABLES `applications_domains` WRITE;
/*!40000 ALTER TABLE `applications_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_addons_extensions`
--

DROP TABLE IF EXISTS `keevitaja_addons_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_addons_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_extensions` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_addons_extensions`
--

LOCK TABLES `keevitaja_addons_extensions` WRITE;
/*!40000 ALTER TABLE `keevitaja_addons_extensions` DISABLE KEYS */;
INSERT INTO `keevitaja_addons_extensions` VALUES (1,'anomaly.extension.default_authenticator',1,1),(2,'anomaly.extension.default_page_handler',1,1),(3,'anomaly.extension.local_storage_adapter',1,1),(4,'anomaly.extension.page_link_type',1,1),(5,'anomaly.extension.robots',1,1),(6,'anomaly.extension.sitemap',1,1),(7,'anomaly.extension.throttle_security_check',1,1),(8,'anomaly.extension.url_link_type',1,1),(9,'anomaly.extension.user_security_check',1,1),(10,'anomaly.extension.xml_feed_widget',1,1);
/*!40000 ALTER TABLE `keevitaja_addons_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_addons_modules`
--

DROP TABLE IF EXISTS `keevitaja_addons_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_addons_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_modules` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_addons_modules`
--

LOCK TABLES `keevitaja_addons_modules` WRITE;
/*!40000 ALTER TABLE `keevitaja_addons_modules` DISABLE KEYS */;
INSERT INTO `keevitaja_addons_modules` VALUES (1,'anomaly.module.addons',1,1),(2,'anomaly.module.configuration',1,1),(3,'anomaly.module.dashboard',1,1),(4,'anomaly.module.files',1,1),(5,'anomaly.module.navigation',1,1),(6,'anomaly.module.pages',1,1),(7,'anomaly.module.posts',1,1),(8,'anomaly.module.preferences',1,1),(9,'anomaly.module.redirects',1,1),(10,'anomaly.module.repeaters',1,1),(11,'anomaly.module.settings',1,1),(12,'anomaly.module.users',1,1),(13,'anomaly.module.variables',1,1);
/*!40000 ALTER TABLE `keevitaja_addons_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_configuration_configuration`
--

DROP TABLE IF EXISTS `keevitaja_configuration_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_configuration_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_configuration_configuration`
--

LOCK TABLES `keevitaja_configuration_configuration` WRITE;
/*!40000 ALTER TABLE `keevitaja_configuration_configuration` DISABLE KEYS */;
INSERT INTO `keevitaja_configuration_configuration` VALUES (1,1,'2017-04-08 14:14:48',NULL,NULL,NULL,'1','anomaly.extension.xml_feed_widget::url','http://www.pyrocms.com/posts/rss.xml');
/*!40000 ALTER TABLE `keevitaja_configuration_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_dashboards`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_dashboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `9e2c1f0b0af4a3796ef2922690d63a22` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_dashboards`
--

LOCK TABLES `keevitaja_dashboard_dashboards` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards` DISABLE KEYS */;
INSERT INTO `keevitaja_dashboard_dashboards` VALUES (1,1,'2017-04-08 14:14:48',NULL,NULL,NULL,'welcome','24');
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_dashboards_allowed_roles`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_dashboards_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_dashboards_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_dashboards_allowed_roles`
--

LOCK TABLES `keevitaja_dashboard_dashboards_allowed_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_dashboards_translations`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_dashboards_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_dashboards_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `dashboard_dashboards_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_dashboards_translations`
--

LOCK TABLES `keevitaja_dashboard_dashboards_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_dashboard_dashboards_translations` VALUES (1,1,'2017-04-08 14:14:48',NULL,'2017-04-08 14:14:48',NULL,'en','Welcome','This is the default dashboard for PyroCMS.');
/*!40000 ALTER TABLE `keevitaja_dashboard_dashboards_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_widgets`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_widgets`
--

LOCK TABLES `keevitaja_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets` DISABLE KEYS */;
INSERT INTO `keevitaja_dashboard_widgets` VALUES (1,1,'2017-04-08 14:14:48',NULL,NULL,NULL,'anomaly.extension.xml_feed_widget',1,1,0);
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_widgets_allowed_roles`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_widgets_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_widgets_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_widgets_allowed_roles`
--

LOCK TABLES `keevitaja_dashboard_widgets_allowed_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_dashboard_widgets_translations`
--

DROP TABLE IF EXISTS `keevitaja_dashboard_widgets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_dashboard_widgets_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `dashboard_widgets_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_dashboard_widgets_translations`
--

LOCK TABLES `keevitaja_dashboard_widgets_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_dashboard_widgets_translations` VALUES (1,1,'2017-04-08 14:14:48',NULL,'2017-04-08 14:14:48',NULL,'en','Recent News','Recent news from http://pyrocms.com/');
/*!40000 ALTER TABLE `keevitaja_dashboard_widgets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_failed_jobs`
--

DROP TABLE IF EXISTS `keevitaja_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_failed_jobs`
--

LOCK TABLES `keevitaja_failed_jobs` WRITE;
/*!40000 ALTER TABLE `keevitaja_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_disks`
--

DROP TABLE IF EXISTS `keevitaja_files_disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_disks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `e45e39ecdef3a3c7a5535279b117d2a4` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_disks`
--

LOCK TABLES `keevitaja_files_disks` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_disks` DISABLE KEYS */;
INSERT INTO `keevitaja_files_disks` VALUES (1,1,'2017-04-08 14:14:49',NULL,NULL,NULL,NULL,'local','anomaly.extension.local_storage_adapter');
/*!40000 ALTER TABLE `keevitaja_files_disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_disks_translations`
--

DROP TABLE IF EXISTS `keevitaja_files_disks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_disks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `files_disks_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_disks_translations`
--

LOCK TABLES `keevitaja_files_disks_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_disks_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_files_disks_translations` VALUES (1,1,'2017-04-08 14:14:49',NULL,'2017-04-08 14:14:49',NULL,'en','Local','A local (public) storage disk.');
/*!40000 ALTER TABLE `keevitaja_files_disks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_documents`
--

DROP TABLE IF EXISTS `keevitaja_files_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_documents`
--

LOCK TABLES `keevitaja_files_documents` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_files_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_documents_translations`
--

DROP TABLE IF EXISTS `keevitaja_files_documents_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_documents_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_documents_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_documents_translations`
--

LOCK TABLES `keevitaja_files_documents_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_documents_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_files_documents_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_files`
--

DROP TABLE IF EXISTS `keevitaja_files_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_files`
--

LOCK TABLES `keevitaja_files_files` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_files_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_folders`
--

DROP TABLE IF EXISTS `keevitaja_files_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eb1f1e9d6c256e3428a0c6606a721cc5` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_folders`
--

LOCK TABLES `keevitaja_files_folders` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_folders` DISABLE KEYS */;
INSERT INTO `keevitaja_files_folders` VALUES (1,1,'2017-04-08 14:14:49',NULL,NULL,NULL,NULL,1,'images','a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),(2,2,'2017-04-08 14:14:49',NULL,NULL,NULL,NULL,1,'documents','a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}');
/*!40000 ALTER TABLE `keevitaja_files_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_folders_translations`
--

DROP TABLE IF EXISTS `keevitaja_files_folders_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_folders_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `files_folders_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_folders_translations`
--

LOCK TABLES `keevitaja_files_folders_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_folders_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_files_folders_translations` VALUES (1,1,'2017-04-08 14:14:49',NULL,'2017-04-08 14:14:49',NULL,'en','Images','A folder for images.'),(2,2,'2017-04-08 14:14:50',NULL,'2017-04-08 14:14:50',NULL,'en','Documents','A folder for documents.');
/*!40000 ALTER TABLE `keevitaja_files_folders_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_images`
--

DROP TABLE IF EXISTS `keevitaja_files_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_images`
--

LOCK TABLES `keevitaja_files_images` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_files_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_files_images_translations`
--

DROP TABLE IF EXISTS `keevitaja_files_images_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_files_images_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_images_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_files_images_translations`
--

LOCK TABLES `keevitaja_files_images_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_files_images_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_files_images_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_jobs`
--

DROP TABLE IF EXISTS `keevitaja_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_jobs`
--

LOCK TABLES `keevitaja_jobs` WRITE;
/*!40000 ALTER TABLE `keevitaja_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_migrations`
--

DROP TABLE IF EXISTS `keevitaja_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_migrations`
--

LOCK TABLES `keevitaja_migrations` WRITE;
/*!40000 ALTER TABLE `keevitaja_migrations` DISABLE KEYS */;
INSERT INTO `keevitaja_migrations` VALUES (1,'2015_03_15_171404_create_applications_table',1),(2,'2015_03_15_171506_create_applications_domains_table',1),(3,'2015_03_15_171506_create_jobs_table',2),(4,'2015_03_15_171507_create_failed_jobs_table',2),(5,'2015_03_15_171508_create_sessions_table',2),(6,'2015_03_15_171620_create_streams_tables',2),(7,'2015_03_15_171646_create_fields_tables',2),(8,'2015_03_15_171720_create_assignments_tables',2),(9,'2015_03_15_171838_create_modules_table',2),(10,'2015_03_15_171926_create_extensions_table',2),(11,'2016_08_30_185635_create_notifications_table',2),(12,'2016_09_02_164448_add_searchable_column_to_streams',2),(13,'2016_11_11_154228_append_id_to_user_meta_columns',2),(14,'2015_03_25_091755_anomaly.module.configuration__create_configuration_fields',3),(15,'2015_03_25_091845_anomaly.module.configuration__create_configuration_stream',3),(16,'2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields',4),(17,'2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream',4),(18,'2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream',4),(19,'2015_03_05_021725_anomaly.module.files__create_files_fields',5),(20,'2015_03_05_022227_anomaly.module.files__create_disks_stream',5),(21,'2015_06_09_031343_anomaly.module.files__create_folders_stream',5),(22,'2015_06_09_031351_anomaly.module.files__create_files_stream',5),(23,'2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment',5),(24,'2016_09_02_175659_anomaly.module.files__make_files_searchable',5),(25,'2016_10_05_221741_anomaly.module.files__make_disks_sortable',5),(26,'2015_05_21_061832_anomaly.module.navigation__create_navigation_fields',6),(27,'2015_05_21_062115_anomaly.module.navigation__create_menus_stream',6),(28,'2015_05_21_064952_anomaly.module.navigation__create_links_stream',6),(29,'2015_03_20_171947_anomaly.module.pages__create_pages_fields',7),(30,'2015_03_20_171955_anomaly.module.pages__create_pages_stream',7),(31,'2015_04_22_150211_anomaly.module.pages__create_types_stream',7),(32,'2016_09_02_175135_anomaly.module.pages__make_pages_searchable',7),(33,'2015_03_20_184103_anomaly.module.posts__create_posts_fields',8),(34,'2015_03_20_184141_anomaly.module.posts__create_categories_stream',8),(35,'2015_03_20_184148_anomaly.module.posts__create_posts_stream',8),(36,'2015_05_16_050818_anomaly.module.posts__create_types_stream',8),(37,'2016_09_02_175531_anomaly.module.posts__make_posts_searchable',8),(38,'2015_02_27_101227_anomaly.module.preferences__create_preferences_fields',9),(39,'2015_02_27_101300_anomaly.module.preferences__create_preferences_streams',9),(40,'2016_11_16_151654_anomaly.module.preferences__update_user_related_config',9),(41,'2015_03_21_153325_anomaly.module.redirects__create_redirects_fields',10),(42,'2015_03_21_153326_anomaly.module.redirects__create_redirects_stream',10),(43,'2015_02_27_101410_anomaly.module.settings__create_settings_fields',11),(44,'2015_02_27_101510_anomaly.module.settings__create_settings_stream',11),(45,'2015_02_27_101816_anomaly.module.users__create_users_fields',12),(46,'2015_02_27_101851_anomaly.module.users__create_users_stream',12),(47,'2015_02_27_101940_anomaly.module.users__create_roles_stream',12),(48,'2016_09_02_175848_anomaly.module.users__make_users_searchable',12),(49,'2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields',13),(50,'2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream',13),(51,'2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields',14),(52,'2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream',14);
/*!40000 ALTER TABLE `keevitaja_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_navigation_links`
--

DROP TABLE IF EXISTS `keevitaja_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_navigation_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_navigation_links`
--

LOCK TABLES `keevitaja_navigation_links` WRITE;
/*!40000 ALTER TABLE `keevitaja_navigation_links` DISABLE KEYS */;
INSERT INTO `keevitaja_navigation_links` VALUES (1,1,'2017-04-08 14:14:51',NULL,NULL,NULL,'2017-04-08 14:26:17',1,'anomaly.extension.url_link_type',1,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(2,2,'2017-04-08 14:14:51',NULL,NULL,NULL,'2017-04-08 14:26:17',1,'anomaly.extension.url_link_type',2,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(3,1,'2017-04-08 14:28:57',1,'2017-04-08 14:36:25',1,NULL,2,'anomaly.extension.page_link_type',1,'Anomaly\\PageLinkTypeExtension\\PageLinkTypeModel','_self','spinner4',NULL),(4,2,'2017-04-08 14:31:35',1,NULL,NULL,NULL,2,'anomaly.extension.page_link_type',2,'Anomaly\\PageLinkTypeExtension\\PageLinkTypeModel','_self','feed',NULL),(5,3,'2017-04-08 14:32:10',1,'2017-04-08 14:32:45',1,NULL,2,'anomaly.extension.url_link_type',3,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank','twitter',NULL),(6,4,'2017-04-08 14:32:38',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',4,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank','github',NULL);
/*!40000 ALTER TABLE `keevitaja_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_navigation_links_allowed_roles`
--

DROP TABLE IF EXISTS `keevitaja_navigation_links_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_navigation_links_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_navigation_links_allowed_roles`
--

LOCK TABLES `keevitaja_navigation_links_allowed_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_navigation_links_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_navigation_links_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_navigation_menus`
--

DROP TABLE IF EXISTS `keevitaja_navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_navigation_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `b971176b13cd6738cbb5a6905fe40e9b` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_navigation_menus`
--

LOCK TABLES `keevitaja_navigation_menus` WRITE;
/*!40000 ALTER TABLE `keevitaja_navigation_menus` DISABLE KEYS */;
INSERT INTO `keevitaja_navigation_menus` VALUES (1,1,'2017-04-08 14:14:50',NULL,NULL,NULL,'2017-04-08 14:26:17','footer'),(2,2,'2017-04-08 14:26:09',1,NULL,NULL,NULL,'header');
/*!40000 ALTER TABLE `keevitaja_navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_navigation_menus_translations`
--

DROP TABLE IF EXISTS `keevitaja_navigation_menus_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_navigation_menus_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `navigation_menus_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_navigation_menus_translations`
--

LOCK TABLES `keevitaja_navigation_menus_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_navigation_menus_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_navigation_menus_translations` VALUES (1,1,'2017-04-08 14:14:50',NULL,'2017-04-08 14:14:50',NULL,'en','Footer','This is the footer.'),(2,2,'2017-04-08 14:26:09',NULL,'2017-04-08 14:26:09',1,'en','Header',NULL);
/*!40000 ALTER TABLE `keevitaja_navigation_menus_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_notifications`
--

DROP TABLE IF EXISTS `keevitaja_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_notifications`
--

LOCK TABLES `keevitaja_notifications` WRITE;
/*!40000 ALTER TABLE `keevitaja_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_page_link_type_pages`
--

DROP TABLE IF EXISTS `keevitaja_page_link_type_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_page_link_type_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_page_link_type_pages`
--

LOCK TABLES `keevitaja_page_link_type_pages` WRITE;
/*!40000 ALTER TABLE `keevitaja_page_link_type_pages` DISABLE KEYS */;
INSERT INTO `keevitaja_page_link_type_pages` VALUES (1,1,'2017-04-08 14:28:57',1,NULL,NULL,1),(2,2,'2017-04-08 14:31:35',1,NULL,NULL,3);
/*!40000 ALTER TABLE `keevitaja_page_link_type_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_page_link_type_pages_translations`
--

DROP TABLE IF EXISTS `keevitaja_page_link_type_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_page_link_type_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `page_link_type_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_page_link_type_pages_translations`
--

LOCK TABLES `keevitaja_page_link_type_pages_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_page_link_type_pages_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_page_link_type_pages_translations` VALUES (1,1,'2017-04-08 14:28:57',NULL,'2017-04-08 14:28:57',1,'en','Home',NULL),(2,2,'2017-04-08 14:31:35',NULL,'2017-04-08 14:31:35',1,'en','History',NULL);
/*!40000 ALTER TABLE `keevitaja_page_link_type_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_default_pages`
--

DROP TABLE IF EXISTS `keevitaja_pages_default_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_default_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_default_pages`
--

LOCK TABLES `keevitaja_pages_default_pages` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_default_pages` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_default_pages` VALUES (1,1,'2017-04-08 14:14:52',NULL,NULL,NULL,NULL,NULL),(2,2,'2017-04-08 14:14:53',NULL,NULL,NULL,'2017-04-08 14:29:16',NULL),(3,2,'2017-04-08 14:29:42',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `keevitaja_pages_default_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_default_pages_translations`
--

DROP TABLE IF EXISTS `keevitaja_pages_default_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_default_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_default_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_default_pages_translations`
--

LOCK TABLES `keevitaja_pages_default_pages_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_default_pages_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_default_pages_translations` VALUES (1,1,'2017-04-08 14:14:52',NULL,'2017-04-08 14:14:52',NULL,'en'),(2,2,'2017-04-08 14:14:53',NULL,'2017-04-08 14:14:53',NULL,'en'),(3,3,'2017-04-08 14:29:42',NULL,'2017-04-08 14:29:42',1,'en');
/*!40000 ALTER TABLE `keevitaja_pages_default_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_pages`
--

DROP TABLE IF EXISTS `keevitaja_pages_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_pages`
--

LOCK TABLES `keevitaja_pages_pages` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_pages` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_pages` VALUES (1,1,'2017-04-08 14:14:52',NULL,'2017-04-08 15:24:57',1,NULL,'kZWj3glexLDz2UeRDyrba3lf','posts','/',1,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,1,'theme::layouts.posts'),(2,2,'2017-04-08 14:14:53',NULL,NULL,NULL,'2017-04-08 14:29:16','RrB1P2B9QszqRdzeV4mwq2F4','contact','/contact',1,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,0,'theme::layouts/default.twig'),(3,2,'2017-04-08 14:29:42',1,NULL,NULL,NULL,'8OjpznjBuTWYbD2XI9exf5KE','history','/history',1,3,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,0,'theme::layouts.history');
/*!40000 ALTER TABLE `keevitaja_pages_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_pages_allowed_roles`
--

DROP TABLE IF EXISTS `keevitaja_pages_pages_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_pages_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_pages_allowed_roles`
--

LOCK TABLES `keevitaja_pages_pages_allowed_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_pages_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_pages_pages_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_pages_translations`
--

DROP TABLE IF EXISTS `keevitaja_pages_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pages_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_pages_translations`
--

LOCK TABLES `keevitaja_pages_pages_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_pages_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_pages_translations` VALUES (1,1,'2017-04-08 14:14:53',NULL,'2017-04-08 15:24:57',1,'en','Posts','This is my blog',NULL,'a:0:{}'),(2,2,'2017-04-08 14:14:53',NULL,'2017-04-08 14:14:53',NULL,'en','Contact',NULL,NULL,NULL),(3,3,'2017-04-08 14:29:42',NULL,'2017-04-08 14:29:42',1,'en','History',NULL,NULL,'a:0:{}');
/*!40000 ALTER TABLE `keevitaja_pages_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_types`
--

DROP TABLE IF EXISTS `keevitaja_pages_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler',
  PRIMARY KEY (`id`),
  UNIQUE KEY `381176fc0d89ae8d97d99ce9b6109b9a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_types`
--

LOCK TABLES `keevitaja_pages_types` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_types` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_types` VALUES (1,1,'2017-04-08 14:14:51',NULL,NULL,NULL,NULL,'default','theme::layouts/default.twig','<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}','anomaly.extension.default_page_handler');
/*!40000 ALTER TABLE `keevitaja_pages_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_pages_types_translations`
--

DROP TABLE IF EXISTS `keevitaja_pages_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_pages_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pages_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_pages_types_translations`
--

LOCK TABLES `keevitaja_pages_types_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_pages_types_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_pages_types_translations` VALUES (1,1,'2017-04-08 14:14:52',NULL,'2017-04-08 14:14:52',NULL,'en','Default','A simple page type.');
/*!40000 ALTER TABLE `keevitaja_pages_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_categories`
--

DROP TABLE IF EXISTS `keevitaja_posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `9a8a0682d35f9b22c741cb0536aa691f` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_categories`
--

LOCK TABLES `keevitaja_posts_categories` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_categories` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_categories` VALUES (1,1,'2017-04-08 14:14:55',NULL,NULL,NULL,'2017-04-08 20:36:35','news'),(2,2,'2017-04-08 20:35:43',1,NULL,NULL,'2017-04-08 20:36:10','laravel'),(3,3,'2017-04-08 20:36:02',1,NULL,NULL,NULL,'editors'),(4,3,'2017-04-08 20:36:30',1,NULL,NULL,NULL,'patterns'),(5,3,'2017-04-08 20:39:13',1,NULL,NULL,NULL,'php');
/*!40000 ALTER TABLE `keevitaja_posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_categories_translations`
--

DROP TABLE IF EXISTS `keevitaja_posts_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_categories_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_categories_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_categories_translations`
--

LOCK TABLES `keevitaja_posts_categories_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_categories_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_categories_translations` VALUES (1,1,'2017-04-08 14:14:55',NULL,'2017-04-08 14:14:55',NULL,'en','News','Company news and updates.'),(2,2,'2017-04-08 20:35:43',NULL,'2017-04-08 20:35:43',1,'en','Laravel',NULL),(3,3,'2017-04-08 20:36:02',NULL,'2017-04-08 20:36:02',1,'en','Editors',NULL),(4,4,'2017-04-08 20:36:30',NULL,'2017-04-08 20:36:30',1,'en','Patterns',NULL),(5,5,'2017-04-08 20:39:14',NULL,'2017-04-08 20:39:14',1,'en','PHP',NULL);
/*!40000 ALTER TABLE `keevitaja_posts_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_default_posts`
--

DROP TABLE IF EXISTS `keevitaja_posts_default_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_default_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_default_posts`
--

LOCK TABLES `keevitaja_posts_default_posts` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_default_posts` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_default_posts` VALUES (1,1,'2017-04-08 14:14:55',NULL,NULL,NULL,'2017-04-08 14:56:41',NULL),(2,2,'2017-04-08 14:56:33',1,'2017-04-08 15:00:24',1,NULL,'> Edited on july 2015 \r\n> \r\n> 50% of this is total crap. I will rewrite this post as soon as possible.\r\n\r\nIn Laravel community lot of people use [Repository pattern](http://ryantablada.com/post/the-repository-pattern-in-action) by [Taylor Otwell](http://taylorotwell.com/). At the same time they have no problem with using third party packages tightly coupled to their codebase. This kind of selective abstraction makes no sense!\r\n\r\n## The origin of Repository pattern in Laravel.\r\n\r\nOf course Taylor did not come up with the pattern itself. In his book “[From Apprentice To Artisan](https://leanpub.com/laravel)” he talked about it and many people figured it is the right way to do things in [Laravel](http://laravel.com/). Did Taylor really tell us to use this pattern with each application? I do not think so. Most, if not all, coding patterns are optional. To use different patterns in our projects we have to select them according to the projects scale and the application.\r\n\r\n## Why should we consider the Repository pattern?\r\n\r\nGenerally abstraction is a good practice and so is the Repository pattern if we are working on a large scale project. The reason to have it, is simple. One day there might be a need to swap out the [Eloquent](http://laravel.com/docs/4.2/eloquent) with another database driver. If our database layer is abstracted the swapping process can go with less pain.\r\n\r\nBut how likely will we need to swap out the Eloquent? Eloquent supports many database services, including [MySQL](http://www.mysql.com/) and [PostgreSQL](http://www.postgresql.org/). Perhaps we would need to swap out Eloquent if we want to use [MongoDB](http://www.mongodb.org/) which works well with [hierarchical data](http://en.wikipedia.org/wiki/Hierarchical_database_model). In most cases we can stick happily with Eloquent.\r\n\r\n## Selective abstraction does not make sense!\r\n\r\nI have seen too many times the following situation. Developer is using Repositories with [interface binding](http://laravel.com/docs/4.2/ioc). He is also using some third party packages, like image manipulator, which are not abstracted in any way. Does this make any sense?\r\n\r\nAnd when i ask this developer why is he using Repositories, i usually do not get a straight answer. Perhaps some gibberish about Repositories being a good practice or something. Also i have seen projects that use Repositories returning the Eloquent object.\r\n\r\nIf your Repository returns Eloquent object, your code is still tightly coupled to Eloquent driver and you have accomplished nothing!\r\n\r\n**This is just stupid!**\r\n\r\nPerhaps it would make sense to abstract everything and prepare for everything. To use only Repositories is 100% senseless!\r\n\r\n'),(3,2,'2017-04-08 15:04:14',1,'2017-04-08 15:18:20',1,NULL,'Have you ever wondered, if it is possible to auto-initialize the constructor parameters in [Sublime Text](http://www.sublimetext.com/) as it can be done with [PhpStorm](https://www.jetbrains.com/phpstorm/)? Wonder no more, because i have a perfect solution in the form of a macro and keymap.\r\n\r\n[Download the initialization macro](https://gist.github.com/keevitaja/94ec7edcb1322d3a44bb)\r\n\r\nPlace the macro under the Sublime User folder. In [Ubuntu](http://www.ubuntu.com/) the correct path is:\r\n\r\n{{ snippet(\'location\') }}\r\n\r\n\r\nIf you do not know the right path, click *Perferences > Browse packages* in sublime menu and packages folder should open.\r\n\r\nStore the key binding in the default user keymap file.\r\n\r\n{{ snippet(\'sublime\') }}\r\n\r\n\r\nPlace your cursor on the parameter inside the constructor and press ctrl+i. If everything is set correctly, you should see the same result as in the example below:\r\n\r\n{{ snippet(\'example\') }}\r\n\r\n\r\nYou have to initialize each field as macro cannot do them all in one swing.\r\n\r\n## How did i come up with this?\r\n\r\nWith trial and error. Lot of help came from the default keymap file. Also i googled for some example macros and took it from there. Sublime has this [record macro](http://sublimetext.info/docs/en/extensibility/macros.html) feature, but it does not work. In my case it recorded something totally different from what i was doing.\r\n\r\nI hope this is helping you in your quest to be a faster coder. If you have comments or addition information feel free to leave them below!\r\n\r\n'),(4,3,'2017-04-08 20:22:47',1,NULL,NULL,NULL,'There are many ways to handle the [HTTP responses](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes). It all comes down to a personal preference. One cool way to go is a solution where we use a [class constant](http://php.net/manual/en/language.oop5.constants.php) as the status from the [Command Bus](https://laracasts.com/series/commands-and-domain-events/episodes/2). Then we select the correct response using the status and return it.  \r\n\r\nThe benefit of taking this approach is highly readable code which gives us more flexibility than just using a boolean or a string.\r\n\r\n> The following solution can also be used without the Command Pattern. For the example a Service may return this type of status!\r\n\r\nThe goal is to store the status as a constant inside a dedicated class. Class constant is not required to have a value, but it makes sense to assign [i18n](http://laravel.com/docs/master/localization) slug to it. We will see the huge benefit in the Controller class!\r\n\r\n{{ snippet(\'status\') }}\r\n\r\nIn the Command Handler we do our tasks, fire events and finally return the appropriate status.\r\n\r\n{{ snippet(\'handler\') }}\r\n\r\nIn each case we get the correct status from the handler executed by the Command Bus. Again there are many ways how to proceed, but using the status inside a switch statement gives us the maximum amount of benefit we can get!\r\n\r\n{{ snippet(\'controller\') }}\r\n\r\nUsing a class constant as the status with a i18n slug assigned to it, gives us huge flexibility with highly readable code. There are no comments needed! If the bottle was empty or there were no snacks, we need to seek for new resources. If we drank lot of beer it is time to sleep!\r\n\r\nThe pseudo code above uses Laravel 5 helpers.'),(5,4,'2017-04-08 20:31:52',1,NULL,NULL,NULL,'The largest problem with multilingual applications in \"pretty URL\" architecture is routing. \r\n\r\n{{ snippet(\'urls\') }}\r\n\r\nBoth these URLs point to the same controller. The problems worsens when you need to play with URI segments.\r\n\r\n{{ snippet(\'route\') }}\r\n\r\n## Adressing the problem\r\n\r\nWithout Google you could store the locale information inside a session variable. As Google hates duplicate content, this is not an option.\r\n\r\nAnother approach would be to reroute everything. While the approach works, it is lot of work and tends to get messy. \r\n\r\nTo do it **The Right Way** is to remove the locale slug from the REQUEST_URI in public/index.php file:\r\n\r\n{{ snippet(\'hack\') }}\r\n\r\nNow the framework sees only the unlocalized URI and locale information is stored inside the LOCALE constant. With the code above you have created the cleanest possible multilingual environment.\r\n\r\nI do not want to troll here anyone, but the code above does like 90% most localization packages do.\r\n\r\n## Linguist package\r\n\r\n[https://github.com/keevitaja/linguist](https://github.com/keevitaja/linguist)\r\n\r\nThis package removes the locale slug and helps with the URL and anchor generation. Few examples in artisan tinker:\r\n\r\n{{ snippet(\'examples\') }}\r\n\r\nAm i smart or what?');
/*!40000 ALTER TABLE `keevitaja_posts_default_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_default_posts_images`
--

DROP TABLE IF EXISTS `keevitaja_posts_default_posts_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_default_posts_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_default_posts_images`
--

LOCK TABLES `keevitaja_posts_default_posts_images` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_default_posts_snippets`
--

DROP TABLE IF EXISTS `keevitaja_posts_default_posts_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_default_posts_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_default_posts_snippets`
--

LOCK TABLES `keevitaja_posts_default_posts_snippets` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_snippets` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_default_posts_snippets` VALUES (1,3,1,0),(2,3,2,1),(3,3,3,2),(4,4,4,0),(5,4,5,1),(6,4,6,2),(7,5,7,0),(8,5,8,1),(9,5,9,2),(10,5,10,3);
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_default_posts_translations`
--

DROP TABLE IF EXISTS `keevitaja_posts_default_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_default_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_default_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_default_posts_translations`
--

LOCK TABLES `keevitaja_posts_default_posts_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_default_posts_translations` VALUES (1,1,'2017-04-08 14:14:55',NULL,'2017-04-08 14:14:55',NULL,'en'),(2,2,'2017-04-08 14:56:33',NULL,'2017-04-08 14:56:33',1,'en'),(3,3,'2017-04-08 15:04:14',NULL,'2017-04-08 15:04:14',1,'en'),(4,4,'2017-04-08 20:22:47',NULL,'2017-04-08 20:22:47',1,'en'),(5,5,'2017-04-08 20:31:52',NULL,'2017-04-08 20:31:52',1,'en');
/*!40000 ALTER TABLE `keevitaja_posts_default_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_posts`
--

DROP TABLE IF EXISTS `keevitaja_posts_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `a1128facbe9e8e6c2c59eddcfa495104` (`str_id`),
  UNIQUE KEY `0c47b5470543e28befe49a899387ccff` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_posts`
--

LOCK TABLES `keevitaja_posts_posts` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_posts` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_posts` VALUES (1,1,'2017-04-08 14:14:55',NULL,NULL,NULL,'2017-04-08 14:56:41','njcP3N6iINuBLJp2','welcome-to-pyrocms',1,'2017-04-08 14:14:55',1,1,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',1,0,1,NULL),(2,2,'2017-04-08 14:56:34',1,'2017-04-08 20:37:53',1,NULL,'PiHtPX5F36lzikdP','selective-abstraction-does-not-make-sense',1,'2014-11-01 22:00:00',1,2,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',4,0,1,'a:4:{i:0;s:7:\"laravel\";i:1;s:3:\"php\";i:2;s:9:\"stupidity\";i:3;s:11:\"abstraction\";}'),(3,2,'2017-04-08 15:04:14',1,'2017-04-08 20:38:53',1,NULL,'TQ8J40bRHSdBwtDJ','how-to-auto-initialize-constructor-parameters-in-sublime-text-3',1,'2014-11-02 22:00:00',1,3,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',3,0,1,'a:2:{i:0;s:7:\"sublime\";i:1;s:10:\"automation\";}'),(4,3,'2017-04-08 20:22:47',1,'2017-04-08 20:40:17',1,NULL,'XbRMkrmB2KuqMvk8','how-to-handle-http-responses-in-laravel-using-command-pattern',1,'2014-11-03 22:00:00',1,4,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',5,0,1,'a:2:{i:0;s:7:\"laravel\";i:1;s:8:\"commands\";}'),(5,4,'2017-04-08 20:31:52',1,'2017-04-08 20:41:08',1,NULL,'O2Pw3GEN0Ou9VhjT','multilingual-laravel-applications-the-right-way',1,'2015-07-25 21:00:00',1,5,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',5,0,1,'a:2:{i:0;s:4:\"i18n\";i:1;s:7:\"laravel\";}');
/*!40000 ALTER TABLE `keevitaja_posts_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_posts_translations`
--

DROP TABLE IF EXISTS `keevitaja_posts_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_posts_translations`
--

LOCK TABLES `keevitaja_posts_posts_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_posts_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_posts_translations` VALUES (1,1,'2017-04-08 14:14:55',NULL,'2017-04-08 14:14:55',NULL,'en','Welcome to PyroCMS!','This is an example post to demonstrate the posts module.',NULL,NULL,NULL),(2,2,'2017-04-08 14:56:34',NULL,'2017-04-08 20:34:59',1,'en','Selective abstraction does not make sense','In Laravel community lot of people use Repository pattern by Taylor Otwell and at the same time they have no problem with using third party packages tightly coupled to their codebase. This kind of selective abstraction makes no sense!',NULL,'In Laravel community lot of people use Repository pattern by Taylor Otwell and at the same time they have no problem with using third party packages tightly coupled to their codebase. This kind of selective abstraction makes no sense!','a:0:{}'),(3,3,'2017-04-08 15:04:14',NULL,'2017-04-08 20:38:37',1,'en','How to auto-initialize constructor parameters in Sublime Text 3','Have you ever wondered, if it is possible to auto-initialize the constructor parameters in Sublime Text as it can be done with PhpStorm? Wonder no more, because i have a perfect solution in the form of a macro and key binding.',NULL,'Have you ever wondered, if it is possible to auto-initialize the constructor parameters in Sublime Text as it can be done with PhpStorm?','a:0:{}'),(4,4,'2017-04-08 20:22:47',NULL,'2017-04-08 20:40:17',1,'en','How to handle HTTP responses in Laravel using Command Pattern','There are many ways to handle the HTTP responses. It all comes down to a personal preference. One cool way to go is a solution where we use a class constant as the status from the Command Bus. Then we select the correct response using the status and return it.',NULL,'There are many ways to handle the HTTP responses. It all comes down to a personal preference. One cool way to go is a solution where we use a class constant as the status from the Command Bus.','a:0:{}'),(5,5,'2017-04-08 20:31:52',NULL,'2017-04-08 20:41:08',1,'en','Multilingual Laravel applications The Right Way','The largest problem with multilingual applications in \"pretty URL\" architecture is routing. By removing the locale slug from the REQUEST_URI we have created the cleanest possible multilingual environment possible.',NULL,'The largest problem with multilingual applications in “pretty URL” architecture is routing. By removing the locale slug from the REQUEST_URI we have created the cleanest possible multilingual environment possible.','a:0:{}');
/*!40000 ALTER TABLE `keevitaja_posts_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_types`
--

DROP TABLE IF EXISTS `keevitaja_posts_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `1dc1b98be4181be266b483941a42b000` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_types`
--

LOCK TABLES `keevitaja_posts_types` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_types` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_types` VALUES (1,1,'2017-04-08 14:14:53',NULL,NULL,NULL,NULL,'default','{{ post.content.render|raw }}','theme::layouts/default.twig');
/*!40000 ALTER TABLE `keevitaja_posts_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_posts_types_translations`
--

DROP TABLE IF EXISTS `keevitaja_posts_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_posts_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_posts_types_translations`
--

LOCK TABLES `keevitaja_posts_types_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_posts_types_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_posts_types_translations` VALUES (1,1,'2017-04-08 14:14:54',NULL,'2017-04-08 14:14:54',NULL,'en','Default','A simple post type.');
/*!40000 ALTER TABLE `keevitaja_posts_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_preferences_preferences`
--

DROP TABLE IF EXISTS `keevitaja_preferences_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_preferences_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_preferences_preferences`
--

LOCK TABLES `keevitaja_preferences_preferences` WRITE;
/*!40000 ALTER TABLE `keevitaja_preferences_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_preferences_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_redirects_redirects`
--

DROP TABLE IF EXISTS `keevitaja_redirects_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_redirects_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `0cb4275c3992e35aae2a6b18f5f213c1` (`from`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_redirects_redirects`
--

LOCK TABLES `keevitaja_redirects_redirects` WRITE;
/*!40000 ALTER TABLE `keevitaja_redirects_redirects` DISABLE KEYS */;
INSERT INTO `keevitaja_redirects_redirects` VALUES (1,1,'2017-04-08 20:42:37',1,NULL,NULL,NULL,'posts','/','301',0),(2,2,'2017-04-08 20:44:17',1,NULL,NULL,NULL,'2014/11/selective-abstraction/','posts/selective-abstraction-does-not-make-sense','301',0),(3,3,'2017-04-08 20:44:41',1,NULL,NULL,NULL,'2014/11/auto-initialize-constructor-parameters/','posts/how-to-auto-initialize-constructor-parameters-in-sublime-text-3','301',0),(4,4,'2017-04-08 20:45:17',1,NULL,NULL,NULL,'2014/11/http-responses-laravel-command-pattern/','posts/how-to-handle-http-responses-in-laravel-using-command-pattern','301',0),(5,5,'2017-04-08 20:45:42',1,NULL,NULL,NULL,'2015/07/multilingual-laravel-applications-right-way/','posts/multilingual-laravel-applications-the-right-way','301',0);
/*!40000 ALTER TABLE `keevitaja_redirects_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_repeater_images`
--

DROP TABLE IF EXISTS `keevitaja_repeater_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_repeater_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_repeater_images`
--

LOCK TABLES `keevitaja_repeater_images` WRITE;
/*!40000 ALTER TABLE `keevitaja_repeater_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_repeater_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_repeater_snippets`
--

DROP TABLE IF EXISTS `keevitaja_repeater_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_repeater_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_repeater_snippets`
--

LOCK TABLES `keevitaja_repeater_snippets` WRITE;
/*!40000 ALTER TABLE `keevitaja_repeater_snippets` DISABLE KEYS */;
INSERT INTO `keevitaja_repeater_snippets` VALUES (1,1,'2017-04-08 15:14:34',1,'2017-04-08 20:38:53',1,'location','~/.config/sublime-text-3/Packages/User'),(2,2,'2017-04-08 15:17:45',1,'2017-04-08 20:38:53',1,'sublime','{ \r\n    \"keys\": [\"ctrl+i\"], \r\n    \"command\": \"run_macro_file\", \r\n    \"args\": {\"file\": \"res://Packages/User/initialize_properties.sublime-macro\"} \r\n}'),(3,3,'2017-04-08 15:17:45',1,'2017-04-08 20:38:53',1,'example','// before\r\npublic function __construct($property)\r\n{\r\n}\r\n\r\n// after ctrl+i\r\nprotected $property;\r\n\r\npublic function __construct($property)\r\n{\r\n	$this->property = $property;\r\n}'),(4,4,'2017-04-08 20:26:56',1,'2017-04-08 20:40:17',1,'status','class DrinkBeerCommandStatus {\r\n\r\n    const BOTTLE_EMPTY = \'responses.bottle.empty\';\r\n    const SUBJECT_DRUNK = \'responses.subject.drunk\';\r\n    const SNACKS_MISSING = \'responses.snacks.missing\';\r\n}'),(5,5,'2017-04-08 20:26:56',1,'2017-04-08 20:40:17',1,'handler','class DrinkBeerCommandHandler {\r\n\r\n    public function handle($command)\r\n    {\r\n        try\r\n        {\r\n            $this->drink($command->subject);\r\n        }\r\n        catch (BottleException $e)\r\n        {\r\n            return DrinkBeerCommandStatus::BOTTLE_EMPTY;\r\n        }\r\n        catch (FoodException $e)\r\n        {\r\n            return DrinkBeerCommandStatus::SNACKS_MISSING;\r\n        }\r\n        \r\n        return DrinkBeerCommandStatus::SUBJECT_DRUNK;\r\n    }\r\n}'),(6,6,'2017-04-08 20:26:56',1,'2017-04-08 20:40:17',1,'controller','class DrinkingController {\r\n\r\n    public function drink()\r\n    {\r\n        $status = $this->commandBus->execute($command);\r\n\r\n        switch ($status)\r\n        {\r\n            case DrinkBeerCommandStatus::BOTTLE_EMPTY:\r\n            case DrinkBeerCommandStatus::SNACKS_MISSING:\r\n                return redirect(\'seek\')->withMessage(trans($status));\r\n            case DrinkBeerCommandStatus::SUBJECT_DRUN:\r\n                return redirect(\'sleep\');\r\n\r\n        }\r\n    }\r\n}'),(7,7,'2017-04-08 20:33:14',1,'2017-04-08 20:41:08',1,'urls','http://site.com/about\r\nhttp://site.com/fr/about'),(8,8,'2017-04-08 20:33:15',1,'2017-04-08 20:41:08',1,'route','Input::segment(1);'),(9,9,'2017-04-08 20:33:15',1,'2017-04-08 20:41:08',1,'hack','$pattern = \'/^\\/(en|fr)\\//\';\r\n$uri = filter_input(INPUT_SERVER, \'REQUEST_URI\', FILTER_SANITIZE_URL);\r\n\r\nif (preg_match($pattern, $uri, $matches)) {\r\n    $uri = preg_replace($pattern, \'/\', $uri);\r\n\r\n    $_SERVER[\'REQUEST_URI\'] = $uri;\r\n\r\n    define(\'LOCALE\', $matches[1]);\r\n}'),(10,10,'2017-04-08 20:33:15',1,'2017-04-08 20:41:08',1,'examples','>>> Linguist::workingLocale();\r\n=> \"en\"\r\n\r\n>>> Linguist::url(\'some/path\');\r\n=> \"http://localhost/en/some/path\"\r\n\r\n>>> Linguist::url(\'some/path\', [], true, \'fr\');\r\n=> \"https://localhost/fr/some/path\"\r\n\r\n>>> Linguist::route(\'test.show\', [3]);\r\n=> \"http://localhost/en/test/3\"\r\n\r\n>>> LinguistHtml::linkToRoute(\'test.show\', \'Show third test\', [3]);\r\n=> \"&lt;a href=\"http://localhost/en/test/3\"&gt;Show third test&lt;/a&gt;\"\r\n\r\n>>> lnk_to(\'/\', \'Home\');\r\n=> \"&lt;a href=\"http://localhost/en\">Home&lt;/a&gt;\"\r\n\r\n>>> Config::set(\'linguist.hide_default\', true);\r\n>>> lnk_to(\'/\', \'Home\');\r\n=> \"&lt;a href=\"http://localhost\">Home&lt;/a&gt;\"\r\n\r\n>>> lnk_to_route(\'test.show\', \'Show third test\', [3], [\'class\' => \'button\', \'data-delete\']);\r\n=> \"&lt;a class=\"button\" data-delete href=\"http://localhost/en/test/3\">Show third test&lt;/a&gt;\"');
/*!40000 ALTER TABLE `keevitaja_repeater_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_sessions`
--

DROP TABLE IF EXISTS `keevitaja_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_sessions`
--

LOCK TABLES `keevitaja_sessions` WRITE;
/*!40000 ALTER TABLE `keevitaja_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keevitaja_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_settings_settings`
--

DROP TABLE IF EXISTS `keevitaja_settings_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_settings_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c51990785fa58fe7b8132ccb33d9b45f` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_settings_settings`
--

LOCK TABLES `keevitaja_settings_settings` WRITE;
/*!40000 ALTER TABLE `keevitaja_settings_settings` DISABLE KEYS */;
INSERT INTO `keevitaja_settings_settings` VALUES (1,1,'2017-04-08 14:21:11',1,'2017-04-08 14:59:21',1,'streams::name','PyroCMS'),(2,2,'2017-04-08 14:21:11',1,'2017-04-08 14:59:21',1,'streams::description','Build better Laravel websites and applications faster with Pyro.'),(3,3,'2017-04-08 14:21:11',1,'2017-04-08 14:59:21',1,'streams::business',NULL),(4,4,'2017-04-08 14:21:11',1,'2017-04-08 14:59:21',1,'streams::phone',NULL),(5,5,'2017-04-08 14:21:11',1,'2017-04-08 14:59:21',1,'streams::address',NULL),(6,6,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::address2',NULL),(7,7,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::city',NULL),(8,8,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::state',''),(9,9,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::postal_code',NULL),(10,10,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::country',''),(11,11,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::timezone','Europe/Tallinn'),(12,12,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::date_format','j F, Y'),(13,13,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::time_format','H:i'),(14,14,'2017-04-08 14:21:11',1,'2017-04-08 14:59:22',1,'streams::unit_system','metric'),(15,15,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::currency','USD'),(16,16,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::standard_theme','keevitaja.theme.blog'),(17,17,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::admin_theme','pyrocms.theme.accelerant'),(18,18,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::per_page','15'),(19,19,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::default_locale','en'),(20,20,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::enabled_locales','a:1:{i:0;s:2:\"en\";}'),(21,21,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::debug','0'),(22,22,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::maintenance','0'),(23,23,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::basic_auth','0'),(24,24,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::ip_whitelist','a:0:{}'),(25,25,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::email','keevitaja@gmail.com'),(26,26,'2017-04-08 14:21:12',1,'2017-04-08 14:59:22',1,'streams::sender','PyroCMS');
/*!40000 ALTER TABLE `keevitaja_settings_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_assignments`
--

DROP TABLE IF EXISTS `keevitaja_streams_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_assignments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_assignments`
--

LOCK TABLES `keevitaja_streams_assignments` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_assignments` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_assignments` VALUES (1,1,1,1,'a:0:{}',0,1,0),(2,2,1,2,'a:0:{}',0,1,0),(3,3,1,3,'a:0:{}',0,0,0),(4,4,2,4,'a:0:{}',0,1,1),(5,5,2,5,'a:0:{}',1,1,0),(6,6,2,6,'a:0:{}',0,0,1),(7,7,2,7,'a:0:{}',0,1,0),(8,8,2,13,'a:0:{}',0,0,0),(9,9,3,8,'a:0:{}',0,1,1),(10,10,3,6,'a:0:{}',0,0,1),(11,11,3,9,'a:0:{}',0,1,0),(12,12,3,10,'a:0:{}',0,1,0),(13,13,3,12,'a:0:{}',0,1,0),(14,14,3,13,'a:0:{}',0,0,0),(15,15,3,11,'a:0:{}',0,0,0),(16,16,4,14,'a:0:{}',1,1,1),(17,17,4,15,'a:0:{}',1,1,0),(18,18,4,16,'a:0:{}',0,1,0),(19,19,4,20,'a:0:{}',0,0,1),(20,20,5,18,'a:0:{}',0,1,0),(21,21,5,14,'a:1:{s:3:\"max\";i:50;}',0,1,1),(22,22,5,15,'a:1:{s:3:\"max\";i:50;}',1,1,0),(23,23,5,20,'a:0:{}',0,0,1),(24,24,5,21,'a:0:{}',0,0,0),(25,25,6,14,'a:0:{}',0,1,0),(26,26,6,18,'a:0:{}',0,1,0),(27,27,6,17,'a:0:{}',0,1,0),(28,28,6,23,'a:0:{}',0,1,0),(29,29,6,27,'a:0:{}',0,1,0),(30,30,6,26,'a:0:{}',0,1,0),(31,31,6,19,'a:0:{}',0,0,0),(32,32,6,22,'a:0:{}',0,0,0),(33,33,6,25,'a:0:{}',0,0,0),(34,34,6,24,'a:0:{}',0,0,0),(35,35,7,28,'a:0:{}',1,1,1),(36,36,7,32,'a:0:{}',1,1,0),(37,37,7,30,'a:0:{}',0,0,1),(38,38,8,33,'a:0:{}',0,1,0),(39,39,8,36,'a:0:{}',0,1,0),(40,40,8,31,'a:0:{}',0,1,0),(41,41,8,37,'a:0:{}',0,1,0),(42,42,8,29,'a:0:{}',0,0,0),(43,43,8,34,'a:0:{}',0,0,0),(44,44,8,35,'a:0:{}',0,0,0),(45,45,9,38,'a:0:{}',0,1,0),(46,46,9,39,'a:0:{}',0,1,1),(47,47,9,40,'a:0:{}',0,1,0),(48,48,9,42,'a:0:{}',0,1,0),(49,49,9,52,'a:0:{}',0,1,0),(50,50,9,56,'a:0:{}',0,0,0),(51,51,9,50,'a:0:{}',0,0,0),(52,52,9,54,'a:0:{}',0,0,0),(53,53,9,43,'a:0:{}',0,0,0),(54,54,9,55,'a:0:{}',0,0,0),(55,55,9,44,'a:0:{}',0,0,0),(56,56,9,45,'a:0:{}',0,0,1),(57,57,9,46,'a:0:{}',0,0,1),(58,58,9,47,'a:0:{}',0,0,1),(59,59,9,51,'a:0:{}',0,0,0),(60,60,9,49,'a:0:{}',0,0,0),(61,61,10,57,'a:1:{s:3:\"max\";i:50;}',1,1,1),(62,62,10,40,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(63,63,10,58,'a:0:{}',0,0,1),(64,64,10,51,'a:0:{}',0,1,0),(65,65,10,48,'a:0:{}',0,1,0),(66,66,10,53,'a:0:{}',0,1,0),(67,67,11,60,'a:0:{}',1,1,1),(68,68,11,62,'a:1:{s:7:\"slugify\";s:4:\"name\";}',1,1,0),(69,69,11,67,'a:0:{}',0,0,1),(70,70,12,59,'a:0:{}',1,1,0),(71,71,12,61,'a:0:{}',0,1,1),(72,72,12,66,'a:0:{}',0,0,1),(73,73,12,62,'a:0:{}',1,1,0),(74,74,12,64,'a:0:{}',0,1,0),(75,75,12,68,'a:0:{}',0,1,0),(76,76,12,70,'a:0:{}',0,1,0),(77,77,12,69,'a:0:{}',0,1,0),(78,78,12,75,'a:0:{}',0,0,1),(79,79,12,76,'a:0:{}',0,0,1),(80,80,12,77,'a:0:{}',0,0,1),(81,81,12,72,'a:0:{}',0,0,0),(82,82,12,74,'a:0:{}',0,0,0),(83,83,12,73,'a:0:{}',0,0,0),(84,84,12,65,'a:0:{}',0,0,0),(85,85,13,60,'a:1:{s:3:\"max\";i:50;}',1,1,1),(86,86,13,62,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(87,87,13,71,'a:0:{}',0,1,0),(88,88,13,79,'a:0:{}',0,1,0),(89,89,13,67,'a:0:{}',0,0,1),(90,90,14,80,'a:0:{}',0,1,0),(91,91,14,81,'a:0:{}',0,1,0),(92,92,14,82,'a:0:{}',0,0,0),(93,93,15,83,'a:0:{}',1,1,0),(94,94,15,84,'a:0:{}',0,1,0),(95,95,15,85,'a:0:{}',0,1,0),(96,96,15,86,'a:0:{}',0,0,0),(97,97,16,87,'a:0:{}',1,1,0),(98,98,16,88,'a:0:{}',0,0,0),(99,99,17,89,'a:0:{}',1,1,0),(100,100,17,90,'a:0:{}',1,1,0),(101,101,17,91,'a:0:{}',0,1,0),(102,102,17,109,'a:0:{}',0,1,0),(103,103,17,97,'a:0:{}',0,1,0),(104,104,17,98,'a:0:{}',0,0,0),(105,105,17,99,'a:0:{}',0,0,0),(106,106,17,106,'a:0:{}',0,0,0),(107,107,17,107,'a:0:{}',0,0,0),(108,108,17,96,'a:0:{}',0,0,0),(109,109,17,94,'a:0:{}',0,0,0),(110,110,17,92,'a:0:{}',0,0,0),(111,111,17,104,'a:0:{}',0,0,0),(112,112,17,102,'a:0:{}',0,0,0),(113,113,17,95,'a:0:{}',0,0,0),(114,114,17,93,'a:0:{}',0,0,0),(115,115,18,100,'a:0:{}',0,1,1),(116,116,18,108,'a:0:{}',1,1,0),(117,117,18,101,'a:0:{}',0,0,1),(118,118,18,96,'a:0:{}',0,0,0),(119,119,19,110,'a:0:{}',0,0,1),(120,120,19,111,'a:0:{}',0,1,0),(121,121,19,112,'a:0:{}',0,0,1),(122,122,20,113,'a:0:{}',0,1,1),(123,123,20,114,'a:0:{}',0,1,0),(124,124,20,115,'a:0:{}',0,0,1),(127,126,23,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(128,126,24,117,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(129,127,25,119,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(130,128,25,118,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,0),(131,129,25,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,0),(132,130,26,118,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,0),(133,131,26,120,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,0),(134,132,24,122,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(135,133,24,123,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0);
/*!40000 ALTER TABLE `keevitaja_streams_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_assignments_translations`
--

DROP TABLE IF EXISTS `keevitaja_streams_assignments_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_assignments_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `streams_assignments_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_assignments_translations`
--

LOCK TABLES `keevitaja_streams_assignments_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_assignments_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_assignments_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.label.configuration','anomaly.module.configuration::field.scope.warning.configuration','anomaly.module.configuration::field.scope.placeholder.configuration','anomaly.module.configuration::field.scope.instructions.configuration'),(2,2,'en','anomaly.module.configuration::field.key.label.configuration','anomaly.module.configuration::field.key.warning.configuration','anomaly.module.configuration::field.key.placeholder.configuration','anomaly.module.configuration::field.key.instructions.configuration'),(3,3,'en','anomaly.module.configuration::field.value.label.configuration','anomaly.module.configuration::field.value.warning.configuration','anomaly.module.configuration::field.value.placeholder.configuration','anomaly.module.configuration::field.value.instructions.configuration'),(4,4,'en','anomaly.module.dashboard::field.name.label.dashboards','anomaly.module.dashboard::field.name.warning.dashboards','anomaly.module.dashboard::field.name.placeholder.dashboards','anomaly.module.dashboard::field.name.instructions.dashboards'),(5,5,'en','anomaly.module.dashboard::field.slug.label.dashboards','anomaly.module.dashboard::field.slug.warning.dashboards','anomaly.module.dashboard::field.slug.placeholder.dashboards','anomaly.module.dashboard::field.slug.instructions.dashboards'),(6,6,'en','anomaly.module.dashboard::field.description.label.dashboards','anomaly.module.dashboard::field.description.warning.dashboards','anomaly.module.dashboard::field.description.placeholder.dashboards','anomaly.module.dashboard::field.description.instructions.dashboards'),(7,7,'en','anomaly.module.dashboard::field.layout.label.dashboards','anomaly.module.dashboard::field.layout.warning.dashboards','anomaly.module.dashboard::field.layout.placeholder.dashboards','anomaly.module.dashboard::field.layout.instructions.dashboards'),(8,8,'en','anomaly.module.dashboard::field.allowed_roles.label.dashboards','anomaly.module.dashboard::field.allowed_roles.warning.dashboards','anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards','anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),(9,9,'en','anomaly.module.dashboard::field.title.label.widgets','anomaly.module.dashboard::field.title.warning.widgets','anomaly.module.dashboard::field.title.placeholder.widgets','anomaly.module.dashboard::field.title.instructions.widgets'),(10,10,'en','anomaly.module.dashboard::field.description.label.widgets','anomaly.module.dashboard::field.description.warning.widgets','anomaly.module.dashboard::field.description.placeholder.widgets','anomaly.module.dashboard::field.description.instructions.widgets'),(11,11,'en','anomaly.module.dashboard::field.extension.label.widgets','anomaly.module.dashboard::field.extension.warning.widgets','anomaly.module.dashboard::field.extension.placeholder.widgets','anomaly.module.dashboard::field.extension.instructions.widgets'),(12,12,'en','anomaly.module.dashboard::field.column.label.widgets','anomaly.module.dashboard::field.column.warning.widgets','anomaly.module.dashboard::field.column.placeholder.widgets','anomaly.module.dashboard::field.column.instructions.widgets'),(13,13,'en','anomaly.module.dashboard::field.dashboard.label.widgets','anomaly.module.dashboard::field.dashboard.warning.widgets','anomaly.module.dashboard::field.dashboard.placeholder.widgets','anomaly.module.dashboard::field.dashboard.instructions.widgets'),(14,14,'en','anomaly.module.dashboard::field.allowed_roles.label.widgets','anomaly.module.dashboard::field.allowed_roles.warning.widgets','anomaly.module.dashboard::field.allowed_roles.placeholder.widgets','anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),(15,15,'en','anomaly.module.dashboard::field.pinned.label.widgets','anomaly.module.dashboard::field.pinned.warning.widgets','anomaly.module.dashboard::field.pinned.placeholder.widgets','anomaly.module.dashboard::field.pinned.instructions.widgets'),(16,16,'en','anomaly.module.files::field.name.label.disks','anomaly.module.files::field.name.warning.disks','anomaly.module.files::field.name.placeholder.disks','anomaly.module.files::field.name.instructions.disks'),(17,17,'en','anomaly.module.files::field.slug.label.disks','anomaly.module.files::field.slug.warning.disks','anomaly.module.files::field.slug.placeholder.disks','anomaly.module.files::field.slug.instructions.disks'),(18,18,'en','anomaly.module.files::field.adapter.label.disks','anomaly.module.files::field.adapter.warning.disks','anomaly.module.files::field.adapter.placeholder.disks','anomaly.module.files::field.adapter.instructions.disks'),(19,19,'en','anomaly.module.files::field.description.label.disks','anomaly.module.files::field.description.warning.disks','anomaly.module.files::field.description.placeholder.disks','anomaly.module.files::field.description.instructions.disks'),(20,20,'en','anomaly.module.files::field.disk.label.folders','anomaly.module.files::field.disk.warning.folders','anomaly.module.files::field.disk.placeholder.folders','anomaly.module.files::field.disk.instructions.folders'),(21,21,'en','anomaly.module.files::field.name.label.folders','anomaly.module.files::field.name.warning.folders','anomaly.module.files::field.name.placeholder.folders','anomaly.module.files::field.name.instructions.folders'),(22,22,'en','anomaly.module.files::field.slug.label.folders','anomaly.module.files::field.slug.warning.folders','anomaly.module.files::field.slug.placeholder.folders','anomaly.module.files::field.slug.instructions.folders'),(23,23,'en','anomaly.module.files::field.description.label.folders','anomaly.module.files::field.description.warning.folders','anomaly.module.files::field.description.placeholder.folders','anomaly.module.files::field.description.instructions.folders'),(24,24,'en','anomaly.module.files::field.allowed_types.label.folders','anomaly.module.files::field.allowed_types.warning.folders','anomaly.module.files::field.allowed_types.placeholder.folders','anomaly.module.files::field.allowed_types.instructions.folders'),(25,25,'en','anomaly.module.files::field.name.label.files','anomaly.module.files::field.name.warning.files','anomaly.module.files::field.name.placeholder.files','anomaly.module.files::field.name.instructions.files'),(26,26,'en','anomaly.module.files::field.disk.label.files','anomaly.module.files::field.disk.warning.files','anomaly.module.files::field.disk.placeholder.files','anomaly.module.files::field.disk.instructions.files'),(27,27,'en','anomaly.module.files::field.folder.label.files','anomaly.module.files::field.folder.warning.files','anomaly.module.files::field.folder.placeholder.files','anomaly.module.files::field.folder.instructions.files'),(28,28,'en','anomaly.module.files::field.extension.label.files','anomaly.module.files::field.extension.warning.files','anomaly.module.files::field.extension.placeholder.files','anomaly.module.files::field.extension.instructions.files'),(29,29,'en','anomaly.module.files::field.size.label.files','anomaly.module.files::field.size.warning.files','anomaly.module.files::field.size.placeholder.files','anomaly.module.files::field.size.instructions.files'),(30,30,'en','anomaly.module.files::field.mime_type.label.files','anomaly.module.files::field.mime_type.warning.files','anomaly.module.files::field.mime_type.placeholder.files','anomaly.module.files::field.mime_type.instructions.files'),(31,31,'en','anomaly.module.files::field.entry.label.files','anomaly.module.files::field.entry.warning.files','anomaly.module.files::field.entry.placeholder.files','anomaly.module.files::field.entry.instructions.files'),(32,32,'en','anomaly.module.files::field.keywords.label.files','anomaly.module.files::field.keywords.warning.files','anomaly.module.files::field.keywords.placeholder.files','anomaly.module.files::field.keywords.instructions.files'),(33,33,'en','anomaly.module.files::field.height.label.files','anomaly.module.files::field.height.warning.files','anomaly.module.files::field.height.placeholder.files','anomaly.module.files::field.height.instructions.files'),(34,34,'en','anomaly.module.files::field.width.label.files','anomaly.module.files::field.width.warning.files','anomaly.module.files::field.width.placeholder.files','anomaly.module.files::field.width.instructions.files'),(35,35,'en','anomaly.module.navigation::field.name.label.menus','anomaly.module.navigation::field.name.warning.menus','anomaly.module.navigation::field.name.placeholder.menus','anomaly.module.navigation::field.name.instructions.menus'),(36,36,'en','anomaly.module.navigation::field.slug.label.menus','anomaly.module.navigation::field.slug.warning.menus','anomaly.module.navigation::field.slug.placeholder.menus','anomaly.module.navigation::field.slug.instructions.menus'),(37,37,'en','anomaly.module.navigation::field.description.label.menus','anomaly.module.navigation::field.description.warning.menus','anomaly.module.navigation::field.description.placeholder.menus','anomaly.module.navigation::field.description.instructions.menus'),(38,38,'en','anomaly.module.navigation::field.menu.label.links','anomaly.module.navigation::field.menu.warning.links','anomaly.module.navigation::field.menu.placeholder.links','anomaly.module.navigation::field.menu.instructions.links'),(39,39,'en','anomaly.module.navigation::field.type.label.links','anomaly.module.navigation::field.type.warning.links','anomaly.module.navigation::field.type.placeholder.links','anomaly.module.navigation::field.type.instructions.links'),(40,40,'en','anomaly.module.navigation::field.entry.label.links','anomaly.module.navigation::field.entry.warning.links','anomaly.module.navigation::field.entry.placeholder.links','anomaly.module.navigation::field.entry.instructions.links'),(41,41,'en','anomaly.module.navigation::field.target.label.links','anomaly.module.navigation::field.target.warning.links','anomaly.module.navigation::field.target.placeholder.links','anomaly.module.navigation::field.target.instructions.links'),(42,42,'en','anomaly.module.navigation::field.class.label.links','anomaly.module.navigation::field.class.warning.links','anomaly.module.navigation::field.class.placeholder.links','anomaly.module.navigation::field.class.instructions.links'),(43,43,'en','anomaly.module.navigation::field.parent.label.links','anomaly.module.navigation::field.parent.warning.links','anomaly.module.navigation::field.parent.placeholder.links','anomaly.module.navigation::field.parent.instructions.links'),(44,44,'en','anomaly.module.navigation::field.allowed_roles.label.links','anomaly.module.navigation::field.allowed_roles.warning.links','anomaly.module.navigation::field.allowed_roles.placeholder.links','anomaly.module.navigation::field.allowed_roles.instructions.links'),(45,45,'en','anomaly.module.pages::field.str_id.label.pages','anomaly.module.pages::field.str_id.warning.pages','anomaly.module.pages::field.str_id.placeholder.pages','anomaly.module.pages::field.str_id.instructions.pages'),(46,46,'en','anomaly.module.pages::field.title.label.pages','anomaly.module.pages::field.title.warning.pages','anomaly.module.pages::field.title.placeholder.pages','anomaly.module.pages::field.title.instructions.pages'),(47,47,'en','anomaly.module.pages::field.slug.label.pages','anomaly.module.pages::field.slug.warning.pages','anomaly.module.pages::field.slug.placeholder.pages','anomaly.module.pages::field.slug.instructions.pages'),(48,48,'en','anomaly.module.pages::field.path.label.pages','anomaly.module.pages::field.path.warning.pages','anomaly.module.pages::field.path.placeholder.pages','anomaly.module.pages::field.path.instructions.pages'),(49,49,'en','anomaly.module.pages::field.type.label.pages','anomaly.module.pages::field.type.warning.pages','anomaly.module.pages::field.type.placeholder.pages','anomaly.module.pages::field.type.instructions.pages'),(50,50,'en','anomaly.module.pages::field.entry.label.pages','anomaly.module.pages::field.entry.warning.pages','anomaly.module.pages::field.entry.placeholder.pages','anomaly.module.pages::field.entry.instructions.pages'),(51,51,'en','anomaly.module.pages::field.parent.label.pages','anomaly.module.pages::field.parent.warning.pages','anomaly.module.pages::field.parent.placeholder.pages','anomaly.module.pages::field.parent.instructions.pages'),(52,52,'en','anomaly.module.pages::field.visible.label.pages','anomaly.module.pages::field.visible.warning.pages','anomaly.module.pages::field.visible.placeholder.pages','anomaly.module.pages::field.visible.instructions.pages'),(53,53,'en','anomaly.module.pages::field.enabled.label.pages','anomaly.module.pages::field.enabled.warning.pages','anomaly.module.pages::field.enabled.placeholder.pages','anomaly.module.pages::field.enabled.instructions.pages'),(54,54,'en','anomaly.module.pages::field.exact.label.pages','anomaly.module.pages::field.exact.warning.pages','anomaly.module.pages::field.exact.placeholder.pages','anomaly.module.pages::field.exact.instructions.pages'),(55,55,'en','anomaly.module.pages::field.home.label.pages','anomaly.module.pages::field.home.warning.pages','anomaly.module.pages::field.home.placeholder.pages','anomaly.module.pages::field.home.instructions.pages'),(56,56,'en','anomaly.module.pages::field.meta_title.label.pages','anomaly.module.pages::field.meta_title.warning.pages','anomaly.module.pages::field.meta_title.placeholder.pages','anomaly.module.pages::field.meta_title.instructions.pages'),(57,57,'en','anomaly.module.pages::field.meta_description.label.pages','anomaly.module.pages::field.meta_description.warning.pages','anomaly.module.pages::field.meta_description.placeholder.pages','anomaly.module.pages::field.meta_description.instructions.pages'),(58,58,'en','anomaly.module.pages::field.meta_keywords.label.pages','anomaly.module.pages::field.meta_keywords.warning.pages','anomaly.module.pages::field.meta_keywords.placeholder.pages','anomaly.module.pages::field.meta_keywords.instructions.pages'),(59,59,'en','anomaly.module.pages::field.theme_layout.label.pages','anomaly.module.pages::field.theme_layout.warning.pages','anomaly.module.pages::field.theme_layout.placeholder.pages','anomaly.module.pages::field.theme_layout.instructions.pages'),(60,60,'en','anomaly.module.pages::field.allowed_roles.label.pages','anomaly.module.pages::field.allowed_roles.warning.pages','anomaly.module.pages::field.allowed_roles.placeholder.pages','anomaly.module.pages::field.allowed_roles.instructions.pages'),(61,61,'en','anomaly.module.pages::field.name.label.types','anomaly.module.pages::field.name.warning.types','anomaly.module.pages::field.name.placeholder.types','anomaly.module.pages::field.name.instructions.types'),(62,62,'en','anomaly.module.pages::field.slug.label.types','anomaly.module.pages::field.slug.warning.types','anomaly.module.pages::field.slug.placeholder.types','anomaly.module.pages::field.slug.instructions.types'),(63,63,'en','anomaly.module.pages::field.description.label.types','anomaly.module.pages::field.description.warning.types','anomaly.module.pages::field.description.placeholder.types','anomaly.module.pages::field.description.instructions.types'),(64,64,'en','anomaly.module.pages::field.theme_layout.label.types','anomaly.module.pages::field.theme_layout.warning.types','anomaly.module.pages::field.theme_layout.placeholder.types','anomaly.module.pages::field.theme_layout.instructions.types'),(65,65,'en','anomaly.module.pages::field.layout.label.types','anomaly.module.pages::field.layout.warning.types','anomaly.module.pages::field.layout.placeholder.types','anomaly.module.pages::field.layout.instructions.types'),(66,66,'en','anomaly.module.pages::field.handler.label.types','anomaly.module.pages::field.handler.warning.types','anomaly.module.pages::field.handler.placeholder.types','anomaly.module.pages::field.handler.instructions.types'),(67,67,'en','anomaly.module.posts::field.name.label.categories','anomaly.module.posts::field.name.warning.categories','anomaly.module.posts::field.name.placeholder.categories','anomaly.module.posts::field.name.instructions.categories'),(68,68,'en','anomaly.module.posts::field.slug.label.categories','anomaly.module.posts::field.slug.warning.categories','anomaly.module.posts::field.slug.placeholder.categories','anomaly.module.posts::field.slug.instructions.categories'),(69,69,'en','anomaly.module.posts::field.description.label.categories','anomaly.module.posts::field.description.warning.categories','anomaly.module.posts::field.description.placeholder.categories','anomaly.module.posts::field.description.instructions.categories'),(70,70,'en','anomaly.module.posts::field.str_id.label.posts','anomaly.module.posts::field.str_id.warning.posts','anomaly.module.posts::field.str_id.placeholder.posts','anomaly.module.posts::field.str_id.instructions.posts'),(71,71,'en','anomaly.module.posts::field.title.label.posts','anomaly.module.posts::field.title.warning.posts','anomaly.module.posts::field.title.placeholder.posts','anomaly.module.posts::field.title.instructions.posts'),(72,72,'en','anomaly.module.posts::field.summary.label.posts','anomaly.module.posts::field.summary.warning.posts','anomaly.module.posts::field.summary.placeholder.posts','anomaly.module.posts::field.summary.instructions.posts'),(73,73,'en','anomaly.module.posts::field.slug.label.posts','anomaly.module.posts::field.slug.warning.posts','anomaly.module.posts::field.slug.placeholder.posts','anomaly.module.posts::field.slug.instructions.posts'),(74,74,'en','anomaly.module.posts::field.type.label.posts','anomaly.module.posts::field.type.warning.posts','anomaly.module.posts::field.type.placeholder.posts','anomaly.module.posts::field.type.instructions.posts'),(75,75,'en','anomaly.module.posts::field.publish_at.label.posts','anomaly.module.posts::field.publish_at.warning.posts','anomaly.module.posts::field.publish_at.placeholder.posts','anomaly.module.posts::field.publish_at.instructions.posts'),(76,76,'en','anomaly.module.posts::field.author.label.posts','anomaly.module.posts::field.author.warning.posts','anomaly.module.posts::field.author.placeholder.posts','anomaly.module.posts::field.author.instructions.posts'),(77,77,'en','anomaly.module.posts::field.entry.label.posts','anomaly.module.posts::field.entry.warning.posts','anomaly.module.posts::field.entry.placeholder.posts','anomaly.module.posts::field.entry.instructions.posts'),(78,78,'en','anomaly.module.posts::field.meta_title.label.posts','anomaly.module.posts::field.meta_title.warning.posts','anomaly.module.posts::field.meta_title.placeholder.posts','anomaly.module.posts::field.meta_title.instructions.posts'),(79,79,'en','anomaly.module.posts::field.meta_description.label.posts','anomaly.module.posts::field.meta_description.warning.posts','anomaly.module.posts::field.meta_description.placeholder.posts','anomaly.module.posts::field.meta_description.instructions.posts'),(80,80,'en','anomaly.module.posts::field.meta_keywords.label.posts','anomaly.module.posts::field.meta_keywords.warning.posts','anomaly.module.posts::field.meta_keywords.placeholder.posts','anomaly.module.posts::field.meta_keywords.instructions.posts'),(81,81,'en','anomaly.module.posts::field.category.label.posts','anomaly.module.posts::field.category.warning.posts','anomaly.module.posts::field.category.placeholder.posts','anomaly.module.posts::field.category.instructions.posts'),(82,82,'en','anomaly.module.posts::field.featured.label.posts','anomaly.module.posts::field.featured.warning.posts','anomaly.module.posts::field.featured.placeholder.posts','anomaly.module.posts::field.featured.instructions.posts'),(83,83,'en','anomaly.module.posts::field.enabled.label.posts','anomaly.module.posts::field.enabled.warning.posts','anomaly.module.posts::field.enabled.placeholder.posts','anomaly.module.posts::field.enabled.instructions.posts'),(84,84,'en','anomaly.module.posts::field.tags.label.posts','anomaly.module.posts::field.tags.warning.posts','anomaly.module.posts::field.tags.placeholder.posts','anomaly.module.posts::field.tags.instructions.posts'),(85,85,'en','anomaly.module.posts::field.name.label.types','anomaly.module.posts::field.name.warning.types','anomaly.module.posts::field.name.placeholder.types','anomaly.module.posts::field.name.instructions.types'),(86,86,'en','anomaly.module.posts::field.slug.label.types','anomaly.module.posts::field.slug.warning.types','anomaly.module.posts::field.slug.placeholder.types','anomaly.module.posts::field.slug.instructions.types'),(87,87,'en','anomaly.module.posts::field.layout.label.types','anomaly.module.posts::field.layout.warning.types','anomaly.module.posts::field.layout.placeholder.types','anomaly.module.posts::field.layout.instructions.types'),(88,88,'en','anomaly.module.posts::field.theme_layout.label.types','anomaly.module.posts::field.theme_layout.warning.types','anomaly.module.posts::field.theme_layout.placeholder.types','anomaly.module.posts::field.theme_layout.instructions.types'),(89,89,'en','anomaly.module.posts::field.description.label.types','anomaly.module.posts::field.description.warning.types','anomaly.module.posts::field.description.placeholder.types','anomaly.module.posts::field.description.instructions.types'),(90,90,'en','anomaly.module.preferences::field.user.label.preferences','anomaly.module.preferences::field.user.warning.preferences','anomaly.module.preferences::field.user.placeholder.preferences','anomaly.module.preferences::field.user.instructions.preferences'),(91,91,'en','anomaly.module.preferences::field.key.label.preferences','anomaly.module.preferences::field.key.warning.preferences','anomaly.module.preferences::field.key.placeholder.preferences','anomaly.module.preferences::field.key.instructions.preferences'),(92,92,'en','anomaly.module.preferences::field.value.label.preferences','anomaly.module.preferences::field.value.warning.preferences','anomaly.module.preferences::field.value.placeholder.preferences','anomaly.module.preferences::field.value.instructions.preferences'),(93,93,'en','anomaly.module.redirects::field.from.label.redirects','anomaly.module.redirects::field.from.warning.redirects','anomaly.module.redirects::field.from.placeholder.redirects','anomaly.module.redirects::field.from.instructions.redirects'),(94,94,'en','anomaly.module.redirects::field.to.label.redirects','anomaly.module.redirects::field.to.warning.redirects','anomaly.module.redirects::field.to.placeholder.redirects','anomaly.module.redirects::field.to.instructions.redirects'),(95,95,'en','anomaly.module.redirects::field.status.label.redirects','anomaly.module.redirects::field.status.warning.redirects','anomaly.module.redirects::field.status.placeholder.redirects','anomaly.module.redirects::field.status.instructions.redirects'),(96,96,'en','anomaly.module.redirects::field.secure.label.redirects','anomaly.module.redirects::field.secure.warning.redirects','anomaly.module.redirects::field.secure.placeholder.redirects','anomaly.module.redirects::field.secure.instructions.redirects'),(97,97,'en','anomaly.module.settings::field.key.label.settings','anomaly.module.settings::field.key.warning.settings','anomaly.module.settings::field.key.placeholder.settings','anomaly.module.settings::field.key.instructions.settings'),(98,98,'en','anomaly.module.settings::field.value.label.settings','anomaly.module.settings::field.value.warning.settings','anomaly.module.settings::field.value.placeholder.settings','anomaly.module.settings::field.value.instructions.settings'),(99,99,'en','anomaly.module.users::field.email.label.users','anomaly.module.users::field.email.warning.users','anomaly.module.users::field.email.placeholder.users','anomaly.module.users::field.email.instructions.users'),(100,100,'en','anomaly.module.users::field.username.label.users','anomaly.module.users::field.username.warning.users','anomaly.module.users::field.username.placeholder.users','anomaly.module.users::field.username.instructions.users'),(101,101,'en','anomaly.module.users::field.password.label.users','anomaly.module.users::field.password.warning.users','anomaly.module.users::field.password.placeholder.users','anomaly.module.users::field.password.instructions.users'),(102,102,'en','anomaly.module.users::field.roles.label.users','anomaly.module.users::field.roles.warning.users','anomaly.module.users::field.roles.placeholder.users','anomaly.module.users::field.roles.instructions.users'),(103,103,'en','anomaly.module.users::field.display_name.label.users','anomaly.module.users::field.display_name.warning.users','anomaly.module.users::field.display_name.placeholder.users','anomaly.module.users::field.display_name.instructions.users'),(104,104,'en','anomaly.module.users::field.first_name.label.users','anomaly.module.users::field.first_name.warning.users','anomaly.module.users::field.first_name.placeholder.users','anomaly.module.users::field.first_name.instructions.users'),(105,105,'en','anomaly.module.users::field.last_name.label.users','anomaly.module.users::field.last_name.warning.users','anomaly.module.users::field.last_name.placeholder.users','anomaly.module.users::field.last_name.instructions.users'),(106,106,'en','anomaly.module.users::field.activated.label.users','anomaly.module.users::field.activated.warning.users','anomaly.module.users::field.activated.placeholder.users','anomaly.module.users::field.activated.instructions.users'),(107,107,'en','anomaly.module.users::field.enabled.label.users','anomaly.module.users::field.enabled.warning.users','anomaly.module.users::field.enabled.placeholder.users','anomaly.module.users::field.enabled.instructions.users'),(108,108,'en','anomaly.module.users::field.permissions.label.users','anomaly.module.users::field.permissions.warning.users','anomaly.module.users::field.permissions.placeholder.users','anomaly.module.users::field.permissions.instructions.users'),(109,109,'en','anomaly.module.users::field.last_login_at.label.users','anomaly.module.users::field.last_login_at.warning.users','anomaly.module.users::field.last_login_at.placeholder.users','anomaly.module.users::field.last_login_at.instructions.users'),(110,110,'en','anomaly.module.users::field.remember_token.label.users','anomaly.module.users::field.remember_token.warning.users','anomaly.module.users::field.remember_token.placeholder.users','anomaly.module.users::field.remember_token.instructions.users'),(111,111,'en','anomaly.module.users::field.activation_code.label.users','anomaly.module.users::field.activation_code.warning.users','anomaly.module.users::field.activation_code.placeholder.users','anomaly.module.users::field.activation_code.instructions.users'),(112,112,'en','anomaly.module.users::field.reset_code.label.users','anomaly.module.users::field.reset_code.warning.users','anomaly.module.users::field.reset_code.placeholder.users','anomaly.module.users::field.reset_code.instructions.users'),(113,113,'en','anomaly.module.users::field.last_activity_at.label.users','anomaly.module.users::field.last_activity_at.warning.users','anomaly.module.users::field.last_activity_at.placeholder.users','anomaly.module.users::field.last_activity_at.instructions.users'),(114,114,'en','anomaly.module.users::field.ip_address.label.users','anomaly.module.users::field.ip_address.warning.users','anomaly.module.users::field.ip_address.placeholder.users','anomaly.module.users::field.ip_address.instructions.users'),(115,115,'en','anomaly.module.users::field.name.label.roles','anomaly.module.users::field.name.warning.roles','anomaly.module.users::field.name.placeholder.roles','anomaly.module.users::field.name.instructions.roles'),(116,116,'en','anomaly.module.users::field.slug.label.roles','anomaly.module.users::field.slug.warning.roles','anomaly.module.users::field.slug.placeholder.roles','anomaly.module.users::field.slug.instructions.roles'),(117,117,'en','anomaly.module.users::field.description.label.roles','anomaly.module.users::field.description.warning.roles','anomaly.module.users::field.description.placeholder.roles','anomaly.module.users::field.description.instructions.roles'),(118,118,'en','anomaly.module.users::field.permissions.label.roles','anomaly.module.users::field.permissions.warning.roles','anomaly.module.users::field.permissions.placeholder.roles','anomaly.module.users::field.permissions.instructions.roles'),(119,119,'en','anomaly.extension.page_link_type::field.title.label.pages','anomaly.extension.page_link_type::field.title.warning.pages','anomaly.extension.page_link_type::field.title.placeholder.pages','anomaly.extension.page_link_type::field.title.instructions.pages'),(120,120,'en','anomaly.extension.page_link_type::field.page.label.pages','anomaly.extension.page_link_type::field.page.warning.pages','anomaly.extension.page_link_type::field.page.placeholder.pages','anomaly.extension.page_link_type::field.page.instructions.pages'),(121,121,'en','anomaly.extension.page_link_type::field.description.label.pages','anomaly.extension.page_link_type::field.description.warning.pages','anomaly.extension.page_link_type::field.description.placeholder.pages','anomaly.extension.page_link_type::field.description.instructions.pages'),(122,122,'en','anomaly.extension.url_link_type::field.title.label.urls','anomaly.extension.url_link_type::field.title.warning.urls','anomaly.extension.url_link_type::field.title.placeholder.urls','anomaly.extension.url_link_type::field.title.instructions.urls'),(123,123,'en','anomaly.extension.url_link_type::field.url.label.urls','anomaly.extension.url_link_type::field.url.warning.urls','anomaly.extension.url_link_type::field.url.placeholder.urls','anomaly.extension.url_link_type::field.url.instructions.urls'),(124,124,'en','anomaly.extension.url_link_type::field.description.label.urls','anomaly.extension.url_link_type::field.description.warning.urls','anomaly.extension.url_link_type::field.description.placeholder.urls','anomaly.extension.url_link_type::field.description.instructions.urls'),(127,127,'en',NULL,NULL,NULL,NULL),(128,128,'en',NULL,NULL,NULL,NULL),(129,129,'en',NULL,NULL,NULL,NULL),(130,130,'en',NULL,NULL,NULL,NULL),(131,131,'en',NULL,NULL,NULL,NULL),(132,132,'en',NULL,NULL,NULL,NULL),(133,133,'en',NULL,NULL,NULL,NULL),(134,134,'en',NULL,NULL,NULL,NULL),(135,135,'en',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `keevitaja_streams_assignments_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_fields`
--

DROP TABLE IF EXISTS `keevitaja_streams_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_fields` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_fields`
--

LOCK TABLES `keevitaja_streams_fields` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_fields` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_fields` VALUES (1,'configuration','scope','anomaly.field_type.text','a:0:{}',1),(2,'configuration','key','anomaly.field_type.text','a:0:{}',1),(3,'configuration','value','anomaly.field_type.textarea','a:0:{}',1),(4,'dashboard','name','anomaly.field_type.text','a:0:{}',1),(5,'dashboard','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(6,'dashboard','description','anomaly.field_type.textarea','a:0:{}',1),(7,'dashboard','layout','anomaly.field_type.select','a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}',1),(8,'dashboard','title','anomaly.field_type.text','a:0:{}',1),(9,'dashboard','extension','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}',1),(10,'dashboard','column','anomaly.field_type.integer','a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}',1),(11,'dashboard','pinned','anomaly.field_type.boolean','a:0:{}',1),(12,'dashboard','dashboard','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}',1),(13,'dashboard','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(14,'files','name','anomaly.field_type.text','a:0:{}',1),(15,'files','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(16,'files','adapter','anomaly.field_type.addon','a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}',1),(17,'files','folder','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}',1),(18,'files','disk','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}',1),(19,'files','entry','anomaly.field_type.polymorphic','a:0:{}',1),(20,'files','description','anomaly.field_type.textarea','a:0:{}',1),(21,'files','allowed_types','anomaly.field_type.tags','a:0:{}',1),(22,'files','keywords','anomaly.field_type.tags','a:0:{}',1),(23,'files','extension','anomaly.field_type.text','a:0:{}',1),(24,'files','width','anomaly.field_type.text','a:0:{}',1),(25,'files','height','anomaly.field_type.text','a:0:{}',1),(26,'files','mime_type','anomaly.field_type.text','a:0:{}',1),(27,'files','size','anomaly.field_type.integer','a:0:{}',1),(28,'navigation','name','anomaly.field_type.text','a:0:{}',1),(29,'navigation','class','anomaly.field_type.text','a:0:{}',1),(30,'navigation','description','anomaly.field_type.textarea','a:0:{}',1),(31,'navigation','entry','anomaly.field_type.polymorphic','a:0:{}',1),(32,'navigation','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(33,'navigation','menu','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}',1),(34,'navigation','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}',1),(35,'navigation','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(36,'navigation','type','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}',1),(37,'navigation','target','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}',1),(38,'pages','str_id','anomaly.field_type.text','a:0:{}',1),(39,'pages','title','anomaly.field_type.text','a:0:{}',1),(40,'pages','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(42,'pages','path','anomaly.field_type.text','a:0:{}',1),(43,'pages','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(44,'pages','home','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(45,'pages','meta_title','anomaly.field_type.text','a:0:{}',1),(46,'pages','meta_description','anomaly.field_type.textarea','a:0:{}',1),(47,'pages','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(48,'pages','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}',1),(49,'pages','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(50,'pages','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(51,'pages','theme_layout','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}',1),(52,'pages','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}',1),(53,'pages','handler','anomaly.field_type.addon','a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}',1),(54,'pages','visible','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(55,'pages','exact','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(56,'pages','entry','anomaly.field_type.polymorphic','a:0:{}',1),(57,'pages','name','anomaly.field_type.text','a:0:{}',1),(58,'pages','description','anomaly.field_type.textarea','a:0:{}',1),(59,'posts','str_id','anomaly.field_type.text','a:0:{}',1),(60,'posts','name','anomaly.field_type.text','a:0:{}',1),(61,'posts','title','anomaly.field_type.text','a:0:{}',1),(62,'posts','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(64,'posts','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}',1),(65,'posts','tags','anomaly.field_type.tags','a:0:{}',1),(66,'posts','summary','anomaly.field_type.textarea','a:0:{}',1),(67,'posts','description','anomaly.field_type.textarea','a:0:{}',1),(68,'posts','publish_at','anomaly.field_type.datetime','a:0:{}',1),(69,'posts','entry','anomaly.field_type.polymorphic','a:0:{}',1),(70,'posts','author','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(71,'posts','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}',1),(72,'posts','category','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}',1),(73,'posts','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(74,'posts','featured','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(75,'posts','meta_title','anomaly.field_type.text','a:0:{}',1),(76,'posts','meta_description','anomaly.field_type.textarea','a:0:{}',1),(77,'posts','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(78,'posts','ttl','anomaly.field_type.integer','a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}',1),(79,'posts','theme_layout','anomaly.field_type.select','a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}',1),(80,'preferences','user','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(81,'preferences','key','anomaly.field_type.text','a:0:{}',1),(82,'preferences','value','anomaly.field_type.textarea','a:0:{}',1),(83,'redirects','from','anomaly.field_type.text','a:0:{}',1),(84,'redirects','to','anomaly.field_type.text','a:0:{}',1),(85,'redirects','status','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}',1),(86,'redirects','secure','anomaly.field_type.boolean','a:0:{}',1),(87,'settings','key','anomaly.field_type.text','a:0:{}',1),(88,'settings','value','anomaly.field_type.textarea','a:0:{}',1),(89,'users','email','anomaly.field_type.email','a:0:{}',1),(90,'users','username','anomaly.field_type.slug','a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}',1),(91,'users','password','anomaly.field_type.text','a:1:{s:4:\"type\";s:8:\"password\";}',1),(92,'users','remember_token','anomaly.field_type.text','a:0:{}',1),(93,'users','ip_address','anomaly.field_type.text','a:0:{}',1),(94,'users','last_login_at','anomaly.field_type.datetime','a:0:{}',1),(95,'users','last_activity_at','anomaly.field_type.datetime','a:0:{}',1),(96,'users','permissions','anomaly.field_type.checkboxes','a:0:{}',1),(97,'users','display_name','anomaly.field_type.text','a:0:{}',1),(98,'users','first_name','anomaly.field_type.text','a:0:{}',1),(99,'users','last_name','anomaly.field_type.text','a:0:{}',1),(100,'users','name','anomaly.field_type.text','a:0:{}',1),(101,'users','description','anomaly.field_type.textarea','a:0:{}',1),(102,'users','reset_code','anomaly.field_type.text','a:0:{}',1),(103,'users','reset_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(104,'users','activation_code','anomaly.field_type.text','a:0:{}',1),(105,'users','activation_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(106,'users','activated','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(107,'users','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(108,'users','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(109,'users','roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(110,'page_link_type','title','anomaly.field_type.text','a:0:{}',1),(111,'page_link_type','page','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(112,'page_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(113,'url_link_type','title','anomaly.field_type.text','a:0:{}',1),(114,'url_link_type','url','anomaly.field_type.text','a:0:{}',1),(115,'url_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(116,'pages','content','anomaly.field_type.markdown','a:1:{s:6:\"height\";s:3:\"700\";}',0),(117,'posts','content','anomaly.field_type.markdown','a:1:{s:6:\"height\";s:3:\"700\";}',0),(118,'repeater','slug','anomaly.field_type.slug','a:5:{s:4:\"type\";s:1:\"_\";s:7:\"slugify\";N;s:9:\"lowercase\";b:1;s:3:\"min\";N;s:3:\"max\";N;}',0),(119,'repeater','title','anomaly.field_type.text','a:7:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(120,'repeater','code','anomaly.field_type.editor','a:4:{s:4:\"mode\";s:3:\"php\";s:13:\"default_value\";N;s:6:\"height\";s:3:\"500\";s:9:\"word_wrap\";s:2:\"no\";}',0),(121,'repeater','image','anomaly.field_type.file','a:3:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";N;s:4:\"mode\";s:7:\"default\";}',0),(122,'posts','snippets','anomaly.field_type.repeater','a:4:{s:7:\"related\";s:66:\"Anomaly\\Streams\\Platform\\Model\\Repeater\\RepeaterSnippetsEntryModel\";s:7:\"add_row\";s:11:\"Add Snippet\";s:3:\"min\";N;s:3:\"max\";N;}',0),(123,'posts','images','anomaly.field_type.repeater','a:4:{s:7:\"related\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Repeater\\RepeaterImagesEntryModel\";s:7:\"add_row\";N;s:3:\"min\";N;s:3:\"max\";N;}',0);
/*!40000 ALTER TABLE `keevitaja_streams_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_fields_translations`
--

DROP TABLE IF EXISTS `keevitaja_streams_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_fields_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `streams_fields_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_fields_translations`
--

LOCK TABLES `keevitaja_streams_fields_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_fields_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_fields_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.name','anomaly.module.configuration::field.scope.placeholder','anomaly.module.configuration::field.scope.warning','anomaly.module.configuration::field.scope.instructions'),(2,2,'en','anomaly.module.configuration::field.key.name','anomaly.module.configuration::field.key.placeholder','anomaly.module.configuration::field.key.warning','anomaly.module.configuration::field.key.instructions'),(3,3,'en','anomaly.module.configuration::field.value.name','anomaly.module.configuration::field.value.placeholder','anomaly.module.configuration::field.value.warning','anomaly.module.configuration::field.value.instructions'),(4,4,'en','anomaly.module.dashboard::field.name.name','anomaly.module.dashboard::field.name.placeholder','anomaly.module.dashboard::field.name.warning','anomaly.module.dashboard::field.name.instructions'),(5,5,'en','anomaly.module.dashboard::field.slug.name','anomaly.module.dashboard::field.slug.placeholder','anomaly.module.dashboard::field.slug.warning','anomaly.module.dashboard::field.slug.instructions'),(6,6,'en','anomaly.module.dashboard::field.description.name','anomaly.module.dashboard::field.description.placeholder','anomaly.module.dashboard::field.description.warning','anomaly.module.dashboard::field.description.instructions'),(7,7,'en','anomaly.module.dashboard::field.layout.name','anomaly.module.dashboard::field.layout.placeholder','anomaly.module.dashboard::field.layout.warning','anomaly.module.dashboard::field.layout.instructions'),(8,8,'en','anomaly.module.dashboard::field.title.name','anomaly.module.dashboard::field.title.placeholder','anomaly.module.dashboard::field.title.warning','anomaly.module.dashboard::field.title.instructions'),(9,9,'en','anomaly.module.dashboard::field.extension.name','anomaly.module.dashboard::field.extension.placeholder','anomaly.module.dashboard::field.extension.warning','anomaly.module.dashboard::field.extension.instructions'),(10,10,'en','anomaly.module.dashboard::field.column.name','anomaly.module.dashboard::field.column.placeholder','anomaly.module.dashboard::field.column.warning','anomaly.module.dashboard::field.column.instructions'),(11,11,'en','anomaly.module.dashboard::field.pinned.name','anomaly.module.dashboard::field.pinned.placeholder','anomaly.module.dashboard::field.pinned.warning','anomaly.module.dashboard::field.pinned.instructions'),(12,12,'en','anomaly.module.dashboard::field.dashboard.name','anomaly.module.dashboard::field.dashboard.placeholder','anomaly.module.dashboard::field.dashboard.warning','anomaly.module.dashboard::field.dashboard.instructions'),(13,13,'en','anomaly.module.dashboard::field.allowed_roles.name','anomaly.module.dashboard::field.allowed_roles.placeholder','anomaly.module.dashboard::field.allowed_roles.warning','anomaly.module.dashboard::field.allowed_roles.instructions'),(14,14,'en','anomaly.module.files::field.name.name','anomaly.module.files::field.name.placeholder','anomaly.module.files::field.name.warning','anomaly.module.files::field.name.instructions'),(15,15,'en','anomaly.module.files::field.slug.name','anomaly.module.files::field.slug.placeholder','anomaly.module.files::field.slug.warning','anomaly.module.files::field.slug.instructions'),(16,16,'en','anomaly.module.files::field.adapter.name','anomaly.module.files::field.adapter.placeholder','anomaly.module.files::field.adapter.warning','anomaly.module.files::field.adapter.instructions'),(17,17,'en','anomaly.module.files::field.folder.name','anomaly.module.files::field.folder.placeholder','anomaly.module.files::field.folder.warning','anomaly.module.files::field.folder.instructions'),(18,18,'en','anomaly.module.files::field.disk.name','anomaly.module.files::field.disk.placeholder','anomaly.module.files::field.disk.warning','anomaly.module.files::field.disk.instructions'),(19,19,'en','anomaly.module.files::field.entry.name','anomaly.module.files::field.entry.placeholder','anomaly.module.files::field.entry.warning','anomaly.module.files::field.entry.instructions'),(20,20,'en','anomaly.module.files::field.description.name','anomaly.module.files::field.description.placeholder','anomaly.module.files::field.description.warning','anomaly.module.files::field.description.instructions'),(21,21,'en','anomaly.module.files::field.allowed_types.name','anomaly.module.files::field.allowed_types.placeholder','anomaly.module.files::field.allowed_types.warning','anomaly.module.files::field.allowed_types.instructions'),(22,22,'en','anomaly.module.files::field.keywords.name','anomaly.module.files::field.keywords.placeholder','anomaly.module.files::field.keywords.warning','anomaly.module.files::field.keywords.instructions'),(23,23,'en','anomaly.module.files::field.extension.name','anomaly.module.files::field.extension.placeholder','anomaly.module.files::field.extension.warning','anomaly.module.files::field.extension.instructions'),(24,24,'en','anomaly.module.files::field.width.name','anomaly.module.files::field.width.placeholder','anomaly.module.files::field.width.warning','anomaly.module.files::field.width.instructions'),(25,25,'en','anomaly.module.files::field.height.name','anomaly.module.files::field.height.placeholder','anomaly.module.files::field.height.warning','anomaly.module.files::field.height.instructions'),(26,26,'en','anomaly.module.files::field.mime_type.name','anomaly.module.files::field.mime_type.placeholder','anomaly.module.files::field.mime_type.warning','anomaly.module.files::field.mime_type.instructions'),(27,27,'en','anomaly.module.files::field.size.name','anomaly.module.files::field.size.placeholder','anomaly.module.files::field.size.warning','anomaly.module.files::field.size.instructions'),(28,28,'en','anomaly.module.navigation::field.name.name','anomaly.module.navigation::field.name.placeholder','anomaly.module.navigation::field.name.warning','anomaly.module.navigation::field.name.instructions'),(29,29,'en','anomaly.module.navigation::field.class.name','anomaly.module.navigation::field.class.placeholder','anomaly.module.navigation::field.class.warning','anomaly.module.navigation::field.class.instructions'),(30,30,'en','anomaly.module.navigation::field.description.name','anomaly.module.navigation::field.description.placeholder','anomaly.module.navigation::field.description.warning','anomaly.module.navigation::field.description.instructions'),(31,31,'en','anomaly.module.navigation::field.entry.name','anomaly.module.navigation::field.entry.placeholder','anomaly.module.navigation::field.entry.warning','anomaly.module.navigation::field.entry.instructions'),(32,32,'en','anomaly.module.navigation::field.slug.name','anomaly.module.navigation::field.slug.placeholder','anomaly.module.navigation::field.slug.warning','anomaly.module.navigation::field.slug.instructions'),(33,33,'en','anomaly.module.navigation::field.menu.name','anomaly.module.navigation::field.menu.placeholder','anomaly.module.navigation::field.menu.warning','anomaly.module.navigation::field.menu.instructions'),(34,34,'en','anomaly.module.navigation::field.parent.name','anomaly.module.navigation::field.parent.placeholder','anomaly.module.navigation::field.parent.warning','anomaly.module.navigation::field.parent.instructions'),(35,35,'en','anomaly.module.navigation::field.allowed_roles.name','anomaly.module.navigation::field.allowed_roles.placeholder','anomaly.module.navigation::field.allowed_roles.warning','anomaly.module.navigation::field.allowed_roles.instructions'),(36,36,'en','anomaly.module.navigation::field.type.name','anomaly.module.navigation::field.type.placeholder','anomaly.module.navigation::field.type.warning','anomaly.module.navigation::field.type.instructions'),(37,37,'en','anomaly.module.navigation::field.target.name','anomaly.module.navigation::field.target.placeholder','anomaly.module.navigation::field.target.warning','anomaly.module.navigation::field.target.instructions'),(38,38,'en','anomaly.module.pages::field.str_id.name','anomaly.module.pages::field.str_id.placeholder','anomaly.module.pages::field.str_id.warning','anomaly.module.pages::field.str_id.instructions'),(39,39,'en','anomaly.module.pages::field.title.name','anomaly.module.pages::field.title.placeholder','anomaly.module.pages::field.title.warning','anomaly.module.pages::field.title.instructions'),(40,40,'en','anomaly.module.pages::field.slug.name','anomaly.module.pages::field.slug.placeholder','anomaly.module.pages::field.slug.warning','anomaly.module.pages::field.slug.instructions'),(42,42,'en','anomaly.module.pages::field.path.name','anomaly.module.pages::field.path.placeholder','anomaly.module.pages::field.path.warning','anomaly.module.pages::field.path.instructions'),(43,43,'en','anomaly.module.pages::field.enabled.name','anomaly.module.pages::field.enabled.placeholder','anomaly.module.pages::field.enabled.warning','anomaly.module.pages::field.enabled.instructions'),(44,44,'en','anomaly.module.pages::field.home.name','anomaly.module.pages::field.home.placeholder','anomaly.module.pages::field.home.warning','anomaly.module.pages::field.home.instructions'),(45,45,'en','anomaly.module.pages::field.meta_title.name','anomaly.module.pages::field.meta_title.placeholder','anomaly.module.pages::field.meta_title.warning','anomaly.module.pages::field.meta_title.instructions'),(46,46,'en','anomaly.module.pages::field.meta_description.name','anomaly.module.pages::field.meta_description.placeholder','anomaly.module.pages::field.meta_description.warning','anomaly.module.pages::field.meta_description.instructions'),(47,47,'en','anomaly.module.pages::field.meta_keywords.name','anomaly.module.pages::field.meta_keywords.placeholder','anomaly.module.pages::field.meta_keywords.warning','anomaly.module.pages::field.meta_keywords.instructions'),(48,48,'en','anomaly.module.pages::field.layout.name','anomaly.module.pages::field.layout.placeholder','anomaly.module.pages::field.layout.warning','anomaly.module.pages::field.layout.instructions'),(49,49,'en','anomaly.module.pages::field.allowed_roles.name','anomaly.module.pages::field.allowed_roles.placeholder','anomaly.module.pages::field.allowed_roles.warning','anomaly.module.pages::field.allowed_roles.instructions'),(50,50,'en','anomaly.module.pages::field.parent.name','anomaly.module.pages::field.parent.placeholder','anomaly.module.pages::field.parent.warning','anomaly.module.pages::field.parent.instructions'),(51,51,'en','anomaly.module.pages::field.theme_layout.name','anomaly.module.pages::field.theme_layout.placeholder','anomaly.module.pages::field.theme_layout.warning','anomaly.module.pages::field.theme_layout.instructions'),(52,52,'en','anomaly.module.pages::field.type.name','anomaly.module.pages::field.type.placeholder','anomaly.module.pages::field.type.warning','anomaly.module.pages::field.type.instructions'),(53,53,'en','anomaly.module.pages::field.handler.name','anomaly.module.pages::field.handler.placeholder','anomaly.module.pages::field.handler.warning','anomaly.module.pages::field.handler.instructions'),(54,54,'en','anomaly.module.pages::field.visible.name','anomaly.module.pages::field.visible.placeholder','anomaly.module.pages::field.visible.warning','anomaly.module.pages::field.visible.instructions'),(55,55,'en','anomaly.module.pages::field.exact.name','anomaly.module.pages::field.exact.placeholder','anomaly.module.pages::field.exact.warning','anomaly.module.pages::field.exact.instructions'),(56,56,'en','anomaly.module.pages::field.entry.name','anomaly.module.pages::field.entry.placeholder','anomaly.module.pages::field.entry.warning','anomaly.module.pages::field.entry.instructions'),(57,57,'en','anomaly.module.pages::field.name.name','anomaly.module.pages::field.name.placeholder','anomaly.module.pages::field.name.warning','anomaly.module.pages::field.name.instructions'),(58,58,'en','anomaly.module.pages::field.description.name','anomaly.module.pages::field.description.placeholder','anomaly.module.pages::field.description.warning','anomaly.module.pages::field.description.instructions'),(59,59,'en','anomaly.module.posts::field.str_id.name','anomaly.module.posts::field.str_id.placeholder','anomaly.module.posts::field.str_id.warning','anomaly.module.posts::field.str_id.instructions'),(60,60,'en','anomaly.module.posts::field.name.name','anomaly.module.posts::field.name.placeholder','anomaly.module.posts::field.name.warning','anomaly.module.posts::field.name.instructions'),(61,61,'en','anomaly.module.posts::field.title.name','anomaly.module.posts::field.title.placeholder','anomaly.module.posts::field.title.warning','anomaly.module.posts::field.title.instructions'),(62,62,'en','anomaly.module.posts::field.slug.name','anomaly.module.posts::field.slug.placeholder','anomaly.module.posts::field.slug.warning','anomaly.module.posts::field.slug.instructions'),(64,64,'en','anomaly.module.posts::field.type.name','anomaly.module.posts::field.type.placeholder','anomaly.module.posts::field.type.warning','anomaly.module.posts::field.type.instructions'),(65,65,'en','anomaly.module.posts::field.tags.name','anomaly.module.posts::field.tags.placeholder','anomaly.module.posts::field.tags.warning','anomaly.module.posts::field.tags.instructions'),(66,66,'en','anomaly.module.posts::field.summary.name','anomaly.module.posts::field.summary.placeholder','anomaly.module.posts::field.summary.warning','anomaly.module.posts::field.summary.instructions'),(67,67,'en','anomaly.module.posts::field.description.name','anomaly.module.posts::field.description.placeholder','anomaly.module.posts::field.description.warning','anomaly.module.posts::field.description.instructions'),(68,68,'en','anomaly.module.posts::field.publish_at.name','anomaly.module.posts::field.publish_at.placeholder','anomaly.module.posts::field.publish_at.warning','anomaly.module.posts::field.publish_at.instructions'),(69,69,'en','anomaly.module.posts::field.entry.name','anomaly.module.posts::field.entry.placeholder','anomaly.module.posts::field.entry.warning','anomaly.module.posts::field.entry.instructions'),(70,70,'en','anomaly.module.posts::field.author.name','anomaly.module.posts::field.author.placeholder','anomaly.module.posts::field.author.warning','anomaly.module.posts::field.author.instructions'),(71,71,'en','anomaly.module.posts::field.layout.name','anomaly.module.posts::field.layout.placeholder','anomaly.module.posts::field.layout.warning','anomaly.module.posts::field.layout.instructions'),(72,72,'en','anomaly.module.posts::field.category.name','anomaly.module.posts::field.category.placeholder','anomaly.module.posts::field.category.warning','anomaly.module.posts::field.category.instructions'),(73,73,'en','anomaly.module.posts::field.enabled.name','anomaly.module.posts::field.enabled.placeholder','anomaly.module.posts::field.enabled.warning','anomaly.module.posts::field.enabled.instructions'),(74,74,'en','anomaly.module.posts::field.featured.name','anomaly.module.posts::field.featured.placeholder','anomaly.module.posts::field.featured.warning','anomaly.module.posts::field.featured.instructions'),(75,75,'en','anomaly.module.posts::field.meta_title.name','anomaly.module.posts::field.meta_title.placeholder','anomaly.module.posts::field.meta_title.warning','anomaly.module.posts::field.meta_title.instructions'),(76,76,'en','anomaly.module.posts::field.meta_description.name','anomaly.module.posts::field.meta_description.placeholder','anomaly.module.posts::field.meta_description.warning','anomaly.module.posts::field.meta_description.instructions'),(77,77,'en','anomaly.module.posts::field.meta_keywords.name','anomaly.module.posts::field.meta_keywords.placeholder','anomaly.module.posts::field.meta_keywords.warning','anomaly.module.posts::field.meta_keywords.instructions'),(78,78,'en','anomaly.module.posts::field.ttl.name','anomaly.module.posts::field.ttl.placeholder','anomaly.module.posts::field.ttl.warning','anomaly.module.posts::field.ttl.instructions'),(79,79,'en','anomaly.module.posts::field.theme_layout.name','anomaly.module.posts::field.theme_layout.placeholder','anomaly.module.posts::field.theme_layout.warning','anomaly.module.posts::field.theme_layout.instructions'),(80,80,'en','anomaly.module.preferences::field.user.name','anomaly.module.preferences::field.user.placeholder','anomaly.module.preferences::field.user.warning','anomaly.module.preferences::field.user.instructions'),(81,81,'en','anomaly.module.preferences::field.key.name','anomaly.module.preferences::field.key.placeholder','anomaly.module.preferences::field.key.warning','anomaly.module.preferences::field.key.instructions'),(82,82,'en','anomaly.module.preferences::field.value.name','anomaly.module.preferences::field.value.placeholder','anomaly.module.preferences::field.value.warning','anomaly.module.preferences::field.value.instructions'),(83,83,'en','anomaly.module.redirects::field.from.name','anomaly.module.redirects::field.from.placeholder','anomaly.module.redirects::field.from.warning','anomaly.module.redirects::field.from.instructions'),(84,84,'en','anomaly.module.redirects::field.to.name','anomaly.module.redirects::field.to.placeholder','anomaly.module.redirects::field.to.warning','anomaly.module.redirects::field.to.instructions'),(85,85,'en','anomaly.module.redirects::field.status.name','anomaly.module.redirects::field.status.placeholder','anomaly.module.redirects::field.status.warning','anomaly.module.redirects::field.status.instructions'),(86,86,'en','anomaly.module.redirects::field.secure.name','anomaly.module.redirects::field.secure.placeholder','anomaly.module.redirects::field.secure.warning','anomaly.module.redirects::field.secure.instructions'),(87,87,'en','anomaly.module.settings::field.key.name','anomaly.module.settings::field.key.placeholder','anomaly.module.settings::field.key.warning','anomaly.module.settings::field.key.instructions'),(88,88,'en','anomaly.module.settings::field.value.name','anomaly.module.settings::field.value.placeholder','anomaly.module.settings::field.value.warning','anomaly.module.settings::field.value.instructions'),(89,89,'en','anomaly.module.users::field.email.name','anomaly.module.users::field.email.placeholder','anomaly.module.users::field.email.warning','anomaly.module.users::field.email.instructions'),(90,90,'en','anomaly.module.users::field.username.name','anomaly.module.users::field.username.placeholder','anomaly.module.users::field.username.warning','anomaly.module.users::field.username.instructions'),(91,91,'en','anomaly.module.users::field.password.name','anomaly.module.users::field.password.placeholder','anomaly.module.users::field.password.warning','anomaly.module.users::field.password.instructions'),(92,92,'en','anomaly.module.users::field.remember_token.name','anomaly.module.users::field.remember_token.placeholder','anomaly.module.users::field.remember_token.warning','anomaly.module.users::field.remember_token.instructions'),(93,93,'en','anomaly.module.users::field.ip_address.name','anomaly.module.users::field.ip_address.placeholder','anomaly.module.users::field.ip_address.warning','anomaly.module.users::field.ip_address.instructions'),(94,94,'en','anomaly.module.users::field.last_login_at.name','anomaly.module.users::field.last_login_at.placeholder','anomaly.module.users::field.last_login_at.warning','anomaly.module.users::field.last_login_at.instructions'),(95,95,'en','anomaly.module.users::field.last_activity_at.name','anomaly.module.users::field.last_activity_at.placeholder','anomaly.module.users::field.last_activity_at.warning','anomaly.module.users::field.last_activity_at.instructions'),(96,96,'en','anomaly.module.users::field.permissions.name','anomaly.module.users::field.permissions.placeholder','anomaly.module.users::field.permissions.warning','anomaly.module.users::field.permissions.instructions'),(97,97,'en','anomaly.module.users::field.display_name.name','anomaly.module.users::field.display_name.placeholder','anomaly.module.users::field.display_name.warning','anomaly.module.users::field.display_name.instructions'),(98,98,'en','anomaly.module.users::field.first_name.name','anomaly.module.users::field.first_name.placeholder','anomaly.module.users::field.first_name.warning','anomaly.module.users::field.first_name.instructions'),(99,99,'en','anomaly.module.users::field.last_name.name','anomaly.module.users::field.last_name.placeholder','anomaly.module.users::field.last_name.warning','anomaly.module.users::field.last_name.instructions'),(100,100,'en','anomaly.module.users::field.name.name','anomaly.module.users::field.name.placeholder','anomaly.module.users::field.name.warning','anomaly.module.users::field.name.instructions'),(101,101,'en','anomaly.module.users::field.description.name','anomaly.module.users::field.description.placeholder','anomaly.module.users::field.description.warning','anomaly.module.users::field.description.instructions'),(102,102,'en','anomaly.module.users::field.reset_code.name','anomaly.module.users::field.reset_code.placeholder','anomaly.module.users::field.reset_code.warning','anomaly.module.users::field.reset_code.instructions'),(103,103,'en','anomaly.module.users::field.reset_code_expires_at.name','anomaly.module.users::field.reset_code_expires_at.placeholder','anomaly.module.users::field.reset_code_expires_at.warning','anomaly.module.users::field.reset_code_expires_at.instructions'),(104,104,'en','anomaly.module.users::field.activation_code.name','anomaly.module.users::field.activation_code.placeholder','anomaly.module.users::field.activation_code.warning','anomaly.module.users::field.activation_code.instructions'),(105,105,'en','anomaly.module.users::field.activation_code_expires_at.name','anomaly.module.users::field.activation_code_expires_at.placeholder','anomaly.module.users::field.activation_code_expires_at.warning','anomaly.module.users::field.activation_code_expires_at.instructions'),(106,106,'en','anomaly.module.users::field.activated.name','anomaly.module.users::field.activated.placeholder','anomaly.module.users::field.activated.warning','anomaly.module.users::field.activated.instructions'),(107,107,'en','anomaly.module.users::field.enabled.name','anomaly.module.users::field.enabled.placeholder','anomaly.module.users::field.enabled.warning','anomaly.module.users::field.enabled.instructions'),(108,108,'en','anomaly.module.users::field.slug.name','anomaly.module.users::field.slug.placeholder','anomaly.module.users::field.slug.warning','anomaly.module.users::field.slug.instructions'),(109,109,'en','anomaly.module.users::field.roles.name','anomaly.module.users::field.roles.placeholder','anomaly.module.users::field.roles.warning','anomaly.module.users::field.roles.instructions'),(110,110,'en','anomaly.extension.page_link_type::field.title.name','anomaly.extension.page_link_type::field.title.placeholder','anomaly.extension.page_link_type::field.title.warning','anomaly.extension.page_link_type::field.title.instructions'),(111,111,'en','anomaly.extension.page_link_type::field.page.name','anomaly.extension.page_link_type::field.page.placeholder','anomaly.extension.page_link_type::field.page.warning','anomaly.extension.page_link_type::field.page.instructions'),(112,112,'en','anomaly.extension.page_link_type::field.description.name','anomaly.extension.page_link_type::field.description.placeholder','anomaly.extension.page_link_type::field.description.warning','anomaly.extension.page_link_type::field.description.instructions'),(113,113,'en','anomaly.extension.url_link_type::field.title.name','anomaly.extension.url_link_type::field.title.placeholder','anomaly.extension.url_link_type::field.title.warning','anomaly.extension.url_link_type::field.title.instructions'),(114,114,'en','anomaly.extension.url_link_type::field.url.name','anomaly.extension.url_link_type::field.url.placeholder','anomaly.extension.url_link_type::field.url.warning','anomaly.extension.url_link_type::field.url.instructions'),(115,115,'en','anomaly.extension.url_link_type::field.description.name','anomaly.extension.url_link_type::field.description.placeholder','anomaly.extension.url_link_type::field.description.warning','anomaly.extension.url_link_type::field.description.instructions'),(116,116,'en','Content',NULL,NULL,NULL),(117,117,'en','Content',NULL,NULL,NULL),(118,118,'en','Slug',NULL,NULL,NULL),(119,119,'en','Title',NULL,NULL,NULL),(120,120,'en','Code',NULL,NULL,NULL),(121,121,'en','Image',NULL,NULL,NULL),(122,122,'en','Snippets',NULL,NULL,NULL),(123,123,'en','Images',NULL,NULL,NULL);
/*!40000 ALTER TABLE `keevitaja_streams_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_streams`
--

DROP TABLE IF EXISTS `keevitaja_streams_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_streams` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_streams`
--

LOCK TABLES `keevitaja_streams_streams` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_streams` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_streams` VALUES (1,'configuration','configuration','configuration_','id','id',1,0,0,0,0,0,'a:0:{}'),(2,'dashboard','dashboards','dashboard_','name','id',0,0,1,0,0,1,'a:0:{}'),(3,'dashboard','widgets','dashboard_','title','id',0,0,1,0,0,1,'a:0:{}'),(4,'files','disks','files_','name','id',0,0,1,0,1,1,'a:0:{}'),(5,'files','folders','files_','name','id',0,0,1,0,1,1,'a:0:{}'),(6,'files','files','files_','name','id',0,0,0,1,1,0,'a:0:{}'),(7,'navigation','menus','navigation_','name','id',0,0,0,0,1,1,'a:0:{}'),(8,'navigation','links','navigation_','id','id',0,0,1,0,1,0,'a:0:{}'),(9,'pages','pages','pages_','title','id',0,0,1,1,1,1,'a:0:{}'),(10,'pages','types','pages_','name','id',0,0,1,0,1,1,'a:0:{}'),(11,'posts','categories','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(12,'posts','posts','posts_','title','id',0,0,0,1,1,1,'a:0:{}'),(13,'posts','types','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(14,'preferences','preferences','preferences_','id','id',0,0,0,0,0,0,'a:0:{}'),(15,'redirects','redirects','redirects_','from','id',0,0,1,0,1,0,'a:0:{}'),(16,'settings','settings','settings_','id','id',0,0,0,0,0,0,'a:0:{}'),(17,'users','users','users_','display_name','id',0,0,0,1,1,0,'a:0:{}'),(18,'users','roles','users_','name','id',0,0,0,0,1,1,'a:0:{}'),(19,'page_link_type','pages','page_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(20,'url_link_type','urls','url_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(21,'files','images','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(22,'files','documents','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(23,'pages','default_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(24,'posts','default_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(25,'repeater','images','repeater_','id','id',0,0,0,0,0,0,''),(26,'repeater','snippets','repeater_','id','id',0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `keevitaja_streams_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_streams_streams_translations`
--

DROP TABLE IF EXISTS `keevitaja_streams_streams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_streams_streams_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_streams_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_streams_streams_translations`
--

LOCK TABLES `keevitaja_streams_streams_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_streams_streams_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_streams_streams_translations` VALUES (1,1,'en','anomaly.module.configuration::stream.configuration.name','anomaly.module.configuration::stream.configuration.description'),(2,2,'en','anomaly.module.dashboard::stream.dashboards.name','anomaly.module.dashboard::stream.dashboards.description'),(3,3,'en','anomaly.module.dashboard::stream.widgets.name','anomaly.module.dashboard::stream.widgets.description'),(4,4,'en','anomaly.module.files::stream.disks.name','anomaly.module.files::stream.disks.description'),(5,5,'en','anomaly.module.files::stream.folders.name','anomaly.module.files::stream.folders.description'),(6,6,'en','anomaly.module.files::stream.files.name','anomaly.module.files::stream.files.description'),(7,7,'en','anomaly.module.navigation::stream.menus.name','anomaly.module.navigation::stream.menus.description'),(8,8,'en','anomaly.module.navigation::stream.links.name','anomaly.module.navigation::stream.links.description'),(9,9,'en','anomaly.module.pages::stream.pages.name','anomaly.module.pages::stream.pages.description'),(10,10,'en','anomaly.module.pages::stream.types.name','anomaly.module.pages::stream.types.description'),(11,11,'en','anomaly.module.posts::stream.categories.name','anomaly.module.posts::stream.categories.description'),(12,12,'en','anomaly.module.posts::stream.posts.name','anomaly.module.posts::stream.posts.description'),(13,13,'en','anomaly.module.posts::stream.types.name','anomaly.module.posts::stream.types.description'),(14,14,'en','anomaly.module.preferences::stream.preferences.name','anomaly.module.preferences::stream.preferences.description'),(15,15,'en','anomaly.module.redirects::stream.redirects.name','anomaly.module.redirects::stream.redirects.description'),(16,16,'en','anomaly.module.settings::stream.settings.name','anomaly.module.settings::stream.settings.description'),(17,17,'en','anomaly.module.users::stream.users.name','anomaly.module.users::stream.users.description'),(18,18,'en','anomaly.module.users::stream.roles.name','anomaly.module.users::stream.roles.description'),(19,19,'en','anomaly.extension.page_link_type::stream.pages.name','anomaly.extension.page_link_type::stream.pages.description'),(20,20,'en','anomaly.extension.url_link_type::stream.urls.name','anomaly.extension.url_link_type::stream.urls.description'),(21,21,'en','Images','A folder for images.'),(22,22,'en','Documents','A folder for documents.'),(23,23,'en','Default','A simple page type.'),(24,24,'en','Default',NULL),(25,25,'en','Images',NULL),(26,26,'en','Snippets',NULL);
/*!40000 ALTER TABLE `keevitaja_streams_streams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_url_link_type_urls`
--

DROP TABLE IF EXISTS `keevitaja_url_link_type_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_url_link_type_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_url_link_type_urls`
--

LOCK TABLES `keevitaja_url_link_type_urls` WRITE;
/*!40000 ALTER TABLE `keevitaja_url_link_type_urls` DISABLE KEYS */;
INSERT INTO `keevitaja_url_link_type_urls` VALUES (1,1,'2017-04-08 14:14:51',NULL,NULL,NULL,'http://pyrocms.com/'),(2,2,'2017-04-08 14:14:51',NULL,NULL,NULL,'http://pyrocms.com/documentation'),(3,3,'2017-04-08 14:32:10',1,NULL,NULL,'https://twitter.com/'),(4,4,'2017-04-08 14:32:38',1,NULL,NULL,'https://github.com/keevitaja');
/*!40000 ALTER TABLE `keevitaja_url_link_type_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_url_link_type_urls_translations`
--

DROP TABLE IF EXISTS `keevitaja_url_link_type_urls_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_url_link_type_urls_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `url_link_type_urls_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_url_link_type_urls_translations`
--

LOCK TABLES `keevitaja_url_link_type_urls_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_url_link_type_urls_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_url_link_type_urls_translations` VALUES (1,1,'2017-04-08 14:14:51',NULL,'2017-04-08 14:14:51',NULL,'en','PyroCMS.com',NULL),(2,2,'2017-04-08 14:14:51',NULL,'2017-04-08 14:14:51',NULL,'en','Documentation',NULL),(3,3,'2017-04-08 14:32:10',NULL,'2017-04-08 14:32:10',1,'en','Twitter',NULL),(4,4,'2017-04-08 14:32:38',NULL,'2017-04-08 14:32:38',1,'en','Github',NULL);
/*!40000 ALTER TABLE `keevitaja_url_link_type_urls_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_users_roles`
--

DROP TABLE IF EXISTS `keevitaja_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c8501689d10e8645dd553604c773dca2` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_users_roles`
--

LOCK TABLES `keevitaja_users_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_users_roles` DISABLE KEYS */;
INSERT INTO `keevitaja_users_roles` VALUES (1,1,'2017-04-08 14:14:56',NULL,NULL,NULL,NULL,'admin',NULL),(2,2,'2017-04-08 14:14:56',NULL,NULL,NULL,NULL,'user',NULL),(3,3,'2017-04-08 14:14:56',NULL,NULL,NULL,NULL,'guest',NULL);
/*!40000 ALTER TABLE `keevitaja_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_users_roles_translations`
--

DROP TABLE IF EXISTS `keevitaja_users_roles_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_users_roles_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `users_roles_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_users_roles_translations`
--

LOCK TABLES `keevitaja_users_roles_translations` WRITE;
/*!40000 ALTER TABLE `keevitaja_users_roles_translations` DISABLE KEYS */;
INSERT INTO `keevitaja_users_roles_translations` VALUES (1,1,'2017-04-08 14:14:56',NULL,'2017-04-08 14:14:56',NULL,'en','Admin','The super admin role.'),(2,2,'2017-04-08 14:14:56',NULL,'2017-04-08 14:14:56',NULL,'en','User','The default user role.'),(3,3,'2017-04-08 14:14:56',NULL,'2017-04-08 14:14:56',NULL,'en','Guest','The fallback role for non-users.');
/*!40000 ALTER TABLE `keevitaja_users_roles_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_users_users`
--

DROP TABLE IF EXISTS `keevitaja_users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_users_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f432e8a18875d82efd589bf0d89fc033` (`email`),
  UNIQUE KEY `729e247f9366c049a3e2924a0a51b756` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_users_users`
--

LOCK TABLES `keevitaja_users_users` WRITE;
/*!40000 ALTER TABLE `keevitaja_users_users` DISABLE KEYS */;
INSERT INTO `keevitaja_users_users` VALUES (1,1,'2017-04-08 14:14:56',NULL,'2017-04-08 20:24:47',1,NULL,'keevitaja@gmail.com','keevitaja','$2y$10$O.sFzaPnUDVS0Z1P62K5jusYzBsWfMx4KPQ57Epi/UQh8Jt35GP2a','Administrator',NULL,NULL,1,1,NULL,'2017-04-08 20:24:47','5H05hUEcTsU25QJmFT2oMj3IB2jz5hIznl87HbL5CwcAjStYqtT8Us7KOmYu',NULL,NULL,'2017-04-08 20:24:42','172.17.0.1'),(2,2,'2017-04-08 14:14:56',NULL,'2017-04-08 14:14:57',NULL,NULL,'demo@pyrocms.com','demo','$2y$10$Fd.55B9bL78C8yE8ZL7JburkmJQDOytkDPn3AYullIS6kHIRdS5Si','Demo User',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `keevitaja_users_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keevitaja_users_users_roles`
--

DROP TABLE IF EXISTS `keevitaja_users_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keevitaja_users_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-relations` (`entry_id`,`related_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keevitaja_users_users_roles`
--

LOCK TABLES `keevitaja_users_users_roles` WRITE;
/*!40000 ALTER TABLE `keevitaja_users_users_roles` DISABLE KEYS */;
INSERT INTO `keevitaja_users_users_roles` VALUES (1,2,2,NULL),(2,1,1,NULL);
/*!40000 ALTER TABLE `keevitaja_users_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-08 23:52:54
