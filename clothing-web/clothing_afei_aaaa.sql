/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : clothing_afei

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-02-02 10:41:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_belong
-- ----------------------------
DROP TABLE IF EXISTS `t_belong`;
CREATE TABLE `t_belong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_province` varchar(20) DEFAULT NULL,
  `s_city` varchar(20) DEFAULT NULL,
  `s_county` varchar(20) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_belong
-- ----------------------------
INSERT INTO `t_belong` VALUES ('1', '北京市', '北京市', '石景山区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('2', '天津市', '天津市', '和平区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('3', '河北省', '石家庄市', '长安区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('4', '内蒙古', '呼和浩特市', '回民区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('5', '辽宁省', '沈阳市', '沈河区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('6', '吉林省', '长春市', '朝阳区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('7', '浙江省', '杭州市', '拱墅区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('8', '福建省', '福州市', '鼓楼区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('9', '山东省', '济南市', '市中区', '订单归属地补充信息');
INSERT INTO `t_belong` VALUES ('10', '湖北省', '武汉市', '江汉区', '订单归属地补充信息');

-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mxs` int(11) DEFAULT NULL,
  `ms` int(11) DEFAULT NULL,
  `mm` int(11) DEFAULT NULL,
  `ml` int(11) DEFAULT NULL,
  `mxl` int(11) DEFAULT NULL,
  `mxxl` int(11) DEFAULT NULL,
  `mxxxl` int(11) DEFAULT NULL,
  `totalCount` int(11) DEFAULT NULL COMMENT '总数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_code
-- ----------------------------
INSERT INTO `t_code` VALUES ('1', '10', '20', '30', '4', '50', '60', '70', '244');
INSERT INTO `t_code` VALUES ('2', '10', '20', '30', '40', '50', '60', '70', '280');
INSERT INTO `t_code` VALUES ('3', '150', '300', '425', '482', '210', '234', '520', '2321');
INSERT INTO `t_code` VALUES ('4', '90', '80', '70', '50', '40', '30', '10', '370');
INSERT INTO `t_code` VALUES ('5', '120', null, null, '120', '120', null, '120', '480');
INSERT INTO `t_code` VALUES ('6', null, '200', null, null, '200', '200', null, '600');
INSERT INTO `t_code` VALUES ('7', '500', null, '500', null, null, '500', null, '1500');
INSERT INTO `t_code` VALUES ('8', null, '210', null, null, null, '210', null, '420');
INSERT INTO `t_code` VALUES ('9', '40', null, '40', null, null, null, '40', '120');
INSERT INTO `t_code` VALUES ('10', '10', '10', '10', '10', '10', '10', '10', '70');

-- ----------------------------
-- Table structure for t_delivery
-- ----------------------------
DROP TABLE IF EXISTS `t_delivery`;
CREATE TABLE `t_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_province` varchar(25) DEFAULT NULL COMMENT '省',
  `ss_city` varchar(25) DEFAULT NULL,
  `ss_county` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `way` varchar(20) DEFAULT NULL,
  `personName` varchar(25) DEFAULT NULL,
  `relationPhone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_delivery
-- ----------------------------
INSERT INTO `t_delivery` VALUES ('1', '上海市', '上海市', '黄浦区', '请补全收件地址', '快递', '收件人徐庶', '22222222222');
INSERT INTO `t_delivery` VALUES ('2', '重庆市', '重庆市', '渝中区', '收货地址补全信息', '自提', '收件人徐庶', '3333333333');
INSERT INTO `t_delivery` VALUES ('3', '山西省', '太原市', '杏花岭区', '收货地址补全', '自提', '荀彧', '2222222222');
INSERT INTO `t_delivery` VALUES ('4', '辽宁省', '沈阳市', '大东区', '收件地址补全', '快递', '收件人杨修', '2222222222');
INSERT INTO `t_delivery` VALUES ('5', '浙江省', '杭州市', '拱墅区', '收货地址补全信息', '快递', '张春华', '1111111111');
INSERT INTO `t_delivery` VALUES ('6', '江苏省', '南京市', '玄武区', '收货地址补全信息', '快递', '黄盖', '1111111111');
INSERT INTO `t_delivery` VALUES ('7', '安徽省', '合肥市', '庐阳区', '收货地址补全信息', '快递', '徐盛', '1111111111');
INSERT INTO `t_delivery` VALUES ('8', '江西省', '南昌市', '东湖区', '收货地址补全信息', '快递', '华佗', '1111111111');
INSERT INTO `t_delivery` VALUES ('9', '河南省', '郑州市', '中原区', '收货地址补全信息', '快递', '董卓', '1111111111');
INSERT INTO `t_delivery` VALUES ('10', '湖南省', '长沙市', '长沙市', '收货地址补全信息', '自提', '鲁肃', '1111111111');

-- ----------------------------
-- Table structure for t_fashion
-- ----------------------------
DROP TABLE IF EXISTS `t_fashion`;
CREATE TABLE `t_fashion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fashionName` varchar(255) DEFAULT NULL COMMENT '款式名称',
  `createTime` date DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fashion
-- ----------------------------
INSERT INTO `t_fashion` VALUES ('1', 'A1优质莱卡棉纯色夏季短袖_修改', '2018-01-28');
INSERT INTO `t_fashion` VALUES ('2', 'A2优质莱卡棉撞边夏季短袖', '2018-01-28');
INSERT INTO `t_fashion` VALUES ('4', 'A4优质莱卡棉纯色夏季短袖', '2018-02-02');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderId` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '订单Id',
  `customName` varchar(25) DEFAULT NULL COMMENT '客户姓名',
  `className` varchar(255) DEFAULT NULL COMMENT '单位(班级)',
  `phoneNumber` varchar(25) DEFAULT NULL COMMENT '电话号码',
  `qq` varchar(25) DEFAULT NULL,
  `fashionName` varchar(100) DEFAULT NULL COMMENT '款式名称',
  `color` varchar(20) DEFAULT NULL,
  `otherFashion` varchar(255) DEFAULT NULL COMMENT '其他款式',
  `codeId` int(11) DEFAULT NULL COMMENT '尺码id',
  `money` varchar(25) DEFAULT NULL COMMENT '成交金额',
  `earnest` varchar(255) DEFAULT NULL COMMENT '定金',
  `print` varchar(255) DEFAULT NULL COMMENT '印制说明',
  `getOrderDate` date DEFAULT NULL COMMENT '接单日期',
  `sendDate` date DEFAULT NULL COMMENT '发货日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `deliveryId` int(11) DEFAULT NULL COMMENT '配送货物Id',
  `createDate` date DEFAULT NULL COMMENT '创建时间',
  `endReason` varchar(255) DEFAULT NULL COMMENT '终止原因',
  `endDate` date DEFAULT NULL COMMENT '终止时间',
  `belongId` int(11) DEFAULT NULL COMMENT '订单归属地Id',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态',
  `orderNumber` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`orderId`),
  KEY `fashionId` (`fashionName`),
  KEY `codeId` (`codeId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '曹操', '计算机java', '1111111111', '1111111111@qq.com', 'A1优质莱卡棉纯色夏季短袖_修改', '纯红', '其他款式', '1', '150', '100', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '1', '2018-02-02', null, null, '1', '0', '20180202094241', '1');
INSERT INTO `t_order` VALUES ('2', '沮授', '计算机py', '2222222222', '2222222222@qq.com', 'A2优质莱卡棉撞边夏季短袖', '灰色', '其他款式', '2', '2000', '1000', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2019-02-23', '发货日期备注', '2', '2018-02-02', null, null, '2', '1', '20180202095223', '1');
INSERT INTO `t_order` VALUES ('3', '黄月英', '计算机php', '1111111111', '黄月英@qq.com', 'A2优质莱卡棉撞边夏季短袖', '纯蓝色', '其他款式', '3', '3210', '210', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-10-20', '发货日期备注', '3', '2018-02-02', null, null, '3', '2', '20180202100427', '1');
INSERT INTO `t_order` VALUES ('4', '典韦', '计算机js', '1111111111', '1111111111@qq.com', 'A4优质莱卡棉纯色夏季短袖', '纯黑色', '其他款式', '4', '6158', '871', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-02', '发货日期备注', '4', '2018-02-02', null, null, '4', '3', '20180202101158', '1');
INSERT INTO `t_order` VALUES ('5', '于禁', '计算机css', '1111111111', '1111111111@qq.com', 'A2优质莱卡棉撞边夏季短袖', '纯红', '其他款式', '5', '350', '100', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '5', '2018-02-02', null, null, '5', '4', '20180202101527', '1');
INSERT INTO `t_order` VALUES ('6', '周瑜', '计算机vue', '1111111111', '1111111111@qq.com', 'A2优质莱卡棉撞边夏季短袖', '纯黄色', '其他款式', '6', '1600', '600', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '6', '2018-02-02', null, null, '6', '5', '20180202102936', '1');
INSERT INTO `t_order` VALUES ('7', '凌统', '计算机py', '1111111111', '1111111111@qq.com', '', '纯白色', '', '7', '670', '70', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '7', '2018-02-02', '该订单已过期，请重启动新的订单流程', '2018-02-02', '7', '6', '20180202103151', '1');
INSERT INTO `t_order` VALUES ('8', '于吉', '计算机py', '1111111111', '1111111111@qq.com', 'A1优质莱卡棉纯色夏季短袖_修改', '纯白色', '其他款式', '8', '90000', '6000', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '8', '2018-02-02', null, null, '8', '7', '20180202103338', '1');
INSERT INTO `t_order` VALUES ('9', '颜良&文丑', '计算机py', '1111111111', '1111111111@qq.com', 'A1优质莱卡棉纯色夏季短袖_修改', '纯白色', '其他款式', '9', '40', '10', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '9', '2018-02-02', null, null, '9', '1', '20180202103505', '1');
INSERT INTO `t_order` VALUES ('10', '徐晃', '计算机java', '1111111111', '徐晃', 'A1优质莱卡棉纯色夏季短袖_修改', '纯红', '其他款式', '10', '10', '1', '请在此说明印图技术，如:2个单色图，或1个彩色图', '2018-02-02', '2018-02-03', '发货日期备注', '10', '2018-02-02', null, null, '10', '1', '20180202103635', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `passWord` varchar(20) DEFAULT NULL,
  `realName` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `permission` int(11) DEFAULT NULL COMMENT '权限',
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `enterTime` datetime DEFAULT NULL COMMENT '入职时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123456', 'admin_realName', '0', '超级管理员', '2018-01-27 00:00:00');
INSERT INTO `t_user` VALUES ('43', 'admin_02', '123456', 'admin_02_reanlName', '0', '超级管理员', '2018-02-02 09:36:20');
