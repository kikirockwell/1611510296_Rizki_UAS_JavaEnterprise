# Host: localhost  (Version 5.5.5-10.1.16-MariaDB)
# Date: 2019-06-15 23:08:43
# Generator: MySQL-Front 5.4  (Build 3.46)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_buku` varchar(30) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kd_buku` (`kd_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "books"
#

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `kd_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsqno9igk28s6md4d1rdmvmr31` (`kd_kategori`),
  CONSTRAINT `FKsqno9igk28s6md4d1rdmvmr31` FOREIGN KEY (`kd_kategori`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "hibernate_sequence"
#

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
