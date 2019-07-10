/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : shiro

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 10/07/2019 11:32:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'addProduct', '增加产品', '/addProduct');
INSERT INTO `permission` VALUES (2, 'deleteProduct', '删除产品', '/deleteProduct');
INSERT INTO `permission` VALUES (3, 'editeProduct', '编辑产品', '/editeProduct');
INSERT INTO `permission` VALUES (4, 'updateProduct', '修改产品', '/updateProduct');
INSERT INTO `permission` VALUES (5, 'listProduct', '查看产品', '/listProduct');
INSERT INTO `permission` VALUES (6, 'addOrder', '增加订单', '/addOrder');
INSERT INTO `permission` VALUES (7, 'deleteOrder', '删除订单', '/deleteOrder');
INSERT INTO `permission` VALUES (8, 'editeOrder', '编辑订单', '/editeOrder');
INSERT INTO `permission` VALUES (9, 'updateOrder', '修改订单', '/updateOrder');
INSERT INTO `permission` VALUES (10, 'listOrder', '查看订单', '/listOrder');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '超级管理员');
INSERT INTO `role` VALUES (2, 'productManager', '产品管理员');
INSERT INTO `role` VALUES (3, 'orderManager', '订单管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NULL DEFAULT NULL,
  `pid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1);
INSERT INTO `role_permission` VALUES (2, 1, 2);
INSERT INTO `role_permission` VALUES (3, 1, 3);
INSERT INTO `role_permission` VALUES (4, 1, 4);
INSERT INTO `role_permission` VALUES (5, 1, 5);
INSERT INTO `role_permission` VALUES (6, 1, 6);
INSERT INTO `role_permission` VALUES (7, 1, 7);
INSERT INTO `role_permission` VALUES (8, 1, 8);
INSERT INTO `role_permission` VALUES (9, 1, 9);
INSERT INTO `role_permission` VALUES (10, 1, 10);
INSERT INTO `role_permission` VALUES (11, 2, 1);
INSERT INTO `role_permission` VALUES (12, 2, 2);
INSERT INTO `role_permission` VALUES (13, 2, 3);
INSERT INTO `role_permission` VALUES (14, 2, 4);
INSERT INTO `role_permission` VALUES (15, 2, 5);
INSERT INTO `role_permission` VALUES (50, 3, 10);
INSERT INTO `role_permission` VALUES (51, 3, 9);
INSERT INTO `role_permission` VALUES (52, 3, 8);
INSERT INTO `role_permission` VALUES (53, 3, 7);
INSERT INTO `role_permission` VALUES (54, 3, 6);
INSERT INTO `role_permission` VALUES (55, 3, 1);
INSERT INTO `role_permission` VALUES (56, 5, 11);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhang3', 'a7d59dfc5332749cb801f86a24f5f590', 'e5ykFiNwShfCXvBRPr3wXg==');
INSERT INTO `user` VALUES (2, 'li4', '43e28304197b9216e45ab1ce8dac831b', 'jPz19y7arvYIGhuUjsb6sQ==');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NULL DEFAULT NULL,
  `rid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (45, 1, 1);
INSERT INTO `user_role` VALUES (49, 2, 2);

SET FOREIGN_KEY_CHECKS = 1;
