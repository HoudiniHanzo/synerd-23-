-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2021 at 11:13 PM
-- Server version: 8.0.26-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synerd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add office', 7, 'add_office'),
(26, 'Can change office', 7, 'change_office'),
(27, 'Can delete office', 7, 'delete_office'),
(28, 'Can view office', 7, 'view_office'),
(29, 'Can add officer', 8, 'add_officer'),
(30, 'Can change officer', 8, 'change_officer'),
(31, 'Can delete officer', 8, 'delete_officer'),
(32, 'Can view officer', 8, 'view_officer'),
(33, 'Can add organization', 9, 'add_organization'),
(34, 'Can change organization', 9, 'change_organization'),
(35, 'Can delete organization', 9, 'delete_organization'),
(36, 'Can view organization', 9, 'view_organization'),
(37, 'Can add organized member', 10, 'add_organizedmember'),
(38, 'Can change organized member', 10, 'change_organizedmember'),
(39, 'Can delete organized member', 10, 'delete_organizedmember'),
(40, 'Can view organized member', 10, 'view_organizedmember'),
(41, 'Can add service', 11, 'add_service'),
(42, 'Can change service', 11, 'change_service'),
(43, 'Can delete service', 11, 'delete_service'),
(44, 'Can view service', 11, 'view_service'),
(45, 'Can add subscription type', 12, 'add_subscriptiontype'),
(46, 'Can change subscription type', 12, 'change_subscriptiontype'),
(47, 'Can delete subscription type', 12, 'delete_subscriptiontype'),
(48, 'Can view subscription type', 12, 'view_subscriptiontype'),
(49, 'Can add transferred subscription', 13, 'add_transferredsubscription'),
(50, 'Can change transferred subscription', 13, 'change_transferredsubscription'),
(51, 'Can delete transferred subscription', 13, 'delete_transferredsubscription'),
(52, 'Can view transferred subscription', 13, 'view_transferredsubscription'),
(53, 'Can add user info', 14, 'add_userinfo'),
(54, 'Can change user info', 14, 'change_userinfo'),
(55, 'Can delete user info', 14, 'delete_userinfo'),
(56, 'Can view user info', 14, 'view_userinfo'),
(57, 'Can add subscriber', 15, 'add_subscriber'),
(58, 'Can change subscriber', 15, 'change_subscriber'),
(59, 'Can delete subscriber', 15, 'delete_subscriber'),
(60, 'Can view subscriber', 15, 'view_subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_office`
--

CREATE TABLE `backend_office` (
  `officecode` varchar(10) NOT NULL,
  `officename` varchar(25) NOT NULL,
  `attribution` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_officer`
--

CREATE TABLE `backend_officer` (
  `officecode` varchar(10) NOT NULL,
  `subscriberID` varchar(10) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_organization`
--

CREATE TABLE `backend_organization` (
  `organization_code` varchar(10) NOT NULL,
  `organization_name` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `date_joined` date DEFAULT NULL,
  `address1` varchar(25) NOT NULL,
  `address2` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `zipcode` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_organizedmember`
--

CREATE TABLE `backend_organizedmember` (
  `organization_code` varchar(10) NOT NULL,
  `subscriberID` varchar(10) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `nativecountry` varchar(25) NOT NULL,
  `citizenship` varchar(25) NOT NULL,
  `isdelegate` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_service`
--

CREATE TABLE `backend_service` (
  `servicecode` varchar(25) NOT NULL,
  `servicename` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `allocation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `backend_service`
--

INSERT INTO `backend_service` (`servicecode`, `servicename`, `description`, `allocation`) VALUES
('339988', 'JiDex Air', 'Some alternative postal service.', ''),
('556644', 'Xpress Inc', 'X means excellent!', '');

-- --------------------------------------------------------

--
-- Table structure for table `backend_subscriber`
--

CREATE TABLE `backend_subscriber` (
  `subscriberID` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `subscriptiontypecode` varchar(25) NOT NULL,
  `requestcode` varchar(25) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `motifofcancellation` varchar(25) NOT NULL,
  `beneficiaryID` varchar(10) NOT NULL,
  `servicecode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `backend_subscriber`
--

INSERT INTO `backend_subscriber` (`subscriberID`, `username`, `subscriptiontypecode`, `requestcode`, `startdate`, `enddate`, `motifofcancellation`, `beneficiaryID`, `servicecode`) VALUES
('1001', 'Andy123', '23', '1001', '2015-04-12', NULL, '', '85006341', '339988'),
('1002', 'xxBree90xx', '65', '2003', '2011-07-22', '2021-10-20', '', '90045577', '556644'),
('3456', 'Cooral_l33T', '41', '8009', '2016-09-06', '2020-08-31', 'Did not carry the 1.', '', '339988');

-- --------------------------------------------------------

--
-- Table structure for table `backend_subscriptiontype`
--

CREATE TABLE `backend_subscriptiontype` (
  `subscriptiontypecode` varchar(25) NOT NULL,
  `subscriptiontypename` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_transferredsubscription`
--

CREATE TABLE `backend_transferredsubscription` (
  `transferID` varchar(10) NOT NULL,
  `transfer_from` varchar(25) NOT NULL,
  `transfer_to` varchar(25) NOT NULL,
  `request_date` date DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `subscriberID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `backend_transferredsubscription`
--

INSERT INTO `backend_transferredsubscription` (`transferID`, `transfer_from`, `transfer_to`, `request_date`, `transfer_date`, `subscriberID`) VALUES
('1212', 'Place E', 'Place F', '2005-05-16', '2006-06-16', '1001'),
('1313', 'Place C', 'Place D', '2006-06-17', '2006-08-18', '3456');

-- --------------------------------------------------------

--
-- Table structure for table `backend_userinfo`
--

CREATE TABLE `backend_userinfo` (
  `username` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middlename` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address1` varchar(25) NOT NULL,
  `address2` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `zipcode` varchar(25) NOT NULL,
  `employer_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'backend', 'office'),
(8, 'backend', 'officer'),
(9, 'backend', 'organization'),
(10, 'backend', 'organizedmember'),
(11, 'backend', 'service'),
(15, 'backend', 'subscriber'),
(12, 'backend', 'subscriptiontype'),
(13, 'backend', 'transferredsubscription'),
(14, 'backend', 'userinfo'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-20 02:39:33.235441'),
(2, 'auth', '0001_initial', '2021-10-20 02:39:34.251546'),
(3, 'admin', '0001_initial', '2021-10-20 02:39:34.717306'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-20 02:39:34.729198'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-20 02:39:34.747527'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-20 02:39:34.868971'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-20 02:39:34.957112'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-20 02:39:35.007261'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-20 02:39:35.027766'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-20 02:39:35.093891'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-20 02:39:35.106531'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-20 02:39:35.125460'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-20 02:39:35.229616'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-20 02:39:35.374246'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-20 02:39:35.415962'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-20 02:39:35.443788'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-20 02:39:35.524538'),
(18, 'backend', '0001_initial', '2021-10-20 02:39:36.068705'),
(19, 'sessions', '0001_initial', '2021-10-20 02:39:36.143163'),
(20, 'backend', '0002_alter_subscriber_servicecode', '2021-10-20 02:40:32.513905');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `backend_office`
--
ALTER TABLE `backend_office`
  ADD PRIMARY KEY (`officecode`);

--
-- Indexes for table `backend_officer`
--
ALTER TABLE `backend_officer`
  ADD PRIMARY KEY (`officecode`);

--
-- Indexes for table `backend_organization`
--
ALTER TABLE `backend_organization`
  ADD PRIMARY KEY (`organization_code`);

--
-- Indexes for table `backend_organizedmember`
--
ALTER TABLE `backend_organizedmember`
  ADD PRIMARY KEY (`organization_code`);

--
-- Indexes for table `backend_service`
--
ALTER TABLE `backend_service`
  ADD PRIMARY KEY (`servicecode`);

--
-- Indexes for table `backend_subscriber`
--
ALTER TABLE `backend_subscriber`
  ADD PRIMARY KEY (`subscriberID`);

--
-- Indexes for table `backend_subscriptiontype`
--
ALTER TABLE `backend_subscriptiontype`
  ADD PRIMARY KEY (`subscriptiontypecode`);

--
-- Indexes for table `backend_transferredsubscription`
--
ALTER TABLE `backend_transferredsubscription`
  ADD PRIMARY KEY (`transferID`);

--
-- Indexes for table `backend_userinfo`
--
ALTER TABLE `backend_userinfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
