/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : p1_qlctp

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-21 17:53:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chi_tiet_hoa_don
-- ----------------------------
DROP TABLE IF EXISTS `chi_tiet_hoa_don`;
CREATE TABLE `chi_tiet_hoa_don` (
  `ma_chi_tiet_hoa_don` bigint(20) NOT NULL AUTO_INCREMENT,
  `noi_dung_chi` varchar(500) DEFAULT NULL,
  `dau_muc_thuc_thi` varchar(500) DEFAULT NULL,
  `don_gia` bigint(20) DEFAULT NULL,
  `VAT` bigint(20) DEFAULT NULL,
  `thanh_tien_chua_VAT` bigint(20) DEFAULT NULL,
  `thanh_tien_VAT` bigint(20) DEFAULT NULL,
  `ma_hoa_don` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_chi_tiet_hoa_don`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chi_tiet_hoa_don
-- ----------------------------

-- ----------------------------
-- Table structure for dia_diem_cong_tac
-- ----------------------------
DROP TABLE IF EXISTS `dia_diem_cong_tac`;
CREATE TABLE `dia_diem_cong_tac` (
  `ma_dia_diem_cong_tac` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_diem` varchar(200) DEFAULT NULL,
  `ma_loai_dia_diem` bigint(20) DEFAULT NULL,
  `ma_vai_tro` bigint(20) DEFAULT NULL,
  `muc_phi_cong_tac` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_dia_diem_cong_tac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dia_diem_cong_tac
-- ----------------------------

-- ----------------------------
-- Table structure for hoa_don
-- ----------------------------
DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE `hoa_don` (
  `ma_hoa_don` bigint(20) NOT NULL AUTO_INCREMENT,
  `tong_tien_hoa_don` bigint(20) DEFAULT NULL,
  `so_tien_hop_le` bigint(20) DEFAULT NULL,
  `so_du` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_hoa_don`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hoa_don
-- ----------------------------

-- ----------------------------
-- Table structure for ke_hoach_cong_tac
-- ----------------------------
DROP TABLE IF EXISTS `ke_hoach_cong_tac`;
CREATE TABLE `ke_hoach_cong_tac` (
  `ma_ke_hoach` bigint(20) NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` bigint(20) DEFAULT NULL,
  `mo_ta_cong_tac` varchar(500) DEFAULT NULL,
  `chi_phi_de_xuat` bigint(20) DEFAULT NULL,
  `ma_nguoi_duyet_ke_hoach` bigint(20) DEFAULT NULL,
  `ma_tam_ung` bigint(20) DEFAULT NULL,
  `trang_thai_ke_hoach` bit(1) DEFAULT NULL,
  `ma_dia_diem_cong_tac` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_ke_hoach`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ke_hoach_cong_tac
-- ----------------------------

-- ----------------------------
-- Table structure for loai_dia_diem_cong_tac
-- ----------------------------
DROP TABLE IF EXISTS `loai_dia_diem_cong_tac`;
CREATE TABLE `loai_dia_diem_cong_tac` (
  `ma_loai_dia_diem_cong_tac` bigint(20) NOT NULL AUTO_INCREMENT,
  `mo_ta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_loai_dia_diem_cong_tac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loai_dia_diem_cong_tac
-- ----------------------------

-- ----------------------------
-- Table structure for nguoi_dung
-- ----------------------------
DROP TABLE IF EXISTS `nguoi_dung`;
CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` bigint(20) NOT NULL AUTO_INCREMENT,
  `ho_va_ten` varchar(60) DEFAULT NULL,
  `gioi_tinh` bit(1) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `dia_chi` varchar(60) DEFAULT NULL,
  `thoi_gian_bat_dau` datetime DEFAULT NULL,
  `ten_dang_nhap` varchar(20) NOT NULL,
  `mat_khau` varchar(60) DEFAULT NULL,
  `trang_thai_tai_khoan` bit(1) DEFAULT NULL,
  `ma_phong_ban` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nguoi_dung
-- ----------------------------

-- ----------------------------
-- Table structure for nguoi_dung_vai_tro
-- ----------------------------
DROP TABLE IF EXISTS `nguoi_dung_vai_tro`;
CREATE TABLE `nguoi_dung_vai_tro` (
  `ma_nguoi_dung_vai_tro` bigint(20) NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL,
  `ma_vai_tro` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung_vai_tro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nguoi_dung_vai_tro
-- ----------------------------

-- ----------------------------
-- Table structure for phi_cong_tac
-- ----------------------------
DROP TABLE IF EXISTS `phi_cong_tac`;
CREATE TABLE `phi_cong_tac` (
  `ma_phi_cong_tac` bigint(20) NOT NULL AUTO_INCREMENT,
  `ma_ke_hoach` bigint(20) DEFAULT NULL,
  `tong_chi_phi` bigint(20) DEFAULT NULL,
  `ma_nguoi_chi` bigint(20) DEFAULT NULL,
  `ma_hoa_don` bigint(20) DEFAULT NULL,
  `trang_thai_phi_cong_tac` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ma_phi_cong_tac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phi_cong_tac
-- ----------------------------

-- ----------------------------
-- Table structure for tam_ung
-- ----------------------------
DROP TABLE IF EXISTS `tam_ung`;
CREATE TABLE `tam_ung` (
  `ma_tam_ung` bigint(20) NOT NULL AUTO_INCREMENT,
  `so_tien_tam_ung` bigint(20) DEFAULT NULL,
  `ma_giay_bien_nhan` bigint(20) DEFAULT NULL,
  `trang_thai_tam_ung` bit(1) DEFAULT NULL,
  `ma_nguoi_tam_ung` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ma_tam_ung`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tam_ung
-- ----------------------------

-- ----------------------------
-- Table structure for vai_tro
-- ----------------------------
DROP TABLE IF EXISTS `vai_tro`;
CREATE TABLE `vai_tro` (
  `ma_vai_tro` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(60) DEFAULT NULL,
  `mo_ta` varchar(200) DEFAULT NULL,
  `he_so_phi_cong_tac_theo_vai_tro` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma_vai_tro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vai_tro
-- ----------------------------
