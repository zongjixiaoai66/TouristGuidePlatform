/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t079`;
CREATE DATABASE IF NOT EXISTS `t079` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t079`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootr6il1/upload/1618820479805.png'),
	(2, 'picture2', 'http://localhost:8080/springbootr6il1/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootr6il1/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussjingdianxinxi`;
CREATE TABLE IF NOT EXISTS `discussjingdianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820610284 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息评论表';

DELETE FROM `discussjingdianxinxi`;
INSERT INTO `discussjingdianxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(91, '2021-04-19 08:08:23', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(92, '2021-04-19 08:08:23', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(93, '2021-04-19 08:08:23', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(94, '2021-04-19 08:08:23', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(95, '2021-04-19 08:08:23', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(96, '2021-04-19 08:08:23', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618820610283, '2021-04-19 08:23:29', 1618820377686, 1618820560463, '001', 'XXX', NULL);

DROP TABLE IF EXISTS `discussxianlutuijian`;
CREATE TABLE IF NOT EXISTS `discussxianlutuijian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820646713 DEFAULT CHARSET=utf8mb3 COMMENT='线路推荐评论表';

DELETE FROM `discussxianlutuijian`;
INSERT INTO `discussxianlutuijian` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-19 08:08:23', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-19 08:08:23', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-19 08:08:23', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-19 08:08:23', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-19 08:08:23', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-19 08:08:23', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618820646712, '2021-04-19 08:24:06', 1618820444261, 1618820560463, '001', 'XXX', NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820731850 DEFAULT CHARSET=utf8mb3 COMMENT='论坛交流';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(1618820722679, '2021-04-19 08:25:22', 'XXXX', '<p>帖子内容公开时，所有用户都可以查看评论交流</p>', 0, 1618820560463, '001', '开放');

DROP TABLE IF EXISTS `jingdianleixing`;
CREATE TABLE IF NOT EXISTS `jingdianleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820301782 DEFAULT CHARSET=utf8mb3 COMMENT='景点类型';

DELETE FROM `jingdianleixing`;
INSERT INTO `jingdianleixing` (`id`, `addtime`, `jingdianleixing`) VALUES
	(1618820257263, '2021-04-19 08:17:36', '游山玩水'),
	(1618820264152, '2021-04-19 08:17:43', '周末出游'),
	(1618820270938, '2021-04-19 08:17:50', '亲子时光'),
	(1618820276323, '2021-04-19 08:17:55', '其它'),
	(1618820301781, '2021-04-19 08:18:21', '人文遗址');

DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE IF NOT EXISTS `jingdianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820377687 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息';

DELETE FROM `jingdianxinxi`;
INSERT INTO `jingdianxinxi` (`id`, `addtime`, `jingdianmingcheng`, `jingdianleixing`, `jingdiantupian`, `zixundianhua`, `jingdianxiangqing`, `thumbsupnum`, `crazilynum`) VALUES
	(31, '2021-04-19 08:08:23', '景点名称1', '人文遗址', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian1.jpg', '020-89819991', '<p>景点详情1</p>', 1, 1),
	(32, '2021-04-19 08:08:23', '景点名称2', '其它', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian2.jpg', '020-89819992', '<p>景点详情2</p>', 2, 2),
	(33, '2021-04-19 08:08:23', '景点名称3', '景点类型3', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian3.jpg', '020-89819993', '景点详情3', 3, 3),
	(34, '2021-04-19 08:08:23', '景点名称4', '景点类型4', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian4.jpg', '020-89819994', '景点详情4', 4, 4),
	(35, '2021-04-19 08:08:23', '景点名称5', '景点类型5', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian5.jpg', '020-89819995', '景点详情5', 5, 5),
	(36, '2021-04-19 08:08:23', '景点名称6', '周末出游', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian6.jpg', '020-89819996', '<p>景点详情6</p>', 6, 6),
	(1618820377686, '2021-04-19 08:19:37', 'XXX景点', '游山玩水', 'http://localhost:8080/springbootr6il1/upload/1618820346832.png', '020-2222222', '<p>编辑器可传图文<img src="http://localhost:8080/springbootr6il1/upload/1618820368517.png"></p>', 1, 0);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='新闻资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(81, '2021-04-19 08:08:23', 'XXXX标题', '可增删查改', 'http://localhost:8080/springbootr6il1/upload/1618820499612.png', '<p>编辑器可传图文<img src="http://localhost:8080/springbootr6il1/upload/1618820516818.png"></p>'),
	(82, '2021-04-19 08:08:23', '标题2', '简介2', 'http://localhost:8080/springbootr6il1/upload/news_picture2.jpg', '内容2'),
	(83, '2021-04-19 08:08:23', '标题3', '简介3', 'http://localhost:8080/springbootr6il1/upload/news_picture3.jpg', '内容3'),
	(84, '2021-04-19 08:08:23', '标题4', '简介4', 'http://localhost:8080/springbootr6il1/upload/news_picture4.jpg', '内容4'),
	(85, '2021-04-19 08:08:23', '标题5', '简介5', 'http://localhost:8080/springbootr6il1/upload/news_picture5.jpg', '内容5'),
	(86, '2021-04-19 08:08:23', '标题6', '简介6', 'http://localhost:8080/springbootr6il1/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707552222211 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618820614108, '2021-04-19 08:23:33', 1618820560463, 1618820377686, 'jingdianxinxi', 'XXX景点', 'http://localhost:8080/springbootr6il1/upload/1618820346832.png'),
	(1707552222210, '2024-02-10 08:03:41', 11, 31, 'jingdianxinxi', '景点名称1', 'http://localhost:8080/springbootr6il1/upload/jingdianxinxi_jingdiantupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'dz2dclcxkuji6nojrtc9th1duh4zmv3c', '2021-04-19 08:17:12', '2024-02-10 09:02:23'),
	(2, 1618820560463, '001', 'yonghu', '用户', 'iqjic3lq43645enfsfo8cm3vqxlvgqoe', '2021-04-19 08:22:45', '2021-04-19 09:22:46'),
	(3, 11, '用户1', 'yonghu', '用户', 'sxkbk8bzqxzqwj9toof3n3njic5dntde', '2024-02-10 07:17:57', '2024-02-10 09:03:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-19 08:08:23');

DROP TABLE IF EXISTS `xianlutuijian`;
CREATE TABLE IF NOT EXISTS `xianlutuijian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlubianhao` varchar(200) NOT NULL COMMENT '线路编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `yudingshuliang` int DEFAULT NULL COMMENT '预订数量',
  `yudingjiage` int DEFAULT NULL COMMENT '预订价格',
  `xianluxiangqing` longtext COMMENT '线路详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xianlubianhao` (`xianlubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820444262 DEFAULT CHARSET=utf8mb3 COMMENT='线路推荐';

DELETE FROM `xianlutuijian`;
INSERT INTO `xianlutuijian` (`id`, `addtime`, `xianlubianhao`, `biaoti`, `peitu`, `chufadi`, `mudedi`, `yudingshuliang`, `yudingjiage`, `xianluxiangqing`, `thumbsupnum`, `crazilynum`) VALUES
	(41, '2021-04-19 08:08:23', '线路编号1', '标题1', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu1.jpg', '出发地1', '目的地1', 1, 1, '线路详情1', 1, 1),
	(42, '2021-04-19 08:08:23', '线路编号2', '标题2', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu2.jpg', '出发地2', '目的地2', 2, 2, '线路详情2', 2, 2),
	(43, '2021-04-19 08:08:23', '线路编号3', '标题3', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu3.jpg', '出发地3', '目的地3', 3, 3, '线路详情3', 3, 3),
	(44, '2021-04-19 08:08:23', '线路编号4', '标题4', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu4.jpg', '出发地4', '目的地4', 4, 4, '线路详情4', 4, 4),
	(45, '2021-04-19 08:08:23', '线路编号5', '标题5', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu5.jpg', '出发地5', '目的地5', 5, 5, '线路详情5', 5, 5),
	(46, '2021-04-19 08:08:23', '线路编号6', '标题6', 'http://localhost:8080/springbootr6il1/upload/xianlutuijian_peitu6.jpg', '出发地6', '目的地6', 6, 6, '线路详情6', 6, 6),
	(1618820444261, '2021-04-19 08:20:43', '1618820381942', 'XXX线路', 'http://localhost:8080/springbootr6il1/upload/1618820395184.jpg', 'XXX', 'CCC', 3, 199, '<p>客户在前台预定后预订数量会相对应增加，编辑器可传图文<img src="http://localhost:8080/springbootr6il1/upload/1618820442114.jpg"></p>', 1, 0);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820560464 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-04-19 08:08:23', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-04-19 08:08:23', '用户2', '123456', '姓名2', '女', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-04-19 08:08:23', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-04-19 08:08:23', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-04-19 08:08:23', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-04-19 08:08:23', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootr6il1/upload/yonghu_zhaopian6.jpg'),
	(1618820560463, '2021-04-19 08:22:40', '001', '001', '小李', '女', '13800000000', '138@qq.com', '440000000000001111', 'http://localhost:8080/springbootr6il1/upload/1618820581069.jpg');

DROP TABLE IF EXISTS `yudingxinxi`;
CREATE TABLE IF NOT EXISTS `yudingxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingdanhao` varchar(200) NOT NULL COMMENT '预订单号',
  `xianlubianhao` varchar(200) DEFAULT NULL COMMENT '线路编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `yudingshuliang` int DEFAULT NULL COMMENT '预订数量',
  `yudingjiage` int DEFAULT NULL COMMENT '预定价格',
  `zongjine` int DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingdanhao` (`yudingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618820666819 DEFAULT CHARSET=utf8mb3 COMMENT='预订信息';

DELETE FROM `yudingxinxi`;
INSERT INTO `yudingxinxi` (`id`, `addtime`, `yudingdanhao`, `xianlubianhao`, `biaoti`, `peitu`, `chufadi`, `mudedi`, `yudingshuliang`, `yudingjiage`, `zongjine`, `yonghuming`, `xingming`, `shenfenzheng`, `yudingshijian`, `beizhu`, `ispay`) VALUES
	(51, '2021-04-19 08:08:23', '预订单号1', '线路编号1', '标题1', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu1.jpg', '出发地1', '目的地1', 1, 1, 1, '用户名1', '姓名1', '身份证1', '2021-04-19 16:08:23', '备注1', '未支付'),
	(52, '2021-04-19 08:08:23', '预订单号2', '线路编号2', '标题2', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu2.jpg', '出发地2', '目的地2', 2, 2, 2, '用户名2', '姓名2', '身份证2', '2021-04-19 16:08:23', '备注2', '未支付'),
	(53, '2021-04-19 08:08:23', '预订单号3', '线路编号3', '标题3', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu3.jpg', '出发地3', '目的地3', 3, 3, 3, '用户名3', '姓名3', '身份证3', '2021-04-19 16:08:23', '备注3', '未支付'),
	(54, '2021-04-19 08:08:23', '预订单号4', '线路编号4', '标题4', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu4.jpg', '出发地4', '目的地4', 4, 4, 4, '用户名4', '姓名4', '身份证4', '2021-04-19 16:08:23', '备注4', '未支付'),
	(55, '2021-04-19 08:08:23', '预订单号5', '线路编号5', '标题5', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu5.jpg', '出发地5', '目的地5', 5, 5, 5, '用户名5', '姓名5', '身份证5', '2021-04-19 16:08:23', '备注5', '未支付'),
	(56, '2021-04-19 08:08:23', '预订单号6', '线路编号6', '标题6', 'http://localhost:8080/springbootr6il1/upload/yudingxinxi_peitu6.jpg', '出发地6', '目的地6', 6, 6, 6, '用户名6', '姓名6', '身份证6', '2021-04-19 16:08:23', '备注6', '未支付'),
	(1618820666818, '2021-04-19 08:24:25', '202141916241146979177', '1618820381942', 'XXX线路', 'http://localhost:8080/springbootr6il1/upload/1618820395184.jpg', 'XXX', 'CCC', 3, 199, 597, '001', '小李', '440000000000001111', '2021-04-19 16:24:23', 'XXX', '已支付');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
