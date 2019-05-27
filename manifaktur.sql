-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for osx10.12 (x86_64)
--
-- Host: localhost    Database: Manufaktur_Stapi
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DBarang_SPersediaan`
--

DROP TABLE IF EXISTS `DBarang_SPersediaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DBarang_SPersediaan` (
  `Kode` varchar(5) NOT NULL,
  `Nama_Item` char(10) DEFAULT NULL,
  `Kuantitas` int(10) DEFAULT NULL,
  `Satuan` char(10) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Jumlah` int(20) DEFAULT NULL,
  `Tipe_Persediaan` char(50) DEFAULT NULL,
  `Akun_Persediaan` char(30) DEFAULT NULL,
  `Akun_Barang_Terkirim` char(30) DEFAULT NULL,
  `Akun_Retur_Pembelian` char(30) DEFAULT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DBarang_SPersediaan`
--

LOCK TABLES `DBarang_SPersediaan` WRITE;
/*!40000 ALTER TABLE `DBarang_SPersediaan` DISABLE KEYS */;
INSERT INTO `DBarang_SPersediaan` VALUES ('P001','tempe',5000,'PCS',3000,16800000,'persediaan produk jadi','11402 Persediaan Produk Jadi','11402 Persediaan Produk Jadi','11402 Persediaan Produk Jadi'),('P002','kedelai',1400,'KG',7500,10500000,'persediaan bahan baku','11300 Persediaan Bahan Baku','11300 Persediaan Bahan Baku','11300 Persediaan Bahan Baku'),('P003','ragi',14,'BTG',2500,35000,'persediaan bahan baku','11300 Persediaan Bahan Baku','11300 Persediaan Bahan Baku','11300 Persediaan Bahan Baku'),('P004','plastik',35,'PACK',9000,315000,'persediaan bahan pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu'),('P005','Lidi',7,'IKT',2000,14000,'persediaan bahan pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu'),('P006','Pewarna',14,'PACK',1500,21000,'persediaan bahan pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu','11310 Persediaan B Pembantu');
/*!40000 ALTER TABLE `DBarang_SPersediaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DCustomer_SAPiutang`
--

DROP TABLE IF EXISTS `DCustomer_SAPiutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCustomer_SAPiutang` (
  `No` varchar(5) NOT NULL,
  `Nama` char(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Telepon` varchar(20) DEFAULT NULL,
  `No_Faktur` char(20) DEFAULT NULL,
  `Tanggal` char(20) DEFAULT NULL,
  `Jumlah` int(20) DEFAULT NULL,
  PRIMARY KEY (`No`),
  UNIQUE KEY `Telepon` (`Telepon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DCustomer_SAPiutang`
--

LOCK TABLES `DCustomer_SAPiutang` WRITE;
/*!40000 ALTER TABLE `DCustomer_SAPiutang` DISABLE KEYS */;
INSERT INTO `DCustomer_SAPiutang` VALUES ('C001','Tn. zulkilfi','jl. tirtayasa no.22 jakarta','022-623 0197','F08-25','2012-08-25',550000),('C002','Tn. satria','jl. cileunyi raya no.20 jakarta','723 5454','F08-30','2012-08-30',200000),('C003','Tn. ibnu','jl. sukarasi no.12 jakarta','621 0164','F08-28','2012-08-28',450000),('C004','Tn. Yossi','jl. jend. sudirman no.35 jakarta','622 1234','F08-29','2012-08-29',300000),('C005','Penjualan Tunai','0','0','0','0',0);
/*!40000 ALTER TABLE `DCustomer_SAPiutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DVendor_SAHutang`
--

DROP TABLE IF EXISTS `DVendor_SAHutang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DVendor_SAHutang` (
  `No` varchar(5) NOT NULL,
  `Nama` char(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Telepon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`No`),
  UNIQUE KEY `Telepon` (`Telepon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DVendor_SAHutang`
--

LOCK TABLES `DVendor_SAHutang` WRITE;
/*!40000 ALTER TABLE `DVendor_SAHutang` DISABLE KEYS */;
INSERT INTO `DVendor_SAHutang` VALUES ('S001','Tn.H. Udin','jl. setu no. 12 jakarta','0226303334'),('S002','Tn. Rahmat','jl. raya condet no. 13 jakarta','0223802900');
/*!40000 ALTER TABLE `DVendor_SAHutang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Daftar_Aset_Tetap`
--

DROP TABLE IF EXISTS `Daftar_Aset_Tetap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Daftar_Aset_Tetap` (
  `Tipe_Aktiva_Tetap` char(10) DEFAULT NULL,
  `Kode_Aktiva` varchar(6) DEFAULT NULL,
  `Ket_Aktiva` char(10) DEFAULT NULL,
  `Tanggal_Pembelian` varchar(12) DEFAULT NULL,
  `Tanggal_Pemakaian` varchar(12) DEFAULT NULL,
  `Umur_Bulan` int(4) DEFAULT NULL,
  `Metode_Penyusutan` char(30) DEFAULT NULL,
  `Akun_Aktiva` varchar(30) DEFAULT NULL,
  `Akun_Akum_Depresiasi` varchar(50) DEFAULT NULL,
  `Akun_Beban_Depresiasi` varchar(50) DEFAULT NULL,
  `Sumber_Dana` int(20) DEFAULT NULL,
  `Akun_Sumber_Dana` varchar(50) DEFAULT NULL,
  `Nilai_Residu` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Daftar_Aset_Tetap`
--

LOCK TABLES `Daftar_Aset_Tetap` WRITE;
/*!40000 ALTER TABLE `Daftar_Aset_Tetap` DISABLE KEYS */;
INSERT INTO `Daftar_Aset_Tetap` VALUES ('Tanah','FA01','Tanah','01052012','01052012',0,'tidak disusutkan','12100 tanah','0','0',90000000,'3999 opening balance equity',0),('Bangunan','FA02','Bangunan','31072012','31072012',20,'metode garis lurus','12210 bangunan','12220 akum. penyusutan bangunan','51000.1 harga pokok penjualan',70000000,'3999 opening balance equity',10000000),('Kendaraan','FA03','Kendaraan','31082010','31082010',4,'metode garis lurus','12310 kendaraan','12320 akum. penyusutan kendaraan','51000.1 harga pokok penjualan',19000000,'3999 opening balance equity',2000000),('Peralatan','FA04','Peralatan','28022010','28022010',4,'metode garis lurus','12410 kendaraan','12420 akum. penyusutan peralatan','51000.1 harga pokok penjualan',19500000,'3999 opening balance equity',1500000);
/*!40000 ALTER TABLE `Daftar_Aset_Tetap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Daftar_Tipe_Aset_Pajak`
--

DROP TABLE IF EXISTS `Daftar_Tipe_Aset_Pajak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Daftar_Tipe_Aset_Pajak` (
  `Golongan_Aset_Tetap` varchar(50) DEFAULT NULL,
  `Umur_Ekonomis` int(10) DEFAULT NULL,
  `Metode_Penyusutan` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Daftar_Tipe_Aset_Pajak`
--

LOCK TABLES `Daftar_Tipe_Aset_Pajak` WRITE;
/*!40000 ALTER TABLE `Daftar_Tipe_Aset_Pajak` DISABLE KEYS */;
INSERT INTO `Daftar_Tipe_Aset_Pajak` VALUES ('bangunan permanen',20,'straight line method'),('bangunan semi permanen',10,'straight line method'),('gol 1 [garis lurus]',4,'straight line method'),('gol 1 [saldo menurutn]',4,'double declining method'),('gol 2 [garis lurus]',8,'straight line method'),('gol 2 [saldo menurun]',4,'double declining method'),('gol 3 [garis lurus]',16,'straight line method'),('gol 3 [saldo menurun]',16,'double declining method'),('gol 4 [garis lurus]',20,'straight line method'),('gol 4 [saldo menurun]',20,'double declining method'),('tidak berwujud 1 [garis lurus]',4,'straight line method'),('tidak berwujud 1 [saldo menurun]',4,'double declining method'),('tidak berwujud 2 [garis lurus]',8,'straight line method'),('tidak berwujud 2 [saldo menurun]',8,'double declining method'),('tidak berwujud 3 [garis lurus]',16,'straight line method'),('tidak berwujud 3 [saldo menurun]',16,'double declining method'),('tidak berwujud 4 [garis lurus]',20,'straight line method'),('tidak berwujud 4 [saldo menurun]',20,'double declining method'),('tidak diusutkan',0,'non depreciable');
/*!40000 ALTER TABLE `Daftar_Tipe_Aset_Pajak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Daftar_Tipe_Aset_Tetap`
--

DROP TABLE IF EXISTS `Daftar_Tipe_Aset_Tetap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Daftar_Tipe_Aset_Tetap` (
  `Tipe_Aktiva_Tetap` char(10) DEFAULT NULL,
  `Gol_Aset_Tetap` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Daftar_Tipe_Aset_Tetap`
--

LOCK TABLES `Daftar_Tipe_Aset_Tetap` WRITE;
/*!40000 ALTER TABLE `Daftar_Tipe_Aset_Tetap` DISABLE KEYS */;
INSERT INTO `Daftar_Tipe_Aset_Tetap` VALUES ('tanah','tidak diusutkan'),('gedung','bangunan permanen'),('peralatan','gol 1 [garis lurus]'),('kendaraan','gol 1 [garis lurus]');
/*!40000 ALTER TABLE `Daftar_Tipe_Aset_Tetap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Data_Transaksi`
--

DROP TABLE IF EXISTS `Data_Transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Data_Transaksi` (
  `Id_Transaksi` int(10) NOT NULL AUTO_INCREMENT,
  `No_Akun` varchar(6) DEFAULT NULL,
  `Keterangan` char(50) DEFAULT NULL,
  `Saldo_Baru` int(20) DEFAULT NULL,
  `Saldo_Lama` int(20) DEFAULT NULL,
  `Date_Changed` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Data_Transaksi`
--

LOCK TABLES `Data_Transaksi` WRITE;
/*!40000 ALTER TABLE `Data_Transaksi` DISABLE KEYS */;
INSERT INTO `Data_Transaksi` VALUES (1,'11100',NULL,22000000,25000000,'2019-05-27 07:39:02'),(2,'11100',NULL,28900000,22000000,'2019-05-27 07:40:15'),(3,'11100',NULL,28400000,28900000,'2019-05-27 07:40:37'),(4,'11100',NULL,28400000,28400000,'2019-05-27 07:40:56'),(5,'11100',NULL,31900000,28400000,'2019-05-27 07:41:20'),(6,'11100',NULL,32350000,31900000,'2019-05-27 07:41:48'),(7,'11100',NULL,32650000,32350000,'2019-05-27 07:42:00'),(8,'11100',NULL,32850000,32650000,'2019-05-27 07:43:05'),(9,'11100',NULL,29250000,32850000,'2019-05-27 07:43:21'),(10,'11100',NULL,28750000,29250000,'2019-05-27 07:43:36'),(11,'11100',NULL,37150000,28750000,'2019-05-27 07:44:04'),(12,'11100',NULL,39670000,37150000,'2019-05-27 07:44:23'),(13,'11100',NULL,52270000,39670000,'2019-05-27 07:49:49'),(14,'11100',NULL,52117000,52270000,'2019-05-27 07:50:08'),(15,'11100',NULL,41617000,52117000,'2019-05-27 07:50:29'),(16,'11100',NULL,45617000,41617000,'2019-05-27 07:50:46'),(17,'11100',NULL,45645000,45617000,'2019-05-27 07:50:58'),(18,'11100',NULL,44945000,45645000,'2019-05-27 07:51:14'),(19,'11100',NULL,45445000,44945000,'2019-05-27 07:51:46'),(20,'11100',NULL,45090100,45445000,'2019-05-27 07:52:11'),(21,'11100',NULL,41490100,45090100,'2019-05-27 07:52:30');
/*!40000 ALTER TABLE `Data_Transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Neraca_Saldo`
--

DROP TABLE IF EXISTS `Neraca_Saldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Neraca_Saldo` (
  `No_akun` varchar(6) NOT NULL,
  `Nama_Akun` char(50) DEFAULT NULL,
  `Tipe_Akun` char(50) DEFAULT NULL,
  `Debit` int(20) DEFAULT NULL,
  `Kredit` int(20) DEFAULT NULL,
  PRIMARY KEY (`No_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Neraca_Saldo`
--

LOCK TABLES `Neraca_Saldo` WRITE;
/*!40000 ALTER TABLE `Neraca_Saldo` DISABLE KEYS */;
INSERT INTO `Neraca_Saldo` VALUES ('11100','Kas Ditangan','Cash/Bank',41490100,0),('11110','Kas Bank','Cash/Bank',75500000,0),('11200','Piutang Usaha','Account Receivable',1500000,0),('11210','Piutang karyawan','Other Current Assets',1500000,0),('11300','Persediaan Bahan Baku','Inventory',10535000,0),('11310','Persediaan Bahan Pembantu','Inventory',350000,0),('11401','Persediaan Barang Dalam Proses','Inventory',0,0),('11402','Persediaan Produk Jadi','Inventory',16800000,0),('11403','Perlengkapan Pabrik','Other Crrent Assets',350000,0),('11404','Perlengkapan Kantor','Other Crrent Assets',0,0),('12100','Tanah','Fixed Assets',90000000,0),('12210','Bangunan','Fixed Assets',70000000,0),('12220','Akun Penyusutan Bangunan','Accumulated Depreciation',0,250000),('12300','Kendaraan','Fixed Assets',19000000,0),('12310','Akun Penyusutan Kendaraan','Accumulated Depreciation',0,8500000),('12400','Peralatan','Fixed Assets',19500000,0),('12410','Akun Penyusutan Peralatan','Accumulated Depreciation',0,11250000),('21100','Utang Usaha','Account Payable',0,0),('21200','Utang Gaji dan Upah','Other Current Liability',0,3000000),('21300','Utang Beban','Other Current Liability',0,500000),('21400','Utang Pajak','Other Current Liability',0,0),('31100','Modal Tn.Setiawan','Equity',0,216195000),('31200','Prive Tn.Setiawan','Equity',310000,0),('41000','Penjualan','Revenue',0,537600000),('51000','Harga Pokok Penjualan','Cost of Goods Sold',448000000,0),('51100','Harga Pokok Produksi','Cost of Goods Sold',0,0),('51110','Biaya Produksi','Cost of Goods Sold',0,0),('51111','Biaya Bahan Baku','Cost of Goods Sold',0,0),('51112','Biaya Tenaga Kerja Langsung','Cost of Goods Sold',0,0),('51113','Biaya Overhead Pabrik(sesungghunya)','Cost of Goods Sold',0,0),('51114','Biaya Overhead Pabrik(beban)','Cost of Goods Sold',0,0),('61000','Beban Pajak','Expense',0,0),('62000','Beban Gaji Administrasi','Expense',0,0),('63000','Beban Pemeliharaan Kendaraan','Expense',750000,0),('64000','Beban Perlengkapan Kantor','Expense',0,0),('65000','Beban Telepon, Listrik & Air','Expense',0,0),('71000','Beban Adm. Bank','Other Expense',0,0),('81000','Pendapatan Bunga','Other Income',0,1200000),('82000','Pendapatan Lain-Lain','Other Income',0,600000);
/*!40000 ALTER TABLE `Neraca_Saldo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_neraca_update BEFORE UPDATE ON Neraca_Saldo FOR EACH ROW BEGIN INSERT INTO Data_Transaksi SET No_Akun = old.No_akun, Saldo_baru = new.Debit, Saldo_Lama = old.Debit, Date_Changed = NOW();   END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 20:00:01
