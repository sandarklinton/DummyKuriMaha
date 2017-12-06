-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2017 at 09:26 AM
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
(2, 'gugun.dah', 'gundahgulana00', 0),
(3, 'gilang.guritno', 'gil4ngguritno', 0),
(4, 'doni.alamsyah', '112233don', 0),
(5, 'andrew.wijaya', 'doniwi74y4', 0),
(6, 'zi.long', 'ui2017uye', 0),
(7, 'admin.ui', 'uiuikampusku', 1),
(8, 'admin.gunadarma', 'gundarjaya00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `biodata_mahasiswa`
--

CREATE TABLE `biodata_mahasiswa` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata_mahasiswa`
--

INSERT INTO `biodata_mahasiswa` (`id`, `id_user_mhs`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `jenis_kelamin`) VALUES
(1, 1, '085772658544', 'Pekalongan', '1997-06-11', 'Jl. Sudirman Raya No.26 Blok B, Griya Tawangan, Jakarta Utara', 1),
(2, 2, '085553332012', 'Kebumen', '1998-01-12', 'Jl. Gondar Diya No.11 Blok S, Jakarta Pusat', 0),
(3, 3, '081126621212', 'Jakarta', '1995-06-11', 'Jl. Perjuangan No.2 Blok Y, Tangerang', 0),
(4, 4, '089122041292', 'Bandung', '1994-07-02', 'Jl. Batu Biru No.2 Komplek Bandung Jaya Raya, Bandung', 1),
(5, 5, '082212241783', 'Jakarta', '1990-01-01', 'Jl. Kebangkitan No.9, Griya Tawangan, Jakarta Utara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `biodata_ortu`
--

CREATE TABLE `biodata_ortu` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `no_hp_ayah` varchar(20) NOT NULL,
  `no_hp_ibu` varchar(20) NOT NULL,
  `no_hp_wali` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata_ortu`
--

INSERT INTO `biodata_ortu` (`id`, `id_user_mhs`, `nama_ayah`, `nama_ibu`, `nama_wali`, `no_hp_ayah`, `no_hp_ibu`, `no_hp_wali`) VALUES
(1, 1, 'Ganjar Prakasa', 'Sugeng Griyani', '', '089888231111', '089888231112', ''),
(2, 2, 'Budiarto Notonegoro', 'Siti Hunafa', '', '082123132122', '082211224767', ''),
(3, 3, 'Toto Fasyarida', 'Dinda Kirana', '', '080010232023', '08213219039', ''),
(4, 4, 'Joni Toelank', 'Sugeng Sitompul', '', '088282991112', '08101010122', ''),
(5, 5, 'Eko Syahputra', 'Dian Soraya', '', '086621236473', '08124643121', '');

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
-- Table structure for table `identitas_mahasiswa`
--

CREATE TABLE `identitas_mahasiswa` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `jenjang` varchar(2) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `kode_kurikulum` varchar(30) NOT NULL,
  `id_univ` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas_mahasiswa`
--

INSERT INTO `identitas_mahasiswa` (`id`, `id_user_mhs`, `jenjang`, `tahun_masuk`, `kode_kurikulum`, `id_univ`, `id_fakultas`, `id_prodi`) VALUES
(1, 1, 'S1', 2015, '01.00.12.01-2012', 1, 1, 1),
(2, 2, 'S1', 2015, '01.00.12.01-2012', 1, 2, 17),
(3, 3, 'S1', 2015, '01.00.12.01-2012', 1, 3, 12),
(4, 4, 'S2', 2015, '08.00.12.01-2015', 2, 2, 7),
(5, 5, 'S3', 2015, '07.00.12.01-2015', 2, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `irs`
--

CREATE TABLE `irs` (
  `id` int(11) NOT NULL,
  `id_user_mhs` int(11) NOT NULL,
  `status_irs` varchar(20) NOT NULL,
  `tanggal_pengisian` datetime NOT NULL,
  `term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irs`
--

INSERT INTO `irs` (`id`, `id_user_mhs`, `status_irs`, `tanggal_pengisian`, `term`) VALUES
(1, 1, 'Disetujui', '2017-07-17 11:53:10', 'Tahun Ajaran 2016/2017 Term 2'),
(2, 2, 'Disetujui', '2017-07-15 08:01:10', 'Tahun Ajaran 2016/2017 Term 2'),
(3, 3, 'Disetujui', '2017-07-20 09:23:10', 'Tahun Ajaran 2016/2017 Term 2'),
(4, 5, 'Disetujui', '2017-05-20 10:33:10', 'Tahun Ajaran 2016/2017 Term 2'),
(5, 5, 'Disetujui', '2017-05-01 11:13:10', 'Tahun Ajaran 2016/2017 Term 2');

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
  `email_univ` varchar(50) NOT NULL,
  `email_pribadi` varchar(50) NOT NULL,
  `IPK` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `username`, `nama_lengkap`, `email_univ`, `email_pribadi`, `IPK`) VALUES
(1, '1506773075', 'zi.long', 'Muhammad Zidane Longatumbala', 'zidane.long@ui.ac.id', 'zilong@gmail.com', 0),
(2, '1577063390', 'gugun.dah', 'Gugun Dahiyat', 'gugun.dahiyat@ui.ac.id', 'gugundahgulana@gmail.com', 0),
(3, '1400122213', 'doni.alamsyah', 'Doni Alamsyah', 'doni.alamsyah@ui.ac.id', 'skywalker17@hotmail.com', 0),
(4, '1250163022', 'andrew.wijaya', 'Andrew Wijaya Sumampan', 'andrew.wijaya@gunadarma.ac.id', 'andrew.wijaya11@gmail.com', 0),
(5, '1206757730', 'gilang.guritno', 'Gilang Guritno', 'gilang.guritno@gunadarma.ac.id', 'gilgur00@hotmail.com', 0);

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
(1, 1, 1, 'CSF1600200', 82.2, 'A-', '1'),
(2, 2, 2, 'CSGE602055', 85.5, 'A', '1'),
(3, 3, 3, 'CSIM603291', 57.57, 'C', '1'),
(4, 4, 4, 'UIGE600010', 90.1, 'A', '1'),
(5, 5, 5, 'CSIE604290', 84.99, 'A-', '1');

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
(1, 1, 75, '00000000002', 3.24),
(2, 2, 80, '00000000002', 3.8),
(3, 3, 65, '00000000002', 2.43),
(4, 4, 20, '00000000002', 4),
(5, 5, 24, '00000000002', 3.51);

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
(1, 1, 0, 0, 1),
(2, 2, 0, 0, 1),
(3, 3, 0, 0, 1),
(4, 4, 0, 0, 1),
(5, 5, 0, 1, 1);

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
-- Indexes for table `biodata_mahasiswa`
--
ALTER TABLE `biodata_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `biodata_mahasiswa_id_uindex` (`id`),
  ADD UNIQUE KEY `biodata_mahasiswa_id_user_mhs_uindex` (`id_user_mhs`);

--
-- Indexes for table `biodata_ortu`
--
ALTER TABLE `biodata_ortu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `biodata_ortu_id_uindex` (`id`),
  ADD KEY `fk_biodata_ortu_npm` (`id_user_mhs`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `identitas_mahasiswa`
--
ALTER TABLE `identitas_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identitas_mahasiswa_id_uindex` (`id`),
  ADD UNIQUE KEY `identitas_mahasiswa_id_user_mhs_uindex` (`id_user_mhs`);

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
  ADD UNIQUE KEY `user_mahasiswa_email_pribadi_uindex` (`email_pribadi`),
  ADD UNIQUE KEY `user_mahasiswa_email_univ_uindex` (`email_univ`),
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
  ADD KEY `penilaian_matkul_irs_id_fk` (`id_irs`),
  ADD KEY `penilaian_matkul_mahasiswa_id_fk` (`id_user_mhs`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `biodata_mahasiswa`
--
ALTER TABLE `biodata_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `biodata_ortu`
--
ALTER TABLE `biodata_ortu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `identitas_mahasiswa`
--
ALTER TABLE `identitas_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_username` FOREIGN KEY (`username`) REFERENCES `akun` (`username`);

--
-- Constraints for table `biodata_mahasiswa`
--
ALTER TABLE `biodata_mahasiswa`
  ADD CONSTRAINT `fk_biodata_mhs_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `biodata_ortu`
--
ALTER TABLE `biodata_ortu`
  ADD CONSTRAINT `fk_biodata_ortu_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `identitas_mahasiswa`
--
ALTER TABLE `identitas_mahasiswa`
  ADD CONSTRAINT `identitas_mahasiswa_mahasiswa_id_fk` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `irs`
--
ALTER TABLE `irs`
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
  ADD CONSTRAINT `fk_riwayat_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `status_lulus`
--
ALTER TABLE `status_lulus`
  ADD CONSTRAINT `fk_status_lulus_npm` FOREIGN KEY (`id_user_mhs`) REFERENCES `mahasiswa` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
