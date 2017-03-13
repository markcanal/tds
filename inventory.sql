/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.7.14 : Database - tds_inventory
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tds_inventory` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tds_inventory`;

/*Table structure for table `app_log` */

DROP TABLE IF EXISTS `app_log`;

CREATE TABLE `app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_log` */

/*Table structure for table `item_category` */

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_cat` varchar(255) DEFAULT NULL,
  `item_cat_no` int(2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `item_category` */

insert  into `item_category`(`id`,`item_cat`,`item_cat_no`) values (1,'Vios/Batman',0),(2,'Superman',0),(3,'Batman',0),(4,'Mirage',0),(5,'Body And Main Parts',1),(6,'Doors',2),(7,'Windows',3),(8,'Electrical and Electronics',4),(9,'Electrical Supply',5),(10,'Guages and Meters',6),(11,'Ignition Electronic',7),(12,'Lighting and Signaling',8),(13,'Sensors',9),(14,'Starting System',10),(15,'Electrical Switches',11),(16,'Wiring Harness',12),(17,'Miscellaneous',13);

/*Table structure for table `item_directory` */

DROP TABLE IF EXISTS `item_directory`;

CREATE TABLE `item_directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_part_number` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_specs` varchar(255) DEFAULT NULL,
  `item_cat` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `item_directory` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pmaster` */

DROP TABLE IF EXISTS `pmaster`;

CREATE TABLE `pmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pcode` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pdisc` varchar(255) DEFAULT NULL,
  `prequest_date` datetime DEFAULT NULL,
  `prequest_for` varchar(255) DEFAULT NULL,
  `prequest_received` datetime DEFAULT NULL,
  `prequest_received_by` varchar(255) DEFAULT NULL,
  `prequest_released` datetime DEFAULT NULL,
  `prequest_rel_by` varchar(255) DEFAULT NULL,
  `prequest_rec_by` varchar(255) DEFAULT NULL,
  `job_order_no` varchar(255) DEFAULT NULL,
  `job_order_unit` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `pmaster` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) NOT NULL,
  `p_description` varchar(255) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_for_vtype` int(11) DEFAULT NULL,
  `p_stocks` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`p_id`,`p_description`,`p_name`,`p_for_vtype`,`p_stocks`,`sup_id`) values (1,'322134165','Gold','Tire',NULL,20,1),(2,'325HKGP','Boom','Beam',NULL,0,2);

/*Table structure for table `stocks` */

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `pcode` int(11) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `received_by` varchar(255) DEFAULT NULL,
  `psupplier` varchar(255) DEFAULT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `unit_price` decimal(8,2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `stocks` */

/*Table structure for table `supplier_table` */

DROP TABLE IF EXISTS `supplier_table`;

CREATE TABLE `supplier_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scode_name` varchar(255) DEFAULT NULL,
  `sname` varchar(255) NOT NULL,
  `scontact_email` varchar(255) DEFAULT NULL,
  `scontact_fax` varchar(255) DEFAULT NULL,
  `scontact_tel` varchar(255) DEFAULT NULL,
  `scity` varbinary(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `scontact_person` varchar(255) DEFAULT NULL,
  `scontact_person_title` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

/*Data for the table `supplier_table` */

insert  into `supplier_table`(`id`,`scode_name`,`sname`,`scontact_email`,`scontact_fax`,`scontact_tel`,`scity`,`saddress`,`scontact_person`,`scontact_person_title`) values (1,'Uragon','The Uragon','Uragon@yahoo.com','330-3535','0909009090','Caloocan City','37 Rose Street Reparo Baesa ','Totoy Bato','Manager'),(2,'RENZTAXIMETER','renz taxi meter',NULL,'0','0','quezon city','50 malakas st. pinyahan','lorenzo','taxi meter'),(3,'BALTAKS','Baltaks Merchandise',NULL,'*','731 2965      731 2967','Quezon City','8 BMA Cor. Kabignayan St., Tatalon','Jose Baltazar','*'),(4,'LVC','LVC automotive parts',NULL,'*','712 9722   7437 557','Quezon City','397 unit B Banawe st., cor N. Roxas st.','luis wah tung tsoi','LVC autoparts'),(5,'PARTMASTER','partmaster automotive supply',NULL,'*','7137341','Q.C.','2672 Banawe St.','Malu uy','Proprietress'),(6,'FFMARKETING','FF Marketing & Hydraulic Hose Center',NULL,'440-23-94','440-23-94','Valenzuela City','#95-1 Mc Arthur Hi-way Marulas Val. City','Antonio Sumayao','Sales Agent'),(7,'100ORTIGASTIRE','100 Ortigas Tire Trading Corp.',NULL,'687 1752','687 1751','Pasig City','# 100 Ortigas Ave. Bo. Ugong','Jay Gajudo','Agent'),(8,'NIPSONTRADING','Nipson Trading & Gen.',NULL,'*','0927  7302988','Bulacan','Gov. F. Halili  Ave.  Sta. MAria','Nato Kalabaw','*'),(9,'ERENTERPRISES','Evolution-R Enterprises',NULL,'*','*','Antipolo City','75 Marcos Highway, Mayamot, Antipolo City','Gina L. Salumbre','Proprietress'),(10,'CAPITAUTO','Capit Auto (Ryan\'s Trading Enterprises',NULL,'816-4272','0917-5305808','Makati City','LG42, Cityland 9, Dela Rosa St., Makati City','Ryan Guo','*'),(11,'BESMANAUTOSUPPLY','Besman Auto Supply',NULL,'384-5654   443-5674','291-8482, 291-8474, 443-5879','Valenzuela City','46-F Mac-Arthur Hi-way, Marulas, Valenzuela City','Paul Dela Cruz','Manager'),(12,'WALCO','Walco Motor Sales',NULL,'*','712 1489','Quezon city','17 Banawe St.','*','*'),(13,'M.LEGAZPI','M. Legazpi',NULL,'*','0915 6888864','Valenzuela','marulas','*','*'),(14,'DOSPARIS','Dosparis Auto supply co.',NULL,'*','414-3720','Quezon city','42 BNA Ave. Tatalon','willie','*'),(15,'MARIDABLEE','Maridable trading',NULL,'*','0919-4087134','Quezon City','67 A Agno Ext. Brgy. Tatalon','Willie','*'),(16,'EVOLUTIONR','Evolution R Enterprise',NULL,'*','*','Antipolo City','075 Marcos Highway Mayamot','Gina Salumbre','Proprietress'),(17,'LINEAIR','Lineair Marketing',NULL,'930 3135','939 1885','Quezon City','15 Arty road 1, Arty Subd., Talipapa','aircon','aircon'),(18,'DONDONAUTOPARTS','DON-DON AUTO PARTS',NULL,'*****','*****','Quezon City','725-A Banawe St., St. Peter','Loreto B. Villanueva','Proprietor'),(19,'MAYPOLTRADING','Maypol Trading',NULL,'0920 2807901','291 4414','Valenzuela City','9 Gumamela St., Marulas','Myla','*'),(20,'DONDON','Don Don Auto Parts',NULL,'1','1','Q.C.','725-A Banawe St., St Peter','Loreto Villanueva','Prop.'),(21,'JPLOPEZ','J.P. Lopez Japan surplus',NULL,'0916-8572699','*','QC','39 Banawe st. Quezon city','Jennifer lopez','Prop.'),(22,'JOHNRYAN','John Ryan Trading',NULL,'*','782-2512','*','*','*','*'),(23,'AUTOZONE','Autozone Automotive Supply',NULL,'*','4608015','Quezon City','1712 Banawe St.,','J. Pintor','Prop.'),(24,'JOART','JOART',NULL,'*','9216255458','*','*','*','*'),(25,'HENRYSTRADING','*',NULL,'*','*','*','*','*','*'),(26,'NICSONTRADING','Nicson Trading',NULL,'*','3629778','Caloocan City','369 Dama de Noche Reparo Baesa','Jun Castillo','Prop.'),(27,'MOONLIESTRADING','Moolies Trading',NULL,'0918 3589638','6472551','Pasig','# 101 A. Amang Rodriguez Ave. Santolan','Girlie','Prop.'),(28,'YOUCKS','Youcks Auto and Truck',NULL,'*','4168486/4151738','Quezon City','203-E del Monte Ave., Masambong','Ramo Castro','Prop.'),(29,'PTT','Power Tractire Inc.',NULL,'*','0917-816-8998','*','*','*','*'),(30,'BUENDA','buenda auto supply',NULL,'291-9435','291-6256/291-6566','valenzuela city','41-B (111-B) MacArthur Highway,Marulas','Elvira P. Uy','Owner'),(31,'BORDERS','Borders Enterprise Inc.',NULL,'732-0549  741 5271','712 9017 / 742-8871/741-5271','Quezon City','28 E Rodriguez st., Avenue','*','*'),(32,'MVB','MVB AUTOZONE',NULL,'*','725-9544','San Juan M.M','201-B & C N. Domingo St., Ermitano','Loida M. Basco','Proprietor'),(33,'HOLUNG','HOLUNG TRADING CORPORATION',NULL,'*','931-0710/431-1955','Quezon City','8 Apitong St.,Mapayapa Vill.3','Tony','*'),(34,'GOLD','GOLD POINT MOTOR',NULL,'*','430-5681/0919-8655820','Quezon City','22 A.F.P Rd.Brgy. Holy Spirit','Erlinda B. Garcia','proprietor'),(35,'SHUAIBA','SHUAIBA TRADING',NULL,'*','454 1136   453 6446','Quezon City','12 Cardiz St.,Banawe','Nicanor Javier','proprietor'),(36,'MEDINA','MEDINA TRADING',NULL,'*','294-0866/291-0002','Valenzuela City','205 Maysan Rd., Maysan','MA. Nerissa P. Medina','proprietor'),(37,'PF','P.F RUBBER BUSHING',NULL,'*','*','Mandaluyong City','8 Wayans St., Baranka Drive','*','*'),(38,'MRP','MRP TRADING',NULL,'517 5126','517 5140  287 5835   0943 3580118','Caloocan City','141 Libis Gochico','Humberto R. Pajutan','proprietor'),(39,'FACKS','Fucks Lubricant Phil. Inc.',NULL,'*','820-3257  820-3453  820-3454','Paranaque City','8280 Dr. A Santos Ave. Sueat Paranaque','*','*'),(40,'DAV','DAV Commercial',NULL,'*','415-0939/415-4644','Quezon City','500 BA Bonifacio Ave. San Jose','*','*'),(41,'AXL','AXL Supplier',NULL,'*','*','Pampanga City','77 Calapangan Apalit','*','*'),(42,'GOLDEVER','Gold Ever',NULL,'*','364-2421/364-0190','Caloocan City','231-233 Samson Rd.','*','*'),(43,'AT','A & T',NULL,'*','742-2169   389400','Quezon City','460 Banawe St.,','*','*'),(44,'JASONDUNGO','jason dungo',NULL,'*','*','*','pampanga','pampanga','*'),(45,'CARMONT','Carmont commercial inc.',NULL,'none','423 7150','Q.C.','460 Banawe St.','jun cruz','carmont commercial inc.'),(46,'SIRLITESAUTOPARTS','Sirlites Auto Parts',NULL,'*','920960985','Quezon City','29-F Bonny Serrano, Libis, Quezon City','Lito Calanoc','Proprietor'),(47,'ROSARIO','Rosario Auto Supply & Gen. Mdse.',NULL,'*','3170919','Launion','Pob. East, Rosario La Union','Donamil F. Chan','Prop.'),(48,'LJMB','LJMB Trading',NULL,'*','*','*','*','*','*'),(49,'SUNGRAFIX','*',NULL,'*','0907 1433210   0916 7034651','*','*','eddie gonzal','*'),(50,'KIAMOTORS','Kia Motors Inc.',NULL,'*','*','*','*','*','*'),(51,'COLUMBIAN','Columbian autocar corp.',NULL,'852-3763','852-8461','Marcelo Green, Paranaque','Km. 16 west service road, south superhighway','*','*'),(52,'CARLANE','car acc. and auto glass center',NULL,'0922-8855785','939-0407-----937-7648','Quezon City','526 Quirino Highway Talipapa Novaliches','Maila Castillo','*'),(53,'SEIRINGCORPORATION','seiring',NULL,'7168408','7168407/4141180','Q.C','15 G Araneta Ave. Q.C.','*','kia parts'),(54,'VOLKSLINE','Volksline commercial Inc.',NULL,'736-0467','733-9635  734-0254  734-0256','Manila','340Matienza St., San Miguel','Eddie Chua','optr'),(55,'TOYOTABALINTAWAK','toyota balitawak',NULL,'*','*','*','*','*','*'),(56,'DELAIR','Del Air',NULL,'742-9391','741-6590  741-1669','Quezon City','66 Banawe St.,','*','*'),(57,'MACRO','LPG Co., Inc.',NULL,'(632)807-6903','(632)807-4031, 807-4313','muntinlupa City','Rrn.504 Alabang Business park Brgy. Ayala Alabang','*','*'),(58,'GERRYC.','*',NULL,'*','*','*','*','*','*'),(59,'LUCAS','*',NULL,'*','*','*','*','*','*'),(60,'ORION','orion auto parts',NULL,'*','*','*','*','*','*'),(61,'ALLORIENTMKTG','All orient Marketing',NULL,'741 5271','742 9068','QUezon city','# 6 ubay st., brgy sienna','any ong','prop'),(62,'VITON','Viton Enterprise',NULL,'*','926 1450   468 0185','Quezon city','181 Mindanao Ave.','*','*'),(63,'SONGYANGG','Song Yangg motor sales',NULL,'*','742 8335','Quezon city','Kaliraya st. Banawe','*','*'),(64,'HYUNDAI','Hyundai Marcos Highway',NULL,'*','256-00067','Tondo Manila','2941-43 Jose Abad Santos Ave.','*','*'),(65,'Z201011BALANCE','Z201011BALANCE',NULL,'Z201011BALANCE','Z201011BALANCE','Z201011BALANCE','Z201011BALANCE','Z201011BALANCE','Z201011BALANCE'),(66,'BRIASIA','Bri-Asia Trading',NULL,'*','044 695 2988','Meycauayan','B 1 Lia St., Libtong','ALex T. Ng','Proprietor'),(67,'GOODGEAR','Goodgear Vehicle Parts',NULL,'*','*','834 0954   833 8382','*','*','*'),(68,'AUTOMODIFIED','Automodified car parts & accessories',NULL,'749 6052','749 6052','Quezon City','92 Banawe St.,','*','*'),(69,'MECTRADING','MEC Trading',NULL,'*','406 8241  0917 2053954','*','bet. abad santos & caloocan','*','*'),(70,'LUCKYTWO','Lucky Two Motor Parts',NULL,'742 6192','711 7949    712 1102     7113991','Quezon City','59 Banawe St.,','*','*'),(71,'POPOY','*',NULL,'*','*','*','*','*','*'),(72,'RMPRADIATOR','RMP Radiator shop',NULL,'*','*','*','*','*','*'),(73,'STURDYTAXI','JME Transport Inc.',NULL,'*','*','*','*','*','*'),(74,'SHURFIT','Shurfit Incorporated',NULL,'361 5125','361 3340','Malabon','139 Mc arthur hi way Potrero','*','*'),(75,'ADMANOR','Admanor Autotmotive Parts Supply',NULL,'*','467 0771','Novaliches','Blk 1 Lot 4 Glenmont Subd. Sauyo','*','*'),(76,'SORGA','SORGA',NULL,'*','*','*','*','*','*'),(77,'HYUNDAI','Hyundai J. Abad Santos',NULL,'256-5177','256-0511 loc. 109','*','2941-43 Jose Abad Santos Ave. Tondo Manila','Rhyan Jay S. Esguerra/Julius Santos','Parts Supervisor/PArts Salesman'),(78,'HYUNDAIABADSANTOS','SPARK MOTOR CORPORATION',NULL,'256-5177','256-0511 loc. 109','*','2941-43 Jose Abad Santos Avenue, Tondo Manila','JULIUS O. SANTOS','Parts Salesman'),(79,'CARSTHETICS','Carsthetics',NULL,'*','727-2939','Quezon City','Rm. 109, 2nd Flr., PACE Bldg., Ortigas Ext.','Valentin Kho','*'),(80,'MACHINEANDENGINESHOP','BR26 Machine and Engine Shop',NULL,'921-8356','921-8356','Quezon City','17 Don Antonio Dr. Commonwealth','Jayson Reyes','*'),(81,'HYUNDAINORTHEDSA','MOTOR AND CARRIAGE, INC.',NULL,'455-8981','361-1260, 361-1731, 361-0509','Quezon City','1174 E. Delos Santos Ave., Balintawak','Mandy','*'),(82,'LINTERNATIONALCORP.','L-INTERNATIONAL CORP.',NULL,'*','0916-5937079 / 505 1429','Pasig City','Renaissance 1000 806D Meralco Ave.','Yeon Jun Lee','*'),(83,'BONGREPAIRSHOP','*',NULL,'*','0909-4281818','Quezon City','Brgy. Tatalon Quezon City','Bong','*'),(84,'REIGNSUNAUTOSUPPLY','REIGN SUN AUTO SUPPLY',NULL,'*','510-61-80','Caloocan City','Blk.16C Ph3 E1, Kamada Compound, Brgy. 12, Dagat-Dagatan','Rolly B. Caranto','proprietor'),(85,'TONYOBIAS','*',NULL,'*','9991968296','*','*','Tony Obias','*'),(86,'AIRMART','Air-Mart Refrigeration and Aircon Supplies',NULL,'477-2174','881-2279;  477-2162','Antipolo City','29 Abu Bakr St., Kingsville Executive Village, Brgy. Mayamot,','Juan Victorio Fernandez','Proprietor'),(87,'MOREFLEXENTERPRISES','Moreflex Enterprises',NULL,'*','990-3398; 227-2040','Caloocan City','293 Rizal Ave. Ext. Bet 8th and 9th Ave., Brgy. 61, Zone 6','Ebeth Joyce P. Moral','Proprietress'),(88,'COMGLASCOAG','Comglasco Aguila Glass Corp.',NULL,'838-3986','838-0000','Parañaque City','8480 KM 18 East Service Rd. Brgy. San Martin De Porres','Rovi Ripalda','Account Executive'),(89,'REVSPEED','Revspeed Motor parts and Service',NULL,'*','9758230; 0917-8660812','Quezon City','# 102 Roosevelt Ave. San Francisco Del Monte','Lorena L. Santos','Proprietress'),(90,'BCAUTOSUPPLY','B. C. AUTO SUPPLY',NULL,'*','2555335','Manila','2248 Makata St., Sta. Cruz','Bernie Manikan','Proprietor'),(91,'ENGINEMASTERTRADING','ENGINE MASTER TRADING INC.',NULL,'*','732-8235, 743-4657, 410-0908','Quezon City','16 Banawe St., cor. Cardiz','Ghil Angeles','*'),(92,'GMPAUTOSUPPLY','G. M. P. AUTO SUPPLY',NULL,'*','0939-8400223','Quezon City','16 Sto. Domingo St., Quezon City','Bonifacio H. Sacil','Proprietor'),(93,'ABNAUTOSUPPLY','ABN AUTO SUPPLY',NULL,'*','*','Caloocan City','#84 A. Quuirino Hi-way, Brgy. 184 Bankers Village','Arsenio B. Naraga','Proprietor'),(94,'ARPARTSTARAUTOSUPPLY','A.R. PART STAR AUTO SUPPLY',NULL,'*','*','*','*','JOTAM','*'),(95,'MORNINGLORYAUTOSUPLY','MORNING GLORY AUTO SUPPLY',NULL,'*','743-7607','Quezon City','# 15 Banawe St.,','Amado','*'),(96,'GRANDEURAUTOSUPPLY','GRANDEUR AUTO SUPPLY',NULL,'*','*','Quezon City','445 Banawe St.,','B. Chan','*'),(97,'ROYCEGEN.MERCHANDISE','ROYCE GENERAL MERCHANDISE',NULL,'*','376-4815, 376-0213','*','*','Jasfer','*'),(98,'PITINDUSTRIES','P.I.T. INDUSTRIES',NULL,'*','*','*','No. 51 Sumulong Highway, Antipolo, Rizal','Carlson Sy','Proprietor'),(99,'BANAWEAUTOSUPPLY','BANAWE AUTO SUPPLY',NULL,'*','*','Quezon City','445 Banawe St.,','B. Chan','Proprietor');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`user_name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`,`level`,`image`) values (1,'admin1234','admin1234@gmail.com','$2y$10$OgpR4RHBjJdDBagmr.zJrua7pwiytTuwVEmRX3dOYjQk94C8ygskK','yole2Cg9N91Lw91sivKuorx8LszlvtMPLpwUn07w16FUqrgQtU2yY8RiEf5F','2017-03-11 06:04:03','2017-03-13 05:46:30',NULL,NULL),(2,'admin12345','admin12345@gmail.com','$2y$10$HNWo1dlbhwrETiFOqvV8WuAH0VnN5ZSt726N77KbdncOUb/wfjmx2',NULL,'2017-03-11 06:13:28','2017-03-11 06:13:28',NULL,NULL),(3,'user12345','user12345@gmail.com','$2y$10$iWNZ4D6S9TxozZDHlHZR9e4nWStSvuxu/AvCxJN8GHlG7Q8.GhrsC','Zp4EqAq1Rggf2W5mARuhy3VdBvhjpW73rKSxo7LFCY7tmEGwtpTxZCFHNxiQ','2017-03-13 05:48:36','2017-03-13 05:54:04',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
