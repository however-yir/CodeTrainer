/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootx1786
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootx1786` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootx1786`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootx1786/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootx1786/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootx1786/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `defentongji` */

DROP TABLE IF EXISTS `defentongji`;

CREATE TABLE `defentongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shijuantimu` varchar(200) DEFAULT NULL COMMENT '试卷题目',
  `defen` float DEFAULT NULL COMMENT '得分',
  `defenfenxi` longtext COMMENT '得分分析',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='得分统计';

/*Data for the table `defentongji` */

insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (41,'2021-05-18 20:07:53','统计编号1','账号1','姓名1','试卷题目1',1,'得分分析1','2021-05-18');
insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (42,'2021-05-18 20:07:53','统计编号2','账号2','姓名2','试卷题目2',2,'得分分析2','2021-05-18');
insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (43,'2021-05-18 20:07:53','统计编号3','账号3','姓名3','试卷题目3',3,'得分分析3','2021-05-18');
insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (44,'2021-05-18 20:07:53','统计编号4','账号4','姓名4','试卷题目4',4,'得分分析4','2021-05-18');
insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (45,'2021-05-18 20:07:53','统计编号5','账号5','姓名5','试卷题目5',5,'得分分析5','2021-05-18');
insert  into `defentongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`shijuantimu`,`defen`,`defenfenxi`,`dengjiriqi`) values (46,'2021-05-18 20:07:53','统计编号6','账号6','姓名6','试卷题目6',6,'得分分析6','2021-05-18');

/*Table structure for table `discusstikuziyuan` */

DROP TABLE IF EXISTS `discusstikuziyuan`;

CREATE TABLE `discusstikuziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='题库资源评论表';

/*Data for the table `discusstikuziyuan` */

insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-18 20:07:53',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-18 20:07:53',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-18 20:07:53',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-18 20:07:53',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-18 20:07:53',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusstikuziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-18 20:07:53',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (51,'2021-05-18 20:07:53','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (52,'2021-05-18 20:07:53','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (53,'2021-05-18 20:07:53','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (54,'2021-05-18 20:07:53','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (55,'2021-05-18 20:07:53','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (56,'2021-05-18 20:07:53','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `liantitongji` */

DROP TABLE IF EXISTS `liantitongji`;

CREATE TABLE `liantitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianticishu` int(11) DEFAULT NULL COMMENT '练题次数',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='练题统计';

/*Data for the table `liantitongji` */

insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (31,'2021-05-18 20:07:53','统计编号1','账号1','姓名1',1,'2021-05-18','备注1');
insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (32,'2021-05-18 20:07:53','统计编号2','账号2','姓名2',2,'2021-05-18','备注2');
insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (33,'2021-05-18 20:07:53','统计编号3','账号3','姓名3',3,'2021-05-18','备注3');
insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (34,'2021-05-18 20:07:53','统计编号4','账号4','姓名4',4,'2021-05-18','备注4');
insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (35,'2021-05-18 20:07:53','统计编号5','账号5','姓名5',5,'2021-05-18','备注5');
insert  into `liantitongji`(`id`,`addtime`,`tongjibianhao`,`zhanghao`,`xingming`,`lianticishu`,`dengjiriqi`,`beizhu`) values (36,'2021-05-18 20:07:53','统计编号6','账号6','姓名6',6,'2021-05-18','备注6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-18 20:07:53',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-18 20:07:53',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-18 20:07:53',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-18 20:07:53',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-18 20:07:53',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-18 20:07:53',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='训练通知';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-18 20:07:53','标题1','简介1','http://localhost:8080/springbootx1786/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-18 20:07:53','标题2','简介2','http://localhost:8080/springbootx1786/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-18 20:07:53','标题3','简介3','http://localhost:8080/springbootx1786/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-18 20:07:53','标题4','简介4','http://localhost:8080/springbootx1786/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-18 20:07:53','标题5','简介5','http://localhost:8080/springbootx1786/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-18 20:07:53','标题6','简介6','http://localhost:8080/springbootx1786/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `tikuziyuan` */

DROP TABLE IF EXISTS `tikuziyuan`;

CREATE TABLE `tikuziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `ziyuanleixing` varchar(200) DEFAULT NULL COMMENT '资源类型',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `ziyuanneirong` longtext COMMENT '资源内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangchuanshijian` date DEFAULT NULL COMMENT '上传时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='题库资源';

/*Data for the table `tikuziyuan` */

insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (21,'2021-05-18 20:07:53','资源名称1','资源类型1','','资源内容1','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian1.jpg','2021-05-18','2021-05-18 20:07:53',1);
insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (22,'2021-05-18 20:07:53','资源名称2','资源类型2','','资源内容2','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian2.jpg','2021-05-18','2021-05-18 20:07:53',2);
insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (23,'2021-05-18 20:07:53','资源名称3','资源类型3','','资源内容3','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian3.jpg','2021-05-18','2021-05-18 20:07:53',3);
insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (24,'2021-05-18 20:07:53','资源名称4','资源类型4','','资源内容4','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian4.jpg','2021-05-18','2021-05-18 20:07:53',4);
insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (25,'2021-05-18 20:07:53','资源名称5','资源类型5','','资源内容5','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian5.jpg','2021-05-18','2021-05-18 20:07:53',5);
insert  into `tikuziyuan`(`id`,`addtime`,`ziyuanmingcheng`,`ziyuanleixing`,`wenjian`,`ziyuanneirong`,`fengmian`,`shangchuanshijian`,`clicktime`,`clicknum`) values (26,'2021-05-18 20:07:53','资源名称6','资源类型6','','资源内容6','http://localhost:8080/springbootx1786/upload/tikuziyuan_fengmian6.jpg','2021-05-18','2021-05-18 20:07:53',6);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','4oiovhmvao0s3xk49xr3eupcgoyw39qn','2021-05-18 20:11:21','2021-05-18 21:11:21');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621339919466,'11','yonghu','用户','pa3w2q7epvweixexglxedf4udqjitpq6','2021-05-18 20:12:02','2021-05-18 21:12:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-18 20:07:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621339919467 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-05-18 20:07:53','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-05-18 20:07:53','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-05-18 20:07:53','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-05-18 20:07:53','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-05-18 20:07:53','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-05-18 20:07:53','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/springbootx1786/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1621339919466,'2021-05-18 20:11:59','11','11','水电费','11',NULL,'11122211111',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
