-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: posdb
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_user_id_foreign` (`user_id`),
  CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (6,1,'Tents','tents','2024-09-11 06:10:34','2024-09-11 06:10:34'),(7,1,'Chairs','chairs','2024-09-11 06:10:47','2024-09-11 06:10:47'),(8,1,'1M Pole','1m-pole','2024-09-11 06:18:07','2024-09-11 06:18:07'),(9,1,'3M Pole','3m-pole','2024-09-11 06:18:14','2024-09-11 06:18:14'),(10,1,'whiteboard','whiteboard','2024-09-11 06:18:23','2024-09-11 06:18:23');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_phone_unique` (`phone`),
  KEY `customers_user_id_foreign` (`user_id`),
  CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'fc32d50b-2c9b-45ea-b9be-aabecc27cac4',1,'Eliezer Kessler','ratke.annamae@example.org','+1-956-436-4021','97079 Stanton Plains\nCroninmouth, MT 69458',NULL,'Ms. Daniela Durgan','18569558','BSI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(2,'d3400dc6-d8c9-4948-b16a-5ae9c7d2f1f7',1,'Trevion Buckridge II','reina.haley@example.org','1-689-606-0463','97894 Gusikowski Springs\nHelenatown, TN 65512-0695',NULL,'Asia Bayer I','47791690','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(3,'d91ec435-40ab-4a8e-8e72-04fe1c09468b',1,'Makenna Kreiger MD','kyla00@example.com','929.834.5045','1460 Kerluke Turnpike\nHilpertland, AK 01142-6707',NULL,'Miss Delores Boyer','86630907','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(4,'dce03ccf-5ac0-441c-add9-c27b1a4d55ac',1,'Emilie Murphy','cole.yadira@example.org','1-480-482-6427','2907 Ward Roads\nSalliemouth, DC 94974-0831',NULL,'Lizeth Bosco','30213161','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(5,'049b4487-c0c4-4788-a70f-e35f9b31bdde',1,'Jackeline Blanda','reichert.jimmie@example.net','1-479-471-2716','4481 Rice Knoll\nSouth Aida, DC 15198-3840',NULL,'Agustina Kozey','64287326','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(6,'3843f620-1db9-42f2-8269-f75f30ddef67',1,'Prof. Jordi Monahan','braden30@example.com','+15856562201','14657 Melvina Drives Suite 879\nKennithstad, CT 31653-4681',NULL,'Cleveland Green','19254460','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(7,'48f93457-1754-4a29-930c-c0566b1149ed',1,'Glen Brekke I','janis81@example.org','+1-574-362-9463','6746 Ferry Via Apt. 848\nMarvinview, FL 59138',NULL,'Emerson Bogan','63715911','BSI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(8,'96a46a46-1f72-409b-b78a-435aa668c06f',1,'Laurie Treutel','neha98@example.com','+1-260-419-1773','63841 Cartwright River\nWildermanside, OK 46818',NULL,'Dr. Chasity Fritsch IV','82909111','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(9,'f0337df7-319b-4193-b12b-d15f8b4f24b9',1,'Miss Lue Glover I','hammes.deondre@example.net','1-502-446-4606','95238 Quigley Fort Apt. 080\nNorth Marianna, NY 58639',NULL,'Miss Paige McDermott DVM','89136381','BSI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(10,'4ecb439a-7136-4d0f-8112-78b240eeb073',1,'Prof. Summer Kessler','koss.remington@example.org','626.208.1094','432 Waelchi Lodge\nWuckertburgh, NV 69126',NULL,'Dr. Grayson Johns','81391914','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(11,'8d738f61-631b-44d2-8c7a-ba51cccd58a8',1,'Scot Rogahn','cassin.juliana@example.org','(231) 977-1509','8194 Vandervort Green\nWest Paige, WA 02498-4795',NULL,'Brenda Harris','98357651','BCA','2024-09-11 05:53:09','2024-09-11 05:53:09'),(12,'5832edaa-1a62-4a1c-b621-d2f70abcd971',1,'Charles Purdy','dale47@example.com','+1.762.664.2597','4649 Henderson Springs Apt. 896\nNew Christelle, CT 59914',NULL,'Roy Walsh','57947643','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(13,'97b39a70-23a7-410d-9ef7-c64a1ba372cf',1,'Dr. Harrison O\'Kon DVM','tressa.emmerich@example.net','+1.512.297.4068','964 Senger Plaza Apt. 824\nNorth Nasirville, MN 93404',NULL,'Silas Cassin','84919042','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(14,'cfddae48-1d5e-4c18-8f22-5b21ad88f78c',1,'Titus Bailey','ritchie.joana@example.net','240.873.9378','31912 Rosendo Path\nEast Ashlyburgh, CO 37894-4048',NULL,'Felton Gleichner III','44537939','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(15,'43871cf9-d5e9-4571-a3c4-0803eb3645c3',1,'Angel Rau MD','alexane72@example.org','+1-380-518-3027','5069 Ryan Well\nReingerport, FL 39603-5432',NULL,'Aida Welch','18256923','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_04_30_150318_create_customers_table',1),(6,'2023_05_01_111143_create_suppliers_table',1),(7,'2023_05_02_114617_create_categories_table',1),(8,'2023_05_02_122454_create_units_table',1),(9,'2023_05_02_140630_create_products_table',1),(10,'2023_05_04_084431_create_orders_table',1),(11,'2023_05_04_084646_create_order_details_table',1),(12,'2023_05_04_173440_create_shoppingcart_table',1),(13,'2023_05_06_142348_create_purchases_table',1),(14,'2023_05_06_143104_create_purchase_details_table',1),(15,'2023_11_03_140528_create_quotations_table',1),(16,'2023_11_03_140529_create_quotation_details_table',1),(17,'2023_11_17_183122_create_notifications_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `unitcost` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_product_id_foreign` (`product_id`),
  CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,7,9,200,1800,'2024-09-11 06:22:05',NULL),(2,1,6,1,5000,5000,'2024-09-11 06:22:05',NULL);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` tinyint NOT NULL COMMENT '0 - Pending / 1 - Complete',
  `total_products` int NOT NULL,
  `sub_total` int NOT NULL,
  `vat` int NOT NULL,
  `total` int NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` int NOT NULL,
  `due` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'69660fe7-5115-49aa-9ed1-1d03e468b879',1,6,'2024-09-11 00:00:00',0,10,6800,1632,8432,'INV-000001','Due',2000,6432,'2024-09-11 06:22:05','2024-09-11 06:22:05');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `buying_price` int NOT NULL COMMENT 'Buying Price',
  `selling_price` int NOT NULL COMMENT 'Selling Price',
  `quantity_alert` int NOT NULL,
  `tax` int DEFAULT NULL,
  `tax_type` tinyint DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `unit_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_unit_id_foreign` (`unit_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'4da5e70e-cddf-4557-9582-c774dd7119fd',1,'Tent (50 by 50)','tent-50-by-50','PC01',5,500000,500000,1,NULL,0,NULL,'',6,4,'2024-09-11 06:13:40','2024-09-11 06:13:40'),(7,'6f79d8d5-78ad-432d-b1b8-aca356c99e47',1,'1m Pole','1m-pole','PC02',40,20000,20000,1,NULL,0,NULL,'',8,4,'2024-09-11 06:19:26','2024-09-11 06:19:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `unitcost` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  KEY `purchase_details_product_id_foreign` (`product_id`),
  CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_details`
--

LOCK TABLES `purchase_details` WRITE;
/*!40000 ALTER TABLE `purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint unsigned NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `total_amount` int NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_supplier_id_foreign` (`supplier_id`),
  KEY `purchases_user_id_foreign` (`user_id`),
  CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_details`
--

DROP TABLE IF EXISTS `quotation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `unit_price` int NOT NULL,
  `sub_total` int NOT NULL,
  `product_discount_amount` int NOT NULL,
  `product_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `product_tax_amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  KEY `quotation_details_product_id_foreign` (`product_id`),
  CONSTRAINT `quotation_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_details`
--

LOCK TABLES `quotation_details` WRITE;
/*!40000 ALTER TABLE `quotation_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` int NOT NULL DEFAULT '0',
  `tax_amount` int NOT NULL DEFAULT '0',
  `discount_percentage` int NOT NULL DEFAULT '0',
  `discount_amount` int NOT NULL DEFAULT '0',
  `shipping_amount` int NOT NULL DEFAULT '0',
  `total_amount` int NOT NULL,
  `status` tinyint NOT NULL COMMENT '0 - Pending / 1 - Complete / 2 - Cancel',
  `note` text COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_customer_id_foreign` (`customer_id`),
  KEY `quotations_user_id_foreign` (`user_id`),
  CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suppliers_email_unique` (`email`),
  UNIQUE KEY `suppliers_phone_unique` (`phone`),
  KEY `suppliers_user_id_foreign` (`user_id`),
  CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'375f1044-2d52-4acb-954b-1b1b6740cfd7',1,'Ms. Miracle Mosciski DVM','abby45@example.org','(281) 356-7943','72235 Luettgen Mountain Apt. 537\nRathhaven, KS 37126','Reichert-Schuppe','wholesaler',NULL,'Mr. Magnus Boyer DDS','24596153','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(2,'c2e6cf2b-b12f-409c-ab3f-166e59e81462',1,'Andreanne Buckridge','tolson@example.org','+1 (773) 944-8409','4548 Kerluke Avenue\nRaoulside, SD 85631','O\'Kon, Lockman and Mosciski','wholesaler',NULL,'Dr. Luther Heidenreich','54518057','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(3,'a46518e0-4d89-4916-8471-f3d355608191',1,'Ms. Christine Pfannerstill MD','dixie03@example.net','1-813-325-6190','12451 Ursula Creek\nEast Emmieland, OH 81637-8200','Walter LLC','producer',NULL,'Evie Howe','46763963','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(4,'f599afbd-389c-47e8-950e-13435b399dd3',1,'Valerie Lindgren','hayley.hauck@example.net','+1-804-976-6106','73584 Schmeler Unions\nCassinburgh, MI 86001-1120','Harris, Zboncak and Gleason','distributor',NULL,'Jasmin Beier','47255737','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(5,'4c86116e-1582-4e10-89dc-f7ca25519ab2',1,'Mr. Wilmer Lubowitz','erwin51@example.org','1-419-430-0506','1298 Rey Circles Apt. 760\nGibsonside, NM 76081-2221','Veum Group','producer',NULL,'Mr. Emiliano Kunde III','81111015','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(6,'2200868c-7663-4d45-9300-e1665bc9d118',1,'Reymundo Konopelski DDS','howell.aron@example.org','+1.534.220.1689','24137 Barton Spring Apt. 743\nWittingland, IL 00921-3464','Haley Ltd','producer',NULL,'Josue Champlin','74321998','BSI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(7,'15f36b9f-11f1-488e-ad89-cad19a0b5e1e',1,'Mrs. Sunny Gorczany','annie.robel@example.net','+1 (430) 659-2479','546 Bauch Inlet\nRubyechester, MO 45449','Howell-Boehm','wholesaler',NULL,'Lacey Russel DVM','11706667','BCA','2024-09-11 05:53:09','2024-09-11 05:53:09'),(8,'e43251c4-04b0-434c-939c-28370dac892f',1,'Asa Schaefer','swaniawski.lempi@example.net','+1.747.730.7186','6150 Uriel Drive\nAnkundingstad, PA 32422-4039','Davis, Kuphal and Nikolaus','distributor',NULL,'Bobbie Franecki','25675466','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(9,'642f55ae-ff4e-4cc7-a78d-6addabe59cc4',1,'Catherine Walter V','qvolkman@example.com','+1.507.544.6964','39325 Olson Canyon\nEast Sofiamouth, WY 25068','Shanahan PLC','distributor',NULL,'Dr. Calista Jones','55432454','Mandiri','2024-09-11 05:53:09','2024-09-11 05:53:09'),(10,'a06885c0-0795-44f0-a623-5f215ce8c6f3',1,'Orlo Jerde','cathrine44@example.com','283-205-7694','268 Turner Plain Apt. 058\nPort Chelsea, AK 48952','O\'Hara, D\'Amore and Dietrich','distributor',NULL,'Eloisa Nicolas','79980910','BCA','2024-09-11 05:53:09','2024-09-11 05:53:09'),(11,'4031c238-46c7-4035-b48e-a6823d018a07',1,'Mable Ryan III','martine.west@example.net','+1.539.395.1563','6620 Esta Glen Apt. 798\nKesslerchester, OR 78689','Schoen, Nikolaus and Boyle','distributor',NULL,'Demond Mueller','34895802','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(12,'42972b7a-4a2a-4e99-b445-1ea1dcb986bc',1,'Jena Hill','helene.white@example.org','1-845-465-9055','839 Rosanna Court Suite 648\nPort Zariaborough, AK 95501','Hermann, Schaden and Bradtke','wholesaler',NULL,'Murphy Collins','87869841','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(13,'d1e17594-0720-4440-93f7-c9b591612d3c',1,'Brooklyn Gulgowski','mkessler@example.net','1-385-908-0603','82591 Schaden Mills Apt. 734\nPort Stacy, DE 77325','Gottlieb, Kub and Kuhn','producer',NULL,'Marlee Collins','10153598','BNI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(14,'0000a06a-bc9d-4dd2-bd76-8c0d0313f006',1,'Mrs. Lottie Heidenreich','katelyn.ferry@example.org','409-783-2955','80690 Alphonso Isle\nDarianaburgh, CA 84370','Bode PLC','distributor',NULL,'Jamar Jakubowski','69243537','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09'),(15,'3dd2c886-d949-4b4e-9602-82784b71fad2',1,'Juvenal Berge','tkunze@example.org','(479) 997-6941','5127 Domenick Glen\nSouth Ernestostad, NH 87802','Hagenes-Leuschke','distributor',NULL,'Kristina Hagenes','89277483','BRI','2024-09-11 05:53:09','2024-09-11 05:53:09');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `units_user_id_foreign` (`user_id`),
  CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (3,1,'Piece','piece','pc',NULL,NULL),(4,1,'Pieces','pieces','PCs','2024-09-11 06:13:11','2024-09-11 06:13:11');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'48d256c3-cb83-4844-a676-53e11e125599','makau','James Makau','james@admin.com','2024-09-11 05:53:08','$2y$10$YokT/DxtLBjIcMfO8hJjw.gsH111iy1kpTZvzfKJHV/MHlUOjoYv6','Tents Limited','Ngara , Nairobi Kenya','0722410268','james@bremak.co.ke','k8NQLEZrdPhGsyRdT3d3ikMIgH7BhLWRkMUdHjLF5ItPZJDYqdkW4sScYbP6','2024-09-11 05:53:08','2024-09-11 06:01:41','admin.jpg'),(2,'bba94bb1-2b7b-4349-bd8f-695658de6d9b',NULL,'quest','quest@quest.com','2024-09-11 05:53:08','$2y$10$/wjNCWmDipAQgWZome4kKukNT2SQ69T1btuuF34tXUcL0XzEMqeuW',NULL,NULL,NULL,NULL,NULL,'2024-09-11 05:53:08',NULL,'admin.jpg'),(3,'27025a39-08a0-4af8-9ff5-24afe8e19fe9',NULL,'user','user@user.com','2024-09-11 05:53:08','$2y$10$A.HRas6ZwbAlDDqN6R/t0ey2ou5gue9yV83SWjbyxarIrcitkHS/6',NULL,NULL,NULL,NULL,NULL,'2024-09-11 05:53:08',NULL,'admin.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 12:40:39
