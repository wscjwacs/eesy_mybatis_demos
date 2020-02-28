/*
 Navicat Premium Data Transfer

 Source Server         : MySql5.6
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 28/02/2020 10:58:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `ID` int(11) NOT NULL COMMENT '编号',
  `UID` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `MONEY` double NULL DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_Reference_8`(`UID`) USING BTREE,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`UID`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 24, 1000);
INSERT INTO `account` VALUES (2, 25, 1000);
INSERT INTO `account` VALUES (3, 24, 2000);

SET FOREIGN_KEY_CHECKS = 1;
