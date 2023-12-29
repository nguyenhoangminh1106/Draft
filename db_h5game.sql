CREATE DATABASE  IF NOT EXISTS `zenh5` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zenh5`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zenh5
-- ------------------------------------------------------
-- Server version	5.7.32-35-57-log

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_eng` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary_eng` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `pkg` int(11) DEFAULT '1' COMMENT '1: GamePro\n2: GoGame',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article_detail`
--

DROP TABLE IF EXISTS `article_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_detail` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_eng` text COLLATE utf8_unicode_ci,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article_type`
--

DROP TABLE IF EXISTS `article_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_eng` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1:tin tuc; 2:huong dan; 3:tin trung thuong; -1: da xoa',
  `has_child` tinyint(1) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `award_date` date DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1 : chua gui; 0 : da gui',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `msisdn` varchar(15) CHARACTER SET utf8 NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bxh`
--

DROP TABLE IF EXISTS `bxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bxh` (
  `game_id` int(11) NOT NULL,
  `msisdn` varchar(20) NOT NULL,
  `score` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`game_id`,`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `NGAY` date NOT NULL,
  PRIMARY KEY (`NGAY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `camid`
--

DROP TABLE IF EXISTS `camid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `data` varchar(100) DEFAULT NULL,
  `start_time` time DEFAULT '07:00:00',
  `end_time` time DEFAULT '20:00:00',
  `tps` int(11) DEFAULT '5',
  `status` int(11) DEFAULT NULL COMMENT '-1: da huy; 0: xong; 1:da duyet; 2: cho duyet; 3: adding; 4:tam dung',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdr_data`
--

DROP TABLE IF EXISTS `cdr_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cdr_id` int(20) DEFAULT NULL,
  `reg_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subpackage_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subpackage_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0:unreg, 1:reg, 2:unreg, 3:renew',
  `action_desc` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `application` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `renew_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdr_file`
--

DROP TABLE IF EXISTS `cdr_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '2:waiting, 1:process, 0:done',
  PRIMARY KEY (`id`,`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_buy_item`
--

DROP TABLE IF EXISTS `game_buy_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_buy_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT '1',
  `req_id` varchar(20) DEFAULT NULL,
  `msisdn` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `pkg_code` varchar(200) DEFAULT NULL,
  `stt` varchar(20) DEFAULT NULL COMMENT '0:success; 1:faile',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_income`
--

DROP TABLE IF EXISTS `game_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT '1',
  `msisdn` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_ios_redeem`
--

DROP TABLE IF EXISTS `game_ios_redeem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_ios_redeem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT '1',
  `msisdn` varchar(100) DEFAULT NULL,
  `prize_id` varchar(100) DEFAULT NULL,
  `qr_code` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_play`
--

DROP TABLE IF EXISTS `game_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_play` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(200) DEFAULT NULL,
  `game_id` int(11) DEFAULT '1',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `award_id` int(11) DEFAULT NULL,
  `prize_name` varchar(500) DEFAULT NULL,
  `prize_image` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_turn`
--

DROP TABLE IF EXISTS `game_turn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_turn` (
  `play_date` date NOT NULL,
  `msisdn` varchar(200) NOT NULL,
  `game_id` int(11) DEFAULT '1',
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`play_date`,`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_user`
--

DROP TABLE IF EXISTS `game_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_user` (
  `msisdn` varchar(200) NOT NULL,
  `game_id` int(11) DEFAULT '1',
  `total_turn` int(11) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invite`
--

DROP TABLE IF EXISTS `invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `month` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2531 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mo`
--

DROP TABLE IF EXISTS `mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bang nay luu ban tin gui len tu ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mt`
--

DROP TABLE IF EXISTS `mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mo_id` int(11) DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0:gui thanh cong; 1:pending; 2:dang doi gui',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partner_config`
--

DROP TABLE IF EXISTS `partner_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_config` (
  `partner_id` int(11) NOT NULL,
  `partner` varchar(25) DEFAULT NULL,
  `package_code` varchar(25) DEFAULT NULL,
  `channel` varchar(10) DEFAULT NULL,
  `cpid` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `partner_code` int(11) DEFAULT '1',
  PRIMARY KEY (`partner_id`,`cpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_buy_item`
--

DROP TABLE IF EXISTS `pchum_buy_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_buy_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_id` varchar(20) DEFAULT NULL,
  `msisdn` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `pkg_code` varchar(200) DEFAULT NULL,
  `stt` varchar(20) DEFAULT NULL COMMENT '0:success; 1:faile',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=379124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_game`
--

DROP TABLE IF EXISTS `pchum_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_income`
--

DROP TABLE IF EXISTS `pchum_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40020 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_ios_redeem`
--

DROP TABLE IF EXISTS `pchum_ios_redeem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_ios_redeem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(100) DEFAULT NULL,
  `prize_id` varchar(100) DEFAULT NULL,
  `qr_code` text,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86584 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_play`
--

DROP TABLE IF EXISTS `pchum_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_play` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(200) DEFAULT NULL,
  `game_id` int(11) DEFAULT '1',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `award_id` int(11) DEFAULT NULL,
  `prize_name` varchar(500) DEFAULT NULL,
  `prize_image` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621462 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_top_10`
--

DROP TABLE IF EXISTS `pchum_top_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_top_10` (
  `msisdn` varchar(200) NOT NULL,
  `score` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_turn`
--

DROP TABLE IF EXISTS `pchum_turn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_turn` (
  `play_date` date NOT NULL,
  `msisdn` varchar(200) NOT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`play_date`,`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_user`
--

DROP TABLE IF EXISTS `pchum_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_user` (
  `msisdn` varchar(200) NOT NULL,
  `total_turn` int(11) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pchum_user_top`
--

DROP TABLE IF EXISTS `pchum_user_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pchum_user_top` (
  `msisdn` varchar(200) NOT NULL,
  `total_score` int(11) DEFAULT NULL,
  FULLTEXT KEY `msisdn` (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `play_keep`
--

DROP TABLE IF EXISTS `play_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_keep` (
  `play_session_token` int(11) NOT NULL,
  `play_session_keep` int(11) DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_keep` datetime DEFAULT NULL,
  `end_keep` datetime DEFAULT NULL,
  `keep` int(11) DEFAULT NULL,
  `max_block` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0:dc tinh time. 1:da huy. 2:da tru time;3: huy phien do loi he thong',
  PRIMARY KEY (`play_session_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `play_score`
--

DROP TABLE IF EXISTS `play_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1:dang ky;2:huy; 3:mo; 4:gia han',
  `score` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0:ok; 1:da trao giai; 2: huy trong ngay; 3:huy dvu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3286571 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `play_session`
--

DROP TABLE IF EXISTS `play_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(25) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `play_session_keep`
--

DROP TABLE IF EXISTS `play_session_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_session_keep` (
  `id` int(11) NOT NULL,
  `play_session_token` int(11) DEFAULT NULL,
  `quest_id` int(11) DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0. dang choi. 1 het phien',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `play_session_token`
--

DROP TABLE IF EXISTS `play_session_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_session_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mo_id` int(11) DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148667 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quest_store`
--

DROP TABLE IF EXISTS `quest_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0:active; 1:deactive',
  `is_use` tinyint(4) DEFAULT '0' COMMENT '0:chua dung; 1:da dung',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52561 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `report_date` date NOT NULL,
  `partner` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `total_subs` int(11) DEFAULT '0',
  `register` int(11) DEFAULT '0',
  `cancel` int(11) DEFAULT '0',
  `reg_income` int(11) DEFAULT '0',
  `renew_income` int(11) DEFAULT '0',
  `renew_suc` int(11) DEFAULT '0',
  `mo_income` int(11) DEFAULT '0',
  `renew_fail` int(11) DEFAULT '0',
  PRIMARY KEY (`report_date`,`partner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_content`
--

DROP TABLE IF EXISTS `sms_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_content` (
  `id` varchar(25) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_cheat`
--

DROP TABLE IF EXISTS `sub_cheat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_cheat` (
  `id` int(20) NOT NULL DEFAULT '0',
  `pkg_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `msisdn` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `partner` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `channel` varchar(20) CHARACTER SET utf8 DEFAULT 'SMS',
  `type` int(45) DEFAULT NULL COMMENT '1-dky; 2-huy',
  `status` int(45) DEFAULT NULL COMMENT '0-active; 1-deactive',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_account`
--

DROP TABLE IF EXISTS `sys_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) DEFAULT NULL,
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(500) NOT NULL,
  `status` varchar(11) DEFAULT NULL,
  `is_admin` varchar(11) DEFAULT NULL,
  `is_business` varchar(11) DEFAULT NULL,
  `is_accountant` varchar(11) DEFAULT NULL,
  `is_cskh` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_up`
--

DROP TABLE IF EXISTS `top_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `queue_id` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0:done; 1:pendding; 2:process;',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `msisdn` varchar(15) CHARACTER SET utf8 NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msisdn`),
  KEY `MSISDN` (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_answer`
--

DROP TABLE IF EXISTS `user_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `play_session_keep` int(11) DEFAULT NULL,
  `mo_id` int(11) DEFAULT NULL,
  `quest_id` int(11) DEFAULT NULL,
  `msisdn` varchar(15) DEFAULT NULL,
  `start_keep` datetime DEFAULT NULL,
  `end_keep` datetime DEFAULT NULL,
  `keep` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL COMMENT '0:DUNG 1:SAI',
  `status` int(11) DEFAULT '0' COMMENT '0:DC TINH TIME 1:DA TRU',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128551 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_authen`
--

DROP TABLE IF EXISTS `user_authen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_authen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `FULL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOBILE` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARTNER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_block`
--

DROP TABLE IF EXISTS `user_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_block` (
  `msisdn` varchar(15) NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:chan; 1: ko chan',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_income`
--

DROP TABLE IF EXISTS `user_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_income` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `partner` varchar(15) DEFAULT NULL,
  `msisdn` varchar(15) DEFAULT NULL,
  `type` int(20) DEFAULT NULL COMMENT '1:dang ky;2:huy; 3:mo;4:gia han;8: KP',
  `price` int(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_index` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_play`
--

DROP TABLE IF EXISTS `user_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_play` (
  `id` int(11) NOT NULL,
  `quest_id` int(11) DEFAULT NULL,
  `msisdn` varchar(15) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_play_keep`
--

DROP TABLE IF EXISTS `user_play_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_play_keep` (
  `play_session_keep` int(11) NOT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) DEFAULT '0',
  `keep` int(11) DEFAULT '0',
  `max_block` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0' COMMENT '0:dc tinh time. 1:da huy. 2:da tru time',
  `free_sms` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`play_session_keep`,`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_renew`
--

DROP TABLE IF EXISTS `user_renew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_renew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(15) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2256459 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_subscriber`
--

DROP TABLE IF EXISTS `user_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscriber` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pkg_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `msisdn` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `partner` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `channel` varchar(20) CHARACTER SET utf8 DEFAULT 'SMS',
  `type` int(45) DEFAULT NULL COMMENT '1-dky; 2-huy',
  `status` int(45) DEFAULT NULL COMMENT '0-active; 1-deactive',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `MSISDN` (`msisdn`),
  KEY `CMD` (`partner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bang nay luu thong tin ve subs cua he thong';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vas_deal`
--

DROP TABLE IF EXISTS `vas_deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vas_deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` varchar(20) DEFAULT NULL,
  `partner` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vas_request`
--

DROP TABLE IF EXISTS `vas_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vas_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pkg_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msisdn` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1. Đăng ký\n2. Huy\n3. Mo\n4. Renew',
  `mode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1:dk; 2:huy; 3:mo; 4:check_sub',
  `params` int(11) DEFAULT NULL,
  `channel` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `charge_time` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vnp_package`
--

DROP TABLE IF EXISTS `vnp_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vnp_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancel` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `command` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `package_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cycle` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bang nay luu thong tin cac goi\r\npackage_name : MA SMS khach hang nhan len\r\npacket : MA SMS thuoc goi nao';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_request`
--

DROP TABLE IF EXISTS `web_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpid` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `click_id` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_response`
--

DROP TABLE IF EXISTS `web_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req` int(11) DEFAULT NULL,
  `click_id` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `msisdn` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249535 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-29 15:36:55
