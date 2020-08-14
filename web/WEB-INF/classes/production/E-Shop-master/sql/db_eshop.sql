/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : db_eshop

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-12-17 09:18:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eshop
-- ----------------------------
DROP TABLE IF EXISTS eshop;
CREATE TABLE eshop (
  no int(10) NOT NULL,
  name varchar(255) DEFAULT NULL,
  price float(10) DEFAULT NULL,
  amount int(10) DEFAULT NULL,
  type varchar(255) DEFAULT NULL,
  place varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of eshop
-- ----------------------------
INSERT INTO eshop VALUES (1, '商城礼品卡', 100, 9989, '虚拟商品', '电子商城');
INSERT INTO eshop VALUES (2, '购物袋', 0.5, 9985, '日用', '电子商城');
INSERT INTO eshop VALUES (3, '青岛啤酒', 4, 279, '饮料', '青岛');
INSERT INTO eshop VALUES (4, '日照绿茶', 10, 56, '饮料', '日照');
INSERT INTO eshop VALUES (5, '德芙巧克力', 7.5, 196, '食品', '上海');
INSERT INTO eshop VALUES (6, '康师傅3+2苏打夹心饼干', 5, 484, '食品', '南京');
INSERT INTO eshop VALUES (7, '《肖秀荣终极预测4套卷》', 45, 498, '书籍', '北京');
INSERT INTO eshop VALUES (8, '《李林考研押题6套卷》', 30, 345, '书籍', '深圳');
INSERT INTO eshop VALUES (9, '《Harry Potter》', 75, 314, '书籍', '美国');
INSERT INTO eshop VALUES (10, '红木沙发', 1500, 76, '家具', '贵州');
INSERT INTO eshop VALUES (11, '方太油烟机', 800, 40, '家电', '济南');
INSERT INTO eshop VALUES (12, '巴宝莉男装', 10000, 33, '服装', '英国');
INSERT INTO eshop VALUES (13, '奥迪A6', 600000, 10, '汽车', '未知');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(10) NOT NULL AUTO_INCREMENT,
  uname varchar(55) DEFAULT NULL,
  pwd varchar(55) DEFAULT NULL,
  status varchar(55) DEFAULT NULL,
  score float(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES (1, 'admin', 'admin','管理员',10000);
INSERT INTO user VALUES (2, 'boss', 'boss','老板',10000);
INSERT INTO user VALUES (3, 'vip', 'vip','高级会员',1000);
INSERT INTO user VALUES (4, 'yzm10', 'yzm10','普通会员',100);
INSERT INTO user VALUES (5, 'molex', 'molex','普通会员',50);
INSERT INTO user VALUES (6, 'user', 'user','普通用户',10);
INSERT INTO user VALUES (7, 'tom', 'tom','普通用户',5);
INSERT INTO user VALUES (8, 'robert', 'robert','普通用户',0);
INSERT INTO user VALUES (9, 'z', 'z','黑卡会员',-1);
