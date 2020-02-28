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

 Date: 27/02/2020 18:24:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '王五', NULL, '2', NULL);
INSERT INTO `user` VALUES (10, '张三', '2014-07-10', '1', '北京市');
INSERT INTO `user` VALUES (16, '张小明', NULL, '1', '河南郑州');
INSERT INTO `user` VALUES (22, '陈小明', NULL, '1', '河南郑州');
INSERT INTO `user` VALUES (24, '张三丰', NULL, '1', '河南郑州');
INSERT INTO `user` VALUES (25, '陈小明', NULL, '1', '河南郑州');
INSERT INTO `user` VALUES (26, '王五', NULL, NULL, NULL);
INSERT INTO `user` VALUES (29, 'mybastis update user', '2020-02-27', '女', '北京市顺义区');
INSERT INTO `user` VALUES (30, 'modify User property222', '2020-02-27', '男', '北京市顺义区');

SET FOREIGN_KEY_CHECKS = 1;
