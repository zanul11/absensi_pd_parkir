-- --------------------------------------------------------
-- Host:                         220.247.174.125
-- Server version:               5.7.33-0ubuntu0.18.04.1-log - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table absensi.absen_pegawai
CREATE TABLE IF NOT EXISTS `absen_pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_absen` datetime DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `tgl_pulang` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.absen_pegawai: ~14 rows (approximately)
/*!40000 ALTER TABLE `absen_pegawai` DISABLE KEYS */;
INSERT INTO `absen_pegawai` (`id`, `tgl_absen`, `nip`, `location`, `tgl_pulang`) VALUES
	(1, '2019-03-22 07:56:20', '30048', '-8.6737634,115.239915', NULL),
	(2, '2019-03-22 08:05:54', '30099', '-8.6737208,115.239922', NULL),
	(3, '2019-03-22 08:13:47', '30107', '-8.6737689,115.23989', NULL),
	(4, '2019-03-22 08:39:08', '30121', '-8.6737861,115.2398889', NULL),
	(5, '2019-03-22 08:55:15', '30121', '-8.6737776,115.2398938', NULL),
	(6, '2019-03-22 09:18:14', '30015', '-8.6737485,115.2399012', NULL),
	(7, '2019-03-22 09:20:43', '30048', '-8.6737685,115.2399303', NULL),
	(8, '2019-03-22 10:27:18', '30115', '-8.6737873,115.2398781', NULL),
	(9, '2019-03-22 10:47:22', '30057', '-8.6737054,115.2399981', NULL),
	(10, '2019-03-25 16:50:01', '3322444', '-8.6116728,116.1116247', '2019-03-25 17:46:37'),
	(11, '2019-03-25 16:58:09', '3322444', '-8.6116728,116.1116247', '2019-03-25 17:46:37'),
	(12, '2019-03-25 17:29:17', '2000000', '-8.6116768,116.1116273', NULL),
	(13, '2019-03-25 17:46:13', '3322444', '-8.6116728,116.1116247', '2019-03-25 17:46:37'),
	(14, '2019-03-25 17:56:11', '2000000', '-8.6116728,116.1116247', NULL),
	(15, '2021-03-16 07:23:32', '3322444', '-8.5814941,116.0910878', '2021-03-16 07:26:23');
/*!40000 ALTER TABLE `absen_pegawai` ENABLE KEYS */;

-- Dumping structure for table absensi.akses
CREATE TABLE IF NOT EXISTS `akses` (
  `username` varchar(10) NOT NULL,
  `kd_menu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.akses: ~30 rows (approximately)
/*!40000 ALTER TABLE `akses` DISABLE KEYS */;
INSERT INTO `akses` (`username`, `kd_menu`) VALUES
	('gudanta', 'mn1'),
	('gudanta', 'mn11'),
	('gudanta', 'mn12'),
	('gudanta', 'mn13'),
	('gudanta', 'mn2'),
	('gudanta', 'mn21'),
	('gudanta', 'mn22'),
	('gudanta', 'mn23'),
	('gudanta', 'mn24'),
	('gudanta', 'mn3'),
	('gudanta', 'mn31'),
	('gudanta', 'mn19'),
	('gudanta', 'mn14'),
	('gudanta', 'mn25'),
	('gudanta', 'mn26'),
	('ngurah', 'mn1'),
	('ngurah', 'mn11'),
	('ngurah', 'mn12'),
	('ngurah', 'mn13'),
	('ngurah', 'mn14'),
	('ngurah', 'mn19'),
	('ngurah', 'mn2'),
	('ngurah', 'mn21'),
	('ngurah', 'mn22'),
	('ngurah', 'mn23'),
	('ngurah', 'mn24'),
	('ngurah', 'mn25'),
	('ngurah', 'mn26'),
	('ngurah', 'mn3'),
	('ngurah', 'mn31'),
	('gudanta', 'mn1'),
	('gudanta', 'mn11'),
	('gudanta', 'mn12'),
	('gudanta', 'mn13'),
	('gudanta', 'mn14'),
	('gudanta', 'mn19'),
	('gudanta', 'mn2'),
	('gudanta', 'mn22'),
	('gudanta', 'mn23'),
	('gudanta', 'mn24'),
	('gudanta', 'mn25'),
	('gudanta', 'mn26'),
	('gudanta', 'mn3'),
	('gudanta', 'mn31'),
	('zanul', 'mn1'),
	('zanul', 'mn11'),
	('zanul', 'mn12'),
	('zanul', 'mn13'),
	('zanul', 'mn14'),
	('zanul', 'mn19'),
	('zanul', 'mn2'),
	('zanul', 'mn22'),
	('zanul', 'mn23'),
	('zanul', 'mn24'),
	('zanul', 'mn25'),
	('zanul', 'mn26'),
	('zanul', 'mn3'),
	('zanul', 'mn31');
/*!40000 ALTER TABLE `akses` ENABLE KEYS */;

-- Dumping structure for table absensi.api
CREATE TABLE IF NOT EXISTS `api` (
  `hit` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.api: ~1 rows (approximately)
/*!40000 ALTER TABLE `api` DISABLE KEYS */;
INSERT INTO `api` (`hit`) VALUES
	(8);
/*!40000 ALTER TABLE `api` ENABLE KEYS */;

-- Dumping structure for table absensi.data_absen
CREATE TABLE IF NOT EXISTS `data_absen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `ket_absen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.data_absen: ~73 rows (approximately)
/*!40000 ALTER TABLE `data_absen` DISABLE KEYS */;
INSERT INTO `data_absen` (`id`, `tgl`, `nip`, `ket_absen`) VALUES
	(1, '2019-03-22', '3322444', 'Izin'),
	(2, '2019-03-22', '5454', 'Izin'),
	(4, '2019-03-22', '30048', 'Telat'),
	(5, '2019-03-22', '30099', 'Telat'),
	(6, '2019-03-22', '30107', 'Telat'),
	(7, '2019-03-22', '30121', 'Telat'),
	(8, '2019-03-22', '30121', 'Telat'),
	(9, '2019-03-22', '30015', 'Telat'),
	(10, '2019-03-22', '30048', 'Telat'),
	(11, '2019-03-22', '30115', 'Telat'),
	(12, '2019-03-22', '30057', 'Telat'),
	(19, '2019-03-22', '30145', 'Alpha'),
	(20, '2019-03-22', '30081', 'Alpha'),
	(21, '2019-03-22', '2000000', 'Alpha'),
	(22, '2019-03-22', '30156', 'Alpha'),
	(23, '2019-03-22', '300168', 'Alpha'),
	(24, '2019-03-22', '30169', 'Alpha'),
	(25, '2019-03-22', '30180', 'Alpha'),
	(26, '2019-03-22', '30059', 'Alpha'),
	(27, '2019-03-22', '30130', 'Alpha'),
	(28, '2019-03-22', '30142', 'Alpha'),
	(29, '2019-03-22', '30102', 'Alpha'),
	(30, '2019-03-22', '30088', 'Alpha'),
	(31, '2019-03-22', '30088', 'Alpha'),
	(32, '2019-03-22', '30169', 'Alpha'),
	(33, '2019-03-22', '30169', 'Alpha'),
	(34, '2019-03-23', '5454', 'Izin'),
	(35, '2019-03-23', '30099', 'Alpha'),
	(36, '2019-03-23', '30145', 'Alpha'),
	(37, '2019-03-23', '30048', 'Alpha'),
	(38, '2019-03-23', '30081', 'Alpha'),
	(39, '2019-03-23', '3322444', 'Alpha'),
	(40, '2019-03-23', '2000000', 'Alpha'),
	(41, '2019-03-23', '30107', 'Alpha'),
	(42, '2019-03-23', '30156', 'Alpha'),
	(43, '2019-03-23', '30121', 'Alpha'),
	(44, '2019-03-23', '300168', 'Alpha'),
	(45, '2019-03-23', '30169', 'Alpha'),
	(46, '2019-03-23', '30180', 'Alpha'),
	(47, '2019-03-23', '30015', 'Alpha'),
	(48, '2019-03-23', '30059', 'Alpha'),
	(49, '2019-03-23', '30130', 'Alpha'),
	(50, '2019-03-23', '30142', 'Alpha'),
	(51, '2019-03-23', '30102', 'Alpha'),
	(52, '2019-03-23', '30115', 'Alpha'),
	(53, '2019-03-23', '30088', 'Alpha'),
	(54, '2019-03-23', '30088', 'Alpha'),
	(55, '2019-03-23', '30169', 'Alpha'),
	(56, '2019-03-23', '30169', 'Alpha'),
	(57, '2019-03-23', '30057', 'Alpha'),
	(66, '2019-03-24', '5454', 'Izin'),
	(67, '2019-03-24', '30099', 'Alpha'),
	(68, '2019-03-24', '30145', 'Alpha'),
	(69, '2019-03-24', '30048', 'Alpha'),
	(70, '2019-03-24', '30081', 'Alpha'),
	(72, '2019-03-24', '2000000', 'Alpha'),
	(73, '2019-03-24', '30107', 'Alpha'),
	(74, '2019-03-24', '30156', 'Alpha'),
	(75, '2019-03-24', '30121', 'Alpha'),
	(76, '2019-03-24', '300168', 'Alpha'),
	(77, '2019-03-24', '30169', 'Alpha'),
	(78, '2019-03-24', '30180', 'Alpha'),
	(79, '2019-03-24', '30015', 'Alpha'),
	(80, '2019-03-24', '30059', 'Alpha'),
	(81, '2019-03-24', '30130', 'Alpha'),
	(82, '2019-03-24', '30142', 'Alpha'),
	(83, '2019-03-24', '30102', 'Alpha'),
	(84, '2019-03-24', '30115', 'Alpha'),
	(85, '2019-03-24', '30088', 'Alpha'),
	(86, '2019-03-24', '30088', 'Alpha'),
	(87, '2019-03-24', '30169', 'Alpha'),
	(88, '2019-03-24', '30169', 'Alpha'),
	(89, '2019-03-24', '30057', 'Alpha');
/*!40000 ALTER TABLE `data_absen` ENABLE KEYS */;

-- Dumping structure for table absensi.data_wajah
CREATE TABLE IF NOT EXISTS `data_wajah` (
  `nip` varchar(15) DEFAULT NULL,
  `face_id` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.data_wajah: ~5 rows (approximately)
/*!40000 ALTER TABLE `data_wajah` DISABLE KEYS */;
INSERT INTO `data_wajah` (`nip`, `face_id`) VALUES
	('200003162', '9c531966-c108-4962-929c-dbda0c2a4d19'),
	('201003260', 'ef05503c-3f94-42d6-b6c2-37064b3fc097'),
	('200001167', 'df595ee6-174f-4316-a770-df5bb9f0303f'),
	('3322444', 'e92bab79-d645-4891-a738-d90018bd31ec'),
	('2000000', '841b522e-7eb1-4eac-8035-25aa6a203288'),
	('3322444', 'PDPARKIR_3322444.jpg'),
	('3322444', 'PDPARKIR_3322444.jpg');
/*!40000 ALTER TABLE `data_wajah` ENABLE KEYS */;

-- Dumping structure for table absensi.golongan
CREATE TABLE IF NOT EXISTS `golongan` (
  `gol` varchar(3) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `id_gol` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_gol`,`gol`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.golongan: ~16 rows (approximately)
/*!40000 ALTER TABLE `golongan` DISABLE KEYS */;
INSERT INTO `golongan` (`gol`, `keterangan`, `id_gol`) VALUES
	('A1', 'Pegawai Dasar Muda', 5),
	('A3', 'Pegawai Dasar', 6),
	('B4', 'Pelaksana I', 7),
	('C2', 'Staf Muda I', 9),
	('C3', 'Staf', 10),
	('C4', 'Staf I', 11),
	('D1', 'Staf Madya', 12),
	('B2', 'Pelaksana Muda I', 13),
	('D2', 'Staf Madya I', 14),
	('A2', 'Pegawai Dasar Muda I', 15),
	('C1', 'Staf Muda', 17),
	('B1', 'Pelaksana Muda', 18),
	('A4', 'Pegawai Dasar I', 19),
	('B3', 'Pelaksana', 20),
	('D3', 'Staf Umum Madya', 21),
	('D4', 'Staf Utama', 22);
/*!40000 ALTER TABLE `golongan` ENABLE KEYS */;

-- Dumping structure for table absensi.inbox
CREATE TABLE IF NOT EXISTS `inbox` (
  `id_inbox` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_inbox` timestamp NULL DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `pesan` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id_inbox`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.inbox: ~39 rows (approximately)
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` (`id_inbox`, `tgl_inbox`, `nip`, `pesan`, `status`) VALUES
	(1, '2019-03-19 19:08:31', '3322444', 'kamu diangkat jadi manajer', 1),
	(2, '2019-03-19 20:07:22', '3322444', 'baru', 1),
	(29, '2019-03-21 11:29:13', '3322444', 'posisi               ', 1),
	(30, '2019-03-21 17:22:13', '3322444', 'test nu l', 1),
	(31, '2019-03-21 17:30:58', '3322444', 'test            ', 1),
	(32, '2019-03-21 18:29:33', '3322444', 'ooee      ', 1),
	(33, '2019-03-21 18:31:17', '3322444', 'kora       ', 1),
	(34, '2019-03-21 18:31:17', '5454', 'kora       ', 1),
	(35, '2019-03-21 18:34:13', '3322444', 'kaerafas               ', 1),
	(36, '2019-03-21 18:37:31', '3322444', 'tete', 1),
	(37, '2019-03-21 18:38:34', '3322444', 'kora ', 1),
	(38, '2019-03-21 18:38:34', '2000000', 'kora ', 1),
	(39, '2019-03-21 18:38:34', '5454', 'kora ', 1),
	(40, '2019-03-21 18:55:40', '3322444', 'noob               ', 1),
	(41, '2019-03-21 18:57:09', '3322444', 'cupu                ', 1),
	(42, '2019-03-21 19:01:12', '3322444', ' test             ', 1),
	(43, '2019-03-21 19:02:28', '3322444', 'ere', 1),
	(44, '2019-03-21 19:23:13', '3322444', 'rere', 1),
	(45, '2019-03-21 19:23:29', '3322444', 'omae', 1),
	(46, '2019-03-21 19:23:30', '5454', 'omae', 1),
	(47, '2019-03-21 19:25:32', '2000000', 'noob', 1),
	(48, '2019-03-21 19:25:45', '30145', 'kora', 1),
	(49, '2019-03-21 19:25:45', '30048', 'kora', 1),
	(50, '2019-03-21 19:25:45', '30081', 'kora', 0),
	(51, '2019-03-21 19:25:45', '3322444', 'kora', 1),
	(52, '2019-03-21 19:25:45', '2000000', 'kora', 1),
	(53, '2019-03-21 19:25:45', '5454', 'kora', 1),
	(54, '2019-03-21 20:49:25', '3322444', 'coba       ', 1),
	(55, '2019-03-21 20:49:26', '5454', 'coba       ', 1),
	(56, '2019-03-21 20:56:30', '30048', ' ini tes inbox pak... :D                           ', 1),
	(57, '2019-03-21 20:56:49', '2000000', 'kepo', 1),
	(58, '2019-03-21 20:57:16', '3322444', '  tetae                           ', 1),
	(59, '2019-03-21 22:46:18', '3322444', 'salam hangat fari lombok                                ', 1),
	(60, '2019-03-21 22:47:16', '5454', 'hmmm', 1),
	(61, '2019-03-22 08:31:43', '5454', 'Tes', 1),
	(62, '2019-03-22 08:56:13', '5454', 'kira', 1),
	(63, '2019-03-22 09:07:55', '5454', 'kora', 1),
	(64, '2019-03-22 09:13:20', '5454', 'tes bro', 1),
	(65, '2019-03-25 10:10:25', '30145', '                                Test', 1);
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;

-- Dumping structure for table absensi.izin_pegawai
CREATE TABLE IF NOT EXISTS `izin_pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_mohon` datetime DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `ket_absen` varchar(10) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0 = PENGAJUAN | 1 = ACC | 2 = DITOLAK',
  `file` varchar(255) DEFAULT NULL,
  `status_notif` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.izin_pegawai: ~2 rows (approximately)
/*!40000 ALTER TABLE `izin_pegawai` DISABLE KEYS */;
INSERT INTO `izin_pegawai` (`id`, `tgl_mohon`, `nip`, `ket_absen`, `keterangan`, `tgl_mulai`, `tgl_selesai`, `status`, `file`, `status_notif`) VALUES
	(1, '2019-03-21 18:32:18', '3322444', 'Izin', 'Sakit', '2019-03-21', '2019-03-22', 1, '20190321_183216.jpg', 0),
	(2, '2019-03-22 09:17:28', '5454', 'Izin', 'sakit', '2019-03-22', '2019-03-31', 1, '20190322_091723.jpg', 0),
	(3, '2021-03-16 07:10:56', '3322444', 'Sakit', 'jj', '2021-03-01', '2021-03-31', 0, '20210316_151053.jpg', 0);
/*!40000 ALTER TABLE `izin_pegawai` ENABLE KEYS */;

-- Dumping structure for table absensi.jenis_absen
CREATE TABLE IF NOT EXISTS `jenis_absen` (
  `ket_absen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.jenis_absen: ~3 rows (approximately)
/*!40000 ALTER TABLE `jenis_absen` DISABLE KEYS */;
INSERT INTO `jenis_absen` (`ket_absen`) VALUES
	('Izin'),
	('Sakit'),
	('Cuti');
/*!40000 ALTER TABLE `jenis_absen` ENABLE KEYS */;

-- Dumping structure for table absensi.konfigurasi
CREATE TABLE IF NOT EXISTS `konfigurasi` (
  `jam_masuk` time DEFAULT NULL,
  `jam_toleransi` time DEFAULT NULL,
  `min_to_update` int(3) DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.konfigurasi: ~1 rows (approximately)
/*!40000 ALTER TABLE `konfigurasi` DISABLE KEYS */;
INSERT INTO `konfigurasi` (`jam_masuk`, `jam_toleransi`, `min_to_update`, `jam_pulang`) VALUES
	('07:20:00', '07:45:00', 30, '15:20:00');
/*!40000 ALTER TABLE `konfigurasi` ENABLE KEYS */;

-- Dumping structure for table absensi.log_location
CREATE TABLE IF NOT EXISTS `log_location` (
  `nip` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.log_location: ~28 rows (approximately)
/*!40000 ALTER TABLE `log_location` DISABLE KEYS */;
INSERT INTO `log_location` (`nip`, `location`, `tgl`) VALUES
	('2000000', '-8.6112783,116.1138261', '2019-03-25 18:01:42'),
	('2000000', '-8.611673, 116.111603', '2019-03-25 18:00:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:19:37'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:20:21'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:21:03'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:21:11'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:22:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:24:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:26:11'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:27:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:29:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:31:12'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:32:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:34:32'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:36:11'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:37:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:39:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:41:11'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:42:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:44:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:46:11'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:47:51'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:49:31'),
	('3322444', '-8.6116683,116.1116368', '2019-03-25 18:51:11'),
	('3322444', '-8.6116683,116.1116368', '2019-03-25 18:52:51'),
	('3322444', '-8.6116683,116.1116368', '2019-03-25 18:54:31'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:55:24'),
	('3322444', '-8.6116728,116.1116247', '2019-03-25 18:56:11');
/*!40000 ALTER TABLE `log_location` ENABLE KEYS */;

-- Dumping structure for table absensi.lokasi
CREATE TABLE IF NOT EXISTS `lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) DEFAULT NULL,
  `koordinat` text,
  PRIMARY KEY (`id_lokasi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.lokasi: ~5 rows (approximately)
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` (`id_lokasi`, `keterangan`, `koordinat`) VALUES
	(8, 'kantor pd parkir', '[[-8.673484,115.239785],[-8.6735,115.240096],[-8.673865,115.240086],[-8.673844,115.239791],[-8.673484,115.239785]]'),
	(9, 'rumah bang jamil', '[[-8.613247,116.110908],[-8.613183,116.113778],[-8.611342,116.113676],[-8.610242,116.113021],[-8.610634,116.110114],[-8.613247,116.110908]]'),
	(10, 'balai wali kota', '[[-8.586837,116.11043],[-8.587713,116.110189],[-8.587564,116.11145],[-8.58688,116.111337],[-8.586837,116.11043]]'),
	(11, 'Lapangan Lumintang', '[[-8.637291,115.212046],[-8.636771,115.213537],[-8.63885,115.213537],[-8.638808,115.212046],[-8.637291,115.212046]]'),
	(12, 'Lokasi Tes UjiCoba', '[[-8.548611,116.076736],[-8.571697,116.290283],[-8.654523,116.312256],[-8.704753,116.1763],[-8.691856,116.077423],[-8.624653,116.077423],[-8.548611,116.076736]]'),
	(13, 'Lombok', '[[-8.283522,116.106262],[-8.335159,116.72699],[-8.796868,116.559448],[-8.899996,116.30127],[-8.83758,115.949707],[-8.283522,116.106262]]');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;

-- Dumping structure for table absensi.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `kd_menu` varchar(10) NOT NULL,
  `nm_menu` varchar(52) NOT NULL,
  `status` int(1) NOT NULL,
  `kd_parent` varchar(5) NOT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_menu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.menu: ~15 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`kd_menu`, `nm_menu`, `status`, `kd_parent`, `controller`, `icon`) VALUES
	('mn1', 'Setting', 1, '-', 'Setup', 'i-Gear'),
	('mn11', 'Konfigurasi', 0, 'mn1', 'Konfig', '-'),
	('mn12', 'Pegawai', 0, 'mn1', 'Pegawai', '-'),
	('mn13', 'Golongan', 0, 'mn1', 'Golongan', '-'),
	('mn14', 'Lokasi', 0, 'mn1', 'Lokasi', '-'),
	('mn19', 'Hak Akses', 0, 'mn1', 'HakAkses', '-'),
	('mn2', 'Aplikasi', 1, '-', 'Aplikasi', 'i-Dropbox'),
	('mn22', 'Pengumuman', 0, 'mn2', 'Pengumuman', '-'),
	('mn23', 'Data Absensi', 0, 'mn2', 'Absensi', '-'),
	('mn24', 'Pengajuan Izin', 0, 'mn2', 'Izin', '-'),
	('mn25', 'Pindah Absen', 0, 'mn2', 'Pindahabsen', '-'),
	('mn26', 'Kirim Pesan', 0, 'mn2', 'Kirimpesan', '-'),
	('mn3', 'Laporan', 1, '-', 'Laporan', 'i-Professor'),
	('mn31', 'Laporan Absensi', 0, 'mn3', 'Laporan/Absensi', '-');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table absensi.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(15) NOT NULL,
  `nm_pegawai` varchar(255) DEFAULT NULL,
  `gol` varchar(3) DEFAULT NULL,
  `user_app` varchar(10) DEFAULT NULL,
  `pass_app` varchar(10) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `last_location` varchar(255) DEFAULT NULL,
  `token` text,
  `id_lokasi` int(11) DEFAULT NULL,
  `id_shift` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`,`nip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.pegawai: ~88 rows (approximately)
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nm_pegawai`, `gol`, `user_app`, `pass_app`, `imei`, `last_location`, `token`, `id_lokasi`, `id_shift`) VALUES
	(1, '30099', 'AA Ngurah Agung Gudanta, SH', 'C4', 'gudanta', '131313', '868937036208977', NULL, 'e_3gNxS9aRs:APA91bGzQXw1ODjCr3b-CoyfEoFaejAZW4ZiX-gEBmJydeit0ApaWhuo9ub_CKILGNe3BrWfqMOUXXWeGdboYp0T7wIqRBhdfstMXRdJaLQ3zAEkJ30qoFsz7ulxjfj1-O8Bl1BPh5v4', 8, 0),
	(2, '30145', 'Putu Restu Jaya Atmaja, SE', 'C3', 'restu', '123456', '865592034627687', NULL, 'eKdFUOG5XLQ:APA91bFYd-pDWIMuFr0s0VKp8BUTI4pjm4dEHyxNlytGNl6MmWh34_Eh4rdGAYa3omXkdcJUs-vpM8c-ewo2gvzTyIXEo8RBjvNTB_1Vo4tW00mIkzhKZzllsFX5cxmKtR6KfPSg08LU', 8, 0),
	(3, '30048', 'I Gede Ngurah Ardana, SE', 'C4', 'ngurah', 'setan212', '865262044366318', NULL, 'fvJmfrpqAmI:APA91bFusvAp3LX4YMo3rFLloPxiXx6juGbZDnm1X1Ecj6eFBjBp493ErS7wTDIDA3aIb4zu7SxAiomANpz6Ut46YW9G18B7AmBT-TKfhO_XHUQsSGVEW7HOyk4LgqIp8M4gfprCivIl', 8, 0),
	(4, '30081', 'I Dewa Gede Putra Luhur Wiradnyana, SE', 'C4', 'putraluhur', '211221', '863195036954141', NULL, NULL, 8, 0),
	(5, '3322444', 'Zanul H', 'C4', 'zanul', '123', '862384047856344', '-8.6116728,116.1116247', 'f-Jg2twlFPs:APA91bHfxtjJf9kFp4T8TXziZrgjMIRF0H0nc7S2cKKR3iJRWEM0MK8zaI3f7bdJeI5uY-hXt0hJF8ejtoFmD1Inl9lbLSVi4jBoPFeG7R4-TGJFJ7be4uMR4-BIm6Iql9qMTfBa0uXr', 13, 1),
	(7, '2000000', 'Ahmad Mujamil', 'C4', 'jamil', '123', '863195037582180', '-8.611933, 116.111248', 'fVE4D4Ak8xs:APA91bGBmpE9DunW4euEKr9MOTsgKuhvykkxlWMUZjtPGkVosaMcdAdcS2Nm9zaHOGOFV9FPmKBV0vAoakzjS-mziI4KlxAr7EH-RltBNtXAugCi63VwbnClG4702-1TMJlXQZlA5K3c', 9, 0),
	(12, '5454', 'Islamul Hadi', 'C2', 'sasa', '5454', '864448038287385', NULL, 'f50B8MCk2bU:APA91bGOrY9CkzGDh_NkJsIOmWnywqY9mZQCEIz2JafS8ingdjmK96iyHcpJPnrPIEwIISp1ZDR0Y_ZbyB6nNWuPCk1l4D0Nt4gvsM0pl9riCnh15AJGgXnHT7JQANrd60LyvekQ5Vhy', 9, 0),
	(13, '30107', 'I Made Putu Suarmika', 'B4', 'Ondo', 'ondo1975', '354462080667474', NULL, 'ck1_lj41BAA:APA91bHrQwCq3kYQdnubKtZ0iyrYZP8eyNmFq0X7zrrUbsVvQgwDn6hgOrWmFYKNfvXCF3JA-L7vPkdu8P5pWUYCcUtxFl8Hrl3N4PrDtkPGYDaVkv_rIJOaTnndErDIoBToM0Logxoc', 8, 0),
	(14, '30156', 'I Made Suarti', 'B2', 'suarti', '15021982', '358310075319021', NULL, NULL, 8, 0),
	(15, '30121', 'Gede Yana Saputra, SH', 'C3', 'gedeyana', 'yana86', '867325035202566', NULL, 'ereD6XKbCJ0:APA91bEtNVeMQckR8xsIKTqgAg6dxy3EI3uk4_B-8WAIenfMlm6AP_27TvztmrTv2jwoWRRTysnKq_BSch_Yn5cq12b7bknFVw3MLAsnXfF_KEzuKg1Mv1IYIcpCkyStYbzXBvUkxZWs', 8, 0),
	(16, '30168', 'I Wayan Murtina', 'B2', 'murtina', '28081988', '865261035420290', NULL, NULL, 8, 0),
	(17, '30169', 'I Nyoman Merta ', 'B1', 'merta', '1982', '354921078757472', NULL, 'c1o4dR4OGKs:APA91bGn_jqoLfGaw6S1CX16BYFBLWnKTh9-uZ7JcmTNlUVzb7YjOTwxwLMrFpGEXn_rMMgn_RD9oDq0TCEpfUAJjXgIR9zVzkLNv0YY7Dl98HlGDvlPBHGwigg9ETa3q5hz9EMWZaxh', 8, 0),
	(19, '30180', 'Ni Luh Ayu Budiastuti', 'B1', 'budi', '209281', '867469041816710', NULL, NULL, 8, 0),
	(20, '30015', 'I Nyoman Gede Sidakarya,SH', 'C4', 'mande', 'mande70', '868619036245502', NULL, 'ePo7uMRajfo:APA91bEa7RKeY-fTvWAf1sLzZA3KopHstRpUsYYidtfBppFQmPK3Wk4sdyflbwBOJdrwtbGcBBhmW6Iv66p3SJLmIhnHl4zF-w0OMiso9nreChjnxHUxoJox8W6ZRiupY8Ti6Yx049_v', 8, 0),
	(21, '30059', 'Made Martini, SE', 'C4', 'tinie', 'nymaulana', '861933044729796', NULL, 'e3VGbyJ-lUI:APA91bHM9RzqJeX4vo0n8bGO32HtcRyYup1aPBSPau_l75X_JiwaPAId5jwaFJm_qPulhvA0RU0f7axsgUoEsCIEbVCNYIG2rSMDFp4NwptI807BWOKUJE1I3Xhe42WB2QXHhfiRw3n2', 8, 0),
	(22, '30130', 'Putu Dita Yuliawati, SP', 'C3', 'dita', '575858', '355046090119706', NULL, 'e7lpn8V5Ba8:APA91bHfOIOCjVVPgF6vYONrMZIYdrxNsqnE9y5ua2CTKlGuiDCVyY9375-DN0awQfnQubbPX1mkK6tZdrhB6oUIGysZs4xeEOoZpRWf2bZVasPvE7DO51olqBhGWuAxtggJZsmlA8Z-', 8, 0),
	(23, '30142', 'Ni Luh Gede Fitriani, SE', 'C2', 'odhe', '180585', '865525032204737', NULL, 'cLk9ZjoJZKI:APA91bFKkuD9LaEzeCq2HJCVCzH-BanyIib7E5DWJI3la00aDLVG42WA7b_pHXje2gdJhJGbwCDuZw8GIFU1ysRF9_O8av85T4ey3bgP4QPsd3qsxBUz0TIggcvqzMum4X3tYs7WF-gq', 8, 0),
	(24, '30102', 'Putu Epik Iskayani SE', 'C4', 'epik', '090574', '864877034976916', NULL, NULL, 8, 0),
	(25, '30115', 'Ni Made Denni Erawati, SH', 'C4', 'denni', '264175', '868939039897863', NULL, 'dDFM8eofXxk:APA91bFiCz4SIHUMHp4SQGlXyNRklsUe3Wa-is9_G7Anusyle-G1Bek8D_Df-uYAtuo97OozWkJoULxd5GKzDOPRwFZ947WF7cn_djhgAWTiy_Wo007YjUnxlzyKgV_10wXgL5SRYWfu', 8, 0),
	(26, '30088', 'I Wayan Alit Wahyudi', 'B4', 'alit', '70465wyd', '354948082304512', NULL, 'eqnoQSZQg7s:APA91bFjTDBQocBcWtSY7hBmr-AEMVLcMzFkc2Nre_PyspIAQfA18dBuRPAhvnmai413Fvmp09ZAJSV5dhU7kgX5WpRPAc8wbjEk6jdInTHOWOthqdch1o9SvS3yyG56kksu7jkFQykS', 8, 0),
	(30, '30057', 'Ni Nyoman Putri Mariati, SE', 'C4', 'Mariati', 'damar11', '868503030666691', NULL, 'fDvsYu896gs:APA91bEtvIesXg-VXFyPqRxBWpqo8adZfiwVPzxcUwSe4Kas-duvkTPxe6rKyGUNjRDNnZy2lk0-bDiAL-RMHenH7WNv9GyF1MwGcwErWpM3euEBLlV4azcXBqWJ-CbaQrBDHBvkPSnD', 8, 0),
	(31, '30135', 'I Gusti Lanang Agung Sumarjaya,SS', 'C3', 'lanankjr', 'lanank19', '353516072025107', NULL, 'eFHc9XRPuEw:APA91bGpIp0xjG8ftkH0yeZZwNQiezQjXFXtCIJaWtiS9DxHvKmeCykKJl_rZlg7HKOP8_htqFLygzw_HfUfc8Pxi7dEaFzEsY87jqGAeROdicfz3lPNp8rR15y5vBkiGYPdK6U0JfY1', 8, 0),
	(32, '30051', 'Ni Made Putri Eriyani,SE', 'C4', 'eriyani', 'aaa111', '863195036975286', NULL, 'fdUmnqmITOo:APA91bEtW5hLLTb7TmCoJaIL12mLHvAU8Sx594iqQaEQCnX3lcejQyL2t1vi1JP6M2thJxufaThv0kdALIJwNbI8xqlgr2cHaZjija4DlCFiHhUWsAKT0w131D9iDVdCYfRlEts9K6pE', 8, 0),
	(33, '1111', 'admin tes', 'C3', 'admin', '123', '000000000000000', NULL, NULL, NULL, NULL),
	(34, '30025', 'I Gusti Nyoman Putra Winata', 'B4', 'ngrwinata', '123456', '869600030955097', NULL, NULL, 8, 0),
	(35, '30126', 'Ida Bagus Satriadi Pidada', 'B3', 'satriadi', '111187', '865028039602482', NULL, NULL, 8, 0),
	(36, '30179', 'Made Gede Justam Widhyatma, SH', 'C1', 'justamw', '212121', '861216032403032', NULL, NULL, 8, 0),
	(37, '30178', 'A A Ngurah Tian Marlionsa, SH', 'C1', 'marlionsa', '123456', '863731031215227', NULL, NULL, 8, 0),
	(38, '30144', 'Sang Nyoman Putra Arsa Wijaya, S.Sn', 'C3', 'sangoman', '020880', '867532030968576', NULL, NULL, 8, 0),
	(39, '30083', 'I Gst Ngr Eka Budi Santosa, SE', 'C4', 'ngreka', '822323', '353516078019781', NULL, NULL, 8, 0),
	(40, '30041', 'I Made Ardana, SH', 'C4', 'madeardana', '236822', '868477022342621', NULL, NULL, 8, 0),
	(41, '30137', 'Sang Made Dwi Darma Putra, SH', 'C3', 'sangade', '123456', '354948080933692', NULL, NULL, 8, 0),
	(42, '30127', 'Ida Ayu suartini, SE', 'C3', 'iasyudec', 'pelataran', '355328083379517', NULL, NULL, 8, 0),
	(43, '30011', 'Gusti Agung Ayu Puspitasari, SE', 'C3', 'gekita25', 'pelataran', '863628042679179', NULL, NULL, 8, 0),
	(44, '30053', 'A A Ayu Eka M. Wandari Putri, SE.Ak', 'C4', 'agungputri', 'pelataran', '351817070325859', NULL, NULL, 8, 0),
	(45, '30140', 'Ni Komang Ariani', 'B3', 'mangarik19', 'pelataran', '356472097938584', NULL, NULL, 8, 0),
	(46, '30138', 'A A Sagung Ayu Saptarisni, SS', 'C3', 'saptarisni', 'pelataran', '863525038222016', NULL, NULL, 8, 0),
	(47, '30065', 'A A Ayu Dewi Puspitasari', 'B4', 'agungdewi', 'pelataran', '866615045234695', NULL, NULL, 8, 0),
	(48, '30040', 'Dra Ni Wayan Santi Rahayu', 'C4', 'santi', 'pelataran', '357941072365566', NULL, NULL, 8, 0),
	(49, '30008', 'Ni Nyoman Sri Astuti, A.Ks', 'C4', 'mangayu', 'pelataran', '863620047776548', NULL, NULL, 8, 0),
	(50, '30176', 'I Nengah Sukarya', 'A3', 'sukarya', 'josinaga', '868939038829883', NULL, NULL, 8, 0),
	(51, '30070', 'Ni Luh Nuriati', 'B4', 'nur', 'wulan', '862049032963690', NULL, NULL, 8, 0),
	(52, '30046', 'A A Putu Heriawan, SH', 'C4', 'gungheri', 'sejahtera', '867949026840462', NULL, NULL, 8, 0),
	(53, '30161', 'I Made Darma', 'B2', 'dedarma', 'darma', '358771062314194', NULL, NULL, 8, 0),
	(54, '30131', 'Dewa Ayu Made Sri Adnyani, SH', 'C3', 'dewaayu', 'anindya', '358061070402508', NULL, NULL, 8, 0),
	(55, '30128', 'Ni Ketut Sulastini, SE', 'C3', 'gektini', 'gektini', '356677086033664', NULL, NULL, 8, 0),
	(56, '30157', 'Ni Made Wati', 'B2', 'madewati', '281180', '359683069034262', NULL, NULL, 8, 0),
	(57, '30006', 'Kompiang Semiwati, SE', 'C3', 'opang', 'jegeg', '356472097904768', NULL, NULL, 8, 0),
	(58, '30010', 'Ni Luh Sugiantari, SE', 'C3', 'sugik', '0581', '867458036433417', NULL, NULL, 8, 0),
	(59, '30174', 'Ni Putu Pristawati, SE', 'C1', 'prista', 'kayla25', '35265080476862', NULL, NULL, 8, 0),
	(60, '30056', 'Ni Putu Mayuni, SE', 'C4', 'mayuni', '250581', '356872098738042', NULL, NULL, 8, 0),
	(61, '30122', 'Ni Luh Rina Sutjianiti, SE.Ak', 'C4', 'rina', 'rinadwi29', '013556000118873', NULL, NULL, 8, 0),
	(62, '30160', 'Ni Made Dwi Astarini', 'B2', 'dwigembul', '230512', '862651030724972', NULL, NULL, 8, 0),
	(63, '30028', 'I Gusti Mayun Anggreni', 'B4', 'mayun', 'dira24', '352723091418054', NULL, NULL, 8, 0),
	(64, '30082', 'Novi Maria Ulfa', 'C1', 'maria', 'almadina', '358796084996744', NULL, NULL, 8, 0),
	(65, '30114', 'Dewa Ayu Agung Susilawati, SH', 'C4', 'susilawati', 'aruna', '861084035789363', NULL, NULL, 8, 0),
	(66, '30177', 'Ni Kadek Emayanti, SE', 'C1', 'emma', 'arka1612', '865255038478412', NULL, NULL, 8, 0),
	(67, '30043', 'Made Ismawati, STP', 'C4', 'isma', 'isma09', '860369031138512', NULL, NULL, 8, 0),
	(68, '30100', 'Dewa Ayu Kadek Sri Astuti', 'B4', 'dodek', 'krisna', '352721091587993', NULL, NULL, 8, 0),
	(69, '30172', 'Putu Ayu Yulia Handari S', 'C1', 'hanna', 'hanna', '354462089371128', NULL, NULL, 8, 0),
	(70, '30095', 'Ni Komang Widiastuti, SE', 'C2', 'widiastuti', 'ebydipa', '869350032660358', NULL, NULL, 8, 0),
	(71, '30003', 'Drs Ida Bagus Agung Pidada', 'C4', 'pidada', 'pidada', '86872041551239', NULL, NULL, 8, 0),
	(72, '30125', 'I Gusti Ketut Partawijaya, ST', 'C3', 'parta', 'parta', '3577000658008801', NULL, NULL, 8, 0),
	(73, '30068', 'I Ketut Gede Sumaryana', 'B4', 'sumaryana', 'sumaryana', '352846074157397', NULL, NULL, 8, 0),
	(74, '30042', 'I Nyoman Arya Wiguna, SH', 'C4', 'arya', 'wiguna', '355210096289075', NULL, NULL, 8, 0),
	(75, '30050', 'Ni Ketut Wati Aryani, SE', 'C4', 'sekar', 'wati', '357000064221236', NULL, NULL, 8, 0),
	(76, '30134', 'I Made Sinarja, SE', 'C3', 'sinarja', '123456', '869711037730399', NULL, NULL, 8, 0),
	(77, '30101', 'I Made Winata', 'B4', 'winata', '123456', '862111032083026', NULL, NULL, 8, 0),
	(78, '30092', 'Ni Nyoman Anom Suhaemi', 'B4', 'anom', '123456', '862651030326919', NULL, NULL, 8, 0),
	(79, '30181', 'Ni Wayan Sugani', 'B1', 'anix', '7373', '355734078318529', NULL, NULL, 8, 0),
	(80, '30175', 'Ni Putu Budiasih', 'B1', 'budi', '197611', '866348037178270', NULL, NULL, 8, 0),
	(81, '30158', 'I Wayan Sona Wijaya', 'B2', 'sona', '1979', '869601030188135', NULL, NULL, 8, 0),
	(82, '30155', 'Ni Wayan Reni Riani, SE', 'C2', 'reni', 'riani77', '861754032484198', NULL, NULL, 8, 0),
	(83, '30152', 'Cokorda Gede Pramaitha, S.Sos', 'C3', 'cokde', '101073', '354462080335676', NULL, NULL, 8, 0),
	(84, '30108', 'I Gst Agung Ngr Swanjaya, SE', 'C4', 'swanjaya80', '110780', '866857048705368', NULL, NULL, 8, 0),
	(85, '30097', 'Ida Bagus Ari Ariyana, SE', 'C4', 'arikmetal7', 'gusari', '867768038548818', NULL, NULL, 8, 0),
	(86, '30110', 'I Made Anom Aryawan', 'B4', 'anom', '788', '865249039352650', NULL, NULL, 8, 0),
	(87, '30026', 'I Gusti Alit Raka Budantara', 'B4', 'cokraka', '2006', '869730032918411', NULL, NULL, 8, 0),
	(88, '30105', 'Yonathan Arianus Omalor', 'B4', 'akos', '2010', '869802033560821', NULL, NULL, 8, 0),
	(89, '30069', 'I Ketut Sudiantara', 'B4', 'garem', '248168', '355033100026154', NULL, NULL, 8, 0),
	(90, '30069', 'I Ketut Sudiantara', 'B4', 'garem', '248168', '355033100026154', NULL, NULL, 8, 0),
	(91, '30090', 'I Putu Gede Ariawan', 'B4', 'gula', '250170', '352846073531121', NULL, NULL, 8, 0),
	(92, '30021', 'Bagus Putu Dana', 'B3', 'gusna', '140365', '866400027213888', NULL, NULL, 8, 0),
	(93, '30103', 'I Nyoman Putra Wirawan, S.Pt', 'C4', 'brewok', '180772', '012649009685462', NULL, NULL, 8, 0),
	(94, '30149', 'I Wayan Agus Kardikayasa', 'B2', 'plontos88', '140688', '861742042169826', NULL, NULL, 8, 0),
	(95, '30052', 'Ni Nyoman Suseni, SH', 'C4', 'senny', '010203', '358546060316015', NULL, NULL, 8, 0),
	(96, '30064', 'Ni Putu Saciari', 'B4', 'saci', 'sc01', '866037034356860', NULL, NULL, 8, 0),
	(97, '155', 'Hendra', 'A1', 'ndra', '123456', '359667064441333', NULL, NULL, 12, 0);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;

-- Dumping structure for table absensi.pengumuman
CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman` text,
  `tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.pengumuman: ~0 rows (approximately)
/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
INSERT INTO `pengumuman` (`id`, `pengumuman`, `tgl`) VALUES
	(1, 'Untuk cara yang satu ini, Anda cukup membuka menu dial yang kemudian dilanjutkan dengan mengetik *#06#. Tidak butuh waktu lama, akan muncul nomor IMEI di layar ponsel', '2021-03-16 07:14:21');
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;

-- Dumping structure for event absensi.posting_data
DELIMITER //
CREATE EVENT `posting_data` ON SCHEDULE EVERY 1 DAY STARTS '2019-02-14 23:00:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
SET @jam = (SELECT jam_toleransi FROM konfigurasi);

DELETE FROM data_absen WHERE tgl = DATE(NOW());

INSERT INTO data_absen (tgl,nip,ket_absen) SELECT DISTINCT DATE(NOW()),nip,ket_absen FROM izin_pegawai 
WHERE DATE(NOW()) BETWEEN tgl_mulai AND tgl_selesai AND `status`=1;

INSERT INTO data_absen (tgl,nip,ket_absen) SELECT DATE(tgl_absen),nip,IF(TIME(tgl_absen)>@jam,'Telat','Tepat') ket_absen FROM absen_pegawai WHERE DATE(tgl_absen)=DATE(NOW());


INSERT INTO data_absen (tgl,nip,ket_absen) SELECT DATE(NOW()),nip,'Alpha' ket_absen FROM pegawai WHERE nip NOT IN (SELECT nip FROM absen_pegawai WHERE DATE(tgl_absen)=DATE(NOW()) UNION ALL 
SELECT nip FROM izin_pegawai WHERE DATE(NOW()) BETWEEN tgl_mulai AND tgl_selesai AND `status`=1);

END//
DELIMITER ;

-- Dumping structure for event absensi.reset_api
DELIMITER //
CREATE EVENT `reset_api` ON SCHEDULE EVERY 1 MINUTE STARTS '2019-02-28 06:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
UPDATE api set hit=0;
END//
DELIMITER ;

-- Dumping structure for table absensi.shift
CREATE TABLE IF NOT EXISTS `shift` (
  `id_shift` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  PRIMARY KEY (`id_shift`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.shift: ~2 rows (approximately)
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` (`id_shift`, `keterangan`, `jam_masuk`, `jam_keluar`) VALUES
	(1, 'malam', '16:00:00', '23:00:00'),
	(4, 'sefesfeasd', '23:57:00', '22:57:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;

-- Dumping structure for table absensi.timeline
CREATE TABLE IF NOT EXISTS `timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` datetime DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `ket_status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.timeline: ~82 rows (approximately)
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
INSERT INTO `timeline` (`id`, `tgl`, `nip`, `ket_status`, `location`) VALUES
	(38, '2019-02-03 10:45:19', '200001167', 'AAAAYrjMlr4:APA91bFM3SUUHJt4IBHViyoOVm-_yJPnaQ1LHXe7aNerf4pv-VkW2XdXlnbfKGOPKDKNudjGBiLiE5xHKAJawqj7MroKHn9haLs5S6y8-kzh1OzwwmR6LbBR3noBZfwSUFEIjhaalx_H', '-8.6116721,116.1116348'),
	(45, '2019-02-03 10:53:59', '200001167', 'dUmcxPMZ59Y:APA91bFBLewmocBr7Y1x7F0OfyFIKC2Iz61GCwiKOfIA1TK1HCPJHGOh27MsCaNG6DbQWm-ryRZy5ws9-1CUsw6pp1ShZYthJTMlW5X8mFvn5kTWhXHWavK_p5j0fGFKH-WlHK_s8o9o', '-8.6116721,116.1116348'),
	(47, '2019-02-03 13:10:01', '200001167', 'fFLfUPb_dyE:APA91bEyHeqDzEQKH4sx-7YBTNe3D6Nq35fUcIZn499wtxD2s2YsnESKkBoOBLrwIKjtpK66pUsxbpEHKumr-CC46fWBmerefBHbD7JrCMCz1EdOxOWvIuJffPjIhLLymL5a75GBj9kA', '-8.6116721,116.1116348'),
	(48, '2019-02-03 13:17:14', '200001167', 'fCXOTVAT6z8:APA91bGM5SVQuCHs1Fiyexq5eCfCF4a_NaAnb0O7kBrffaN9a__vNcKvqPtt6BlFs1URCk_-5OJoKJ-cdzz0tITSiPzl1uCz4-1C1aRMYN1saoZTvvfmzk29reAGD33vZkdBBMN8E36l', '-8.612017,116.1087992'),
	(49, '2019-02-03 13:23:47', '200001167', 'tes', '-8.6116721,116.1116348'),
	(50, '2019-02-03 15:21:24', '200001167', 'fXQ-L-goHDg:APA91bHKCyU3v8yoISBYN0PjUl_KVlhKStBqeF7ex0RXuD4TW_oIyzQN1iGzI3FBKd5uztvekpALZOlQs0uBn240tYSM-yAPv2XdQjqRlHgNEzCd0HexOcEgnnbUg4OBo0_mNtAoogTL', '-8.6116816,116.1116367'),
	(51, '2019-02-03 15:41:04', '201003260', 'hadi cupu', '-8.6116678,116.1116391'),
	(52, '2019-02-03 15:41:32', '200003162', 'posisi', 'tes'),
	(53, '2019-02-04 05:06:42', '200001167', 'yuk', '-8.5801224,116.0990809'),
	(54, '2019-02-04 07:21:35', '201003260', 'wtf', '-8.5815579,116.0911053'),
	(55, '2019-02-04 11:26:59', '200003162', 'fFLfUPb_dyE:APA91bEyHeqDzEQKH4sx-7YBTNe3D6Nq35fUcIZn499wtxD2s2YsnESKkBoOBLrwIKjtpK66pUsxbpEHKumr-CC46fWBmerefBHbD7JrCMCz1EdOxOWvIuJffPjIhLLymL5a75GBj9kA', '-8.5801224,116.0990809'),
	(56, '2019-02-04 11:32:56', '200001167', 'cupu', '-8.6750263,116.1222562'),
	(57, '2019-02-06 04:53:19', '201003260', 'lagi mengerjakaj a', '-8.6731821,115.2391193'),
	(58, '2019-02-06 04:58:00', '201003260', 'sfh', '-8.6731821,115.2391193'),
	(59, '2019-02-12 14:55:49', '201003260', 'asss', '-8.6116673,116.1116374'),
	(60, '2019-02-12 14:56:16', '201003260', '12345', '-8.6116673,116.1116374'),
	(61, '2019-02-13 12:46:56', '200001167', 'wooi', '-8.6116721,116.1116348'),
	(62, '2019-02-14 05:31:13', '200003162', 'omae', '-8.5873598,116.0972342'),
	(63, '2019-02-14 12:45:46', '200003162', 'oeee', '-8.6116717,116.1116406'),
	(64, '2019-02-14 12:45:46', '200003162', 'oeee', '-8.6116717,116.1116406'),
	(65, '2019-02-14 12:45:58', '200003162', 'nul posisi?', '-8.611749,116.1115887'),
	(66, '2019-02-14 12:46:20', '200001167', 'di bang Jamil', '-8.6116717,116.1116406'),
	(67, '2019-02-14 12:46:36', '200003162', 'oke nul', '-8.6116717,116.1116406'),
	(68, '2019-02-14 12:50:47', '201003260', 'disaya ni zanul', '-8.6116717,116.1116406'),
	(69, '2019-02-14 13:00:58', '200003162', 'kepo', '-8.6116717,116.1116406'),
	(70, '2019-02-16 11:32:42', '200002165', 'gak ada', '-8.5801208,116.099086'),
	(71, '2019-02-16 11:33:33', '200001167', 'alan bcd', '-8.5801208,116.099086'),
	(72, '2019-02-18 06:26:51', '200002165', 'adi ketol', '-8.5801208,116.099086'),
	(73, '2019-02-18 06:27:25', '200003162', 'mm noob', '-8.5801208,116.099086'),
	(74, '2019-02-18 06:27:25', '200002165', 'sok tau kek zanul', '-8.5801208,116.099086'),
	(75, '2019-02-18 06:27:55', '200003162', 'cuou', '-8.5801208,116.099086'),
	(76, '2019-02-18 06:28:00', '200002165', 'bacot adi', '-8.5801208,116.099086'),
	(77, '2019-02-18 06:28:31', '200002165', 'harpan mengong', '-8.5801208,116.099086'),
	(78, '2019-02-18 06:28:52', '200002165', 'siapa yg bales?', '-8.5801208,116.099086'),
	(79, '2019-02-18 06:28:57', '200003162', 'udh absen mukanya bang', '-8.5801208,116.099086'),
	(80, '2019-02-18 06:29:46', '200003162', 'mana sy tau', '-8.5801208,116.099086'),
	(81, '2019-02-18 06:29:54', '200002165', 'wkwk sebelah kanan mu yg bales', '-8.5801208,116.099086'),
	(82, '2019-02-18 06:30:24', '200003162', 'curichy itu vang', '-8.5801208,116.099086'),
	(83, '2019-02-18 06:30:25', '200002165', 'kok curichy?', '-8.5801208,116.099086'),
	(84, '2019-02-18 06:30:51', '200002165', 'hadi idiot', '-8.5801354,116.0988501'),
	(85, '2019-02-18 06:31:14', '200003162', 'dia yg bls cbat ni..  curichy yg pake diggie tadi malem tu', '-8.5801208,116.099086'),
	(86, '2019-02-18 06:31:22', '200002165', 'kok ada yusrio di kos?', '-8.5801354,116.0988501'),
	(87, '2019-02-18 06:32:01', '200003162', 'yaok,  nul?', '-8.5801208,116.099086'),
	(88, '2019-02-18 06:32:51', '200002165', 'sehat di? eta frosnyett', '-8.5801354,116.0988501'),
	(89, '2019-02-18 06:33:17', '200003162', 'bacot', '-8.5801208,116.099086'),
	(90, '2019-02-18 06:33:45', '200002165', 'otw kos ne', '-8.5801354,116.0988501'),
	(91, '2019-02-18 06:37:22', '200003162', 'ok', '-8.5801208,116.099086'),
	(92, '2019-02-18 06:56:30', '200003162', 'tws', '-8.5801354,116.0988501'),
	(93, '2019-02-18 08:16:06', '200003162', 'nep', '-8.5801354,116.0988501'),
	(94, '2019-02-18 08:22:02', '200002165', 'b23', '-8.5801354,116.0988501'),
	(95, '2019-02-18 08:35:56', '200001167', 'tes', '-8.5801208,116.099086'),
	(96, '2019-02-18 08:36:38', '200001167', 'RIBUUTTT KELEN', '-8.5801208,116.099086'),
	(97, '2019-02-18 08:37:45', '200001167', 'apasih', '-8.5801208,116.099086'),
	(98, '2019-02-18 08:38:49', '200001167', 'hiya hiya hiyaaa', '-8.5801208,116.099086'),
	(99, '2019-02-19 10:47:23', '200001167', 'woiiii diem2 bae', '-8.6762589,116.1150776'),
	(100, '2019-02-19 14:54:34', '200002165', 'mabar laa', '-8.5801208,116.099086'),
	(101, '2019-02-19 14:54:36', '200003162', 'maen ayok', '-8.5801354,116.0988501'),
	(102, '2019-02-19 14:55:19', '200003162', 'mana km lan', '-8.5801354,116.0988501'),
	(103, '2019-02-21 17:07:02', '200002165', 'sepi', '-8.5850431,116.0781436'),
	(104, '2019-02-22 01:26:51', '123456', 'Kampanye Prabowo', '-8.5831055,116.0989974'),
	(105, '2019-02-28 09:53:16', '200003162', 'gege', '-8.6117515,116.1115887'),
	(106, '2019-03-05 13:46:46', '200001167', 'apa yg anda kerjakan hari ini?', '-8.6116716,116.111642'),
	(107, '2019-03-18 04:32:44', '201003260', 'ambil setoran di mana', '-8.6737104,115.2400118'),
	(108, '2019-03-22 07:57:32', '30048', 'testing absen baru up', '-8.673773,115.2398976'),
	(109, '2019-03-22 08:14:33', '30107', 'jam 6 pagi control persiapan berangkat surabaya', '-8.6737701,115.2398843'),
	(110, '2019-03-22 08:44:41', '30121', 'koordinasi bersama bapak Kabag Operasional mengenai persiapan tugas jaga acara peresmian pasar badung yang dihadiri bpk preaiden RI Ir Joko Widodo', '-8.673781,115.2398895'),
	(111, '2019-03-22 09:18:50', '30015', 'nyoba absen baru', '-8.6737855,115.2398898'),
	(112, '2019-03-22 09:29:22', '30048', 'setting hp pegawai', '-8.6737766,115.2399187'),
	(113, '2019-03-22 09:52:20', '30142', 'hadirrr boss', '-8.6736366,115.2400205'),
	(114, '2019-03-22 10:37:49', '30059', 'Ngetik pendapatan manual', '-8.6737953,115.2399651'),
	(115, '2019-03-22 11:02:01', '30057', 'hadir boss..  mengambil setoran badan jalan..', '-8.6737869,115.2399688'),
	(116, '2019-03-22 11:10:02', '30048', 'pemetaan kegiatan pd pasar dan art center', '-8.6738116,115.2399635'),
	(117, '2019-03-22 14:00:42', '30048', 'monitoring kegiatan pasar badung', '-8.6587146,115.2145623'),
	(118, '2019-03-25 08:49:58', '30048', 'update server', '-8.6744206,115.2394898'),
	(119, '2019-03-25 10:00:59', '30048', 'testing', '-8.6738116,115.2399635'),
	(120, '2019-03-25 10:09:58', '30121', 'cek cek dan ricek', '-8.6733941,115.2406012'),
	(121, '2019-03-25 10:15:55', '30088', 'panaskan mesin 2 unit mbl ops,  lap dan netsihka', '-8.6737183,115.2399313'),
	(122, '2019-03-25 10:17:09', '30088', 'bersihkan mbl', '-8.6737183,115.2399313'),
	(123, '2019-03-25 11:29:22', '30059', 'Ngetik  pendapatan manual', '-8.6737889,115.2399741'),
	(124, '2019-03-25 11:44:01', '30115', 'ngetik list bensin utk bln april', '-8.6737927,115.2399669'),
	(125, '2019-03-25 11:45:24', '30051', 'input data penyesuaian', '-8.6494927,115.214415'),
	(126, '2019-03-25 14:57:10', '30088', 'ke bengkel, mergaya, jl imambonjol perbaiki mbl dk 1881 bu', '-8.6736873,115.2399445'),
	(127, '2021-03-16 07:13:35', '3322444', 'ngoding', '-8.5814941,116.0910878');
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;

-- Dumping structure for table absensi.ubahabsen
CREATE TABLE IF NOT EXISTS `ubahabsen` (
  `id_ubahabsen` varchar(25) NOT NULL,
  `nip_pegawai` varchar(15) NOT NULL,
  `id_lokasi` int(11) DEFAULT NULL,
  `id_lokasi_sebelum` int(11) DEFAULT NULL,
  PRIMARY KEY (`nip_pegawai`,`id_ubahabsen`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.ubahabsen: ~0 rows (approximately)
/*!40000 ALTER TABLE `ubahabsen` DISABLE KEYS */;
INSERT INTO `ubahabsen` (`id_ubahabsen`, `nip_pegawai`, `id_lokasi`, `id_lokasi_sebelum`) VALUES
	('20210316072006', '3322444', 13, 9);
/*!40000 ALTER TABLE `ubahabsen` ENABLE KEYS */;

-- Dumping structure for table absensi.user
CREATE TABLE IF NOT EXISTS `user` (
  `nip` varchar(15) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table absensi.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`nip`, `username`, `password`) VALUES
	('30048', 'ngurah', 'setan212'),
	('3322444', 'zanul', 'zanul');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for view absensi.vw_hakakses
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_hakakses` (
	`nip` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`kd_menu` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nm_menu` VARCHAR(52) NOT NULL COLLATE 'latin1_swedish_ci',
	`kd_parent` VARCHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`status` INT(1) NOT NULL,
	`controller` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`icon` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`nm_pegawai` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`gol` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view absensi.vw_hakakses
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_hakakses`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_hakakses` AS select `a`.`nip` AS `nip`,`a`.`username` AS `username`,`a`.`password` AS `password`,`b`.`kd_menu` AS `kd_menu`,`c`.`nm_menu` AS `nm_menu`,`c`.`kd_parent` AS `kd_parent`,`c`.`status` AS `status`,`c`.`controller` AS `controller`,`c`.`icon` AS `icon`,`d`.`nm_pegawai` AS `nm_pegawai`,`d`.`gol` AS `gol` from (((`user` `a` join `akses` `b` on((`a`.`username` = `b`.`username`))) join `menu` `c` on((`b`.`kd_menu` = `c`.`kd_menu`))) join `pegawai` `d` on((`a`.`nip` = `d`.`nip`)));

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
