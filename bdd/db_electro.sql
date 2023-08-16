-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 16 août 2023 à 07:33
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_electro`
--

-- --------------------------------------------------------

--
-- Structure de la table `electro_actionscheduler_actions`
--

DROP TABLE IF EXISTS `electro_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `electro_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_actionscheduler_actions`
--

INSERT INTO `electro_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(38, 'action_scheduler/migration_hook', 'complete', '2023-07-25 15:36:57', '2023-07-25 17:36:57', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690299417;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690299417;}', 1, 1, '2023-07-25 15:37:05', '2023-07-25 17:37:05', 0, NULL),
(39, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-25 15:36:00', '2023-07-25 17:36:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1690299360;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1690299360;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-07-25 15:36:56', '2023-07-25 17:36:56', 0, NULL),
(40, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-26 15:36:56', '2023-07-26 17:36:56', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1690385816;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1690385816;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-07-26 23:45:42', '2023-07-27 01:45:42', 0, NULL),
(41, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 15:39:37', '2023-07-25 17:39:37', 10, '[43,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690299577;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690299577;}', 3, 1, '2023-07-25 15:39:40', '2023-07-25 17:39:40', 0, NULL),
(42, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'failed', '2023-07-25 16:42:57', '2023-07-25 16:42:57', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-07-25 16:43:08', '2023-07-25 18:43:08', 0, NULL),
(43, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 16:42:58', '2023-07-25 18:42:58', 10, '[43,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690303378;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690303378;}', 3, 1, '2023-07-25 16:43:08', '2023-07-25 18:43:08', 0, NULL),
(44, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 16:51:30', '2023-07-25 18:51:30', 10, '[49,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690303890;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690303890;}', 3, 1, '2023-07-25 16:51:51', '2023-07-25 18:51:51', 0, NULL),
(45, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 16:52:52', '2023-07-25 18:52:52', 10, '[49,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690303972;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690303972;}', 3, 1, '2023-07-25 16:52:57', '2023-07-25 18:52:57', 0, NULL),
(46, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:11:12', '2023-07-25 19:11:12', 10, '[56,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305072;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305072;}', 3, 1, '2023-07-25 17:11:18', '2023-07-25 19:11:18', 0, NULL),
(47, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:15:33', '2023-07-25 19:15:33', 10, '[56,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305333;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305333;}', 3, 1, '2023-07-25 17:15:57', '2023-07-25 19:15:57', 0, NULL),
(48, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:16:40', '2023-07-25 19:16:40', 10, '[56,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305400;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305400;}', 3, 1, '2023-07-25 17:16:56', '2023-07-25 19:16:56', 0, NULL),
(49, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:17:17', '2023-07-25 19:17:17', 10, '[59,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305437;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305437;}', 3, 1, '2023-07-25 17:18:23', '2023-07-25 19:18:23', 0, NULL),
(50, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:21:02', '2023-07-25 19:21:02', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305662;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305662;}', 3, 1, '2023-07-25 17:21:38', '2023-07-25 19:21:38', 0, NULL),
(51, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:23:11', '2023-07-25 19:23:11', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305791;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305791;}', 3, 1, '2023-07-25 17:24:06', '2023-07-25 19:24:06', 0, NULL),
(52, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:24:07', '2023-07-25 19:24:07', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305847;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305847;}', 3, 1, '2023-07-25 17:24:10', '2023-07-25 19:24:10', 0, NULL),
(53, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:24:30', '2023-07-25 19:24:30', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305870;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305870;}', 3, 1, '2023-07-25 17:24:56', '2023-07-25 19:24:56', 0, NULL),
(54, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:25:43', '2023-07-25 19:25:43', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305943;}', 3, 1, '2023-07-25 17:25:56', '2023-07-25 19:25:56', 0, NULL),
(55, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:26:21', '2023-07-25 19:26:21', 10, '[63,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690305981;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690305981;}', 3, 1, '2023-07-25 17:27:05', '2023-07-25 19:27:05', 0, NULL),
(56, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:27:35', '2023-07-25 19:27:35', 10, '[63,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306055;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306055;}', 3, 1, '2023-07-25 17:28:28', '2023-07-25 19:28:28', 0, NULL),
(57, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:29:05', '2023-07-25 19:29:05', 10, '[63,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306145;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306145;}', 3, 1, '2023-07-25 17:29:39', '2023-07-25 19:29:39', 0, NULL),
(58, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:30:41', '2023-07-25 19:30:41', 10, '[61,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306241;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306241;}', 3, 1, '2023-07-25 17:30:57', '2023-07-25 19:30:57', 0, NULL),
(59, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:32:19', '2023-07-25 19:32:19', 10, '[63,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306339;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306339;}', 3, 1, '2023-07-25 17:33:07', '2023-07-25 19:33:07', 0, NULL),
(60, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:33:09', '2023-07-25 19:33:09', 10, '[63,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306389;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306389;}', 3, 1, '2023-07-25 17:34:06', '2023-07-25 19:34:06', 0, NULL),
(61, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:34:08', '2023-07-25 19:34:08', 10, '[63,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306448;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306448;}', 3, 1, '2023-07-25 17:34:13', '2023-07-25 19:34:13', 0, NULL),
(62, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:35:15', '2023-07-25 19:35:15', 10, '[65,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306515;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306515;}', 3, 1, '2023-07-25 17:36:22', '2023-07-25 19:36:22', 0, NULL),
(63, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:37:09', '2023-07-25 19:37:09', 10, '[65,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306629;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306629;}', 3, 1, '2023-07-25 17:37:36', '2023-07-25 19:37:36', 0, NULL),
(64, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:38:05', '2023-07-25 19:38:05', 10, '[65,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306685;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306685;}', 3, 1, '2023-07-25 17:38:37', '2023-07-25 19:38:37', 0, NULL),
(65, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:38:42', '2023-07-25 19:38:42', 10, '[65,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306722;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306722;}', 3, 1, '2023-07-25 17:38:43', '2023-07-25 19:38:43', 0, NULL),
(66, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:39:07', '2023-07-25 19:39:07', 10, '[67,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306747;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306747;}', 3, 1, '2023-07-25 17:39:39', '2023-07-25 19:39:39', 0, NULL),
(67, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:40:19', '2023-07-25 19:40:19', 10, '[67,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306819;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306819;}', 3, 1, '2023-07-25 17:40:44', '2023-07-25 19:40:44', 0, NULL),
(68, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:40:46', '2023-07-25 19:40:46', 10, '[68,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306846;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306846;}', 3, 1, '2023-07-25 17:40:51', '2023-07-25 19:40:51', 0, NULL),
(69, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:43:13', '2023-07-25 19:43:13', 10, '[68,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690306993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690306993;}', 3, 1, '2023-07-25 17:44:01', '2023-07-25 19:44:01', 0, NULL),
(70, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:43:53', '2023-07-25 19:43:53', 10, '[69,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690307033;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690307033;}', 3, 1, '2023-07-25 17:44:02', '2023-07-25 19:44:02', 0, NULL),
(71, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:45:12', '2023-07-25 19:45:12', 10, '[69,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690307112;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690307112;}', 3, 1, '2023-07-25 17:45:18', '2023-07-25 19:45:18', 0, NULL),
(72, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:46:21', '2023-07-25 19:46:21', 10, '[71,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690307181;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690307181;}', 3, 1, '2023-07-25 17:46:22', '2023-07-25 19:46:22', 0, NULL),
(73, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-25 17:53:00', '2023-07-25 19:53:00', 10, '[71,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690307580;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690307580;}', 3, 1, '2023-07-25 17:53:36', '2023-07-25 19:53:36', 0, NULL),
(74, 'action_scheduler/migration_hook', 'complete', '2023-07-25 18:52:55', '2023-07-25 20:52:55', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690311175;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690311175;}', 1, 1, '2023-07-25 18:53:08', '2023-07-25 20:53:08', 0, NULL),
(75, 'action_scheduler/migration_hook', 'failed', '2023-07-25 18:54:09', '2023-07-25 20:54:09', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690311249;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690311249;}', 1, 1, '2023-07-25 18:54:16', '2023-07-25 20:54:16', 0, NULL),
(76, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-27 23:45:42', '2023-07-28 01:45:42', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1690501542;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1690501542;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-07-28 17:30:30', '2023-07-28 19:30:30', 0, NULL),
(77, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-27 18:30:58', '2023-07-27 20:30:58', 10, '[89,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690482658;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690482658;}', 3, 1, '2023-07-27 18:31:45', '2023-07-27 20:31:45', 0, NULL),
(78, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-27 18:31:33', '2023-07-27 20:31:33', 10, '[90,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690482693;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690482693;}', 3, 1, '2023-07-27 18:31:45', '2023-07-27 20:31:45', 0, NULL),
(79, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-27 18:32:37', '2023-07-27 20:32:37', 10, '[91,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690482757;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690482757;}', 3, 1, '2023-07-27 18:32:56', '2023-07-27 20:32:56', 0, NULL),
(80, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-07-27 19:09:29', '2023-07-27 21:09:29', 10, '[91,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1690484969;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1690484969;}', 3, 1, '2023-07-27 19:10:01', '2023-07-27 21:10:01', 0, NULL),
(81, 'woocommerce_cleanup_draft_orders', 'complete', '2023-07-29 17:30:30', '2023-07-29 19:30:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1690651830;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1690651830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-08-11 02:25:42', '2023-08-11 04:25:42', 0, NULL),
(82, 'woocommerce_cleanup_draft_orders', 'complete', '2023-08-12 02:25:42', '2023-08-12 04:25:42', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1691807142;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1691807142;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-08-12 12:45:32', '2023-08-12 14:45:32', 0, NULL),
(83, 'woocommerce_cleanup_draft_orders', 'complete', '2023-08-13 12:45:32', '2023-08-13 14:45:32', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1691930732;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1691930732;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-08-15 10:48:28', '2023-08-15 12:48:28', 0, NULL),
(84, 'woocommerce_run_product_attribute_lookup_regeneration_callback', 'complete', '2023-08-12 12:47:37', '2023-08-12 14:47:37', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1691844457;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1691844457;}', 3, 1, '2023-08-12 12:48:48', '2023-08-12 14:48:48', 0, NULL),
(85, 'woocommerce_run_on_woocommerce_admin_updated', 'complete', '2023-08-12 12:47:36', '2023-08-12 14:47:36', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1691844456;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1691844456;}', 4, 1, '2023-08-12 12:48:48', '2023-08-12 14:48:48', 0, NULL),
(87, 'action_scheduler/migration_hook', 'complete', '2023-08-13 01:42:40', '2023-08-13 03:42:40', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1691890960;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1691890960;}', 1, 1, '2023-08-13 01:42:57', '2023-08-13 03:42:57', 0, NULL),
(86, 'woocommerce_run_product_attribute_lookup_regeneration_callback', 'complete', '2023-08-12 12:48:49', '2023-08-12 14:48:49', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1691844529;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1691844529;}', 3, 1, '2023-08-12 12:48:52', '2023-08-12 14:48:52', 0, NULL),
(88, 'action_scheduler/migration_hook', 'failed', '2023-08-13 01:43:57', '2023-08-13 03:43:57', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1691891037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1691891037;}', 1, 1, '2023-08-13 01:43:59', '2023-08-13 03:43:59', 0, NULL),
(89, 'woocommerce_cleanup_draft_orders', 'pending', '2023-08-16 10:48:28', '2023-08-16 12:48:28', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1692182908;s:18:\"\0*\0first_timestamp\";i:1690299360;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1692182908;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `electro_actionscheduler_claims`
--

DROP TABLE IF EXISTS `electro_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `electro_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=950 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_actionscheduler_groups`
--

DROP TABLE IF EXISTS `electro_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `electro_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_actionscheduler_groups`
--

INSERT INTO `electro_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, ''),
(3, 'woocommerce-db-updates'),
(4, 'woocommerce-remote-inbox-engine');

-- --------------------------------------------------------

--
-- Structure de la table `electro_actionscheduler_logs`
--

DROP TABLE IF EXISTS `electro_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `electro_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_actionscheduler_logs`
--

INSERT INTO `electro_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 38, 'action created', '2023-07-25 15:35:57', '2023-07-25 17:35:57'),
(2, 39, 'action created', '2023-07-25 15:36:00', '2023-07-25 17:36:00'),
(3, 39, 'action started via WP Cron', '2023-07-25 15:36:56', '2023-07-25 17:36:56'),
(4, 39, 'action complete via WP Cron', '2023-07-25 15:36:56', '2023-07-25 17:36:56'),
(5, 40, 'action created', '2023-07-25 15:36:56', '2023-07-25 17:36:56'),
(6, 38, 'action started via Async Request', '2023-07-25 15:37:05', '2023-07-25 17:37:05'),
(7, 38, 'action complete via Async Request', '2023-07-25 15:37:05', '2023-07-25 17:37:05'),
(8, 41, 'action created', '2023-07-25 15:39:36', '2023-07-25 17:39:36'),
(9, 41, 'action started via Async Request', '2023-07-25 15:39:40', '2023-07-25 17:39:40'),
(10, 41, 'action complete via Async Request', '2023-07-25 15:39:40', '2023-07-25 17:39:40'),
(11, 42, 'action created', '2023-07-25 16:42:57', '2023-07-25 18:42:57'),
(12, 43, 'action created', '2023-07-25 16:42:58', '2023-07-25 18:42:58'),
(13, 42, 'action started via Async Request', '2023-07-25 16:43:08', '2023-07-25 18:43:08'),
(14, 42, 'action failed via Async Request: Scheduled action for woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications will not be executed as no callbacks are registered.', '2023-07-25 16:43:08', '2023-07-25 18:43:08'),
(15, 43, 'action started via Async Request', '2023-07-25 16:43:08', '2023-07-25 18:43:08'),
(16, 43, 'action complete via Async Request', '2023-07-25 16:43:08', '2023-07-25 18:43:08'),
(17, 44, 'action created', '2023-07-25 16:51:29', '2023-07-25 18:51:29'),
(18, 44, 'action started via Async Request', '2023-07-25 16:51:50', '2023-07-25 18:51:50'),
(19, 44, 'action complete via Async Request', '2023-07-25 16:51:51', '2023-07-25 18:51:51'),
(20, 45, 'action created', '2023-07-25 16:52:51', '2023-07-25 18:52:51'),
(21, 45, 'action started via WP Cron', '2023-07-25 16:52:57', '2023-07-25 18:52:57'),
(22, 45, 'action complete via WP Cron', '2023-07-25 16:52:57', '2023-07-25 18:52:57'),
(23, 46, 'action created', '2023-07-25 17:11:11', '2023-07-25 19:11:11'),
(24, 46, 'action started via Async Request', '2023-07-25 17:11:18', '2023-07-25 19:11:18'),
(25, 46, 'action complete via Async Request', '2023-07-25 17:11:18', '2023-07-25 19:11:18'),
(26, 47, 'action created', '2023-07-25 17:15:32', '2023-07-25 19:15:32'),
(27, 47, 'action started via WP Cron', '2023-07-25 17:15:57', '2023-07-25 19:15:57'),
(28, 47, 'action complete via WP Cron', '2023-07-25 17:15:57', '2023-07-25 19:15:57'),
(29, 48, 'action created', '2023-07-25 17:16:39', '2023-07-25 19:16:39'),
(30, 48, 'action started via WP Cron', '2023-07-25 17:16:56', '2023-07-25 19:16:56'),
(31, 48, 'action complete via WP Cron', '2023-07-25 17:16:56', '2023-07-25 19:16:56'),
(32, 49, 'action created', '2023-07-25 17:17:16', '2023-07-25 19:17:16'),
(33, 49, 'action started via WP Cron', '2023-07-25 17:18:23', '2023-07-25 19:18:23'),
(34, 49, 'action complete via WP Cron', '2023-07-25 17:18:23', '2023-07-25 19:18:23'),
(35, 50, 'action created', '2023-07-25 17:21:01', '2023-07-25 19:21:01'),
(36, 50, 'action started via Async Request', '2023-07-25 17:21:38', '2023-07-25 19:21:38'),
(37, 50, 'action complete via Async Request', '2023-07-25 17:21:38', '2023-07-25 19:21:38'),
(38, 51, 'action created', '2023-07-25 17:23:10', '2023-07-25 19:23:10'),
(39, 51, 'action started via WP Cron', '2023-07-25 17:24:06', '2023-07-25 19:24:06'),
(40, 51, 'action complete via WP Cron', '2023-07-25 17:24:06', '2023-07-25 19:24:06'),
(41, 52, 'action created', '2023-07-25 17:24:06', '2023-07-25 19:24:06'),
(42, 52, 'action started via Async Request', '2023-07-25 17:24:10', '2023-07-25 19:24:10'),
(43, 52, 'action complete via Async Request', '2023-07-25 17:24:10', '2023-07-25 19:24:10'),
(44, 53, 'action created', '2023-07-25 17:24:29', '2023-07-25 19:24:29'),
(45, 53, 'action started via WP Cron', '2023-07-25 17:24:56', '2023-07-25 19:24:56'),
(46, 53, 'action complete via WP Cron', '2023-07-25 17:24:56', '2023-07-25 19:24:56'),
(47, 54, 'action created', '2023-07-25 17:25:42', '2023-07-25 19:25:42'),
(48, 54, 'action started via WP Cron', '2023-07-25 17:25:56', '2023-07-25 19:25:56'),
(49, 54, 'action complete via WP Cron', '2023-07-25 17:25:56', '2023-07-25 19:25:56'),
(50, 55, 'action created', '2023-07-25 17:26:20', '2023-07-25 19:26:20'),
(51, 55, 'action started via WP Cron', '2023-07-25 17:27:05', '2023-07-25 19:27:05'),
(52, 55, 'action complete via WP Cron', '2023-07-25 17:27:05', '2023-07-25 19:27:05'),
(53, 56, 'action created', '2023-07-25 17:27:34', '2023-07-25 19:27:34'),
(54, 56, 'action started via WP Cron', '2023-07-25 17:28:28', '2023-07-25 19:28:28'),
(55, 56, 'action complete via WP Cron', '2023-07-25 17:28:28', '2023-07-25 19:28:28'),
(56, 57, 'action created', '2023-07-25 17:29:04', '2023-07-25 19:29:04'),
(57, 57, 'action started via Async Request', '2023-07-25 17:29:38', '2023-07-25 19:29:38'),
(58, 57, 'action complete via Async Request', '2023-07-25 17:29:39', '2023-07-25 19:29:39'),
(59, 58, 'action created', '2023-07-25 17:30:40', '2023-07-25 19:30:40'),
(60, 58, 'action started via WP Cron', '2023-07-25 17:30:57', '2023-07-25 19:30:57'),
(61, 58, 'action complete via WP Cron', '2023-07-25 17:30:57', '2023-07-25 19:30:57'),
(62, 59, 'action created', '2023-07-25 17:32:18', '2023-07-25 19:32:18'),
(63, 59, 'action started via WP Cron', '2023-07-25 17:33:07', '2023-07-25 19:33:07'),
(64, 59, 'action complete via WP Cron', '2023-07-25 17:33:07', '2023-07-25 19:33:07'),
(65, 60, 'action created', '2023-07-25 17:33:08', '2023-07-25 19:33:08'),
(66, 60, 'action started via WP Cron', '2023-07-25 17:34:06', '2023-07-25 19:34:06'),
(67, 60, 'action complete via WP Cron', '2023-07-25 17:34:06', '2023-07-25 19:34:06'),
(68, 61, 'action created', '2023-07-25 17:34:07', '2023-07-25 19:34:07'),
(69, 61, 'action started via Async Request', '2023-07-25 17:34:13', '2023-07-25 19:34:13'),
(70, 61, 'action complete via Async Request', '2023-07-25 17:34:13', '2023-07-25 19:34:13'),
(71, 62, 'action created', '2023-07-25 17:35:14', '2023-07-25 19:35:14'),
(72, 62, 'action started via WP Cron', '2023-07-25 17:36:22', '2023-07-25 19:36:22'),
(73, 62, 'action complete via WP Cron', '2023-07-25 17:36:22', '2023-07-25 19:36:22'),
(74, 63, 'action created', '2023-07-25 17:37:08', '2023-07-25 19:37:08'),
(75, 63, 'action started via Async Request', '2023-07-25 17:37:36', '2023-07-25 19:37:36'),
(76, 63, 'action complete via Async Request', '2023-07-25 17:37:36', '2023-07-25 19:37:36'),
(77, 64, 'action created', '2023-07-25 17:38:04', '2023-07-25 19:38:04'),
(78, 64, 'action started via Async Request', '2023-07-25 17:38:37', '2023-07-25 19:38:37'),
(79, 64, 'action complete via Async Request', '2023-07-25 17:38:37', '2023-07-25 19:38:37'),
(80, 65, 'action created', '2023-07-25 17:38:41', '2023-07-25 19:38:41'),
(81, 65, 'action started via Async Request', '2023-07-25 17:38:43', '2023-07-25 19:38:43'),
(82, 65, 'action complete via Async Request', '2023-07-25 17:38:43', '2023-07-25 19:38:43'),
(83, 66, 'action created', '2023-07-25 17:39:06', '2023-07-25 19:39:06'),
(84, 66, 'action started via Async Request', '2023-07-25 17:39:39', '2023-07-25 19:39:39'),
(85, 66, 'action complete via Async Request', '2023-07-25 17:39:39', '2023-07-25 19:39:39'),
(86, 67, 'action created', '2023-07-25 17:40:18', '2023-07-25 19:40:18'),
(87, 67, 'action started via Async Request', '2023-07-25 17:40:44', '2023-07-25 19:40:44'),
(88, 67, 'action complete via Async Request', '2023-07-25 17:40:44', '2023-07-25 19:40:44'),
(89, 68, 'action created', '2023-07-25 17:40:45', '2023-07-25 19:40:45'),
(90, 68, 'action started via Async Request', '2023-07-25 17:40:51', '2023-07-25 19:40:51'),
(91, 68, 'action complete via Async Request', '2023-07-25 17:40:51', '2023-07-25 19:40:51'),
(92, 69, 'action created', '2023-07-25 17:43:12', '2023-07-25 19:43:12'),
(93, 70, 'action created', '2023-07-25 17:43:52', '2023-07-25 19:43:52'),
(94, 69, 'action started via WP Cron', '2023-07-25 17:44:01', '2023-07-25 19:44:01'),
(95, 69, 'action complete via WP Cron', '2023-07-25 17:44:01', '2023-07-25 19:44:01'),
(96, 70, 'action started via WP Cron', '2023-07-25 17:44:01', '2023-07-25 19:44:01'),
(97, 70, 'action complete via WP Cron', '2023-07-25 17:44:02', '2023-07-25 19:44:02'),
(98, 71, 'action created', '2023-07-25 17:45:11', '2023-07-25 19:45:11'),
(99, 71, 'action started via Async Request', '2023-07-25 17:45:18', '2023-07-25 19:45:18'),
(100, 71, 'action complete via Async Request', '2023-07-25 17:45:18', '2023-07-25 19:45:18'),
(101, 72, 'action created', '2023-07-25 17:46:20', '2023-07-25 19:46:20'),
(102, 72, 'action started via Async Request', '2023-07-25 17:46:22', '2023-07-25 19:46:22'),
(103, 72, 'action complete via Async Request', '2023-07-25 17:46:22', '2023-07-25 19:46:22'),
(104, 73, 'action created', '2023-07-25 17:52:59', '2023-07-25 19:52:59'),
(105, 73, 'action started via Async Request', '2023-07-25 17:53:36', '2023-07-25 19:53:36'),
(106, 73, 'action complete via Async Request', '2023-07-25 17:53:36', '2023-07-25 19:53:36'),
(107, 74, 'action created', '2023-07-25 18:51:55', '2023-07-25 20:51:55'),
(108, 74, 'action started via WP Cron', '2023-07-25 18:53:08', '2023-07-25 20:53:08'),
(109, 74, 'action complete via WP Cron', '2023-07-25 18:53:08', '2023-07-25 20:53:08'),
(110, 75, 'action created', '2023-07-25 18:53:09', '2023-07-25 20:53:09'),
(111, 75, 'action started via WP Cron', '2023-07-25 18:54:16', '2023-07-25 20:54:16'),
(112, 75, 'action failed via WP Cron: Scheduled action for action_scheduler/migration_hook will not be executed as no callbacks are registered.', '2023-07-25 18:54:16', '2023-07-25 20:54:16'),
(113, 40, 'action started via WP Cron', '2023-07-26 23:45:42', '2023-07-27 01:45:42'),
(114, 40, 'action complete via WP Cron', '2023-07-26 23:45:42', '2023-07-27 01:45:42'),
(115, 76, 'action created', '2023-07-26 23:45:42', '2023-07-27 01:45:42'),
(116, 77, 'action created', '2023-07-27 18:30:57', '2023-07-27 20:30:57'),
(117, 78, 'action created', '2023-07-27 18:31:32', '2023-07-27 20:31:32'),
(118, 77, 'action started via Async Request', '2023-07-27 18:31:45', '2023-07-27 20:31:45'),
(119, 77, 'action complete via Async Request', '2023-07-27 18:31:45', '2023-07-27 20:31:45'),
(120, 78, 'action started via Async Request', '2023-07-27 18:31:45', '2023-07-27 20:31:45'),
(121, 78, 'action complete via Async Request', '2023-07-27 18:31:45', '2023-07-27 20:31:45'),
(122, 79, 'action created', '2023-07-27 18:32:36', '2023-07-27 20:32:36'),
(123, 79, 'action started via WP Cron', '2023-07-27 18:32:56', '2023-07-27 20:32:56'),
(124, 79, 'action complete via WP Cron', '2023-07-27 18:32:56', '2023-07-27 20:32:56'),
(125, 80, 'action created', '2023-07-27 19:09:28', '2023-07-27 21:09:28'),
(126, 80, 'action started via WP Cron', '2023-07-27 19:10:01', '2023-07-27 21:10:01'),
(127, 80, 'action complete via WP Cron', '2023-07-27 19:10:01', '2023-07-27 21:10:01'),
(128, 76, 'action started via WP Cron', '2023-07-28 17:30:30', '2023-07-28 19:30:30'),
(129, 76, 'action complete via WP Cron', '2023-07-28 17:30:30', '2023-07-28 19:30:30'),
(130, 81, 'action created', '2023-07-28 17:30:30', '2023-07-28 19:30:30'),
(131, 81, 'action started via WP Cron', '2023-08-11 02:25:42', '2023-08-11 04:25:42'),
(132, 81, 'action complete via WP Cron', '2023-08-11 02:25:42', '2023-08-11 04:25:42'),
(133, 82, 'action created', '2023-08-11 02:25:42', '2023-08-11 04:25:42'),
(134, 82, 'action started via WP Cron', '2023-08-12 12:45:32', '2023-08-12 14:45:32'),
(135, 82, 'action complete via WP Cron', '2023-08-12 12:45:32', '2023-08-12 14:45:32'),
(136, 83, 'action created', '2023-08-12 12:45:32', '2023-08-12 14:45:32'),
(137, 84, 'action créée', '2023-08-12 12:47:36', '2023-08-12 14:47:36'),
(138, 85, 'action créée', '2023-08-12 12:47:36', '2023-08-12 14:47:36'),
(139, 85, 'action lancée via WP Cron', '2023-08-12 12:48:48', '2023-08-12 14:48:48'),
(140, 85, 'action terminée via WP Cron', '2023-08-12 12:48:48', '2023-08-12 14:48:48'),
(141, 84, 'action lancée via WP Cron', '2023-08-12 12:48:48', '2023-08-12 14:48:48'),
(142, 86, 'action créée', '2023-08-12 12:48:48', '2023-08-12 14:48:48'),
(143, 84, 'action terminée via WP Cron', '2023-08-12 12:48:48', '2023-08-12 14:48:48'),
(144, 86, 'action lancée via Async Request', '2023-08-12 12:48:52', '2023-08-12 14:48:52'),
(145, 86, 'action terminée via Async Request', '2023-08-12 12:48:52', '2023-08-12 14:48:52'),
(146, 87, 'action créée', '2023-08-13 01:41:40', '2023-08-13 03:41:40'),
(147, 87, 'action lancée via Async Request', '2023-08-13 01:42:57', '2023-08-13 03:42:57'),
(148, 87, 'action terminée via Async Request', '2023-08-13 01:42:57', '2023-08-13 03:42:57'),
(149, 88, 'action créée', '2023-08-13 01:42:57', '2023-08-13 03:42:57'),
(150, 88, 'action lancée via WP Cron', '2023-08-13 01:43:59', '2023-08-13 03:43:59'),
(151, 88, 'échec de l’action via WP Cron : L’action planifiée pour action_scheduler/migration_hook ne sera pas exécutée car aucun rappel n’est enregistré.', '2023-08-13 01:43:59', '2023-08-13 03:43:59'),
(152, 83, 'action lancée via WP Cron', '2023-08-15 10:48:28', '2023-08-15 12:48:28'),
(153, 83, 'action terminée via WP Cron', '2023-08-15 10:48:28', '2023-08-15 12:48:28'),
(154, 89, 'action créée', '2023-08-15 10:48:28', '2023-08-15 12:48:28');

-- --------------------------------------------------------

--
-- Structure de la table `electro_commentmeta`
--

DROP TABLE IF EXISTS `electro_commentmeta`;
CREATE TABLE IF NOT EXISTS `electro_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_comments`
--

DROP TABLE IF EXISTS `electro_comments`;
CREATE TABLE IF NOT EXISTS `electro_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_comments`
--

INSERT INTO `electro_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2023-07-22 12:18:42', '2023-07-22 10:18:42', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `electro_links`
--

DROP TABLE IF EXISTS `electro_links`;
CREATE TABLE IF NOT EXISTS `electro_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_options`
--

DROP TABLE IF EXISTS `electro_options`;
CREATE TABLE IF NOT EXISTS `electro_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_options`
--

INSERT INTO `electro_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://electro.mg', 'yes'),
(2, 'home', 'http://electro.mg', 'yes'),
(3, 'blogname', 'Electro', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'haja.ramananjarasoa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:155:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:29:\"acf-extended/acf-extended.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:41:\"post-views-counter/post-views-counter.php\";i:3;s:41:\"wcm-import-produit/wcm-import-produit.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:50:\"wp-batch-processing-master/wp-batch-processing.php\";i:6;s:47:\"wp-pagination-loading/wp-pagination-loading.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'electro', 'yes'),
(41, 'stylesheet', 'electro', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '8', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1705573122', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'electro_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"webmaster\";a:2:{s:4:\"name\";s:9:\"Webmaster\";s:12:\"capabilities\";a:0:{}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:19:{i:1692112015;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1692112722;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692113756;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692113757;a:3:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692113763;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692114456;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692114631;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1692125256;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692136800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692137922;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692137936;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692181122;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692181136;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692182386;a:1:{s:16:\"pvc_reset_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:27:\"post_views_counter_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692190066;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692449191;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1692526722;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1693140516;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'nonce_key', 'xw[u.%x:Wzen-ys)uSnU?b&fy-<8$i&dte(eI@`{*miTg89t#/x:u(kl$?&oJ-+r', 'no'),
(117, 'nonce_salt', '0th4>`d4qP{XW+gE_`Y04sH`Xe?jrLKvrCB{oN(*|yargySs~Uwh5Z`Y|F~$]6t%', 'no'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(132, 'auth_key', 'uvuM-lu3rU4]o2]1[C$bHU7T$]pdRaha!M]*KXQT)^rm4PamU2-dm4uzXRfJ)^ed', 'no'),
(124, 'recovery_keys', 'a:1:{s:22:\"dYiicrR78nIJdwz7tINJmV\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BRkLUHzAW0x3JIfupE9OxfG5N6hdwr.\";s:10:\"created_at\";i:1692109881;}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1690022025;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(1815, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1692141877', 'no'),
(1816, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: L’URL fournie n’est pas valide.</p></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: L’URL fournie n’est pas valide.</p></div>', 'no'),
(1809, '_site_transient_timeout_theme_roots', '1692100209', 'no'),
(1810, '_site_transient_theme_roots', 'a:1:{s:7:\"electro\";s:7:\"/themes\";}', 'no'),
(133, 'auth_salt', 'b)iGtbp`F-0C2k:]{+D 8W7{UNBn(;v2&M@jHurVaP `e~7]@_~7`0w0],8rV3 ,', 'no'),
(134, 'logged_in_key', '.avf@]7>]tz[UdtYl1Q6c4kvPRgd>1PR<Q?/!XQIkG,E_99zik;uhjj}JytY J~I', 'no'),
(135, 'logged_in_salt', 'bD*.62seT=f7ZB!RJ:SK`pUq,4`&^Klg NXNqPKO1$@&=J2fbK,!P[e$;M;.j#&n', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(140, 'recently_activated', 'a:1:{s:41:\"wp-progress-action/wp-progress-action.php\";i:1691890898;}', 'yes'),
(144, 'current_theme', 'Electro', 'yes'),
(145, 'theme_mods_electro', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:13:\"menu_category\";i:38;s:7:\"primary\";i:9;s:16:\"menu_information\";i:8;s:12:\"menu_service\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1690032178;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'widget_connexion', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'theme_mods_electro-master', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1690032243;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(270, 'woocommerce_currency', 'MGA', 'yes'),
(271, 'woocommerce_currency_pos', 'right', 'yes'),
(263, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(192, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":2}', 'yes'),
(212, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(256, 'woocommerce_store_address', '', 'yes'),
(257, 'woocommerce_store_address_2', '', 'yes'),
(148, 'acf_version', '6.0.7', 'yes'),
(149, 'acfe', 'a:2:{s:7:\"version\";s:7:\"0.8.9.3\";s:7:\"modules\";a:4:{s:11:\"block_types\";a:0:{}s:13:\"options_pages\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}}}', 'yes'),
(258, 'woocommerce_store_city', '', 'yes'),
(150, 'post_views_counter_settings_general', 'a:16:{s:16:\"post_types_count\";a:1:{i:0;s:4:\"post\";}s:12:\"counter_mode\";s:3:\"php\";s:17:\"post_views_column\";b:1;s:19:\"restrict_edit_views\";b:0;s:19:\"time_between_counts\";a:2:{s:6:\"number\";i:24;s:4:\"type\";s:5:\"hours\";}s:12:\"reset_counts\";a:2:{s:6:\"number\";i:30;s:4:\"type\";s:4:\"days\";}s:14:\"flush_interval\";a:2:{s:6:\"number\";i:0;s:4:\"type\";s:7:\"minutes\";}s:7:\"exclude\";a:2:{s:6:\"groups\";a:2:{i:0;s:6:\"robots\";i:1;s:6:\"guests\";}s:5:\"roles\";a:0:{}}s:11:\"exclude_ips\";a:0:{}s:13:\"strict_counts\";b:0;s:19:\"deactivation_delete\";b:0;s:8:\"cron_run\";b:1;s:11:\"cron_update\";b:0;s:14:\"update_version\";i:2;s:13:\"update_notice\";b:0;s:17:\"update_delay_date\";i:0;}', 'no'),
(151, 'post_views_counter_settings_display', 'a:8:{s:5:\"label\";s:11:\"Post Views:\";s:18:\"post_types_display\";a:1:{i:0;s:4:\"post\";}s:18:\"page_types_display\";a:3:{i:0;s:7:\"archive\";i:1;s:8:\"singular\";i:2;s:6:\"search\";}s:8:\"position\";s:5:\"after\";s:13:\"display_style\";a:2:{s:4:\"icon\";b:0;s:4:\"text\";b:0;}s:10:\"icon_class\";s:19:\"dashicons-chart-bar\";s:18:\"toolbar_statistics\";b:0;s:16:\"restrict_display\";a:2:{s:6:\"groups\";a:0:{}s:5:\"roles\";a:0:{}}}', 'no'),
(152, 'post_views_counter_version', '1.3.13', 'no'),
(207, 'electro_theme_options', 'a:7:{s:4:\"logo\";s:53:\"http://electro.mg/wp-content/uploads/2023/07/logo.png\";s:7:\"favicon\";s:71:\"http://electro.mg/wp-content/uploads/2023/07/favicon-e1690034891467.jpg\";s:9:\"copyright\";s:69:\"Copyright ©2023 All rights reserved | This template is made with  by\";s:5:\"phone\";s:14:\" +021-95-51-84\";s:5:\"email\";s:29:\"haja.ramananjarasoa@gmail.com\";s:7:\"address\";s:20:\" 1734 Stonecoal Road\";s:11:\"description\";s:206:\"Electro Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.                                                                                                        \";}', 'yes'),
(153, 'widget_post_views_counter_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'category_children', 'a:0:{}', 'yes'),
(272, 'woocommerce_price_thousand_sep', ',', 'yes'),
(273, 'woocommerce_price_decimal_sep', '.', 'yes'),
(154, 'gs_acf_icons_version', '0.1.3', 'yes'),
(156, 'post_views_counter_activation_date', '1690022345', 'yes'),
(264, 'woocommerce_ship_to_countries', '', 'yes'),
(265, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(266, 'woocommerce_default_customer_address', 'base', 'yes'),
(267, 'woocommerce_calc_taxes', 'no', 'yes'),
(268, 'woocommerce_enable_coupons', 'yes', 'yes'),
(175, 'recovery_mode_email_last_sent', '1692109881', 'yes'),
(269, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(259, 'woocommerce_default_country', 'MG', 'yes'),
(260, 'woocommerce_store_postcode', '', 'yes'),
(261, 'woocommerce_allowed_countries', 'all', 'yes'),
(262, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(250, 'action_scheduler_hybrid_store_demarkation', '37', 'yes'),
(251, 'schema-ActionScheduler_StoreSchema', '7.0.1690299355', 'yes'),
(252, 'schema-ActionScheduler_LoggerSchema', '3.0.1690299355', 'yes'),
(385, 'woocommerce_admin_install_timestamp', '1690299357', 'yes'),
(255, 'woocommerce_schema_version', '430', 'yes'),
(274, 'woocommerce_price_num_decimals', '2', 'yes'),
(275, 'woocommerce_shop_page_id', '38', 'yes'),
(276, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(277, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(278, 'woocommerce_placeholder_image', '37', 'yes'),
(279, 'woocommerce_weight_unit', 'kg', 'yes'),
(280, 'woocommerce_dimension_unit', 'cm', 'yes'),
(281, 'woocommerce_enable_reviews', 'yes', 'yes'),
(282, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(283, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(284, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(285, 'woocommerce_review_rating_required', 'yes', 'no'),
(286, 'woocommerce_manage_stock', 'yes', 'yes'),
(287, 'woocommerce_hold_stock_minutes', '60', 'no'),
(288, 'woocommerce_notify_low_stock', 'yes', 'no'),
(289, 'woocommerce_notify_no_stock', 'yes', 'no'),
(290, 'woocommerce_stock_email_recipient', 'haja.ramananjarasoa@gmail.com', 'no'),
(291, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(292, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(293, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(294, 'woocommerce_stock_format', '', 'yes'),
(295, 'woocommerce_file_download_method', 'force', 'no'),
(296, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(297, 'woocommerce_downloads_require_login', 'no', 'no'),
(298, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(299, 'woocommerce_downloads_deliver_inline', '', 'no'),
(300, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(302, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(303, 'woocommerce_prices_include_tax', 'no', 'yes'),
(304, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(305, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(306, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(307, 'woocommerce_tax_classes', '', 'yes'),
(308, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(309, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(310, 'woocommerce_price_display_suffix', '', 'yes'),
(311, 'woocommerce_tax_total_display', 'itemized', 'no'),
(312, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(313, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(314, 'woocommerce_ship_to_destination', 'billing', 'no'),
(315, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(316, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(317, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(318, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(319, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(320, 'woocommerce_registration_generate_username', 'yes', 'no'),
(321, 'woocommerce_registration_generate_password', 'yes', 'no'),
(322, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(323, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(324, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(325, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(326, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(327, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(328, 'woocommerce_trash_pending_orders', '', 'no'),
(329, 'woocommerce_trash_failed_orders', '', 'no'),
(330, 'woocommerce_trash_cancelled_orders', '', 'no'),
(331, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(332, 'woocommerce_email_from_name', 'Electro', 'no'),
(333, 'woocommerce_email_from_address', 'haja.ramananjarasoa@gmail.com', 'no'),
(334, 'woocommerce_email_header_image', '', 'no'),
(335, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(336, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(337, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(338, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(339, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(340, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(341, 'woocommerce_cart_page_id', '39', 'no'),
(342, 'woocommerce_checkout_page_id', '40', 'no'),
(343, 'woocommerce_myaccount_page_id', '41', 'no'),
(344, 'woocommerce_terms_page_id', '', 'no'),
(345, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(346, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(347, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(348, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(349, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(350, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(351, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(352, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(353, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(354, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(355, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(356, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(357, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(358, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(359, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(360, 'woocommerce_api_enabled', 'no', 'yes'),
(361, 'woocommerce_allow_tracking', 'yes', 'no'),
(362, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(363, 'woocommerce_analytics_enabled', 'yes', 'yes'),
(364, 'woocommerce_navigation_enabled', 'no', 'yes'),
(365, 'woocommerce_feature_product_block_editor_enabled', 'no', 'yes'),
(366, 'woocommerce_feature_custom_order_tables_enabled', 'no', 'yes'),
(367, 'woocommerce_single_image_width', '600', 'yes'),
(368, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(369, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(370, 'woocommerce_demo_store', 'no', 'no'),
(371, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(372, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(373, 'current_theme_supports_woocommerce', 'no', 'yes'),
(374, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes');
INSERT INTO `electro_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1521, 'jie_options', 'a:2:{s:7:\"libelle\";a:27:{s:4:\"post\";a:1:{i:0;s:0:\"\";}s:4:\"page\";a:1:{i:0;s:0:\"\";}s:10:\"attachment\";a:1:{i:0;s:0:\"\";}s:8:\"revision\";a:1:{i:0;s:0:\"\";}s:13:\"nav_menu_item\";a:1:{i:0;s:0:\"\";}s:10:\"custom_css\";a:1:{i:0;s:0:\"\";}s:19:\"customize_changeset\";a:1:{i:0;s:0:\"\";}s:12:\"oembed_cache\";a:1:{i:0;s:0:\"\";}s:12:\"user_request\";a:1:{i:0;s:0:\"\";}s:8:\"wp_block\";a:1:{i:0;s:0:\"\";}s:11:\"wp_template\";a:1:{i:0;s:0:\"\";}s:16:\"wp_template_part\";a:1:{i:0;s:0:\"\";}s:16:\"wp_global_styles\";a:1:{i:0;s:0:\"\";}s:13:\"wp_navigation\";a:1:{i:0;s:0:\"\";}s:15:\"acf-field-group\";a:1:{i:0;s:0:\"\";}s:9:\"acf-field\";a:1:{i:0;s:0:\"\";}s:7:\"product\";a:1:{i:0;s:12:\"Import Excel\";}s:17:\"product_variation\";a:1:{i:0;s:0:\"\";}s:10:\"shop_order\";a:1:{i:0;s:0:\"\";}s:17:\"shop_order_refund\";a:1:{i:0;s:0:\"\";}s:11:\"shop_coupon\";a:1:{i:0;s:0:\"\";}s:20:\"shop_order_placehold\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dbt\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dpt\";a:1:{i:0;s:0:\"\";}s:7:\"acfe-dt\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dop\";a:1:{i:0;s:0:\"\";}s:9:\"acfe-form\";a:1:{i:0;s:0:\"\";}}s:4:\"slug\";a:27:{s:4:\"post\";a:1:{i:0;s:0:\"\";}s:4:\"page\";a:1:{i:0;s:0:\"\";}s:10:\"attachment\";a:1:{i:0;s:0:\"\";}s:8:\"revision\";a:1:{i:0;s:0:\"\";}s:13:\"nav_menu_item\";a:1:{i:0;s:0:\"\";}s:10:\"custom_css\";a:1:{i:0;s:0:\"\";}s:19:\"customize_changeset\";a:1:{i:0;s:0:\"\";}s:12:\"oembed_cache\";a:1:{i:0;s:0:\"\";}s:12:\"user_request\";a:1:{i:0;s:0:\"\";}s:8:\"wp_block\";a:1:{i:0;s:0:\"\";}s:11:\"wp_template\";a:1:{i:0;s:0:\"\";}s:16:\"wp_template_part\";a:1:{i:0;s:0:\"\";}s:16:\"wp_global_styles\";a:1:{i:0;s:0:\"\";}s:13:\"wp_navigation\";a:1:{i:0;s:0:\"\";}s:15:\"acf-field-group\";a:1:{i:0;s:0:\"\";}s:9:\"acf-field\";a:1:{i:0;s:0:\"\";}s:7:\"product\";a:1:{i:0;s:12:\"import-excel\";}s:17:\"product_variation\";a:1:{i:0;s:0:\"\";}s:10:\"shop_order\";a:1:{i:0;s:0:\"\";}s:17:\"shop_order_refund\";a:1:{i:0;s:0:\"\";}s:11:\"shop_coupon\";a:1:{i:0;s:0:\"\";}s:20:\"shop_order_placehold\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dbt\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dpt\";a:1:{i:0;s:0:\"\";}s:7:\"acfe-dt\";a:1:{i:0;s:0:\"\";}s:8:\"acfe-dop\";a:1:{i:0;s:0:\"\";}s:9:\"acfe-form\";a:1:{i:0;s:0:\"\";}}}', 'yes'),
(548, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(1595, 'woocommerce_custom_orders_table_enabled', 'no', 'yes'),
(535, 'product_cat_children', 'a:0:{}', 'yes'),
(377, 'default_product_cat', '23', 'yes'),
(379, 'woocommerce_refund_returns_page_id', '42', 'yes'),
(424, 'wc_blocks_db_schema_version', '260', 'yes'),
(425, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(382, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:29:\"haja.ramananjarasoa@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:29:\"haja.ramananjarasoa@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(383, 'woocommerce_version', '8.0.1', 'yes'),
(384, 'woocommerce_db_version', '8.0.1', 'yes'),
(386, 'woocommerce_inbox_variant_assignment', '8', 'yes'),
(394, 'jetpack_connection_active_plugins', 'a:1:{s:11:\"woocommerce\";a:1:{s:4:\"name\";s:11:\"WooCommerce\";}}', 'yes'),
(390, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(391, 'action_scheduler_lock_async-request-runner', '1692112015', 'yes'),
(392, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(393, 'wc_blocks_version', '10.6.5', 'yes'),
(395, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"8ZvDf49G1eF4jOXmG7jmQbNxktkPnGN7\";}', 'yes'),
(396, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(397, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(398, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(399, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(400, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(402, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(403, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(405, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(406, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(407, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(408, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(421, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1438, '_transient_timeout_woocommerce_admin_payment_gateway_suggestions_specs', '1692449135', 'no');
INSERT INTO `electro_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1439, '_transient_woocommerce_admin_payment_gateway_suggestions_specs', 'a:1:{s:5:\"fr_FR\";a:22:{s:6:\"affirm\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"affirm\";s:5:\"title\";s:6:\"Affirm\";s:7:\"content\";s:233:\"Les programmes sur mesure Acheter maintenant, payer ultérieurement d’Affirm suppriment le prix comme obstacle, transformant les internautes en acheteurs, augmentant la valeur moyenne des commandes et élargissant votre clientèle.\";s:5:\"image\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:7:\"plugins\";a:0:{}s:13:\"external_link\";s:59:\"https://woocommerce.com/products/woocommerce-gateway-affirm\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}s:23:\"recommendation_priority\";i:8;}s:8:\"afterpay\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"afterpay\";s:5:\"title\";s:8:\"Afterpay\";s:7:\"content\";s:144:\"Afterpay permet aux clients de recevoir leurs produits tout de suite et de régler leurs achats en quatre échéances, toujours sans intérêts.\";s:5:\"image\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:3:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AU\";}s:23:\"recommendation_priority\";i:9;}s:24:\"amazon_payments_advanced\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"amazon_payments_advanced\";s:5:\"title\";s:10:\"Amazon Pay\";s:7:\"content\";s:123:\"Offrez une validation de commande rapide et familière à des centaines de millions de clients Amazon actifs dans le monde.\";s:5:\"image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-amazon-payments-advanced\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:18:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:18:{i:0;s:2:\"US\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"CY\";i:4;s:2:\"DK\";i:5;s:2:\"ES\";i:6;s:2:\"FR\";i:7;s:2:\"DE\";i:8;s:2:\"GB\";i:9;s:2:\"HU\";i:10;s:2:\"IE\";i:11;s:2:\"IT\";i:12;s:2:\"LU\";i:13;s:2:\"NL\";i:14;s:2:\"PT\";i:15;s:2:\"SL\";i:16;s:2:\"SE\";i:17;s:2:\"JP\";}s:23:\"recommendation_priority\";i:7;}s:4:\"bacs\";O:8:\"stdClass\":8:{s:2:\"id\";s:4:\"bacs\";s:5:\"title\";s:17:\"Virement bancaire\";s:7:\"content\";s:45:\"Acceptez les paiements par virement bancaire.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/bacs.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/bacs.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;s:23:\"recommendation_priority\";N;}s:3:\"cod\";O:8:\"stdClass\":8:{s:2:\"id\";s:3:\"cod\";s:5:\"title\";s:24:\"Paiement à la livraison\";s:7:\"content\";s:51:\"Acceptez les paiements en espèces à la livraison.\";s:5:\"image\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/cod.svg\";s:11:\"image_72x72\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/cod.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;s:23:\"recommendation_priority\";N;}s:4:\"eway\";O:8:\"stdClass\":11:{s:2:\"id\";s:4:\"eway\";s:5:\"title\";s:4:\"Eway\";s:7:\"content\";s:185:\"L’extension Eway pour WooCommerce vous permet d’accepter les paiements par carte de crédit directement sur votre boutique sans rediriger vos clients vers un site de paiement tiers.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway.png\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/eway.png\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway-square.png\";s:7:\"plugins\";a:1:{i:0;s:24:\"woocommerce-gateway-eway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:4:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:4:{i:0;s:2:\"NZ\";i:1;s:2:\"HK\";i:2;s:2:\"SG\";i:3;s:2:\"AU\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:7;}s:3:\"kco\";O:8:\"stdClass\":10:{s:2:\"id\";s:3:\"kco\";s:5:\"title\";s:15:\"Commande Klarna\";s:7:\"content\";s:173:\"Choisissez le paiement que vous voulez, payez maintenant, ultérieurement ou en plusieurs fois. Pas de numéros de carte de crédit, pas de mots de passe, pas de problèmes.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-checkout-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"NO\";i:1;s:2:\"SE\";i:2;s:2:\"FI\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:15:\"klarna_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:15:\"klarna_payments\";s:5:\"title\";s:15:\"Klarna Payments\";s:7:\"content\";s:173:\"Choisissez le paiement que vous voulez, payez maintenant, ultérieurement ou en plusieurs fois. Pas de numéros de carte de crédit, pas de mots de passe, pas de problèmes.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:19:{i:0;s:2:\"MX\";i:1;s:2:\"US\";i:2;s:2:\"CA\";i:3;s:2:\"AT\";i:4;s:2:\"BE\";i:5;s:2:\"CH\";i:6;s:2:\"DK\";i:7;s:2:\"ES\";i:8;s:2:\"FI\";i:9;s:2:\"FR\";i:10;s:2:\"DE\";i:11;s:2:\"GB\";i:12;s:2:\"IT\";i:13;s:2:\"NL\";i:14;s:2:\"NO\";i:15;s:2:\"PL\";i:16;s:2:\"SE\";i:17;s:2:\"NZ\";i:18;s:2:\"AU\";}s:23:\"recommendation_priority\";i:6;}s:30:\"mollie_wc_gateway_banktransfer\";O:8:\"stdClass\":11:{s:2:\"id\";s:30:\"mollie_wc_gateway_banktransfer\";s:5:\"title\";s:6:\"Mollie\";s:7:\"content\";s:157:\"Paiements simplifiés par Mollie : proposez des moyens de paiement mondiaux et locaux, intégrables en quelques minutes et pris en charge dans votre langue.\";s:5:\"image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie.svg\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mollie.png\";s:12:\"square_image\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie-square.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"mollie-payments-for-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:11:{i:0;s:2:\"AT\";i:1;s:2:\"BE\";i:2;s:2:\"CH\";i:3;s:2:\"ES\";i:4;s:2:\"FI\";i:5;s:2:\"FR\";i:6;s:2:\"DE\";i:7;s:2:\"GB\";i:8;s:2:\"IT\";i:9;s:2:\"NL\";i:10;s:2:\"PL\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:7:\"payfast\";O:8:\"stdClass\":10:{s:2:\"id\";s:7:\"payfast\";s:5:\"title\";s:7:\"Payfast\";s:7:\"content\";s:371:\"L’extension Payfast pour WooCommerce vous permet d’accepter les paiements par carte de crédit et transfert bancaire via l’une des passerelles de paiement les plus populaires en Afrique du Sud. Aucun frais d’installation ni abonnement mensuel. Si vous sélectionnez cette extension, votre boutique sera configurée pour utiliser le rand sud-africain comme devise.\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/payfast.png\";s:11:\"image_72x72\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payfast.png\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-payfast-gateway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"ZA\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:17:\"payoneer-checkout\";O:8:\"stdClass\":10:{s:2:\"id\";s:17:\"payoneer-checkout\";s:5:\"title\";s:17:\"Payoneer Checkout\";s:7:\"content\";s:265:\"Payoneer Checkout est la nouvelle génération de plateformes de traitement des paiements. Elle offre aux commerçants du monde entier les solutions et l’orientation dont ils ont besoin pour s’imposer sur le marché mondial hyperconcurrentiel d’aujourd’hui.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payoneer.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payoneer.png\";s:7:\"plugins\";a:1:{i:0;s:17:\"payoneer-checkout\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CN\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"HK\";i:1;s:2:\"CN\";}s:23:\"recommendation_priority\";i:11;}s:8:\"paystack\";O:8:\"stdClass\":11:{s:2:\"id\";s:8:\"paystack\";s:5:\"title\";s:8:\"Paystack\";s:7:\"content\";s:163:\"Paystack aide les commerçants africains à accepter des paiements ponctuels et récurrents en ligne avec une passerelle de paiement moderne, sûre et sécurisée.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack.png\";s:12:\"square_image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack-square.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paystack.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-paystack\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:7:\"payubiz\";O:8:\"stdClass\":10:{s:2:\"id\";s:7:\"payubiz\";s:5:\"title\";s:20:\"PayU for WooCommerce\";s:7:\"content\";s:232:\"Activez l’extension exclusive de PayU pour WooCommerce pour commencer à accepter les paiements avec plus de 100 moyens de paiement disponibles en Inde, notamment les cartes de crédit, les cartes de débit, UPI et plus encore !\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payu.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payu.png\";s:7:\"plugins\";a:1:{i:0;s:10:\"payu-india\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:12:\"ppcp-gateway\";O:8:\"stdClass\":11:{s:2:\"id\";s:12:\"ppcp-gateway\";s:5:\"title\";s:15:\"PayPal Payments\";s:7:\"content\";s:99:\"Paiement sûr et sécurisé à l’aide de votre carte de crédit ou de votre compte client Paypal.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/paypal.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paypal.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paypal.svg\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:49:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EC\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CN\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:48:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AR\";i:5;s:2:\"CL\";i:6;s:2:\"CO\";i:7;s:2:\"EC\";i:8;s:2:\"PE\";i:9;s:2:\"UY\";i:10;s:2:\"VE\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"BG\";i:14;s:2:\"HR\";i:15;s:2:\"CH\";i:16;s:2:\"CY\";i:17;s:2:\"CZ\";i:18;s:2:\"DK\";i:19;s:2:\"EE\";i:20;s:2:\"ES\";i:21;s:2:\"FI\";i:22;s:2:\"FR\";i:23;s:2:\"DE\";i:24;s:2:\"GB\";i:25;s:2:\"GR\";i:26;s:2:\"HU\";i:27;s:2:\"IE\";i:28;s:2:\"IT\";i:29;s:2:\"LV\";i:30;s:2:\"LT\";i:31;s:2:\"LU\";i:32;s:2:\"MT\";i:33;s:2:\"NL\";i:34;s:2:\"NO\";i:35;s:2:\"PL\";i:36;s:2:\"PT\";i:37;s:2:\"RO\";i:38;s:2:\"SK\";i:39;s:2:\"SL\";i:40;s:2:\"SE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";}s:19:\"category_additional\";a:49:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AR\";i:5;s:2:\"CL\";i:6;s:2:\"CO\";i:7;s:2:\"EC\";i:8;s:2:\"PE\";i:9;s:2:\"UY\";i:10;s:2:\"VE\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"BG\";i:14;s:2:\"HR\";i:15;s:2:\"CH\";i:16;s:2:\"CY\";i:17;s:2:\"CZ\";i:18;s:2:\"DK\";i:19;s:2:\"EE\";i:20;s:2:\"ES\";i:21;s:2:\"FI\";i:22;s:2:\"FR\";i:23;s:2:\"DE\";i:24;s:2:\"GB\";i:25;s:2:\"GR\";i:26;s:2:\"HU\";i:27;s:2:\"IE\";i:28;s:2:\"IT\";i:29;s:2:\"LV\";i:30;s:2:\"LT\";i:31;s:2:\"LU\";i:32;s:2:\"MT\";i:33;s:2:\"NL\";i:34;s:2:\"NO\";i:35;s:2:\"PL\";i:36;s:2:\"PT\";i:37;s:2:\"RO\";i:38;s:2:\"SK\";i:39;s:2:\"SL\";i:40;s:2:\"SE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"IN\";}s:23:\"recommendation_priority\";i:4;}s:8:\"razorpay\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"razorpay\";s:5:\"title\";s:8:\"Razorpay\";s:7:\"content\";s:177:\"L’extension Razorpay officielle de WooCommerce vous permet d’accepter les paiements par carte de crédit, carte de débit, virement par Internet, via un portefeuille et UPI.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/razorpay.svg\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/razorpay.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-razorpay\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:18:\"square_credit_card\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"square_credit_card\";s:5:\"title\";s:6:\"Square\";s:7:\"content\";s:270:\"Acceptez en toute sécurité les cartes de crédit et de débit pour un tarif modique unique et sans frais inattendus (tarifs personnalisés disponibles). Vendez en ligne et en boutique, et suivez l’évolution des ventes ainsi que du stock à un seul et même endroit.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/square-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/square.png\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:1:\"1\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:8:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:12:\"brick-mortar\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:18:\"brick-mortar-other\";}}}s:1:\"1\";O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:21:\"selling_online_answer\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:21:\"no_im_selling_offline\";s:7:\"default\";a:0:{}}}}}}}}s:14:\"category_other\";a:8:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"IE\";i:3;s:2:\"ES\";i:4;s:2:\"FR\";i:5;s:2:\"GB\";i:6;s:2:\"AU\";i:7;s:2:\"JP\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:6:\"stripe\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"stripe\";s:5:\"title\";s:6:\"Stripe\";s:7:\"content\";s:150:\"Acceptez les cartes de débit et de crédit dans plus de 135 devises, des modes de paiement tels qu’Alipay et le paiement en un clic avec Apple Pay.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/stripe.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/stripe.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/stripe.svg\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:40:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AT\";i:5;s:2:\"BE\";i:6;s:2:\"BG\";i:7;s:2:\"CH\";i:8;s:2:\"CY\";i:9;s:2:\"CZ\";i:10;s:2:\"DK\";i:11;s:2:\"EE\";i:12;s:2:\"ES\";i:13;s:2:\"FI\";i:14;s:2:\"FR\";i:15;s:2:\"DE\";i:16;s:2:\"GB\";i:17;s:2:\"GR\";i:18;s:2:\"HU\";i:19;s:2:\"IE\";i:20;s:2:\"IT\";i:21;s:2:\"LV\";i:22;s:2:\"LT\";i:23;s:2:\"LU\";i:24;s:2:\"MT\";i:25;s:2:\"NL\";i:26;s:2:\"NO\";i:27;s:2:\"PL\";i:28;s:2:\"PT\";i:29;s:2:\"RO\";i:30;s:2:\"SK\";i:31;s:2:\"SL\";i:32;s:2:\"SE\";i:33;s:2:\"AU\";i:34;s:2:\"NZ\";i:35;s:2:\"HK\";i:36;s:2:\"JP\";i:37;s:2:\"SG\";i:38;s:2:\"ID\";i:39;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:2;}s:23:\"woo-mercado-pago-custom\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"woo-mercado-pago-custom\";s:5:\"title\";s:88:\"Intégration Checkout Pro et validation personnalisée des commandes avec Mercado Pago\";s:7:\"content\";s:306:\"Mercado Pago vous permet de recevoir des paiements par carte de crédit et de débit, ainsi que des versements hors-ligne (en liquide ou via virement bancaire) et en ligne. Bénéficiez de paiements sûrs et sécurisés avec l’organisme de traitement des paiements le plus important de la région LATAM.\";s:5:\"image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mercadopago.png\";s:11:\"image_72x72\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mercadopago.png\";s:7:\"plugins\";a:1:{i:0;s:23:\"woocommerce-mercadopago\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:8:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EC\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}}}}s:16:\"is_local_partner\";b:1;s:14:\"category_other\";a:8:{i:0;s:2:\"AR\";i:1;s:2:\"CL\";i:2;s:2:\"CO\";i:3;s:2:\"EC\";i:4;s:2:\"PE\";i:5;s:2:\"UY\";i:6;s:2:\"MX\";i:7;s:2:\"BR\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:3;}s:20:\"woocommerce_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:98:\"Gérez les transactions sans quitter votre tableau de bord WordPress. Uniquement avec WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:325:\"Avec WooPayments, vous pouvez accepter en toute sécurité les principales cartes bancaires, Apple Pay et les paiements dans plus de 100 devises. Suivez vos rentrées d’argent et gérez vos paiements récurrents directement à partir du tableau de bord de votre boutique, sans frais d’installation ou abonnement mensuel.\";s:10:\"is_visible\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:39:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:1:\"<\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:1:\"<\";}}}}s:23:\"recommendation_priority\";i:1;}s:47:\"woocommerce_payments:without-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"woocommerce_payments:without-in-person-payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:98:\"Gérez les transactions sans quitter votre tableau de bord WordPress. Uniquement avec WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:325:\"Avec WooPayments, vous pouvez accepter en toute sécurité les principales cartes bancaires, Apple Pay et les paiements dans plus de 100 devises. Suivez vos rentrées d’argent et gérez vos paiements récurrents directement à partir du tableau de bord de votre boutique, sans frais d’installation ou abonnement mensuel.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:37:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:44:\"woocommerce_payments:with-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"woocommerce_payments:with-in-person-payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:98:\"Gérez les transactions sans quitter votre tableau de bord WordPress. Uniquement avec WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:292:\"WooPayments vous permet d’accepter en toute sécurité les paiements avec les principales cartes et via Apple Pay dans plus de 100 devises sans frais d’installation ni frais mensuels. Par ailleurs, vous pouvez désormais accepter les paiements en personne via l’application mobile Woo.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:8:\"zipmoney\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"zipmoney\";s:5:\"title\";s:50:\"Zip Co - Acheter maintenant, payer ultérieurement\";s:7:\"content\";s:92:\"Permettez à vos clients de payer plus tard sans intérêt et regardez vos ventes augmenter.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/zipmoney.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/zipmoney.png\";s:7:\"plugins\";a:1:{i:0;s:29:\"zipmoney-payments-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"fail\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:3:{i:0;s:2:\"US\";i:1;s:2:\"NZ\";i:2;s:2:\"AU\";}s:23:\"recommendation_priority\";i:10;}}}', 'no');
INSERT INTO `electro_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1604, '_transient_timeout_woocommerce_admin_remote_free_extensions_specs', '1692715644', 'no'),
(1605, '_transient_woocommerce_admin_remote_free_extensions_specs', 'a:1:{s:5:\"fr_FR\";a:0:{}}', 'no'),
(420, 'jetpack_options', 'a:2:{s:14:\"last_heartbeat\";i:1692096525;s:28:\"fallback_no_verify_ssl_certs\";i:0;}', 'yes'),
(456, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(430, '_transient_woocommerce_reports-transient-version', '1690299362', 'yes'),
(438, 'woocommerce_task_list_tracked_completed_tasks', 'a:9:{i:0;s:8:\"purchase\";i:1;s:8:\"shipping\";i:2;s:14:\"get-mobile-app\";i:3;s:23:\"tour-in-app-marketplace\";i:4;s:8:\"products\";i:5;s:8:\"payments\";i:6;s:3:\"tax\";i:7;s:10:\"appearance\";i:8;s:15:\"review-shipping\";}', 'yes'),
(446, 'wc_has_tracked_default_theme', '1', 'yes'),
(447, 'woocommerce_onboarding_profile', 'a:7:{s:15:\"business_choice\";s:28:\"im_just_starting_my_business\";s:21:\"selling_online_answer\";N;s:17:\"selling_platforms\";N;s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;s:25:\"electronics_and_computers\";}s:9:\"completed\";b:1;s:23:\"is_plugins_page_skipped\";b:1;}', 'yes'),
(449, 'jetpack_tos_agreed', '1', 'yes'),
(450, 'jetpack_secrets', 'a:2:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"mvqsuchubenVx4S3PHpyDmxOTqvd6sZD\";s:8:\"secret_2\";s:32:\"oTxnodgBrEp25PiQ12DnfgSOMX4lCEoy\";s:3:\"exp\";i:1690300024;}s:19:\"jetpack_authorize_1\";a:3:{s:8:\"secret_1\";s:32:\"pEzYG2BBpvSTLFSKzkJH6UNEJoC7pQbv\";s:8:\"secret_2\";s:32:\"XK1wAXxEumuim4bJBQJdqMJvEnQkNcmJ\";s:3:\"exp\";i:1690306624;}}', 'no'),
(481, '_transient_product_query-transient-version', '1691721469', 'yes'),
(451, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(452, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(453, '_transient_jetpack_assumed_site_creation_date', '2023-07-22 10:18:42', 'yes'),
(455, '_transient_shipping-transient-version', '1690299457', 'yes'),
(457, '_transient_woocommerce_shipping_task_zone_count_transient', '1', 'yes'),
(458, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(468, 'woocommerce_admin_dismissed_mobile_app_modal', 'yes', 'yes'),
(469, '_transient_timeout_wc_shipping_method_count', '1692891503', 'no'),
(470, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1690299457\";s:5:\"value\";i:1;}', 'no'),
(476, 'woocommerce_admin_dismissed_in_app_marketplace_tour', 'yes', 'yes'),
(518, '_transient_timeout_wc_shipping_method_count_legacy', '1692895251', 'no'),
(486, '_transient_product-transient-version', '1691720743', 'yes'),
(525, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(519, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1690299457\";s:5:\"value\";i:1;}', 'no'),
(524, 'woocommerce_ces_tracks_queue', 'a:0:{}', 'yes'),
(526, 'woocommerce_ces_shown_for_actions', 'a:2:{i:0;s:15:\"import_products\";i:1;s:19:\"product_add_publish\";}', 'yes'),
(550, 'woocommerce_no_sales_tax', '1', 'yes'),
(555, 'woocommerce_task_list_tracked_completed_actions', 'a:2:{i:0;s:9:\"marketing\";i:1;s:10:\"appearance\";}', 'yes'),
(557, 'woocommerce_onboarding_homepage_post_id', '51', 'yes'),
(558, 'woocommerce_demo_store_notice', '', 'yes'),
(560, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(561, 'woocommerce_task_list_completed_lists', 'a:1:{i:0;s:8:\"extended\";}', 'yes'),
(877, 'woocommerce_tracker_ua', 'a:2:{i:0;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";i:1;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";}', 'no'),
(873, 'woocommerce_tracker_last_send', '1691720749', 'yes'),
(608, '_transient_timeout_wc_blocks_query_a2b91f287e9580126f884bef17102b58', '1693075289', 'no'),
(609, '_transient_wc_blocks_query_a2b91f287e9580126f884bef17102b58', 'a:2:{s:7:\"version\";s:10:\"1690482756\";s:5:\"value\";a:9:{i:0;i:90;i:1;i:89;i:2;i:71;i:3;i:69;i:4;i:68;i:5;i:67;i:6;i:65;i:7;i:63;i:8;i:61;}}', 'no'),
(1762, '_transient_timeout__woocommerce_helper_updates', '1692139722', 'no'),
(1763, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1692096522;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1584, 'db_upgraded', '', 'yes'),
(1446, '_transient_timeout_wc_term_counts', '1694436528', 'no'),
(1447, '_transient_wc_term_counts', 'a:13:{i:24;s:1:\"8\";i:25;s:1:\"4\";i:26;s:1:\"4\";i:29;s:1:\"2\";i:32;s:1:\"1\";i:33;s:1:\"1\";i:28;s:1:\"2\";i:34;s:2:\"10\";i:36;s:1:\"2\";i:35;s:2:\"10\";i:23;s:1:\"2\";i:37;s:1:\"8\";i:27;s:1:\"2\";}', 'no'),
(1756, '_transient_timeout_wcpay_welcome_page_incentive', '1692132444', 'no'),
(1757, '_transient_wcpay_welcome_page_incentive', '', 'no'),
(1450, '_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs', '1692702807', 'no'),
(1451, '_transient_woocommerce_admin_remote_inbox_notifications_specs', 'a:1:{s:5:\"fr_FR\";a:0:{}}', 'no'),
(1764, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1692118123', 'no'),
(1765, '_transient_action_scheduler_last_pastdue_actions_check', '1692096523', 'no'),
(1766, '_transient_timeout_wc_tracks_blog_details', '1692182923', 'no'),
(1767, '_transient_wc_tracks_blog_details', 'a:5:{s:3:\"url\";s:17:\"http://electro.mg\";s:9:\"blog_lang\";s:5:\"fr_FR\";s:7:\"blog_id\";b:0;s:14:\"products_count\";s:2:\"14\";s:10:\"wc_version\";s:5:\"8.0.1\";}', 'no'),
(1522, '_transient_timeout_orders-all-statuses', '1692329627', 'no'),
(1523, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1690299362\";s:5:\"value\";a:0:{}}', 'no'),
(1524, '_transient_timeout_woocommerce_admin_payment_method_promotion_specs', '1692712574', 'no'),
(1525, '_transient_woocommerce_admin_payment_method_promotion_specs', 'a:1:{s:5:\"fr_FR\";a:0:{}}', 'no'),
(1670, 'action_scheduler_migration_status', 'complete', 'yes'),
(1596, 'woocommerce_custom_orders_table_data_sync_enabled', 'no', 'yes'),
(1597, 'woocommerce_custom_orders_table_created', 'no', 'yes'),
(1612, 'can_compress_scripts', '1', 'yes'),
(1611, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692096523;s:7:\"checked\";a:1:{s:7:\"electro\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1805, '_transient_timeout_acf_plugin_updates', '1692098608', 'no'),
(1806, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(1590, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"haja.ramananjarasoa@gmail.com\";s:7:\"version\";s:3:\"6.3\";s:9:\"timestamp\";i:1691844416;}', 'no'),
(1562, '_site_transient_timeout_browser_15c2f6f9416d00cec8b4f729460293c0', '1692449157', 'no'),
(1563, '_site_transient_browser_15c2f6f9416d00cec8b4f729460293c0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"115.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1564, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1692449159', 'no'),
(1565, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1619, 'woocommerce_attribute_lookup_enabled', 'yes', 'yes'),
(1606, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(1621, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1692096523;s:15:\"version_checked\";s:3:\"6.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1610, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1692098544;s:8:\"response\";a:2:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.9.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.1.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230809\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:23:\"gs-acf-icons/plugin.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/gs-acf-icons\";s:4:\"slug\";s:12:\"gs-acf-icons\";s:6:\"plugin\";s:23:\"gs-acf-icons/plugin.php\";s:11:\"new_version\";s:5:\"0.1.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/gs-acf-icons/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/gs-acf-icons.0.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/gs-acf-icons/assets/icon.svg?rev=2617173\";s:3:\"svg\";s:57:\"https://ps.w.org/gs-acf-icons/assets/icon.svg?rev=2617173\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/gs-acf-icons/assets/banner-1544x500.jpg?rev=2617173\";s:2:\"1x\";s:67:\"https://ps.w.org/gs-acf-icons/assets/banner-772x250.jpg?rev=2617173\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:41:\"post-views-counter/post-views-counter.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/post-views-counter\";s:4:\"slug\";s:18:\"post-views-counter\";s:6:\"plugin\";s:41:\"post-views-counter/post-views-counter.php\";s:11:\"new_version\";s:6:\"1.3.13\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/post-views-counter/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/post-views-counter.1.3.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-views-counter/assets/icon-256x256.png?rev=1350864\";s:2:\"1x\";s:71:\"https://ps.w.org/post-views-counter/assets/icon-128x128.png?rev=1350864\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/post-views-counter/assets/banner-772x250.png?rev=1895842\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"8.0.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.8.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.gif?rev=2869506\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.gif?rev=2869506\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}}', 'no'),
(1614, 'wc_remote_inbox_notifications_wca_updated', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `electro_postmeta`
--

DROP TABLE IF EXISTS `electro_postmeta`;
CREATE TABLE IF NOT EXISTS `electro_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_postmeta`
--

INSERT INTO `electro_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1690484669:1'),
(4, 5, '_wp_page_template', 'page-templates/homepage.php'),
(5, 7, '_wp_attached_file', '2023/07/favicon-e1690034891467.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:26;s:4:\"file\";s:34:\"2023/07/favicon-e1690034891467.jpg\";s:8:\"filesize\";i:8767;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Idealy\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1690041189\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 8, '_wp_attached_file', '2023/07/cropped-favicon.jpg'),
(8, 8, '_wp_attachment_context', 'site-icon'),
(9, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2023/07/cropped-favicon.jpg\";s:8:\"filesize\";i:24858;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12253;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4772;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3052;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12253;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10241;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6472;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5931;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:25:\"cropped-favicon-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1089;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_edit_lock', '1690034829:1'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1690034846'),
(13, 7, '_edit_lock', '1690034785:1'),
(14, 7, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:52;s:6:\"height\";i:43;s:4:\"file\";s:11:\"favicon.jpg\";}}'),
(15, 7, '_edit_last', '1'),
(16, 10, '_wp_attached_file', '2023/07/logo.png'),
(17, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:169;s:6:\"height\";i:70;s:4:\"file\";s:16:\"2023/07/logo.png\";s:8:\"filesize\";i:2251;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1357;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:15:\"logo-100x70.png\";s:5:\"width\";i:100;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1017;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1016, 100, '_menu_item_menu_item_parent', '0'),
(1015, 100, '_menu_item_type', 'taxonomy'),
(1025, 101, '_menu_item_menu_item_parent', '0'),
(1026, 101, '_menu_item_object_id', '39'),
(1013, 99, '_menu_item_url', ''),
(1012, 99, '_menu_item_xfn', ''),
(1011, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 20, '_edit_lock', '1690253308:1'),
(1010, 99, '_menu_item_target', ''),
(1009, 99, '_menu_item_object', 'category'),
(1008, 99, '_menu_item_object_id', '3'),
(1007, 99, '_menu_item_menu_item_parent', '0'),
(1006, 99, '_menu_item_type', 'taxonomy'),
(66, 18, '_edit_lock', '1690253251:1'),
(1004, 98, '_menu_item_url', ''),
(1003, 98, '_menu_item_xfn', ''),
(1002, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1001, 98, '_menu_item_target', ''),
(1000, 98, '_menu_item_object', 'category'),
(999, 98, '_menu_item_object_id', '1'),
(64, 16, '_edit_last', '1'),
(998, 98, '_menu_item_menu_item_parent', '0'),
(997, 98, '_menu_item_type', 'taxonomy'),
(1027, 101, '_menu_item_object', 'page'),
(1028, 101, '_menu_item_target', ''),
(995, 97, '_menu_item_url', ''),
(994, 97, '_menu_item_xfn', ''),
(993, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 16, '_wp_page_template', 'default'),
(992, 97, '_menu_item_target', ''),
(991, 97, '_menu_item_object', 'category'),
(990, 97, '_menu_item_object_id', '4'),
(989, 97, '_menu_item_menu_item_parent', '0'),
(988, 97, '_menu_item_type', 'taxonomy'),
(1029, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 16, '_edit_lock', '1690253362:1'),
(68, 22, '_edit_lock', '1690253336:1'),
(69, 24, '_edit_lock', '1690253399:1'),
(70, 26, '_edit_lock', '1690253417:1'),
(71, 28, '_menu_item_type', 'post_type'),
(72, 28, '_menu_item_menu_item_parent', '0'),
(73, 28, '_menu_item_object_id', '18'),
(74, 28, '_menu_item_object', 'page'),
(75, 28, '_menu_item_target', ''),
(76, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 28, '_menu_item_xfn', ''),
(78, 28, '_menu_item_url', ''),
(100, 31, '_menu_item_object_id', '26'),
(80, 29, '_menu_item_type', 'post_type'),
(81, 29, '_menu_item_menu_item_parent', '0'),
(82, 29, '_menu_item_object_id', '16'),
(83, 29, '_menu_item_object', 'page'),
(84, 29, '_menu_item_target', ''),
(85, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 29, '_menu_item_xfn', ''),
(87, 29, '_menu_item_url', ''),
(99, 31, '_menu_item_menu_item_parent', '0'),
(89, 30, '_menu_item_type', 'post_type'),
(90, 30, '_menu_item_menu_item_parent', '0'),
(91, 30, '_menu_item_object_id', '20'),
(92, 30, '_menu_item_object', 'page'),
(93, 30, '_menu_item_target', ''),
(94, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 30, '_menu_item_xfn', ''),
(96, 30, '_menu_item_url', ''),
(98, 31, '_menu_item_type', 'post_type'),
(101, 31, '_menu_item_object', 'page'),
(102, 31, '_menu_item_target', ''),
(103, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 31, '_menu_item_xfn', ''),
(105, 31, '_menu_item_url', ''),
(126, 34, '_menu_item_menu_item_parent', '0'),
(107, 32, '_menu_item_type', 'post_type'),
(108, 32, '_menu_item_menu_item_parent', '0'),
(109, 32, '_menu_item_object_id', '24'),
(110, 32, '_menu_item_object', 'page'),
(111, 32, '_menu_item_target', ''),
(112, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 32, '_menu_item_xfn', ''),
(114, 32, '_menu_item_url', ''),
(125, 34, '_menu_item_type', 'post_type'),
(116, 33, '_menu_item_type', 'post_type'),
(117, 33, '_menu_item_menu_item_parent', '0'),
(118, 33, '_menu_item_object_id', '22'),
(119, 33, '_menu_item_object', 'page'),
(120, 33, '_menu_item_target', ''),
(121, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 33, '_menu_item_xfn', ''),
(123, 33, '_menu_item_url', ''),
(127, 34, '_menu_item_object_id', '5'),
(128, 34, '_menu_item_object', 'page'),
(129, 34, '_menu_item_target', ''),
(130, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 34, '_menu_item_xfn', ''),
(132, 34, '_menu_item_url', ''),
(144, 36, '_wp_trash_meta_time', '1690254414'),
(134, 35, '_menu_item_type', 'post_type'),
(135, 35, '_menu_item_menu_item_parent', '0'),
(136, 35, '_menu_item_object_id', '2'),
(137, 35, '_menu_item_object', 'page'),
(138, 35, '_menu_item_target', ''),
(139, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 35, '_menu_item_xfn', ''),
(141, 35, '_menu_item_url', ''),
(143, 36, '_wp_trash_meta_status', 'publish'),
(145, 37, '_wp_attached_file', 'woocommerce-placeholder.png'),
(146, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12560;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92182;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4228;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58715;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2314;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12560;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 43, 'total_sales', '0'),
(148, 43, '_tax_status', 'taxable'),
(149, 43, '_tax_class', ''),
(150, 43, '_manage_stock', 'no'),
(151, 43, '_backorders', 'no'),
(152, 43, '_sold_individually', 'no'),
(153, 43, '_virtual', 'no'),
(154, 43, '_downloadable', 'no'),
(155, 43, '_download_limit', '-1'),
(156, 43, '_download_expiry', '-1'),
(157, 43, '_stock', NULL),
(158, 43, '_stock_status', 'instock'),
(159, 43, '_wc_average_rating', '0'),
(160, 43, '_wc_review_count', '0'),
(161, 43, '_product_version', '7.9.0'),
(162, 43, '_edit_lock', '1690303269:1'),
(163, 43, '_edit_last', '1'),
(164, 44, '_wp_attached_file', '2023/07/product06.png'),
(165, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product06.png\";s:8:\"filesize\";i:222902;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55862;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14187;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6783;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55862;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55862;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6783;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 44, '_wp_attachment_image_alt', 'laptop-1'),
(167, 43, '_thumbnail_id', '44'),
(168, 43, '_sku', 'laptop-1'),
(169, 43, '_regular_price', '300'),
(170, 43, '_sale_price', '250'),
(171, 43, '_weight', '1.5'),
(172, 43, '_length', '2'),
(173, 43, '_width', '15'),
(174, 43, '_height', '25'),
(175, 43, '_price', '250'),
(176, 45, '_wp_attached_file', '2023/07/product09.png'),
(177, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product09.png\";s:8:\"filesize\";i:207240;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61040;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product09-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18225;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product09-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9049;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61040;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61040;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product09-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9049;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 46, '_wp_attached_file', '2023/07/product04.png'),
(179, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product04.png\";s:8:\"filesize\";i:197972;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14912;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7323;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7323;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 47, '_wp_attached_file', '2023/07/product07.png'),
(181, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product07.png\";s:8:\"filesize\";i:174505;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48848;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15091;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product07-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7632;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48848;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48848;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product07-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7632;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 48, '_wp_attached_file', '2023/07/shop03.png'),
(183, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2023/07/shop03.png\";s:8:\"filesize\";i:211715;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"shop03-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50625;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"shop03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29981;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:18:\"shop03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15315;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:18:\"shop03-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101445;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"shop03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98937;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"shop03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 49, '_sku', 'laptop-2'),
(185, 49, '_regular_price', '300'),
(186, 49, '_sale_price', '200'),
(187, 49, 'total_sales', '0'),
(188, 49, '_tax_status', 'taxable'),
(189, 49, '_tax_class', ''),
(190, 49, '_manage_stock', 'no'),
(191, 49, '_backorders', 'no'),
(192, 49, '_sold_individually', 'no'),
(193, 49, '_weight', '1.5'),
(194, 49, '_length', '2'),
(195, 49, '_width', '15'),
(196, 49, '_height', '25'),
(197, 49, '_virtual', 'no'),
(198, 49, '_downloadable', 'no'),
(199, 49, '_download_limit', '-1'),
(200, 49, '_download_expiry', '-1'),
(201, 49, '_thumbnail_id', '50'),
(202, 49, '_stock', NULL),
(203, 49, '_stock_status', 'instock'),
(204, 49, '_wc_average_rating', '0'),
(205, 49, '_wc_review_count', '0'),
(206, 49, '_product_version', '7.9.0'),
(207, 49, '_price', '200'),
(208, 49, '_edit_lock', '1690305063:1'),
(209, 49, '_edit_last', '1'),
(210, 50, '_wp_attached_file', '2023/07/product01.png'),
(211, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product01.png\";s:8:\"filesize\";i:287437;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19338;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9247;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9247;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 52, '_wp_attached_file', '2023/07/other-small.jpg'),
(213, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2023/07/other-small.jpg\";s:8:\"filesize\";i:75576;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7541;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49514;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4067;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30855;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93743;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2555;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:23:\"other-small-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13563;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10652;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21079;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2555;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 52, '_source_url', 'http://electro.mg/wp-content/plugins/woocommerce/assets/images/onboarding/other-small.jpg'),
(215, 42, '_edit_lock', '1690304183:1'),
(216, 51, '_edit_lock', '1690484069:1'),
(217, 51, '_edit_last', '1'),
(218, 51, '_wp_page_template', 'default'),
(219, 56, '_sku', 'laptop-3'),
(220, 56, '_regular_price', '400'),
(221, 56, '_sale_price', '350'),
(222, 56, 'total_sales', '0'),
(223, 56, '_tax_status', 'taxable'),
(224, 56, '_tax_class', ''),
(225, 56, '_manage_stock', 'yes'),
(226, 56, '_backorders', 'yes'),
(227, 56, '_sold_individually', 'yes'),
(228, 56, '_weight', '1.5'),
(229, 56, '_length', '2'),
(230, 56, '_width', '15'),
(231, 56, '_height', '25'),
(232, 56, '_virtual', 'no'),
(233, 56, '_downloadable', 'no'),
(234, 56, '_download_limit', '-1'),
(235, 56, '_download_expiry', '-1'),
(236, 56, '_thumbnail_id', '58'),
(237, 56, '_stock', '10'),
(238, 56, '_stock_status', 'instock'),
(239, 56, '_wc_average_rating', '0'),
(240, 56, '_wc_review_count', '0'),
(241, 56, '_product_version', '7.9.0'),
(242, 56, '_price', '350'),
(243, 56, '_edit_lock', '1690305273:1'),
(244, 57, '_wp_attached_file', '2023/07/product01-1.png'),
(245, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2023/07/product01-1.png\";s:8:\"filesize\";i:287437;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"product01-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"product01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19338;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:23:\"product01-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9247;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:23:\"product01-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"product01-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71483;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"product01-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9247;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 58, '_wp_attached_file', '2023/07/shop01.png'),
(247, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2023/07/shop01.png\";s:8:\"filesize\";i:175826;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"shop01-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53862;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"shop01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29767;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:18:\"shop01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14581;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:18:\"shop01-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106905;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"shop01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98466;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"shop01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14581;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 56, '_edit_last', '1'),
(249, 56, '_low_stock_amount', '1'),
(250, 56, '_purchase_note', 'The best processionnal laptop.'),
(251, 59, '_sku', 'laptop-4'),
(252, 59, '_regular_price', '500'),
(983, 96, '_menu_item_target', ''),
(254, 59, 'total_sales', '0'),
(255, 59, '_tax_status', 'taxable'),
(256, 59, '_tax_class', ''),
(257, 59, '_manage_stock', 'yes'),
(258, 59, '_backorders', 'yes'),
(259, 59, '_low_stock_amount', '1'),
(260, 59, '_sold_individually', 'yes'),
(261, 59, '_weight', '1.5'),
(262, 59, '_length', '2'),
(263, 59, '_width', '15'),
(264, 59, '_height', '25'),
(265, 59, '_purchase_note', 'The best processionnal laptop.'),
(266, 59, '_virtual', 'no'),
(267, 59, '_downloadable', 'no'),
(268, 59, '_download_limit', '-1'),
(269, 59, '_download_expiry', '-1'),
(270, 59, '_thumbnail_id', '60'),
(271, 59, '_stock', '10'),
(272, 59, '_stock_status', 'instock'),
(273, 59, '_wc_average_rating', '0'),
(274, 59, '_wc_review_count', '0'),
(275, 59, '_product_version', '7.9.0'),
(276, 59, '_price', '500'),
(277, 59, '_edit_lock', '1690306363:1'),
(278, 59, '_edit_last', '1'),
(981, 96, '_menu_item_object_id', '5'),
(281, 60, '_wp_attached_file', '2023/07/product03.png'),
(282, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product03.png\";s:8:\"filesize\";i:234903;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66689;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19424;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9762;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66689;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66689;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9762;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 61, '_sku', 'casque-1'),
(284, 61, '_regular_price', '300'),
(285, 61, '_sale_price', '250'),
(286, 61, 'total_sales', '0'),
(287, 61, '_tax_status', 'taxable'),
(288, 61, '_tax_class', ''),
(289, 61, '_manage_stock', 'yes'),
(290, 61, '_backorders', 'yes'),
(291, 61, '_sold_individually', 'yes'),
(292, 61, '_weight', '1.5'),
(293, 61, '_length', '2'),
(294, 61, '_width', '15'),
(295, 61, '_height', '25'),
(296, 61, '_virtual', 'no'),
(297, 61, '_downloadable', 'no'),
(298, 61, '_download_limit', '-1'),
(299, 61, '_download_expiry', '-1'),
(300, 61, '_thumbnail_id', '48'),
(301, 61, '_stock', '10'),
(302, 61, '_stock_status', 'instock'),
(303, 61, '_wc_average_rating', '0'),
(304, 61, '_wc_review_count', '0'),
(305, 61, '_product_version', '7.9.0'),
(306, 61, '_price', '250'),
(307, 61, '_edit_lock', '1690306114:1'),
(308, 61, '_edit_last', '1'),
(309, 61, '_product_attributes', 'a:3:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Noire\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:3:\"JBL\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(310, 63, '_sku', 'casque-2'),
(311, 63, '_regular_price', '200'),
(982, 96, '_menu_item_object', 'category'),
(313, 63, 'total_sales', '0'),
(314, 63, '_tax_status', 'taxable'),
(315, 63, '_tax_class', ''),
(316, 63, '_manage_stock', 'yes'),
(317, 63, '_backorders', 'yes'),
(318, 63, '_sold_individually', 'no'),
(319, 63, '_weight', '1.5'),
(320, 63, '_length', '2'),
(321, 63, '_width', '5'),
(322, 63, '_height', '20'),
(323, 63, '_virtual', 'no'),
(324, 63, '_downloadable', 'no'),
(325, 63, '_download_limit', '-1'),
(326, 63, '_download_expiry', '-1'),
(327, 63, '_thumbnail_id', '64'),
(328, 63, '_stock', '12'),
(329, 63, '_stock_status', 'instock'),
(330, 63, '_wc_average_rating', '0'),
(331, 63, '_wc_review_count', '0'),
(332, 63, '_product_attributes', 'a:3:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:4:\"Boss\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(333, 63, '_product_version', '7.9.0'),
(334, 63, '_price', '200'),
(335, 63, '_edit_lock', '1690306320:1'),
(336, 64, '_wp_attached_file', '2023/07/product05.png'),
(337, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/07/product05.png\";s:8:\"filesize\";i:124399;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45770;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14155;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:21:\"product05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7228;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:21:\"product05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45770;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"product05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45770;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"product05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7228;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 63, '_edit_last', '1'),
(980, 96, '_menu_item_menu_item_parent', '0'),
(979, 96, '_menu_item_type', 'taxonomy'),
(341, 63, '_purchase_note', 'Le meilleur casque en 2023'),
(342, 65, '_sku', 'cameras-1'),
(343, 65, '_regular_price', '200'),
(344, 65, '_sale_price', '100'),
(375, 67, '_sku', 'cameras-2'),
(374, 65, '_low_stock_amount', '1'),
(347, 65, 'total_sales', '0'),
(348, 65, '_tax_status', 'taxable'),
(349, 65, '_tax_class', ''),
(350, 65, '_manage_stock', 'yes'),
(351, 65, '_backorders', 'yes'),
(352, 65, '_sold_individually', 'no'),
(353, 65, '_weight', '1.5'),
(354, 65, '_length', '2'),
(355, 65, '_width', '5'),
(356, 65, '_height', '20'),
(357, 65, '_purchase_note', 'Le meilleur casque en 2023'),
(358, 65, '_virtual', 'no'),
(359, 65, '_downloadable', 'no'),
(360, 65, '_download_limit', '-1'),
(361, 65, '_download_expiry', '-1'),
(362, 65, '_thumbnail_id', '66'),
(363, 65, '_stock', '25'),
(364, 65, '_stock_status', 'instock'),
(365, 65, '_wc_average_rating', '0'),
(366, 65, '_wc_review_count', '0'),
(367, 65, '_product_attributes', 'a:5:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(368, 65, '_product_version', '7.9.0'),
(369, 65, '_price', '100'),
(370, 65, '_edit_lock', '1690306594:1'),
(371, 65, '_edit_last', '1'),
(372, 66, '_wp_attached_file', '2023/07/shop02.png'),
(373, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2023/07/shop02.png\";s:8:\"filesize\";i:258774;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"shop02-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78222;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"shop02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39161;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:18:\"shop02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19313;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:18:\"shop02-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:155706;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"shop02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:131217;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"shop02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19313;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 67, '_regular_price', '200'),
(377, 67, '_sale_price', '100'),
(378, 67, 'total_sales', '0'),
(379, 67, '_tax_status', 'taxable'),
(380, 67, '_tax_class', ''),
(381, 67, '_manage_stock', 'yes'),
(382, 67, '_backorders', 'yes'),
(383, 67, '_low_stock_amount', '1'),
(384, 67, '_sold_individually', 'no'),
(385, 67, '_weight', '1.5'),
(386, 67, '_length', '2'),
(387, 67, '_width', '5'),
(388, 67, '_height', '20'),
(389, 67, '_purchase_note', 'Le meilleur casque en 2023'),
(390, 67, '_virtual', 'no'),
(391, 67, '_downloadable', 'no'),
(392, 67, '_download_limit', '-1'),
(393, 67, '_download_expiry', '-1'),
(394, 67, '_thumbnail_id', '45'),
(395, 67, '_stock', '10'),
(396, 67, '_stock_status', 'instock'),
(397, 67, '_wc_average_rating', '0'),
(398, 67, '_wc_review_count', '0'),
(399, 67, '_product_attributes', 'a:5:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(400, 67, '_product_version', '7.9.0'),
(401, 67, '_price', '100'),
(402, 67, '_edit_lock', '1690306693:1'),
(403, 67, '_edit_last', '1'),
(404, 68, '_sku', 'smartphone-1'),
(405, 68, '_regular_price', '150'),
(406, 68, '_sale_price', '100'),
(407, 68, 'total_sales', '0'),
(408, 68, '_tax_status', 'taxable'),
(409, 68, '_tax_class', ''),
(410, 68, '_manage_stock', 'yes'),
(411, 68, '_backorders', 'yes'),
(412, 68, '_low_stock_amount', '1'),
(413, 68, '_sold_individually', 'no'),
(414, 68, '_weight', '1.5'),
(415, 68, '_length', '2'),
(416, 68, '_width', '5'),
(417, 68, '_height', '20'),
(418, 68, '_purchase_note', 'Le meilleur casque en 2023'),
(419, 68, '_virtual', 'no'),
(420, 68, '_downloadable', 'no'),
(421, 68, '_download_limit', '-1'),
(422, 68, '_download_expiry', '-1'),
(423, 68, '_thumbnail_id', '47'),
(424, 68, '_stock', '50'),
(425, 68, '_stock_status', 'instock'),
(426, 68, '_wc_average_rating', '0'),
(427, 68, '_wc_review_count', '0'),
(428, 68, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(429, 68, '_product_version', '7.9.0'),
(430, 68, '_price', '100'),
(431, 68, '_edit_lock', '1690307150:1'),
(432, 68, '_edit_last', '1'),
(433, 69, '_sku', 'tablette-1'),
(434, 69, '_regular_price', '150'),
(435, 69, '_sale_price', '100'),
(436, 69, 'total_sales', '0'),
(437, 69, '_tax_status', 'taxable'),
(438, 69, '_tax_class', ''),
(439, 69, '_manage_stock', 'yes'),
(440, 69, '_backorders', 'yes'),
(441, 69, '_low_stock_amount', '1'),
(442, 69, '_sold_individually', 'no'),
(443, 69, '_weight', '1.5'),
(444, 69, '_length', '2'),
(445, 69, '_width', '5'),
(446, 69, '_height', '20'),
(447, 69, '_purchase_note', 'Le meilleur casque en 2023'),
(448, 69, '_virtual', 'no'),
(449, 69, '_downloadable', 'no'),
(450, 69, '_download_limit', '-1'),
(451, 69, '_download_expiry', '-1'),
(452, 69, '_thumbnail_id', '70'),
(453, 69, '_stock', '50'),
(454, 69, '_stock_status', 'instock'),
(455, 69, '_wc_average_rating', '0'),
(456, 69, '_wc_review_count', '0'),
(457, 69, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(458, 69, '_product_version', '7.9.0'),
(459, 69, '_price', '100'),
(460, 69, '_edit_lock', '1690307031:1'),
(461, 70, '_wp_attached_file', '2023/07/product04-1.png'),
(462, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2023/07/product04-1.png\";s:8:\"filesize\";i:197972;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"product04-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"product04-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14912;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:23:\"product04-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7323;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:23:\"product04-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"product04-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54154;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"product04-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7323;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(463, 69, '_edit_last', '1'),
(464, 71, '_sku', 'laptop-7'),
(465, 71, '_regular_price', '150'),
(466, 71, '_sale_price', '100'),
(467, 71, 'total_sales', '0'),
(468, 71, '_tax_status', 'taxable'),
(469, 71, '_tax_class', ''),
(470, 71, '_manage_stock', 'yes'),
(471, 71, '_backorders', 'yes'),
(472, 71, '_low_stock_amount', '1'),
(473, 71, '_sold_individually', 'no'),
(474, 71, '_weight', '1.5'),
(475, 71, '_length', '2'),
(476, 71, '_width', '5'),
(477, 71, '_height', '20'),
(478, 71, '_purchase_note', 'Le meilleur laptop en 2023'),
(479, 71, '_virtual', 'no'),
(480, 71, '_downloadable', 'no'),
(481, 71, '_download_limit', '-1'),
(482, 71, '_download_expiry', '-1'),
(483, 71, '_thumbnail_id', '70'),
(484, 71, '_stock', '50'),
(485, 71, '_stock_status', 'instock'),
(486, 71, '_wc_average_rating', '0'),
(487, 71, '_wc_review_count', '0'),
(488, 71, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(489, 71, '_product_version', '7.9.0'),
(490, 71, '_price', '100'),
(491, 71, '_edit_lock', '1690307453:1'),
(492, 71, '_edit_last', '1'),
(493, 72, '_wp_attached_file', '2023/07/hotdeal.png');
INSERT INTO `electro_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(494, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1782;s:6:\"height\";i:465;s:4:\"file\";s:19:\"2023/07/hotdeal.png\";s:8:\"filesize\";i:281315;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"hotdeal-300x78.png\";s:5:\"width\";i:300;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22037;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"hotdeal-1024x267.png\";s:5:\"width\";i:1024;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:214515;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"hotdeal-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3690;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"hotdeal-768x200.png\";s:5:\"width\";i:768;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:90431;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"hotdeal-1536x401.png\";s:5:\"width\";i:1536;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:324090;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:19:\"hotdeal-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3947;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:19:\"hotdeal-500x130.png\";s:5:\"width\";i:500;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:67386;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"hotdeal-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15409;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:19:\"hotdeal-600x157.png\";s:5:\"width\";i:600;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:82268;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"hotdeal-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3947;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 73, '_wp_attached_file', '2023/07/shop03-1.png'),
(496, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2023/07/shop03-1.png\";s:8:\"filesize\";i:211715;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"shop03-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50625;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"shop03-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29981;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:20:\"shop03-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15315;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:20:\"shop03-1-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101445;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"shop03-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98937;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"shop03-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15315;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(497, 74, '_edit_last', '1'),
(498, 74, '_edit_lock', '1690425043:1'),
(499, 5, '_edit_last', '1'),
(500, 5, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(501, 5, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(502, 5, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(503, 5, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(504, 5, 'liste_des_collections_0_collections_0_image', '58'),
(505, 5, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(506, 5, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(507, 5, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(508, 5, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(509, 5, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(510, 5, 'liste_des_collections_0_collections_1_image', '73'),
(511, 5, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(512, 5, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(513, 5, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(514, 5, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(515, 5, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(516, 5, 'liste_des_collections_0_collections_2_image', '45'),
(517, 5, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(518, 5, 'liste_des_collections_0_collections', '3'),
(519, 5, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(520, 5, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(521, 5, '_liste_des_collections', 'field_64c00da726b1c'),
(522, 80, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(523, 80, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(524, 80, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(525, 80, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(526, 80, 'liste_des_collections_0_collections_0_image', '58'),
(527, 80, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(528, 80, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(529, 80, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(530, 80, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(531, 80, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(532, 80, 'liste_des_collections_0_collections_1_image', '73'),
(533, 80, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(534, 80, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(535, 80, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(536, 80, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(537, 80, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(538, 80, 'liste_des_collections_0_collections_2_image', '45'),
(539, 80, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(540, 80, 'liste_des_collections_0_collections', '3'),
(541, 80, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(542, 80, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(543, 80, '_liste_des_collections', 'field_64c00da726b1c'),
(544, 5, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(545, 5, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(546, 5, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(547, 5, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(548, 5, 'layout_homepage_0_collections_0_image', '64'),
(549, 5, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(550, 5, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(551, 5, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(552, 5, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(553, 5, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(554, 5, 'layout_homepage_0_collections_1_image', '58'),
(555, 5, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(556, 5, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(557, 5, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(558, 5, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(559, 5, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(560, 5, 'layout_homepage_0_collections_2_image', '73'),
(561, 5, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(562, 5, 'layout_homepage_0_collections', '3'),
(563, 5, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(564, 5, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(565, 5, '_layout_homepage', 'field_64c00da726b1c'),
(566, 81, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(567, 81, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(568, 81, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(569, 81, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(570, 81, 'liste_des_collections_0_collections_0_image', '58'),
(571, 81, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(572, 81, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(573, 81, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(574, 81, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(575, 81, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(576, 81, 'liste_des_collections_0_collections_1_image', '73'),
(577, 81, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(578, 81, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(579, 81, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(580, 81, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(581, 81, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(582, 81, 'liste_des_collections_0_collections_2_image', '45'),
(583, 81, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(584, 81, 'liste_des_collections_0_collections', '3'),
(585, 81, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(586, 81, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(587, 81, '_liste_des_collections', 'field_64c00da726b1c'),
(588, 81, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(589, 81, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(590, 81, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(591, 81, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(592, 81, 'layout_homepage_0_collections_0_image', '58'),
(593, 81, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(594, 81, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(595, 81, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(596, 81, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(597, 81, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(598, 81, 'layout_homepage_0_collections_1_image', '73'),
(599, 81, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(600, 81, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(601, 81, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(602, 81, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(603, 81, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(604, 81, 'layout_homepage_0_collections_2_image', '45'),
(605, 81, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(606, 81, 'layout_homepage_0_collections', '3'),
(607, 81, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(608, 81, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(609, 81, '_layout_homepage', 'field_64c00da726b1c'),
(610, 5, '_thumbnail_id', '47'),
(611, 82, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(612, 82, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(613, 82, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(614, 82, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(615, 82, 'liste_des_collections_0_collections_0_image', '58'),
(616, 82, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(617, 82, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(618, 82, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(619, 82, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(620, 82, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(621, 82, 'liste_des_collections_0_collections_1_image', '73'),
(622, 82, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(623, 82, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(624, 82, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(625, 82, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(626, 82, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(627, 82, 'liste_des_collections_0_collections_2_image', '45'),
(628, 82, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(629, 82, 'liste_des_collections_0_collections', '3'),
(630, 82, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(631, 82, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(632, 82, '_liste_des_collections', 'field_64c00da726b1c'),
(633, 82, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(634, 82, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(635, 82, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(636, 82, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(637, 82, 'layout_homepage_0_collections_0_image', '58'),
(638, 82, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(639, 82, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(640, 82, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(641, 82, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(642, 82, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(643, 82, 'layout_homepage_0_collections_1_image', '64'),
(644, 82, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(645, 82, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(646, 82, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(647, 82, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(648, 82, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(649, 82, 'layout_homepage_0_collections_2_image', '47'),
(650, 82, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(651, 82, 'layout_homepage_0_collections', '3'),
(652, 82, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(653, 82, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(654, 82, '_layout_homepage', 'field_64c00da726b1c'),
(655, 83, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(656, 83, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(657, 83, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(658, 83, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(659, 83, 'liste_des_collections_0_collections_0_image', '58'),
(660, 83, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(661, 83, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(662, 83, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(663, 83, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(664, 83, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(665, 83, 'liste_des_collections_0_collections_1_image', '73'),
(666, 83, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(667, 83, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(668, 83, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(669, 83, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(670, 83, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(671, 83, 'liste_des_collections_0_collections_2_image', '45'),
(672, 83, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(673, 83, 'liste_des_collections_0_collections', '3'),
(674, 83, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(675, 83, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(676, 83, '_liste_des_collections', 'field_64c00da726b1c'),
(677, 83, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(678, 83, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(679, 83, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(680, 83, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(681, 83, 'layout_homepage_0_collections_0_image', '47'),
(682, 83, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(683, 83, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(684, 83, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(685, 83, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(686, 83, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(687, 83, 'layout_homepage_0_collections_1_image', '58'),
(688, 83, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(689, 83, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(690, 83, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(691, 83, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(692, 83, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(693, 83, 'layout_homepage_0_collections_2_image', '73'),
(694, 83, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(695, 83, 'layout_homepage_0_collections', '3'),
(696, 83, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(697, 83, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(698, 83, '_layout_homepage', 'field_64c00da726b1c'),
(699, 84, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(700, 84, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(701, 84, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(702, 84, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(703, 84, 'liste_des_collections_0_collections_0_image', '58'),
(704, 84, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(705, 84, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(706, 84, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(707, 84, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(708, 84, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(709, 84, 'liste_des_collections_0_collections_1_image', '73'),
(710, 84, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(711, 84, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(712, 84, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(713, 84, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(714, 84, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(715, 84, 'liste_des_collections_0_collections_2_image', '45'),
(716, 84, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(717, 84, 'liste_des_collections_0_collections', '3'),
(718, 84, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(719, 84, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(720, 84, '_liste_des_collections', 'field_64c00da726b1c'),
(721, 84, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(722, 84, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(723, 84, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(724, 84, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(725, 84, 'layout_homepage_0_collections_0_image', '70'),
(726, 84, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(727, 84, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(728, 84, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(729, 84, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(730, 84, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(731, 84, 'layout_homepage_0_collections_1_image', '58'),
(732, 84, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(733, 84, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(734, 84, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(735, 84, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(736, 84, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(737, 84, 'layout_homepage_0_collections_2_image', '73'),
(738, 84, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(739, 84, 'layout_homepage_0_collections', '3'),
(740, 84, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(741, 84, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(742, 84, '_layout_homepage', 'field_64c00da726b1c'),
(743, 85, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(744, 85, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(745, 85, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(746, 85, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(747, 85, 'liste_des_collections_0_collections_0_image', '58'),
(748, 85, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(749, 85, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(750, 85, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(751, 85, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(752, 85, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(753, 85, 'liste_des_collections_0_collections_1_image', '73'),
(754, 85, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(755, 85, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(756, 85, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(757, 85, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(758, 85, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(759, 85, 'liste_des_collections_0_collections_2_image', '45'),
(760, 85, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(761, 85, 'liste_des_collections_0_collections', '3'),
(762, 85, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(763, 85, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(764, 85, '_liste_des_collections', 'field_64c00da726b1c'),
(765, 85, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(766, 85, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(767, 85, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(768, 85, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(769, 85, 'layout_homepage_0_collections_0_image', '64'),
(770, 85, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(771, 85, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(772, 85, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(773, 85, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(774, 85, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(775, 85, 'layout_homepage_0_collections_1_image', '58'),
(776, 85, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(777, 85, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(778, 85, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(779, 85, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(780, 85, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(781, 85, 'layout_homepage_0_collections_2_image', '73'),
(782, 85, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(783, 85, 'layout_homepage_0_collections', '3'),
(784, 85, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(785, 85, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(786, 85, '_layout_homepage', 'field_64c00da726b1c'),
(787, 38, '_edit_lock', '1690565318:1'),
(788, 87, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(789, 87, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(790, 87, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(791, 87, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(792, 87, 'liste_des_collections_0_collections_0_image', '58'),
(793, 87, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(794, 87, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(795, 87, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(796, 87, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(797, 87, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(798, 87, 'liste_des_collections_0_collections_1_image', '73'),
(799, 87, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(800, 87, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(801, 87, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(802, 87, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(803, 87, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(804, 87, 'liste_des_collections_0_collections_2_image', '45'),
(805, 87, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(806, 87, 'liste_des_collections_0_collections', '3'),
(807, 87, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(808, 87, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(809, 87, '_liste_des_collections', 'field_64c00da726b1c'),
(810, 87, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(811, 87, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(812, 87, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(813, 87, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(814, 87, 'layout_homepage_0_collections_0_image', '64'),
(815, 87, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(816, 87, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(817, 87, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(818, 87, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(819, 87, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(820, 87, 'layout_homepage_0_collections_1_image', '58'),
(821, 87, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(822, 87, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(823, 87, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(824, 87, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(825, 87, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(826, 87, 'layout_homepage_0_collections_2_image', '73'),
(827, 87, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(828, 87, 'layout_homepage_0_collections', '3'),
(829, 87, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(830, 87, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(831, 87, '_layout_homepage', 'field_64c00da726b1c'),
(832, 88, 'liste_des_collections_0_collections_0_titre', 'Collection Laptop'),
(833, 88, '_liste_des_collections_0_collections_0_titre', 'field_64c00e5026b1d'),
(834, 88, 'liste_des_collections_0_collections_0_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(835, 88, '_liste_des_collections_0_collections_0_lien', 'field_64c00e6e26b1e'),
(836, 88, 'liste_des_collections_0_collections_0_image', '58'),
(837, 88, '_liste_des_collections_0_collections_0_image', 'field_64c00ebc26b1f'),
(838, 88, 'liste_des_collections_0_collections_1_titre', 'Collection accessoires'),
(839, 88, '_liste_des_collections_0_collections_1_titre', 'field_64c00e5026b1d'),
(840, 88, 'liste_des_collections_0_collections_1_lien', 'a:3:{s:5:\"title\";s:18:\"Acheter maintenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(841, 88, '_liste_des_collections_0_collections_1_lien', 'field_64c00e6e26b1e'),
(842, 88, 'liste_des_collections_0_collections_1_image', '73'),
(843, 88, '_liste_des_collections_0_collections_1_image', 'field_64c00ebc26b1f'),
(844, 88, 'liste_des_collections_0_collections_2_titre', 'Collection cameras'),
(845, 88, '_liste_des_collections_0_collections_2_titre', 'field_64c00e5026b1d'),
(846, 88, 'liste_des_collections_0_collections_2_lien', 'a:3:{s:5:\"title\";s:17:\"Acheter maitenant\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(847, 88, '_liste_des_collections_0_collections_2_lien', 'field_64c00e6e26b1e'),
(848, 88, 'liste_des_collections_0_collections_2_image', '45'),
(849, 88, '_liste_des_collections_0_collections_2_image', 'field_64c00ebc26b1f'),
(850, 88, 'liste_des_collections_0_collections', '3'),
(851, 88, '_liste_des_collections_0_collections', 'field_64c00ef626b20'),
(852, 88, 'liste_des_collections', 'a:1:{i:0;s:19:\"section_collections\";}'),
(853, 88, '_liste_des_collections', 'field_64c00da726b1c'),
(854, 88, 'layout_homepage_0_collections_0_titre', 'Collection 1'),
(855, 88, '_layout_homepage_0_collections_0_titre', 'field_64c00e5026b1d'),
(856, 88, 'layout_homepage_0_collections_0_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 1\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(857, 88, '_layout_homepage_0_collections_0_lien', 'field_64c00e6e26b1e'),
(858, 88, 'layout_homepage_0_collections_0_image', '64'),
(859, 88, '_layout_homepage_0_collections_0_image', 'field_64c00ebc26b1f'),
(860, 88, 'layout_homepage_0_collections_1_titre', 'Collection 2'),
(861, 88, '_layout_homepage_0_collections_1_titre', 'field_64c00e5026b1d'),
(862, 88, 'layout_homepage_0_collections_1_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 2\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(863, 88, '_layout_homepage_0_collections_1_lien', 'field_64c00e6e26b1e'),
(864, 88, 'layout_homepage_0_collections_1_image', '58'),
(865, 88, '_layout_homepage_0_collections_1_image', 'field_64c00ebc26b1f'),
(866, 88, 'layout_homepage_0_collections_2_titre', 'Collection 3'),
(867, 88, '_layout_homepage_0_collections_2_titre', 'field_64c00e5026b1d'),
(868, 88, 'layout_homepage_0_collections_2_lien', 'a:3:{s:5:\"title\";s:6:\"Lien 3\";s:3:\"url\";s:27:\"http://electro.mg/produits/\";s:6:\"target\";s:0:\"\";}'),
(869, 88, '_layout_homepage_0_collections_2_lien', 'field_64c00e6e26b1e'),
(870, 88, 'layout_homepage_0_collections_2_image', '73'),
(871, 88, '_layout_homepage_0_collections_2_image', 'field_64c00ebc26b1f'),
(872, 88, 'layout_homepage_0_collections', '3'),
(873, 88, '_layout_homepage_0_collections', 'field_64c00ef626b20'),
(874, 88, 'layout_homepage', 'a:1:{i:0;s:19:\"section_collections\";}'),
(875, 88, '_layout_homepage', 'field_64c00da726b1c'),
(876, 89, '_sku', 'laptop-7-1'),
(877, 89, '_regular_price', '150'),
(878, 89, '_sale_price', '100'),
(879, 89, 'total_sales', '0'),
(880, 89, '_tax_status', 'taxable'),
(881, 89, '_tax_class', ''),
(882, 89, '_manage_stock', 'yes'),
(883, 89, '_backorders', 'yes'),
(884, 89, '_low_stock_amount', '1'),
(885, 89, '_sold_individually', 'no'),
(886, 89, '_weight', '1.5'),
(887, 89, '_length', '2'),
(888, 89, '_width', '5'),
(889, 89, '_height', '20'),
(890, 89, '_purchase_note', 'Le meilleur laptop en 2023'),
(891, 89, '_virtual', 'no'),
(892, 89, '_downloadable', 'no'),
(893, 89, '_download_limit', '-1'),
(894, 89, '_download_expiry', '-1'),
(895, 89, '_thumbnail_id', '70'),
(896, 89, '_stock', '50'),
(897, 89, '_stock_status', 'instock'),
(898, 89, '_wc_average_rating', '0'),
(899, 89, '_wc_review_count', '0'),
(900, 89, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(901, 89, '_product_version', '7.9.0'),
(902, 89, '_price', '100'),
(903, 89, '_edit_lock', '1690482541:1'),
(904, 89, '_edit_last', '1'),
(905, 90, '_sku', 'laptop-7-1-1'),
(906, 90, '_regular_price', '150'),
(907, 90, '_sale_price', '100'),
(908, 90, 'total_sales', '0'),
(909, 90, '_tax_status', 'taxable'),
(910, 90, '_tax_class', ''),
(911, 90, '_manage_stock', 'yes'),
(912, 90, '_backorders', 'yes'),
(913, 90, '_low_stock_amount', '1'),
(914, 90, '_sold_individually', 'no'),
(915, 90, '_weight', '1.5'),
(916, 90, '_length', '2'),
(917, 90, '_width', '5'),
(918, 90, '_height', '20'),
(919, 90, '_purchase_note', 'Le meilleur laptop en 2023'),
(920, 90, '_virtual', 'no'),
(921, 90, '_downloadable', 'no'),
(922, 90, '_download_limit', '-1'),
(923, 90, '_download_expiry', '-1'),
(924, 90, '_thumbnail_id', '70'),
(925, 90, '_stock', '50'),
(926, 90, '_stock_status', 'instock'),
(927, 90, '_wc_average_rating', '0'),
(928, 90, '_wc_review_count', '0'),
(929, 90, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(930, 90, '_product_version', '7.9.0'),
(931, 90, '_price', '100'),
(932, 90, '_edit_lock', '1690482744:1'),
(933, 90, '_edit_last', '1'),
(934, 91, '_sku', 'laptop-7-1-1-1'),
(935, 91, '_regular_price', '150'),
(936, 91, '_sale_price', '100'),
(937, 91, 'total_sales', '0'),
(938, 91, '_tax_status', 'taxable'),
(939, 91, '_tax_class', ''),
(940, 91, '_manage_stock', 'yes'),
(941, 91, '_backorders', 'yes'),
(942, 91, '_low_stock_amount', '1'),
(943, 91, '_sold_individually', 'no'),
(944, 91, '_weight', '1.5'),
(945, 91, '_length', '2'),
(946, 91, '_width', '5'),
(947, 91, '_height', '20'),
(948, 91, '_purchase_note', 'Le meilleur laptop en 2023'),
(949, 91, '_virtual', 'no'),
(950, 91, '_downloadable', 'no'),
(951, 91, '_download_limit', '-1'),
(952, 91, '_download_expiry', '-1'),
(953, 91, '_thumbnail_id', '70'),
(954, 91, '_stock', '50'),
(955, 91, '_stock_status', 'instock'),
(956, 91, '_wc_average_rating', '0'),
(957, 91, '_wc_review_count', '0'),
(958, 91, '_product_attributes', 'a:6:{s:7:\"couleur\";a:6:{s:4:\"name\";s:7:\"Couleur\";s:5:\"value\";s:5:\"Blanc\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:3:\"son\";a:6:{s:4:\"name\";s:3:\"Son\";s:5:\"value\";s:8:\"Stéréo\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:6:\"marque\";a:6:{s:4:\"name\";s:6:\"Marque\";s:5:\"value\";s:5:\"Apple\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"image\";a:6:{s:4:\"name\";s:5:\"Image\";s:5:\"value\";s:2:\"HD\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:5:\"video\";a:6:{s:4:\"name\";s:5:\"Video\";s:5:\"value\";s:3:\"UHD\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"stockage\";a:6:{s:4:\"name\";s:8:\"Stockage\";s:5:\"value\";s:22:\"RAM4Go/ Stockage 128Go\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(959, 91, '_product_version', '7.9.0'),
(960, 91, '_price', '100'),
(961, 91, '_edit_lock', '1690484969:1'),
(962, 91, '_edit_last', '1'),
(978, 35, '_wp_old_date', '2023-07-25'),
(977, 34, '_wp_old_date', '2023-07-25'),
(984, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(985, 96, '_menu_item_xfn', ''),
(986, 96, '_menu_item_url', ''),
(1017, 100, '_menu_item_object_id', '6'),
(1018, 100, '_menu_item_object', 'category'),
(1019, 100, '_menu_item_target', ''),
(1020, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1021, 100, '_menu_item_xfn', ''),
(1022, 100, '_menu_item_url', ''),
(1024, 101, '_menu_item_type', 'post_type'),
(1030, 101, '_menu_item_xfn', ''),
(1031, 101, '_menu_item_url', ''),
(1033, 102, '_menu_item_type', 'post_type'),
(1034, 102, '_menu_item_menu_item_parent', '0'),
(1035, 102, '_menu_item_object_id', '38'),
(1036, 102, '_menu_item_object', 'page'),
(1037, 102, '_menu_item_target', ''),
(1038, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1039, 102, '_menu_item_xfn', ''),
(1040, 102, '_menu_item_url', ''),
(1045, 104, '_wp_attached_file', '2023/08/screenshot.jpg'),
(1042, 33, '_wp_old_date', '2023-07-25'),
(1043, 31, '_wp_old_date', '2023-07-25'),
(1044, 32, '_wp_old_date', '2023-07-25'),
(1046, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1871;s:6:\"height\";i:1163;s:4:\"file\";s:22:\"2023/08/screenshot.jpg\";s:8:\"filesize\";i:267186;s:5:\"sizes\";a:11:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"screenshot-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11229;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"screenshot-1024x637.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:637;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64781;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"screenshot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"screenshot-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43228;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"screenshot-1536x955.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:955;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118653;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:22:\"screenshot-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:22:\"screenshot-483x300.jpg\";s:5:\"width\";i:483;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22086;}s:18:\"image_size_product\";a:5:{s:4:\"file\";s:22:\"screenshot-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15641;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"screenshot-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19904;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"screenshot-600x373.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30897;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"screenshot-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530956353\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1047, 105, '_wp_attached_file', '2023/08/logo.png'),
(1048, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:122;s:6:\"height\";i:42;s:4:\"file\";s:16:\"2023/08/logo.png\";s:8:\"filesize\";i:8297;s:5:\"sizes\";a:2:{s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:15:\"logo-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1049, 106, '_wp_attached_file', '2023/08/logo-1.png'),
(1050, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:122;s:6:\"height\";i:42;s:4:\"file\";s:18:\"2023/08/logo-1.png\";s:8:\"filesize\";i:8297;s:5:\"sizes\";a:2:{s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:17:\"logo-1-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"logo-1-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1051, 107, '_wp_attached_file', '2023/08/logo-2.png'),
(1052, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:122;s:6:\"height\";i:42;s:4:\"file\";s:18:\"2023/08/logo-2.png\";s:8:\"filesize\";i:8297;s:5:\"sizes\";a:2:{s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:17:\"logo-2-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"logo-2-100x42.png\";s:5:\"width\";i:100;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1053, 108, '_wp_attached_file', '2023/08/screenshot-1.jpg');
INSERT INTO `electro_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1054, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1871;s:6:\"height\";i:1163;s:4:\"file\";s:24:\"2023/08/screenshot-1.jpg\";s:8:\"filesize\";i:267186;s:5:\"sizes\";a:11:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"screenshot-1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11229;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"screenshot-1-1024x637.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:637;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64781;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"screenshot-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"screenshot-1-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43228;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"screenshot-1-1536x955.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:955;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118653;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:24:\"screenshot-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:24:\"screenshot-1-483x300.jpg\";s:5:\"width\";i:483;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22086;}s:18:\"image_size_product\";a:5:{s:4:\"file\";s:24:\"screenshot-1-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15641;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"screenshot-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19904;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:24:\"screenshot-1-600x373.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30897;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"screenshot-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530956353\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1055, 109, '_wp_attached_file', '2023/08/screenshot-2.jpg'),
(1056, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1871;s:6:\"height\";i:1163;s:4:\"file\";s:24:\"2023/08/screenshot-2.jpg\";s:8:\"filesize\";i:267186;s:5:\"sizes\";a:11:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"screenshot-2-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11229;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"screenshot-2-1024x637.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:637;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64781;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"screenshot-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"screenshot-2-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43228;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"screenshot-2-1536x955.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:955;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118653;}s:18:\"actualite_vignette\";a:5:{s:4:\"file\";s:24:\"screenshot-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}s:16:\"actualite_medium\";a:5:{s:4:\"file\";s:24:\"screenshot-2-483x300.jpg\";s:5:\"width\";i:483;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22086;}s:18:\"image_size_product\";a:5:{s:4:\"file\";s:24:\"screenshot-2-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15641;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"screenshot-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19904;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:24:\"screenshot-2-600x373.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30897;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"screenshot-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4434;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530956353\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `electro_posts`
--

DROP TABLE IF EXISTS `electro_posts`;
CREATE TABLE IF NOT EXISTS `electro_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_posts`
--

INSERT INTO `electro_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-07-22 12:18:42', '2023-07-22 10:18:42', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2023-07-22 12:18:42', '2023-07-22 10:18:42', '', 0, 'http://electro.mg/?p=1', 0, 'post', '', 1),
(2, 1, '2023-07-22 12:18:42', '2023-07-22 10:18:42', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://electro.mg/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2023-07-22 12:18:42', '2023-07-22 10:18:42', '', 0, 'http://electro.mg/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-07-22 12:18:42', '2023-07-22 10:18:42', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://electro.mg.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Où vos données sont envoyées</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2023-07-22 12:18:42', '2023-07-22 10:18:42', '', 0, 'http://electro.mg/?page_id=3', 0, 'page', '', 0),
(97, 1, '2023-08-11 04:37:07', '2023-08-11 02:37:07', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2023-08-11 04:37:07', '2023-08-11 02:37:07', '', 0, 'http://electro.mg/?p=97', 2, 'nav_menu_item', '', 0),
(5, 1, '2023-07-22 15:02:41', '2023-07-22 13:02:41', '<!-- wp:woocommerce/all-products {\"columns\":3,\"rows\":3,\"alignButtons\":false,\"contentVisibility\":{\"orderBy\":true},\"orderby\":\"date\",\"layoutConfig\":[[\"woocommerce/product-image\",{\"showProductLink\":true,\"showSaleBadge\":true,\"saleBadgeAlign\":\"right\",\"imageSizing\":\"thumbnail\",\"productId\":0,\"isDescendentOfQueryLoop\":false,\"isDescendentOfSingleProductBlock\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-title\",{\"headingLevel\":2,\"showProductLink\":true,\"productId\":0,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-price\",{\"productId\":0,\"isDescendentOfQueryLoop\":false,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-rating\",{\"productId\":0,\"isDescendentOfQueryLoop\":false,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"isDescendentOfSingleProductTemplate\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-button\",{\"productId\":0,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"isDescendentOfQueryLoop\":false,\"children\":[],\"className\":\"\",\"isDescendantOfAllProducts\":true}]]} -->\n<div class=\"wp-block-woocommerce-all-products wc-block-all-products\" data-attributes=\"{&quot;alignButtons&quot;:false,&quot;columns&quot;:3,&quot;contentVisibility&quot;:{&quot;orderBy&quot;:true},&quot;isPreview&quot;:false,&quot;layoutConfig&quot;:[[&quot;woocommerce/product-image&quot;,{&quot;showProductLink&quot;:true,&quot;showSaleBadge&quot;:true,&quot;saleBadgeAlign&quot;:&quot;right&quot;,&quot;imageSizing&quot;:&quot;thumbnail&quot;,&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-title&quot;,{&quot;headingLevel&quot;:2,&quot;showProductLink&quot;:true,&quot;productId&quot;:0,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-price&quot;,{&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-rating&quot;,{&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;isDescendentOfSingleProductTemplate&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-button&quot;,{&quot;productId&quot;:0,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;isDescendentOfQueryLoop&quot;:false,&quot;children&quot;:[],&quot;className&quot;:&quot;&quot;,&quot;isDescendantOfAllProducts&quot;:true}]],&quot;orderby&quot;:&quot;date&quot;,&quot;rows&quot;:3}\"><!-- wp:woocommerce/product-image {\"imageSizing\":\"thumbnail\"} -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:woocommerce/product-title -->\n<div class=\"wp-block-woocommerce-product-title is-loading\"></div>\n<!-- /wp:woocommerce/product-title -->\n\n<!-- wp:woocommerce/product-price -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-price -->\n\n<!-- wp:woocommerce/product-rating -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-rating -->\n\n<!-- wp:woocommerce/product-button -->\n<div class=\"wp-block-woocommerce-product-button is-loading\"></div>\n<!-- /wp:woocommerce/product-button --></div>\n<!-- /wp:woocommerce/all-products -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2023-07-27 20:03:28', '2023-07-27 18:03:28', '', 0, 'http://electro.mg/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-07-22 15:02:41', '2023-07-22 13:02:41', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-22 15:02:41', '2023-07-22 13:02:41', '', 5, 'http://electro.mg/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-07-22 16:06:58', '2023-07-22 14:06:58', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2023-07-22 16:08:19', '2023-07-22 14:08:19', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2023-07-22 16:07:05', '2023-07-22 14:07:05', 'http://electro.mg/wp-content/uploads/2023/07/cropped-favicon.jpg', 'cropped-favicon.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-jpg', '', '', '2023-07-22 16:07:05', '2023-07-22 14:07:05', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/cropped-favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2023-07-22 16:07:26', '2023-07-22 14:07:26', '{\n    \"site_icon\": {\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-22 14:07:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfe566bf-2f41-44fe-9894-fa5f3d4b32cc', '', '', '2023-07-22 16:07:26', '2023-07-22 14:07:26', '', 0, 'http://electro.mg/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2023-07-25 03:30:35', '2023-07-25 01:30:35', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-07-25 03:30:35', '2023-07-25 01:30:35', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/logo.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2023-08-11 04:37:49', '2023-08-11 02:37:49', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2023-08-11 04:37:49', '2023-08-11 02:37:49', '', 0, 'http://electro.mg/?p=101', 4, 'nav_menu_item', '', 0),
(100, 1, '2023-08-11 04:37:07', '2023-08-11 02:37:07', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2023-08-11 04:37:07', '2023-08-11 02:37:07', '', 0, 'http://electro.mg/?p=100', 5, 'nav_menu_item', '', 0),
(99, 1, '2023-08-11 04:37:07', '2023-08-11 02:37:07', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2023-08-11 04:37:07', '2023-08-11 02:37:07', '', 0, 'http://electro.mg/?p=99', 4, 'nav_menu_item', '', 0),
(98, 1, '2023-08-11 04:37:07', '2023-08-11 02:37:07', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2023-08-11 04:37:07', '2023-08-11 02:37:07', '', 0, 'http://electro.mg/?p=98', 3, 'nav_menu_item', '', 0),
(16, 1, '2023-07-25 04:49:05', '2023-07-25 02:49:05', '', 'Helps', '', 'publish', 'closed', 'closed', '', 'helps', '', '', '2023-07-25 04:49:22', '2023-07-25 02:49:22', '', 0, 'http://electro.mg/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-07-25 04:49:05', '2023-07-25 02:49:05', '', 'Helps', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-25 04:49:05', '2023-07-25 02:49:05', '', 16, 'http://electro.mg/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-07-25 04:49:52', '2023-07-25 02:49:52', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-07-25 04:49:52', '2023-07-25 02:49:52', '', 0, 'http://electro.mg/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-07-25 04:49:52', '2023-07-25 02:49:52', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-07-25 04:49:52', '2023-07-25 02:49:52', '', 18, 'http://electro.mg/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-07-25 04:50:33', '2023-07-25 02:50:33', '', 'Produits', '', 'publish', 'closed', 'closed', '', 'produits', '', '', '2023-07-25 04:50:33', '2023-07-25 02:50:33', '', 0, 'http://electro.mg/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-07-25 04:50:33', '2023-07-25 02:50:33', '', 'Produits', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-07-25 04:50:33', '2023-07-25 02:50:33', '', 20, 'http://electro.mg/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-07-25 04:51:14', '2023-07-25 02:51:14', '', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2023-07-25 04:51:14', '2023-07-25 02:51:14', '', 0, 'http://electro.mg/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-07-25 04:51:14', '2023-07-25 02:51:14', '', 'Mon compte', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-07-25 04:51:14', '2023-07-25 02:51:14', '', 22, 'http://electro.mg/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-07-25 04:52:20', '2023-07-25 02:52:20', '', 'Mes favoris', '', 'publish', 'closed', 'closed', '', 'mes-favoris', '', '', '2023-07-25 04:52:20', '2023-07-25 02:52:20', '', 0, 'http://electro.mg/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-07-25 04:52:20', '2023-07-25 02:52:20', '', 'Mes favoris', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-07-25 04:52:20', '2023-07-25 02:52:20', '', 24, 'http://electro.mg/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-07-25 04:52:39', '2023-07-25 02:52:39', '', 'Mon panier', '', 'publish', 'closed', 'closed', '', 'mon-panier', '', '', '2023-07-25 04:52:39', '2023-07-25 02:52:39', '', 0, 'http://electro.mg/?page_id=26', 0, 'page', '', 0),
(27, 1, '2023-07-25 04:52:39', '2023-07-25 02:52:39', '', 'Mon panier', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-07-25 04:52:39', '2023-07-25 02:52:39', '', 26, 'http://electro.mg/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-07-25 05:07:59', '2023-07-25 02:54:30', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2023-07-25 05:07:59', '2023-07-25 03:07:59', '', 0, 'http://electro.mg/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2023-07-25 05:07:59', '2023-07-25 02:54:30', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2023-07-25 05:07:59', '2023-07-25 03:07:59', '', 0, 'http://electro.mg/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2023-07-25 05:07:59', '2023-07-25 02:54:30', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2023-07-25 05:07:59', '2023-07-25 03:07:59', '', 0, 'http://electro.mg/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2023-08-11 04:37:49', '2023-07-25 02:55:57', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2023-08-11 04:37:49', '2023-08-11 02:37:49', '', 0, 'http://electro.mg/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2023-08-11 04:37:49', '2023-07-25 02:55:57', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2023-08-11 04:37:49', '2023-08-11 02:37:49', '', 0, 'http://electro.mg/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2023-08-11 04:37:49', '2023-07-25 02:55:57', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2023-08-11 04:37:49', '2023-08-11 02:37:49', '', 0, 'http://electro.mg/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2023-08-11 04:35:28', '2023-07-25 02:57:40', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2023-08-11 04:35:28', '2023-08-11 02:35:28', '', 0, 'http://electro.mg/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2023-08-11 04:35:28', '2023-07-25 02:57:40', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2023-08-11 04:35:28', '2023-08-11 02:35:28', '', 0, 'http://electro.mg/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2023-07-25 05:06:54', '2023-07-25 03:06:54', '{\n    \"electro::nav_menu_locations[menu_information]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-25 03:06:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9388315c-5401-4cf4-b1f1-5ca6ba560425', '', '', '2023-07-25 05:06:54', '2023-07-25 03:06:54', '', 0, 'http://electro.mg/9388315c-5401-4cf4-b1f1-5ca6ba560425/', 0, 'customize_changeset', '', 0),
(37, 1, '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 0, 'http://electro.mg/shop/', 0, 'page', '', 0),
(39, 1, '2023-07-25 17:35:56', '2023-07-25 15:35:56', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 0, 'http://electro.mg/cart/', 0, 'page', '', 0),
(40, 1, '2023-07-25 17:35:56', '2023-07-25 15:35:56', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 0, 'http://electro.mg/checkout/', 0, 'page', '', 0),
(41, 1, '2023-07-25 17:35:56', '2023-07-25 15:35:56', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2023-07-25 17:35:56', '2023-07-25 15:35:56', '', 0, 'http://electro.mg/my-account/', 0, 'page', '', 0),
(42, 1, '2023-07-25 18:58:39', '2023-07-25 16:58:39', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h3>Overview</h3></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Gift cards</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Downloadable software products</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Some health and personal care items</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Book with obvious signs of use</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Any item that is returned more than 30 days after delivery</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><h2>Refunds</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><b>Late or missing refunds</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><b>Sale items</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Exchanges</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Gifts</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Shipping returns</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Need help?</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'publish', 'closed', 'closed', '', 'refund_returns', '', '', '2023-07-25 18:58:39', '2023-07-25 16:58:39', '', 0, 'http://electro.mg/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-07-25 17:39:36', '2023-07-25 15:39:36', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Laptop 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'laptop-1', '', '', '2023-07-25 18:42:58', '2023-07-25 16:42:58', '', 0, 'http://electro.mg/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2023-07-25 18:40:51', '2023-07-25 16:40:51', '', 'laptop-1', '', 'inherit', 'open', 'closed', '', 'product06', '', '', '2023-07-25 18:41:22', '2023-07-25 16:41:22', '', 43, 'http://electro.mg/wp-content/uploads/2023/07/product06.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2023-07-25 18:44:23', '2023-07-25 16:44:23', '', 'product09', '', 'inherit', 'open', 'closed', '', 'product09', '', '', '2023-07-25 20:20:48', '2023-07-25 18:20:48', '', 5, 'http://electro.mg/wp-content/uploads/2023/07/product09.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2023-07-25 18:45:20', '2023-07-25 16:45:20', '', 'product04', '', 'inherit', 'open', 'closed', '', 'product04', '', '', '2023-07-25 18:45:20', '2023-07-25 16:45:20', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/product04.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2023-07-25 18:46:51', '2023-07-25 16:46:51', '', 'product07', '', 'inherit', 'open', 'closed', '', 'product07', '', '', '2023-07-27 02:41:02', '2023-07-27 00:41:02', '', 5, 'http://electro.mg/wp-content/uploads/2023/07/product07.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2023-07-25 18:48:13', '2023-07-25 16:48:13', '', 'shop03', '', 'inherit', 'open', 'closed', '', 'shop03', '', '', '2023-07-25 18:48:13', '2023-07-25 16:48:13', '', 0, 'http://electro.mg/wp-content/uploads/2023/07/shop03.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2023-07-25 18:51:29', '2023-07-25 16:51:29', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Laptop 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'laptop-2', '', '', '2023-07-25 19:11:03', '2023-07-25 17:11:03', '', 0, 'http://electro.mg/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2023-07-25 18:52:43', '2023-07-25 16:52:43', '', 'product01', '', 'inherit', 'open', 'closed', '', 'product01', '', '', '2023-07-25 18:52:43', '2023-07-25 16:52:43', '', 49, 'http://electro.mg/wp-content/uploads/2023/07/product01.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2023-07-25 18:56:39', '2023-07-25 16:56:39', '<!-- wp:cover {\"url\":\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\",\"id\":52,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-52\" src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"className\":\"has-large-font-size\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size has-white-color has-text-color\">Welcome to the store</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\",\"className\":\"has-text-color\"} -->\n<p class=\"has-text-align-center has-text-color has-white-color\">Write a short welcome message here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product {\"editMode\":false,\"productId\":65} -->\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/product/cameras-1/\">Shop now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n<!-- /wp:woocommerce/featured-product -->', 'Homepage 2', '', 'publish', 'closed', 'closed', '', 'homepage-22', '', '', '2023-07-27 20:44:29', '2023-07-27 18:44:29', '', 0, 'http://electro.mg/homepage-2/', 0, 'page', '', 0),
(52, 1, '2023-07-25 18:56:39', '2023-07-25 16:56:39', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2023-07-25 18:56:39', '2023-07-25 16:56:39', '', 51, 'http://electro.mg/wp-content/uploads/2023/07/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-07-25 18:56:40', '2023-07-25 16:56:40', '<!-- wp:cover {\"url\":\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\",\"id\":52,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://electro.mg/wp-content/uploads/2023/07/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n			<div class=\"wp-block-buttons\"><!-- wp:button -->\n			<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://electro.mg/shop/\">Go shopping</a></div>\n			<!-- /wp:button --></div>\n			<!-- /wp:buttons --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">New Products</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-07-25 18:56:40', '2023-07-25 16:56:40', '', 51, 'http://electro.mg/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-07-25 18:58:39', '2023-07-25 16:58:39', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h3>Overview</h3></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Gift cards</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Downloadable software products</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Some health and personal care items</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Book with obvious signs of use</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Any item that is returned more than 30 days after delivery</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><h2>Refunds</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><b>Late or missing refunds</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><b>Sale items</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Exchanges</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Gifts</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Shipping returns</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><h2>Need help?</h2></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-07-25 18:58:39', '2023-07-25 16:58:39', '', 42, 'http://electro.mg/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-07-25 19:07:18', '2023-07-25 17:07:18', '<!-- wp:cover {\"url\":\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\",\"id\":52,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://electro.mg/wp-content/uploads/2023/07/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n			<div class=\"wp-block-buttons\"><!-- wp:button -->\n			<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"http://electro.mg/shop/\">Go shopping</a></div>\n			<!-- /wp:button --></div>\n			<!-- /wp:buttons --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">New Products</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Homepage 2', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-07-25 19:07:18', '2023-07-25 17:07:18', '', 51, 'http://electro.mg/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-07-25 19:11:10', '2023-07-25 17:11:10', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Laptop 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'laptop-3', '', '', '2023-07-25 19:16:39', '2023-07-25 17:16:39', '', 0, 'http://electro.mg/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2023-07-25 19:11:39', '2023-07-25 17:11:39', '', 'product01', '', 'inherit', 'open', 'closed', '', 'product01-2', '', '', '2023-07-25 19:11:39', '2023-07-25 17:11:39', '', 56, 'http://electro.mg/wp-content/uploads/2023/07/product01-1.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2023-07-25 19:11:54', '2023-07-25 17:11:54', '', 'shop01', '', 'inherit', 'open', 'closed', '', 'shop01', '', '', '2023-07-25 19:11:54', '2023-07-25 17:11:54', '', 56, 'http://electro.mg/wp-content/uploads/2023/07/shop01.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2023-07-25 19:17:16', '2023-07-25 17:17:16', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Laptop 4', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'laptop-4', '', '', '2023-08-11 04:25:42', '2023-08-11 02:25:42', '', 0, 'http://electro.mg/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2023-07-25 19:20:03', '2023-07-25 17:20:03', '', 'product03', '', 'inherit', 'open', 'closed', '', 'product03', '', '', '2023-07-25 19:20:03', '2023-07-25 17:20:03', '', 59, 'http://electro.mg/wp-content/uploads/2023/07/product03.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2023-07-25 19:21:01', '2023-07-25 17:21:01', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Casque 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'casque-1', '', '', '2023-07-25 19:30:40', '2023-07-25 17:30:40', '', 0, 'http://electro.mg/?post_type=product&#038;p=61', 0, 'product', '', 0);
INSERT INTO `electro_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2023-08-11 04:26:44', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-08-11 04:26:44', '0000-00-00 00:00:00', '', 0, 'http://electro.mg/?p=94', 0, 'post', '', 0),
(63, 1, '2023-07-25 19:26:20', '2023-07-25 17:26:20', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Casque 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'casque-2', '', '', '2023-08-11 04:25:43', '2023-08-11 02:25:43', '', 0, 'http://electro.mg/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2023-07-25 19:26:48', '2023-07-25 17:26:48', '', 'product05', '', 'inherit', 'open', 'closed', '', 'product05', '', '', '2023-07-25 19:26:48', '2023-07-25 17:26:48', '', 63, 'http://electro.mg/wp-content/uploads/2023/07/product05.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2023-07-25 19:35:13', '2023-07-25 17:35:13', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Cameras 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'cameras-1', '', '', '2023-07-25 19:38:41', '2023-07-25 17:38:41', '', 0, 'http://electro.mg/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2023-07-25 19:38:32', '2023-07-25 17:38:32', '', 'shop02', '', 'inherit', 'open', 'closed', '', 'shop02', '', '', '2023-07-25 19:38:32', '2023-07-25 17:38:32', '', 65, 'http://electro.mg/wp-content/uploads/2023/07/shop02.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2023-07-25 19:39:06', '2023-07-25 17:39:06', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Cameras 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'cameras-2', '', '', '2023-07-25 19:40:18', '2023-07-25 17:40:18', '', 0, 'http://electro.mg/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2023-07-25 19:40:44', '2023-07-25 17:40:44', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Smartphone 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'smartphone-1', '', '', '2023-07-25 19:45:50', '2023-07-25 17:45:50', '', 0, 'http://electro.mg/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2023-07-25 19:43:51', '2023-07-25 17:43:51', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Tablette 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'tablette-1', '', '', '2023-07-25 19:45:11', '2023-07-25 17:45:11', '', 0, 'http://electro.mg/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2023-07-25 19:44:14', '2023-07-25 17:44:14', '', 'product04', '', 'inherit', 'open', 'closed', '', 'product04-2', '', '', '2023-07-25 19:44:14', '2023-07-25 17:44:14', '', 69, 'http://electro.mg/wp-content/uploads/2023/07/product04-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2023-07-25 19:46:20', '2023-07-25 17:46:20', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Laptop 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'publish', 'open', 'closed', '', 'laptop-7', '', '', '2023-07-25 19:52:59', '2023-07-25 17:52:59', '', 0, 'http://electro.mg/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2023-07-25 19:47:07', '2023-07-25 17:47:07', '', 'hotdeal', '', 'inherit', 'open', 'closed', '', 'hotdeal', '', '', '2023-07-25 19:47:07', '2023-07-25 17:47:07', '', 71, 'http://electro.mg/wp-content/uploads/2023/07/hotdeal.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2023-07-25 19:49:53', '2023-07-25 17:49:53', '', 'shop03', '', 'inherit', 'open', 'closed', '', 'shop03-2', '', '', '2023-07-25 19:49:53', '2023-07-25 17:49:53', '', 71, 'http://electro.mg/wp-content/uploads/2023/07/shop03-1.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:13:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"page-templates/homepage.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:7:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:14:\"featured_image\";i:5;s:10:\"categories\";i:6;s:4:\"tags\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;s:18:\"acfe_display_title\";s:0:\"\";s:13:\"acfe_autosync\";a:1:{i:0;s:4:\"json\";}s:9:\"acfe_form\";i:0;s:9:\"acfe_meta\";s:0:\"\";s:9:\"acfe_note\";s:0:\"\";}', 'Layout Homepage', 'layout-homepage', 'publish', 'closed', 'closed', '', 'group_64c00da674fd7', '', '', '2023-07-27 04:03:17', '2023-07-27 02:03:17', '', 0, 'http://electro.mg/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:25:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:22:\"acfe_flexible_advanced\";i:1;s:29:\"acfe_flexible_stylised_button\";i:1;s:31:\"acfe_flexible_layouts_templates\";i:1;s:30:\"acfe_flexible_layouts_previews\";i:1;s:32:\"acfe_flexible_layouts_thumbnails\";i:0;s:30:\"acfe_flexible_layouts_settings\";i:0;s:19:\"acfe_flexible_async\";a:0:{}s:25:\"acfe_flexible_add_actions\";a:0:{}s:27:\"acfe_flexible_remove_button\";a:3:{i:0;s:3:\"add\";i:1;s:6:\"delete\";i:2;s:9:\"duplicate\";}s:27:\"acfe_flexible_layouts_state\";s:8:\"collapse\";s:24:\"acfe_flexible_modal_edit\";a:2:{s:32:\"acfe_flexible_modal_edit_enabled\";s:1:\"0\";s:29:\"acfe_flexible_modal_edit_size\";s:5:\"large\";}s:19:\"acfe_flexible_modal\";a:5:{s:27:\"acfe_flexible_modal_enabled\";s:1:\"0\";s:25:\"acfe_flexible_modal_title\";b:0;s:24:\"acfe_flexible_modal_size\";s:4:\"full\";s:23:\"acfe_flexible_modal_col\";s:1:\"4\";s:30:\"acfe_flexible_modal_categories\";b:0;}s:7:\"layouts\";a:1:{s:20:\"layout_64c00dfe06ee0\";a:14:{s:3:\"key\";s:20:\"layout_64c00dfe06ee0\";s:5:\"label\";s:19:\"Section collections\";s:4:\"name\";s:19:\"section_collections\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:1:\"1\";s:3:\"max\";s:1:\"1\";s:29:\"acfe_flexible_render_template\";s:0:\"\";s:26:\"acfe_flexible_render_style\";s:0:\"\";s:27:\"acfe_flexible_render_script\";s:0:\"\";s:23:\"acfe_flexible_thumbnail\";b:0;s:22:\"acfe_flexible_settings\";b:0;s:27:\"acfe_flexible_settings_size\";s:6:\"medium\";s:29:\"acfe_flexible_modal_edit_size\";b:0;s:22:\"acfe_flexible_category\";b:0;}}s:3:\"min\";i:1;s:3:\"max\";i:1;s:12:\"button_label\";s:20:\"Ajouter un élément\";s:32:\"acfe_flexible_hide_empty_message\";b:0;s:27:\"acfe_flexible_empty_message\";s:0:\"\";s:33:\"acfe_flexible_layouts_placeholder\";b:0;}', '', 'layout_homepage', 'publish', 'closed', 'closed', '', 'field_64c00da726b1c', '', '', '2023-07-27 04:00:24', '2023-07-27 02:00:24', '', 74, 'http://electro.mg/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(76, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_64c00dfe06ee0\";s:29:\"acfe_repeater_stylised_button\";i:0;s:6:\"layout\";s:5:\"table\";s:3:\"min\";i:3;s:3:\"max\";i:3;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:22:\"Ajouter une collection\";s:13:\"rows_per_page\";i:20;}', '', 'collections', 'publish', 'closed', 'closed', '', 'field_64c00ef626b20', '', '', '2023-07-27 02:38:55', '2023-07-27 00:38:55', '', 75, 'http://electro.mg/?post_type=acf-field&#038;p=76', 0, 'acf-field', '', 0),
(77, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"43\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_64c00e5026b1d', '', '', '2023-07-27 03:37:44', '2023-07-27 01:37:44', '', 76, 'http://electro.mg/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Lien', 'lien', 'publish', 'closed', 'closed', '', 'field_64c00e6e26b1e', '', '', '2023-07-27 03:37:44', '2023-07-27 01:37:44', '', 76, 'http://electro.mg/?post_type=acf-field&#038;p=78', 1, 'acf-field', '', 0),
(79, 1, '2023-07-25 20:08:16', '2023-07-25 18:08:16', 'a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"14\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"uploader\";s:0:\"\";s:13:\"return_format\";s:5:\"array\";s:14:\"acfe_thumbnail\";i:0;s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:240;s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_64c00ebc26b1f', '', '', '2023-07-27 03:58:15', '2023-07-27 01:58:15', '', 76, 'http://electro.mg/?post_type=acf-field&#038;p=79', 2, 'acf-field', '', 0),
(80, 1, '2023-07-25 20:20:48', '2023-07-25 18:20:48', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-25 20:20:48', '2023-07-25 18:20:48', '', 5, 'http://electro.mg/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-07-25 20:56:41', '2023-07-25 18:56:41', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-25 20:56:41', '2023-07-25 18:56:41', '', 5, 'http://electro.mg/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-07-27 02:41:02', '2023-07-27 00:41:02', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 02:41:02', '2023-07-27 00:41:02', '', 5, 'http://electro.mg/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-07-27 03:46:01', '2023-07-27 01:46:01', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 03:46:01', '2023-07-27 01:46:01', '', 5, 'http://electro.mg/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-07-27 04:05:12', '2023-07-27 02:05:12', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 04:05:12', '2023-07-27 02:05:12', '', 5, 'http://electro.mg/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-07-27 04:12:17', '2023-07-27 02:12:17', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 04:12:17', '2023-07-27 02:12:17', '', 5, 'http://electro.mg/?p=85', 0, 'revision', '', 0),
(87, 1, '2023-07-27 20:02:50', '2023-07-27 18:02:50', '<!-- wp:woocommerce/all-products {\"columns\":3,\"rows\":3,\"alignButtons\":false,\"contentVisibility\":{\"orderBy\":true},\"orderby\":\"date\",\"layoutConfig\":[[\"woocommerce/product-image\",{\"imageSizing\":\"thumbnail\"}],[\"woocommerce/product-title\"],[\"woocommerce/product-price\"],[\"woocommerce/product-rating\"],[\"woocommerce/product-button\"]]} -->\n<div class=\"wp-block-woocommerce-all-products wc-block-all-products\" data-attributes=\"{&quot;alignButtons&quot;:false,&quot;columns&quot;:3,&quot;contentVisibility&quot;:{&quot;orderBy&quot;:true},&quot;isPreview&quot;:false,&quot;layoutConfig&quot;:[[&quot;woocommerce/product-image&quot;,{&quot;imageSizing&quot;:&quot;thumbnail&quot;}],[&quot;woocommerce/product-title&quot;],[&quot;woocommerce/product-price&quot;],[&quot;woocommerce/product-rating&quot;],[&quot;woocommerce/product-button&quot;]],&quot;orderby&quot;:&quot;date&quot;,&quot;rows&quot;:3}\"><!-- wp:woocommerce/product-image {\"imageSizing\":\"thumbnail\"} -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:woocommerce/product-title -->\n<div class=\"wp-block-woocommerce-product-title is-loading\"></div>\n<!-- /wp:woocommerce/product-title -->\n\n<!-- wp:woocommerce/product-price -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-price -->\n\n<!-- wp:woocommerce/product-rating -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-rating -->\n\n<!-- wp:woocommerce/product-button -->\n<div class=\"wp-block-woocommerce-product-button is-loading\"></div>\n<!-- /wp:woocommerce/product-button --></div>\n<!-- /wp:woocommerce/all-products -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 20:02:50', '2023-07-27 18:02:50', '', 5, 'http://electro.mg/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-07-27 20:03:27', '2023-07-27 18:03:27', '<!-- wp:woocommerce/all-products {\"columns\":3,\"rows\":3,\"alignButtons\":false,\"contentVisibility\":{\"orderBy\":true},\"orderby\":\"date\",\"layoutConfig\":[[\"woocommerce/product-image\",{\"showProductLink\":true,\"showSaleBadge\":true,\"saleBadgeAlign\":\"right\",\"imageSizing\":\"thumbnail\",\"productId\":0,\"isDescendentOfQueryLoop\":false,\"isDescendentOfSingleProductBlock\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-title\",{\"headingLevel\":2,\"showProductLink\":true,\"productId\":0,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-price\",{\"productId\":0,\"isDescendentOfQueryLoop\":false,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-rating\",{\"productId\":0,\"isDescendentOfQueryLoop\":false,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"isDescendentOfSingleProductTemplate\":false,\"children\":[],\"isDescendantOfAllProducts\":true}],[\"woocommerce/product-button\",{\"productId\":0,\"textAlign\":\"\",\"isDescendentOfSingleProductBlock\":false,\"isDescendentOfQueryLoop\":false,\"children\":[],\"className\":\"\",\"isDescendantOfAllProducts\":true}]]} -->\n<div class=\"wp-block-woocommerce-all-products wc-block-all-products\" data-attributes=\"{&quot;alignButtons&quot;:false,&quot;columns&quot;:3,&quot;contentVisibility&quot;:{&quot;orderBy&quot;:true},&quot;isPreview&quot;:false,&quot;layoutConfig&quot;:[[&quot;woocommerce/product-image&quot;,{&quot;showProductLink&quot;:true,&quot;showSaleBadge&quot;:true,&quot;saleBadgeAlign&quot;:&quot;right&quot;,&quot;imageSizing&quot;:&quot;thumbnail&quot;,&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-title&quot;,{&quot;headingLevel&quot;:2,&quot;showProductLink&quot;:true,&quot;productId&quot;:0,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-price&quot;,{&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-rating&quot;,{&quot;productId&quot;:0,&quot;isDescendentOfQueryLoop&quot;:false,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;isDescendentOfSingleProductTemplate&quot;:false,&quot;children&quot;:[],&quot;isDescendantOfAllProducts&quot;:true}],[&quot;woocommerce/product-button&quot;,{&quot;productId&quot;:0,&quot;textAlign&quot;:&quot;&quot;,&quot;isDescendentOfSingleProductBlock&quot;:false,&quot;isDescendentOfQueryLoop&quot;:false,&quot;children&quot;:[],&quot;className&quot;:&quot;&quot;,&quot;isDescendantOfAllProducts&quot;:true}]],&quot;orderby&quot;:&quot;date&quot;,&quot;rows&quot;:3}\"><!-- wp:woocommerce/product-image {\"imageSizing\":\"thumbnail\"} -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-image -->\n\n<!-- wp:woocommerce/product-title -->\n<div class=\"wp-block-woocommerce-product-title is-loading\"></div>\n<!-- /wp:woocommerce/product-title -->\n\n<!-- wp:woocommerce/product-price -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-price -->\n\n<!-- wp:woocommerce/product-rating -->\n<div class=\"is-loading\"></div>\n<!-- /wp:woocommerce/product-rating -->\n\n<!-- wp:woocommerce/product-button -->\n<div class=\"wp-block-woocommerce-product-button is-loading\"></div>\n<!-- /wp:woocommerce/product-button --></div>\n<!-- /wp:woocommerce/all-products -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-07-27 20:03:27', '2023-07-27 18:03:27', '', 5, 'http://electro.mg/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-07-27 20:30:56', '2023-07-27 18:30:56', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Laptop 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'open', 'closed', '', 'laptop-8', '', '', '2023-07-27 20:31:13', '2023-07-27 18:31:13', '', 0, 'http://electro.mg/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2023-07-27 20:31:32', '2023-07-27 18:31:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Laptop 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'open', 'closed', '', 'laptop-9', '', '', '2023-07-27 20:32:24', '2023-07-27 18:32:24', '', 0, 'http://electro.mg/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2023-07-27 20:32:36', '2023-07-27 18:32:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Laptop 10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'publish', 'open', 'closed', '', 'laptop-10', '', '', '2023-07-27 21:09:28', '2023-07-27 19:09:28', '', 0, 'http://electro.mg/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2023-07-27 20:44:23', '2023-07-27 18:44:23', '<!-- wp:cover {\"url\":\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\",\"id\":52,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-52\" src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"className\":\"has-large-font-size\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size has-white-color has-text-color\">Welcome to the store</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\",\"className\":\"has-text-color\"} -->\n<p class=\"has-text-align-center has-text-color has-white-color\">Write a short welcome message here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product {\"editMode\":false,\"productId\":65} -->\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/product/cameras-1/\">Shop now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n<!-- /wp:woocommerce/featured-product -->', 'Homepage 2', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2023-07-27 20:44:23', '2023-07-27 18:44:23', '', 51, 'http://electro.mg/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-07-27 20:44:29', '2023-07-27 18:44:29', '<!-- wp:cover {\"url\":\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\",\"id\":52,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-52\" src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"className\":\"has-large-font-size\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size has-white-color has-text-color\">Welcome to the store</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\",\"className\":\"has-text-color\"} -->\n<p class=\"has-text-align-center has-text-color has-white-color\">Write a short welcome message here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":52,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"http://electro.mg/wp-content/uploads/2023/07/other-small.jpg\" alt=\"\" class=\"wp-image-52 size-full\"/></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product {\"editMode\":false,\"productId\":65} -->\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://electro.mg/product/cameras-1/\">Shop now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n<!-- /wp:woocommerce/featured-product -->', 'Homepage 2', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-07-27 20:44:29', '2023-07-27 18:44:29', '', 51, 'http://electro.mg/?p=93', 0, 'revision', '', 0),
(96, 1, '2023-08-11 04:37:07', '2023-08-11 02:37:07', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2023-08-11 04:37:07', '2023-08-11 02:37:07', '', 0, 'http://electro.mg/?p=96', 1, 'nav_menu_item', '', 0),
(102, 1, '2023-08-11 04:37:49', '2023-08-11 02:37:49', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2023-08-11 04:37:49', '2023-08-11 02:37:49', '', 0, 'http://electro.mg/?p=102', 5, 'nav_menu_item', '', 0),
(103, 1, '2023-08-13 06:08:32', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-08-13 06:08:32', '0000-00-00 00:00:00', '', 0, 'http://electro.mg/?post_type=acf-field-group&p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2023-08-15 14:10:55', '2023-08-15 12:10:55', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2023-08-15 14:10:55', '2023-08-15 12:10:55', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/screenshot.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-08-15 14:11:41', '2023-08-15 12:11:41', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2023-08-15 14:11:41', '2023-08-15 12:11:41', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/logo.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2023-08-15 14:16:19', '2023-08-15 12:16:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2023-08-15 14:16:19', '2023-08-15 12:16:19', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/logo-1.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2023-08-15 14:24:13', '2023-08-15 12:24:13', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-4', '', '', '2023-08-15 14:24:13', '2023-08-15 12:24:13', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/logo-2.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2023-08-15 15:18:15', '2023-08-15 13:18:15', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot-2', '', '', '2023-08-15 15:18:15', '2023-08-15 13:18:15', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/screenshot-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2023-08-15 15:18:26', '2023-08-15 13:18:26', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot-3', '', '', '2023-08-15 15:18:26', '2023-08-15 13:18:26', '', 0, 'http://electro.mg/wp-content/uploads/2023/08/screenshot-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2023-08-15 15:55:54', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-08-15 15:55:54', '0000-00-00 00:00:00', '', 0, 'http://electro.mg/?post_type=product&p=110', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `electro_post_views`
--

DROP TABLE IF EXISTS `electro_post_views`;
CREATE TABLE IF NOT EXISTS `electro_post_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `period` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `count` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`type`,`period`,`id`),
  UNIQUE KEY `id_type_period_count` (`id`,`type`,`period`,`count`) USING BTREE,
  KEY `type_period_count` (`type`,`period`,`count`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_termmeta`
--

DROP TABLE IF EXISTS `electro_termmeta`;
CREATE TABLE IF NOT EXISTS `electro_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_termmeta`
--

INSERT INTO `electro_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 23, 'product_count_product_cat', '2'),
(2, 24, 'order', '0'),
(3, 24, 'product_count_product_cat', '8'),
(4, 25, 'product_count_product_tag', '4'),
(5, 26, 'product_count_product_tag', '4'),
(6, 23, 'display_type', ''),
(7, 23, 'thumbnail_id', '45'),
(8, 24, 'display_type', ''),
(9, 24, 'thumbnail_id', '46'),
(10, 27, 'order', '0'),
(11, 27, 'display_type', ''),
(12, 27, 'thumbnail_id', '47'),
(13, 28, 'order', '0'),
(14, 28, 'display_type', ''),
(15, 28, 'thumbnail_id', '48'),
(16, 29, 'product_count_product_tag', '2'),
(17, 32, 'product_count_product_tag', '1'),
(18, 33, 'product_count_product_tag', '1'),
(19, 28, 'product_count_product_cat', '2'),
(20, 34, 'product_count_product_tag', '10'),
(21, 35, 'product_count_product_tag', '10'),
(22, 36, 'product_count_product_tag', '2'),
(23, 37, 'product_count_product_tag', '8'),
(24, 27, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Structure de la table `electro_terms`
--

DROP TABLE IF EXISTS `electro_terms`;
CREATE TABLE IF NOT EXISTS `electro_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_terms`
--

INSERT INTO `electro_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Hot deals', 'hot-deals', 0),
(38, 'Categorie', 'categorie', 0),
(3, 'Laptops', 'laptops', 0),
(4, 'Cameras', 'cameras', 0),
(5, 'Accessoires', 'accessoires', 0),
(6, 'Smartphones', 'smartphones', 0),
(7, 'Menu service', 'menu-service', 0),
(8, 'Menu informations', 'menu-informations', 0),
(9, 'Menu principale', 'menu-principale', 0),
(10, 'simple', 'simple', 0),
(11, 'grouped', 'grouped', 0),
(12, 'variable', 'variable', 0),
(13, 'external', 'external', 0),
(14, 'exclude-from-search', 'exclude-from-search', 0),
(15, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(16, 'featured', 'featured', 0),
(17, 'outofstock', 'outofstock', 0),
(18, 'rated-1', 'rated-1', 0),
(19, 'rated-2', 'rated-2', 0),
(20, 'rated-3', 'rated-3', 0),
(21, 'rated-4', 'rated-4', 0),
(22, 'rated-5', 'rated-5', 0),
(23, 'Cameras', 'cameras', 0),
(24, 'Laptop', 'laptop', 0),
(25, 'Laptop', 'laptop', 0),
(26, 'Slim', 'slim', 0),
(27, 'Smartphone', 'smartphone', 0),
(28, 'Accessoires', 'accessoires', 0),
(29, 'Tehcnologie', 'tehcnologie', 0),
(30, 'Micro', 'micro', 0),
(31, 'Puce', 'puce', 0),
(32, 'powered', 'powered', 0),
(33, 'warranted', 'warranted', 0),
(34, 'High', 'high', 0),
(35, 'Technologie', 'technologie', 0),
(36, 'Son', 'son', 0),
(37, 'HD', 'hd', 0);

-- --------------------------------------------------------

--
-- Structure de la table `electro_term_relationships`
--

DROP TABLE IF EXISTS `electro_term_relationships`;
CREATE TABLE IF NOT EXISTS `electro_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_term_relationships`
--

INSERT INTO `electro_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(101, 8, 0),
(100, 38, 0),
(98, 38, 0),
(99, 38, 0),
(97, 38, 0),
(28, 7, 0),
(29, 7, 0),
(30, 7, 0),
(33, 8, 0),
(31, 8, 0),
(32, 8, 0),
(34, 9, 0),
(35, 9, 0),
(43, 25, 0),
(43, 10, 0),
(43, 24, 0),
(43, 26, 0),
(49, 24, 0),
(49, 25, 0),
(49, 26, 0),
(49, 10, 0),
(49, 16, 0),
(56, 24, 0),
(56, 25, 0),
(56, 26, 0),
(56, 16, 0),
(56, 10, 0),
(56, 29, 0),
(59, 24, 0),
(59, 25, 0),
(59, 26, 0),
(59, 29, 0),
(59, 16, 0),
(59, 10, 0),
(59, 32, 0),
(59, 33, 0),
(61, 34, 0),
(63, 34, 0),
(63, 28, 0),
(61, 10, 0),
(61, 28, 0),
(61, 35, 0),
(61, 36, 0),
(63, 36, 0),
(63, 35, 0),
(63, 10, 0),
(63, 16, 0),
(65, 37, 0),
(65, 34, 0),
(67, 23, 0),
(65, 35, 0),
(65, 16, 0),
(65, 10, 0),
(65, 23, 0),
(67, 37, 0),
(67, 34, 0),
(67, 35, 0),
(67, 16, 0),
(67, 10, 0),
(89, 24, 0),
(68, 37, 0),
(68, 34, 0),
(68, 35, 0),
(68, 16, 0),
(68, 10, 0),
(68, 27, 0),
(69, 37, 0),
(69, 34, 0),
(69, 35, 0),
(69, 16, 0),
(69, 10, 0),
(69, 27, 0),
(71, 37, 0),
(71, 34, 0),
(71, 35, 0),
(71, 16, 0),
(71, 10, 0),
(71, 24, 0),
(89, 37, 0),
(89, 34, 0),
(89, 35, 0),
(89, 16, 0),
(89, 10, 0),
(90, 24, 0),
(90, 37, 0),
(90, 34, 0),
(90, 35, 0),
(90, 16, 0),
(90, 10, 0),
(91, 24, 0),
(91, 37, 0),
(91, 34, 0),
(91, 35, 0),
(91, 16, 0),
(91, 10, 0),
(96, 38, 0),
(102, 8, 0);

-- --------------------------------------------------------

--
-- Structure de la table `electro_term_taxonomy`
--

DROP TABLE IF EXISTS `electro_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `electro_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_term_taxonomy`
--

INSERT INTO `electro_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(38, 38, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 5),
(9, 9, 'nav_menu', '', 0, 2),
(10, 10, 'product_type', '', 0, 14),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_type', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 12),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'product_cat', '', 0, 8),
(25, 25, 'product_tag', '', 0, 4),
(26, 26, 'product_tag', '', 0, 4),
(27, 27, 'product_cat', '', 0, 2),
(28, 28, 'product_cat', '', 0, 2),
(29, 29, 'product_tag', '', 0, 2),
(30, 30, 'product_tag', '', 0, 0),
(31, 31, 'product_tag', '', 0, 0),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 10),
(35, 35, 'product_tag', '', 0, 10),
(36, 36, 'product_tag', '', 0, 2),
(37, 37, 'product_tag', '', 0, 8);

-- --------------------------------------------------------

--
-- Structure de la table `electro_usermeta`
--

DROP TABLE IF EXISTS `electro_usermeta`;
CREATE TABLE IF NOT EXISTS `electro_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_usermeta`
--

INSERT INTO `electro_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'electro_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'electro_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"edd9f7ac14ec77682f52266b6e56877518c4e85cc86bdcee1e2f0686adba242d\";a:4:{s:10:\"expiration\";i:1692269319;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36\";s:5:\"login\";i:1692096519;}}'),
(17, 1, 'electro_dashboard_quick_press_last_post_id', '94'),
(18, 1, 'electro_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:6:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:14:\"mostUsedBlocks\";b:0;s:20:\"keepCaretInsideBlock\";b:0;s:14:\"inactivePanels\";a:0:{}s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:9:\"_modified\";s:24:\"2023-07-27T00:16:30.492Z\";}'),
(19, 1, 'electro_user-settings', 'libraryContent=browse'),
(20, 1, 'electro_user-settings-time', '1690034875'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '8'),
(24, 1, '_woocommerce_tracks_anon_id', 'woo:sLv371zMYnKbYpu+Tg3X+ZtO'),
(25, 1, 'jetpack_tracks_anon_id', 'woo:sLv371zMYnKbYpu+Tg3X+ZtO'),
(26, 1, 'last_update', '1690416993'),
(27, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"products\":1,\"payments\":1,\"tax\":1,\"marketing\":3,\"appearance\":1,\"review-shipping\":1}'),
(28, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'wc_last_active', '1692057600'),
(30, 1, 'woocommerce_admin_help_panel_highlight_shown', '\"yes\"'),
(31, 1, 'woocommerce_admin_homepage_stats', '{\"installJetpackDismissed\":true}'),
(32, 1, 'closedpostboxes_product', 'a:0:{}'),
(33, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(34, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(35, 1, 'closedpostboxes_page', 'a:0:{}'),
(36, 1, 'metaboxhidden_page', 'a:0:{}'),
(37, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:23:\"acf-group_64c00da674fd7\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(39, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:5:{s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";a:11:{s:3:\"key\";s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";s:10:\"product_id\";i:65;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"735b90b4568125ed6c3f678819b6e058\";a:11:{s:3:\"key\";s:32:\"735b90b4568125ed6c3f678819b6e058\";s:10:\"product_id\";i:67;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"7f39f8317fbdb1988ef4c628eba02591\";a:11:{s:3:\"key\";s:32:\"7f39f8317fbdb1988ef4c628eba02591\";s:10:\"product_id\";i:61;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:250;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:250;s:8:\"line_tax\";d:0;}s:32:\"093f65e080a295f8076b1c5722a46aa2\";a:11:{s:3:\"key\";s:32:\"093f65e080a295f8076b1c5722a46aa2\";s:10:\"product_id\";i:59;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:500;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:500;s:8:\"line_tax\";d:0;}}}'),
(41, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Structure de la table `electro_users`
--

DROP TABLE IF EXISTS `electro_users`;
CREATE TABLE IF NOT EXISTS `electro_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_users`
--

INSERT INTO `electro_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BP4LEQg2F3mSkEIsPZ9bznKSTLCY0g/', 'admin', 'haja.ramananjarasoa@gmail.com', 'http://electro.mg', '2023-07-22 10:18:42', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_admin_notes`
--

DROP TABLE IF EXISTS `electro_wc_admin_notes`;
CREATE TABLE IF NOT EXISTS `electro_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_admin_notes`
--

INSERT INTO `electro_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'actioned', 'woocommerce-core', '2023-07-25 15:35:58', NULL, 0, 'plain', '', 1, 1, 'info'),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-25 15:36:00', NULL, 0, 'plain', '', 1, 1, 'info'),
(3, 'wc-admin-install-jp-and-wcs-plugins', 'info', 'en_US', 'Uh oh... There was a problem during the Jetpack and WooCommerce Shipping & Tax install. Please try again.', 'We noticed that there was a problem during the Jetpack and WooCommerce Shipping &amp; Tax install. Please try again and enjoy all the advantages of having the plugins connected to your store! Sorry for the inconvenience. The \"Jetpack\" and \"WooCommerce Shipping &amp; Tax\" plugins will be installed &amp; activated for free.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-25 15:37:07', NULL, 0, 'plain', '', 1, 1, 'info'),
(4, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-26 23:45:47', NULL, 0, 'plain', '', 0, 1, 'info'),
(5, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'How to customize your product catalog', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-26 23:45:47', NULL, 0, 'plain', '', 0, 1, 'info'),
(6, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-26 23:45:47', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2023-07-27 17:02:34', NULL, 0, 'plain', '', 0, 1, 'info'),
(8, 'wc-admin-personalize-store', 'info', 'en_US', 'Personnalisez la page d’accueil de votre boutique', 'La page d’accueil est l’un des points d’accès à votre boutique les plus importants. Si elle est bien faite, elle peut vous permettre d’obtenir plus de conversions et d’engagement. N’oubliez pas de personnaliser la page d’accueil que nous avons créée pour votre boutique pendant l’intégration.', '{}', 'unactioned', 'woocommerce-admin', '2023-08-11 02:25:47', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'unactioned', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'needs-update-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'Security vulnerability patched in WooCommerce Eway Gateway', 'In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'updated-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'WooCommerce Eway Gateway has been automatically updated', 'Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'ecomm-wc-navigation-survey-2023', 'info', 'en_US', 'Navigating WooCommerce on WordPress.com', 'We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'woopay-beta-merchantrecruitment-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'WooPay, a new express checkout feature built into WooCommerce Payments, is now available —and we’re inviting you to be one of the first to try it. \r\n<br><br>\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br><br>\r\nGet started in seconds.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'woocommerce-wcpay-march-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Payments', '<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'marketing', 'en_US', 'Accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'marketing', 'en_US', 'New: accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone is quick, secure, and simple to set up in WooCommerce Payments — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person in a few short steps!', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'woocommerce-WCPreOrders-april-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Pre-Orders extension', '<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'woopay-beta-merchantrecruitment-update-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'WooPay, a new express checkout feature built into WooCommerce Payments, is now available — and you’re invited to try it. \r\n<br /><br />\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br /><br />\r\nUpdate WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'woopay-beta-existingmerchants-noaction-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed. No action is required on your part.\r\n<br /><br />\r\nYou can now continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'woopay-beta-existingmerchants-update-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'woopay-beta-merchantrecruitment-short-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'woopay-beta-merchantrecruitment-short-update-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTA', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTB', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTC', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTD', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'woopay-beta-merchantrecruitment-short-09MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(52, 'woopay-beta-merchantrecruitment-short-update-09MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(53, 'ipp_refresh_q2_2023_us_inbox_notification', 'marketing', 'en_US', 'Grow on the go with in-person payments', 'Sell your products or services on the go with the M2 card reader – a quick, synchronized, and secure way to take payments, no matter where you are. Create an order using the WooCommerce mobile app and connect your card reader to accept payments.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(54, 'ipp_refresh_q2_2023_ca_inbox_notification', 'marketing', 'en_US', 'Grow on the go with in-person payments', 'Sell your products or services on the go with the WisePad 3 card reader – a quick, synchronized, and secure way to take payments, no matter where you are. Create an order using the WooCommerce mobile app and connect your card reader to accept payments.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(55, 'woocommerce-WCstripe-May-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Stripe plugin', '<strong>Your store requires a security update for the WooCommerce Stripe plugin</strong>. Please update the WooCommerce Stripe plugin immediately to address a potential vulnerability.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(56, 'woocommerce-WCPayments-June-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Payments', '<strong>Your store requires a security update for the WooCommerce Payments plugin</strong>. Please update the WooCommerce Payments plugin immediately to address a potential vulnerability.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(57, 'woocommerce-WCSubscriptions-June-2023-updated-needed', 'marketing', 'en_US', 'Action required: Security update of WooCommerce Subscriptions', '<strong>Your store requires a security update for the WooCommerce Subscriptions plugin</strong>. Please update the WooCommerce Subscriptions plugin immediately to address a potential vulnerability.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(58, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Returns and Warranty Requests extension', '<strong>Your store requires a security update for the Returns and Warranty Requests extension</strong>.  Please update to the latest version of the WooCommerce Returns and Warranty Requests extension immediately to address a potential vulnerability discovered on May 31.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(59, 'woocommerce-WCOPC-June-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce One Page Checkout', '<strong>Your shop requires a security update to address a vulnerability in the WooCommerce One Page Checkout extension</strong>. The fix for this vulnerability was released for this extension on June 13th. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(60, 'woocommerce-WCGC-July-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce GoCardless Extension', '<strong>Your shop requires a security update to address a vulnerability in the WooCommerce GoCardless extension</strong>. The fix for this vulnerability was released on July 4th. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(61, 'wc-admin-wcpay-bulgaria-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Bulgaria!', 'We’ve recently released WooCommerce Payments in Bulgaria. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(62, 'wc-admin-wcpay-czechia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Czechia!', 'We’ve recently released WooCommerce Payments in Czechia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(63, 'wc-admin-wcpay-croatia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Croatia!', 'We’ve recently released WooCommerce Payments in Croatia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(64, 'wc-admin-wcpay-hungary-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Hungary!', 'We’ve recently released WooCommerce Payments in Hungary. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(65, 'wc-admin-wcpay-romania-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Romania!', 'We’ve recently released WooCommerce Payments in Romania. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(66, 'wc-admin-wcpay-sweden-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Sweden!', 'We’ve recently released WooCommerce Payments in Sweden. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(67, 'woocommerce-shipping-fedex-api-outage-2023-07-16', 'warning', 'en_US', 'Scheduled FedEx API outage — July 2023', 'On July 16 there will be a full outage of the FedEx API from 04:00 to 08:00 AM UTC. Due to planned maintenance by FedEx, you\'ll be unable to provide FedEx shipping rates during this time. Follow the link below for more information and recommendations on how to minimize impact.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(68, 'wcship-2023-07-hazmat-update-needed', 'update', 'en_US', 'Action required: USPS HAZMAT compliance update for WooCommerce Shipping & Tax extension', '<strong>Your store requires an update for the WooCommerce Shipping extension</strong>. Please update to the latest version of the WooCommerce Shipping &amp; Tax extension immediately to ensure compliance with new USPS HAZMAT rules currently in effect.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(69, 'woocommerce-WCStripe-Aug-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Stripe plugin', '<strong>Your shop requires an important security update for the  WooCommerce Stripe plugin</strong>. The fix for this vulnerability was released on July 31. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(70, 'woocommerce-WCStripe-Aug-2023-security-updated', 'update', 'en_US', 'Security update of WooCommerce Stripe plugin', '<strong>Your store has been updated to the latest secure version of the WooCommerce Stripe plugin</strong>. This update was released on July 31.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(71, 'woocommerce-WooPayments-Aug-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooPayments (WooCommerce Payments) plugin', '<strong>Your shop requires an important security update for the WooPayments (WooCommerce Payments) extension</strong>. The fix for this vulnerability was released on July 31. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(72, 'woocommerce-WooPayments-Aug-2023-security-updated', 'update', 'en_US', 'Security update of WooPayments (WooCommerce Payments) plugin', '<strong>Your store has been updated to the more secure version of WooPayments (WooCommerce Payments)</strong>. This update was released on July 31.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info'),
(73, 'avalara_q3-2023_noAvaTax', 'marketing', 'en_US', 'Automatically calculate VAT in real time', 'Take the effort out of determining tax rates and sell confidently across borders with automated tax management from Avalara AvaTax— including built-in VAT calculation when you sell into or across the EU and UK. Save time and stay compliant when you let Avalara do the heavy lifting.', '{}', 'pending', 'woocommerce.com', '2023-08-12 12:46:59', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `electro_wc_admin_note_actions`;
CREATE TABLE IF NOT EXISTS `electro_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_admin_note_actions`
--

INSERT INTO `electro_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'notify-refund-returns-page', 'Edit page', 'http://electro.mg/wp-admin/post.php?post=42&action=edit', 'actioned', '', NULL, NULL),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(3, 3, 'install-jp-and-wcs-plugins', 'Install plugins', '', 'actioned', '', NULL, NULL),
(4, 4, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(5, 5, 'day-after-first-product', 'Learn more', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(6, 6, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(7, 7, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(9, 8, 'personalize-homepage', 'Personnaliser la page d’accueil', 'http://electro.mg/wp-admin/post.php?post=51&action=edit', 'actioned', '', NULL, NULL),
(104, 9, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(105, 10, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(106, 11, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(107, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(108, 13, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(109, 14, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(110, 15, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(111, 16, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(112, 17, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://electro.mg/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(113, 18, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(114, 21, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(115, 22, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(116, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(118, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(120, 25, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(122, 26, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(124, 27, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(126, 28, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(125, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(127, 29, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(129, 30, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(130, 31, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(131, 32, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(133, 33, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(136, 34, 'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(135, 34, 'needs-update-eway-payment-gateway-rin-action-button-2022-12-20', 'See available updates', 'http://electro.mg/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(138, 35, 'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(137, 35, 'updated-eway-payment-gateway-rin-action-button-2022-12-20', 'See all updates', 'http://electro.mg/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(139, 36, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/new-ecommerce-plan-navigation', 'actioned', '', NULL, NULL),
(141, 37, 'woopay-beta-merchantrecruitment-activate-learnmore-04MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-activate-learnmore-04MAY23', 'unactioned', '', NULL, NULL),
(140, 37, 'woopay-beta-merchantrecruitment-activate-04MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(143, 38, 'woocommerce-wcpay-march-2023-update-needed-dismiss-button', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(142, 38, 'woocommerce-wcpay-march-2023-update-needed-button', 'See Blog Post', 'https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know', 'unactioned', '', NULL, NULL),
(144, 39, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'Simplify my payments', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay', 'actioned', '', NULL, NULL),
(145, 40, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'Set up Tap to Pay on iPhone', 'https://woocommerce.com/document/woocommerce-payments/in-person-payments/woocommerce-in-person-payments-tap-to-pay-on-iphone-quick-start-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_with_wcpay', 'actioned', '', NULL, NULL),
(146, 41, 'extension-settings', 'See available updates', 'http://electro.mg/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(148, 42, 'woopay-beta-merchantrecruitment-update-WCPay-04MAY23', 'Update WooCommerce Payments', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(149, 42, 'woopay-beta-merchantrecruitment-update-activate-04MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(150, 43, 'woopay-beta-existingmerchants-noaction-documentation-27APR23', 'Documentation', 'https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23', 'actioned', '', NULL, NULL),
(151, 44, 'woopay-beta-existingmerchants-update-WCPay-27APR23', 'Update WooCommerce Payments', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL),
(152, 45, 'woopay-beta-merchantrecruitment-short-activate-04MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(153, 45, 'woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23', 'actioned', '', NULL, NULL),
(154, 46, 'woopay-beta-merchantrecruitment-short-update-WCPay-04MAY23', 'Update WooCommerce Payments', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(155, 46, 'woopay-beta-merchantrecruitment-short-update-activate-04MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(157, 47, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'unactioned', '', NULL, NULL),
(156, 47, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTA', 'Activate WooPay Test A', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(159, 48, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'unactioned', '', NULL, NULL),
(158, 48, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTB', 'Activate WooPay Test B', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(161, 49, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC', 'unactioned', '', NULL, NULL),
(160, 49, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTC', 'Activate WooPay Test C', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(163, 50, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD', 'unactioned', '', NULL, NULL),
(162, 50, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTD', 'Activate WooPay Test D', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(164, 51, 'woopay-beta-merchantrecruitment-short-activate-button-09MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(165, 51, 'woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23', 'unactioned', '', NULL, NULL),
(166, 52, 'woopay-beta-merchantrecruitment-short-update-WCPay-09MAY23', 'Update WooCommerce Payments', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(167, 52, 'woopay-beta-merchantrecruitment-short-update-activate-09MAY23', 'Activate WooPay', 'http://electro.mg/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(168, 53, 'ipp_refresh_q2_2023_us_inbox_notification', 'Grow my business on the go', 'https://woocommerce.com/in-person-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=ipp_refresh_q2_2023_us_inbox_notification', 'actioned', '', NULL, NULL),
(169, 54, 'ipp_refresh_q2_2023_ca_inbox_notification', 'Grow my business on the go', 'https://woocommerce.com/in-person-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=ipp_refresh_q2_2023_ca_inbox_notification', 'actioned', '', NULL, NULL),
(171, 55, 'woocommerce-WCStripe-May-2023-updated-needed-Plugin-Settings-dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(170, 55, 'woocommerce-WCStripe-May-2023-updated-needed-Plugin-Settings', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(173, 56, 'woocommerce-WCPayments-June-2023-updated-needed-Dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(172, 56, 'woocommerce-WCPayments-June-2023-updated-needed-Plugin-Settings', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(175, 57, 'woocommerce-WCSubscriptions-June-2023-updated-needed-dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(174, 57, 'woocommerce-WCSubscriptions-June-2023-updated-needed-Plugin-Settings', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(177, 58, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(176, 58, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(179, 59, 'woocommerce-WCOPC-June-2023-updated-needed', 'Dismiss', 'http://electro.mg/wp-admin/#', 'actioned', '', NULL, NULL),
(178, 59, 'woocommerce-WCOPC-June-2023-updated-needed', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL),
(181, 60, 'woocommerce-WCGC-July-2023-update-needed', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(180, 60, 'woocommerce-WCGC-July-2023-update-needed', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(182, 61, 'wc-admin-wcpay-bulgaria-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/bulgaria/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-bulgaria-Q2-2023', 'actioned', '', NULL, NULL),
(183, 62, 'wc-admin-wcpay-czechia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/czechia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-czechia-Q2-2023', 'actioned', '', NULL, NULL),
(184, 63, 'wc-admin-wcpay-croatia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/croatia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-croatia-Q2-2023', 'actioned', '', NULL, NULL),
(185, 64, 'wc-admin-wcpay-hungary-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/hungary/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-hungary-Q2-2023', 'actioned', '', NULL, NULL),
(186, 65, 'wc-admin-wcpay-romania-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/romania/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-romania-Q2-2023', 'actioned', '', NULL, NULL),
(187, 66, 'wc-admin-wcpay-sweden-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/sweden/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-sweden-Q2-2023', 'actioned', '', NULL, NULL),
(188, 67, 'learn-more', 'Learn more', 'https://woocommerce.com/document/fedex/?utm_medium=product&utm_source=inbox_note&utm_campaign=learn-more#july-2023-api-outage', 'unactioned', '', NULL, NULL),
(190, 68, 'dismiss', 'Dismiss', 'http://electro.mg/wp-admin/admin.php?page=wc-admin', 'actioned', '', NULL, NULL),
(189, 68, 'plugin-list', 'See available updates', 'http://electro.mg/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(191, 69, 'woocommerce-WCStripe-Aug-2023-update-needed', 'See available updates', 'http://electro.mg/wp-admin/update-core.php?', 'unactioned', '', NULL, NULL),
(193, 70, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(194, 71, 'woocommerce-WooPayments-Aug-2023-update-needed', 'See available updates', 'http://electro.mg/wp-admin/update-core.php?', 'unactioned', '', NULL, NULL),
(196, 72, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(197, 73, 'avalara_q3-2023_noAvaTax', 'Automate my sales tax', 'https://woocommerce.com/products/woocommerce-avatax/?utm_source=inbox_note&utm_medium=product&utm_campaign=avalara_q3-2023_noAvaTax', 'unactioned', '', NULL, NULL),
(117, 23, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(119, 24, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(121, 25, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(123, 26, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(128, 29, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(132, 32, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(134, 33, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(147, 41, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(192, 69, 'dismiss', 'Dismniss', '#', 'actioned', '', NULL, NULL),
(195, 71, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_category_lookup`
--

DROP TABLE IF EXISTS `electro_wc_category_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_category_lookup`
--

INSERT INTO `electro_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(23, 23),
(24, 24),
(27, 27),
(28, 28);

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_customer_lookup`
--

DROP TABLE IF EXISTS `electro_wc_customer_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_download_log`
--

DROP TABLE IF EXISTS `electro_wc_download_log`;
CREATE TABLE IF NOT EXISTS `electro_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_addresses`
--

DROP TABLE IF EXISTS `electro_wc_order_addresses`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `first_name` text COLLATE utf8mb4_unicode_520_ci,
  `last_name` text COLLATE utf8mb4_unicode_520_ci,
  `company` text COLLATE utf8mb4_unicode_520_ci,
  `address_1` text COLLATE utf8mb4_unicode_520_ci,
  `address_2` text COLLATE utf8mb4_unicode_520_ci,
  `city` text COLLATE utf8mb4_unicode_520_ci,
  `state` text COLLATE utf8mb4_unicode_520_ci,
  `postcode` text COLLATE utf8mb4_unicode_520_ci,
  `country` text COLLATE utf8mb4_unicode_520_ci,
  `email` varchar(320) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  KEY `order_id` (`order_id`),
  KEY `email` (`email`(250)),
  KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `electro_wc_order_coupon_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_operational_data`
--

DROP TABLE IF EXISTS `electro_wc_order_operational_data`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_operational_data` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_via` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `woocommerce_version` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `order_key` (`order_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `electro_wc_order_product_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_stats`
--

DROP TABLE IF EXISTS `electro_wc_order_stats`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `electro_wc_order_tax_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `electro_wc_product_attributes_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_product_download_directories`
--

DROP TABLE IF EXISTS `electro_wc_product_download_directories`;
CREATE TABLE IF NOT EXISTS `electro_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_product_download_directories`
--

INSERT INTO `electro_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/wamp64/www/projects/electro/srcs/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://electro.mg/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `electro_wc_product_meta_lookup`;
CREATE TABLE IF NOT EXISTS `electro_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_product_meta_lookup`
--

INSERT INTO `electro_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(43, 'laptop-1', 0, 0, '250.0000', '250.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(49, 'laptop-2', 0, 0, '200.0000', '200.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, 'laptop-3', 0, 0, '350.0000', '350.0000', 1, 10, 'instock', 0, '0.00', 0, 'taxable', ''),
(59, 'laptop-4', 0, 0, '500.0000', '500.0000', 0, 10, 'instock', 0, '0.00', 0, 'taxable', ''),
(61, 'casque-1', 0, 0, '250.0000', '250.0000', 1, 10, 'instock', 0, '0.00', 0, 'taxable', ''),
(63, 'casque-2', 0, 0, '200.0000', '200.0000', 0, 12, 'instock', 0, '0.00', 0, 'taxable', ''),
(65, 'cameras-1', 0, 0, '100.0000', '100.0000', 1, 25, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, 'cameras-2', 0, 0, '100.0000', '100.0000', 1, 10, 'instock', 0, '0.00', 0, 'taxable', ''),
(68, 'smartphone-1', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, 'tablette-1', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', ''),
(71, 'laptop-7', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', ''),
(89, 'laptop-7-1', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, 'laptop-7-1-1', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, 'laptop-7-1-1-1', 0, 0, '100.0000', '100.0000', 1, 50, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_rate_limits`
--

DROP TABLE IF EXISTS `electro_wc_rate_limits`;
CREATE TABLE IF NOT EXISTS `electro_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_reserved_stock`
--

DROP TABLE IF EXISTS `electro_wc_reserved_stock`;
CREATE TABLE IF NOT EXISTS `electro_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `electro_wc_tax_rate_classes`;
CREATE TABLE IF NOT EXISTS `electro_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_wc_tax_rate_classes`
--

INSERT INTO `electro_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Structure de la table `electro_wc_webhooks`
--

DROP TABLE IF EXISTS `electro_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `electro_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `electro_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `electro_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `electro_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_log`
--

DROP TABLE IF EXISTS `electro_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `electro_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_order_items`
--

DROP TABLE IF EXISTS `electro_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `electro_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `electro_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_sessions`
--

DROP TABLE IF EXISTS `electro_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_woocommerce_sessions`
--

INSERT INTO `electro_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(9, '1', 'a:11:{s:4:\"cart\";s:2036:\"a:5:{s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";a:11:{s:3:\"key\";s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";s:10:\"product_id\";i:65;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"735b90b4568125ed6c3f678819b6e058\";a:11:{s:3:\"key\";s:32:\"735b90b4568125ed6c3f678819b6e058\";s:10:\"product_id\";i:67;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";d:0;}s:32:\"7f39f8317fbdb1988ef4c628eba02591\";a:11:{s:3:\"key\";s:32:\"7f39f8317fbdb1988ef4c628eba02591\";s:10:\"product_id\";i:61;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:250;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:250;s:8:\"line_tax\";d:0;}s:32:\"093f65e080a295f8076b1c5722a46aa2\";a:11:{s:3:\"key\";s:32:\"093f65e080a295f8076b1c5722a46aa2\";s:10:\"product_id\";i:59;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:500;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:500;s:8:\"line_tax\";d:0;}}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:4:\"1050\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:4:\"1050\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"1050.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:484:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_5e9c34416fbf4d2c774df836b4b9e04d\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:18:\"Livraison gratuite\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:101:\"Cameras 1 &times; 1, Laptop 10 &times; 1, Cameras 2 &times; 1, Casque 1 &times; 1, Laptop 4 &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:772:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2023-07-27T02:16:33+02:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"MG\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"MG\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"haja.ramananjarasoa@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1692269359);

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `electro_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_woocommerce_shipping_zones`
--

INSERT INTO `electro_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Madagascar', 0);

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `electro_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_woocommerce_shipping_zone_locations`
--

INSERT INTO `electro_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'MG', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `electro_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `electro_woocommerce_shipping_zone_methods`
--

INSERT INTO `electro_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `electro_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `electro_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `electro_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `electro_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
