-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'nesciunt'),(2,'pariatur'),(3,'facilis'),(4,'saepe'),(5,'qui'),(6,'est'),(7,'eaque'),(8,'doloribus'),(9,'eos'),(10,'tempore');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `index_of_customer_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Terrill Kuvalis','kspinka@example.net','1-751-863-4293x0681','1046 Cali Junctions\nBednarville, NY 02859','2023-01-17 13:15:47'),(2,'Vanessa Reichert','bode.braden@example.com','319-674-5268','4721 Cassidy Dale Apt. 398\nPacochatown, MN 11190-9676','2022-03-04 18:24:16'),(3,'Brennan Stoltenberg MD','oda95@example.com','00946754302','34288 Effertz Valley\nMaybellehaven, GA 64617','2022-08-05 07:29:05'),(4,'Dr. Buford McDermott','ward.aaliyah@example.com','1-379-027-5270','8984 Cormier Terrace\nNorth Zetta, NY 40088','2022-10-28 15:53:09'),(5,'Kamren Rodriguez','anastasia64@example.org','167-288-6272x74009','80941 Michele Junctions\nHerthastad, WY 48344','2022-10-07 15:01:53'),(6,'Jodie Williamson','crist.cora@example.net','036.731.8682x86792','1376 Faye Valleys Suite 846\nDeckowbury, KS 10169-7859','2022-09-09 18:41:50'),(7,'Amy Champlin II','karine85@example.net','+08(7)7981712722','0313 Erich Ports\nNorth Brittanyberg, ID 27809','2022-09-15 09:13:43'),(8,'Anastasia Gleichner II','ruth.wisozk@example.net','+08(3)2818052954','235 Lindgren Drive\nArmstrongmouth, KS 12299','2022-04-28 03:13:11'),(9,'Isac Kulas','noah.luettgen@example.com','1-024-450-1647x96312','081 Dannie Roads\nD\'angeloville, HI 84767-7374','2023-01-30 05:39:03'),(10,'Eldridge Kohler I','krajcik.bill@example.net','1-591-596-1919x9890','57878 Waelchi Junction Apt. 939\nNew Sid, FL 92195','2022-09-17 04:58:19'),(11,'Prof. Sally Franecki PhD','zwehner@example.net','724-049-2301','2905 Bechtelar Causeway\nRubyhaven, DE 01604-6005','2022-03-29 16:30:51'),(12,'Esperanza Gleichner','mona62@example.org','411-525-2293x898','416 Miller Cape\nPort Kieraton, MD 96668-3878','2022-11-05 13:35:03'),(13,'Edwin Price','tanner.ritchie@example.net','596-467-3251x715','813 Orn Isle Apt. 420\nWest Faviantown, CT 48240-5278','2022-05-23 12:16:54'),(14,'Ms. Zaria Mills II','orn.ena@example.com','(646)518-7139','43098 Schneider Green Apt. 053\nLake Desireeshire, MS 59860-1147','2022-07-22 18:15:26'),(15,'Dr. Trenton D\'Amore','maribel.bednar@example.net','691.613.0153x790','410 Erling Green\nBlocktown, KS 76657','2022-02-15 23:40:02'),(16,'Burnice Schinner','jabari21@example.com','(259)368-4936','633 Katharina Knoll Suite 418\nLake Josefafurt, DE 12075','2022-08-01 00:28:47'),(17,'Destini Goyette','stephen41@example.net','208.506.6458x019','77351 Francisco Square Apt. 455\nGeraldbury, OR 77124-6203','2023-01-01 13:53:42'),(18,'Christ Jacobs II','sigurd70@example.com','140.538.5241x367','0803 Klocko Fords\nRosarioshire, NJ 14330','2023-01-26 04:45:49'),(19,'Joanne Sporer','monroe94@example.org','(709)457-7976','469 Tyshawn Walk\nPort Daniella, GA 60816','2022-07-05 09:50:37'),(20,'Karine Howe','idibbert@example.org','1-304-806-4347x226','28080 Kshlerin Landing\nRamonmouth, IA 18011','2022-02-06 12:14:33'),(21,'Camron Upton','cristina.ritchie@example.net','1-445-093-6365x2182','426 Calista Springs Suite 000\nEast Quinn, ID 25891','2022-09-19 05:48:01'),(22,'Marilyne Weber','llueilwitz@example.com','(350)989-7844x48740','0797 Neva Coves\nHowellville, WI 98724-4065','2023-01-13 15:11:29'),(23,'Dr. Gerry Witting','bergstrom.oswaldo@example.org','202.316.8701','872 Antonetta Knoll Suite 605\nSouth Wyatt, WV 43373','2022-03-15 15:39:15'),(24,'Eulalia Weissnat','gabriella51@example.org','810-261-8067x2787','878 Ziemann Keys\nMarcellushaven, AZ 36293','2022-11-18 18:36:21'),(25,'Emmitt Terry','gaylord.valentine@example.com','634.468.5999x0215','36510 Reinhold Drive\nOrlandoland, KS 17929','2022-04-15 12:38:33'),(26,'Austyn Kiehn','lehner.grayce@example.net','1-915-545-1508x559','742 Goyette Pines Suite 837\nBrayanmouth, SC 44023-6962','2022-08-03 21:13:36'),(27,'Miguel Walsh DVM','hills.kiara@example.net','654.853.8795x29750','6796 Axel Corner\nNorth Jadyn, CO 70087','2022-10-10 23:33:09'),(28,'Dr. Adolfo Ryan MD','pat.considine@example.com','1-254-499-5819','13438 Morar Common\nSouth Marcelview, NM 28718','2022-10-19 09:56:34'),(29,'Ms. Savannah Boehm DDS','marie.mcglynn@example.com','(404)152-6498x5150','2860 Runolfsdottir Mill Suite 428\nLake Ocieland, MN 04487-7939','2022-02-06 22:06:36'),(30,'Prof. Florence Murray','stiedemann.amelia@example.com','196.174.4969x78929','47757 Klocko Causeway Apt. 497\nLake Tate, VT 94721','2022-12-09 15:31:09'),(31,'Markus Kiehn','dorthy.walter@example.com','(548)378-5907','1956 Jerrod Shore\nJovannyfort, IA 04784','2022-10-21 20:19:09'),(32,'Hilton Mueller V','dtremblay@example.net','598.721.5703x725','3163 Streich Haven Apt. 710\nRyannfort, NY 61917-3462','2022-11-13 17:41:21'),(33,'Arlo Stamm','ekuhic@example.net','+51(8)9054490209','010 Ferry Wall Apt. 344\nNorth Mathildeberg, SD 01470','2022-03-29 00:04:03'),(34,'Dallin Casper','schulist.oscar@example.net','1-680-344-7475x863','113 Prosacco Lodge\nAufderharshire, IN 28153-5472','2022-10-09 08:52:54'),(35,'Salma Oberbrunner','dooley.colleen@example.net','470-322-6998','3821 Sydney Keys\nPort Nakiatown, AK 99120','2022-12-17 13:51:35'),(36,'Briana Rempel III','mdoyle@example.com','+63(2)3041353087','8049 O\'Conner Fort\nNorth Lance, KS 21060-9552','2022-04-22 15:42:08'),(37,'Lawrence Reinger','buford.hagenes@example.net','199.409.0065x8351','9665 Zulauf Place Apt. 229\nHollyton, WV 64135','2022-05-29 17:55:49'),(38,'Dominic Jones','hector98@example.net','434.236.4928x179','13833 Maymie Unions Apt. 721\nSchroederhaven, NY 69268-6790','2022-06-19 03:28:47'),(39,'Luther Cruickshank','zlarson@example.com','1-265-686-7692','135 Horace Lakes Apt. 580\nPort Reaganview, RI 28736','2022-08-20 20:02:27'),(40,'Josie Weimann','astiedemann@example.com','(846)165-8572x759','8627 Mann Motorway Suite 335\nLake Kennith, CT 70745','2022-12-11 20:56:01'),(41,'Rowena Leannon V','albin19@example.com','+12(2)7352830572','308 Hessel Coves\nNorth Avery, KS 44941-4025','2022-08-30 06:24:30'),(42,'Ezekiel Herzog','priscilla76@example.com','621.101.0949x03662','05477 Anderson Summit Apt. 659\nNorth Michael, AK 29110','2022-09-13 03:01:10'),(43,'Braxton Hahn II','kristin41@example.com','978-887-3176','206 Nader Plaza\nLake Lisandro, KY 46285','2023-01-29 21:46:32'),(44,'Vidal Kiehn','deontae21@example.com','1-623-425-4953','7561 Casper Trace Apt. 575\nCarrollview, HI 48066','2022-02-13 06:08:00'),(45,'Matilde Rodriguez','murray44@example.net','(866)262-6982','4543 Karl Stream Suite 039\nLake Karsonhaven, SD 79032-0395','2022-11-02 14:38:47'),(46,'Prof. Russ Beier','lorenza87@example.com','1-339-764-5676x429','460 Koch Camp\nBartelltown, IN 50036-1788','2022-06-29 22:19:40'),(47,'Mr. Leone Kemmer','glennie03@example.org','1-011-366-2492','73286 Homenick Locks\nWest Lilianaville, NV 58278','2022-11-24 06:42:16'),(48,'Maria Gerlach','little.kelli@example.org','1-874-512-2077x497','549 Schimmel Plaza Suite 187\nLake Nicole, AZ 48435','2022-10-14 04:37:29'),(49,'Adele Okuneva','andres96@example.org','(455)483-3984x47671','25865 Rath Rest\nEast Lydatown, VA 79277','2022-03-04 02:21:08'),(50,'Dr. Agnes Blanda','glen43@example.net','083-924-6725x689','042 Feest Walk\nBernhardbury, ME 78346','2022-07-28 02:23:55'),(51,'Consuelo Leffler','meagan18@example.com','02640542927','094 Yasmine Island Apt. 562\nNorth Myrtle, MS 77333','2022-11-16 12:08:00'),(52,'Margot Stamm MD','tara.christiansen@example.com','1-574-950-1441x567','06058 Williamson Vista Suite 278\nOrvillefurt, CA 77480-7910','2022-11-23 08:44:25'),(53,'Creola Mitchell IV','tgoldner@example.org','(291)982-3072','351 Eliezer Well\nWest Emiliochester, NY 84054-0523','2022-07-07 08:13:17'),(54,'Elmira Bailey','maybell.dach@example.net','02273013371','1042 Lulu Lane Apt. 802\nFlossieshire, DE 69819','2022-09-12 12:34:05'),(55,'Clifton Mante','ppfannerstill@example.net','1-022-270-3117','3793 Schultz Roads Suite 539\nGladyceberg, AR 44183-6298','2022-04-24 22:28:15'),(56,'Prof. Madyson Bogan','tara02@example.net','125-324-9781x63889','254 Kilback Ways Apt. 145\nCormierhaven, AK 95291-9236','2022-11-05 08:03:11'),(57,'Prof. Bell Bailey DDS','champlin.queen@example.org','804-554-2815','53087 Emmitt Forges\nSouth Leland, HI 71760-2920','2023-01-20 00:02:22'),(58,'Minerva Dach','lehner.justina@example.org','(514)230-0230x4165','9131 Daniel Ville Suite 040\nKreigerburgh, KS 17346-5721','2022-07-20 11:18:10'),(59,'Ole Bernhard','madge11@example.org','(031)582-9746x079','28182 Verna Valleys\nNew Ofelia, MN 52876','2022-05-04 16:30:08'),(60,'Breanne Muller','gertrude.schowalter@example.net','+44(2)5843707169','8870 McClure Lodge Apt. 486\nBirdiemouth, OK 29328-7543','2022-09-27 23:04:10'),(61,'Molly Emard','ngreenholt@example.net','1-964-542-2074x4588','3821 Gutkowski Canyon\nPfefferview, DE 44084','2022-11-22 13:47:29'),(62,'Susanna Lemke','genoveva.robel@example.org','+46(1)5154325378','81334 Feeney Roads\nFramiland, IA 74178-4779','2022-06-29 20:10:59'),(63,'Chelsey Boyer','ona71@example.com','340.053.4734x15522','3785 Crona Viaduct\nPort Franzview, OH 63158-5702','2022-06-27 07:55:34'),(64,'Mr. Oran Bayer III','henry.jaskolski@example.com','(724)376-6341x5981','69864 Wiza Inlet Suite 821\nEast April, IA 53511-9875','2022-07-21 02:09:27'),(65,'Dayton Frami','justyn.dooley@example.net','602-795-3848','76274 Wendell Drives Apt. 978\nLake Laurenceshire, ND 46108','2022-02-16 09:06:25'),(66,'Enola Simonis','dickens.aubrey@example.org','1-720-760-1465','5532 Felipa Grove Apt. 150\nPort Donnellbury, VT 57432-8561','2023-01-24 02:20:34'),(67,'Henry Christiansen','kenton41@example.com','1-848-927-3059','7110 Jacinthe Flats Apt. 547\nCadenton, CA 11110','2022-03-19 15:25:44'),(68,'Hulda Simonis','ahessel@example.org','1-941-680-7014','2840 Jones Station\nReubenland, OK 72406-4994','2022-09-21 16:14:49'),(69,'Nat Nicolas','hills.sydnie@example.com','1-848-157-2879x8758','246 Carolyn Knolls\nSouth Brendonside, NY 54173','2022-06-14 18:01:35'),(70,'Mr. Manuela Cruickshank PhD','turcotte.trey@example.com','1-840-388-7668','9026 Haskell Avenue Suite 703\nCrooksfort, OK 00187','2022-12-21 04:28:18'),(71,'Garnet Koelpin','ksenger@example.com','563-976-7914','3242 Muller Falls Suite 815\nEast Myrnaton, MA 01455','2022-11-21 18:28:32'),(72,'Lenny Cronin','wilton.abernathy@example.org','09678952842','83189 Otto Point\nBetsyville, CO 16117-6395','2022-07-18 15:26:57'),(73,'Jordy Mayer','kolby67@example.net','06542280202','116 Nikolaus Fords Suite 572\nWest Margarettestad, SD 06244','2022-08-12 14:07:26'),(74,'Geovanny Pouros','kunde.ola@example.org','878-964-5676x73189','46291 Feil Orchard Suite 849\nNorth Rubyton, NV 32308','2022-08-03 01:19:40'),(75,'Amely Kuphal','janessa.batz@example.net','(109)626-7439x18812','4653 Jamarcus Burg Apt. 924\nEdwardotown, VT 64877-7947','2022-06-09 02:56:35'),(76,'Vicky Kessler','callie.bosco@example.com','932.925.9252x23703','722 Aiden Mount Suite 042\nKonopelskistad, ID 87259','2022-09-18 02:27:10'),(77,'Lonny Stracke','tkuhic@example.org','1-669-972-4228x56657','16403 Lemke Crossroad\nNorth Bellachester, AZ 19230-8869','2022-12-04 12:25:27'),(78,'Prof. Ashtyn Stark','pdooley@example.com','05427147252','79761 Colleen Drive\nNew Houstonberg, NY 27678','2022-02-06 06:56:20'),(79,'Ricardo Waters','melba.howell@example.com','732-437-7383x684','13139 Nina Plains\nArneberg, CA 05054-7476','2022-12-18 03:39:23'),(80,'Godfrey Gislason','gerhold.cletus@example.com','1-240-574-4007','08085 Sandy Springs Suite 852\nWest Charles, SC 98112-2863','2022-10-01 17:55:53'),(81,'Prof. Jarrod Abernathy','olin59@example.com','039.989.8976','000 Marilou Stream Suite 885\nMayrafurt, NV 57826-9464','2022-11-30 11:58:40'),(82,'Winston Halvorson','eleffler@example.org','337.874.0969x24429','885 Luz Stravenue Suite 965\nEast Pauline, NH 43342','2022-10-10 23:17:01'),(83,'Prof. Billie Paucek III','collier.lavinia@example.org','(933)744-3765x2682','73876 Altenwerth Mountain Suite 369\nRempelborough, HI 62508-5658','2022-03-20 04:42:33'),(84,'Prof. Mariano West','tfeest@example.com','07261154770','8874 Brielle Mountain Apt. 564\nNew Bette, MA 11241-9999','2022-06-01 18:16:11'),(85,'Dr. Mason Bauch','evan15@example.org','1-116-035-4599','200 Hilpert Heights Apt. 038\nBruenburgh, CO 70729','2022-08-10 13:55:38'),(86,'Alysson Lueilwitz','pgleason@example.com','453-259-8403x631','931 Alfreda Springs Suite 299\nPort Kristinaton, OH 66900-9435','2022-12-23 16:37:22'),(87,'Dr. Estell Gerlach III','hoeger.karlie@example.org','09995630330','85106 Eden Course\nKemmerville, NY 60409','2022-05-15 14:34:32'),(88,'Kade Weimann','hilll.elvera@example.org','762-677-7824x82349','08233 Demarcus Points Apt. 133\nSouth Cristobalbury, SC 86990','2022-02-27 14:54:06'),(89,'Louie Schmidt','cindy91@example.net','119-610-2650x6951','491 Pfeffer Shore\nNorth Brendon, UT 42209-5895','2022-05-19 12:08:29'),(90,'Sienna Nikolaus','nona.labadie@example.net','832-248-6793x2065','113 Feil Mall Suite 036\nLake Wymanton, MT 04376-9157','2022-11-19 00:48:54'),(91,'Lavonne Veum III','areilly@example.com','05217574352','201 McKenzie Mission Suite 912\nEast Franciscoland, DE 99382','2022-09-11 16:06:42'),(92,'Mr. Lindsey Schmitt','charley51@example.net','150.519.8842','613 Auer Junction Apt. 047\nNorth Anissa, SD 40417-7924','2022-02-12 19:37:47'),(93,'Ida Nienow','aconnelly@example.com','+44(1)6065358700','108 Jovani Pine\nWest Kieranfurt, HI 43359','2022-04-07 16:25:34'),(94,'Tierra Heidenreich','carolyne49@example.net','1-538-617-5937x029','31618 Carter Camp Suite 088\nBoscoburgh, CT 41461-2811','2022-03-17 23:49:21'),(95,'Dr. Henderson Herman','hyatt.myron@example.org','(375)735-9558x3078','394 Austen Land\nPort Hettiestad, IN 16197-8171','2022-03-09 12:01:12'),(96,'Burdette Beier','macejkovic.eunice@example.com','(326)160-7981','191 Reagan Plain\nNew Danstad, ME 88496-0745','2022-03-11 19:22:00'),(97,'Dr. Richmond Prohaska','mercedes82@example.org','1-095-343-1709x023','9997 Huels Hill\nWest Dorotheastad, TN 64636-5040','2022-12-03 07:23:07'),(98,'Lola Ondricka III','bauch.aniya@example.com','959.188.9511','43332 Hulda Freeway Apt. 389\nNorth Sallie, ME 22339-3896','2022-03-24 01:31:16'),(99,'Ronny Kuvalis','preston46@example.net','09014900060','2563 Sydnee Mall Apt. 302\nSouth Mohammed, MO 45406','2022-03-14 08:42:15'),(100,'Jared Schmitt','waino.jast@example.com','998-597-5030','539 Donnelly Extensions Apt. 527\nSouth Samanthamouth, AR 06608','2023-01-28 15:12:18');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `product_id` bigint(20) unsigned NOT NULL,
  `started_at` date NOT NULL,
  `finished_at` date DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `new_price` decimal(9,2) NOT NULL,
  PRIMARY KEY (`product_id`,`started_at`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'2022-05-27',NULL,'2022-04-14',NULL,79.92),(2,'2022-08-25',NULL,'2022-10-26',NULL,623497.55),(3,'2022-05-19',NULL,'2022-05-31',NULL,1211.16),(4,'2022-08-30',NULL,'2022-08-19',NULL,6746.60),(5,'2022-08-02',NULL,'2022-06-27',NULL,491.30),(6,'2022-05-03',NULL,'2022-12-12',NULL,9999999.99),(7,'2023-01-23',NULL,'2022-07-18',NULL,3439800.19),(8,'2022-04-22',NULL,'2022-03-20',NULL,3.88),(9,'2022-10-04',NULL,'2023-01-24',NULL,9999999.99),(10,'2022-11-29',NULL,'2022-10-12',NULL,4354.80);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_count` bigint(20) unsigned NOT NULL,
  `product_price` decimal(9,2) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,1,46,3113.60),(2,2,13,1122.90),(3,3,14,2163.39),(4,4,51,4976.69),(5,5,84,1730.71),(6,6,72,2508.86),(7,7,51,4187.00),(8,8,46,1588.47),(9,9,84,394.61),(10,10,44,1200.00),(11,11,62,4758.94),(12,12,56,699.00),(13,13,72,2980.30),(14,14,74,3155.40),(15,15,52,1951.68),(16,16,57,3954.65),(17,17,57,660.82),(18,18,51,425.65),(19,19,9,4382.67),(20,20,51,874.97),(21,21,5,3716.81),(22,22,13,1443.43),(23,23,1,161.80),(24,24,55,967.40),(25,25,17,671.18),(26,26,41,4059.30),(27,27,40,1833.59),(28,28,56,2474.75),(29,29,41,990.41),(30,30,30,3778.64),(31,31,46,1644.61),(32,32,44,3552.56),(33,33,78,3209.12),(34,34,34,2725.46),(35,35,26,2470.14),(36,36,68,2384.00),(37,37,75,941.04),(38,38,66,2944.25),(39,39,49,2992.14),(40,40,69,4294.26),(41,41,64,653.00),(42,42,24,3275.00),(43,43,100,4893.60),(44,44,61,3681.80),(45,45,44,3422.57),(46,46,3,2782.23),(47,47,43,4131.00),(48,48,48,147.11),(49,49,51,2661.51),(50,50,20,4288.30),(51,1,67,2467.70),(52,2,99,3100.00),(53,3,49,1358.20),(54,4,15,2042.06),(55,5,46,2688.97),(56,6,75,3294.03),(57,7,13,330.42),(58,8,95,425.00),(59,9,57,1638.96),(60,10,77,1302.00),(61,11,33,1745.83),(62,12,85,4730.34),(63,13,74,3011.59),(64,14,47,4005.57),(65,15,79,1338.75),(66,16,14,622.82),(67,17,51,3900.51),(68,18,51,1525.40),(69,19,4,1738.10),(70,20,79,1280.63),(71,21,68,3243.04),(72,22,71,617.85),(73,23,56,3640.00),(74,24,87,292.25),(75,25,50,3244.01),(76,26,60,4590.48),(77,27,69,1706.09),(78,28,74,2489.34),(79,29,1,3310.74),(80,30,96,4501.83),(81,31,2,4587.10),(82,32,88,1809.82),(83,33,28,469.66),(84,34,38,4926.44),(85,35,3,2839.16),(86,36,8,723.20),(87,37,28,2610.00),(88,38,63,104.41),(89,39,67,1719.96),(90,40,16,3217.65),(91,41,7,3318.17),(92,42,82,1499.98),(93,43,7,48.31),(94,44,11,4409.22),(95,45,93,3912.54),(96,46,96,1963.31),(97,47,39,1388.00),(98,48,74,1065.01),(99,49,77,3528.17),(100,50,83,1928.58);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `orders_product_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `storehouse_id` bigint(20) unsigned NOT NULL,
  `orders_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `storehouse_id` (`storehouse_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`storehouse_id`) REFERENCES `storehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,1,'2022-04-15 19:53:56'),(2,2,2,2,'2022-03-09 13:16:37'),(3,3,3,3,'2022-10-21 07:13:57'),(4,4,4,4,'2023-01-21 01:54:51'),(5,5,5,5,'2023-01-17 17:13:09'),(6,6,6,1,'2022-02-05 21:13:45'),(7,7,7,2,'2022-10-13 03:02:45'),(8,8,8,3,'2022-06-24 22:01:50'),(9,9,9,4,'2022-08-15 14:11:13'),(10,10,10,5,'2022-09-25 22:04:08'),(11,11,11,1,'2022-02-09 08:39:28'),(12,12,12,2,'2022-11-02 13:25:26'),(13,13,13,3,'2022-02-21 12:36:46'),(14,14,14,4,'2022-10-14 03:01:16'),(15,15,15,5,'2022-12-28 11:19:17'),(16,16,16,1,'2022-11-26 05:01:22'),(17,17,17,2,'2022-09-05 18:17:33'),(18,18,18,3,'2022-07-02 14:49:11'),(19,19,19,4,'2022-12-02 19:25:01'),(20,20,20,5,'2022-07-25 19:58:06'),(21,21,21,1,'2022-09-24 00:26:23'),(22,22,22,2,'2022-11-13 13:56:15'),(23,23,23,3,'2022-08-31 13:18:09'),(24,24,24,4,'2022-08-21 05:30:48'),(25,25,25,5,'2022-05-24 03:31:39'),(26,26,26,1,'2022-09-30 18:19:36'),(27,27,27,2,'2022-11-10 17:50:52'),(28,28,28,3,'2023-01-10 14:59:39'),(29,29,29,4,'2022-05-01 01:31:21'),(30,30,30,5,'2022-10-16 20:37:57'),(31,31,31,1,'2022-08-12 09:24:32'),(32,32,32,2,'2022-03-26 09:34:48'),(33,33,33,3,'2022-04-26 23:48:17'),(34,34,34,4,'2022-10-08 16:28:02'),(35,35,35,5,'2022-02-15 10:41:04'),(36,36,36,1,'2022-07-08 04:41:41'),(37,37,37,2,'2022-09-13 05:14:54'),(38,38,38,3,'2022-11-29 14:34:32'),(39,39,39,4,'2022-07-22 21:36:48'),(40,40,40,5,'2023-01-08 20:09:19'),(41,41,41,1,'2022-12-29 11:54:56'),(42,42,42,2,'2022-09-18 18:06:13'),(43,43,43,3,'2022-06-02 23:12:23'),(44,44,44,4,'2022-10-16 03:18:31'),(45,45,45,5,'2022-11-07 22:07:49'),(46,46,46,1,'2022-08-07 16:25:56'),(47,47,47,2,'2022-02-04 11:05:41'),(48,48,48,3,'2022-10-12 22:41:43'),(49,49,49,4,'2022-08-31 19:59:05'),(50,50,50,5,'2023-01-27 04:12:56'),(51,1,51,1,'2023-01-01 21:26:09'),(52,2,52,2,'2022-07-04 03:55:21'),(53,3,53,3,'2022-05-29 15:54:07'),(54,4,54,4,'2022-10-01 08:55:00'),(55,5,55,5,'2022-05-16 18:34:47'),(56,6,56,1,'2022-03-02 17:20:34'),(57,7,57,2,'2022-07-29 19:40:35'),(58,8,58,3,'2022-12-11 23:24:57'),(59,9,59,4,'2022-11-08 19:09:08'),(60,10,60,5,'2022-11-14 23:39:54'),(61,11,61,1,'2022-06-05 17:39:36'),(62,12,62,2,'2023-01-11 09:05:06'),(63,13,63,3,'2022-07-08 22:14:27'),(64,14,64,4,'2022-02-07 01:26:24'),(65,15,65,5,'2022-09-22 08:02:13'),(66,16,66,1,'2022-09-22 06:37:31'),(67,17,67,2,'2022-05-11 20:45:28'),(68,18,68,3,'2022-04-21 23:13:34'),(69,19,69,4,'2022-09-20 09:40:47'),(70,20,70,5,'2022-06-09 16:48:40'),(71,21,71,1,'2022-06-20 05:14:48'),(72,22,72,2,'2022-04-06 13:38:00'),(73,23,73,3,'2022-05-13 14:49:12'),(74,24,74,4,'2022-09-08 20:01:10'),(75,25,75,5,'2022-11-10 03:47:36'),(76,26,76,1,'2022-11-30 10:24:05'),(77,27,77,2,'2022-08-17 21:54:30'),(78,28,78,3,'2022-09-18 08:55:19'),(79,29,79,4,'2022-12-23 03:37:42'),(80,30,80,5,'2022-09-22 20:29:23'),(81,31,81,1,'2022-08-14 12:20:09'),(82,32,82,2,'2022-06-17 11:24:34'),(83,33,83,3,'2022-11-09 02:50:03'),(84,34,84,4,'2022-03-31 10:41:45'),(85,35,85,5,'2022-08-22 15:07:53'),(86,36,86,1,'2022-11-14 15:54:52'),(87,37,87,2,'2022-11-11 23:28:37'),(88,38,88,3,'2022-03-09 05:18:47'),(89,39,89,4,'2022-07-07 12:46:10'),(90,40,90,5,'2022-06-26 21:41:13'),(91,41,91,1,'2022-10-26 03:23:42'),(92,42,92,2,'2022-08-20 17:13:06'),(93,43,93,3,'2023-01-11 16:25:23'),(94,44,94,4,'2022-07-31 17:04:26'),(95,45,95,5,'2022-10-19 00:19:09'),(96,46,96,1,'2022-06-15 14:41:20'),(97,47,97,2,'2023-01-19 19:37:17'),(98,48,98,3,'2022-04-02 13:13:28'),(99,49,99,4,'2022-12-23 09:19:28'),(100,50,100,5,'2023-01-03 02:26:12');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `supplier_id` bigint(20) unsigned DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `rubric_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `rubric_id` (`rubric_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `index_of_product_name` (`name`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'repellat',3296.00,1,1,1,'2022-12-24 15:48:10','2023-01-25 07:27:01'),(2,'maiores',2404.70,2,2,2,'2022-08-26 04:10:16','2023-01-20 12:26:08'),(3,'sequi',2620.27,3,3,3,'2022-09-07 20:46:48','2023-01-28 01:27:54'),(4,'sint',3391.87,4,4,4,'2022-06-27 14:12:13','2023-01-17 07:12:57'),(5,'perferendis',176.69,5,5,5,'2022-04-09 01:44:11','2023-01-12 04:42:58'),(6,'et',2281.31,6,6,1,'2023-01-31 03:50:34','2023-01-11 00:22:02'),(7,'id',57.60,7,7,2,'2022-03-23 14:18:05','2023-01-18 02:49:32'),(8,'omnis',4577.75,8,8,3,'2023-01-29 08:39:42','2023-01-12 12:56:42'),(9,'dolore',3775.54,9,9,4,'2022-08-11 03:37:27','2023-01-04 09:43:51'),(10,'maiores',4906.51,10,10,5,'2022-08-31 21:09:21','2023-01-08 22:08:45'),(11,'nisi',1909.41,11,1,1,'2022-08-22 14:40:07','2023-01-27 07:15:46'),(12,'minima',3231.55,12,2,2,'2022-05-13 15:23:53','2023-01-07 04:25:42'),(13,'nulla',937.68,13,3,3,'2022-08-22 14:35:32','2023-01-01 10:02:56'),(14,'iste',916.21,14,4,4,'2023-01-22 14:46:39','2023-01-18 00:10:24'),(15,'quod',4192.41,15,5,5,'2022-06-03 09:04:52','2023-01-24 15:42:41'),(16,'accusantium',710.90,16,6,1,'2022-12-26 01:07:50','2023-01-21 02:11:30'),(17,'optio',543.00,17,7,2,'2022-12-02 13:05:25','2023-01-23 00:34:46'),(18,'facere',828.00,18,8,3,'2022-04-05 23:37:40','2023-01-23 02:47:47'),(19,'expedita',637.56,19,9,4,'2022-09-03 10:11:25','2023-01-22 17:24:40'),(20,'numquam',4947.10,20,10,5,'2022-08-24 10:00:31','2023-01-19 09:18:09'),(21,'omnis',4431.37,21,1,1,'2022-12-29 10:16:55','2023-01-01 00:55:57'),(22,'laudantium',1893.73,22,2,2,'2022-10-14 19:46:46','2023-01-30 07:03:22'),(23,'et',3836.68,23,3,3,'2022-12-20 08:58:40','2023-01-01 03:12:25'),(24,'laudantium',2645.75,24,4,4,'2022-05-28 14:58:45','2023-01-23 05:14:02'),(25,'suscipit',3185.08,25,5,5,'2022-12-19 01:37:44','2023-01-25 20:01:53'),(26,'rerum',3437.40,26,6,1,'2022-10-02 09:52:13','2023-01-09 22:36:58'),(27,'ea',3954.20,27,7,2,'2022-08-04 13:13:46','2023-01-24 12:23:07'),(28,'voluptas',4403.80,28,8,3,'2022-07-05 16:01:46','2023-01-07 06:14:25'),(29,'ex',1757.00,29,9,4,'2022-10-26 20:29:18','2023-01-28 17:12:16'),(30,'quia',3092.11,30,10,5,'2022-11-23 23:39:53','2023-01-19 22:22:58'),(31,'inventore',4371.59,31,1,1,'2022-12-03 21:58:01','2023-01-10 12:14:03'),(32,'et',3026.86,32,2,2,'2022-05-20 09:55:04','2023-01-01 03:30:11'),(33,'aliquam',323.31,33,3,3,'2022-12-06 19:39:36','2023-01-19 15:18:44'),(34,'optio',1553.90,34,4,4,'2022-06-03 18:06:28','2023-01-22 15:49:56'),(35,'sit',634.27,35,5,5,'2022-06-08 23:25:36','2023-01-29 19:22:59'),(36,'ducimus',1745.71,36,6,1,'2022-10-18 19:55:54','2023-01-09 09:28:29'),(37,'totam',105.31,37,7,2,'2023-01-23 11:22:39','2023-01-14 00:53:12'),(38,'earum',3455.14,38,8,3,'2022-10-26 15:51:32','2023-01-06 00:28:43'),(39,'sequi',1869.68,39,9,4,'2023-01-07 13:19:05','2023-01-26 19:12:52'),(40,'odit',979.00,40,10,5,'2022-08-07 01:33:40','2023-01-06 07:05:10'),(41,'dicta',3115.00,41,1,1,'2022-05-07 00:00:12','2023-01-12 17:01:31'),(42,'est',4926.76,42,2,2,'2022-06-05 08:36:20','2023-01-10 23:24:12'),(43,'modi',4986.39,43,3,3,'2022-08-17 08:15:27','2023-01-29 03:56:59'),(44,'qui',2617.95,44,4,4,'2022-10-23 20:15:34','2023-01-19 23:23:42'),(45,'non',451.86,45,5,5,'2022-10-02 21:27:55','2023-01-01 16:32:26'),(46,'modi',1879.51,46,6,1,'2022-10-05 06:12:00','2023-01-25 04:08:03'),(47,'vel',3759.71,47,7,2,'2022-05-06 11:07:27','2023-01-19 11:04:27'),(48,'sapiente',1821.69,48,8,3,'2022-12-20 01:32:52','2023-01-27 20:24:00'),(49,'eaque',1800.22,49,9,4,'2022-06-20 04:55:19','2023-01-10 16:27:16'),(50,'nostrum',1807.89,50,10,5,'2022-05-12 09:45:04','2023-01-23 12:31:36');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrics`
--

DROP TABLE IF EXISTS `rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrics`
--

LOCK TABLES `rubrics` WRITE;
/*!40000 ALTER TABLE `rubrics` DISABLE KEYS */;
INSERT INTO `rubrics` VALUES (1,'expedita'),(2,'eaque'),(3,'quo'),(4,'quidem'),(5,'et');
/*!40000 ALTER TABLE `rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
INSERT INTO `storehouses` VALUES (1,'West Lessie'),(2,'Carmenbury'),(3,'South Woodrow'),(4,'Daremouth'),(5,'Port Lornaville');
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storehouses_products` (
  `product_id` bigint(20) unsigned NOT NULL,
  `storehouse_id` bigint(20) unsigned NOT NULL,
  `product_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`storehouse_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `storehouses_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `storehouses_products_ibfk_2` FOREIGN KEY (`storehouse_id`) REFERENCES `storehouses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (1,1,61),(1,2,101),(1,3,63),(1,5,200), (6,1,16),(11,1,117),(16,1,145),(21,1,3),(26,1,77),(31,1,131),(36,1,46),(41,1,85),(46,1,37),(2,2,55),(7,2,139),(12,2,9),(17,2,85),(22,2,118),(27,2,5),(32,2,61),(37,2,93),(42,2,12),(47,2,106),(3,3,30),(8,3,37),(13,3,75),(18,3,98),(23,3,46),(28,3,19),(33,3,105),(38,3,22),(43,3,148),(48,3,118),(4,4,141),(9,4,99),(14,4,34),(19,4,89),(24,4,66),(29,4,115),(34,4,89),(39,4,11),(44,4,110),(49,4,66),(5,5,150),(10,5,53),(15,5,69),(20,5,23),(25,5,91),(30,5,34),(35,5,99),(40,5,108),(45,5,88),(50,5,38);
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Up-sized tangible software','yvon.lalonde@example.com','1-043-808-1950x30643'),(2,'Seamless system-worthy methodology','yvonne.boivin@example.org','(083)832-7957'),(3,'Persevering value-added collaboration','ncarrier@example.net','06400237820'),(4,'Integrated multimedia toolset','poulin.colette@example.com','1-674-140-4612'),(5,'Re-contextualized demand-driven projection','arianne54@example.net','(809)036-1308'),(6,'Ameliorated global emulation','nicole00@example.org','(595)369-7825x088'),(7,'Synergistic non-volatile projection','vaillancourt.yvonne@example.net','00572415805'),(8,'Managed impactful model','marthe60@example.net','+96(2)7871234609'),(9,'User-friendly client-server product','vchampagne@example.net','(601)724-9234'),(10,'Optional heuristic interface','gblais@example.net','+02(8)7374611518'),(11,'Open-source value-added attitude','glalonde@example.net','(517)390-5270x4240'),(12,'Synchronised client-server definition','gilbert.dufour@example.com','323-833-9103'),(13,'Triple-buffered modular support','françis.jean@example.net','(583)354-4062'),(14,'Streamlined stable hub','patrice50@example.com','00807587744'),(15,'Enhanced client-driven neural-net','cyr.odette@example.com','574.916.7439'),(16,'Balanced radical adapter','augustin69@example.net','(834)308-6034x244'),(17,'Enhanced responsive access','françoise.lachance@example.net','793-659-2477x0171'),(18,'Re-engineered impactful success','lalonde.sylvie@example.com','1-449-556-7821x0096'),(19,'Phased foreground processimprovement','allard.paule@example.org','(486)675-7981'),(20,'Synergized radical pricingstructure','blanchette.agathe@example.net','261-736-0182'),(21,'Persevering disintermediate parallelism','sébastien56@example.com','036-524-9687x998'),(22,'Reverse-engineered 24/7 systemengine','agathe31@example.net','019-179-8127x42493'),(23,'Realigned value-added standardization','jeanne.vaillancourt@example.net','(227)650-9699x155'),(24,'Ergonomic methodical framework','dominique41@example.org','433-260-3175'),(25,'Multi-lateral actuating website','uplante@example.org','453-598-0738x64097'),(26,'Managed dynamic toolset','hamel.susanne@example.com','1-854-803-4537'),(27,'Fundamental hybrid function','auguste13@example.org','692-025-7102x3472'),(28,'Assimilated 24hour emulation','martin.aurore@example.com','1-153-660-2939'),(29,'Realigned coherent forecast','éric25@example.net','962-776-7558x4517'),(30,'Operative 24hour strategy','caron.noël@example.net','1-879-061-0542x35139'),(31,'Proactive multimedia benchmark','jgrenier@example.net','+63(6)1852063397'),(32,'Seamless zerotolerance parallelism','madeleine.harvey@example.net','609.750.9618'),(33,'Customizable systemic function','thierry.bérubé@example.net','05104250195'),(34,'Vision-oriented well-modulated frame','tristan.beaudoin@example.org','(878)083-9674x451'),(35,'Operative web-enabled help-desk','wcharbonneau@example.org','(115)722-7939x38312'),(36,'Digitized bifurcated concept','vincent81@example.org','649.850.8013'),(37,'Triple-buffered bi-directional intranet','dominic35@example.com','(816)720-7341x455'),(38,'Diverse dynamic pricingstructure','tgiroux@example.org','094-169-5131x66893'),(39,'Centralized 4thgeneration productivity','renaud.benoît@example.org','+06(0)7059804719'),(40,'Virtual background circuit','xharvey@example.net','1-083-100-7647x4883'),(41,'Profit-focused multimedia structure','laurence84@example.net','484-898-2991x29608'),(42,'Intuitive eco-centric forecast','vincent15@example.com','588.667.6528x392'),(43,'Profound background hub','qdion@example.com','1-553-391-6294x6645'),(44,'Ameliorated human-resource localareanetwork','ménard.claudine@example.org','1-225-704-2903'),(45,'Compatible fresh-thinking throughput','ycôté@example.net','1-283-713-5452'),(46,'Organic context-sensitive success','albert56@example.net','203-952-9156x4591'),(47,'Universal executive internetsolution','evachon@example.org','822-253-9910'),(48,'Down-sized real-time database','rené59@example.com','(905)909-6786'),(49,'Devolved zerodefect intranet','marianne08@example.net','890.986.0296x276'),(50,'Automated interactive methodology','amélie91@example.org','(172)491-6412x69919');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31 20:09:47

/* 6 пункт курсовой работы: Скрипты характерных выборок.
 
 1) Определить склады на которых определенного товара (laudantium) находится менее 100 единиц.*/

-- решение с помощью вложенного запроса.

SELECT name FROM storehouses s WHERE id IN(
SELECT store FROM
(SELECT sp.storehouse_id store, product_count  FROM storehouses_products sp
WHERE sp.product_id IN (SELECT p.id FROM products p WHERE p.name="laudantium")
AND sp.product_count<100 )  ps);

+-----------+
| name      |
+-----------+
| Daremouth |
+-----------+
1 row in set (0.00 sec)

-- решение с помощью JOIN

SELECT s.name FROM storehouses_products sp
JOIN products p ON (sp.product_id = p.id and p.name ="laudantium")
JOIN storehouses s ON s.id = sp.storehouse_id
WHERE sp.product_count<100;
 
+-----------+
| sname     |
+-----------+
| Daremouth |
+-----------+
1 row in set (0.00 sec)

-- 2) определить на каком из складов  количество товара repellat максимально.

-- определим количество данного товара на всех складах

SELECT s.name store_name, product_count FROM storehouses_products sp
JOIN products p ON (sp.product_id = p.id and p.name ="repellat")
JOIN storehouses s ON s.id = sp.storehouse_id;

+-----------------+---------------+
| store_name      | product_count |
+-----------------+---------------+
| West Lessie     |            61 |
| Carmenbury      |           101 |
| South Woodrow   |            63 |
| Port Lornaville |           200 |
+-----------------+---------------+
4 rows in set (0.00 sec)

-- определим на каком из складов количества нужного товара максимально

SELECT s.name store_name, product_count FROM storehouses_products sp
JOIN products p ON (sp.product_id = p.id and p.name ="repellat")
JOIN storehouses s ON s.id = sp.storehouse_id
ORDER BY product_count DESC
LIMIT 1;

+-----------------+---------------+
| store_name      | product_count |
+-----------------+---------------+
| Port Lornaville |           200 |
+-----------------+---------------+
1 row in set (0.00 sec)

-- 3) Определить склад с наибольшей суммарной стоимостью товаров (без скидки) на нем

SELECT s.name store_name, sum(sp.product_count * p.price) sum_cost FROM storehouses_products sp
JOIN products p ON (sp.product_id = p.id)
JOIN storehouses s ON s.id = sp.storehouse_id
GROUP BY s.name 
ORDER BY sum_cost DESC
LIMIT 1;

+-----------------+------------+
| store_name      | sum_cost   |
+-----------------+------------+
| Port Lornaville | 2020770.37 |
| South Woodrow   | 1930168.10 |
| Daremouth       | 1882253.21 |
| West Lessie     | 1829310.16 |
| Carmenbury      | 1443713.66 |
+-----------------+------------+
5 rows in set (0.00 sec)

+-----------------+------------+
| store_name      | sum_cost   |
+-----------------+------------+
| Port Lornaville | 2020770.37 |
+-----------------+------------+
1 row in set (0.00 sec)

-- 4) какой из заказчиков купил товаров со скидкой на наибольшую сумму.

-- Все, кто покупали со скидкой

SELECT c.name, sum(op.product_count * op.product_price) sum_orders_cost  from orders o 
JOIN order_products op ON o.orders_product_id = op.product_id 
JOIN products p ON op.product_id = p.id 
JOIN discounts d ON (p.id=d.product_id and o.orders_date > d.started_at and (d.finished_at IS NULL OR o.orders_date < d.finished_at)) 
JOIN customers c ON o.customer_id = c.id 
GROUP BY c.name;

+------------------------+-----------------+
| name                   | sum_orders_cost |
+------------------------+-----------------+
| Brennan Stoltenberg MD |        96839.26 |
| Dr. Buford McDermott   |       284442.09 |
| Kamren Rodriguez       |       269072.26 |
| Anastasia Gleichner II |       113444.62 |
| Consuelo Leffler       |       308561.50 |
| Creola Mitchell IV     |        96839.26 |
| Elmira Bailey          |       284442.09 |
| Minerva Dach           |       113444.62 |
| Ole Bernhard           |       126567.96 |
+------------------------+-----------------+
9 rows in set (0.00 sec)

-- Кто купил со скидкой на наибольшую сумму

SELECT c.name, sum(op.product_count * op.product_price) sum_orders_cost  from orders o 
JOIN order_products op ON o.orders_product_id = op.product_id 
JOIN products p ON op.product_id = p.id 
JOIN discounts d ON (p.id=d.product_id and o.orders_date > d.started_at and (d.finished_at IS NULL OR o.orders_date < d.finished_at)) 
JOIN customers c ON o.customer_id = c.id 
GROUP BY c.name
ORDER BY sum_orders_cost DESC
LIMIT 1;

+------------------+-----------------+
| name             | sum_orders_cost |
+------------------+-----------------+
| Consuelo Leffler |       308561.50 |
+------------------+-----------------+
1 row in set (0.00 sec)


-- 5) в каком месяце в 2022 году в первую очередь было запущено максимальное количество скидок на товар.

SELECT MONTH(d.started_at) mon, count(*) dcount from discounts d 
group by MONTH(d.started_at)
ORDER by dcount DESC
LIMIT 1;

+------+--------+
| mon  | dcount |
+------+--------+
|    5 |      3 |
|    8 |      3 |
|    1 |      1 |
|    4 |      1 |
|   10 |      1 |
|   11 |      1 |
+------+--------+
6 rows in set (0.00 sec)

+------+--------+
| mon  | dcount |
+------+--------+
|    5 |      3 |
+------+--------+
1 row in set (0.00 sec)



/*ЭТОТ КУСОК ИЗ КУРСОВОЙ СКОПИРОВАТЬ ЕГО ОБРАТНО*/

/* 7 пункт Курсовой: "Представления".
вертикальные представления скрывают ряд столбцов, а горизонтальные строк*/

CREATE VIEW prod AS SELECT * FROM products ORDER BY name;

SELECT id, name, price, catalog_id
FROM products
ORDER BY catalog_id, name;
SELECT * FROM prod;

-- представление которое извлекает какой-то один товар
CREATE OR REPLACE VIEW processors AS
SELECT id, name, price, catalog_id
FROM products
WHERE catalog_id = 1;
SELECT * FROM processors;

-- представление для таблицы каталог с определенной сортировкой

CREATE VIEW cat AS SELECT * FROM catalogs ORDER BY;

CREATE VIEW cat_reverse /*это имя представления*/(catalog, catalog_id) AS SELECT name, id FROM catalogs;

/*чтобы заменить уже существующее представление*/
CREATE OR REPLACE VIEW namecat (id, name, total)
AS SELECT id, name, LENGTH(name) FROM catalogs;

/*вертикальное представление с частью столбцов*/
CREATE OR REPLACE VIEW prod AS SELECT id, name, price, catalog_id
FROM products ORDER BY catalog_id, name;

/*обращение к заданной таблице представлению*/
SELECT*FROM prod; или
SLECT *FROM prod ORDER BY name DESC;

/*горизонтальное предствление, ограничени едоступа к строкам*/
извлекаем процессоры

CREATE OR REPLACE VIEW prosessors AS
SELECT id, name, price, catalog_id
FROM products
WHERE catalog_id = 1;

SELECT * FROM prosessors;

/* чтобы была возможность изменить в последющем представление, 
 * при его создании нужно использовать следю конструкцию*/
WITH CHECK OPTION;










