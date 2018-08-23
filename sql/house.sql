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

 Date: 23/08/2018 15:17:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL COMMENT '1-销售2-出租',
  `price` int(11) NOT NULL DEFAULT 0,
  `images` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房屋图片',
  `area` int(11) NOT NULL DEFAULT 0 COMMENT '面积',
  `beds` int(11) NOT NULL DEFAULT 0 COMMENT '卧室数量',
  `baths` int(11) NOT NULL DEFAULT 0,
  `rating` double NOT NULL DEFAULT 0 COMMENT 'pingfen',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `properties` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房产属性',
  `floor_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '户型图',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` datetime NOT NULL DEFAULT '2017-10-10 00:00:00' COMMENT '创建时间',
  `city_id` int(11) NOT NULL DEFAULT 0 COMMENT '城市id',
  `community_id` int(11) NOT NULL DEFAULT 0 COMMENT 'xiaoqu0id',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1上架2下架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
