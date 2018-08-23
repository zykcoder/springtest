/*
 Navicat Premium Data Transfer

 Source Server         : o2o
 Source Server Type    : MySQL
 Source Server Version : 50544
 Source Host           : localhost:3306
 Source Schema         : houses

 Target Server Type    : MySQL
 Target Server Version : 50544
 File Encoding         : 65001

 Date: 23/08/2018 15:16:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aboutme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像图片',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1普通2经理',
  `create_time` datetime NOT NULL DEFAULT '2017-10-10 00:00:00',
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `agency_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (28, '查远凯', '18702301773', '1981790996@qq.com', 'sss', 'ed57176d1456d364e35d9531adbc7db9', '', 1, '2018-08-23 10:19:13', 1, 0);
INSERT INTO `user` VALUES (43, '查远凯', '18702301773', 'bachuanzx27@qq.com', 'sss阿斯顿发顺丰', 'ed57176d1456d364e35d9531adbc7db9', '', 1, '2018-08-23 12:25:40', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
