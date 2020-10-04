/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50723
Source Host           : 127.0.0.1:3306
Source Database       : ems_vue

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-10-05 00:57:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_emp
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
INSERT INTO `t_emp` VALUES ('8', '小明123', '289420c2-a318-49de-8c4c-d92cdc124b3c.jpg', '2300.00', '25');
INSERT INTO `t_emp` VALUES ('9', '小金豆豆', '97155bc6-0d0c-4057-ad92-62a055d39c27.gif', '2400.00', '24');
INSERT INTO `t_emp` VALUES ('11', 'zhu', 'ea2b94ab-4af8-45bc-8958-29947c856b91.jpg', '30004.00', '213');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `realname` varchar(60) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `regsterTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', 'admin', '小陈', '123', '男', '已激活', '2020-06-20 08:43:35');
INSERT INTO `t_user` VALUES ('4', 'zhangsan', '小张', '123', '男', '已激活', '2020-06-20 08:53:22');
INSERT INTO `t_user` VALUES ('5', 'zhu', 'zhu', '123', '女', '已激活', '2020-06-21 00:54:09');
