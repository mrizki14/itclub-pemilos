-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 07:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '7cba98c02e0d979c43863d402075cf29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_datapilketos`
--

CREATE TABLE `tb_datapilketos` (
  `id` int(1) NOT NULL DEFAULT '1',
  `tapel` varchar(10) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_datapilketos`
--

INSERT INTO `tb_datapilketos` (`id`, `tapel`, `tgl`) VALUES
(1, '2023', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_identitassekolah`
--

CREATE TABLE `tb_identitassekolah` (
  `npsn` varchar(15) NOT NULL,
  `nm_sekolah` varchar(32) NOT NULL,
  `jln` varchar(32) DEFAULT NULL,
  `desa` varchar(32) DEFAULT NULL,
  `kec` varchar(32) DEFAULT NULL,
  `kab` varchar(32) DEFAULT NULL,
  `kpl_sekolah` varchar(32) DEFAULT NULL,
  `nip` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_identitassekolah`
--

INSERT INTO `tb_identitassekolah` (`npsn`, `nm_sekolah`, `jln`, `desa`, `kec`, `kab`, `kpl_sekolah`, `nip`) VALUES
('20219143', 'IT-CLUB SMK NEGERI 5 BANDUNG', 'Jl. Bojong Koneng No.37A', 'Sukapada', 'Cibeunying Kidul ', 'Bandung', 'DINI YUNINGSIH, S.PD., M.M.PD.', '102841204123809');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kd_kelas` int(3) NOT NULL,
  `nm_kelas` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`kd_kelas`, `nm_kelas`) VALUES
(1, 'X TKJ 1'),
(2, 'X TKJ 2'),
(3, 'X TKJ 3'),
(4, 'XI TKJ 1'),
(5, 'XI TKJ 2'),
(6, 'XI TKJ 3'),
(7, 'XII TKJ 1'),
(8, 'XII TKJ 2'),
(9, 'XII TKJ 3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pilih`
--

CREATE TABLE `tb_pilih` (
  `id_pilih` int(11) NOT NULL,
  `nisn` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pilih`
--

INSERT INTO `tb_pilih` (`id_pilih`, `nisn`, `username`) VALUES
(9, '12345678', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pilihan`
--

CREATE TABLE `tb_pilihan` (
  `nisn` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `visimisi` mediumtext,
  `photo` varchar(32) NOT NULL,
  `no` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pilihan`
--

INSERT INTO `tb_pilihan` (`nisn`, `nama`, `visimisi`, `photo`, `no`) VALUES
('12345671', 'rai', 'wpefeopwnfnpwfni', '12345671.jpeg', 3),
('12345678', 'alan', 'menjadi ultramennnnn', '12345678.jpeg', 1),
('12345679', 'rizki', 'menjadii ndaaa', '12345679.jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nm_siswa` varchar(32) DEFAULT NULL,
  `jk` char(1) NOT NULL,
  `kd_kelas` int(3) DEFAULT NULL,
  `hadir` varchar(12) NOT NULL DEFAULT 'Tidak Hadir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`username`, `password`, `nm_siswa`, `jk`, `kd_kelas`, `hadir`) VALUES
('171807086', '171807086', 'SENDI HERMAWAN PRATAMA P.', 'L', 8, 'Tidak Hadir'),
('23027224', '23027224', 'HAIRIL PAZRI SUBARDJAH', 'L', 7, 'Tidak Hadir'),
('3047611347', '3047611347', 'HILMAN HAERULFADILAH', 'L', 7, 'Tidak Hadir'),
('3048652523', '3048652523', 'SOPI FINA RAHMAWATI', 'P', 7, 'Tidak Hadir'),
('3050384058', '3050384058', 'NURUL HAYA', 'P', 8, 'Tidak Hadir'),
('3051025161', '3051025161', 'SABRINA RIZKY IMDI', 'P', 3, 'Tidak Hadir'),
('3054030568', '3054030568', 'MONICA APRILISTA', 'P', 9, 'Tidak Hadir'),
('3055034194', '3055034194', 'MUHAMMAD ZAKI DWIPUTRA', 'L', 7, 'Tidak Hadir'),
('3061464593', '3061464593', 'JAENAL RAMDHANI', 'L', 3, 'Tidak Hadir'),
('3064003390', '3064003390', 'FARIDL SAPUTRA', 'L', 6, 'Tidak Hadir'),
('37039423', '37039423', 'MEISA SATRIA PAMUNGKAS S.', 'L', 9, 'Tidak Hadir'),
('37194098', '37194098', 'ANNISA RAMADHANIA', 'P', 7, 'Tidak Hadir'),
('37413115', '37413115', 'MUHAMMAD YUSUF GUNAWAN', 'L', 9, 'Tidak Hadir'),
('41101664', '41101664', 'RIZAL TISTA FAUZI', 'L', 7, 'Tidak Hadir'),
('41567350', '41567350', 'SHELLOMITHA RIZQIKA PUTRI G.', 'P', 9, 'Tidak Hadir'),
('41842572', '41842572', 'LAILA SAFITRI', 'P', 8, 'Tidak Hadir'),
('42276513', '42276513', 'DWI FITRIA AGUSTINE', 'P', 7, 'Tidak Hadir'),
('42461733', '42461733', 'CINTIA SASI KIRANI', 'P', 7, 'Tidak Hadir'),
('42901365', '42901365', 'MUHAMNAD NIZAR ZAELANI', 'L', 8, 'Tidak Hadir'),
('43120615', '43120615', 'AFISA SEPTIANI', 'P', 8, 'Tidak Hadir'),
('43163446', '43163446', 'IBRAHIM FAHRIZAL', 'L', 7, 'Tidak Hadir'),
('43269926', '43269926', 'TARDI APENDI', 'L', 9, 'Tidak Hadir'),
('44020131', '44020131', 'DIMAS ADITYA', 'L', 7, 'Tidak Hadir'),
('44201365', '44201365', 'ACHMAD ROHMAN', 'L', 7, 'Tidak Hadir'),
('44471934', '44471934', 'RIZALLUL MAULA', 'L', 8, 'Tidak Hadir'),
('44784999', '44784999', 'LUTHFAN DZUL IKRAM', 'L', 9, 'Tidak Hadir'),
('44828590', '44828590', 'CINTYA CANTIKA PUTRI', 'P', 9, 'Tidak Hadir'),
('45442774', '45442774', 'ARIF WICAKSONO', 'L', 9, 'Tidak Hadir'),
('45450860', '45450860', 'GUSNALDI PRAMUDITA', 'L', 7, 'Tidak Hadir'),
('45453326', '45453326', 'NIDA AGUSTINI', 'P', 9, 'Tidak Hadir'),
('45453334', '45453334', 'GALUH PRATAMA', 'L', 8, 'Tidak Hadir'),
('45453335', '45453335', 'GUGUM GUMELAR', 'L', 9, 'Tidak Hadir'),
('45512016', '45512016', 'WILDAN ARIEF', 'L', 9, 'Tidak Hadir'),
('45958081', '45958081', 'MUH. ALAN RIFKY RAJABPUTRA', 'L', 7, 'Tidak Hadir'),
('46014216', '46014216', 'RIZKY PRATAMA', 'L', 9, 'Tidak Hadir'),
('46054982', '46054982', 'LINA', 'P', 7, 'Tidak Hadir'),
('46334479', '46334479', 'THEMA SITI KHOTIMAH', 'P', 9, 'Tidak Hadir'),
('46334481', '46334481', 'SILA SYAHIDAH', 'P', 9, 'Tidak Hadir'),
('46334483', '46334483', 'DESTIKA MULIANI', 'P', 7, 'Tidak Hadir'),
('46334492', '46334492', 'DILLA DWI LESTARI', 'P', 8, 'Tidak Hadir'),
('46417616', '46417616', 'RAINA SIFA DANIYATI', 'P', 7, 'Tidak Hadir'),
('46491019', '46491019', 'ALIFIA WAHYUNI', 'P', 7, 'Tidak Hadir'),
('46679621', '46679621', 'IZAL ISMAIL GUSTIAWAN', 'L', 7, 'Tidak Hadir'),
('46778690', '46778690', 'EKA SAPUTRA', 'L', 9, 'Tidak Hadir'),
('46831509', '46831509', 'TIO PRATAMA NUGRAHA', 'L', 9, 'Tidak Hadir'),
('47179645', '47179645', 'ELIS SALWA FAUZIAH', 'P', 8, 'Tidak Hadir'),
('47652960', '47652960', 'M.RIZKI FIRMANSYAH', 'L', 8, 'Tidak Hadir'),
('47756854', '47756854', 'REVALDI WINANTO PRATAMA', 'L', 4, 'Tidak Hadir'),
('48234748', '48234748', 'MUHAMMAD IRSAN NUGRAHA', 'L', 8, 'Tidak Hadir'),
('48306798', '48306798', 'ALDI ALDIANSAH', 'L', 9, 'Tidak Hadir'),
('48495350', '48495350', 'MUH. RAFLY FADHIL HUSAINI', 'L', 9, 'Tidak Hadir'),
('48650463', '48650463', 'NENTI WINARTI', 'P', 8, 'Tidak Hadir'),
('49345847', '49345847', 'MUH. ZAKIATHAR ATHAYA', 'L', 9, 'Tidak Hadir'),
('49944526', '49944526', 'NAZZAR MAULANA', 'L', 8, 'Tidak Hadir'),
('50854964', '50854964', 'FADLY NUR ZACKY', 'L', 8, 'Tidak Hadir'),
('50975212', '50975212', 'BILI MAHESA', 'L', 8, 'Tidak Hadir'),
('51368360', '51368360', 'MOHAMAD FADHIL AKBAR HIDAYAT', 'L', 7, 'Tidak Hadir'),
('51624538', '51624538', 'RAFI JATI RAMDHANI', 'L', 5, 'Tidak Hadir'),
('51666441', '51666441', 'PAUZAN PADILAH', 'L', 4, 'Tidak Hadir'),
('51735417', '51735417', 'SUCI KHAIRUNNISA', 'P', 7, 'Tidak Hadir'),
('51784617', '51784617', 'MUHAMMAD DANIL SUBARKAH', 'L', 8, 'Tidak Hadir'),
('51856781', '51856781', 'AKBAR NUGRAHA', 'L', 6, 'Tidak Hadir'),
('52025019', '52025019', 'SHENI ATHARIDA RAMADHANI', 'P', 5, 'Tidak Hadir'),
('52105770', '52105770', 'REYNA AWLIYA HANANIA', 'P', 9, 'Tidak Hadir'),
('52137001', '52137001', 'WINNY WAHYUNI', 'P', 9, 'Tidak Hadir'),
('52151929', '52151929', 'LANDRA DAFA ILHAM', 'L', 4, 'Tidak Hadir'),
('52328538', '52328538', 'ERVAN FAHRI ADRIANSYAH WAHAB', 'L', 9, 'Tidak Hadir'),
('52388555', '52388555', 'SILVIANA EKAYANTI PUTRI', 'P', 6, 'Tidak Hadir'),
('52410467', '52410467', 'NURUL DWI FEBRIANY', 'P', 9, 'Tidak Hadir'),
('52460176', '52460176', 'RIZKI SETIAWAN', 'L', 5, 'Tidak Hadir'),
('52502980', '52502980', 'MUHAMMAD RAFKY ARDANA', 'L', 8, 'Tidak Hadir'),
('52641619', '52641619', 'MARYANI', 'P', 9, 'Tidak Hadir'),
('52643531', '52643531', 'SELPI DIANA', 'P', 5, 'Tidak Hadir'),
('52680582', '52680582', 'SYAHRUL GINANJAR', 'L', 5, 'Tidak Hadir'),
('52798204', '52798204', 'ABGHIYA FADILAH RAHMANI', 'P', 7, 'Tidak Hadir'),
('52884872', '52884872', 'PUTRI ALIFIA ZAHRA', 'P', 8, 'Tidak Hadir'),
('52955644', '52955644', 'CICI CANTIKA', 'P', 7, 'Tidak Hadir'),
('53132930', '53132930', 'DEA APRILIA AL ZAUZIAH', 'P', 7, 'Tidak Hadir'),
('53171317', '53171317', 'ANDINI HARDIYANTI', 'P', 6, 'Tidak Hadir'),
('53191721', '53191721', 'ANDINI MEYNISA', 'P', 8, 'Tidak Hadir'),
('53413712', '53413712', 'ANGGA NUR RIZKI', 'L', 4, 'Tidak Hadir'),
('53438280', '53438280', 'AHMAD JAENAL SIDIK', 'L', 8, 'Tidak Hadir'),
('53438284', '53438284', 'RAFI HILMI DZAKI', 'L', 8, 'Tidak Hadir'),
('53438296', '53438296', 'ELLIN MARLINA', 'P', 4, 'Tidak Hadir'),
('53440740', '53440740', 'FADIL AWALUDIN', 'L', 6, 'Tidak Hadir'),
('53480650', '53480650', 'INDRA NURYANA', 'L', 7, 'Tidak Hadir'),
('53632548', '53632548', 'ARINDA NUR SABRINA', 'P', 8, 'Tidak Hadir'),
('53681256', '53681256', 'RISKA NUROKTAVIANI', 'P', 4, 'Tidak Hadir'),
('53702640', '53702640', 'SITI NAHDIIFAH ADHWAA AMALIA', 'P', 5, 'Tidak Hadir'),
('53710173', '53710173', 'M.DZIKRI PRATAMA', 'L', 7, 'Tidak Hadir'),
('53969489', '53969489', 'ANDIKA SATRIAPUTRA RAMADAN', 'L', 4, 'Tidak Hadir'),
('54354750', '54354750', 'RAISSA NUR RAHMAN', 'P', 4, 'Tidak Hadir'),
('54371237', '54371237', 'RESTY AGUSTINA WARDANY', 'P', 6, 'Tidak Hadir'),
('54401340', '54401340', 'SHAFIRA AZ-ZAHRA NUHROVA', 'P', 7, 'Tidak Hadir'),
('54411904', '54411904', 'IQBAL TAOUFIK NUGRAHA', 'L', 4, 'Tidak Hadir'),
('54509666', '54509666', 'SYAHLA TASYA KAMILA', 'P', 7, 'Tidak Hadir'),
('54731718', '54731718', 'MELIANI PUSPITA SARI', 'P', 8, 'Tidak Hadir'),
('54745608', '54745608', 'PUTRI DEWINA', 'P', 9, 'Tidak Hadir'),
('54925784', '54925784', 'IRFAN RUBIANSYAH MANAF', 'L', 9, 'Tidak Hadir'),
('55045952', '55045952', 'ERIEL MALIQ RAMADHAN', 'L', 6, 'Tidak Hadir'),
('55171034', '55171034', 'RAI FADHILAH', 'L', 8, 'Tidak Hadir'),
('552322797', '552322797', 'MEISYA DWI LESTARI', 'P', 7, 'Tidak Hadir'),
('55277617', '55277617', 'SILVI FITRIANI', 'P', 4, 'Tidak Hadir'),
('55367245', '55367245', 'YASMIN NAILA PUTRI', 'P', 5, 'Tidak Hadir'),
('55373804', '55373804', 'DAFFA ALIF AZ ZAHRAN', 'L', 9, 'Tidak Hadir'),
('55427922', '55427922', 'BILLY SURYA LAKSANA', 'L', 4, 'Tidak Hadir'),
('55441006', '55441006', 'LIA HASANAH', 'P', 6, 'Tidak Hadir'),
('55478401', '55478401', 'SHOFIYAH', 'P', 9, 'Tidak Hadir'),
('55658159', '55658159', 'HERLINA PUSPITADEWI', 'P', 6, 'Tidak Hadir'),
('55668411', '55668411', 'REISA MELANI AZAHRA', 'P', 7, 'Tidak Hadir'),
('55694712', '55694712', 'MUHAMMAD NURDIN ISMAIL', 'L', 6, 'Tidak Hadir'),
('55749900', '55749900', 'DESI PUTRINA SARI', 'P', 4, 'Tidak Hadir'),
('55784287', '55784287', 'RAFFA ZOANEIRA RAMANTIKA', 'L', 9, 'Tidak Hadir'),
('56005131', '56005131', 'DINI SUNDARI', 'P', 4, 'Tidak Hadir'),
('56209349', '56209349', 'SINTIA', 'P', 6, 'Tidak Hadir'),
('56307924', '56307924', 'DEILAN MELLANDRI', 'L', 9, 'Tidak Hadir'),
('56325896', '56325896', 'DEVITA SRI MULYANI', 'P', 6, 'Tidak Hadir'),
('56560211', '56560211', 'NOVAL SETIAWAN HADIANTO', 'L', 6, 'Tidak Hadir'),
('56610534', '56610534', 'VARELL DAFFA FAHREZI', 'L', 4, 'Tidak Hadir'),
('56625187', '56625187', 'ISMI RAMADHANI', 'P', 5, 'Tidak Hadir'),
('56651639', '56651639', 'SILVIANTI', 'P', 5, 'Tidak Hadir'),
('56726018', '56726018', 'MARCEL RIFKY WAHYUDI', 'L', 5, 'Tidak Hadir'),
('56895417', '56895417', 'RIDWAN SULISTIO', 'L', 5, 'Tidak Hadir'),
('56897903', '56897903', 'MOCHAMMAD ARDHI PRATAMA', 'L', 7, 'Tidak Hadir'),
('56907173', '56907173', 'DONY ADRIANSAH', 'L', 7, 'Tidak Hadir'),
('56927737', '56927737', 'MUHAMAD FAJRI NASTIAR', 'L', 4, 'Tidak Hadir'),
('57005094', '57005094', 'ADI RAHMADI', 'L', 5, 'Tidak Hadir'),
('57119951', '57119951', 'NAZWA MUTIARA FADILLAH', 'P', 9, 'Tidak Hadir'),
('57143426', '57143426', 'NENG SINTA PATMAWATI', 'P', 8, 'Tidak Hadir'),
('57258183', '57258183', 'YESI AISYAH', 'P', 8, 'Tidak Hadir'),
('57287044', '57287044', 'CANDRA HERDIAN DINATA', 'L', 7, 'Tidak Hadir'),
('57557962', '57557962', 'ANNISA MEILANY', 'P', 8, 'Tidak Hadir'),
('57589877', '57589877', 'VINCENTIUS ANANTO GALIH R.', 'L', 9, 'Tidak Hadir'),
('57600133', '57600133', 'FUJIANSYAH SA UD', 'L', 8, 'Tidak Hadir'),
('57648070', '57648070', 'LINDA ANJARINI', 'P', 5, 'Tidak Hadir'),
('58015327', '58015327', 'NADZRIL ILHAM AZKA HANIF', 'L', 6, 'Tidak Hadir'),
('58015972', '58015972', 'ALWI FIRMANSYAH EFENDI', 'L', 6, 'Tidak Hadir'),
('58034825', '58034825', 'RAFI HAZIM MUZAKKI', 'L', 6, 'Tidak Hadir'),
('58096336', '58096336', 'RISKA TRIANA DEWI', 'P', 9, 'Tidak Hadir'),
('58127443', '58127443', 'FATURRAHMAN FADILAH', 'L', 6, 'Tidak Hadir'),
('58185150', '58185150', 'DEVI FEBRIANTI', 'P', 7, 'Tidak Hadir'),
('58251075', '58251075', 'SATIA MULYANA', 'L', 5, 'Tidak Hadir'),
('58270120', '58270120', 'DISA WIDIA PEBRIANI', 'P', 8, 'Tidak Hadir'),
('58479184', '58479184', 'MUTIA SEKAR PITALOKA', 'P', 8, 'Tidak Hadir'),
('58631877', '58631877', 'DHEANDRA SALMA NEISHA', 'P', 5, 'Tidak Hadir'),
('58677549', '58677549', 'SELA MUTIA', 'P', 9, 'Tidak Hadir'),
('58744058', '58744058', 'RISMAYANTI', 'P', 4, 'Tidak Hadir'),
('58775338', '58775338', 'FAUZAN ISKANDAR RAHARJA', 'L', 5, 'Tidak Hadir'),
('58879569', '58879569', 'MUTHIA KHAIRUNNISA', 'P', 9, 'Tidak Hadir'),
('58893818', '58893818', 'HIKMAT NURALAM', 'L', 8, 'Tidak Hadir'),
('59026020', '59026020', 'SISKA APRILIANI', 'P', 8, 'Tidak Hadir'),
('59225167', '59225167', 'RADITYA WARANGGANI', 'L', 7, 'Tidak Hadir'),
('59243244', '59243244', 'REITANDI NUGRAHA', 'L', 5, 'Tidak Hadir'),
('59332403', '59332403', 'VIOLA NICKI VIVI ANGGRAENI', 'P', 6, 'Tidak Hadir'),
('59333071', '59333071', 'ARYA YUSUF BHAGAWANTA', 'L', 4, 'Tidak Hadir'),
('59933182', '59933182', 'THIFAL ABRAR HIDAYAT', 'L', 8, 'Tidak Hadir'),
('59979481', '59979481', 'INTAN YUSTIANI', 'P', 3, 'Tidak Hadir'),
('6053050648', '6053050648', 'RAVLY PUTRA MAULANA', 'L', 7, 'Tidak Hadir'),
('61053584', '61053584', 'ALFIAN GANDARA PERMANA', 'L', 6, 'Tidak Hadir'),
('61134033', '61134033', 'RESYA PUTRI SALSABILA', 'P', 5, 'Tidak Hadir'),
('61161026', '61161026', 'NAUFAL AZIS FIRDAUS', 'L', 4, 'Tidak Hadir'),
('61254639', '61254639', 'MUHAMMAD YUSUF NAUVAL', 'L', 2, 'Tidak Hadir'),
('61258400', '61258400', 'YOLAN ILHAM RABANI', 'L', 3, 'Tidak Hadir'),
('61342554', '61342554', 'ILHAM TRI HARDIANTO', 'L', 4, 'Tidak Hadir'),
('61389842', '61389842', 'IBNU RAIHAN', 'L', 5, 'Tidak Hadir'),
('61407505', '61407505', 'GEUGEUT FARSHANDA', 'P', 4, 'Tidak Hadir'),
('61614082', '61614082', 'WINDI NOVITASARI', 'P', 2, 'Tidak Hadir'),
('61665949', '61665949', 'BAGUS SURYA RAMADAN', 'L', 5, 'Tidak Hadir'),
('61718420', '61718420', 'KIRAL ALDANAR', 'L', 1, 'Tidak Hadir'),
('61729280', '61729280', 'TEGAR HERMAWAN', 'L', 4, 'Tidak Hadir'),
('61811130', '61811130', 'MUHAMMAD AKBAR EMUR HERMAWAN', 'L', 1, 'Tidak Hadir'),
('61839057', '61839057', 'ASY SYAMS', 'L', 1, 'Tidak Hadir'),
('61904045', '61904045', 'MUHAMMAD RIDWAN', 'L', 6, 'Tidak Hadir'),
('61922825', '61922825', 'ADITIA PRATAMA', 'L', 5, 'Tidak Hadir'),
('61928075', '61928075', 'RIYAN HANDRIYANA', 'L', 1, 'Tidak Hadir'),
('61945871', '61945871', 'MUHAMAD GALAN PRADITA', 'L', 4, 'Tidak Hadir'),
('62469187', '62469187', 'RAFLI INSAN KARIM', 'L', 1, 'Tidak Hadir'),
('62486867', '62486867', 'SANDI VIRGIAWAN', 'L', 1, 'Tidak Hadir'),
('62498769', '62498769', 'ASFARAINIY ZULFAISA', 'P', 5, 'Tidak Hadir'),
('62505246', '62505246', 'NENG ROSITA PUTRI ALISYA', 'P', 1, 'Tidak Hadir'),
('62509613', '62509613', 'SALSA AZZAHRA', 'P', 1, 'Tidak Hadir'),
('62615137', '62615137', 'AHMAD AFFANDI', 'L', 2, 'Tidak Hadir'),
('63152169', '63152169', 'FARZALIANO DWIPUTRA HERYADI', 'L', 1, 'Tidak Hadir'),
('63270725', '63270725', 'DEANDRA ARIANTO SAPUTRA', 'L', 3, 'Tidak Hadir'),
('63291805', '63291805', 'ADELIA YUNITA PUTRI', 'P', 3, 'Tidak Hadir'),
('63626018', '63626018', 'DAFA ZIDANE ANDRIAWAN', 'L', 4, 'Tidak Hadir'),
('63778682', '63778682', 'NAJIB MAHMUBILLAH', 'L', 3, 'Tidak Hadir'),
('64008292', '64008292', 'FADILAH NUR`AINI', 'P', 3, 'Tidak Hadir'),
('64215486', '64215486', 'AURA FISA BELLA', 'P', 2, 'Tidak Hadir'),
('64295607', '64295607', 'SABILA ALZAHRA HERMANIKA', 'P', 4, 'Tidak Hadir'),
('64365603', '64365603', 'LESTA RAMADHANI', 'P', 2, 'Tidak Hadir'),
('64387840', '64387840', 'AMANDA HARYANI', 'P', 5, 'Tidak Hadir'),
('64405899', '64405899', 'MOCHAMMAD DAVA GHIFARY', 'L', 3, 'Tidak Hadir'),
('64413652', '64413652', 'CITRA RENA APRILIA', 'P', 6, 'Tidak Hadir'),
('64530626', '64530626', 'VINCENCIUS ANDRI MARULITUA S', 'L', 3, 'Tidak Hadir'),
('64564862', '64564862', 'NIRANA AZ-ZAHRA', 'P', 2, 'Tidak Hadir'),
('64671042', '64671042', 'DZAKII RABBAANII', 'L', 5, 'Tidak Hadir'),
('64722015', '64722015', 'ALYA KHAIRUNNISA', 'P', 1, 'Tidak Hadir'),
('64782300', '64782300', 'VILENA QOIRUL NISA', 'P', 4, 'Tidak Hadir'),
('64799073', '64799073', 'JIHAN RODIAH', 'P', 6, 'Tidak Hadir'),
('64849564', '64849564', 'RIFQI JANUR HAYAT', 'L', 4, 'Tidak Hadir'),
('64935057', '64935057', 'KRISNA MARDIANA', 'L', 2, 'Tidak Hadir'),
('65111098', '65111098', 'AMEERA FAYYAZA KEYSATIA SETIAWAN', 'P', 4, 'Tidak Hadir'),
('65221156', '65221156', 'RAFIF RAMDHANI', 'L', 3, 'Tidak Hadir'),
('65382912', '65382912', 'AIRLANGGA PUTRA SUMADI', 'L', 1, 'Tidak Hadir'),
('65403796', '65403796', 'RIKI RAMDANI', 'L', 2, 'Tidak Hadir'),
('65492266', '65492266', 'TRIANA NURAENI', 'P', 6, 'Tidak Hadir'),
('65498246', '65498246', 'ARDI RAMDHAN MAULANA', 'L', 6, 'Tidak Hadir'),
('65602497', '65602497', 'DEVINDA MUTIARA APRILLIANDA', 'P', 4, 'Tidak Hadir'),
('65819831', '65819831', 'YULIA RAHMA INAYATI', 'P', 3, 'Tidak Hadir'),
('65878117', '65878117', 'SITI ZAHRA ELYA NURFADILLAH', 'P', 4, 'Tidak Hadir'),
('66031835', '66031835', 'NASA PANDINI', 'P', 2, 'Tidak Hadir'),
('66042264', '66042264', 'MUHAMAD YASIR ALPARISI', 'L', 6, 'Tidak Hadir'),
('66140833', '66140833', 'ABDUL HADI', 'L', 3, 'Tidak Hadir'),
('66247994', '66247994', 'GHASSAN FALIH MUSYAFFA', 'L', 2, 'Tidak Hadir'),
('66273167', '66273167', 'RIKE PUTRI NUR ANJANI', 'P', 3, 'Tidak Hadir'),
('66431767', '66431767', 'FEVI ANGGRAENI', 'P', 5, 'Tidak Hadir'),
('66477360', '66477360', 'M. DAVA', 'L', 3, 'Tidak Hadir'),
('66485018', '66485018', 'TINA AULIA SARI', 'P', 4, 'Tidak Hadir'),
('66576102', '66576102', 'RAFI FATHUROHMAN GHANI', 'L', 1, 'Tidak Hadir'),
('66581079', '66581079', 'SILVI NUR KHORUNNISA', 'P', 6, 'Tidak Hadir'),
('66605655', '66605655', 'MISA YUNITA', 'P', 4, 'Tidak Hadir'),
('66732170', '66732170', 'NAUFAL FAJAR', 'L', 5, 'Tidak Hadir'),
('66745308', '66745308', 'LEXA APRILLIANI', 'P', 5, 'Tidak Hadir'),
('66832853', '66832853', 'SANTI ROSMAYANTI', 'P', 2, 'Tidak Hadir'),
('66858154', '66858154', 'MUHAMMAD RIZKY AL BUKHORI', 'L', 5, 'Tidak Hadir'),
('66903050', '66903050', 'AULIA SRI NAJMIANI', 'P', 3, 'Tidak Hadir'),
('67046805', '67046805', 'DANU MUHAMMAD KAROMAH', 'L', 2, 'Tidak Hadir'),
('67055226', '67055226', 'ZAKIRA NAYA DIYANA', 'P', 6, 'Tidak Hadir'),
('67115436', '67115436', 'REVA NURUL AINI', 'P', 6, 'Tidak Hadir'),
('67287139', '67287139', 'WIDIA ANGGRAENI', 'P', 5, 'Tidak Hadir'),
('67348773', '67348773', 'ADELIA REGINA PUTRI', 'P', 2, 'Tidak Hadir'),
('67349682', '67349682', 'WULAN NURAIDHA', 'P', 6, 'Tidak Hadir'),
('67371014', '67371014', 'TATIA MUSTIKA RAHAYU', 'P', 6, 'Tidak Hadir'),
('67380170', '67380170', 'NURKALAM ABDURRAHMAN', 'L', 1, 'Tidak Hadir'),
('67449657', '67449657', 'ALFAREL ABU SOPYAN TRIADI', 'L', 4, 'Tidak Hadir'),
('67641767', '67641767', 'ILHAM NURFARIZ FAUZAN', 'L', 5, 'Tidak Hadir'),
('67679540', '67679540', 'SEVIAN LUDIANA', 'L', 1, 'Tidak Hadir'),
('67831754', '67831754', 'DIMAS SEPTIADI', 'L', 1, 'Tidak Hadir'),
('67929279', '67929279', 'RIZKY IHSAN DENDIANA', 'L', 2, 'Tidak Hadir'),
('67985166', '67985166', 'RASYID MUTTAWAKIL IDHARUDIN', 'L', 6, 'Tidak Hadir'),
('67988819', '67988819', 'RAFLI RUSDIANA SADELI', 'L', 4, 'Tidak Hadir'),
('68080920', '68080920', 'ANDIN SUCIYANI AGUSTIN', 'P', 3, 'Tidak Hadir'),
('68088701', '68088701', 'FARHAN FADILLAH', 'L', 2, 'Tidak Hadir'),
('68124470', '68124470', 'ARYA DWI FEBRIAN', 'L', 5, 'Tidak Hadir'),
('68228397', '68228397', 'FAJAR MARDIANSYAH', 'L', 5, 'Tidak Hadir'),
('68651901', '68651901', 'ERVINA AMALIA PUTRI', 'P', 5, 'Tidak Hadir'),
('68815673', '68815673', 'FELI AYUNISA LIKANANDA', 'P', 6, 'Tidak Hadir'),
('69129632', '69129632', 'SATRIO SEPTIAN', 'L', 3, 'Tidak Hadir'),
('69223721', '69223721', 'DZILLAN ZAIN AL MUTTAQIEN', 'L', 6, 'Tidak Hadir'),
('69325232', '69325232', 'NABIL MOHAMAD HIDAYAT', 'L', 2, 'Tidak Hadir'),
('69399652', '69399652', 'TOMMY SEBASTIAN ALTAF', 'L', 1, 'Tidak Hadir'),
('69423108', '69423108', 'NURLAILA SALSABILA', 'P', 9, 'Tidak Hadir'),
('69463270', '69463270', 'NADHIF HAIDAR PRIMA', 'L', 1, 'Tidak Hadir'),
('69484431', '69484431', 'FERDIANSYAH', 'L', 2, 'Tidak Hadir'),
('69498966', '69498966', 'RAHMAT DIANTORO', 'L', 6, 'Tidak Hadir'),
('69791283', '69791283', 'SHAUKY ALBAR MUNTASHARI', 'L', 5, 'Tidak Hadir'),
('69808859', '69808859', 'EGI SOPANDI', 'L', 1, 'Tidak Hadir'),
('69834573', '69834573', 'MUHAMMAD FAJAR SEPTIAWAN', 'L', 1, 'Tidak Hadir'),
('69960695', '69960695', 'ADINDA PUTRI KHANIFAH', 'P', 3, 'Tidak Hadir'),
('71525729', '71525729', 'KHULIKA NURDAFIQIN', 'L', 3, 'Tidak Hadir'),
('71541037', '71541037', 'VANDI ADI FIRMANSYAH', 'L', 2, 'Tidak Hadir'),
('71724652', '71724652', 'ELFANDA ZULKHA RACHMAT', 'P', 2, 'Tidak Hadir'),
('71777754', '71777754', 'ADKYA NURPITA AYU', 'P', 1, 'Tidak Hadir'),
('71904433', '71904433', 'RISKI BASTIAN', 'L', 1, 'Tidak Hadir'),
('71913171', '71913171', 'REZA ADITHYA WIJAYA', 'L', 3, 'Tidak Hadir'),
('71935438', '71935438', 'LUTHFI RIZKI APRIAN', 'L', 2, 'Tidak Hadir'),
('72074878', '72074878', 'FAZNI ANISA QHOIRUL MUSTOPA', 'P', 3, 'Tidak Hadir'),
('72202342', '72202342', 'RIVANI AZHAR', 'P', 3, 'Tidak Hadir'),
('72243071', '72243071', 'NIKEN AMELIA FEBRIANI', 'P', 3, 'Tidak Hadir'),
('72626491', '72626491', 'REVALDI MUHAMAD SETIANTO', 'L', 3, 'Tidak Hadir'),
('72686838', '72686838', 'NATASYA PRISCILLIA SHERLY', 'P', 2, 'Tidak Hadir'),
('72729584', '72729584', 'YUSVITA SARI', 'P', 2, 'Tidak Hadir'),
('72827206', '72827206', 'RUSYDI ANWAR HIBATULLAH', 'L', 1, 'Tidak Hadir'),
('74474729', '74474729', 'KHARISMA ISMAYA AL WAHAB', 'L', 3, 'Tidak Hadir'),
('74483051', '74483051', 'ADI ADITYA', 'L', 1, 'Tidak Hadir'),
('74557008', '74557008', 'FABYAN FEBRYANA LUKMANSYAH', 'L', 2, 'Tidak Hadir'),
('74614137', '74614137', 'TSURAYA JINAN KOSWARA MUKTI', 'P', 3, 'Tidak Hadir'),
('74778456', '74778456', 'SUCI INDRIA KASIH', 'P', 2, 'Tidak Hadir'),
('74796310', '74796310', 'PADLI NURYAN SAPUTRA', 'L', 3, 'Tidak Hadir'),
('74819936', '74819936', 'ALVIN RANDY SAPUTRA', 'L', 2, 'Tidak Hadir'),
('74841200', '74841200', 'RIMBA SEPTHA MANDALA', 'L', 2, 'Tidak Hadir'),
('74881408', '74881408', 'FAJAR ANDRIANSAH', 'L', 6, 'Tidak Hadir'),
('75251660', '75251660', 'YARRA MELIANTI', 'P', 2, 'Tidak Hadir'),
('75254496', '75254496', 'RASENDRIYA RASYAD SIDIQ ISKANDAR', 'L', 1, 'Tidak Hadir'),
('75333826', '75333826', 'ILHAM TABAH KURNIAWAN', 'L', 1, 'Tidak Hadir'),
('75698490', '75698490', 'RAFLI FIRDAUS', 'L', 2, 'Tidak Hadir'),
('75908144', '75908144', 'RAIHAN AL HAVSI', 'L', 1, 'Tidak Hadir'),
('76322501', '76322501', 'MUHAMMAD NAUFAL IKHSAN', 'L', 3, 'Tidak Hadir'),
('76584528', '76584528', 'ZEN AZURA', 'L', 1, 'Tidak Hadir'),
('76685721', '76685721', 'ILMA NUR LATIFAH', 'P', 2, 'Tidak Hadir'),
('76695541', '76695541', 'KAILA LESTA NUGRAHA', 'P', 3, 'Tidak Hadir'),
('77207163', '77207163', 'MUHAMMAD ABDULLAH', 'L', 2, 'Tidak Hadir'),
('77385018', '77385018', 'NISSA NURSYFA', 'P', 3, 'Tidak Hadir'),
('77932137', '77932137', 'MUHAMAD RAFIANSYAH', 'L', 3, 'Tidak Hadir'),
('77957688', '77957688', 'MUHAMMAD RAFLI', 'L', 1, 'Tidak Hadir'),
('78010527', '78010527', 'SANI BUNGA LESTARI', 'P', 2, 'Tidak Hadir'),
('78161670', '78161670', 'MARSYA NURFITRI', 'P', 1, 'Tidak Hadir'),
('78205952', '78205952', 'NAYLA HUSNUL ANDRIANSYAH', 'P', 3, 'Tidak Hadir'),
('78314087', '78314087', 'MUHAMMAD RIZAL GIFFARI', 'L', 2, 'Tidak Hadir'),
('78326601', '78326601', 'WANDI APRIANSYAH', 'L', 1, 'Tidak Hadir'),
('78655035', '78655035', 'ANDINI NURHIDAYATI', 'P', 1, 'Tidak Hadir'),
('78686479', '78686479', 'MUHAMMAD DEFA ARIANDI', 'L', 1, 'Tidak Hadir'),
('79001939', '79001939', 'PATIA PEBIANA', 'P', 2, 'Tidak Hadir'),
('79033079', '79033079', 'SYIFA RAHMA RIYANTI', 'P', 3, 'Tidak Hadir'),
('79273513', '79273513', 'ADINDA JULIA ANGGRAENI', 'P', 2, 'Tidak Hadir'),
('79415772', '79415772', 'KEISHA AZURRA PUTRI KURNIAWAN', 'P', 1, 'Tidak Hadir'),
('79480926', '79480926', 'HANY YULIANDINI', 'P', 2, 'Tidak Hadir'),
('79520487', '79520487', 'FACHRI FADILAH', 'L', 1, 'Tidak Hadir'),
('79598134', '79598134', 'SABIQ AWALUSYABAB', 'L', 3, 'Tidak Hadir'),
('79910235', '79910235', 'BAYU RULIFF SOFIAN', 'L', 1, 'Tidak Hadir'),
('79996179', '79996179', 'KEYSHA ADYA GUNAWAN', 'L', 1, 'Tidak Hadir'),
('79999039', '79999039', 'DAFA NURALISYAH', 'P', 2, 'Tidak Hadir');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_daftarhadir`
-- (See below for the actual view)
--
CREATE TABLE `view_daftarhadir` (
`NISN` varchar(32)
,`nm_siswa` varchar(32)
,`nm_kelas` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_vote`
-- (See below for the actual view)
--
CREATE TABLE `view_vote` (
`nisn` varchar(32)
,`nama` varchar(32)
,`photo` varchar(32)
,`no` int(1)
,`username` varchar(32)
);

-- --------------------------------------------------------

--
-- Structure for view `view_daftarhadir`
--
DROP TABLE IF EXISTS `view_daftarhadir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_daftarhadir`  AS  select `tb_siswa`.`username` AS `NISN`,`tb_siswa`.`nm_siswa` AS `nm_siswa`,`tb_kelas`.`nm_kelas` AS `nm_kelas` from ((`tb_siswa` join `tb_kelas` on((`tb_kelas`.`kd_kelas` = `tb_siswa`.`kd_kelas`))) join `tb_pilih` on((`tb_siswa`.`username` = `tb_pilih`.`username`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_vote`
--
DROP TABLE IF EXISTS `view_vote`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_vote`  AS  select `tb_pilihan`.`nisn` AS `nisn`,`tb_pilihan`.`nama` AS `nama`,`tb_pilihan`.`photo` AS `photo`,`tb_pilihan`.`no` AS `no`,`tb_siswa`.`username` AS `username` from ((`tb_pilih` join `tb_pilihan` on((`tb_pilihan`.`nisn` = `tb_pilih`.`nisn`))) join `tb_siswa` on((`tb_siswa`.`username` = `tb_pilih`.`username`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_datapilketos`
--
ALTER TABLE `tb_datapilketos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_identitassekolah`
--
ALTER TABLE `tb_identitassekolah`
  ADD PRIMARY KEY (`npsn`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tb_pilih`
--
ALTER TABLE `tb_pilih`
  ADD PRIMARY KEY (`id_pilih`);

--
-- Indexes for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kd_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pilih`
--
ALTER TABLE `tb_pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
