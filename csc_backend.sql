CREATE DATABASE  IF NOT EXISTS `csc_backend` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `csc_backend`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: csc_backend
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `call_back_forms`
--

DROP TABLE IF EXISTS `call_back_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_back_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `issue_description` longtext,
  `date` datetime DEFAULT NULL,
  `accept_terms` tinyint(1) DEFAULT NULL,
  `comment` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_back_forms`
--

LOCK TABLES `call_back_forms` WRITE;
/*!40000 ALTER TABLE `call_back_forms` DISABLE KEYS */;
INSERT INTO `call_back_forms` VALUES (1,'Joe Doe','male',1232212,1993,'example@gmail.com','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','2021-03-18 11:00:00',1,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.','2021-03-16 19:28:25',1,1,'2021-03-16 18:28:21','2021-03-16 18:28:25');
/*!40000 ALTER TABLE `call_back_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}','object','',''),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(21,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(22,'model_def_application::call-back-form.call-back-form','{\"uid\":\"application::call-back-form.call-back-form\",\"collectionName\":\"call_back_forms\",\"kind\":\"collectionType\",\"info\":{\"name\":\"callBackForm\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":2,\"unique\":false,\"required\":true},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"male\",\"female\"],\"required\":true},\"phone_number\":{\"type\":\"integer\",\"required\":true,\"min\":0},\"order_number\":{\"type\":\"integer\",\"min\":0,\"default\":0},\"email\":{\"type\":\"email\",\"required\":false,\"unique\":false},\"issue_description\":{\"type\":\"richtext\",\"required\":true},\"date\":{\"required\":true,\"type\":\"datetime\"},\"accept_terms\":{\"type\":\"boolean\",\"default\":false},\"comment\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(23,'plugin_content_manager_configuration_content_types::application::call-back-form.call-back-form','{\"uid\":\"application::call-back-form.call-back-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"gender\":{\"edit\":{\"label\":\"Gender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Gender\",\"searchable\":true,\"sortable\":true}},\"phone_number\":{\"edit\":{\"label\":\"Phone_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone_number\",\"searchable\":true,\"sortable\":true}},\"order_number\":{\"edit\":{\"label\":\"Order_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Order_number\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"issue_description\":{\"edit\":{\"label\":\"Issue_description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Issue_description\",\"searchable\":false,\"sortable\":false}},\"date\":{\"edit\":{\"label\":\"Date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Date\",\"searchable\":true,\"sortable\":true}},\"accept_terms\":{\"edit\":{\"label\":\"Accept_terms\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Accept_terms\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"Comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Comment\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"gender\",\"phone_number\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"gender\",\"size\":6}],[{\"name\":\"phone_number\",\"size\":4},{\"name\":\"order_number\",\"size\":4}],[{\"name\":\"email\",\"size\":6}],[{\"name\":\"issue_description\",\"size\":12}],[{\"name\":\"date\",\"size\":6},{\"name\":\"accept_terms\",\"size\":4}],[{\"name\":\"comment\",\"size\":12}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Uros','Zeravica',NULL,'zeravicauros@gmail.com','$2a$10$o9q4Wy3KF6y3IPZvb0981ufAPYfp6Y9VvepiEsqGssbDeEKN4vUo6',NULL,NULL,1,NULL),(2,'Admin','Admin',NULL,'admin@gmail.com','$2a$10$Tw8gqfM77lAsmHwOWYXjV./oI2wOu3/VeFN1/oSyGUzzmZ1l7ZFyO',NULL,'2227bd33e8b86b73bae944c299d418b442237253',1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(2,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(4,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(11,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(12,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(13,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(17,'plugins::email.settings.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(18,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(19,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(20,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(21,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(22,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(23,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(24,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(25,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(26,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(27,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(28,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(29,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(30,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(31,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(32,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(33,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(34,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(35,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(36,'admin::marketplace.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(37,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(38,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(39,'admin::webhooks.create',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(40,'admin::webhooks.read',NULL,NULL,'[]',1,'2021-03-15 22:30:16','2021-03-15 22:30:16'),(41,'admin::webhooks.update',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(42,'admin::webhooks.delete',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(43,'admin::users.create',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(44,'admin::users.read',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(45,'admin::users.update',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(46,'admin::users.delete',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(47,'admin::roles.create',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(48,'admin::roles.read',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(49,'admin::roles.update',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(50,'admin::roles.delete',NULL,NULL,'[]',1,'2021-03-15 22:30:17','2021-03-15 22:30:17'),(51,'plugins::content-manager.explorer.create','application::call-back-form.call-back-form','[\"name\",\"gender\",\"phone_number\",\"order_number\",\"email\",\"issue_description\",\"date\",\"accept_terms\",\"comment\"]','[]',1,'2021-03-16 18:22:34','2021-03-16 18:22:34'),(52,'plugins::content-manager.explorer.read','application::call-back-form.call-back-form','[\"name\",\"gender\",\"phone_number\",\"order_number\",\"email\",\"issue_description\",\"date\",\"accept_terms\",\"comment\"]','[]',1,'2021-03-16 18:22:34','2021-03-16 18:22:34'),(53,'plugins::content-manager.explorer.update','application::call-back-form.call-back-form','[\"name\",\"gender\",\"phone_number\",\"order_number\",\"email\",\"issue_description\",\"date\",\"accept_terms\",\"comment\"]','[]',1,'2021-03-16 18:22:34','2021-03-16 18:22:34'),(54,'plugins::content-manager.explorer.delete','application::call-back-form.call-back-form',NULL,'[]',1,'2021-03-16 18:22:34','2021-03-16 18:22:34'),(55,'plugins::content-manager.explorer.publish','application::call-back-form.call-back-form',NULL,'[]',1,'2021-03-16 18:22:34','2021-03-16 18:22:34');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-03-15 22:30:16','2021-03-15 22:30:16'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-03-15 22:30:16','2021-03-15 22:30:16'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-03-15 22:30:16','2021-03-15 22:30:16');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','find',0,'',1,NULL,NULL),(3,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(4,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(6,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(7,'content-manager','collection-types','find',0,'',2,NULL,NULL),(8,'content-manager','collection-types','create',0,'',2,NULL,NULL),(9,'content-manager','collection-types','create',0,'',1,NULL,NULL),(10,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(30,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(31,'content-manager','relations','find',0,'',1,NULL,NULL),(32,'content-manager','relations','find',0,'',2,NULL,NULL),(33,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(34,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(35,'content-manager','single-types','delete',0,'',1,NULL,NULL),(36,'content-manager','single-types','delete',0,'',2,NULL,NULL),(37,'content-manager','single-types','find',0,'',1,NULL,NULL),(38,'content-manager','single-types','find',0,'',2,NULL,NULL),(39,'content-manager','single-types','publish',0,'',1,NULL,NULL),(40,'content-manager','single-types','publish',0,'',2,NULL,NULL),(41,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(42,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(43,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(44,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(45,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(46,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(47,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(48,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(49,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(50,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(53,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(54,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(55,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(61,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(62,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(63,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(64,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(65,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(66,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(73,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(74,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(75,'email','email','getsettings',0,'',1,NULL,NULL),(76,'email','email','getsettings',0,'',2,NULL,NULL),(77,'email','email','send',0,'',1,NULL,NULL),(78,'email','email','send',0,'',2,NULL,NULL),(79,'email','email','test',0,'',1,NULL,NULL),(80,'email','email','test',0,'',2,NULL,NULL),(81,'upload','upload','count',0,'',1,NULL,NULL),(82,'upload','upload','count',0,'',2,NULL,NULL),(83,'upload','upload','destroy',0,'',1,NULL,NULL),(84,'upload','upload','destroy',0,'',2,NULL,NULL),(85,'upload','upload','find',0,'',1,NULL,NULL),(86,'upload','upload','find',0,'',2,NULL,NULL),(87,'upload','upload','findone',0,'',1,NULL,NULL),(88,'upload','upload','findone',0,'',2,NULL,NULL),(89,'upload','upload','getsettings',0,'',1,NULL,NULL),(90,'upload','upload','getsettings',0,'',2,NULL,NULL),(91,'upload','upload','search',0,'',1,NULL,NULL),(92,'upload','upload','search',0,'',2,NULL,NULL),(93,'upload','upload','updatesettings',0,'',1,NULL,NULL),(94,'upload','upload','updatesettings',0,'',2,NULL,NULL),(95,'upload','upload','upload',0,'',1,NULL,NULL),(96,'upload','upload','upload',0,'',2,NULL,NULL),(97,'users-permissions','auth','callback',0,'',1,NULL,NULL),(98,'users-permissions','auth','callback',1,'',2,NULL,NULL),(99,'users-permissions','auth','connect',1,'',1,NULL,NULL),(100,'users-permissions','auth','connect',1,'',2,NULL,NULL),(101,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(102,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(103,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(104,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(105,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(106,'users-permissions','auth','register',0,'',1,NULL,NULL),(107,'users-permissions','auth','register',1,'',2,NULL,NULL),(108,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(109,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(110,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(111,'users-permissions','user','count',0,'',1,NULL,NULL),(112,'users-permissions','user','count',0,'',2,NULL,NULL),(113,'users-permissions','user','create',0,'',1,NULL,NULL),(114,'users-permissions','user','create',0,'',2,NULL,NULL),(115,'users-permissions','user','destroy',0,'',1,NULL,NULL),(116,'users-permissions','user','destroy',0,'',2,NULL,NULL),(117,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(118,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(119,'users-permissions','user','find',0,'',1,NULL,NULL),(120,'users-permissions','user','find',0,'',2,NULL,NULL),(121,'users-permissions','user','findone',0,'',1,NULL,NULL),(122,'users-permissions','user','findone',0,'',2,NULL,NULL),(123,'users-permissions','user','me',1,'',1,NULL,NULL),(124,'users-permissions','user','me',1,'',2,NULL,NULL),(125,'users-permissions','user','update',0,'',1,NULL,NULL),(126,'users-permissions','user','update',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(159,'application','call-back-form','count',1,'',1,NULL,NULL),(160,'application','call-back-form','count',1,'',2,NULL,NULL),(161,'application','call-back-form','create',1,'',1,NULL,NULL),(162,'application','call-back-form','create',1,'',2,NULL,NULL),(163,'application','call-back-form','delete',1,'',1,NULL,NULL),(164,'application','call-back-form','delete',1,'',2,NULL,NULL),(165,'application','call-back-form','find',1,'',1,NULL,NULL),(166,'application','call-back-form','find',1,'',2,NULL,NULL),(167,'application','call-back-form','findone',1,'',1,NULL,NULL),(168,'application','call-back-form','findone',1,'',2,NULL,NULL),(169,'application','call-back-form','update',1,'',1,NULL,NULL),(170,'application','call-back-form','update',1,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'csc_backend'
--

--
-- Dumping routines for database 'csc_backend'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 15:58:57
