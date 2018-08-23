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

 Date: 23/08/2018 15:16:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house_msg
-- ----------------------------
DROP TABLE IF EXISTS `house_msg`;
CREATE TABLE `house_msg`  (
  `id` bigint(20) NOT NULL,
  `msg` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '消息',
  `create_time` datetime NOT NULL DEFAULT '2017-10-10 00:00:00',
  `agent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '经纪人id',
  `house_id` bigint(20) NOT NULL DEFAULT 0,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋信息表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
