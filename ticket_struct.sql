/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : ticket

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 09/03/2022 10:47:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_code` int NOT NULL,
  `city_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gd_info
-- ----------------------------
DROP TABLE IF EXISTS `gd_info`;
CREATE TABLE `gd_info`  (
  `train_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `total_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `secondseat_num` int NULL DEFAULT NULL,
  `secondseat_price` decimal(10, 2) NULL DEFAULT NULL,
  `firstseat_num` int NULL DEFAULT NULL,
  `firstseat_price` decimal(10, 2) NULL DEFAULT NULL,
  `business_num` int NULL DEFAULT NULL,
  `business_price` decimal(10, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for passenger
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `login_name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reserver_name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` int NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passenger_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for record_info
-- ----------------------------
DROP TABLE IF EXISTS `record_info`;
CREATE TABLE `record_info`  (
  `from_station` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_station` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_info
-- ----------------------------
DROP TABLE IF EXISTS `train_info`;
CREATE TABLE `train_info`  (
  `train_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `from_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `total_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noseat_num` int NULL DEFAULT NULL,
  `noseat_price` decimal(10, 2) NULL DEFAULT NULL,
  `hardseat_num` int NULL DEFAULT NULL,
  `hardseat_price` decimal(10, 2) NULL DEFAULT NULL,
  `hardsleeper_num` int NULL DEFAULT NULL,
  `hardsleeper_price` decimal(10, 2) NULL DEFAULT NULL,
  `softsleeper_num` int NULL DEFAULT NULL,
  `softsleeper_price` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
