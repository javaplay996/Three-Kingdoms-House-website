/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - sanguozhijiawangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sanguozhijiawangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sanguozhijiawangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-21 17:14:27'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-21 17:14:27'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-21 17:14:28'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-21 17:14:28'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-21 17:14:28'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-21 17:14:28'),(7,'tuwen_types','三国图文类型',1,'三国图文类型1',NULL,NULL,'2023-03-21 17:14:28'),(8,'tuwen_types','三国图文类型',2,'三国图文类型2',NULL,NULL,'2023-03-21 17:14:28'),(9,'tuwen_types','三国图文类型',3,'三国图文类型3',NULL,NULL,'2023-03-21 17:14:28'),(10,'tuwen_types','三国图文类型',4,'三国图文类型4',NULL,NULL,'2023-03-21 17:14:28'),(11,'tuwen_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-21 17:14:28'),(12,'tuwen_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-21 17:14:28'),(13,'tuwen_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-21 17:14:28'),(14,'shipin_types','三国视频类型',1,'三国视频类型1',NULL,NULL,'2023-03-21 17:14:28'),(15,'shipin_types','三国视频类型',2,'三国视频类型2',NULL,NULL,'2023-03-21 17:14:28'),(16,'shipin_types','三国视频类型',3,'三国视频类型3',NULL,NULL,'2023-03-21 17:14:28'),(17,'shipin_types','三国视频类型',4,'三国视频类型4',NULL,NULL,'2023-03-21 17:14:28'),(18,'shipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-21 17:14:28'),(19,'shipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-21 17:14:28'),(20,'shipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-21 17:14:28'),(21,'zixun_types','三国资讯类型',1,'三国资讯类型1',NULL,NULL,'2023-03-21 17:14:28'),(22,'zixun_types','三国资讯类型',2,'三国资讯类型2',NULL,NULL,'2023-03-21 17:14:28'),(23,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-21 17:14:28'),(24,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-21 17:14:28'),(25,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-21 17:14:28'),(26,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-21 17:14:28'),(27,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-21 17:14:28'),(28,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-21 17:14:28'),(29,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-21 17:14:28'),(30,'kemu_types','科目',1,'语文',NULL,NULL,'2023-03-21 17:14:28'),(31,'kemu_types','科目',2,'数学',NULL,NULL,'2023-03-21 17:14:28'),(32,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-21 17:14:28'),(33,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-21 17:14:28'),(34,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-21 17:14:29'),(35,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-21 17:14:29'),(36,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-21 17:14:29'),(37,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-21 17:14:29'),(38,'zixun_types','三国资讯类型',3,'三国资讯类型3',NULL,'','2023-03-21 17:45:23');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-03-21 17:14:28'),(2,'测试试卷2',180,100,2,1,1,1,'2023-03-21 17:14:28'),(3,'试卷1111',99,20,2,1,1,1,'2023-03-21 17:46:22'),(4,'试卷2222',55,22,2,1,2,1,'2023-03-21 17:47:00');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-03-21 17:14:28'),(8,1,4,10,'2023-03-21 17:14:28'),(9,1,6,70,'2023-03-21 17:14:28'),(18,2,5,15,'2023-03-21 17:14:29'),(19,2,11,15,'2023-03-21 17:14:29'),(20,2,9,15,'2023-03-21 17:14:29'),(21,2,1,15,'2023-03-21 17:14:29'),(22,2,10,20,'2023-03-21 17:14:29'),(23,2,3,20,'2023-03-21 17:14:29'),(31,1,7,10,'2023-03-21 17:14:29'),(33,1,9,0,'2023-03-21 17:14:29'),(34,1,12,0,'2023-03-21 17:14:29'),(35,3,11,1,'2023-03-21 17:46:38'),(36,3,12,1,'2023-03-21 17:46:38'),(37,3,5,1,'2023-03-21 17:46:38'),(38,3,7,5,'2023-03-21 17:46:38'),(39,3,6,3,'2023-03-21 17:46:38'),(40,3,9,3,'2023-03-21 17:46:38'),(41,3,10,2,'2023-03-21 17:46:38'),(42,3,3,2,'2023-03-21 17:46:38'),(43,3,8,2,'2023-03-21 17:46:38'),(44,4,12,7,'2023-03-21 17:47:06'),(45,4,10,6,'2023-03-21 17:47:07'),(46,4,8,4,'2023-03-21 17:47:08'),(47,4,7,3,'2023-03-21 17:47:09'),(48,4,2,2,'2023-03-21 17:47:11');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-03-21 17:14:29'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-03-21 17:14:29'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-03-21 17:14:29'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-03-21 17:14:29'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-03-21 17:14:29'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-03-21 17:14:29'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-03-21 17:14:29'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-03-21 17:14:29'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-03-21 17:14:29'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-03-21 17:14:29'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-03-21 17:14:29'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-03-21 17:14:29');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1679391691679',4,2,15,'2023-03-21 17:41:32','2023-03-21 17:41:32');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1679391691679',4,3,'asd',0,'2023-03-21 17:41:32'),(2,'1679391691679',4,10,'1',0,'2023-03-21 17:41:32'),(3,'1679391691679',4,1,'A',0,'2023-03-21 17:41:32'),(4,'1679391691679',4,9,'A',15,'2023-03-21 17:41:32'),(5,'1679391691679',4,11,'A',0,'2023-03-21 17:41:32'),(6,'1679391691679',4,5,'A',0,'2023-03-21 17:41:32');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,4,2,3,'asd','2023-03-21 17:41:32','2023-03-21 17:41:32'),(2,4,2,10,'1','2023-03-21 17:41:32','2023-03-21 17:41:32'),(3,4,2,1,'A','2023-03-21 17:41:32','2023-03-21 17:41:32'),(4,4,2,11,'A','2023-03-21 17:41:32','2023-03-21 17:41:32'),(5,4,2,5,'A','2023-03-21 17:41:32','2023-03-21 17:41:32');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',244,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,'帖子标题2',1,NULL,'发布内容2',243,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,'帖子标题3',1,NULL,'发布内容3',301,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,'帖子标题4',3,NULL,'发布内容4',89,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,'帖子标题5',3,NULL,'发布内容5',186,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,'帖子标题6',2,NULL,'发布内容6',253,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,'帖子标题7',1,NULL,'发布内容7',120,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,'帖子标题8',2,NULL,'发布内容8',195,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,'帖子标题9',1,NULL,'发布内容9',297,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,'帖子标题10',1,NULL,'发布内容10',107,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,'帖子标题11',3,NULL,'发布内容11',69,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,'帖子标题12',2,NULL,'发布内容12',137,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,'帖子标题13',2,NULL,'发布内容13',228,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,'帖子标题14',2,NULL,'发布内容14',476,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38','2023-03-21 17:15:38'),(15,NULL,4,NULL,'dgdsg房东说',14,NULL,2,'2023-03-21 17:41:50',NULL,'2023-03-21 17:41:50'),(16,'帖子111',4,NULL,'<p>郭德纲第三个第三个是</p>',NULL,1,1,'2023-03-21 17:42:00',NULL,'2023-03-21 17:42:00'),(17,NULL,NULL,1,'刚刚好',16,NULL,2,'2023-03-21 17:45:29',NULL,'2023-03-21 17:45:29');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-21 17:15:38','公告详情1','2023-03-21 17:15:38'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-21 17:15:38','公告详情2','2023-03-21 17:15:38'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-21 17:15:38','公告详情3','2023-03-21 17:15:38'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-21 17:15:38','公告详情4','2023-03-21 17:15:38'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-21 17:15:38','公告详情5','2023-03-21 17:15:38'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-21 17:15:38','公告详情6','2023-03-21 17:15:38'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-21 17:15:38','公告详情7','2023-03-21 17:15:38'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-21 17:15:38','公告详情8','2023-03-21 17:15:38'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-21 17:15:38','公告详情9','2023-03-21 17:15:38'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-21 17:15:38','公告详情10','2023-03-21 17:15:38'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-21 17:15:38','公告详情11','2023-03-21 17:15:38'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-21 17:15:38','公告详情12','2023-03-21 17:15:38'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-21 17:15:38','公告详情13','2023-03-21 17:15:38'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-21 17:15:38','<p>公告详情14广东省格式的</p>','2023-03-21 17:15:38');

/*Table structure for table `shipin` */

DROP TABLE IF EXISTS `shipin`;

CREATE TABLE `shipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shipin_name` varchar(200) DEFAULT NULL COMMENT '三国视频名称  Search111 ',
  `shipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '三国视频编号',
  `shipin_photo` varchar(200) DEFAULT NULL COMMENT '三国视频照片',
  `shipin_video` varchar(200) DEFAULT NULL COMMENT '三国视频',
  `shipin_types` int(11) DEFAULT NULL COMMENT '三国视频类型 Search111',
  `shipin_clicknum` int(11) DEFAULT NULL COMMENT '三国视频热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shipin_content` longtext COMMENT '三国视频详细介绍',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='三国视频';

/*Data for the table `shipin` */

insert  into `shipin`(`id`,`shipin_name`,`shipin_uuid_number`,`shipin_photo`,`shipin_video`,`shipin_types`,`shipin_clicknum`,`zan_number`,`cai_number`,`shipin_content`,`shangxia_types`,`shipin_delete`,`insert_time`,`create_time`) values (1,'三国视频名称1','1679390138998','upload/shipin1.jpg','upload/video.mp4',2,145,104,189,'三国视频详细介绍1',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,'三国视频名称2','1679390139065','upload/shipin2.jpg','upload/video.mp4',1,403,78,234,'三国视频详细介绍2',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,'三国视频名称3','1679390139052','upload/shipin3.jpg','upload/video.mp4',2,169,3,46,'三国视频详细介绍3',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,'三国视频名称4','1679390139006','upload/shipin4.jpg','upload/video.mp4',3,155,20,455,'三国视频详细介绍4',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,'三国视频名称5','1679390139036','upload/shipin5.jpg','upload/video.mp4',4,442,482,378,'三国视频详细介绍5',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,'三国视频名称6','1679390138994','upload/shipin6.jpg','upload/video.mp4',1,288,429,231,'三国视频详细介绍6',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,'三国视频名称7','1679390139057','upload/shipin7.jpg','upload/video.mp4',1,338,378,391,'三国视频详细介绍7',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,'三国视频名称8','1679390138994','upload/shipin8.jpg','upload/video.mp4',2,487,315,428,'三国视频详细介绍8',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,'三国视频名称9','1679390139085','upload/shipin9.jpg','upload/video.mp4',1,416,364,406,'三国视频详细介绍9',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,'三国视频名称10','1679390139038','upload/shipin10.jpg','upload/video.mp4',1,1,309,360,'三国视频详细介绍10',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,'三国视频名称11','1679390139083','upload/shipin11.jpg','upload/video.mp4',2,267,332,107,'三国视频详细介绍11',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,'三国视频名称12','1679390139074','upload/shipin12.jpg','upload/video.mp4',1,100,36,346,'三国视频详细介绍12',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,'三国视频名称13','1679390139036','upload/shipin13.jpg','upload/video.mp4',3,269,134,264,'三国视频详细介绍13',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,'三国视频名称14','1679390139054','upload/shipin14.jpg','upload/video.mp4',2,120,44,389,'三国视频详细介绍14',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38');

/*Table structure for table `shipin_collection` */

DROP TABLE IF EXISTS `shipin_collection`;

CREATE TABLE `shipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '三国视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='三国视频收藏';

/*Data for the table `shipin_collection` */

insert  into `shipin_collection`(`id`,`shipin_id`,`yonghu_id`,`shipin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,2,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,3,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,4,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,5,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,6,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,7,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,8,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,9,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,10,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,11,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,12,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,13,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,14,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(16,2,4,2,'2023-03-21 17:42:19','2023-03-21 17:42:19'),(17,2,4,1,'2023-03-21 17:42:27','2023-03-21 17:42:27');

/*Table structure for table `shipin_liuyan` */

DROP TABLE IF EXISTS `shipin_liuyan`;

CREATE TABLE `shipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shipin_id` int(11) DEFAULT NULL COMMENT '三国视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shipin_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='三国视频留言';

/*Data for the table `shipin_liuyan` */

insert  into `shipin_liuyan`(`id`,`shipin_id`,`yonghu_id`,`shipin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-21 17:15:38','回复信息1','2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,2,3,'留言内容2','2023-03-21 17:15:38','回复信息2','2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,3,3,'留言内容3','2023-03-21 17:15:38','回复信息3','2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,4,2,'留言内容4','2023-03-21 17:15:38','回复信息4','2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,5,2,'留言内容5','2023-03-21 17:15:38','回复信息5','2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,6,3,'留言内容6','2023-03-21 17:15:38','回复信息6','2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,7,1,'留言内容7','2023-03-21 17:15:38','回复信息7','2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,8,1,'留言内容8','2023-03-21 17:15:38','回复信息8','2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,9,3,'留言内容9','2023-03-21 17:15:38','回复信息9','2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,10,2,'留言内容10','2023-03-21 17:15:38','回复信息10','2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,11,1,'留言内容11','2023-03-21 17:15:38','回复信息11','2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,12,1,'留言内容12','2023-03-21 17:15:38','回复信息12','2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,13,2,'留言内容13','2023-03-21 17:15:38','回复信息13','2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,14,2,'留言内容14','2023-03-21 17:15:38','回复信息14','2023-03-21 17:15:38','2023-03-21 17:15:38'),(15,2,4,'给大哥富商大贾','2023-03-21 17:42:22','骨灰盒','2023-03-21 17:45:46','2023-03-21 17:42:22');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','n4e3xiyul7vrnb1o6bcrpjplixwfqz2z','2023-03-21 17:20:45','2023-03-21 18:39:14'),(2,1,'admin','users','管理员','2r4edoz91oqiymtr7zq8plsgrvwmgu9f','2023-03-21 17:22:08','2023-03-21 18:50:33'),(3,4,'a5','yonghu','用户','4383x7crz5fo5ouplal7cbqdlnz24mt8','2023-03-21 17:41:18','2023-03-21 18:41:18');

/*Table structure for table `tuwen` */

DROP TABLE IF EXISTS `tuwen`;

CREATE TABLE `tuwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tuwen_name` varchar(200) DEFAULT NULL COMMENT '三国图文名称  Search111 ',
  `tuwen_uuid_number` varchar(200) DEFAULT NULL COMMENT '三国图文编号',
  `tuwen_photo` varchar(200) DEFAULT NULL COMMENT '三国图文照片',
  `tuwen_types` int(11) DEFAULT NULL COMMENT '三国图文类型 Search111',
  `tuwen_clicknum` int(11) DEFAULT NULL COMMENT '三国图文热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `tuwen_content` longtext COMMENT '三国图文详细介绍',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tuwen_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='三国图文';

/*Data for the table `tuwen` */

insert  into `tuwen`(`id`,`tuwen_name`,`tuwen_uuid_number`,`tuwen_photo`,`tuwen_types`,`tuwen_clicknum`,`zan_number`,`cai_number`,`tuwen_content`,`shangxia_types`,`tuwen_delete`,`insert_time`,`create_time`) values (1,'三国图文名称1','1679390139085','upload/tuwen1.jpg',1,318,260,436,'三国图文详细介绍1',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,'三国图文名称2','1679390139071','upload/tuwen2.jpg',1,26,318,88,'三国图文详细介绍2',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,'三国图文名称3','1679390138999','upload/tuwen3.jpg',3,468,156,357,'三国图文详细介绍3',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,'三国图文名称4','1679390139057','upload/tuwen4.jpg',4,258,189,82,'三国图文详细介绍4',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,'三国图文名称5','1679390139024','upload/tuwen5.jpg',1,357,259,388,'三国图文详细介绍5',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,'三国图文名称6','1679390139076','upload/tuwen6.jpg',2,107,483,154,'三国图文详细介绍6',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,'三国图文名称7','1679390139046','upload/tuwen7.jpg',2,18,174,462,'三国图文详细介绍7',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,'三国图文名称8','1679390139056','upload/tuwen8.jpg',3,203,215,399,'三国图文详细介绍8',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,'三国图文名称9','1679390139085','upload/tuwen9.jpg',2,269,438,283,'三国图文详细介绍9',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,'三国图文名称10','1679390139019','upload/tuwen10.jpg',2,476,94,343,'三国图文详细介绍10',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,'三国图文名称11','1679390139007','upload/tuwen11.jpg',2,413,469,198,'三国图文详细介绍11',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,'三国图文名称12','1679390139024','upload/tuwen12.jpg',1,274,347,134,'三国图文详细介绍12',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,'三国图文名称13','1679390139091','upload/tuwen13.jpg',3,343,265,460,'三国图文详细介绍13',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,'三国图文名称14','1679390139037','upload/tuwen14.jpg',4,413,424,382,'三国图文详细介绍14',1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38');

/*Table structure for table `tuwen_collection` */

DROP TABLE IF EXISTS `tuwen_collection`;

CREATE TABLE `tuwen_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuwen_id` int(11) DEFAULT NULL COMMENT '三国图文',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tuwen_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='三国图文收藏';

/*Data for the table `tuwen_collection` */

insert  into `tuwen_collection`(`id`,`tuwen_id`,`yonghu_id`,`tuwen_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,2,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,3,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,4,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,5,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,6,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,7,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,8,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,9,2,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,10,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,11,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,12,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,13,1,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,14,3,1,'2023-03-21 17:15:38','2023-03-21 17:15:38'),(15,3,4,2,'2023-03-21 17:42:32','2023-03-21 17:42:32'),(16,3,4,1,'2023-03-21 17:42:38','2023-03-21 17:42:38'),(18,14,4,1,'2023-03-21 17:43:35','2023-03-21 17:43:35');

/*Table structure for table `tuwen_liuyan` */

DROP TABLE IF EXISTS `tuwen_liuyan`;

CREATE TABLE `tuwen_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuwen_id` int(11) DEFAULT NULL COMMENT '三国图文',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tuwen_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='三国图文留言';

/*Data for the table `tuwen_liuyan` */

insert  into `tuwen_liuyan`(`id`,`tuwen_id`,`yonghu_id`,`tuwen_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-21 17:15:38','回复信息1','2023-03-21 17:15:38','2023-03-21 17:15:38'),(2,2,2,'留言内容2','2023-03-21 17:15:38','回复信息2','2023-03-21 17:15:38','2023-03-21 17:15:38'),(3,3,1,'留言内容3','2023-03-21 17:15:38','回复信息3','2023-03-21 17:15:38','2023-03-21 17:15:38'),(4,4,3,'留言内容4','2023-03-21 17:15:38','回复信息4','2023-03-21 17:15:38','2023-03-21 17:15:38'),(5,5,1,'留言内容5','2023-03-21 17:15:38','回复信息5','2023-03-21 17:15:38','2023-03-21 17:15:38'),(6,6,1,'留言内容6','2023-03-21 17:15:38','回复信息6','2023-03-21 17:15:38','2023-03-21 17:15:38'),(7,7,1,'留言内容7','2023-03-21 17:15:38','回复信息7','2023-03-21 17:15:38','2023-03-21 17:15:38'),(8,8,3,'留言内容8','2023-03-21 17:15:38','回复信息8','2023-03-21 17:15:38','2023-03-21 17:15:38'),(9,9,2,'留言内容9','2023-03-21 17:15:38','回复信息9','2023-03-21 17:15:38','2023-03-21 17:15:38'),(10,10,2,'留言内容10','2023-03-21 17:15:38','回复信息10','2023-03-21 17:15:38','2023-03-21 17:15:38'),(11,11,2,'留言内容11','2023-03-21 17:15:38','回复信息11','2023-03-21 17:15:38','2023-03-21 17:15:38'),(12,12,1,'留言内容12','2023-03-21 17:15:38','回复信息12','2023-03-21 17:15:38','2023-03-21 17:15:38'),(13,13,3,'留言内容13','2023-03-21 17:15:38','回复信息13','2023-03-21 17:15:38','2023-03-21 17:15:38'),(14,14,3,'留言内容14','2023-03-21 17:15:38','回复信息14','2023-03-21 17:15:38','2023-03-21 17:15:38'),(15,3,4,'更好地三国杀个','2023-03-21 17:42:35',NULL,NULL,'2023-03-21 17:42:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-21 17:14:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-21 17:15:38'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-21 17:15:38'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-21 17:15:38'),(4,'a5','123456','张5','17788889999','444888999966666666','upload/1679391700815.jpg',1,'5@qq.com','2023-03-21 17:41:13');

/*Table structure for table `zixun` */

DROP TABLE IF EXISTS `zixun`;

CREATE TABLE `zixun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zixun_name` varchar(200) DEFAULT NULL COMMENT '三国资讯名称 Search111  ',
  `zixun_photo` varchar(200) DEFAULT NULL COMMENT '三国资讯图片 ',
  `zixun_types` int(11) NOT NULL COMMENT '三国资讯类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '三国资讯发布时间 ',
  `zixun_content` longtext COMMENT '三国资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='三国资讯';

/*Data for the table `zixun` */

insert  into `zixun`(`id`,`zixun_name`,`zixun_photo`,`zixun_types`,`insert_time`,`zixun_content`,`create_time`) values (1,'三国资讯名称1','upload/zixun1.jpg',2,'2023-03-21 17:15:38','三国资讯详情1','2023-03-21 17:15:38'),(2,'三国资讯名称2','upload/zixun2.jpg',1,'2023-03-21 17:15:38','三国资讯详情2','2023-03-21 17:15:38'),(3,'三国资讯名称3','upload/zixun3.jpg',1,'2023-03-21 17:15:38','三国资讯详情3','2023-03-21 17:15:38'),(4,'三国资讯名称4','upload/zixun4.jpg',2,'2023-03-21 17:15:38','三国资讯详情4','2023-03-21 17:15:38'),(5,'三国资讯名称5','upload/zixun5.jpg',2,'2023-03-21 17:15:38','三国资讯详情5','2023-03-21 17:15:38'),(6,'三国资讯名称6','upload/zixun6.jpg',1,'2023-03-21 17:15:38','三国资讯详情6','2023-03-21 17:15:38'),(7,'三国资讯名称7','upload/zixun7.jpg',2,'2023-03-21 17:15:38','三国资讯详情7','2023-03-21 17:15:38'),(8,'三国资讯名称8','upload/zixun8.jpg',1,'2023-03-21 17:15:38','三国资讯详情8','2023-03-21 17:15:38'),(9,'三国资讯名称9','upload/zixun9.jpg',2,'2023-03-21 17:15:38','三国资讯详情9','2023-03-21 17:15:38'),(10,'三国资讯名称10','upload/zixun10.jpg',2,'2023-03-21 17:15:38','三国资讯详情10','2023-03-21 17:15:38'),(11,'三国资讯名称11','upload/zixun11.jpg',2,'2023-03-21 17:15:38','三国资讯详情11','2023-03-21 17:15:38'),(12,'三国资讯名称12','upload/zixun12.jpg',2,'2023-03-21 17:15:38','三国资讯详情12','2023-03-21 17:15:38'),(13,'三国资讯名称13','upload/zixun13.jpg',1,'2023-03-21 17:15:38','三国资讯详情13','2023-03-21 17:15:38'),(14,'三国资讯名称14','upload/zixun14.jpg',2,'2023-03-21 17:15:38','三国资讯详情14','2023-03-21 17:15:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
