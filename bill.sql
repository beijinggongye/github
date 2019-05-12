/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : bill

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001


*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bid` INT(10) NOT NULL AUTO_INCREMENT,
  `bill_code` VARCHAR(25) DEFAULT NULL,
  `bill_name` VARCHAR(25) DEFAULT NULL,
  `bill_com` VARCHAR(25) DEFAULT NULL,
  `bill_num` INT(8) DEFAULT NULL,
  `money` DOUBLE(8,2) DEFAULT NULL,
  `pay` INT(2) DEFAULT NULL COMMENT '是否付款 0 未付款， 1已付款',
  `pid` INT(10) DEFAULT NULL COMMENT '供应商id',
  `create_date` TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY (`bid`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('1', 'B_001', 'ESC包年云服务', '年', '39', '400000.00', '1', '1', '2018-11-17 15:22:03');
INSERT INTO `bill` VALUES ('2', 'b_002', 'ESC包月云服务', '月', '20', '26000.00', '1', '3', '2028-11-12 11:58:00');
INSERT INTO `bill` VALUES ('3', 'b_003', 'com域名', '年', '33', '15000.00', '0', '1', '2028-11-12 11:58:00');
INSERT INTO `bill` VALUES ('4', 'b_004', 'cn域名', '小时', '10', '7000.00', '0', '1', '2028-11-12 11:58:00');
INSERT INTO `bill` VALUES ('5', 'b_005', '团购小程序', '月', '3', '60000.00', '1', '4', '2028-11-12 11:58:00');

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `pid` INT(10) NOT NULL AUTO_INCREMENT,
  `provider_code` VARCHAR(25) DEFAULT NULL,
  `providerName` VARCHAR(25) DEFAULT NULL,
  `people` VARCHAR(25) DEFAULT NULL,
  `phone` VARCHAR(15) DEFAULT NULL,
  `address` VARCHAR(60) DEFAULT NULL,
  `fax` VARCHAR(25) DEFAULT NULL,
  `describe` VARCHAR(100) DEFAULT NULL,
  `create_date` TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY (`pid`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provider
-- ----------------------------
INSERT INTO `provider` VALUES ('1', 'P_111', 'A货云服务供应商11', '小码', '1888888888', '广州白云区', '020-123456', '专业ESC服务商', '2018-11-17 12:21:54');
INSERT INTO `provider` VALUES ('2', 'P_222', 'B货域名供应商', '小域', '1888886666', '北京朝阳区', '020-112312123', '专业提供域名', '2018-11-17 12:14:53');
INSERT INTO `provider` VALUES ('3', 'P_333', 'B货小程序企鹅', '小企鹅', '1888666666', '深圳南山区', '020-123123', '专业小程序提供', '2028-11-12 11:52:17');
INSERT INTO `provider` VALUES ('4', 'P_444', '其他渠道供应商', '无名', '1888999999', '北京', '010-1000', '专业渠道来源', '2018-11-12 12:07:02');
INSERT INTO `provider` VALUES ('6', 'P_555', '梦学谷供应商111', '小张', '18888666981', '深圳软件园', '0911-0123456', '品质Aaa', '2018-11-17 12:23:12');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(25) DEFAULT NULL,
  `real_name` VARCHAR(25) DEFAULT NULL,
  `password` VARCHAR(25) DEFAULT NULL,
  `gender` INT(1) DEFAULT NULL COMMENT '性别：1 女  2 男',
  `birthday` DATETIME DEFAULT NULL,
  `user_type` INT(1) DEFAULT NULL COMMENT '1管理员  2经理  3普通用户',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', '系统管理员', '123', '1', '2003-11-12 00:00:00', '1');
INSERT INTO `user` VALUES ('2', 'lisi', '李四', '123', '2', '1983-11-12 00:00:00', '2');
INSERT INTO `user` VALUES ('3', 'wangwu', '王五', '123', '2', '1953-11-12 00:00:00', '3');
INSERT INTO `user` VALUES ('4', 'zhangsan', '张三', '123', '1', '1973-11-12 00:00:00', '3');
