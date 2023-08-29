-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 01:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xitkj2_pdl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `kode_guru` varchar(2) NOT NULL,
  `nama_guru` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`kode_guru`, `nama_guru`) VALUES
('DS', 'Anitha Dessy'),
('FH', 'Febri Hartono'),
('FI', 'Filbert Ivander'),
('HA', 'Herlina'),
('NR', 'Naomi Ryohan'),
('RM', 'Rieky Martin'),
('SE', 'Sondang Elisabeth'),
('SF', 'Silfiani'),
('SI', 'Suhardi'),
('SO', 'Suvento'),
('ST', 'Selvilia Taselim'),
('SY', 'Sapto Yusup');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal_piket`
--

CREATE TABLE `tb_jadwal_piket` (
  `kode_jadwal` int(11) NOT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `nis` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jadwal_piket`
--

INSERT INTO `tb_jadwal_piket` (`kode_jadwal`, `hari`, `nis`) VALUES
(1, 'Senin', 7298),
(2, 'Kamis', 7257),
(3, 'Senin', 7217),
(4, 'Jumat', 7301),
(5, 'Kamis', 7261),
(6, 'Rabu', 7304),
(7, 'Rabu', 7223),
(8, 'Selasa', 7265),
(9, 'Rabu', 7226),
(10, 'Senin', 7267),
(11, 'Senin', 7310),
(12, 'Senin', 7230),
(13, 'Senin', 7231),
(14, 'Kamis', 7314),
(15, 'Rabu', 7233),
(16, 'Rabu', 7274),
(17, 'Rabu', 7316),
(18, 'Senin', 7275),
(19, 'Jumat', 7236),
(20, 'Selasa', 7276),
(21, 'Rabu', 7239),
(22, 'Rabu', 7321),
(23, 'Kamis', 7280),
(24, 'Kamis', 7281),
(25, 'Jumat', 7242),
(26, 'Selasa', 7282),
(27, 'Senin', 7243),
(28, 'Jumat', 7325),
(29, 'Kamis', 7245),
(30, 'Selasa', 7328),
(31, 'Jumat', 7247),
(32, 'Selasa', 7329),
(33, 'Selasa', 7248),
(34, 'Kamis', 7289),
(35, 'Selasa', 7333),
(36, 'Selasa', 7334),
(37, 'Jumat', 7252),
(38, 'Jumat', 7293),
(39, 'Jumat', 7337),
(40, 'Kamis', 7296);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) DEFAULT NULL,
  `kode_guru` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`kode_mapel`, `mapel`, `kode_guru`) VALUES
('AGM', 'Agama', 'SY'),
('BI', 'Bahasa Indonesia', 'HA'),
('DAMI', 'Data Mining', 'ST'),
('ING', 'Inggris', 'SF'),
('MAND', 'Mandarin', 'SI'),
('MTK', 'Matematika', 'SE'),
('PDL', 'Pemrograman Desktop Lanjutan', 'NR'),
('PJOK', 'Pendidikan Jasmani Olahraga dan Kesehatan', 'NR'),
('PKDK', 'Produk Kreatif dan Kewirausahaan', 'DS'),
('PKN', 'Pendidikan Kewarganegaraan', 'SO'),
('PPL', 'Piranti Perangkat Lunak', 'RM'),
('PWL', 'Pemrograman Web Lanjutan', 'FI'),
('TLJ', 'Teknologi Layanan Jaringan', 'RM');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `no_hp` text DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `nama`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
(7217, 'Betrand Steven', 'L', '08991264053', 'Serdam Gg. Villa gading mansion 1 No A15'),
(7223, 'Enrico Steven Gowira', 'L', '081258235615', 'jalan selat panjang'),
(7226, 'Flevianus Malvin', 'L', '085289483990', 'Jl. Sungai Raya Dalam Gg Ceria 10'),
(7230, 'Irvan Gading', 'L', '085752447794', 'Jl. Tanjung Raya 2'),
(7231, 'Jocelyn', 'P', '089691429388', 'Jl.Pahlawan'),
(7233, 'Josia Yonathan', 'L', '089689429355', 'Jl. Tanjung Raya 1, Komp. Pulau Mas No. A7'),
(7236, 'Justin Theo Rafado', 'L', '085550005055', 'Jln. Gajahmada Gg. Gajahmada 4'),
(7239, 'Louis Verdelinus Thong', 'L', '089510551157', 'Gajahmada 19.No.43c'),
(7242, 'Moses Marchellino', 'L', '089522022333', 'Jl.Danau Sentarum No.D88'),
(7243, 'Nevania Vicky', 'P', '085820185983', 'Jl.Ujung pandang'),
(7245, 'Ray Salvadore', 'L', '085654421880', 'Jl. Adi Sucipto Gg. Fitrah No.323'),
(7247, 'Rudolf Dennis Putra Effendy', 'L', '081250890263', 'JL.Adisucipto 8,5km'),
(7248, 'Stanley Constantin Liem', 'L', '082153915895', 'Jl. Serdam Komp Bumi serdam damai no a72'),
(7252, 'Vincent Wong', 'L', '087744008455', 'JL.Purnama Agung 7 No. A-38'),
(7257, 'Arven Maretto', 'L', '089684444198', 'Serdam Gg. Ceria 9 nomor 7'),
(7261, 'Daniel Okwatusa', 'L', '087773059938', 'Jl.Bersamamu'),
(7265, 'Felicia', 'P', '089504241765', 'Jl. Purnama Gg. Purnama Agung 1 No. C2'),
(7267, 'Gabriel Yorius', 'L', '082156377318', 'Jalan Perdamaian No. 2A'),
(7274, 'Jovan Fedrico', 'L', '0895630143236', 'Jl. Komplek Serdam Mawar Indah No. B002'),
(7275, 'Justin Brilliant Thendri', 'L', '081253774912', 'Jl. Imam Bonjol Gg. Tanjung Mas'),
(7276, 'Keelin Anitra', 'P', '081257850048', 'jln. gusti situt mahmud Gg. selat sumba 3'),
(7280, 'Melvern', 'L', '081390675808', 'Jl.Panglima Aim no,4'),
(7281, 'Michael Chandra', 'L', '081390675808', 'Jl.Kuala 2 no.421'),
(7282, 'Nasya Ecclesia Lumbantoruan', 'P', '089688536934', 'Jl.Ampera, Hokiland Smart Residence'),
(7289, 'Steven Fandel', 'L', '0895378834110', 'jln. Purnama Gg. Purnama agung 3 No M2'),
(7293, 'Weliam Yonatan', 'L', '085822755148', 'Jln. Adi Sucipto, komp. Hanura Permai I, Nomor M7'),
(7296, 'Yehezkiel Ezra', 'L', '082250769250', 'Jln Siaga, Gg Siaga 3 Kencana No 21B'),
(7298, 'Alexandro Kelvin', 'L', '081521559297', 'Jl.Raya Sungai Kakap No.16'),
(7301, 'Carrick Candra', 'L', '085845144263', 'Jl. Pasar Sungai Kakap Blok B no 51'),
(7304, 'Edward Fernando', 'L', '085822485033', 'Jl. Pasar Sungai Kakap Blok B no 34'),
(7310, 'Grand Atov', 'L', '082255811410', 'Jl. Dinasti Indah No. A 12'),
(7314, 'Jonathan Jordan', 'L', '085754033442', 'Jl.Siaga Gg.822E'),
(7316, 'Juan Totti Chiayadi', 'L', '083125974833', 'Jl. Tanjung Raya 1, Komp. Pulau Mas No. 27'),
(7321, 'Marethio Yanri', 'L', '085754350371', 'Parit Muskin 2 Kompleks Dyana Residence no A4'),
(7325, 'Nicholas Sumarlin', 'L', '08988814421', 'Jl. Siaga No 28A'),
(7328, 'Rico Sanjaya', 'L', '085346637474', 'Jl. Kedah No 9'),
(7329, 'Serly Avenda', 'P', '081257283388', 'Jl. Adi Sucipto Kp. Banjar baru No.6'),
(7333, 'Valensia Oliviani Sutedjo', 'P', '082253637551', 'jln Veteran gg Syukur 4'),
(7334, 'Vaness', 'L', '089516277386', 'Jl. Perdana Komp Bali Agung 3 blok Q38'),
(7337, 'Willsen Mayvin', 'L', '082153051156', 'Jln. Purnama 2, Gg.usaha Bersama 2, No.A11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`kode_guru`);

--
-- Indexes for table `tb_jadwal_piket`
--
ALTER TABLE `tb_jadwal_piket`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
