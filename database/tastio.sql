-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2024 at 02:36 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tastio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add recipe', 7, 'add_recipe'),
(26, 'Can change recipe', 7, 'change_recipe'),
(27, 'Can delete recipe', 7, 'delete_recipe'),
(28, 'Can view recipe', 7, 'view_recipe'),
(29, 'Can add like', 8, 'add_like'),
(30, 'Can change like', 8, 'change_like'),
(31, 'Can delete like', 8, 'delete_like'),
(32, 'Can view like', 8, 'view_like'),
(33, 'Can add comment', 9, 'add_comment'),
(34, 'Can change comment', 9, 'change_comment'),
(35, 'Can delete comment', 9, 'delete_comment'),
(36, 'Can view comment', 9, 'view_comment'),
(37, 'Can add saved recipe', 10, 'add_savedrecipe'),
(38, 'Can change saved recipe', 10, 'change_savedrecipe'),
(39, 'Can delete saved recipe', 10, 'delete_savedrecipe'),
(40, 'Can view saved recipe', 10, 'view_savedrecipe');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `first_name` varchar(30) NOT NULL DEFAULT '',
  `last_name` varchar(150) NOT NULL DEFAULT '',
  `is_staff` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `username`, `email`, `date_joined`, `last_login`, `first_name`, `last_name`, `is_staff`, `is_active`, `is_superuser`) VALUES
(17, 'pbkdf2_sha256$870000$0mlPtVH3ab9frXRQvpSIPG$pxU9hIFs+bwvzate5F9f+R51ZxHw7W5pFPa3RDeCIKE=', 'suraa', 'sureshgopi@gmail.com', '2024-11-17 13:32:26.456017', '2024-11-17 13:32:38', 'Suresh', 'Gopi', 0, 1, 0),
(13, 'pbkdf2_sha256$870000$aJ3rBdgtYocDSrVdmjc0fl$b3tkZBriaxBa1a6u2DGcq9ePjDiN6rZalc2tNYrSmQ4=', 'heyabin', 'abin@gmail.com', '2024-11-07 10:21:40.355439', '2024-11-07 10:22:11', 'abin', 'simon', 0, 1, 0),
(7, 'pbkdf2_sha256$870000$I9Z6QFPr2rjgCWeE5iht4X$4f+QKfQ0dimMJ7CRX4nlYb3fSiIAr14QD1plQSJ9XPg=', 'navu', 'nav@gmail.com', '2024-11-01 06:20:15.801454', '2024-12-18 05:30:41', 'Navaneetha', 'R', 0, 1, 0),
(30, 'pbkdf2_sha256$870000$dummy1', 'user01', 'user01@gmail.com', '2024-12-17 10:00:00.000000', '2024-12-17 10:10:00', 'First1', 'Last1', 0, 1, 0),
(31, 'pbkdf2_sha256$870000$dummy2', 'user02', 'user02@gmail.com', '2024-12-17 10:01:00.000000', '2024-12-17 10:11:00', 'First2', 'Last2', 0, 1, 0),
(11, 'pbkdf2_sha256$870000$u4OZPljkJMuMKi8e9oN3fW$M9YzhhDF60EfXuLgpi0rm5hfF/fiRiu5iyYmA+qeqCs=', 'rohith00', 'rohithr01092003@gmail.com', '2024-11-03 13:29:48.937913', '2024-12-18 03:24:31', 'Rohith', 'Rajesh', 0, 1, 0),
(15, 'pbkdf2_sha256$870000$rpgTTbzrp7Grj6ldiyxUqz$0kt5DsWk/zBrWrEULXUV6dccji7trmHxVcdrjnl9o7M=', 'admin', 'admin@tastio.com', '2024-11-12 09:16:07.325709', '2024-12-18 05:34:01', 'admin', 'admin', 0, 1, 0),
(29, 'pbkdf2_sha256$870000$NeCC9e7NN5wdmFJvtMqD2A$82tC3/sZKWRmS8k9tAfQrATos6iqu39xnIJmSl8R+dg=', 'amal', 'amaljoy@gmail.com', '2024-12-17 11:53:29.453132', '2024-12-17 16:14:01', 'amal', 'joy', 0, 1, 0),
(25, 'pbkdf2_sha256$870000$ILlLP7TRby5YPbULlQ0XpO$g9i7oEx9UI8JOMSBTiW8z4BP5/xON4pW0AKvNBogMgg=', 'sachin', 'sachin@gmail.com', '2024-11-19 06:15:10.314159', '2024-11-19 06:15:50', 'sachin', 'j roy', 0, 1, 0),
(28, 'pbkdf2_sha256$870000$E3v8935jMUO5PXf6sYtqmO$GLYHrXDLFsLXosoc+5vB3z7m/PB0XRibFc04+ph37Bk=', 'indrajith', 'utuber053@gmail.com', '2024-12-17 11:33:24.429972', '2024-12-17 11:33:36', 'Indrajith', 'R Nair', 0, 1, 0),
(32, 'pbkdf2_sha256$870000$dummy3', 'user03', 'user03@gmail.com', '2024-12-17 10:02:00.000000', '2024-12-17 10:12:00', 'First3', 'Last3', 0, 1, 0),
(34, 'pbkdf2_sha256$870000$dummy5', 'user05', 'user05@gmail.com', '2024-12-17 10:04:00.000000', '2024-12-17 10:14:00', 'First5', 'Last5', 0, 1, 0),
(35, 'pbkdf2_sha256$870000$dummy6', 'user06', 'user06@gmail.com', '2024-12-17 10:05:00.000000', '2024-12-17 10:15:00', 'First6', 'Last6', 0, 1, 0),
(36, 'pbkdf2_sha256$870000$dummy7', 'user07', 'user07@gmail.com', '2024-12-17 10:06:00.000000', '2024-12-17 10:16:00', 'First7', 'Last7', 0, 1, 0),
(37, 'pbkdf2_sha256$870000$dummy8', 'user08', 'user08@gmail.com', '2024-12-17 10:07:00.000000', '2024-12-17 10:17:00', 'First8', 'Last8', 0, 1, 0),
(38, 'pbkdf2_sha256$870000$dummy9', 'user09', 'user09@gmail.com', '2024-12-17 10:08:00.000000', '2024-12-17 10:18:00', 'First9', 'Last9', 0, 1, 0),
(39, 'pbkdf2_sha256$870000$dummy10', 'user10', 'user10@gmail.com', '2024-12-17 10:09:00.000000', '2024-12-17 10:19:00', 'First10', 'Last10', 0, 1, 0),
(40, 'pbkdf2_sha256$870000$dummy11', 'user11', 'user11@gmail.com', '2024-12-17 10:10:00.000000', '2024-12-17 10:20:00', 'First11', 'Last11', 0, 1, 0),
(41, 'pbkdf2_sha256$870000$dummy12', 'user12', 'user12@gmail.com', '2024-12-17 10:11:00.000000', '2024-12-17 10:21:00', 'First12', 'Last12', 0, 1, 0),
(42, 'pbkdf2_sha256$870000$dummy13', 'user13', 'user13@gmail.com', '2024-12-17 10:12:00.000000', '2024-12-17 10:22:00', 'First13', 'Last13', 0, 1, 0),
(43, 'pbkdf2_sha256$870000$dummy14', 'user14', 'user14@gmail.com', '2024-12-17 10:13:00.000000', '2024-12-17 10:23:00', 'First14', 'Last14', 0, 1, 0),
(44, 'pbkdf2_sha256$870000$dummy15', 'user15', 'user15@gmail.com', '2024-12-17 10:14:00.000000', '2024-12-17 10:24:00', 'First15', 'Last15', 0, 1, 0),
(45, 'pbkdf2_sha256$870000$dummy16', 'user16', 'user16@gmail.com', '2024-12-17 10:15:00.000000', '2024-12-17 10:25:00', 'First16', 'Last16', 0, 1, 0),
(46, 'pbkdf2_sha256$870000$dummy17', 'user17', 'user17@gmail.com', '2024-12-17 10:16:00.000000', '2024-12-17 10:26:00', 'First17', 'Last17', 0, 1, 0),
(47, 'pbkdf2_sha256$870000$dummy18', 'user18', 'user18@gmail.com', '2024-12-17 10:17:00.000000', '2024-12-17 10:27:00', 'First18', 'Last18', 0, 1, 0),
(48, 'pbkdf2_sha256$870000$dummy19', 'user19', 'user19@gmail.com', '2024-12-17 10:18:00.000000', '2024-12-17 10:28:00', 'First19', 'Last19', 0, 1, 0),
(49, 'pbkdf2_sha256$870000$dummy20', 'user20', 'user20@gmail.com', '2024-12-17 10:19:00.000000', '2024-12-17 10:29:00', 'First20', 'Last20', 0, 1, 0),
(50, 'pbkdf2_sha256$870000$dummy21', 'user21', 'user21@gmail.com', '2024-12-17 10:20:00.000000', '2024-12-17 10:30:00', 'First21', 'Last21', 0, 1, 0),
(51, 'pbkdf2_sha256$870000$dummy22', 'user22', 'user22@gmail.com', '2024-12-17 10:21:00.000000', '2024-12-17 10:31:00', 'First22', 'Last22', 0, 1, 0),
(52, 'pbkdf2_sha256$870000$dummy23', 'user23', 'user23@gmail.com', '2024-12-17 10:22:00.000000', '2024-12-17 10:32:00', 'First23', 'Last23', 0, 1, 0),
(53, 'pbkdf2_sha256$870000$dummy24', 'user24', 'user24@gmail.com', '2024-12-17 10:23:00.000000', '2024-12-17 10:33:00', 'First24', 'Last24', 0, 1, 0),
(54, 'pbkdf2_sha256$870000$dummy25', 'user25', 'user25@gmail.com', '2024-12-17 10:24:00.000000', '2024-12-17 10:34:00', 'First25', 'Last25', 0, 1, 0),
(55, 'pbkdf2_sha256$870000$dummy26', 'user26', 'user26@gmail.com', '2024-12-17 10:25:00.000000', '2024-12-17 10:35:00', 'First26', 'Last26', 0, 1, 0),
(56, 'pbkdf2_sha256$870000$dummy27', 'user27', 'user27@gmail.com', '2024-12-17 10:26:00.000000', '2024-12-17 10:36:00', 'First27', 'Last27', 0, 1, 0),
(57, 'pbkdf2_sha256$870000$dummy28', 'user28', 'user28@gmail.com', '2024-12-17 10:27:00.000000', '2024-12-17 10:37:00', 'First28', 'Last28', 0, 1, 0),
(58, 'pbkdf2_sha256$870000$dummy29', 'user29', 'user29@gmail.com', '2024-12-17 10:28:00.000000', '2024-12-17 10:38:00', 'First29', 'Last29', 0, 1, 0),
(59, 'pbkdf2_sha256$870000$dummy30', 'user30', 'user30@gmail.com', '2024-12-17 10:29:00.000000', '2024-12-17 10:39:00', 'First30', 'Last30', 0, 1, 0),
(60, 'pbkdf2_sha256$870000$8x0YVibQ6s5kiXmBcq3Key$zEc5JInXzjUYdFCdMxach/jzoD+7cwR3cF5G91hOo6E=', 'demo', 'demoaccount@gmail.com', '2024-12-18 05:29:03.226668', '2024-12-18 05:29:20', 'demo', 'account', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'MyApp', 'recipe'),
(8, 'MyApp', 'like'),
(9, 'MyApp', 'comment'),
(10, 'MyApp', 'savedrecipe');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-29 09:34:38.373345'),
(2, 'auth', '0001_initial', '2024-10-29 09:34:38.964911'),
(3, 'admin', '0001_initial', '2024-10-29 09:34:39.171735'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-29 09:34:39.184680'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-29 09:34:39.193183'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-29 09:34:39.268373'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-29 09:34:39.302559'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-29 09:34:39.348891'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-29 09:34:39.358012'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-29 09:34:39.394900'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-29 09:34:39.396093'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-29 09:34:39.403956'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-29 09:34:39.437183'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-29 09:34:39.477854'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-29 09:34:39.511906'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-29 09:34:39.521309'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-29 09:34:39.563818'),
(18, 'sessions', '0001_initial', '2024-10-29 09:34:39.602064'),
(19, 'MyApp', '0001_initial', '2024-11-10 05:21:58.895991'),
(20, 'MyApp', '0002_recipe_time', '2024-11-10 20:12:09.694888'),
(21, 'MyApp', '0003_alter_recipe_image', '2024-11-11 02:24:19.939534'),
(22, 'MyApp', '0004_alter_recipe_image', '2024-11-11 06:16:42.359933'),
(23, 'MyApp', '0005_alter_recipe_image', '2024-11-11 06:37:14.670232'),
(24, 'MyApp', '0002_alter_recipe_image', '2024-11-11 06:41:52.400161'),
(25, 'MyApp', '0002_alter_recipe_time', '2024-11-11 11:42:01.335449'),
(26, 'MyApp', '0002_like', '2024-11-15 04:11:15.143608'),
(27, 'MyApp', '0003_comment', '2024-11-15 06:00:52.966722'),
(28, 'MyApp', '0004_savedrecipe', '2024-11-15 08:05:34.735135'),
(29, 'MyApp', '0005_alter_recipe_time', '2024-11-19 04:16:48.685133');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('snwixjizrfdpcdnjbs0m5fypo3vzi5yo', '.eJxVjDsOwyAQBe9CHSFswxpcpk-TC1gLuw7OByIbV1HuHiylSNqZ9-YlRtxKHLeVl3EmMQgQh1_mMdw47YKumC5ZhpzKMnu5T-TXrvKUie_H7_YvEHGN9d27gAbZakvkrdHUceOpcWCMC0FXCOA6mFpQ7I1Caq3ule_ZWAI1qRrdcwkfXGuYcom8nHOcSzW5PMVgQSvXvT-JgESX:1t79g4:IVGdCdtJ1jptcxxGP8beVHPhuXZiB-i0-H3xd3TcfjI', '2024-11-16 08:40:12.263404'),
('4o9qcj6dfjshg6z6y80h8qkwkav9qkgk', '.eJxVjEEOwiAURO_C2hCg8Asu3fcMhA8fqRpISrsy3t026UKTWc17M2_mw7YWv3Va_JzYlY3s8tthiE-qB0iPUO-Nx1bXZUZ-KPyknU8t0et2un8HJfSyr8GBdUNGEjFl0CCysXYki2i0VcLsGVwiQsCkopIIjmR20tk8aIPAPl_dAjea:1tAnMx:nb4vPlZbGmpQ8-VJvL2fXtXphG3f8uEFm7t_P132czU', '2024-11-26 09:39:31.634879'),
('8juw26vn9b10r66yjilm9bx2kpa8vtnz', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tDHb8:YVyb6KsWYBeTq6yl3aRES1hUUPXjE8iojVJOaUN8OqI', '2024-12-03 06:20:26.368969'),
('3ynsf7nth83rnfitnsnh5pfgxvcmp4th', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tBBVk:MCW4UpwMSBQYyZxxtGXLu_EeAPk_5cwQNQUNuS9Q8hM', '2024-11-27 11:26:12.588687'),
('rp6m4p4osxjg4i3awm03d7aa1d3wpjvo', '.eJxVjDsOgzAQRO-yNbIMxj_K9DkD8trrmHxsBKaKcveARIM01bw384VSZxi0kFzrBraVluw-BAMsJU01cQ4NjG6raTzYOIUd6WuHzr8oHyA8XX4U5kuuy4TsUNhJV3Yvgd63070cJLemfa2sMlZEJO5DVL3iURqjySDK3nRc7hE2EKHC0PmuRWWpjba1JopeooLfH5n6QhA:1tAUnL:0U2og7dBXOKvsVEwrjyqcAhjyWGNIOawKtQsNHkNPnw', '2024-11-25 13:49:31.098949'),
('9f8apn8p43tc44w21uzsg68ios19xef7', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tBTI1:CtUPoOKfQKV9mDpNDMoLdUZaxPI6kQFwUFwiSpYDDoI', '2024-11-28 06:25:13.046144'),
('ln5t2lgnxj0tsxpg4c2b9rzm9mv72r2r', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tCy4O:hWxxh6ifwsmkgmSl85cCjxxb_bon2gW06GZKSrTLP6M', '2024-12-02 09:29:20.733813'),
('6vlswkiq8ishie9f0zpgrg7mbqiqpazm', '.eJxVjMsOgjAUBf-la9P0UgLFpXu_oblPQQ0kFFbEfxcSFro9M3M2l3Fd-rwWnfMg7uoA3OV3JOSXjgeRJ46PyfM0LvNA_lD8SYu_T6Lv2-n-HfRY-r2uq9CqJGEOQIBmWhuGtiMCSaYWsbVQJ8OGIMUAWgk3tFfacUzR3OcLNRM5Ew:1tBwSQ:qe84v4fa6k5CNS7Im5l1ua1hvgFiYSvqJpy0nd0hGYI', '2024-11-29 13:33:54.454481'),
('4utwq71hs4mq8reydh53wk79901kclqn', '.eJxVjDEOAiEQRe9CbQgzMCKW9p6BwACyaiBZdivj3XWTLbT9773_Ej6sS_XryLOfkjgLKw6_Wwz8yG0D6R7arUvubZmnKDdF7nTIa0_5edndv4MaRv3WEB2Rs07po8KCuqCDolMxaA1y1kzWsQMDCCoRF7Inm9kAZEYkbcT7A7FLNos:1tCetc:yTl53TAFKvqPz63c_k_W_zNiNGdI5Sayg204UNAMisA', '2024-12-01 13:00:56.499466'),
('y9yodkd0prei861fk80vy1zgxltkbd61', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tM2Lt:X6bDHWLV6LQVXsZOyOMy9MeV_CYq8O_g7bIyja5gpV4', '2024-12-27 09:52:53.044839'),
('ai9z8jyisutrtxm4wn6ni2fh26afo69b', '.eJxVjDsOwjAQBe_iGlk2_i4lPWew1rsODiBHipMKcXcSKQW0b2beWyRcl5rWXuY0srgI7cTpd8xIz9J2wg9s90nS1JZ5zHJX5EG7vE1cXtfD_Tuo2OtWuxKUASajvYswUClDQAgKtWFnc9DGK-CgVQSfwWVH54i0VZTZ2hjF5wv76DfC:1tNmh6:T6hLi_4o_Xm9qCfAXurRJwHuFMOyOWhtt4gFhdU1K9E', '2025-01-01 05:34:00.549104');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_comment`
--

DROP TABLE IF EXISTS `myapp_comment`;
CREATE TABLE IF NOT EXISTS `myapp_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `recipe_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MyApp_comment_recipe_id_31f68507` (`recipe_id`),
  KEY `MyApp_comment_user_id_9066eeb5` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myapp_comment`
--

INSERT INTO `myapp_comment` (`id`, `text`, `created_at`, `recipe_id`, `user_id`) VALUES
(2, 'Second Comment! Hell yeah!\r\n', '2024-11-15 06:02:45.741620', 26, 11),
(3, 'third comment! woohoo', '2024-11-15 06:02:56.568533', 26, 11),
(4, 'fourth comment, damn', '2024-11-15 06:03:10.842038', 26, 11),
(5, 'fifth comment, hello?', '2024-11-15 06:03:20.621786', 26, 11),
(8, 'hello', '2024-11-19 06:17:11.554365', 26, 25),
(11, 'hello', '2024-12-18 05:29:42.042797', 26, 60);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_like`
--

DROP TABLE IF EXISTS `myapp_like`;
CREATE TABLE IF NOT EXISTS `myapp_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `liked_at` datetime(6) NOT NULL,
  `recipe_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MyApp_like_user_id_recipe_id_2fec6f19_uniq` (`user_id`,`recipe_id`),
  KEY `MyApp_like_recipe_id_f5d3d89e` (`recipe_id`),
  KEY `MyApp_like_user_id_041f558b` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myapp_like`
--

INSERT INTO `myapp_like` (`id`, `liked_at`, `recipe_id`, `user_id`) VALUES
(8, '2024-11-15 04:37:39.807533', 28, 7),
(7, '2024-11-15 04:37:37.462990', 27, 7),
(6, '2024-11-15 04:37:24.205259', 26, 7),
(15, '2024-12-13 08:42:14.497983', 26, 11),
(10, '2024-11-15 05:10:16.296971', 27, 11),
(11, '2024-11-15 05:22:08.788365', 28, 11),
(13, '2024-11-19 06:17:19.337568', 26, 25),
(16, '2024-12-13 08:42:18.825413', 30, 11),
(17, '2024-12-13 08:42:22.217812', 32, 11),
(18, '2024-12-13 08:42:25.000672', 31, 11),
(19, '2024-12-13 08:42:28.537031', 33, 11),
(24, '2024-12-17 11:36:19.907839', 26, 28),
(21, '2024-12-17 11:33:55.518670', 30, 28),
(25, '2024-12-17 11:36:26.408272', 31, 28),
(26, '2024-12-17 11:36:28.313195', 32, 28),
(27, '2024-12-17 11:36:30.216227', 27, 28),
(28, '2024-12-17 11:36:32.193837', 28, 28),
(29, '2024-12-17 11:36:34.137186', 33, 28),
(31, '2024-12-17 11:54:09.516189', 26, 29),
(32, '2024-12-17 11:54:12.084578', 30, 29),
(33, '2024-12-17 11:54:13.940221', 27, 29),
(34, '2024-12-17 11:54:15.505908', 32, 29),
(35, '2024-12-17 11:54:17.387446', 31, 29),
(36, '2024-12-17 11:54:19.284513', 28, 29),
(37, '2024-12-17 11:54:21.814837', 54, 29),
(38, '2024-12-17 11:54:23.501434', 53, 29),
(39, '2024-12-17 11:54:25.353754', 33, 29),
(40, '2024-12-17 11:54:27.300955', 55, 29),
(41, '2024-12-17 12:01:50.546301', 53, 7),
(42, '2024-12-17 12:01:53.081478', 54, 7),
(43, '2024-12-17 12:01:55.339532', 55, 7),
(44, '2024-12-17 16:18:26.135381', 57, 7);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_recipe`
--

DROP TABLE IF EXISTS `myapp_recipe`;
CREATE TABLE IF NOT EXISTS `myapp_recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ingredients` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myapp_recipe`
--

INSERT INTO `myapp_recipe` (`id`, `user_id`, `recipe_name`, `category`, `ingredients`, `description`, `image`, `created_at`, `time`) VALUES
(26, 7, 'Squid Masala ', 'Indian', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Coconut Oil - ¼ cup</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Garlic - 1 tblsp chopped finely</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Ginger - 1 tblsp chopped finely</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Curry leaves a handful</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Green chillies - 2 chopped finely</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Onion - 1 large chopped finely</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Tomato - 2 chopped finely</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Chilli Powder - 2 tsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Kashmiri chilli powder - 1 tblsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Coriander powder - 1 tblps</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Cumin Powder - 2 tsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Turmeric powder - 1 tsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Garam masala powder - 1 tsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Black Pepper powder - 1 tsp</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Salt to taste</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span> Squid - 500 grams</li></ol>', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Heat oil in a pan, add in ginger, garlic, onion, curry leaves and chillies. Saute for 2 to 3mins.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add tomatoes and cook till mushy.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add in spice powders and salt. Mix well.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add squid and mix well. Cover and cook for 5 to 6 mins.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now open and lid and cook till it dries a little into a thick masala.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now add in pepper powder and mix well.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Serve</li></ol><h3>STEP BY STEP WITH PICTURES</h3><p class=\"ql-align-center\">1)Heat coconut oil in a pan</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/4-7.jpg\" alt=\"earthern ware pot\" height=\"411\" width=\"731\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">2)Add in chopped garlic, ginger, onions, curry leaves and green chillies</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/5-7.jpg\" alt=\"Squid Masala Recipe\" height=\"486\" width=\"865\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">3)Saute for 2 mins or so</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/6-8.jpg\" alt=\"Squid Masala Recipe\" height=\"395\" width=\"703\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">4)Add in tomatoes</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/7-7.jpg\" alt=\"Squid Masala Recipe\" height=\"481\" width=\"856\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">5)Mix well</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/8-5.jpg\" alt=\"Squid Masala Recipe\" height=\"424\" width=\"754\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">6)Add in turmeric powder</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/9-5.jpg\" alt=\"Squid Masala Recipe\" height=\"412\" width=\"733\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">7)Add in chilli powder and mix well</p><p class=\"ql-align-center\">8)Add in coriander powder, cumin powder and garam masala powder</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/11-6.jpg\" alt=\"kanava masala\" height=\"460\" width=\"819\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">9)Add in salt</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/12-6.jpg\" alt=\"kanava masala\" height=\"485\" width=\"863\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">10)Add in squid</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/13-6.jpg\" alt=\"squid\" height=\"481\" width=\"856\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">11)Mix well</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/14-5.jpg\" alt=\"kanava fish\" height=\"440\" width=\"783\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">12)Cover and cook till squid is cooked completely</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/15-5.jpg\" alt=\"kanava masala\" height=\"426\" width=\"758\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">13)Add in black pepper powder</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/16-5.jpg\" alt=\"kanava masala\" height=\"479\" width=\"852\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">14)Done</p><p class=\"ql-align-center\"><img src=\"https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/20-5.jpg\" alt=\"kanava masala\" height=\"434\" width=\"772\"></p><p class=\"ql-align-center\"></p><p class=\"ql-align-center\">15)Serve!</p><p class=\"ql-align-center\"><br></p><p><br></p>', '/squid.JPG', '2024-11-11 22:16:33', '35 Minutes'),
(30, 7, 'Chicken Biryani', 'Indian', '    Basmati Rice -Long-grain basmati rice is traditionally used to make biryani. I prefer the Kohinoor brand extra-long grain basmati rice, which is easily available at Indian grocery stores.     Chicken - Traditionally, whole bone-in chicken pieces are used to make biryani. Here in the US, it can be tough to find a whole chicken that\'s properly cut for biryani. As a handy shortcut, I like to use a mix of bone-in drumsticks and boneless chicken thighs. This way, you still get those authentic flavors and tender, juicy meat!     Whole Spices - shahi jeera, bay leaves, star anise, cloves, and green cardamom pods. A classic combination of spices to infuse the rice with rich flavor. Read more about each of these spices in my Essential Indian Spice Guide.     Ground Spices - turmeric, Kashmiri red chili powder, Biryani Masala. Garam masala can be used in a pinch in place of Biryani Masala.     Yellow Onion - thinly sliced yellow onion caramelized in ghee makes for the signature Birista onions that are a must in the marinade as well as for topping. With a rich golden color, they add a sweet, caramelized flavor to complement all the spices. Although these onions are traditionally deep fried I also have an air fryer fried onions recipe.     Ghee - homemade ghee helps bring authentic taste and aromas to Biryani and I highly recommend using ghee instead of oil when making Biryani.     Herbs - fresh mint and cilantro add a perfect combination of herbs for cool, citrusy flavors and a pop of color. ', '<h3>Marinate the Chicken</h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Make the marinade by mixing yogurt, ginger, garlic, turmeric, red chili powder, garam masala, salt, mint leaves, and lemon juice.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add chicken and coat evenly with the marinade. Keep in the refrigerator for at least 30 minutes. You can marinate the chicken overnight too.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>While the chicken is marinating, rinse and drain the rice 2 to 3 times, then soak in water for 20 minutes.</li></ol><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/marinade-ingredients.jpg\" alt=\"marinade ingredients in a bowl\" height=\"1581\" width=\"1581\"></p><p><br></p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/marinated-chicken.jpg\" alt=\"marinated chicken in a bowl\" height=\"1697\" width=\"1697\"></p><p><br></p><p><strong>Tip: </strong>Chicken can be marinated for up to 24 hours in the fridge. The longer you marinate the better the flavors will be</p><h3>Crispy Onions AKA Birira</h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>While the rice is soaking, add ghee to a heavy-bottomed pan and add onions.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>On medium heat, fry the onions stirring frequently until they start to turn golden brown - about 15 to 20 minutes. Remove the fried onions from the pan, leaving the excess ghee behind as we will use this pan to cook the chicken.</li></ol><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/onions-in-ghee.jpg\" alt=\"yellow onions in a kadai \" height=\"1980\" width=\"1980\"></p><p><br></p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/fried-onions.jpg\" alt=\"fried onions in a pan \" height=\"1980\" width=\"1980\"></p><p><br></p><p><strong>Tip:</strong> Save time by frying the onions a day ahead! For a healthier option with less ghee, try my Airfryer crispy onions recipe.</p><h2>Parboil the rice</h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In a medium pot add 8 cups of water. Add cumin seeds, bay leaves, star anise, cardamom, cloves, and salt to the rice and bring the to a boil on high heat.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Drain the soaked rice and add it to the boiling water. Bring the rice to a full boil on high heat. Lower the heat to medium and cook uncovered for 5 to 6 minutes or until the rice is about 90% cooked. Drain the rice promptly and reserve.</li></ol><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/water-with-spices-1.jpg\" alt=\"pot with water and whole spices \" height=\"1980\" width=\"1980\"></p><p><br></p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/partially-cooked-rice-1.jpg\" alt=\"partially cooked rice in a pot \" height=\"1980\" width=\"1980\"></p><p><br></p><p>Tip: Make sure to use aged extra long grain basmati rice for most authentic flavor and texture.</p><h2>Cook the chicken and layer the rice</h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To the pan with the remaining ghee, add the marinated chicken. Cook on medium heat for 8 to 10 minutes, turning halfway through.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Then, gently layer the partially cooked rice over the chicken</li></ol><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/chicken-in-a-pan.jpg\" alt=\"sauteeing chicken in a pot \" height=\"1980\" width=\"1980\"></p><p><br></p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/basmati-rice-layer.jpg\" alt=\"basmati rice layered in a pot \" height=\"1980\" width=\"1980\"></p><p><br></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Top with caramelized onions and saffron-infused milk.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cover the pot and seal it with aluminum foil, then place some weight on top of the lid. Cook on low heat for 20 minutes, this is the steam or \"Dum\" cooking step. Turn the heat off and wait another 10 minutes before opening the pot.</li></ol><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/biryani-with-caramalized-onions.jpg\" alt=\"biryani rice with fried onions and saffron \" height=\"1879\" width=\"1879\"></p><p><br></p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/sealed-biryani-pot.jpg\" alt=\"pot sealed with aluminum foil \" height=\"1980\" width=\"1980\"></p><p><br></p><p><strong>Tip</strong>: Before serving allow the biryani to sit uncovered for 5 minutes. Gently fluff the rice using a fork or a silicone spatula. This will help the delicate rice grains to firm up a bit preventing them from breaking.</p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/cilantro-garnish.jpg\" alt=\"biryani in a pot garnished with fried onions, saffron and cilantro. \" height=\"1980\" width=\"1980\"></p><h2>Serving</h2><p>Serve Biryani hot with some yogurt, lemon wedges, and a cooling <a href=\"https://ministryofcurry.com/cucumber-raita/\" rel=\"noopener noreferrer\" target=\"_blank\">cucumber raita</a> or <a href=\"https://ministryofcurry.com/roasted-beetroot-and-cucumber-salad/\" rel=\"noopener noreferrer\" target=\"_blank\">beet raita</a>. Pair it with <a href=\"https://ministryofcurry.com/mango-lassi/\" rel=\"noopener noreferrer\" target=\"_blank\">Mango Lassi</a> or <a href=\"https://ministryofcurry.com/rose-lassi/\" rel=\"noopener noreferrer\" target=\"_blank\">Rose Lassi</a> for a satisfying meal. Want to know my favorite dessert to pair with Biryani - its hands down the <a href=\"https://ministryofcurry.com/gajar-ka-halwa/\" rel=\"noopener noreferrer\" target=\"_blank\">Gajar Halwa</a> or <a href=\"https://ministryofcurry.com/rice-pudding-instant-pot/\" rel=\"noopener noreferrer\" target=\"_blank\">Rice Kheer</a>.</p><p><img src=\"https://ministryofcurry.com/wp-content/uploads/2024/06/chicken-biryani-7.jpg\" alt=\"chicken biryani served with raita and lemon wedge. \" height=\"1800\" width=\"1200\"></p><h2>Storing</h2><p>Cool down leftover Biryani completely and refrigerate in an air-tight container for 2 to 3 days. You can also freeze biryani in freezer-proof containers for up to 6 months. To reheat thaw the biryani overnight in the refrigerator and then microwave or steam in the Instant Pot using pot in pot method.</p>', '/chicken-biryani.jpg', '2024-11-18 22:38:16', '1 Hour 30 Minutes'),
(27, 7, 'Homemade Pasta', 'Italian', '<h3>Equipment</h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><a href=\"https://amzn.to/46vuoHQ\" rel=\"noopener noreferrer\" target=\"_blank\">KitchenAid Mixer</a> </li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><a href=\"https://amzn.to/3ow2mWB\" rel=\"noopener noreferrer\" target=\"_blank\">Pasta Attachment</a> </li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><a href=\"https://www.amazon.com/Nordic-Ware-Natural-Aluminum-Commercial/dp/B0049C2S32?&amp;linkCode=ll1&amp;tag=loveandlemobl-at-rc-eqli-20&amp;linkId=50f303fd14dda455bcb432d3a7c02beb&amp;language=en_US&amp;ref_=as_li_ss_tl\" rel=\"noopener noreferrer\" target=\"_blank\">Baking Sheets</a> </li></ol><p><br></p><h3>Ingredients</h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>2 cups <a href=\"https://goto.target.com/c/2773249/81938/2092?subid1=5c62da580a04d93936608c49&amp;subid2=https%3A%2F%2Fwww.loveandlemons.com%2Fhomemade-pasta-recipe%2F&amp;sharedid=Love+and+Lemons&amp;subid3=https%3A%2F%2Fwww.target.com%2Fp%2Fking-arthur-flour-unbleached-all-purpose-flour-5lbs%2F-%2FA-14777928%3Faflt%3Dcse%257Cplt%257Clm&amp;u=https%3A%2F%2Fwww.target.com%2Fp%2Fking-arthur-flour-unbleached-all-purpose-flour-5lbs%2F-%2FA-14777928%3Faflt%3Dcse%257Cplt%257Clm\" rel=\"noopener noreferrer\" target=\"_blank\">all-purpose flour</a>, <a href=\"https://www.loveandlemons.com/how-to-measure-flour/\" rel=\"noopener noreferrer\" target=\"_blank\">spooned &amp; leveled</a></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>3 <a href=\"https://goto.target.com/c/2773249/81938/2092?subid1=5c62da580a04d93936608c49&amp;subid2=https%3A%2F%2Fwww.loveandlemons.com%2Fhomemade-pasta-recipe%2F&amp;sharedid=Love+and+Lemons&amp;subid3=https%3A%2F%2Fwww.target.com%2Fp%2Fvital-farms-pasture-raised-grade-a-large-eggs-12ct%2F-%2FA-18783617%3Faflt%3Dcse%257Cplt%257Clm&amp;u=https%3A%2F%2Fwww.target.com%2Fp%2Fvital-farms-pasture-raised-grade-a-large-eggs-12ct%2F-%2FA-18783617%3Faflt%3Dcse%257Cplt%257Clm\" rel=\"noopener noreferrer\" target=\"_blank\">large eggs</a></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>½ teaspoon <a href=\"https://www.amazon.com/365-Everyday-Value-Salt-Fine/dp/B074J7X1DW?&amp;linkCode=sl1&amp;tag=loveandlemobl-at-rc-ingli-20&amp;linkId=8f6a13f00ff77c4b50139a7ddcd95527&amp;language=en_US&amp;ref_=as_li_ss_tl\" rel=\"noopener noreferrer\" target=\"_blank\">sea salt</a></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>½ tablespoon <a href=\"https://goto.target.com/c/2773249/81938/2092?subid1=5c62da580a04d93936608c49&amp;subid2=https%3A%2F%2Fwww.loveandlemons.com%2Fhomemade-pasta-recipe%2F&amp;sharedid=Love+and+Lemons&amp;subid3=https%3A%2F%2Fwww.target.com%2Fp%2Fgraza-sizzle-extra-virgin-olive-oil-for-cooking-750ml%2F-%2FA-88686389%3Faflt%3Dcse%257Cplt%257Clm&amp;u=https%3A%2F%2Fwww.target.com%2Fp%2Fgraza-sizzle-extra-virgin-olive-oil-for-cooking-750ml%2F-%2FA-88686389%3Faflt%3Dcse%257Cplt%257Clm\" rel=\"noopener noreferrer\" target=\"_blank\">extra-virgin olive oil</a></li></ol><h4><br></h4>', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Place the flour on a clean work surface and make a nest. Add the eggs, olive oil, and salt to the center and use a fork to gently break up the eggs, keeping the flour walls intact as best as you can. Use your hands to gently bring the flour inward to incorporate. Continue working the dough with your hands to bring it together into a shaggy ball. </li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Knead the dough for 8 to 10 minutes. At the beginning, the dough should feel pretty dry, but stick with it! It might not feel like it’s going to come together, but after 8-10 minutes of kneading, it should become cohesive and smooth. If the dough still seems too dry, sprinkle your fingers with a tiny bit of water to incorporate. If it’s too sticky, dust more flour onto your work surface. Shape the dough into a ball, wrap in plastic wrap, and let rest at room temperature for 30 minutes. </li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Dust 2 large <a href=\"https://amzn.to/3HI3yD9\" rel=\"noopener noreferrer\" target=\"_blank\">baking sheets</a> with flour and set aside.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Slice the dough into four pieces. Gently flatten one into an oval disk. Run the dough through the <a href=\"https://amzn.to/3j3Ybjy\" rel=\"noopener noreferrer\" target=\"_blank\">Pasta Roller Attachment</a> or <a href=\"https://amzn.to/3Dt1fkK\" rel=\"noopener noreferrer\" target=\"_blank\">a pasta maker</a> three times on level 1 (the widest setting).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Set the dough piece onto a countertop or work surface. Fold both short ends in to meet in the center, then fold the dough in half to form a rectangle (see photo above).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Run the dough through the pasta roller three times on level 2, three times on level 3, and one time each on levels 4, 5, and 6.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Lay half of the pasta sheet onto the floured baking sheet and sprinkle with flour before folding the other half on top. Sprinkle more flour on top of the second half. Every side should be floured so that your final pasta noodles won\'t stick together.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Repeat with remaining dough.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Run the pasta sheets through the <a href=\"https://amzn.to/3j3Ybjy\" rel=\"noopener noreferrer\" target=\"_blank\">Pasta Cutter Attachment</a> (pictured is the fettuccine cutter). Repeat with remaining dough. Cook the pasta in a pot of salted boiling water for 1 to 2 minutes.</li></ol><h3>Notes</h3><p>Fresh pasta can be stored in the fridge, wrapped in plastic wrap, for up to 2 days.&nbsp;</p>', '/pasta_qeOyrSd.jpg', '2024-11-11 22:32:35', '1 Hour 2 Minutes'),
(28, 7, 'Classic Indian Dosa', 'Indian', '<p>½ cup idli rice or parboiled rice or regular rice – 100 grams</p><p>½ cup regular rice – 100 grams</p><p>¼ cup urad dal – 50 grams (husked whole or split black gram)</p><p>⅛ teaspoon fenugreek seeds or 2 pinches (methi seeds or methi dana)</p><p>2 tablespoons thick poha (flattened rice)</p><p>1.5 cups water – for soaking both rice and lentils</p><p>¾ cup water – for grinding, do add water as required</p><p>½ teaspoon rock salt edible and food grade or non-iodized salt or sea salt crystals or Himalayan pink salt</p><p>oil as required</p>', '<h3><b>Soaking Lentils and Rice</b></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In a bowl take the idli rice or parboiled rice along with the regular white rice. Instead of adding regular rice, you can also make the dosa with a total of 1 cup idli rice as I have shown in the video. The video has the recipe ingredients doubled in proportion.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To the same bowl, add urad dal and fenugreek seeds.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Rinse the rice, lentils and methi seeds together a couple of times and keep aside.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In a separate bowl, take the flattened rice.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Rinse it once or twice in water and then add rinsed flattened rice to the bowl containing the rinsed rice+lentils+methi seeds.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Pour 1.5 cups water. Mix. Cover with a lid and soak everything for 5 to 6 hours.</li></ol><p><br></p><h3><b>Making dosa batter</b></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Drain all the water and add the soaked ingredients in a wet grinder jar.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add ⅔ to ¾ cup water and grind till you get a fine grainy consistency of rice in the batter. A smooth consistency of batter is also fine.&nbsp;</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>If the mixer gets heated up, then stop and wait for some minutes. When the mixer cools down, grind again. Depending on the jar capacity, you can grind everything once or in two batches. I ground in two batches and added overall ¾ cup water.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now take the batter in a large bowl or pan.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add ½ tsp rock salt. Mix very well. Cover and allow to ferment for 8 to 9 hours or more. Time of fermentation will vary depending on the temperature conditions.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>A proper fermentation will double or triple up the volume of the batter and you will see tiny air pockets in the batter with a light sour aroma.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now lightly stir the batter, before you begin to make dosa.</li></ol><p><br></p><h3><b>Making Dosa</b></h3><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Heat a cast iron pan. When the pan becomes hot, spread ¼ to ½ teaspoon oil all over the pan. Do keep the heat on low to low-medium heat, so that you are easily able to spread the batter. If the pan base is very thick, then keep the flame to medium.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Do not spread oil if you are using a non stick pan, as you won’t be able to spread the batter.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now take a ladle full of the batter. Pour the dosa batter and gently spread the batter starting from the center and moving outwards.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cover it with a lid and cook the dosa on a low to medium heat. Do regulate the flame as per the pan size and thickness.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>When you see the batter on the top has cooked well and the bottom has become crisp and golden, then sprinkle ¼ to ½ teaspoon oil on the edges and center.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>With the spoon spread the oil on the dosa.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cook till the base is nicely golden and crisp. The base will leave the pan and the sides will also get separated when it gets cooked.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Fold and serve sada dosa hot. Make all dosai this way.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Serve these crisp plain dosa with sambar or potato masala or coconut chutney.</li></ol><p><br></p><h3><strong>Recipe Notes</strong></h3><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Scaling:</strong> You can easily halve, double or triple this sada dosa recipe. If doubling or tripling the dosa recipe, then soak urad dal + methi seeds in a separate bowl. Grind urad dal and methi seeds separately. Grind rice separately. Then mix both the batters in a large bowl or pan. Grind soaked rice in two to three batches.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Rice:</strong> Instead of adding regular rice, you can also make the dosa with total of 1 cup idli rice as I have shown in the video. The video has the recipe ingredients doubled in proportion.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Temperature:</strong>&nbsp;Do take into account the temperature of the city&nbsp;in which&nbsp;you live, as temperature is one of the important factors for proper fermentation.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Urad Dal:</strong>&nbsp;Make sure that the urad dal you use is fresh and within its expiry date.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Salt:</strong> Use non-iodized salt. I use rock salt. You can even use pink salt.</li></ol><p><br></p><h3><strong>Tips for dosa batter fermentation in cooler climates:</strong></h3><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Keep the batter bowl in a warm place – e.g near a heater or in a warm place in your kitchen.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>You can also preheat your oven at a low temperature (80 to 90 degrees Celsius) for about 10 minutes. Then switch off the oven and keep the batter bowl inside – I use this method when it becomes very cold outside.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Alternatively, if your oven has lights, then keep the lights on and place the batter inside.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Addition a bit of sugar does help in fermenting the batter – I use this method at times in the winters here.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Skip adding salt to the batter as salt retards the fermentation process. Sometimes I add both salt and sugar together. I always use rock salt in the idli batter.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Keep the batter for a longer time to ferment, like 14 to 24 hours.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Do remember that even if you do not see the batter doubled or tripled, you should see tiny bubbles in the batter. You should also get the typical faint sour fermented aroma from&nbsp;the batter.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Adding ¼ to ½ tsp of instant yeast (dissolved in 2 to 3 tsp water) 30 to 45 minutes before you make the dosa also helps. But do this method when the batter has not fermented well. The downside of this method is that you have to use all the batter at once. If you refrigerate than the batter gets too yeasty.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>You can also add ¼ to ½ baking soda and then ferment the batter in cold seasons.</li></ol><p><br></p><h3><strong>Making dosa batter in a wet-grinder:</strong></h3><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Double the proportion of the dosa batter recipe if making in a wet grinder. So for ½ cup of urad dal, add 1.5 cups water. For 2 cups of rice, add 2.5 cups water. Add the water in parts when grinding urad dal and fenugreek seeds, so that the batter becomes nicely fluffy and increases in volume.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>After you have ground the urad dal and fenugreek seeds, you don’t need to remove it. Just let the batter remain in the wet grinder. Add the rice and continue to grind.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Then remove the batter in a large bowl. Mix salt. Cover the bowl and let the batter ferment.&nbsp;</li></ol><p><br></p><p><br></p><p><br></p><p><br></p>', '/dosa_wE3vVDW.jpg', '2024-11-11 22:44:36', '30 Minutes ( 9h Prep Time )'),
(31, 7, 'Chicken Mandi ', 'Chinese', '     Rice; I use long grain basmati for the best results     Onions; definitely use white onions and slice them evenly. These are key!     Chicken; I like to use bone-in full chicken legs. Using bone in chicken keeps it really tender and juicy. I don’t recommend you use breast for this recipe.     The Hawaij spice blend     Bay leaves; these are optional but add a lovely aroma     Dry lime; find these at your local middle eastern store. If you really can’t find them you can skip them but they add a deep earthy citrusy flavour that can’t be replicated with any other ingredient     Saffron; just a small amount will go a long way. They add to the yellow pigment and also give a beautiful taste and aroma. But saffron is expensive so if you don’t have it feel free to skip it.     Almonds and Raisins; for that final touch in the form of garnish!', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Step 1, make the Hawaij spice blend so the chicken can have time to marinate. Place all the spices (except for the turmeric and bay leaves) into a pan and toast them for 2-3 minutes on medium high until you start to smell them. Keep an eye out because they burn quickly (I burned my first batch sadly).</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-6-1024x1536.jpg\" alt=\"Spices for chicken in brown bowl, including a cinnamon stick, cloves, coriander, black pepper, cardamom and cumin.\" height=\"1536\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Place the spices in a spice or coffee grinder and grind until a fine powder forms. You’re done!</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/1-1024x711.jpg\" alt=\"Before and after of spices blended in coffee grinder.\" height=\"1000\" width=\"1440\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now you can remove two teaspoons of the spice mix and set aside for the rice, then use the remaining for the chicken. Mix it with the turmeric and salt, then add the olive oil to create a paste. Slather it all over the chicken and marinate overnight for maximum flavour. But a few hours is fine too.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/2-2-1024x711.jpg\" alt=\"Two steps of marinating chicken, first step mixing spices in white bowl with measuring spoon, then marinating chicken on white platter.\" height=\"711\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>When you are ready to start making the dish, thinly slice the onions ensuring you slice as evenly as possible. You can use a mandolin if you have one. Even sizes help them fry evenly.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In a pot, add the oil and then drop in the onions while oil is still cold. Fry for 15-20 minutes, stirring them around every few minutes.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Since we are not deep frying, they won’t get extremely crunchy, but that’s totally fine. This is the simplest method I found that allows you to use all the onion infused oil in your rice.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-5-1024x1536.jpg\" alt=\"Sliced onions in stock pot.\" height=\"1536\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Once the onions are golden brown, remove them with a slotted spoon and drain on paper towels, but leave approximately 3 tablespoons in the pot (to be used for the rice). Be sure to spread them out in one layer to give them a chance to crisp up.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-9-1024x1536.jpg\" alt=\"Fried onions layered on towel on top of black ceramic plate.\" height=\"1536\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now its time to make the rice broth. Keep frying up the onions in the oil, in the same pot, and add the hawaij spice blend, and the dried lime. Before you add the dried lime, pierce them a couple of times with a knife (very carefully).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Once the spices are toasted, add the bay leaves and the water and bring to a boil</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/3-1024x711.jpg\" alt=\"Two steps of chicken process including spice mix in stock pot and chicken placed on steamer rack.\" height=\"711\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To steam the chicken, place a steaming rack in the pot (or a small stainless steel wire rack if you don’t have a steamer rack), place the chicken on the rack, then cover and steam for 50 minutes.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-14-1024x1536.jpg\" alt=\"Spiced chicken quarters on grill rack.\" height=\"1536\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Once the chicken is really tender, remove it from the pot and place it on a baking sheet to broil for 10 minutes. This steps gives you a deeply golden crust on the chicken.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>While doing that, bloom the saffron by grinding them in a mortar and pestle then allowing to bloom in a bowl with 2 tablespoons of hot water. You will end up with a vibrant yellow liquid.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Now its time to strain the broth that was used to steam the chicken. Reserve the liquid and measure it out to exactly 1.5 cups of liquid to 1 cup of rice. Add water to the broth if needed.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/4-1-1024x711.jpg\" alt=\"Yellow rice in stock pot and then served on a white platter.\" height=\"711\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add the strained broth back into the same pot, then add the turmeric, the bloomed saffron and the salt.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Next add the washed and soaked rice (soaking for only 10 minutes), give it a good mix, then bring the pot to a boil</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Once bubbling for a few minutes and most of the liquid has evaporated, cover with a paper towel and the pot lid to keep it fresh for longer</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cook the rice for 20 minutes undisturbed. Then turn the heat off, fluff with a fork, then cover and let stand for another 10 minutes.</li></ol><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-17-1024x1536.jpg\" alt=\"Roasted chicken layered in green ceramic bowl with serving spoon.\" height=\"1536\" width=\"1024\"></p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>While the rice cooks, quickly fry the almonds and the raisins in a bit of olive oil to toast them.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Remove the beautifully golden chicken from the oven and you are ready to assemble!</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Start by spooning a bed of yellow rice on a large platter, then garnish with the fried onions, almonds and raisins, then add the chicken legs on top.</li></ol><h2>Smoking the Mandi (optional)</h2><p>To replicate the smoky coal infused flavours of traditional chicken mandi, lots of people like to smoke the final dish. My husband doesn’t like smoked food so I don’t do this. But its fairly easy!</p><p>Add the chicken to the rice in the same pot once they are both cooked. Place a small bowl on top of the rice and add a bit of oil inside. Take a small piece of coal and light it on fire using a lighter. Then drop the coal in the oil filled bowl, watch the smoke, then quickly close the lid. Smoke for about 4-5 minutes then open the lid and remove the bowl.</p><h2>Tips for making the best mandi!</h2><p><strong>Tip #1:</strong> Buy whole spices, toast them, and grind them yourself. This will make a huge difference in the flavour of both the chicken and rice. And its easy!</p><p><strong>Tip #2:</strong> Be patient with the onions while they fry. The onions is what really takes this dish to another level of umami. Just keep an eye on them and plan accordingly.</p><p><strong>Tip #3:</strong> Don’t be scared of using the quantity of oil used in the recipe. Many store bough Mandi uses even more oil than this. The oil will help keep the rice grains soft and luxurious.</p><p><img src=\"https://www.hungrypaprikas.com/wp-content/uploads/2022/05/Chicken-Mandi-19-1024x1536.jpg\" alt=\"Chicken and rice plated on a white ceramic platter topped with cilantro, almonds and raisins, with a green bowl and purple glass in the background.\" height=\"1536\" width=\"1024\"></p><h2>What to serve with Mandi:</h2><p>Traditionally, Mandi and many Yemeni rice based dishes are served with “Zahawig” (sometimes referred to as Zhough) which is a spicy salsa like condiment made from chilis, parsley, coriander, mint, garlic, tomato, vinegar, and cumin. They are blended to create a salsa. You can also serve this rice dish with side salads like <a href=\"https://www.hungrypaprikas.com/jajik-cucumber-yogurt-salad/\" rel=\"noopener noreferrer\" target=\"_blank\">Jajik (cucumber yogurt salad)</a>, <a href=\"https://www.hungrypaprikas.com/middle-eastern-fattoush-salad/\" rel=\"noopener noreferrer\" target=\"_blank\">fattoush</a> or <a href=\"https://www.hungrypaprikas.com/best-tabouli-salad/\" rel=\"noopener noreferrer\" target=\"_blank\">tabouli</a>.</p>', '/mandhi.jpg', '2024-11-18 22:53:20', '1 Hour'),
(32, 7, 'North Indian Thali', 'Indian', 'aloo jeera <br> paneer bhurji gravy <br> dal tadka <br> boondi raita <br> mango pickle <br> jeera rice <br> phulka', '<h4>aloo jeera recipe:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>a simple and tasty dry sabzi recipe prepared in just 2 minutes. the flavour of cumin will make the sabzi lip-smacking. it is usually consumed with phulka, however, can also be eaten as a bite. this is a no onion and no garlic sabji recipe, so can be served during fasting. i have used boiled potatoes to prepare aloo jeera recipe. alternatively, you can add little water and cook potato along with jeera tempering.</li></ol><h4>paneer bhurji gravy recipe:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>crumbled paneer is cooked in tomato and onion based sauce. it is commonly served with roti, pav or bread. the gravy can be prepared with butter for rich flavour. i have used very fewer spices to keep the curry simple and tasty. however, you can add spices like pav bhaji masala to get the street flavour. this is the vegetarian alternative for popular egg bhurji recipe.</li></ol><h4>dal tadka recipe:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>a simple, tasty lentil-based curry recipe made with toor dal and aromatic spices. in addition, the ghee tempering will enhance the flavour of dal. it is indeed one of the staple food of many north indians. any north indian thali is incomplete without a spicy and tasty tempered dal dish. in this dal variation, i have prepared slightly watery consistency. however, you can prepare the dal in thicker consistency if you are looking to serve with roti.</li></ol><h4>boondi raita recipe:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>raita recipes are very popular in indian cuisine. it is considered as one of the best combinations for pulao and biryani. today i am sharing boondi raita as it is very easy to prepare and completes the thali. i have kept it very simple, however, you can add spices to the curd and also adjust the consistency of raita accordingly.</li></ol><h4>mango pickle:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>pickle recipes are one of the most common condiments used across india. it is generally served in thali as taste enhancer, but can also be served as one of the main side dish. in this thali i have used mango pickle, which is made with mustard oil, raw tender mangoes and unique blend of spice. personal tip on the usage of pickle is to use it when you focus your attention to jeera rice and dal tadka combo. you may very well use it with roti or phulka too.</li></ol><h4>jeera rice recipe:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>one of the flavoured rice prepared with basmati rice, cumin and ghee. it is typically served with dal and curries. the rice tastes great when prepared with good quality basmati rice. i have cooked the rice in the pressure cooker, add all the spices. however, you temper with cumin seeds with leftover rice.</li></ol><h4>phulka or roti:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>north indian\'s meal is always a combination of flavoured long-grained rice and traditional wheat or plain flour-based indian flatbread. most commonly, wheat is used for day to day breads, but for any particular occasion, you can use maida flour too. in this recipe, i have particularly shared phulka or puffed roti, as it helps to balance the meal. it is lite, and can easily be served with any choice of curries. personally i feel, phulka with paneer burji and aloo jeera is one tasty combination for any choice of meal.</li></ol><p><br></p>', '/thali.jpg', '2024-11-18 22:57:34', '40 Minutes'),
(33, 7, 'Schezwan Fried Rice ', 'Chinese', '<h4>For the Rice-Quinoa Mixture</h4>  <br>     3/4 cup white basmati rice     <br> 1/4 cup quinoa, or you can use more white basmati rice     <br> 1 1/2 cups water, or stock. <br> <h4>For the Fried Rice</h4>      <br> 2 teaspoons oil     <br> 4 cloves garlic, minced     <br> 1 inch piece of ginger, minced     <br> 1 hot green chili, such as Serrano or Indian, minced     <br> 1/4 cup chopped red onion     <br> 1/4 cup chopped carrots     <br> 1/4 cup chopped bell peppers     <br> 1/4 cup chopped cabbage     <br> 2 tablespoons green onion, Use the whites of the green onions and reserve the greens for garnish.     <br> 2 tablespoons chopped cilantro stems, or use cilantro leaves     <br> 1/2 teaspoon salt     <br> 1 tablespoon ketchup     <br> 2 teaspoons vinegar.  <br> 1 tablespoon soy sauce, , use tamari for Glutenfree     <br> 1 tablespoon Kashmiri chili powder, or use paprika     <br> 2 tablespoons ginger-garlic paste, or use 4 cloves garlic and 1/2 inch ginger and make a paste in a blender or mortar and pestle with a few drops of rice vinegar     <br> 1/8 teaspoon white pepper, or more, to taste. <br> <h4>For Garnish</h4>      <br> black pepper  <br> reserved green onions', '<h4>Prepare the rice-quinoa mixture.</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Wash the rice and quinoa, then add to a saucepan. Add the stock and a pinch of salt, then cover with a lid over medium heat. Once the stock has come to boil, reduce the heat to medium-low and continue to cook for another 9 to 10 minutes, or until the rice and quinoa are both cooked to preference.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Fluff them really well, and set them aside until you need them for the fried rice. Or use 2-2.5 cups of cooked grains of choice. </li></ol><h4>Make the Schezwan fried rice.</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Heat the oil in a large skillet on medium-high heat. Add the minced ginger, garlic, and green chili to the pan and mix well. (I use a food processor/chopper to mince the garlic ginger and chili together). Cook until they are starting to turn translucent, then add in the onion, carrots, and a good pinch of salt, and cook for 2 to 3 minutes. Then add in the peppers, cabbage, cilantro, and salt and toss well. If you want to use more veggies, you can also add in some frozen veggies at this point and toss well.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cook for a minute, then mix in all of the sauces and the spices. Bring the mixture to a boil,1-2 mins, then add in the cooked rice-quinoa mixture, tossing well to mix it in with all of the sauces. If it is drying out too much, add in some splashes of water to help mix everything in, then switch off the heat, cover the pan, and let it sit for the flavors for meld for about 2 minutes.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Open the pan and fluff the Schezwan rice again. Garnish with the green onion and some black pepper, if you like, and serve.</li></ol><h3>Notes</h3><p>I use a mix of rice and quinoa to amp up a little protein, but you can use whatever grains that you like and cook as you like.</p><p>For the minced garlic, ginger, and chili, I usually just mince them all together in a food processor or you can mince them individually.</p><p>This recipe is naturally nut-free. To make it gluten-free, use gluten-free tamari instead of soy sauce. For soy-free, use coconut aminos in place of the soy sauce.</p><p><br></p>', '/rice.png', '2024-11-18 23:05:11', '30 minutes');
INSERT INTO `myapp_recipe` (`id`, `user_id`, `recipe_name`, `category`, `ingredients`, `description`, `image`, `created_at`, `time`) VALUES
(53, 28, 'Tandoori Chicken', 'Indian', '      2 pounds chicken, cut into pieces      1 medium lemon, juiced      1 teaspoon salt      1 ¼ cups plain yogurt      ½ medium onion, finely chopped      1 clove garlic, minced      2 teaspoons garam masala      1 teaspoon grated fresh ginger root      1 teaspoon cayenne pepper      1 teaspoon red food coloring (Optional)      1 teaspoon yellow food coloring (Optional)      2 teaspoons finely chopped cilantro      1 medium lemon, cut into wedges', '<p><strong>Step 1</strong></p><p>Gather all ingredients.</p><p><img src=\"https://www.allrecipes.com/thmb/wBQPeLJLf7i3Eoe97aFy1CMee7k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-01-2721-b21d8d5a72be4efbb20d5b928c467517.jpg\" alt=\"all ingredients gathered to make Indian tandoori chicken\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Remove and discard skin from chicken pieces. Cut slits into meat and place into a shallow dish. Season chicken on both sides with lemon juice and salt. Let sit for 20 minutes.</p><p><img src=\"https://www.allrecipes.com/thmb/fBl7Wzijd2_RelFnG_7lkuBfLuk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-03-2726-bdf0beaad29a4747a4dc2f3540cc2c0a.jpg\" alt=\"sliced and seasoned chicken sitting in a baking dish\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Mix yogurt, onion, garlic, garam masala, ginger, and cayenne pepper together in a medium bowl until smooth, then stir in food coloring.</p><p><img src=\"https://www.allrecipes.com/thmb/mD9V_oMU_5HHsvuPgDPoTPdOjao=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-05-2731-79235d8e9c524ea9b1f6db8e7140ece6.jpg\" alt=\"yogurt mixture ingredients being combined in a small bowl.\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Spread yogurt mixture over chicken, cover, and refrigerate for 6 to 24 hours (the longer the better).</p><p><img src=\"https://www.allrecipes.com/thmb/AEiN_8kk-O5DpRo495pAJYV8HDA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-06-3009-1f8ec48727e04ce9ba5d6a4b6d5d4ded.jpg\" alt=\"yogurt mixture spread over chicken\" height=\"3000\" width=\"4000\"></p><p><br></p><p>When ready to cook, preheat an outdoor grill for medium-high heat and lightly oil the grate. Remove chicken from marinade. Discard remaining marinade.</p><p>Cook chicken on the preheated grill until no longer pink and the juices run clear. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C).</p><p><img src=\"https://www.allrecipes.com/thmb/n-QIgnLNSBq_MZaWhodBfXaEz9s=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-07-3018-6cd03e86bce0463bb76cd3d45afbd18a.jpg\" alt=\"an overhead view of tandoori style bone in chicken being cooked on a hot grill. \" height=\"3000\" width=\"4000\"></p><p><br></p><p>Garnish with cilantro and lemon wedges.</p><p><img src=\"https://www.allrecipes.com/thmb/g-OiKj1KxPwKldW0oKUNdYsv-UU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/50347-indian-tandoori-chicken-DDMFS-step-08-3019-1f2a4c75928a4a38bdfd6f3f918c90ff.jpg\" alt=\"tandoori chicken garnished with cilantro and lemon wedges.\" height=\"3000\" width=\"4000\"></p>', '/tandoori.jpg', '2024-12-17 06:12:36', '7 hrs'),
(54, 28, 'Chicken Tikka Masala', 'Indian', '      2 tablespoons ghee (clarified butter)      1 onion, finely chopped      4 cloves garlic, minced      1 tablespoon ground cumin      1 teaspoon salt, or more to taste (Optional)      1 teaspoon ground ginger      1 teaspoon cayenne pepper      ½ teaspoon ground cinnamon      ¼ teaspoon ground turmeric      1 (14 ounce) can tomato sauce      1 cup heavy whipping cream      1 tablespoon white sugar, or more to taste (Optional)      2 teaspoons paprika      1 tablespoon vegetable oil      4 skinless, boneless chicken breast halves, cut into bite-size pieces      ½ teaspoon curry powder', '<p>Gather all ingredients.</p><p><img src=\"https://www.allrecipes.com/thmb/fv3gAEGsOsUQ3KmEMWEjcgPfTfM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-01-f883a93f20e34ead81c13de30c7c9567.jpg\" alt=\"Ingredients to make curry stand chicken tikka masala sauce\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Heat ghee in a large skillet over medium heat. Add onion; cook and stir until translucent, about 5 minutes.</p><p><img src=\"https://www.allrecipes.com/thmb/QYM0W7QLQfTHXkf9OgMnkj6n48c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-02-09f50675acf74c1591b50a99d3aa35db.jpg\" alt=\"A large pan of chopped onions being cooked in ghee\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Stir in garlic; cook and stir just until fragrant, about 1 minute. Stir cumin, 1 teaspoon salt, ginger, cayenne pepper, cinnamon, and turmeric into onion mixture; fry until fragrant, about 2 minutes.</p><p><img src=\"https://www.allrecipes.com/thmb/LJbFR5f4Yg0-NnQNjrPGNbeFltI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-03-295dfb533e5342bf8e2c7469c8e7d066.jpg\" alt=\"A pan of chopped onions and garlic cooking in spices\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Stir tomato sauce into onion and spice mixture; bring to a boil and reduce heat to low.</p><p><img src=\"https://www.allrecipes.com/thmb/qLUeVzx3RAfLXGEK3WrIKOaLYHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-04-eb960e3ea826414b92cf4b26b120f682.jpg\" alt=\"A wooden spoon stirring tomato sauce into a pan of seasoned chopped onions\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Simmer sauce for 10 minutes, then mix in cream, 1 tablespoon sugar, and paprika. Bring sauce back to a simmer and cook, stirring often, until sauce is thickened, 10 to 15 minutes.</p><p><img src=\"https://www.allrecipes.com/thmb/HZiKlrMZMb6lvwOKe01CjGQx3XE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-05-b50375ca167e4bcba0674ea16bbe00fa.jpg\" alt=\"A large pan of creamy tomato sauce being stirred with a wooden spoon\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Heat vegetable oil in a separate skillet over medium heat. Stir chicken into hot oil; add curry powder. Sear chicken until lightly browned but still pink inside, about 3 minutes; stir often.</p><p><img src=\"https://www.allrecipes.com/thmb/g--axRjpx8GJgbrm654ypk10QJg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-step-06-21d05e249a1b486389538178a3417cc4.jpg\" alt=\"A pan of seared cubed chicken being stirred with a wooden spoon\" height=\"3000\" width=\"4000\"></p><p><br></p><p>Transfer chicken and any pan juices into sauce. Simmer chicken in sauce until no longer pink, about 30 minutes; adjust sugar and salt to taste.</p><p><img src=\"https://www.allrecipes.com/thmb/9LqKb422Wu6svwa8jt-lnLnERKY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-228293-curry-stand-chicken-tikka-masala-sauce-DDMFS-4x3-4917c70633354b8784b14bae8c3a22a5.jpg\" alt=\"A bowl of curry stand chicken tikka masala served over rice\" height=\"3000\" width=\"4000\"></p>', '/chickenTikka.jpg', '2024-12-17 06:16:13', '1 hour 20 minutes'),
(55, 28, 'Vada Pav', 'Indian', '    2 large russet potatoes (550 to 600 grams)      2 teaspoons coriander seeds crushed      ½ teaspoon cumin seeds crushed      2 tablespoons oil      ½ teaspoon mustard seeds      ⅛ teaspoon asafetida      ½ teaspoon turmeric      1 tablespoon ginger grated      1 tablespoon green chili minced      12 curry leaves chopped      2 teaspoons kosher salt      ½ teaspoon sugar      ½ tablespoon lemon juice      2 tablespoons cilantro finely chopped  Outer covering       1 cup Besan 3 oz      ½ teaspoon ajwain seeds crushed on the palm of your hands     1 teaspoon kosher salt     ¼ teaspoon turmeric     ½ cup water plus 1 to 2 tablespoons as needed     ⅛ teaspoon baking soda   Garlic Chutney      ½ cup shredded coconut     5 garlic cloves     ½ teaspoon kosher salt     1 teaspoon kashmiri red chili     ¼ cup fried besan pieces  Green Chutney      1 cup cilantro packed     1 to 2 green chilies     1 garlic clove     ½ teaspoon cumin seeds     1 tablespoon roasted chana dal or fried besan pieces     1 teaspoon kosher salt     1 teaspoon sugar     ½ tablespoon lemon juice     ½ cup water   To Serve      12 Pav     ½ cup tamarind chutney optional, but highly recommend   Fried Green Chilies (optional)      12 green chilies     ¼ kosher salt', '<h4>Batata Vada Filling</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add 1 cup of water to the Instant Pot insert. Place the trivet inside and arrange the potatoes on top of the trivet. Close the Instant Pot lid and set the pressure release valve to sealing. Pressure cook for 15 minutes, then allow for natural pressure release. Note: You can also steam potatoes on the stovetop.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Allow the potatoes to cool, then peel off the skin and cut them into small cubes.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Roughly crush the coriander and cumin seeds in a mortar and pestle, and set aside.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Heat oil in a medium skillet. Add mustard seeds and let them splutter. Add asafetida, turmeric, crushed cumin and coriander seeds, ginger, green chili, and curry leaves, and cook for one minute.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add the potatoes and salt, mixing thoroughly and roughly mashing them with the back of a spatula or a masher to create a smooth filling. Stir in the sugar and lemon juice, then garnish with cilantro. Mix well and let it cool. Shape the mixture into round balls and flatten them to make vadas about 2 inches wide and ½ inch thick. You should be able to make 10 to 12 vadas</li></ol><h4>Batter</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add besan to a mixing bowl. Lightly crush the ajwain seeds by rubbing them between your palms to release their aroma, then add them to the bowl along with turmeric and salt. Gradually add water, mixing well to create a smooth, flowing batter. Add baking soda just before you are ready to fry, and give it a quick stir.</li></ol><h4>Frying</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Heat oil in a frying pan or kadai. To check the oil temperature, drop a few drops of batter into the oil; they should rise quickly within 10 seconds.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Dip your fingers into the batter, then gently shake your hand over the oil to form small, roundish balls (known as Chura) in the oil. Ensure your fingertips are at least 6 inches above the oil to avoid the hot oil from splattering on your hands. Fry on medium heat for 3 to 4 minutes or until they turn lightly golden and crispy. Remove the Chura with a slotted spatula and drain on a paper towel-lined dish. Repeat the process until you have about 1 cup of fried Chura. Allow it to cool.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>add whole green chilies to the hot oil and fry for 3 to 4 minutes. Remove them with a slotted spatula and drain on paper towels. Sprinkle salt over the fried chilies. These chilies are optional but for a full Mumbai street-style taste you must try it at least once.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Dip the shaped vada one at a time into the batter. Use a spoon to generously coat it on all sides, lift and tilt the spoon to remove any excess batter, to create a thin layer of coating around the vada. Carefully add the vada to the hot oil using the spoon. Repeat with another 2 or 3 vadas.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Fry until golden brown on both sides, about 3 to 4 minutes, turning halfway through. Fry the remaining vadas in batches.</li></ol><h4>Garlic Chutney</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add garlic, fried chura, coconut, salt, and Kashmiri red chili powder to the grinder jar. Grind until all the ingredients are well incorporated, forming a slightly coarse chutney.</li></ol><h4>Green Chutney</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add cilantro, green chili, garlic, cumin seeds, roasted chana dal (or fried chura), salt, sugar, lemon juice, and water to a blender jar and blend until smooth.</li></ol><h4>Assembling Vada Pav</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Slice the pav in the center without cutting it all the way through. Spread green chutney on one side and tamarind chutney on the other. Place a vada on the green chutney side, then sprinkle garlic chutney and chura on top of the vada. Add a green chili on top, then gently press the pav closed.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Assemble the remaining vadas just before serving.</li></ol><p><br></p><p><br></p><h3>Notes</h3><p><strong>Air frying Vada&nbsp;</strong> -&nbsp;Preheat the air fryer to 400 F. Spray oil in the basket and place 5 to 6 Vadas. Spray some more oil on top of the Vada and air fry for 9 to 10 minutes. After the first 6 minutes add the green chilies and air fry for another 4 minutes.</p><p><br></p>', 'images/vadaPav.jpg', '2024-12-17 06:17:55', '1 Hour'),
(57, 29, 'Knafeh (Kunafa)', 'Italian', 'Kataifi, Ghee, Knafeh, Food Color, Sweet Cheese,Fresh Mozzarella, Cheese, Sugar, Rosewater extract, Pistachios ', '<h3>1. Prepare the cheese</h3><p>If you are using a replacement for Sweet Cheese which has salt in it (like Queso Fresco), first soak it in water for at least 2 hours. Then, slice it into ¼\" slices, along with the fresh mozzarella, and place in one layer between paper towels. Place some weight on top (I used my cutting board) to help the paper towels soak up all the excess moisture in the cheeses.</p><h3>2. Prepare the kataifi</h3><p>Take the kataifi out of the freezer and shred it with your hands (or using a knife or food processor) into short strands about 1-3\" long. Mix the melted ghee with the knafeh food coloring, and add to the kataifi. Using your hands, mix thoroughly to coat all strands with ghee. You will need a large bowl for this!</p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/kataifi-scaled.jpg\" alt=\"kataifi broke into small threads in a bowl\" height=\"2560\" width=\"1920\"></p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/kataifi-ghee-mixed-scaled.jpg\" alt=\"kataifi mixed with ghee and food color\" height=\"2560\" width=\"1920\"></p><h3>3. Layer the Knafeh</h3><p>This recipe makes a large amount of Knafeh, I was able to use up one 9\" pan and one 6\" pan. But you are free to use any kind of large cake / baking pan you want; the ideal height of the Knafeh after layering should be less than 1\".</p><p>Brush the pan(s) you are using with ghee or butter, then add in about ¾ of the kataifi. Press down firmly, ideally using the back of a measuring cup, pushing some up along the edges so the cheese does not come in direct contact with the pan. The tighter you pack, the more crispy the Knafeh will be.</p><p>Then, layer in the cheeses. You want to crumble in the sweet cheese, and tear the mozzarella in small strands (or chunks). I did one layer of sweet cheese followed by a layer of mozzarella. Press down firmly</p><p>Cover the cheese with the remaining kataifi and press down again.</p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/process-of-layering-knafeh-1-scaled.jpg\" alt=\"process of layering cheese inside kataifi to make knafeh\" height=\"2560\" width=\"1920\"></p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/process-of-layering-knafeh-2.jpg\" alt=\"process of layering cheese inside kataifi to make knafeh; sweet cheese added\" height=\"2452\" width=\"1839\"></p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/process-of-layering-knafeh-3.jpg\" alt=\"process of layering cheese inside kataifi to make knafeh; mozzarella cheese added\" height=\"2411\" width=\"1808\"></p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/process-of-layering-knafeh-4.jpg\" alt=\"process of layering cheese inside kataifi to make knafeh; top layer of kataifi added\" height=\"2544\" width=\"1908\"></p><h3>4. Bake and prepare the syrup</h3><p>Place the Knafeh in the oven (450F preheated) and bake for ~20-25 minutes until it becomes golden and crispy on the edges and bottom. It should become loose form the edges of the pan.</p><p>In the meanwhile, prepare the syrup by mixing sugar, water and rosewater extract in a saucepan, and bringing to a boil. Cook for just 1-2 minutes until the sugar dissolves, then remove from heat and let cool down.</p><h3>5. Soak, decorate and serve!</h3><p>Once the Knafeh has baked, carefully turn it out onto your serving plate, and soak it generously in the syrup. I suggest using a large spoon to add the syrup slowly and evenly - you want the Knafeh to be thoroughly wet but not so saturated that the syrup is spilling everywhere.</p><p>Once soaked, decorate with chopped pistachios, slice, and serve! Knafeh is best eaten warm (or hot) so the cheese inside is nice and molten.</p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/knafeh-1-scaled.jpg\" alt=\"knafeh on a white marble serving board. knafeh has a crispy orange exterior, is soaked in syrup, decorated with chopped pistachios and cut into slices\" height=\"2560\" width=\"1920\"></p><h2>WHAT PAN TO BAKE KNAFEH IN?</h2><p>Traditionally Knafeh is made in metal plates used specifically for Knafeh, and cooked on the stovetop. However, this recipe is modified for the oven.</p><p><strong>You can use any kind of oven baking pan you have which is large enough for all the ingredients. </strong>I used a 9\" pan and a 6\" cake pan, but you could also use a 9x13\" rectangular pan. Just ensure the Knafeh does not become taller than 1\" as that might be a bit too thick for the syrup to soak through.</p><p><strong>You can also make this Knafeh into individual cups by using a muffin tray </strong>(in fact, this was the recommendation of the Palestinian family as it is more beginner friendly). Add the kataifi, press down using the bottom of a glass, fill with cheese, and add more kataiif on top.</p><p><img src=\"https://bakewithzoha.com/wp-content/uploads/2023/10/knafeh-4-scaled.jpg\" alt=\"knafeh on a white marble serving board. knafeh has a crispy orange exterior, is soaked in syrup, decorated with chopped pistachios and cut into slices; close up picture\" height=\"2560\" width=\"1920\"></p>', 'images/knafeh.jpg', '2024-12-17 06:35:53', '45 min'),
(58, 29, 'Authentic Shakshuka', 'Arabic', '3T Olive oil, 1 red onion diced,  1 large red bell pepper, thinly sliced or diced 1 large yellow bell pepper, sliced or diced 4 garlic cloves, rough chopped 3/4 tsp salt, more to taste cracked pepper to taste 1 tsp cumin 1 tsp sugar 1 tsp smoked paprika 1/2 tsp aleppo chili flakes (optional) 3 medium tomatoes diced small with juices ( or one 14-ounce can diced tomatoes with juices) 1/3 cup water or white wine 2 tablespoons fresh basil ribbons, chopped cilantro or Italian parsley 4 –6 Extra large organic eggs 1/4 – 1/2 cup goat cheese or crumbled feta 1/4 C finely diced Spanish-style cured Chorizo or 1 cup Merguez Sausage, a North African spiced sausage', '<ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">preheat oven to 375F</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">In a large cast iron skillet, heat the </span><a href=\"https://goto.target.com/c/2773249/81938/2092?subid1=56f42548dd56ec564339868e&amp;subid2=https%3A%2F%2Fwww.feastingathome.com%2Fshakshuka-north-african-skillet-eggs%2F&amp;sharedid=feasting+at+home&amp;subid3=https%3A%2F%2Fwww.target.com%2Fp%2Fcarapelli-100-organic-extra-virgin-olive-oil-17oz%2F-%2FA-52000954%3Faflt%3Dplt%257Clm&amp;u=https%3A%2F%2Fwww.target.com%2Fp%2Fcarapelli-100-organic-extra-virgin-olive-oil-17oz%2F-%2FA-52000954%3Faflt%3Dplt%257Clm\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(34, 34, 34);\">olive oil</a><span style=\"color: rgb(34, 34, 34);\"> over medium heat. Add the onion and cook until tender, about 5 minutes. Add the sliced peppers and garlic, and turn heat down to med-low and cook for 5-7 more minutes, until peppers are tender.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Add all spices, sugar and salt.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Cook for 2 more minutes. Add fresh tomatoes and water (or wine).</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Simmer on low for 10-15 minutes, </span><em style=\"color: rgb(34, 34, 34);\">uncovered</em><span style=\"color: rgb(34, 34, 34);\">, adding more water if it gets too dry or thick. You want a saucy, stew-like consistency. After tomatoes cook down, taste, it should be full-flavored, so adjust salt, spices, and sugar if necessary.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">With the back of a spoon, make a well for each egg in the stew. Crack the eggs into each well, sprinkling each egg with a little salt and cracked pepper and </span><a href=\"https://bowlandpitcher.com/collections/spices-and-condiments/products/aleppo\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(34, 34, 34);\">Aleppo</a><span style=\"color: rgb(34, 34, 34);\"> chili flakes.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Place in the 375F oven.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Bake until egg whites are become opaque and are cooked ( about 8-10 minutes) and yolks are still soft ( or to your desired doneness.)</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Remove from oven and top with fresh basil (or cilantro or Italian Parsley) and </span><a href=\"https://amzn.to/2Oh9NB0\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(34, 34, 34);\">goat cheese</a><span style=\"color: rgb(34, 34, 34);\">.</span></li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(34, 34, 34);\">Serve with </span><a href=\"https://www.feastingathome.com/sourdough-bread/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(34, 34, 34);\">crusty bread</a><span style=\"color: rgb(34, 34, 34);\">.</span></li></ol><h3><span style=\"color: rgb(0, 0, 0);\">Notes</span></h3><p><span style=\"color: rgb(34, 34, 34);\">If adding cured (cooked) Spanish style chorizo, add to the simmering stew. If adding Merquez&nbsp;Sausage, brown&nbsp;it with the onions and peppers.</span></p><p><br></p>', '/Shakshukajpg.jpg', '2024-12-17 07:07:53', '40 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_savedrecipe`
--

DROP TABLE IF EXISTS `myapp_savedrecipe`;
CREATE TABLE IF NOT EXISTS `myapp_savedrecipe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `saved_on` datetime(6) NOT NULL,
  `recipe_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MyApp_savedrecipe_user_id_recipe_id_a4e2da30_uniq` (`user_id`,`recipe_id`),
  KEY `MyApp_savedrecipe_recipe_id_679f5f93` (`recipe_id`),
  KEY `MyApp_savedrecipe_user_id_0e55e9b4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myapp_savedrecipe`
--

INSERT INTO `myapp_savedrecipe` (`id`, `saved_on`, `recipe_id`, `user_id`) VALUES
(11, '2024-11-15 13:40:28.294657', 26, 11),
(8, '2024-11-15 10:36:18.533385', 26, 7),
(10, '2024-11-15 10:43:43.547619', 27, 7),
(12, '2024-11-15 13:40:33.473325', 28, 11),
(13, '2024-11-15 14:02:09.704908', 27, 11),
(15, '2024-11-19 06:17:23.039471', 26, 25),
(16, '2024-11-19 06:18:14.386348', 30, 25),
(17, '2024-11-19 06:18:28.926157', 27, 25),
(18, '2024-11-19 06:18:31.353572', 32, 25),
(24, '2024-12-18 05:29:52.138896', 26, 60);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
