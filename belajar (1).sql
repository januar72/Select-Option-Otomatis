-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2024 pada 04.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `peng_kota`
--

CREATE TABLE `peng_kota` (
  `kota_id` int(11) NOT NULL,
  `kota_nama` varchar(255) NOT NULL,
  `prov_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peng_kota`
--

INSERT INTO `peng_kota` (`kota_id`, `kota_nama`, `prov_id_fk`) VALUES
(1, 'Banda Aceh', 1),
(2, 'Medan', 2),
(3, 'Makasar', 4),
(4, 'Jakarta', 3),
(5, 'Banjarmasin', 5),
(6, 'Merauke', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peng_kurir`
--

CREATE TABLE `peng_kurir` (
  `kurir_id` int(11) NOT NULL,
  `kurir_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peng_kurir`
--

INSERT INTO `peng_kurir` (`kurir_id`, `kurir_nama`) VALUES
(1, 'JNE'),
(2, 'TIKI'),
(3, 'POS Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peng_provinsi`
--

CREATE TABLE `peng_provinsi` (
  `prov_id` int(11) NOT NULL,
  `prov_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peng_provinsi`
--

INSERT INTO `peng_provinsi` (`prov_id`, `prov_nama`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'DKI Jakarta'),
(4, 'Sulawesi Selatan'),
(5, 'Kalimantan Selatan'),
(6, 'Papua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peng_tarif`
--

CREATE TABLE `peng_tarif` (
  `tarif_id` int(11) NOT NULL,
  `tarif` int(10) NOT NULL,
  `kurir_id_fk` int(11) NOT NULL,
  `kota_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peng_tarif`
--

INSERT INTO `peng_tarif` (`tarif_id`, `tarif`, `kurir_id_fk`, `kota_id_fk`) VALUES
(1, 20000, 2, 1),
(2, 30000, 2, 4),
(3, 35000, 3, 3),
(6, 28000, 1, 5),
(7, 33000, 2, 6),
(8, 25000, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `person`
--

INSERT INTO `person` (`id`, `nama`, `nik`, `umur`, `alamat`) VALUES
(1, 'jen', '3413131', '27', 'Kapu'),
(2, 'Sam', '343535', '24', 'Mbapo'),
(3, 'jek', '33535', '23', 'jeksdsd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fakultas`
--

CREATE TABLE `tbl_fakultas` (
  `fakultas_id` int(11) NOT NULL,
  `fakultas_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`fakultas_id`, `fakultas_nama`) VALUES
(1, 'Teknik'),
(2, 'Hukum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `jurusan_id` int(11) NOT NULL,
  `jurusan_fakultas` int(11) NOT NULL,
  `jurusan_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`jurusan_id`, `jurusan_fakultas`, `jurusan_nama`) VALUES
(1, 1, 'Teknik Informatika'),
(2, 1, 'Teknik Elektro'),
(3, 1, 'Teknik Sipil'),
(4, 1, 'Teknik Industri'),
(5, 2, 'Hukum Perdata'),
(6, 2, 'Hukum Pidana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `fakultas` int(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hasil`
--

INSERT INTO `tb_hasil` (`id_hasil`, `fakultas`, `jurusan`, `alamat`) VALUES
(69, 2, 'Hukum Perdata', 'Jl. Dipatiukur 112-114 Bandung '),
(70, 2, 'Hukum Perdata', 'CILEDUG'),
(71, 2, 'Hukum Perdata', 'CILEDUG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `peng_kota`
--
ALTER TABLE `peng_kota`
  ADD PRIMARY KEY (`kota_id`),
  ADD KEY `prov_id_fk` (`prov_id_fk`);

--
-- Indeks untuk tabel `peng_kurir`
--
ALTER TABLE `peng_kurir`
  ADD PRIMARY KEY (`kurir_id`);

--
-- Indeks untuk tabel `peng_provinsi`
--
ALTER TABLE `peng_provinsi`
  ADD PRIMARY KEY (`prov_id`);

--
-- Indeks untuk tabel `peng_tarif`
--
ALTER TABLE `peng_tarif`
  ADD PRIMARY KEY (`tarif_id`),
  ADD KEY `kota_id_fk` (`kota_id_fk`),
  ADD KEY `kurir_id_fk` (`kurir_id_fk`);

--
-- Indeks untuk tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  ADD PRIMARY KEY (`fakultas_id`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`jurusan_id`),
  ADD KEY `jurusan_fakultas` (`jurusan_fakultas`);

--
-- Indeks untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `fakultas` (`fakultas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peng_kota`
--
ALTER TABLE `peng_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `peng_kurir`
--
ALTER TABLE `peng_kurir`
  MODIFY `kurir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peng_provinsi`
--
ALTER TABLE `peng_provinsi`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `peng_tarif`
--
ALTER TABLE `peng_tarif`
  MODIFY `tarif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  MODIFY `fakultas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `jurusan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peng_kota`
--
ALTER TABLE `peng_kota`
  ADD CONSTRAINT `peng_kota_ibfk_1` FOREIGN KEY (`prov_id_fk`) REFERENCES `peng_provinsi` (`prov_id`);

--
-- Ketidakleluasaan untuk tabel `peng_tarif`
--
ALTER TABLE `peng_tarif`
  ADD CONSTRAINT `peng_tarif_ibfk_1` FOREIGN KEY (`kota_id_fk`) REFERENCES `peng_kota` (`kota_id`),
  ADD CONSTRAINT `peng_tarif_ibfk_2` FOREIGN KEY (`kurir_id_fk`) REFERENCES `peng_kurir` (`kurir_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
