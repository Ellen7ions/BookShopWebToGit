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
INSERT INTO eshop VALUES (1, '�̳���Ʒ��', 100, 9989, '������Ʒ', '�����̳�');
INSERT INTO eshop VALUES (2, '�����', 0.5, 9985, '����', '�����̳�');
INSERT INTO eshop VALUES (3, '�ൺơ��', 4, 279, '����', '�ൺ');
INSERT INTO eshop VALUES (4, '�����̲�', 10, 56, '����', '����');
INSERT INTO eshop VALUES (5, '��ܽ�ɿ���', 7.5, 196, 'ʳƷ', '�Ϻ�');
INSERT INTO eshop VALUES (6, '��ʦ��3+2�մ���ı���', 5, 484, 'ʳƷ', '�Ͼ�');
INSERT INTO eshop VALUES (7, '��Ф�����ռ�Ԥ��4�׾�', 45, 498, '�鼮', '����');
INSERT INTO eshop VALUES (8, '�����ֿ���Ѻ��6�׾�', 30, 345, '�鼮', '����');
INSERT INTO eshop VALUES (9, '��Harry Potter��', 75, 314, '�鼮', '����');
INSERT INTO eshop VALUES (10, '��ľɳ��', 1500, 76, '�Ҿ�', '����');
INSERT INTO eshop VALUES (11, '��̫���̻�', 800, 40, '�ҵ�', '����');
INSERT INTO eshop VALUES (12, '�ͱ�����װ', 10000, 33, '��װ', 'Ӣ��');
INSERT INTO eshop VALUES (13, '�µ�A6', 600000, 10, '����', 'δ֪');

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
INSERT INTO user VALUES (1, 'admin', 'admin','����Ա',10000);
INSERT INTO user VALUES (2, 'boss', 'boss','�ϰ�',10000);
INSERT INTO user VALUES (3, 'vip', 'vip','�߼���Ա',1000);
INSERT INTO user VALUES (4, 'yzm10', 'yzm10','��ͨ��Ա',100);
INSERT INTO user VALUES (5, 'molex', 'molex','��ͨ��Ա',50);
INSERT INTO user VALUES (6, 'user', 'user','��ͨ�û�',10);
INSERT INTO user VALUES (7, 'tom', 'tom','��ͨ�û�',5);
INSERT INTO user VALUES (8, 'robert', 'robert','��ͨ�û�',0);
INSERT INTO user VALUES (9, 'z', 'z','�ڿ���Ա',-1);
