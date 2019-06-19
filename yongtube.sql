/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.24 : Database - yongtube
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yongtube` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yongtube`;

/*Table structure for table `channel` */

DROP TABLE IF EXISTS `channel`;

CREATE TABLE `channel` (
  `u_id` varchar(64) DEFAULT NULL,
  `ch_id` varchar(64) NOT NULL,
  PRIMARY KEY (`ch_id`),
  UNIQUE KEY `user_channel` (`u_id`),
  CONSTRAINT `user_channel` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `channel` */

insert  into `channel`(`u_id`,`ch_id`) values 
('baek990911@gmail.com','BackSW\' Channel'),
('yeong4310@gmail.com','YJ_Choi\' Channel'),
('yeong_4310@naver.com','CCCCCC\' Channel');

/*Table structure for table `commentary` */

DROP TABLE IF EXISTS `commentary`;

CREATE TABLE `commentary` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) DEFAULT NULL,
  `u_alias` varchar(32) DEFAULT NULL,
  `com_content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`com_id`),
  KEY `video_comment` (`v_id`),
  CONSTRAINT `video_comment` FOREIGN KEY (`v_id`) REFERENCES `video` (`v_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commentary` */

/*Table structure for table `list_detail` */

DROP TABLE IF EXISTS `list_detail`;

CREATE TABLE `list_detail` (
  `det_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) DEFAULT NULL,
  `pl_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`det_id`),
  KEY `playlist_detail` (`pl_id`),
  CONSTRAINT `playlist_detail` FOREIGN KEY (`pl_id`) REFERENCES `playlist` (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `list_detail` */

insert  into `list_detail`(`det_id`,`v_id`,`pl_id`) values 
(1,11,'YJ_Choi\'s PlayList'),
(2,12,'YJ_Choi\'s PlayList'),
(3,14,'YJ_Choi\'s PlayList'),
(4,18,'YJ_Choi\'s PlayList'),
(5,20,'YJ_Choi\'s PlayList'),
(6,30,'CCCCCC\'s PlayList');

/*Table structure for table `playlist` */

DROP TABLE IF EXISTS `playlist`;

CREATE TABLE `playlist` (
  `pl_id` varchar(64) NOT NULL,
  `u_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pl_id`),
  KEY `user_playlist` (`u_id`),
  CONSTRAINT `user_playlist` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `playlist` */

insert  into `playlist`(`pl_id`,`u_id`) values 
('BackSW\'s PlayList','baek990911@gmail.com'),
('YJ_Choi\'s PlayList','yeong4310@gmail.com'),
('CCCCCC\'s PlayList','yeong_4310@naver.com');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `u_id` varchar(64) NOT NULL,
  `u_pass` text NOT NULL,
  `u_name` varchar(64) NOT NULL,
  `u_alias` varchar(32) DEFAULT NULL,
  `pl_id` varchar(300) DEFAULT NULL,
  `u_idhash` varchar(64) DEFAULT NULL,
  `ischeck` tinyint(1) DEFAULT NULL,
  `regidate` date DEFAULT NULL,
  `possibility` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `unique` (`u_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`u_pass`,`u_name`,`u_alias`,`pl_id`,`u_idhash`,`ischeck`,`regidate`,`possibility`) values 
('baek990911@gmail.com','5F749EBE2CE4AE43071376266E043B6E','백승우','BackSW','BackSW\'s PlayList','28cbac9507d9906827598811d3ca4590e8b14ddfdbf8bc69e5522353a44adf18',1,'2019-06-19',1),
('yeong4310@gmail.com','2A6EFDFA25C1EEBE5277C09619AE2DA6','최영재','YJ_Choi','YJ_Choi\'s PlayList','94142130fb9f05fd61954d8a38c09968bc2897a67eb3c9cdc2fd13fc68f18b55',1,'2019-06-17',0),
('yeong_4310@naver.com','2A6EFDFA25C1EEBE5277C09619AE2DA6','최영재','CCCCCC','CCCCCC\'s PlayList','3bc1bbf543b93cc591713ec2ea7021cdbebe70035738a9091e63542b4849d07f',1,'2019-06-19',1);

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(64) DEFAULT NULL,
  `v_title` varchar(100) DEFAULT NULL,
  `v_desc` varchar(64) DEFAULT NULL,
  `v_path` varchar(300) DEFAULT NULL,
  `v_img` varchar(64) DEFAULT NULL,
  `ch_id` varchar(64) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`v_id`),
  KEY `u_video_upload` (`u_id`),
  KEY `video_channel` (`ch_id`),
  CONSTRAINT `u_video_upload` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `video_channel` FOREIGN KEY (`ch_id`) REFERENCES `channel` (`ch_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `video` */

insert  into `video`(`v_id`,`u_id`,`v_title`,`v_desc`,`v_path`,`v_img`,`ch_id`,`updated`) values 
(12,'yeong4310@gmail.com','Avengers : Infinity War Thor','어벤져스 : 인피니티워 토르 등장씬','https://www.youtube.com/embed/7eW7r1eQP8E','http://i.ytimg.com/vi/7eW7r1eQP8E/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:15:19'),
(14,'yeong4310@gmail.com','Avengers : Endgame OST - Portals','어벤져스 : 엔드게임 OST','https://www.youtube.com/embed/OSY9GuWiXFs','http://i.ytimg.com/vi/OSY9GuWiXFs/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:18:27'),
(15,'yeong4310@gmail.com','DJ클템 - 해피크롤','','https://www.youtube.com/embed/d1CpoEE92oU','http://i.ytimg.com/vi/d1CpoEE92oU/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:19:09'),
(16,'yeong4310@gmail.com','Avengers Best Battle Scene','어벤져스 최고의 전투씬 TOP 10','https://www.youtube.com/embed/31YKyy7j-d0','http://i.ytimg.com/vi/31YKyy7j-d0/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:20:30'),
(17,'yeong4310@gmail.com','Fun.: We Are Young ft. Janelle Monáe [OFFICIAL VIDEO]','','https://www.youtube.com/embed/Sv6dMFF_yts','http://i.ytimg.com/vi/Sv6dMFF_yts/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:21:14'),
(18,'yeong4310@gmail.com','Anne Marie - 2002 Live','','https://www.youtube.com/embed/kxqn8FAVbpU','http://i.ytimg.com/vi/kxqn8FAVbpU/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:22:06'),
(19,'yeong4310@gmail.com','The Chainsmokers & Coldplay - Something Just Like This (Live at the BRITs)','','https://www.youtube.com/embed/4u6bWs-ZG0o','http://i.ytimg.com/vi/4u6bWs-ZG0o/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:23:40'),
(20,'yeong4310@gmail.com','위대한 쇼맨 OST - Never Enough','','https://www.youtube.com/embed/KQIsk0ba5q0','http://i.ytimg.com/vi/KQIsk0ba5q0/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:24:20'),
(21,'yeong4310@gmail.com','Coldplay - Viva La Vida','Coldplay - Viva La Vida (MV)','https://www.youtube.com/embed/dvgZkm1xWPE','http://i.ytimg.com/vi/dvgZkm1xWPE/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:26:05'),
(22,'yeong4310@gmail.com','신이 약골이군...','마블영화의 웃긴 명대사 Top 10','https://www.youtube.com/embed/3zayHadpdSs','http://i.ytimg.com/vi/3zayHadpdSs/mqdefault.jpg','YJ_Choi\' Channel','2019-06-19 09:27:37'),
(23,'baek990911@gmail.com','클템의 다이아2 승급전','','https://www.youtube.com/embed/8B-MNEEqIa4','http://i.ytimg.com/vi/8B-MNEEqIa4/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:40:18'),
(24,'baek990911@gmail.com','어벤져스 OST 모음','','https://www.youtube.com/embed/pm8mI0OrnHk','http://i.ytimg.com/vi/pm8mI0OrnHk/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:41:22'),
(25,'baek990911@gmail.com','\"I Can Do This All Day\" First Fight - Captain America: The First Avenger (2011) Movie CLIP HD','하루 종일도 할 수 있어!','https://www.youtube.com/embed/IZnVoPw-fHw','http://i.ytimg.com/vi/IZnVoPw-fHw/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:42:41'),
(26,'baek990911@gmail.com','Alan Walker, Sabrina Carpenter & Farruko - On My Way','','https://www.youtube.com/embed/dhYOPzcsbGM','http://i.ytimg.com/vi/dhYOPzcsbGM/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:43:13'),
(27,'baek990911@gmail.com','[M/V] 싸운날 - 볼빨간 사춘기','','https://www.youtube.com/embed/1ri7I32Auhg','http://i.ytimg.com/vi/1ri7I32Auhg/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:44:01'),
(28,'baek990911@gmail.com','박효신(Park Hyo Shin) - 야생화(Wild Flower) Special Video','','https://www.youtube.com/embed/OxgiiyLp5pk','http://i.ytimg.com/vi/OxgiiyLp5pk/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:44:43'),
(29,'baek990911@gmail.com','[온스테이지] 316. 넬 - 기억을 걷는 시간','넬 - 기억을 걷는 시간','https://www.youtube.com/embed/83IfZhO4Pd0','http://i.ytimg.com/vi/83IfZhO4Pd0/mqdefault.jpg','BackSW\' Channel','2019-06-19 09:46:34'),
(30,'yeong_4310@naver.com','Coldplay -viva la vida','','https://www.youtube.com/embed/HosW0gulISQ','http://i.ytimg.com/vi/HosW0gulISQ/mqdefault.jpg','CCCCCC\' Channel','2019-06-19 11:27:38');

/*Table structure for table `user_playlist` */

DROP TABLE IF EXISTS `user_playlist`;

/*!50001 DROP VIEW IF EXISTS `user_playlist` */;
/*!50001 DROP TABLE IF EXISTS `user_playlist` */;

/*!50001 CREATE TABLE  `user_playlist`(
 `v_id` int(11) ,
 `v_img` varchar(64) ,
 `v_title` varchar(100) ,
 `v_desc` varchar(64) ,
 `updated` timestamp ,
 `pl_id` varchar(64) 
)*/;

/*Table structure for table `video_uploader` */

DROP TABLE IF EXISTS `video_uploader`;

/*!50001 DROP VIEW IF EXISTS `video_uploader` */;
/*!50001 DROP TABLE IF EXISTS `video_uploader` */;

/*!50001 CREATE TABLE  `video_uploader`(
 `v_id` int(11) ,
 `u_name` varchar(64) ,
 `u_alias` varchar(32) 
)*/;

/*View structure for view user_playlist */

/*!50001 DROP TABLE IF EXISTS `user_playlist` */;
/*!50001 DROP VIEW IF EXISTS `user_playlist` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_playlist` AS select `v`.`v_id` AS `v_id`,`v`.`v_img` AS `v_img`,`v`.`v_title` AS `v_title`,`v`.`v_desc` AS `v_desc`,`v`.`updated` AS `updated`,`l`.`pl_id` AS `pl_id` from (`video` `v` left join `list_detail` `l` on((`v`.`v_id` = `l`.`v_id`))) */;

/*View structure for view video_uploader */

/*!50001 DROP TABLE IF EXISTS `video_uploader` */;
/*!50001 DROP VIEW IF EXISTS `video_uploader` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `video_uploader` AS select `v`.`v_id` AS `v_id`,`u`.`u_name` AS `u_name`,`u`.`u_alias` AS `u_alias` from ((`user` `u` left join `video` `v` on((`v`.`u_id` = `u`.`u_id`))) left join `channel` `c` on((`c`.`ch_id` = `v`.`ch_id`))) where (`v`.`u_id` = `u`.`u_id`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
