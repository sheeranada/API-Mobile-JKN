/*
Navicat MySQL Data Transfer

Source Server         : lokal
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vclaim20

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-12-12 18:23:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `referensi_mobilejkn_pasienbaru`
-- ----------------------------
DROP TABLE IF EXISTS `referensi_mobilejkn_pasienbaru`;
CREATE TABLE `referensi_mobilejkn_pasienbaru` (
  `nomorkartu` varchar(19) NOT NULL,
  `nik` varchar(19) DEFAULT NULL,
  `nomorkk` varchar(30) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `norm` varchar(10) DEFAULT NULL,
  `jeniskelamin` enum('L','P') DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kodeprop` varchar(16) DEFAULT NULL,
  `namaprop` varchar(100) DEFAULT NULL,
  `kodedati2` varchar(16) DEFAULT NULL,
  `namadati2` varchar(100) DEFAULT NULL,
  `kodekec` varchar(16) DEFAULT NULL,
  `namakec` varchar(100) DEFAULT NULL,
  `kodekel` varchar(16) DEFAULT NULL,
  `namakel` varchar(100) DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nomorkartu`),
  KEY `nik` (`nik`),
  KEY `nomorkk` (`nomorkk`),
  KEY `norm` (`norm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of referensi_mobilejkn_pasienbaru
-- ----------------------------
