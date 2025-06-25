/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 21/09/2019 21:26:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (2, '围观客', 'weiguanke', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `admins` VALUES (3, '王五', 'wangwu', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `admins` VALUES (4, '围观客官方', '围观客官方', '96e79218965eb72c92a549dd5a330112');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publicationdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '斗破苍穹', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (2, '武动乾坤', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (3, '元尊', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (4, '斗罗大陆', '唐三', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (6, '绝世唐门', '唐三', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (7, '龙王传说', '唐三', '玄幻', '起点', '2012-04-06', 20, '1', '无');
INSERT INTO `book` VALUES (9, '神墓', '辰东', '玄幻', '起点', '2019-08-14', 23, '1', '无');
INSERT INTO `book` VALUES (10, '盗墓笔记', '南派三叔', '悬疑', '起点', '2019-08-07', 45, '1', '无');
INSERT INTO `book` VALUES (11, '鬼吹灯', '霸唱天下', '悬疑', '起点', '2019-08-07', 45, '1', '无');
INSERT INTO `book` VALUES (12, '围观客源码如何下载运行', '围观客', '互联网IT技术', '北京围观客科技有限公司', '2019-09-21', 100, '1', 'weiguanke.com的图书');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borrowtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (21, 'jack', '2019-08-19', '斗破苍穹', 1);
INSERT INTO `borrow` VALUES (22, 'jack', '2019-08-19', '武动乾坤', 2);
INSERT INTO `borrow` VALUES (23, 'rose', '2019-08-19', '元尊', 3);
INSERT INTO `borrow` VALUES (24, 'rose', '2019-08-19', '斗罗大陆', 4);
INSERT INTO `borrow` VALUES (25, 'javaniu', '2019-09-21', '绝世唐门', 6);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `classname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'rick', '男', '18090093154', '能源学院', '石油工程', '3班', '1198495155', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `user` VALUES (4, 'jack', '男', '18090093154', '能源学院', '石油工程', '3班', '123', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `user` VALUES (5, 'javaniu', '女', '18090093154', '能源学院', '石油工程', '3班', 'javaniu', '96e79218965eb72c92a549dd5a330112');

SET FOREIGN_KEY_CHECKS = 1;
