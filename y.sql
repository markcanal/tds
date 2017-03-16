/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.17 : Database - sturdytaxi_tds_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sturdytaxi_tds_database` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sturdytaxi_tds_database`;

/*Table structure for table `account_limit` */

DROP TABLE IF EXISTS `account_limit`;

CREATE TABLE `account_limit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acct_amt_boundary` decimal(5,2) NOT NULL,
  `acct_amt_short` decimal(5,2) NOT NULL,
  `acct_amt_bitin` decimal(5,2) NOT NULL,
  `acct_amt_damages` decimal(5,2) NOT NULL,
  `acct_amt_fuel` decimal(5,2) NOT NULL,
  `acct_amt_misc` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `ann_details` */

DROP TABLE IF EXISTS `ann_details`;

CREATE TABLE `ann_details` (
  `an_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `displayed_at` date NOT NULL,
  `closed_at` date NOT NULL,
  `view_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `ann_header` */

DROP TABLE IF EXISTS `ann_header`;

CREATE TABLE `ann_header` (
  `an_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `announcements` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`an_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `app_settings` */

DROP TABLE IF EXISTS `app_settings`;

CREATE TABLE `app_settings` (
  `as_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`as_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `audit_trails` */

DROP TABLE IF EXISTS `audit_trails`;

CREATE TABLE `audit_trails` (
  `at_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`at_id`)
) ENGINE=MyISAM AUTO_INCREMENT=338595 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `cal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fiscal_year_id` int(11) NOT NULL,
  `calendar_date` date NOT NULL,
  `is_holiday` tinyint(1) NOT NULL,
  `is_weekend` tinyint(1) NOT NULL,
  `calendarcol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `company_profile` */

DROP TABLE IF EXISTS `company_profile`;

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Company_address` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Company_Logo` longblob NOT NULL,
  `Company_Banner` longblob NOT NULL,
  `Company_Description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Company_Contact` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `dispatch_allow_config` */

DROP TABLE IF EXISTS `dispatch_allow_config`;

CREATE TABLE `dispatch_allow_config` (
  `employee_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `allow` tinyint(4) NOT NULL DEFAULT '0',
  `set_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_config` tinyint(4) DEFAULT NULL,
  `effective_until` timestamp NULL DEFAULT NULL,
  `set_by_admin` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `idx_driver_until` (`employee_id`,`effective_until`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `dispatch_status` */

DROP TABLE IF EXISTS `dispatch_status`;

CREATE TABLE `dispatch_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` int(11) NOT NULL,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Table structure for table `dispatch_trans` */

DROP TABLE IF EXISTS `dispatch_trans`;

CREATE TABLE `dispatch_trans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispatched_date_time` datetime NOT NULL,
  `dispatched_by` int(11) NOT NULL,
  `employee_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `taxi_body_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `shift_am_pm` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `schedule` int(1) NOT NULL,
  `amt_total` decimal(8,2) NOT NULL,
  `amt_boundary` decimal(8,2) NOT NULL,
  `amt_bond` decimal(8,2) NOT NULL,
  `amt_sss` decimal(8,2) NOT NULL,
  `amt_pagibig` decimal(8,2) NOT NULL,
  `amt_phealth` decimal(8,2) NOT NULL,
  `display_sbud` decimal(8,2) DEFAULT '0.00',
  `payment_ref_id` int(10) DEFAULT NULL,
  `fully_paid` tinyint(4) DEFAULT '0',
  `dispatch_status` smallint(6) DEFAULT '0',
  `print_status` smallint(6) DEFAULT '0',
  `printed_datetime` timestamp NULL DEFAULT NULL,
  `dispatch_daily_rate` decimal(8,2) DEFAULT '0.00',
  `unremitted_status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_date_driver_taxi` (`dispatched_date_time`,`employee_id`,`taxi_body_no`)
) ENGINE=InnoDB AUTO_INCREMENT=40124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `dotnet_awol_history_detail` */

DROP TABLE IF EXISTS `dotnet_awol_history_detail`;

CREATE TABLE `dotnet_awol_history_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Emp_last_trip` datetime DEFAULT CURRENT_TIMESTAMP,
  `first_letter` tinyint(1) DEFAULT '0' COMMENT 'First Letter Sent',
  `Second_letter` tinyint(1) DEFAULT '0' COMMENT 'Second Letter Sent',
  `Final_letter` tinyint(1) DEFAULT '0' COMMENT 'Final Letter Sent',
  `Excemp_letter` tinyint(1) DEFAULT '0' COMMENT 'Excempted to Have Awol Letter',
  `Excem_reason` text COMMENT 'Reason to bo excempted',
  `filter_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Date when Awol driver filtered',
  `first_letter_date` datetime DEFAULT NULL COMMENT 'Date when first Generate Awol Letter',
  `first_letter_reg_number` varchar(255) DEFAULT NULL COMMENT 'Registered Number From post office',
  `second_letter_date` datetime DEFAULT NULL COMMENT 'Date when second letter generated',
  `second_letter_reg_number` varchar(255) DEFAULT NULL COMMENT 'Second Registered Number from Post Office',
  `final_letter_date` datetime DEFAULT NULL COMMENT 'Date when final letter Generated',
  `final_letter_reg_number` varchar(255) DEFAULT NULL COMMENT 'Final Letter Registered Number from Post Office',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_collection` */

DROP TABLE IF EXISTS `dotnet_collection`;

CREATE TABLE `dotnet_collection` (
  `body_no` varchar(20) NOT NULL,
  `emp_id` varchar(10) DEFAULT '',
  `emp_name` varchar(225) DEFAULT '',
  `shift` varchar(225) DEFAULT '',
  `boundary` decimal(8,2) DEFAULT '0.00',
  `bond_col` decimal(8,2) DEFAULT '0.00',
  `sss_col` decimal(8,2) DEFAULT '0.00',
  `disc_col` decimal(8,2) DEFAULT '0.00',
  `short_col` decimal(8,2) DEFAULT '0.00',
  `bitin_col` decimal(8,2) DEFAULT '0.00',
  `late_col` decimal(8,2) DEFAULT '0.00',
  `cash_col` decimal(8,2) DEFAULT '0.00',
  `am_pm_col` varchar(10) DEFAULT '',
  `dp_date` datetime DEFAULT NULL,
  `cat` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_contibution_report` */

DROP TABLE IF EXISTS `dotnet_contibution_report`;

CREATE TABLE `dotnet_contibution_report` (
  `emp_id` varchar(10) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `drive_count` int(2) DEFAULT NULL,
  `compensation` decimal(8,2) DEFAULT NULL,
  `contri` decimal(8,2) DEFAULT NULL,
  `ss_ee_share` decimal(8,2) DEFAULT NULL,
  `ss_er_share` decimal(8,2) DEFAULT NULL,
  `ss_tot_prem` decimal(8,2) DEFAULT NULL,
  `ph_ee_share` decimal(8,2) DEFAULT NULL,
  `ph_er_share` decimal(8,2) DEFAULT NULL,
  `ph_tot_prem` decimal(8,2) DEFAULT NULL,
  `pg_ee_share` decimal(8,2) DEFAULT NULL,
  `pg_er_share` decimal(8,2) DEFAULT NULL,
  `pg_tot_prem` decimal(8,2) DEFAULT NULL,
  `balance_contri` decimal(8,2) DEFAULT NULL,
  `con_year` date DEFAULT NULL,
  `con_month` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_emp_info` */

DROP TABLE IF EXISTS `dotnet_emp_info`;

CREATE TABLE `dotnet_emp_info` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `D_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_Fname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_Lname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_Mname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_extname` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_add` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_City` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_cpno` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_tlno` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_license` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_exp` date DEFAULT NULL,
  `D_employed` date DEFAULT NULL,
  `D_Date` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_image` longblob,
  `D_sss` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_bday` date DEFAULT NULL,
  `D_age` int(11) DEFAULT NULL,
  `D_phhealth` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_citi` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_pagibig` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_post` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_tin` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_stat` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_gen` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_remarks` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `D_remarks_date` datetime DEFAULT NULL,
  `D_remarks_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_Prov_add` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_Prov_add2` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_height` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `D_weight` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `D_no` (`D_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3408 DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_emp_remarks` */

DROP TABLE IF EXISTS `dotnet_emp_remarks`;

CREATE TABLE `dotnet_emp_remarks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `d_remarks` text NOT NULL,
  `d_remarks_date` date NOT NULL,
  `date_updated` date NOT NULL,
  `d_emp_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_expense_` */

DROP TABLE IF EXISTS `dotnet_expense_`;

CREATE TABLE `dotnet_expense_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_date` datetime DEFAULT NULL,
  `expense_desc` varchar(255) DEFAULT NULL,
  `cat` varchar(255) DEFAULT NULL,
  `sub_cat` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_inactive_driver` */

DROP TABLE IF EXISTS `dotnet_inactive_driver`;

CREATE TABLE `dotnet_inactive_driver` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_drive` datetime NOT NULL,
  `dispatch_trans` varchar(255) NOT NULL,
  `taxi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_scud_col` */

DROP TABLE IF EXISTS `dotnet_scud_col`;

CREATE TABLE `dotnet_scud_col` (
  `trans_number` int(10) DEFAULT NULL,
  `dispatch_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `short` decimal(8,2) DEFAULT NULL,
  `bitin` decimal(8,2) DEFAULT NULL,
  `damage` decimal(8,2) DEFAULT NULL,
  `fuel` decimal(8,2) DEFAULT NULL,
  `late_boundary` decimal(8,2) DEFAULT NULL,
  `taxi` varchar(20) DEFAULT NULL,
  `cat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dotnet_settings` */

DROP TABLE IF EXISTS `dotnet_settings`;

CREATE TABLE `dotnet_settings` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT,
  `set_name` varchar(255) DEFAULT NULL,
  `set_value` int(255) DEFAULT NULL,
  `set_description` varchar(500) DEFAULT NULL,
  KEY `set_id` (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Table structure for table `employee_account` */

DROP TABLE IF EXISTS `employee_account`;

CREATE TABLE `employee_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `entry_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_id` int(11) DEFAULT NULL,
  `account_item` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `remarks` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `entered_by` int(11) DEFAULT NULL,
  `entry_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22835 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `employee_account_items` */

DROP TABLE IF EXISTS `employee_account_items`;

CREATE TABLE `employee_account_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` int(11) DEFAULT NULL,
  `item_description` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `item_limit` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Table structure for table `employee_account_limits` */

DROP TABLE IF EXISTS `employee_account_limits`;

CREATE TABLE `employee_account_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `entry_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_id` int(11) DEFAULT NULL,
  `account_item` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `remarks` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `entered_by` int(11) DEFAULT NULL,
  `entry_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `employees_set_to_inactive` */

DROP TABLE IF EXISTS `employees_set_to_inactive`;

CREATE TABLE `employees_set_to_inactive` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `employee_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `employee_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sss` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagibig` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `philhealth` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_date` date NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `statusid` int(10) unsigned NOT NULL,
  `permanency_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `unitid` int(10) unsigned NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rehired_date` date DEFAULT NULL,
  `immediate_relative` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_relative_relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_relative_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `guarantor_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `guarantor_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `employer_tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `fiscal_year` */

DROP TABLE IF EXISTS `fiscal_year`;

CREATE TABLE `fiscal_year` (
  `fy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fiscal_date_start` date NOT NULL,
  `fiscal_date_end` date NOT NULL,
  PRIMARY KEY (`fy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `generator_tags` */

DROP TABLE IF EXISTS `generator_tags`;

CREATE TABLE `generator_tags` (
  `gt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`gt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `md_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`md_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `ot_disapproved` */

DROP TABLE IF EXISTS `ot_disapproved`;

CREATE TABLE `ot_disapproved` (
  `otd_id` int(10) NOT NULL AUTO_INCREMENT,
  `otr_id` int(10) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`otd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ot_request` */

DROP TABLE IF EXISTS `ot_request`;

CREATE TABLE `ot_request` (
  `otr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `uam_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  `duration` decimal(10,2) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`otr_id`),
  KEY `uam_id_fk_idx` (`uam_id`),
  KEY `id_fk_idx` (`id`),
  KEY `project_id_fk_idx` (`project_id`),
  KEY `status_id_idx` (`status_id`),
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `ot_status` (`ots_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ot_status` */

DROP TABLE IF EXISTS `ot_status`;

CREATE TABLE `ot_status` (
  `ots_id` int(11) NOT NULL AUTO_INCREMENT,
  `ots_name` varchar(45) NOT NULL,
  PRIMARY KEY (`ots_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `pagibig_matrix` */

DROP TABLE IF EXISTS `pagibig_matrix`;

CREATE TABLE `pagibig_matrix` (
  `salary_bracket` int(11) NOT NULL AUTO_INCREMENT,
  `min_amt` decimal(8,2) DEFAULT NULL,
  `max_amt` decimal(8,2) DEFAULT NULL,
  `ee_percentage` decimal(8,2) DEFAULT NULL,
  `er_percentage` decimal(8,2) DEFAULT NULL,
  KEY `salary_bracket` (`salary_bracket`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `payment_batch_process` */

DROP TABLE IF EXISTS `payment_batch_process`;

CREATE TABLE `payment_batch_process` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `processed_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `processed_by` int(11) NOT NULL,
  `batch_amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `payment_status` */

DROP TABLE IF EXISTS `payment_status`;

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` int(11) NOT NULL,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `payment_trans_detail` */

DROP TABLE IF EXISTS `payment_trans_detail`;

CREATE TABLE `payment_trans_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_trans_id` int(10) DEFAULT NULL,
  `account_item` int(11) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9842 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `payment_trans_header` */

DROP TABLE IF EXISTS `payment_trans_header`;

CREATE TABLE `payment_trans_header` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_received_by` int(11) NOT NULL,
  `dispatch_ref_id` int(10) DEFAULT NULL,
  `payment_made_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `boundary` decimal(8,2) NOT NULL,
  `sum_of_details` decimal(8,2) NOT NULL,
  `total_amount_due` decimal(8,2) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL,
  `payment_status` smallint(6) NOT NULL DEFAULT '0',
  `batch_process_id` int(11) DEFAULT NULL,
  `amount_sss` decimal(8,2) DEFAULT '0.00',
  `bond` decimal(8,2) DEFAULT '0.00',
  `amt_boundary` decimal(8,2) DEFAULT '0.00',
  `am_pm_tag` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date_driver` (`payment_date_time`,`payment_made_by`),
  KEY `dt_by` (`payment_date_time`,`payment_received_by`)
) ENGINE=InnoDB AUTO_INCREMENT=14442 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `philhealth_matrix` */

DROP TABLE IF EXISTS `philhealth_matrix`;

CREATE TABLE `philhealth_matrix` (
  `salary_braket` int(11) NOT NULL AUTO_INCREMENT,
  `min_amt` decimal(8,2) DEFAULT NULL,
  `max_amt` decimal(8,2) DEFAULT NULL,
  `salary_base` decimal(8,2) DEFAULT NULL,
  `ee_share` decimal(8,2) DEFAULT NULL,
  `er_share` decimal(8,2) DEFAULT NULL,
  `tot_prem` decimal(8,2) DEFAULT NULL,
  KEY `salary_braket` (`salary_braket`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_uk` (`project_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `role_module_mapping` */

DROP TABLE IF EXISTS `role_module_mapping`;

CREATE TABLE `role_module_mapping` (
  `rm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `privilege` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`rm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `rl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`rl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule` int(2) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `sss_contribution` */

DROP TABLE IF EXISTS `sss_contribution`;

CREATE TABLE `sss_contribution` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `sss_matrix` */

DROP TABLE IF EXISTS `sss_matrix`;

CREATE TABLE `sss_matrix` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  `min_amt` decimal(8,2) NOT NULL,
  `max_amt` decimal(8,2) NOT NULL,
  `monthly` decimal(8,2) NOT NULL,
  `ss_er` decimal(8,2) NOT NULL,
  `ss_ee` decimal(8,2) NOT NULL,
  `ss_total` decimal(8,2) NOT NULL,
  `er` decimal(8,2) NOT NULL,
  `tc_er` decimal(8,2) NOT NULL,
  `tc_ee` decimal(8,2) NOT NULL,
  `tc_total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `taxi` */

DROP TABLE IF EXISTS `taxi`;

CREATE TABLE `taxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taxi_body_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `plate_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `regular_driver` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxi_uniq` (`taxi_body_no`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

/*Table structure for table `taxi_boundary` */

DROP TABLE IF EXISTS `taxi_boundary`;

CREATE TABLE `taxi_boundary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taxi_body_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `schedule` int(2) NOT NULL,
  `amt_total` decimal(8,2) NOT NULL,
  `amt_boundary` decimal(8,2) NOT NULL,
  `amt_bond` decimal(8,2) NOT NULL,
  `amt_sss` decimal(8,2) NOT NULL,
  `amt_pagibig` decimal(8,2) NOT NULL,
  `amt_phealth` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxi_boundary_uniq` (`taxi_body_no`,`schedule`)
) ENGINE=InnoDB AUTO_INCREMENT=3665 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `taxi_tags` */

DROP TABLE IF EXISTS `taxi_tags`;

CREATE TABLE `taxi_tags` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `tag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `tag_code_uniq` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmplog` */

DROP TABLE IF EXISTS `tmplog`;

CREATE TABLE `tmplog` (
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `unit_approver_mapping` */

DROP TABLE IF EXISTS `unit_approver_mapping`;

CREATE TABLE `unit_approver_mapping` (
  `uam_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `unitid` int(11) NOT NULL,
  `sendcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uam_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `units` */

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `unit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `user_leave_credit_summary` */

DROP TABLE IF EXISTS `user_leave_credit_summary`;

CREATE TABLE `user_leave_credit_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_balance` decimal(5,2) NOT NULL,
  `last_update` datetime NOT NULL,
  `leave_total_balance_fiscal` decimal(5,2) NOT NULL DEFAULT '0.00',
  `fyid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`fyid`,`leave_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `user_status` */

DROP TABLE IF EXISTS `user_status`;

CREATE TABLE `user_status` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sss` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagibig` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `philhealth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_date` date NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statusid` int(10) unsigned NOT NULL,
  `permanency_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `unitid` int(10) unsigned NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rehired_date` date DEFAULT NULL,
  `immediate_relative` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_relative_relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_relative_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guarantor_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guarantor_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employer_tag` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_unitid_foreign` (`unitid`),
  KEY `users_statusid_foreign` (`statusid`)
) ENGINE=MyISAM AUTO_INCREMENT=13245 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* Procedure structure for procedure `doLog` */

/*!50003 DROP PROCEDURE IF EXISTS  `doLog` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`topz_hepi_portal`@`121.54.44.89` PROCEDURE `doLog`(in logMsg varchar(512))
BEGIN
  insert into tmplog values(logMsg);
END */$$
DELIMITER ;

/* Procedure structure for procedure `filldates` */

/*!50003 DROP PROCEDURE IF EXISTS  `filldates` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`topz_hepi_portal`@`121.54.44.89` PROCEDURE `filldates`(fiscal INTEGER, dateStart DATE, dateEnd DATE)
BEGIN

DECLARE adate date;
DECLARE weekend boolean;
DECLARE holiday boolean;
    WHILE dateStart <= dateEnd DO
        SET adate = (SELECT calendar_date FROM calendar WHERE calendar_date = dateStart);
        IF adate IS NULL THEN BEGIN
            
            
            
            IF weekday(dateStart) in (5,6) THEN
              select true INTO weekend;
            ELSE
              select false INTO weekend;
            END IF;
            
            
            
            IF dateStart in (
                select date from (select '2014-01-01' date union
                select '2014-01-31' union
                select '2014-02-25' union
                select '2014-04-09' union
                select '2014-04-17' union
                select '2014-04-18' union
                select '2014-05-01' union
                select '2014-06-12' union
                select '2014-07-29' union
                select '2014-08-19' union
                select '2014-08-21' union
                select '2014-08-25' union
                select '2014-11-01' union
                select '2014-11-30' union
                select '2014-12-24' union
                select '2014-12-25' union
                select '2014-12-26' union
                select '2014-12-30' union
                select '2014-12-31') a)  THEN
              select true into holiday;
            ELSE
              select false into holiday;
            END IF;
            
            INSERT INTO calendar (fiscal_year_id, calendar_date, is_holiday, is_weekend) 
              VALUES (fiscal, dateStart, holiday, weekend);
              
        END; END IF;
        SET dateStart = date_add(dateStart, INTERVAL 1 DAY);
    END WHILE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `generate_credit_computation` */

/*!50003 DROP PROCEDURE IF EXISTS  `generate_credit_computation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`topz_hepi_portal`@`121.54.44.89` PROCEDURE `generate_credit_computation`()
    NO SQL
BEGIN

  DECLARE v_fy_id INTEGER;
  DECLARE v_fiscal_date_start DATE;
  DECLARE v_fiscal_date_end DATE;
  DECLARE leave_type_loop_done, all_users_loop_done,noncomputed_all_users_loop_done INT DEFAULT 0;
  
  
  SELECT fy_id,fiscal_date_start,fiscal_date_end INTO v_fy_id,v_fiscal_date_start,v_fiscal_date_end FROM fiscal_year 
  WHERE now() BETWEEN fiscal_date_start AND fiscal_date_end;

  BEGIN
    DECLARE v_type_id INTEGER;
    DECLARE v_start_computation_field VARCHAR(50);
    DECLARE v_credit_computed_flag BOOLEAN;
    DECLARE cur1 CURSOR FOR SELECT type_id, start_computation_field, credit_computed_flag FROM leave_types;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET leave_type_loop_done = 1;
    OPEN cur1;
    delete from tmplog;
    
    
    leave_type_loop:
    LOOP
    FETCH cur1 INTO v_type_id, v_start_computation_field, v_credit_computed_flag;
        
        IF leave_type_loop_done = 1 THEN
          call doLog('LEAVE leave_type_loop');
          SELECT 0 INTO leave_type_loop_done;
          LEAVE leave_type_loop;
        END IF;
              
        call doLog(concat('leave_type_loop: v_type_id: ',v_type_id, ' v_start_computation_field: ',v_start_computation_field,''));
        
        IF v_credit_computed_flag THEN
        
            
            BEGIN
              DECLARE v_credit_total_value      DECIMAL(5,2) default 0;
              DECLARE v_user_id                 INTEGER;
              DECLARE v_hire_date               DATE DEFAULT NULL;
              DECLARE v_computed_value          DECIMAL(5,2) DEFAULT 0;
              DECLARE v_permanency_date         DATE DEFAULT NULL;
              DECLARE cur2 CURSOR FOR SELECT id, hire_date, permanency_date FROM users where statusid in (select status_id from map_leave_type_user_status where type_id = v_type_id);
              DECLARE CONTINUE HANDLER FOR NOT FOUND SET all_users_loop_done = 1;
              OPEN cur2;
                     
              
              all_users_loop:
              LOOP
              FETCH cur2 INTO v_user_id, v_hire_date, v_permanency_date;
                  call doLog(concat('users: ',v_user_id, ' ',v_hire_date,' ', v_permanency_date));
                  
                  call doLog('1');
                  IF all_users_loop_done = 1 THEN
                    call doLog('LEAVE all_users_loop');
                    SELECT 0 INTO all_users_loop_done;
                    LEAVE all_users_loop;
                  END IF;
                  call doLog('2');
                  
                  BEGIN
                    DECLARE out_id                    INTEGER;
                    DECLARE out_scf                   DATE;
                    DECLARE out_hire                  DATE;
                    
                    DECLARE v_total_fy_months         INTEGER default 0;
                    DECLARE v_credit_monthly          DECIMAL(5,2) default 0;
                  
                        SET @id=0;
                        SET @scf=NULL;
                        SET @hire=NULL;
                  
                        
                        call doLog('3');
                        CALL get_users_today_based_on_field(v_user_id, v_start_computation_field, @id, @scf, @hire);
                        call doLog('4');
                        SELECT @id, @scf, @hire INTO out_id, out_scf, out_hire;
                        call doLog(concat('get_users_today_based_on_field: ',out_id, ' ',out_scf,' ', out_hire));
                        IF (out_scf IS NOT NULL) THEN
                        
                            BEGIN
                                DECLARE x                         INT;
                                DECLARE x_total                   INT;
                                DECLARE v_fy_months               INTEGER default 0;
                                DECLARE v_credit_value            FLOAT default 0;
                                DECLARE v_compute_where_to_start  INTEGER default 0;
                                DECLARE v_months_upto_year        INTEGER default 0;
                                
                                
                                IF v_fiscal_date_start >= out_hire THEN
                                
                                  
                                  SELECT  TIMESTAMPDIFF(MONTH,v_fiscal_date_start,curdate())+1            INTO v_fy_months;  
                                  SELECT  0                                                               INTO v_compute_where_to_start;
                                  SELECT  (TIMESTAMPDIFF(MONTH,v_fiscal_date_start,v_fiscal_date_end)+1)  INTO v_total_fy_months;
                                  
                                ELSE
                                
                                  
                                  SELECT  TIMESTAMPDIFF(MONTH,out_hire,curdate())                         INTO v_fy_months ; 
                                  SELECT  TIMESTAMPDIFF(MONTH,v_fiscal_date_start,out_scf)+1              INTO v_compute_where_to_start;
                                  SELECT  (TIMESTAMPDIFF(MONTH,out_hire,v_fiscal_date_end)+1)             INTO v_total_fy_months;
                                  
                                END IF;
                                
                                call doLog(concat('id: ',out_id,' out_scf: ', out_scf, ' months: ', v_fy_months));                  
                                SET x = 1;
                                
                                
                                
                                DELETE FROM leave_transactions 
                                       WHERE userid        = v_user_id
                                       AND fiscal_year_id  = v_fy_id
                                       AND gentag_id       = 1
                                       AND leave_type_id   = v_type_id;
                                                 
                                WHILE x <= v_fy_months
                                DO
                                      
                                      SELECT credit_monthly INTO v_credit_value from leave_type_credit_tenure_master
                                      WHERE TIMESTAMPDIFF(YEAR,  out_scf,  curdate() - INTERVAL (v_fy_months - x ) MONTH)
                                      BETWEEN range_from AND range_to
                                      AND leave_type_id = v_type_id;         
                                      call doLog(concat('id: ',out_id,' month: ',x,' credit_monthly: ', TIMESTAMPDIFF(YEAR,  out_scf,  curdate() - INTERVAL (v_fy_months - x ) MONTH),' v_credit_value ',v_credit_value));
                                      IF (out_scf > curdate()) THEN
                                          SELECT 0 INTO v_credit_value;
                                      END IF;
                                      
                                      IF (v_credit_value > 0) THEN
                                          INSERT INTO leave_transactions (userid, fiscal_year_id, mtd_hire, leave_type_id, value, gentag_id, gendate)
                                          SELECT * FROM (SELECT v_user_id, v_fy_id, x + v_compute_where_to_start, v_type_id, v_credit_value, 1, now() ) AS tmp
                                          ON DUPLICATE KEY UPDATE value=v_credit_value, gendate = now();
                                      END IF;                                      
                                      SET x = x + 1;                                      
                                END WHILE;
                                
                                SET x_total = 1;
                                SET v_credit_total_value = 0;                                
                                WHILE x_total <= v_total_fy_months
                                DO                                
                                    SELECT credit_monthly INTO v_credit_value from leave_type_credit_tenure_master
                                    WHERE TIMESTAMPDIFF(YEAR, out_scf, v_fiscal_date_end - INTERVAL (v_total_fy_months - x_total) MONTH)
                                    BETWEEN range_from AND range_to
                                    AND leave_type_id = v_type_id;
                                    IF (out_scf > curdate()) THEN
                                        SELECT 0 INTO v_credit_value;
                                    END IF;
                                    IF (v_credit_value > 0) THEN
                                        SET v_credit_total_value = v_credit_total_value + v_credit_value;
                                    END IF;
                                    SET x_total = x_total + 1;
                                END WHILE;
                                
                            END;
                        END IF;
                  END;
                  
                  
                  SELECT SUM(value) INTO v_computed_value FROM leave_transactions 
                      WHERE userid = v_user_id AND leave_type_id = v_type_id AND fiscal_year_id  = v_fy_id;
                      
                  IF (v_computed_value IS NOT NULL) THEN
                    INSERT INTO user_leave_credit_summary (userid, leave_type_id, leave_balance, leave_total_balance_fiscal, fyid) 
                        VALUES(v_user_id, v_type_id, v_computed_value, v_credit_total_value, v_fy_id) 
                    ON DUPLICATE KEY UPDATE leave_balance=v_computed_value, leave_total_balance_fiscal=v_credit_total_value;
                  END IF;
                  
              END LOOP all_users_loop;
           END;
        ELSE  

            BEGIN
            DECLARE v_user_id                 INTEGER;
            DECLARE v_hire_date               DATE DEFAULT NULL;
            DECLARE v_computed_value          DECIMAL(5,2) DEFAULT 0;
            DECLARE v_permanency_date         DATE DEFAULT NULL;
            DECLARE v_max_leave_per_year      INTEGER;
            DECLARE v_applied_to              VARCHAR(1);
            DECLARE v_gender                  VARCHAR(1);
            DECLARE cur2 CURSOR FOR SELECT id, hire_date, gender, permanency_date FROM users WHERE statusid in (select status_id from map_leave_type_user_status where type_id = v_type_id);
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET noncomputed_all_users_loop_done = 1;
            OPEN cur2;
                     
              
              noncomputed_all_users_loop:
              LOOP
              FETCH cur2 INTO v_user_id, v_hire_date, v_gender, v_permanency_date;
              
                  CALL doLog(concat('noncomputed_all_users_loop: ',v_user_id, ' ',v_hire_date,' ', v_permanency_date));
                  
                  CALL doLog('noncomputed_all_users_loop: 1');
                  IF noncomputed_all_users_loop_done = 1 THEN
                      CALL doLog('LEAVE noncomputed_all_users_loop_done');
                      SELECT 0 INTO noncomputed_all_users_loop_done;
                      LEAVE noncomputed_all_users_loop;
                  END IF;
                  CALL doLog('noncomputed_all_users_loop: 2');
          
                  SELECT applied_to, max_leave_per_year INTO v_applied_to, v_max_leave_per_year                  
                      FROM leave_types a
                      JOIN leave_type_credit_tenure_master b
                      ON a.type_id = b.leave_type_id
                      WHERE a.type_id = v_type_id;
                 
                  IF v_applied_to = v_gender or v_applied_to = 'A' THEN

                      
                      DELETE FROM leave_transactions 
                      WHERE userid          = v_user_id
                            AND fiscal_year_id  = v_fy_id
                            AND gentag_id       = 1
                            AND leave_type_id   = v_type_id;
                                              
                      INSERT INTO leave_transactions (userid, fiscal_year_id, mtd_hire, leave_type_id, value, gentag_id, gendate)
                      SELECT * FROM (SELECT v_user_id, v_fy_id, 0, v_type_id, v_max_leave_per_year, 1, now() ) AS tmp
                      ON DUPLICATE KEY UPDATE value=v_max_leave_per_year, gendate = now();                      
                      
                      DELETE FROM user_leave_credit_summary 
                      WHERE userid          = v_user_id
                            AND fyid            = v_fy_id
                            AND leave_type_id   = v_type_id;
                 
                      
                      INSERT INTO user_leave_credit_summary (userid, leave_type_id, leave_balance, leave_total_balance_fiscal, fyid) 
                          VALUES(v_user_id, v_type_id, v_max_leave_per_year, v_max_leave_per_year, v_fy_id) 
                      ON DUPLICATE KEY UPDATE leave_balance=v_max_leave_per_year;
                    
                  END IF;                  
              END LOOP noncomputed_all_users_loop; 
            END;
        END IF; 
    END LOOP leave_type_loop; 
  END;
END */$$
DELIMITER ;

/* Procedure structure for procedure `generate_credit_computation_by_user` */

/*!50003 DROP PROCEDURE IF EXISTS  `generate_credit_computation_by_user` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`topz_hepi_portal`@`121.54.44.89` PROCEDURE `generate_credit_computation_by_user`(IN `p_id` INT)
BEGIN

  DECLARE v_fy_id INTEGER;
  DECLARE v_fiscal_date_start DATE;
  DECLARE v_fiscal_date_end DATE;
  DECLARE leave_type_loop_done, all_users_loop_done,noncomputed_all_users_loop_done INT DEFAULT 0;
  DECLARE v_status_id INTEGER;
  
  
  SELECT statusid INTO v_status_id FROM users where id = p_id;
  
  
  SELECT fy_id,fiscal_date_start,fiscal_date_end INTO v_fy_id,v_fiscal_date_start,v_fiscal_date_end FROM fiscal_year 
  WHERE now() BETWEEN fiscal_date_start AND fiscal_date_end;

  BEGIN
    DECLARE v_type_id INTEGER;
    DECLARE v_start_computation_field VARCHAR(50);
    DECLARE v_credit_computed_flag BOOLEAN;
    DECLARE cur1 CURSOR FOR SELECT leave_types.type_id, start_computation_field, credit_computed_flag FROM leave_types join map_leave_type_user_status 
                            on leave_types.type_id = map_leave_type_user_status.type_id
                            where status_id = v_status_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET leave_type_loop_done = 1;
    OPEN cur1;
    
    
    DELETE FROM leave_transactions 
        WHERE userid        = p_id
        AND fiscal_year_id  = v_fy_id
        AND gentag_id       = 1;
        
    DELETE FROM user_leave_credit_summary 
        WHERE userid          = p_id
        AND fyid            = v_fy_id;
                    
                                                 
    delete from tmplog;
    
    leave_type_loop:
    LOOP
    FETCH cur1 INTO v_type_id, v_start_computation_field, v_credit_computed_flag;
        
        IF leave_type_loop_done = 1 THEN
          call doLog('LEAVE leave_type_loop');
          SELECT 0 INTO leave_type_loop_done;
          LEAVE leave_type_loop;
        END IF;
              
        call doLog(concat('leave_type_loop: v_type_id: ',v_type_id, ' v_start_computation_field: ',v_start_computation_field,''));
        
        IF v_credit_computed_flag THEN
        
            BEGIN
              DECLARE v_credit_total_value      DECIMAL(5,2) default 0;
              DECLARE v_user_id 		INTEGER;
              DECLARE v_hire_date 		DATE DEFAULT NULL;
              DECLARE v_computed_value 		DECIMAL(5,2) DEFAULT 0;
              DECLARE v_permanency_date 	DATE DEFAULT NULL;
              DECLARE cur2 CURSOR FOR SELECT id, hire_date, permanency_date FROM users where id = p_id; 
              DECLARE CONTINUE HANDLER FOR NOT FOUND SET all_users_loop_done = 1;
              OPEN cur2;
                     
              
              all_users_loop:
              LOOP
              FETCH cur2 INTO v_user_id, v_hire_date, v_permanency_date;
                  call doLog(concat('users: ',v_user_id, ' ',v_hire_date,' ', v_permanency_date));
                  
                  call doLog('1');
                  IF all_users_loop_done = 1 THEN
                    call doLog('LEAVE all_users_loop');
                    SELECT 0 INTO all_users_loop_done;
                    LEAVE all_users_loop;
                  END IF;
                  call doLog('2');
                  
                  BEGIN
                    DECLARE out_id INTEGER;
                    DECLARE out_scf DATE;
                    DECLARE out_hire DATE;
                    DECLARE v_total_fy_months         INTEGER default 0;
                  
                        SET @id=0;
                        SET @scf=NULL;
                        SET @hire=NULL;
                  
                        
                        call doLog('3');
                        CALL get_users_today_based_on_field(v_user_id, v_start_computation_field, @id, @scf, @hire);
                        call doLog('4');
                        SELECT @id, @scf, @hire INTO out_id, out_scf, out_hire;
                        call doLog(concat('get_users_today_based_on_field: ',out_id, ' ',out_scf,' ', out_hire));
                        IF (out_scf IS NOT NULL) THEN
                        
                            BEGIN
                                DECLARE x                                   INT;
                                DECLARE x_total                             INT;
                                DECLARE v_fy_months                         INTEGER default 0;
                                DECLARE v_credit_value                      FLOAT default 0;
                                DECLARE v_compute_where_to_start            INTEGER default 0;
                                
                                IF v_fiscal_date_start >= out_scf THEN                            
                                  
                                  SELECT  TIMESTAMPDIFF(MONTH,v_fiscal_date_start,curdate())+1 INTO v_fy_months;  
                                  SELECT  0 INTO v_compute_where_to_start;  
                                  SELECT  (TIMESTAMPDIFF(MONTH,v_fiscal_date_start,v_fiscal_date_end)+1)  INTO v_total_fy_months;
                                 
                                ELSE                    
                                  
                                  SELECT  TIMESTAMPDIFF(MONTH,out_scf,curdate()) INTO v_fy_months ; 
                                  SELECT  TIMESTAMPDIFF(MONTH,v_fiscal_date_start,out_scf)+1 INTO v_compute_where_to_start;
                                  SELECT  (TIMESTAMPDIFF(MONTH,out_hire,v_fiscal_date_end)+1)             INTO v_total_fy_months;
                                  
                                END IF;
                                
                                call doLog(concat('out_scf: ', out_scf, ' months: ', v_fy_months));
                                
                               
                                SET x = 1;
                                
                                
                                DELETE FROM leave_transactions 
                                                 WHERE userid        = v_user_id
                                                 AND fiscal_year_id  = v_fy_id
                                                 AND gentag_id       = 1
                                                 AND leave_type_id   = v_type_id;
                                                 
                                WHILE x <= v_fy_months
                                DO
                                      
                                      SELECT credit_monthly INTO v_credit_value from leave_type_credit_tenure_master
                                      WHERE TIMESTAMPDIFF(YEAR,  out_scf,  curdate() - INTERVAL (v_fy_months - x ) MONTH)
                                      BETWEEN range_from AND range_to
                                      AND leave_type_id = v_type_id;         
                                      call doLog(concat('month: ',x,' credit_monthly: ','v_credit_value ',v_credit_value));
                                                  
                                          
                                          IF (v_credit_value > 0) THEN
                                              INSERT INTO leave_transactions (userid, fiscal_year_id, mtd_hire, leave_type_id, value, gentag_id, gendate)
                                              SELECT * FROM (SELECT v_user_id, v_fy_id, x + v_compute_where_to_start, v_type_id, round(v_credit_value,2), 1, now() ) AS tmp
                                              ON DUPLICATE KEY UPDATE value=v_credit_value, gendate = now();
                                          END IF;
                                     
                                      
                                      SET x = x + 1;
                                      
                                END WHILE;
                                
                                SET x_total = 1;
				SET v_credit_total_value = 0;                                
				WHILE x_total <= v_total_fy_months
				DO                                
				    SELECT credit_monthly INTO v_credit_value from leave_type_credit_tenure_master
				    WHERE TIMESTAMPDIFF(YEAR, out_scf, v_fiscal_date_end - INTERVAL (v_total_fy_months - x_total) MONTH)
				    BETWEEN range_from AND range_to
				    AND leave_type_id = v_type_id;
				    IF (out_scf > curdate()) THEN
					SELECT 0 INTO v_credit_value;
				    END IF;
				    IF (v_credit_value > 0) THEN
					SET v_credit_total_value = v_credit_total_value + v_credit_value;
				    END IF;
				    SET x_total = x_total + 1;
                                END WHILE;
                                
                            END;
                        END IF;
                  END;
                  
                  
                  DELETE FROM user_leave_credit_summary 
                      WHERE userid          = v_user_id
                        AND fyid            = v_fy_id
                        AND leave_type_id   = v_type_id;
                  
                  
                  SELECT round(SUM(value),2) INTO v_computed_value FROM leave_transactions 
                      WHERE userid = v_user_id 
                      AND leave_type_id = v_type_id
                      and fiscal_year_id = v_fy_id;
                      
                  IF (v_computed_value IS NOT NULL) THEN
                    INSERT INTO user_leave_credit_summary (userid, leave_type_id, leave_balance, leave_total_balance_fiscal, fyid) 
                        VALUES(v_user_id, v_type_id, v_computed_value, v_credit_total_value, v_fy_id) 
                    ON DUPLICATE KEY UPDATE leave_balance=v_computed_value;
                  END IF;
                  
              END LOOP all_users_loop;
           END;
        ELSE  

            BEGIN
            DECLARE v_user_id                 INTEGER;
            DECLARE v_hire_date               DATE DEFAULT NULL;
            DECLARE v_computed_value          DECIMAL(5,2) DEFAULT 0;
            DECLARE v_permanency_date         DATE DEFAULT NULL;
            DECLARE v_max_leave_per_year      INTEGER;
            DECLARE v_applied_to              VARCHAR(1);
            DECLARE v_gender                  VARCHAR(1);
            DECLARE cur2 CURSOR FOR SELECT id, hire_date, gender, permanency_date FROM users WHERE id = p_id; 
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET noncomputed_all_users_loop_done = 1;
            OPEN cur2;
                     
              
              noncomputed_all_users_loop:
              LOOP
              FETCH cur2 INTO v_user_id, v_hire_date, v_gender, v_permanency_date;
              
                  CALL doLog(concat('noncomputed_all_users_loop: ',v_user_id, ' ',v_hire_date,' ', v_permanency_date));
                  
                  CALL doLog('noncomputed_all_users_loop: 1');
                  IF noncomputed_all_users_loop_done = 1 THEN
                      CALL doLog('LEAVE noncomputed_all_users_loop_done');
                      SELECT 0 INTO noncomputed_all_users_loop_done;
                      LEAVE noncomputed_all_users_loop;
                  END IF;
                  CALL doLog('noncomputed_all_users_loop: 2');
          
                  SELECT applied_to, max_leave_per_year INTO v_applied_to, v_max_leave_per_year                  
                      FROM leave_types a
                      JOIN leave_type_credit_tenure_master b
                      ON a.type_id = b.leave_type_id
                      WHERE a.type_id = v_type_id;
                 
                  IF v_applied_to = v_gender or v_applied_to = 'A' THEN

                      
                      DELETE FROM leave_transactions 
                      WHERE userid          = v_user_id
                        AND fiscal_year_id  = v_fy_id
                        AND gentag_id       = 1
                        AND leave_type_id   = v_type_id;
                                              
                      INSERT INTO leave_transactions (userid, fiscal_year_id, mtd_hire, leave_type_id, value, gentag_id, gendate)
                      SELECT * FROM (SELECT v_user_id, v_fy_id, 0, v_type_id, v_max_leave_per_year, 1, now() ) AS tmp
                      ON DUPLICATE KEY UPDATE value=v_max_leave_per_year, gendate = now();                      
                      
                      DELETE FROM user_leave_credit_summary 
                      WHERE userid          = v_user_id
                        AND fyid            = v_fy_id
                        AND leave_type_id   = v_type_id;
                 
                      
                      INSERT INTO user_leave_credit_summary (userid, leave_type_id, leave_balance, leave_total_balance_fiscal, fyid) 
                          VALUES(v_user_id, v_type_id, v_max_leave_per_year, v_max_leave_per_year, v_fy_id) 
                      ON DUPLICATE KEY UPDATE leave_balance=v_max_leave_per_year;
                    
                  END IF;                  
                  
              END LOOP noncomputed_all_users_loop; 
            END;
          
        END IF; 
        
    END LOOP leave_type_loop;
    

    
  END;
END */$$
DELIMITER ;

/* Procedure structure for procedure `get_users_today_based_on_field` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_users_today_based_on_field` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`topz_hepi_portal`@`121.54.44.89` PROCEDURE `get_users_today_based_on_field`(
  IN  user_id INTEGER,
  IN  column_name VARCHAR(50), 
  OUT p_id INTEGER,
  OUT p_scf VARCHAR(50),
  OUT p_hire DATE)
BEGIN
  DECLARE setting VARCHAR(10);
  
  SET @GetUsers = null;
  SELECT value INTO setting from app_settings where TAG = 'CREDIT_COMPUTATION';
  
  if setting = 'PER_USER' then
      SET @GetUsers = CONCAT('SELECT id,',column_name,',hire_date INTO @id, @scf, @hire FROM users WHERE id=',user_id,'');
  elseif settings = 'PER_DAY' then
      SET @GetUsers = CONCAT('SELECT id,',column_name,',hire_date INTO @id, @scf, @hire FROM users WHERE id=',user_id,' AND DAY(',column_name,') = DAY(NOW())');
  end if;
  
  if user_id = 1 then
    SET @GetUsers = CONCAT('SELECT 1,''2000-01-01'',''2000-01-01'' INTO @id, @scf, @hire FROM users WHERE id=1');
  end if;
  
  call doLog(concat('--get_users_today_based_on_field: start ',column_name, ' ', user_id ));
  
  call doLog(@GetUsers);
  
  PREPARE stmt FROM @GetUsers;
  EXECUTE stmt;
  
  SET p_id = @id;
  SET p_scf = @scf;
  SET p_hire = @hire;
  call doLog(concat('--get_users_today_based_on_field: end ',p_id,' ',p_scf,' ',p_hire));
  
END */$$
DELIMITER ;

/* Procedure structure for procedure `payment_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `payment_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `payment_insert`(
  IN p_reference_id int(11),
  IN p_employee_id int(11),
  IN p_amt_paid decimal(8,2),
  IN p_amt_discount decimal(8,2),
  IN p_amt_boundary decimal(8,2),
  IN p_amt_bond decimal(8,2),
  IN p_amt_sss decimal(8,2),
  IN p_amt_pagibig decimal(8,2),
  IN p_amt_phealth decimal(8,2),
  IN p_amt_short decimal(8,2),
  IN p_amt_damage decimal(8,2),
  IN p_amt_bitin decimal(8,2),
  IN p_amt_tires decimal(8,2),
  IN p_amt_lto decimal(8,2),
  IN p_amt_radio decimal(8,2),
  IN p_amt_fuel decimal(8,2),
  IN p_amt_lpg decimal(8,2),
  IN p_amt_smokeb decimal(8,2),
  IN p_amt_impound decimal(8,2),
  IN p_amt_misc decimal(8,2),
  IN p_remarks varchar(255),
  OUT p_success INTEGER,
  OUT p_message VARCHAR(50)
  )
BEGIN

  INSERT INTO payment_trans (reference_id,employee_id,amt_paid,amt_discount,amt_boundary,amt_bond,amt_sss,amt_pagibig,amt_phealth,amt_short,amt_damage,amt_bitin,amt_tires,amt_lto,amt_radio,amt_fuel,amt_lpg,amt_smokeb,amt_impound,amt_misc,remarks)
  values (p_reference_id,p_employee_id,p_amt_paid,p_amt_discount,p_amt_boundary,p_amt_bond,p_amt_sss,p_amt_pagibig,p_amt_phealth,p_amt_short,p_amt_damage,p_amt_bitin,p_amt_tires,p_amt_lto,p_amt_radio,p_amt_fuel,p_amt_lpg,p_amt_smokeb,p_amt_impound,p_amt_misc,p_remarks);
   
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
