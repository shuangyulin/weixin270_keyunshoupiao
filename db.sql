-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmxef80
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chengke`
--

DROP TABLE IF EXISTS `chengke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='乘客';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengke`
--

LOCK TABLES `chengke` WRITE;
/*!40000 ALTER TABLE `chengke` DISABLE KEYS */;
INSERT INTO `chengke` VALUES (11,'2021-03-08 08:42:46','乘客1','123456','姓名1','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang1.jpg','440300199101010001','13823888881','家庭地址1'),(12,'2021-03-08 08:42:46','乘客2','123456','姓名2','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang2.jpg','440300199202020002','13823888882','家庭地址2'),(13,'2021-03-08 08:42:46','乘客3','123456','姓名3','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang3.jpg','440300199303030003','13823888883','家庭地址3'),(14,'2021-03-08 08:42:46','乘客4','123456','姓名4','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang4.jpg','440300199404040004','13823888884','家庭地址4'),(15,'2021-03-08 08:42:46','乘客5','123456','姓名5','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang5.jpg','440300199505050005','13823888885','家庭地址5'),(16,'2021-03-08 08:42:46','乘客6','123456','姓名6','男','http://localhost:8080/ssmxef80/upload/chengke_touxiang6.jpg','440300199606060006','13823888886','家庭地址6');
/*!40000 ALTER TABLE `chengke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengkedengji`
--

DROP TABLE IF EXISTS `chengkedengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengkedengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `tiwen` varchar(200) NOT NULL COMMENT '体温',
  `jinzhanshijian` varchar(200) DEFAULT NULL COMMENT '进站时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='乘客登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengkedengji`
--

LOCK TABLES `chengkedengji` WRITE;
/*!40000 ALTER TABLE `chengkedengji` DISABLE KEYS */;
INSERT INTO `chengkedengji` VALUES (81,'2021-03-08 08:42:46','名称1','姓名1','男','年龄1','体温1','进站时间1','备注1'),(82,'2021-03-08 08:42:46','名称2','姓名2','男','年龄2','体温2','进站时间2','备注2'),(83,'2021-03-08 08:42:46','名称3','姓名3','男','年龄3','体温3','进站时间3','备注3'),(84,'2021-03-08 08:42:46','名称4','姓名4','男','年龄4','体温4','进站时间4','备注4'),(85,'2021-03-08 08:42:46','名称5','姓名5','男','年龄5','体温5','进站时间5','备注5'),(86,'2021-03-08 08:42:46','名称6','姓名6','男','年龄6','体温6','进站时间6','备注6');
/*!40000 ALTER TABLE `chengkedengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chepiaoxinxi`
--

DROP TABLE IF EXISTS `chepiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chepiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banci` varchar(200) NOT NULL COMMENT '班次',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chufariqi` date DEFAULT NULL COMMENT '出发日期',
  `chufashijian` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `tujing` varchar(200) DEFAULT NULL COMMENT '途经',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `zuoweileixing` varchar(200) DEFAULT NULL COMMENT '座位类型',
  `piaojia` int(11) NOT NULL COMMENT '票价',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `kechechepaihao` varchar(200) DEFAULT NULL COMMENT '客车车牌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chepiaoxinxi`
--

LOCK TABLES `chepiaoxinxi` WRITE;
/*!40000 ALTER TABLE `chepiaoxinxi` DISABLE KEYS */;
INSERT INTO `chepiaoxinxi` VALUES (31,'2021-03-08 08:42:46','班次1','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian1.jpg','2021-03-08','出发时间1','起点1','途经1','终点1','时长1','卧铺',1,1,'账号1','客车车牌号1'),(32,'2021-03-08 08:42:46','班次2','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian2.jpg','2021-03-08','出发时间2','起点2','途经2','终点2','时长2','卧铺',2,2,'账号2','客车车牌号2'),(33,'2021-03-08 08:42:46','班次3','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian3.jpg','2021-03-08','出发时间3','起点3','途经3','终点3','时长3','卧铺',3,3,'账号3','客车车牌号3'),(34,'2021-03-08 08:42:46','班次4','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian4.jpg','2021-03-08','出发时间4','起点4','途经4','终点4','时长4','卧铺',4,4,'账号4','客车车牌号4'),(35,'2021-03-08 08:42:46','班次5','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian5.jpg','2021-03-08','出发时间5','起点5','途经5','终点5','时长5','卧铺',5,5,'账号5','客车车牌号5'),(36,'2021-03-08 08:42:46','班次6','http://localhost:8080/ssmxef80/upload/chepiaoxinxi_tupian6.jpg','2021-03-08','出发时间6','起点6','途经6','终点6','时长6','卧铺',6,6,'账号6','客车车牌号6');
/*!40000 ALTER TABLE `chepiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmxef80/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmxef80/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmxef80/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `kechechepaihao` varchar(200) DEFAULT NULL COMMENT '客车车牌号',
  `chufariqi` varchar(200) DEFAULT NULL COMMENT '出发日期',
  `chufashijian` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `zuoweileixing` varchar(200) DEFAULT NULL COMMENT '座位类型',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `piaoshu` int(11) NOT NULL COMMENT '票数',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `goupiaoneirong` longtext COMMENT '购票内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (41,'2021-03-08 08:42:46','订单编号1','班次1','账号1','客车车牌号1','出发日期1','出发时间1','起点1','终点1','座位类型1','票价1',1,1,'购票内容1','用户名1','姓名1','身份证1','是','','未支付',1),(42,'2021-03-08 08:42:46','订单编号2','班次2','账号2','客车车牌号2','出发日期2','出发时间2','起点2','终点2','座位类型2','票价2',2,2,'购票内容2','用户名2','姓名2','身份证2','是','','未支付',2),(43,'2021-03-08 08:42:46','订单编号3','班次3','账号3','客车车牌号3','出发日期3','出发时间3','起点3','终点3','座位类型3','票价3',3,3,'购票内容3','用户名3','姓名3','身份证3','是','','未支付',3),(44,'2021-03-08 08:42:46','订单编号4','班次4','账号4','客车车牌号4','出发日期4','出发时间4','起点4','终点4','座位类型4','票价4',4,4,'购票内容4','用户名4','姓名4','身份证4','是','','未支付',4),(45,'2021-03-08 08:42:46','订单编号5','班次5','账号5','客车车牌号5','出发日期5','出发时间5','起点5','终点5','座位类型5','票价5',5,5,'购票内容5','用户名5','姓名5','身份证5','是','','未支付',5),(46,'2021-03-08 08:42:46','订单编号6','班次6','账号6','客车车牌号6','出发日期6','出发时间6','起点6','终点6','座位类型6','票价6',6,6,'购票内容6','用户名6','姓名6','身份证6','是','','未支付',6);
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshiwuzhaoling`
--

DROP TABLE IF EXISTS `discussshiwuzhaoling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='失物招领评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshiwuzhaoling`
--

LOCK TABLES `discussshiwuzhaoling` WRITE;
/*!40000 ALTER TABLE `discussshiwuzhaoling` DISABLE KEYS */;
INSERT INTO `discussshiwuzhaoling` VALUES (111,'2021-03-08 08:42:46',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-08 08:42:46',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-08 08:42:46',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-08 08:42:46',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-08 08:42:46',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-08 08:42:46',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshiwuzhaoling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechedengji`
--

DROP TABLE IF EXISTS `kechedengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechedengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechechepaihao` varchar(200) NOT NULL COMMENT '客车车牌号',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `kecheleixing` varchar(200) DEFAULT NULL COMMENT '客车类型',
  `jinzhanshijian` datetime DEFAULT NULL COMMENT '进站时间',
  `chuzhanshijian` datetime DEFAULT NULL COMMENT '出站时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='客车登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechedengji`
--

LOCK TABLES `kechedengji` WRITE;
/*!40000 ALTER TABLE `kechedengji` DISABLE KEYS */;
INSERT INTO `kechedengji` VALUES (71,'2021-03-08 08:42:46','客车车牌号1','司机姓名1','客车类型1','2021-03-08 16:42:46','2021-03-08 16:42:46'),(72,'2021-03-08 08:42:46','客车车牌号2','司机姓名2','客车类型2','2021-03-08 16:42:46','2021-03-08 16:42:46'),(73,'2021-03-08 08:42:46','客车车牌号3','司机姓名3','客车类型3','2021-03-08 16:42:46','2021-03-08 16:42:46'),(74,'2021-03-08 08:42:46','客车车牌号4','司机姓名4','客车类型4','2021-03-08 16:42:46','2021-03-08 16:42:46'),(75,'2021-03-08 08:42:46','客车车牌号5','司机姓名5','客车类型5','2021-03-08 16:42:46','2021-03-08 16:42:46'),(76,'2021-03-08 08:42:46','客车车牌号6','司机姓名6','客车类型6','2021-03-08 16:42:46','2021-03-08 16:42:46');
/*!40000 ALTER TABLE `kechedengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='资讯信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-08 08:42:46','标题1','简介1','http://localhost:8080/ssmxef80/upload/news_picture1.jpg','内容1'),(102,'2021-03-08 08:42:46','标题2','简介2','http://localhost:8080/ssmxef80/upload/news_picture2.jpg','内容2'),(103,'2021-03-08 08:42:46','标题3','简介3','http://localhost:8080/ssmxef80/upload/news_picture3.jpg','内容3'),(104,'2021-03-08 08:42:46','标题4','简介4','http://localhost:8080/ssmxef80/upload/news_picture4.jpg','内容4'),(105,'2021-03-08 08:42:46','标题5','简介5','http://localhost:8080/ssmxef80/upload/news_picture5.jpg','内容5'),(106,'2021-03-08 08:42:46','标题6','简介6','http://localhost:8080/ssmxef80/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwuzhaoling`
--

DROP TABLE IF EXISTS `shiwuzhaoling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangxineirong` longtext COMMENT '详细内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='失物招领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwuzhaoling`
--

LOCK TABLES `shiwuzhaoling` WRITE;
/*!40000 ALTER TABLE `shiwuzhaoling` DISABLE KEYS */;
INSERT INTO `shiwuzhaoling` VALUES (61,'2021-03-08 08:42:46','标题1','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian1.jpg','2021-03-08 16:42:46','联系人1','13823888881','详细内容1'),(62,'2021-03-08 08:42:46','标题2','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian2.jpg','2021-03-08 16:42:46','联系人2','13823888882','详细内容2'),(63,'2021-03-08 08:42:46','标题3','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian3.jpg','2021-03-08 16:42:46','联系人3','13823888883','详细内容3'),(64,'2021-03-08 08:42:46','标题4','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian4.jpg','2021-03-08 16:42:46','联系人4','13823888884','详细内容4'),(65,'2021-03-08 08:42:46','标题5','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian5.jpg','2021-03-08 16:42:46','联系人5','13823888885','详细内容5'),(66,'2021-03-08 08:42:46','标题6','失物信息','http://localhost:8080/ssmxef80/upload/shiwuzhaoling_tupian6.jpg','2021-03-08 16:42:46','联系人6','13823888886','详细内容6');
/*!40000 ALTER TABLE `shiwuzhaoling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shoujihao` varchar(200) NOT NULL COMMENT '手机号',
  `kechechepaihao` varchar(200) NOT NULL COMMENT '客车车牌号',
  `kecheleixing` varchar(200) NOT NULL COMMENT '客车类型',
  `kechejiage` varchar(200) DEFAULT NULL COMMENT '客车价格',
  `hezairenshu` varchar(200) DEFAULT NULL COMMENT '核载人数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (21,'2021-03-08 08:42:46','司机1','123456','姓名1','440300199101010001','http://localhost:8080/ssmxef80/upload/siji_touxiang1.jpg','13823888881','客车车牌号1','客车类型1','客车价格1','核载人数1'),(22,'2021-03-08 08:42:46','司机2','123456','姓名2','440300199202020002','http://localhost:8080/ssmxef80/upload/siji_touxiang2.jpg','13823888882','客车车牌号2','客车类型2','客车价格2','核载人数2'),(23,'2021-03-08 08:42:46','司机3','123456','姓名3','440300199303030003','http://localhost:8080/ssmxef80/upload/siji_touxiang3.jpg','13823888883','客车车牌号3','客车类型3','客车价格3','核载人数3'),(24,'2021-03-08 08:42:46','司机4','123456','姓名4','440300199404040004','http://localhost:8080/ssmxef80/upload/siji_touxiang4.jpg','13823888884','客车车牌号4','客车类型4','客车价格4','核载人数4'),(25,'2021-03-08 08:42:46','司机5','123456','姓名5','440300199505050005','http://localhost:8080/ssmxef80/upload/siji_touxiang5.jpg','13823888885','客车车牌号5','客车类型5','客车价格5','核载人数5'),(26,'2021-03-08 08:42:46','司机6','123456','姓名6','440300199606060006','http://localhost:8080/ssmxef80/upload/siji_touxiang6.jpg','13823888886','客车车牌号6','客车类型6','客车价格6','核载人数6');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhixinxi`
--

DROP TABLE IF EXISTS `tongzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tongzhineirong` longtext COMMENT '通知内容',
  `tongzhiriqi` date DEFAULT NULL COMMENT '通知日期',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='通知信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhixinxi`
--

LOCK TABLES `tongzhixinxi` WRITE;
/*!40000 ALTER TABLE `tongzhixinxi` DISABLE KEYS */;
INSERT INTO `tongzhixinxi` VALUES (91,'2021-03-08 08:42:46','标题1','账号1','姓名1','通知内容1','2021-03-08',1),(92,'2021-03-08 08:42:46','标题2','账号2','姓名2','通知内容2','2021-03-08',2),(93,'2021-03-08 08:42:46','标题3','账号3','姓名3','通知内容3','2021-03-08',3),(94,'2021-03-08 08:42:46','标题4','账号4','姓名4','通知内容4','2021-03-08',4),(95,'2021-03-08 08:42:46','标题5','账号5','姓名5','通知内容5','2021-03-08',5),(96,'2021-03-08 08:42:46','标题6','账号6','姓名6','通知内容6','2021-03-08',6);
/*!40000 ALTER TABLE `tongzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuipiaoxinxi`
--

DROP TABLE IF EXISTS `tuipiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuipiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `kechechepaihao` varchar(200) DEFAULT NULL COMMENT '客车车牌号',
  `piaoshu` varchar(200) DEFAULT NULL COMMENT '票数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tuipiaoyuanyin` longtext COMMENT '退票原因',
  `tuipiaoriqi` date DEFAULT NULL COMMENT '退票日期',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='退票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuipiaoxinxi`
--

LOCK TABLES `tuipiaoxinxi` WRITE;
/*!40000 ALTER TABLE `tuipiaoxinxi` DISABLE KEYS */;
INSERT INTO `tuipiaoxinxi` VALUES (51,'2021-03-08 08:42:46','订单编号1','班次1','账号1','客车车牌号1','票数1','总价格1','用户名1','姓名1','身份证1','退票原因1','2021-03-08',1),(52,'2021-03-08 08:42:46','订单编号2','班次2','账号2','客车车牌号2','票数2','总价格2','用户名2','姓名2','身份证2','退票原因2','2021-03-08',2),(53,'2021-03-08 08:42:46','订单编号3','班次3','账号3','客车车牌号3','票数3','总价格3','用户名3','姓名3','身份证3','退票原因3','2021-03-08',3),(54,'2021-03-08 08:42:46','订单编号4','班次4','账号4','客车车牌号4','票数4','总价格4','用户名4','姓名4','身份证4','退票原因4','2021-03-08',4),(55,'2021-03-08 08:42:46','订单编号5','班次5','账号5','客车车牌号5','票数5','总价格5','用户名5','姓名5','身份证5','退票原因5','2021-03-08',5),(56,'2021-03-08 08:42:46','订单编号6','班次6','账号6','客车车牌号6','票数6','总价格6','用户名6','姓名6','身份证6','退票原因6','2021-03-08',6);
/*!40000 ALTER TABLE `tuipiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-08 08:42:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-08 17:59:28
