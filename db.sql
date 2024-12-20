/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixinyimiaoyuyue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixinyimiaoyuyue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixinyimiaoyuyue`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-18 15:22:24'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-18 15:22:24'),(3,'yimiao_types','疫苗类型',1,'疫苗类型1',NULL,NULL,'2023-03-18 15:22:24'),(4,'yimiao_types','疫苗类型',2,'疫苗类型2',NULL,NULL,'2023-03-18 15:22:24'),(5,'yimiao_types','疫苗类型',3,'疫苗类型3',NULL,NULL,'2023-03-18 15:22:24'),(6,'yimiao_types','疫苗类型',4,'疫苗类型4',NULL,NULL,'2023-03-18 15:22:24'),(7,'yimiao_order_types','订单类型',101,'已预约疫苗',NULL,NULL,'2023-03-18 15:22:24'),(8,'yimiao_order_types','订单类型',102,'已取消预约',NULL,NULL,'2023-03-18 15:22:24'),(9,'yimiao_order_types','订单类型',103,'已同意预约',NULL,NULL,'2023-03-18 15:22:24'),(10,'yimiao_order_types','订单类型',104,'已接种疫苗',NULL,NULL,'2023-03-18 15:22:24'),(11,'yimiao_order_types','订单类型',105,'已反馈',NULL,NULL,'2023-03-18 15:22:24'),(12,'yimiao_didian_types','接种地点',1,'接种地点1',NULL,NULL,'2023-03-18 15:22:24'),(13,'yimiao_didian_types','接种地点',2,'接种地点2',NULL,NULL,'2023-03-18 15:22:24'),(14,'yimiao_didian_types','接种地点',3,'接种地点3',NULL,NULL,'2023-03-18 15:22:24'),(15,'yimiao_didian_types','接种地点',4,'接种地点4',NULL,NULL,'2023-03-18 15:22:24'),(16,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-18 15:22:24'),(17,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-18 15:22:24'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-18 15:22:24'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-18 15:22:24');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',435,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(2,'帖子标题2',2,NULL,'发布内容2',301,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(3,'帖子标题3',2,NULL,'发布内容3',76,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(4,'帖子标题4',1,NULL,'发布内容4',249,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(5,'帖子标题5',1,NULL,'发布内容5',430,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(6,'帖子标题6',2,NULL,'发布内容6',353,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(7,'帖子标题7',1,NULL,'发布内容7',197,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(8,'帖子标题8',3,NULL,'发布内容8',98,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(9,'帖子标题9',1,NULL,'发布内容9',412,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(10,'帖子标题10',2,NULL,'发布内容10',306,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(11,'帖子标题11',1,NULL,'发布内容11',62,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(12,'帖子标题12',3,NULL,'发布内容12',236,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(13,'帖子标题13',3,NULL,'发布内容13',232,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44'),(14,'帖子标题14',3,NULL,'发布内容14',99,1,'2023-03-18 15:22:44','2023-03-18 15:22:44','2023-03-18 15:22:44');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-18 15:22:44','公告详情1','2023-03-18 15:22:44'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-18 15:22:44','公告详情2','2023-03-18 15:22:44'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-18 15:22:44','公告详情3','2023-03-18 15:22:44'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-18 15:22:44','公告详情4','2023-03-18 15:22:44'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-18 15:22:44','公告详情5','2023-03-18 15:22:44'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-18 15:22:44','公告详情6','2023-03-18 15:22:44'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-18 15:22:44','公告详情7','2023-03-18 15:22:44'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-18 15:22:44','公告详情8','2023-03-18 15:22:44'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-18 15:22:44','公告详情9','2023-03-18 15:22:44'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-18 15:22:44','公告详情10','2023-03-18 15:22:44'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-18 15:22:44','公告详情11','2023-03-18 15:22:44'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-18 15:22:44','公告详情12','2023-03-18 15:22:44'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-18 15:22:44','公告详情13','2023-03-18 15:22:44'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-18 15:22:44','公告详情14','2023-03-18 15:22:44');

/*Table structure for table `gongzuorenyuan` */

DROP TABLE IF EXISTS `gongzuorenyuan`;

CREATE TABLE `gongzuorenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '工作人员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工作人员';

/*Data for the table `gongzuorenyuan` */

insert  into `gongzuorenyuan`(`id`,`username`,`password`,`gongzuorenyuan_name`,`gongzuorenyuan_phone`,`gongzuorenyuan_id_number`,`gongzuorenyuan_photo`,`sex_types`,`gongzuorenyuan_email`,`create_time`) values (1,'a1','123456','工作人员姓名1','17703786901','410224199010102001','upload/gongzuorenyuan1.jpg',1,'1@qq.com','2023-03-18 15:22:44'),(2,'a2','123456','工作人员姓名2','17703786902','410224199010102002','upload/gongzuorenyuan2.jpg',1,'2@qq.com','2023-03-18 15:22:44'),(3,'a3','123456','工作人员姓名3','17703786903','410224199010102003','upload/gongzuorenyuan3.jpg',2,'3@qq.com','2023-03-18 15:22:44');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','qy2apkseaeiaxrvbofcda0kqc4jxeku1','2023-03-18 15:28:24','2023-03-18 17:35:17'),(2,1,'admin','users','管理员','witqnxs12bo91ndr16wu2t5ymgvuqm7z','2023-03-18 15:30:20','2023-03-18 16:44:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-18 15:22:24');

/*Table structure for table `yimiao` */

DROP TABLE IF EXISTS `yimiao`;

CREATE TABLE `yimiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗名称  Search111 ',
  `yimiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '疫苗编号',
  `yimiao_photo` varchar(200) DEFAULT NULL COMMENT '疫苗照片',
  `yimiao_types` int(11) DEFAULT NULL COMMENT '疫苗类型 Search111',
  `yimiao_kucun_number` int(11) DEFAULT NULL COMMENT '疫苗库存',
  `yimiao_content` text COMMENT '疫苗介绍 ',
  `yimiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='疫苗';

/*Data for the table `yimiao` */

insert  into `yimiao`(`id`,`yimiao_name`,`yimiao_uuid_number`,`yimiao_photo`,`yimiao_types`,`yimiao_kucun_number`,`yimiao_content`,`yimiao_delete`,`insert_time`,`create_time`) values (1,'疫苗名称1','1679124164735','upload/yimiao1.jpg',3,101,'疫苗介绍1',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(2,'疫苗名称2','1679124164748','upload/yimiao2.jpg',3,102,'疫苗介绍2',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(3,'疫苗名称3','1679124164702','upload/yimiao3.jpg',1,103,'疫苗介绍3',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(4,'疫苗名称4','1679124164725','upload/yimiao4.jpg',2,104,'疫苗介绍4',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(5,'疫苗名称5','1679124164725','upload/yimiao5.jpg',3,105,'疫苗介绍5',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(6,'疫苗名称6','1679124164762','upload/yimiao6.jpg',2,106,'疫苗介绍6',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(7,'疫苗名称7','1679124164688','upload/yimiao7.jpg',2,107,'疫苗介绍7',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(8,'疫苗名称8','1679124164690','upload/yimiao8.jpg',2,108,'疫苗介绍8',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(9,'疫苗名称9','1679124164755','upload/yimiao9.jpg',2,109,'疫苗介绍9',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(10,'疫苗名称10','1679124164708','upload/yimiao10.jpg',2,1010,'疫苗介绍10',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(11,'疫苗名称11','1679124164758','upload/yimiao11.jpg',2,1011,'疫苗介绍11',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(12,'疫苗名称12','1679124164698','upload/yimiao12.jpg',3,1012,'疫苗介绍12',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(13,'疫苗名称13','1679124164732','upload/yimiao13.jpg',3,1013,'疫苗介绍13',1,'2023-03-18 15:22:44','2023-03-18 15:22:44'),(14,'疫苗名称14','1679124164722','upload/yimiao14.jpg',3,1011,'疫苗介绍14',1,'2023-03-18 15:22:44','2023-03-18 15:22:44');

/*Table structure for table `yimiao_commentback` */

DROP TABLE IF EXISTS `yimiao_commentback`;

CREATE TABLE `yimiao_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiao_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='疫苗反馈';

/*Data for the table `yimiao_commentback` */

insert  into `yimiao_commentback`(`id`,`yimiao_id`,`yonghu_id`,`yimiao_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-18 15:22:44','回复信息1','2023-03-18 15:22:44','2023-03-18 15:22:44'),(2,2,3,'评价内容2','2023-03-18 15:22:44','回复信息2','2023-03-18 15:22:44','2023-03-18 15:22:44'),(3,3,2,'评价内容3','2023-03-18 15:22:44','回复信息3','2023-03-18 15:22:44','2023-03-18 15:22:44'),(4,4,3,'评价内容4','2023-03-18 15:22:44','回复信息4','2023-03-18 15:22:44','2023-03-18 15:22:44'),(5,5,1,'评价内容5','2023-03-18 15:22:44','回复信息5','2023-03-18 15:22:44','2023-03-18 15:22:44'),(6,6,3,'评价内容6','2023-03-18 15:22:44','回复信息6','2023-03-18 15:22:44','2023-03-18 15:22:44'),(7,7,2,'评价内容7','2023-03-18 15:22:44','回复信息7','2023-03-18 15:22:44','2023-03-18 15:22:44'),(8,8,2,'评价内容8','2023-03-18 15:22:44','回复信息8','2023-03-18 15:22:44','2023-03-18 15:22:44'),(9,9,3,'评价内容9','2023-03-18 15:22:44','回复信息9','2023-03-18 15:22:44','2023-03-18 15:22:44'),(10,10,2,'评价内容10','2023-03-18 15:22:44','回复信息10','2023-03-18 15:22:44','2023-03-18 15:22:44'),(11,11,2,'评价内容11','2023-03-18 15:22:44','回复信息11','2023-03-18 15:22:44','2023-03-18 15:22:44'),(12,12,2,'评价内容12','2023-03-18 15:22:44','回复信息12','2023-03-18 15:22:44','2023-03-18 15:22:44'),(13,13,1,'评价内容13','2023-03-18 15:22:44','回复信息13','2023-03-18 15:22:44','2023-03-18 15:22:44'),(14,14,1,'评价内容14','2023-03-18 15:22:44','回复信息14','2023-03-18 15:22:44','2023-03-18 15:22:44');

/*Table structure for table `yimiao_order` */

DROP TABLE IF EXISTS `yimiao_order`;

CREATE TABLE `yimiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiao_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yimiao_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `yimiao_didian_types` int(11) DEFAULT NULL COMMENT '接种地点',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='疫苗订单';

/*Data for the table `yimiao_order` */

insert  into `yimiao_order`(`id`,`yimiao_id`,`yonghu_id`,`yimiao_order_time`,`yimiao_order_types`,`yimiao_didian_types`,`insert_time`,`create_time`) values (1,14,1,NULL,101,NULL,'2023-03-18 15:58:36','2023-03-18 15:58:36'),(2,14,1,'2023-03-18 00:00:00',101,NULL,'2023-03-18 16:09:30','2023-03-18 16:09:30'),(3,14,1,'2023-03-18 00:00:00',101,2,'2023-03-18 16:32:14','2023-03-18 16:32:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-18 15:22:44'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-18 15:22:44'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-18 15:22:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
