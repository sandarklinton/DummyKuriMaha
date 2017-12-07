-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 07:12 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dummyapap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `id_univ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `nama_lengkap`, `id_univ`) VALUES
(1, 'admin', 'admin@global.com', 'admin', 0),
(2, 'admin.ui', 'admin@ui.ac.id', 'Joko Sutarta', 1),
(3, 'admin.gunadarma', 'admin@gunadarma.ac.id', 'Heti Gendis Kinandar Putri', 2);

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `is_admin`) VALUES
(1, 'admin', 'admin', 1),
(7, 'admin.ui', 'uiuikampusku', 1),
(8, 'admin.gunadarma', 'gundarjaya00', 1),
(14, 'mabaanon1', 'mahasiswa', 0),
(15, 'galuh.octavia', 'blabla', 0),
(16, 'aufahr', 'aufagendut', 0),
(17, 'mabaanon', 'maba123', 0),
(18, 'mabanaon2', 'maba234', 0),
(19, 'mabaanon3', 'maba345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `irs`
--

CREATE TABLE `irs` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `status_irs` varchar(20) NOT NULL,
  `tanggal_pengisian` datetime NOT NULL,
  `term` varchar(50) NOT NULL,
  `kodemk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irs`
--

INSERT INTO `irs` (`id`, `id_user_mhs`, `status_irs`, `tanggal_pengisian`, `term`, `kodemk`) VALUES
(1, 5, 'Disetujui', '2017-07-17 11:53:10', '2', NULL),
(2, 6, 'Disetujui', '2017-07-15 08:01:10', '2', NULL),
(3, 6, 'Disetujui', '2017-07-20 09:23:10', '2', NULL),
(4, 5, 'Disetujui', '2017-05-20 10:33:10', '3', NULL),
(5, 5, 'Disetujui', '2017-05-01 11:13:10', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kurikulum` varchar(8) NOT NULL,
  `nama_kurikulum` varchar(255) NOT NULL,
  `id_universitas` varchar(20) NOT NULL,
  `id_fakultas` varchar(20) NOT NULL,
  `id_prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `kode_kurikulum`, `nama_kurikulum`, `id_universitas`, `id_fakultas`, `id_prodi`) VALUES
(1, 'CSUI2011', 'Kurikulum Fasilkom 2011', '1', '1', '1'),
(2, 'FTUI2012', 'Kurikulum FT 2012', '1', '2', '2'),
(3, 'FEUI2013', 'Kurikulum FE 2013', '1', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum_matakuliah`
--

CREATE TABLE `kurikulum_matakuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kurikulum` varchar(8) NOT NULL,
  `kode_matkul` varchar(6) NOT NULL,
  `is_wajib` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum_matakuliah`
--

INSERT INTO `kurikulum_matakuliah` (`id`, `kode_kurikulum`, `kode_matkul`, `is_wajib`) VALUES
(1, 'CSUI2011', 'CSC001', '1'),
(2, 'CSUI2011', 'CSC002', '1'),
(3, 'CSUI2011', 'CSC003', '0'),
(4, 'FTUI2012', 'ENG001', '1'),
(5, 'FTUI2012', 'ENG002', '1'),
(6, 'FTUI2012', 'ENG003', '0'),
(7, 'FEUI2013', 'FEB001', '1'),
(8, 'FEUI2013', 'FEB002', '1'),
(9, 'FEUI2013', 'FEB003', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `IPK` double NOT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `id_univ` int(11) DEFAULT NULL,
  `jenjang` varchar(255) DEFAULT NULL,
  `kode_kurikulum` varchar(255) DEFAULT NULL,
  `tahun_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `username`, `nama_lengkap`, `IPK`, `id_fakultas`, `id_prodi`, `id_univ`, `jenjang`, `kode_kurikulum`, `tahun_masuk`) VALUES
(5, '1234367892', 'mabaanon1', 'Mahasiswa Baru', 0, 1, 1, 1, 'S1', 'CSUI2015', 2015),
(6, '1506757844', 'galuh.octavia', 'Galuh Octavia', 0, 1, 1, 1, 'S1', 'CSUI2015', 2015),
(7, '1506757866', 'aufahr', 'Aufa Hussen', 0, 1, 1, 1, 'S1', 'CSUI2017', 2015),
(8, '1506757849', 'mabaanon', 'Maba Anon', 0, 2, 1, 2, 'S2', 'FEUI2017', 207),
(9, '1709090909', 'mabanaon2', 'Maba Anon 2', 0, 2, 1, 2, 'S1', 'FIBU2019', 2016),
(10, '1608080808', 'mabaanon3', 'Maba Anon 3', 0, 1, 2, 2, 'S2', 'CSUI2016', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_matkul` varchar(6) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `deskripsi` text,
  `term` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode_matkul`, `nama_matkul`, `jumlah_sks`, `deskripsi`, `term`) VALUES
(2, 'CSC001', 'DDP 1', 4, 'Mata kuliah ini mengajarkan Dasar-Dasar Pemrograman 1', 1),
(3, 'CSC002', 'DDP 2', 4, 'Mata kuliah ini mengajarkan Dasar-Dasar Pemrograman 2', 2),
(4, 'CSC003', 'SDA', 4, 'Mata kuliah ini mengajarkan Struktur Dasar Algoritma', 3),
(5, 'ENG001', 'Gambar Teknik', 4, 'Mata kuliah ini mengajarkan Penggambaran Teknik', 1),
(6, 'ENG002', 'Manajerial Industri', 4, 'Mata kuliah ini mengajarkan Manajerial Industri', 2),
(7, 'ENG003', 'K3L', 4, 'Mata kuliah ini mengajarkan K3L', 3),
(8, 'FEB001', 'Akuntansi Dasar', 4, 'Mata kuliah ini mengajarkan Akuntansi Dasar', 1),
(9, 'FEB002', 'Ekonomi Mikro', 4, 'Mata kuliah ini mengajarkan Ekonomi Mikro', 2),
(10, 'FEB003', 'Akuntansi Lanjut', 4, 'Mata kuliah ini mengajarkan Akuntansi Lanjut', 3);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_matkul`
--

CREATE TABLE `penilaian_matkul` (
  `id` int(11) NOT NULL,
  `id_irs` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `nilai_angka` double NOT NULL,
  `nilai_huruf` varchar(2) NOT NULL,
  `is_lulus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian_matkul`
--

INSERT INTO `penilaian_matkul` (`id`, `id_irs`, `id_user_mhs`, `kode_mk`, `nilai_angka`, `nilai_huruf`, `is_lulus`) VALUES
(1, 1, 5, 'CSF1600200', 82.2, 'A-', '1'),
(2, 2, 6, 'CSGE602055', 85.5, 'A', '1'),
(3, 3, 6, 'CSIM603291', 57.57, 'C', '1'),
(4, 4, 6, 'UIGE600010', 90.1, 'A', '1'),
(5, 5, 7, 'CSIE604290', 84.99, 'A-', '1');

-- --------------------------------------------------------

--
-- Table structure for table `prasyarat_matakuliah`
--

CREATE TABLE `prasyarat_matakuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kurikulum` varchar(8) NOT NULL,
  `kode_matkul` varchar(6) NOT NULL,
  `prasyarat` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prasyarat_matakuliah`
--

INSERT INTO `prasyarat_matakuliah` (`id`, `kode_kurikulum`, `kode_matkul`, `prasyarat`) VALUES
(1, 'CSUI2011', 'CSC003', 'CSC001'),
(2, 'CSUI2011', 'CSC003', 'CSC002'),
(3, 'FTUI2012', 'ENG003', 'ENG001'),
(4, 'FTUI2012', 'ENG003', 'ENG002'),
(5, 'FEUI2013', 'FEB003', 'FEB001'),
(6, 'FEUI2013', 'FEB003', 'FEB002');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `sks_lulus` int(11) NOT NULL,
  `id_term` varchar(50) NOT NULL,
  `IP` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `id_user_mhs`, `sks_lulus`, `id_term`, `IP`) VALUES
(1, 7, 21, '2 2016/2017', 3.24),
(2, 6, 20, '1 2016/2017', 3.8),
(3, 6, 17, '2 2016/2017', 2.43),
(4, 6, 21, '3 2016/2017', 4),
(5, 5, 24, '1 2016/2017', 3.51);

-- --------------------------------------------------------

--
-- Table structure for table `status_lulus`
--

CREATE TABLE `status_lulus` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `status_lulus` int(11) NOT NULL,
  `is_wisuda` tinyint(1) NOT NULL,
  `is_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_lulus`
--

INSERT INTO `status_lulus` (`id`, `id_user_mhs`, `status_lulus`, `is_wisuda`, `is_aktif`) VALUES
(1, 5, 0, 0, 1),
(2, 6, 0, 0, 1),
(3, 7, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_uindex` (`email`),
  ADD UNIQUE KEY `admin_id_uindex` (`id`),
  ADD UNIQUE KEY `admin_username_uindex` (`username`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `akun_id_uindex` (`id`),
  ADD UNIQUE KEY `akun_username_uindex` (`username`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `irs`
--
ALTER TABLE `irs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IRS_id_uindex` (`id`),
  ADD KEY `fk_IRS_npm` (`id_user_mhs`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `kode_kurikulum` (`kode_kurikulum`);

--
-- Indexes for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `kode_kurikulum` (`kode_kurikulum`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_mahasiswa_id_uindex` (`id`),
  ADD UNIQUE KEY `user_mahasiswa_npm_uindex` (`npm`),
  ADD UNIQUE KEY `user_mahasiswa_username_uindex` (`username`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `kode_matkul` (`kode_matkul`);

--
-- Indexes for table `penilaian_matkul`
--
ALTER TABLE `penilaian_matkul`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penilaian_matkul_id_uindex` (`id`),
  ADD KEY `FKbxogm2q2nmh7yi5bbpkj4t80a` (`id_irs`),
  ADD KEY `FKl9sa5bg1d0nttgk823il7k9m7` (`id_user_mhs`);

--
-- Indexes for table `prasyarat_matakuliah`
--
ALTER TABLE `prasyarat_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `kode_kurikulum` (`kode_kurikulum`),
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `prasyarat` (`prasyarat`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `riwayat_id_uindex` (`id`),
  ADD KEY `fk_riwayat_npm` (`id_user_mhs`);

--
-- Indexes for table `status_lulus`
--
ALTER TABLE `status_lulus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_lulus_id_uindex` (`id`),
  ADD UNIQUE KEY `status_lulus_id_user_mhs_uindex` (`id_user_mhs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irs`
--
ALTER TABLE `irs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penilaian_matkul`
--
ALTER TABLE `penilaian_matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prasyarat_matakuliah`
--
ALTER TABLE `prasyarat_matakuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status_lulus`
--
ALTER TABLE `status_lulus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_username` FOREIGN KEY (`username`) REFERENCES `akun` (`username`);

--
-- Constraints for table `irs`
--
ALTER TABLE `irs`
  ADD CONSTRAINT `FKf7dfow5tbp114ugf0mvvd3ldn` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `fk_IRS_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `kurikulum_matakuliah`
--
ALTER TABLE `kurikulum_matakuliah`
  ADD CONSTRAINT `kurikulum_matakuliah_ibfk_1` FOREIGN KEY (`kode_kurikulum`) REFERENCES `kurikulum` (`kode_kurikulum`),
  ADD CONSTRAINT `kurikulum_matakuliah_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `mata_kuliah` (`kode_matkul`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_username` FOREIGN KEY (`username`) REFERENCES `akun` (`username`);

--
-- Constraints for table `penilaian_matkul`
--
ALTER TABLE `penilaian_matkul`
  ADD CONSTRAINT `FKbxogm2q2nmh7yi5bbpkj4t80a` FOREIGN KEY (`id_irs`) REFERENCES `irs` (`id`),
  ADD CONSTRAINT `FKl9sa5bg1d0nttgk823il7k9m7` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `penilaian_matkul_irs_id_fk` FOREIGN KEY (`id_irs`) REFERENCES `irs` (`id`),
  ADD CONSTRAINT `penilaian_matkul_mahasiswa_id_fk` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `prasyarat_matakuliah`
--
ALTER TABLE `prasyarat_matakuliah`
  ADD CONSTRAINT `prasyarat_matakuliah_ibfk_1` FOREIGN KEY (`kode_kurikulum`) REFERENCES `kurikulum` (`kode_kurikulum`),
  ADD CONSTRAINT `prasyarat_matakuliah_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `mata_kuliah` (`kode_matkul`),
  ADD CONSTRAINT `prasyarat_matakuliah_ibfk_3` FOREIGN KEY (`prasyarat`) REFERENCES `mata_kuliah` (`kode_matkul`);

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `FK6v20wnnqnphdutaqmx3a0vwix` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `fk_riwayat_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `status_lulus`
--
ALTER TABLE `status_lulus`
  ADD CONSTRAINT `FKb1qhdh1lipsjvjxs1qk5wu849` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `fk_status_lulus_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
