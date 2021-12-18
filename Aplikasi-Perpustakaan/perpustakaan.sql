-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2021 pada 14.59
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `Id` char(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Ttl` datetime DEFAULT NULL,
  `Jkl` char(10) DEFAULT NULL,
  `Pekerjaan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`Id`, `Nama`, `Alamat`, `Ttl`, `Jkl`, `Pekerjaan`) VALUES
('1080', 'Budi', 'Jl.raya baru', '1992-01-25 00:00:00', 'Laki-Laki', 'Guru'),
('1081', 'Yuni', 'Jl.raya mawar', '2005-12-07 00:00:00', 'Perempuan', 'Pelajar'),
('1082', 'Toni', 'Jl.melati no.15', '1995-08-12 00:00:00', 'Laki-Laki', 'Mahasiswa'),
('1083', 'Masud', 'Jl.natar no.30', '1945-08-17 00:00:00', 'Laki-Laki', 'Buruh Tani'),
('1084', 'Joko', 'Jl.samping 5', '2002-11-01 00:00:00', 'Laki-Laki', 'Mahasiswa'),
('1085', 'Ayu', 'Jl.raya pasar', '2001-09-08 00:00:00', 'Perempuan', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE `koleksi` (
  `Kode` char(10) NOT NULL,
  `Judul` varchar(50) DEFAULT NULL,
  `Pengarang` varchar(50) DEFAULT NULL,
  `Penerbit` varchar(50) DEFAULT NULL,
  `Stock` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `koleksi`
--

INSERT INTO `koleksi` (`Kode`, `Judul`, `Pengarang`, `Penerbit`, `Stock`) VALUES
('001', 'Jika Kamu Menjadi Tanda Tambah', 'Trista Speed Shaskan', 'BIP,Jakarta 2010', '5'),
('002', 'Buku Pintar Pengetahuan Umum', 'Robert Oeban', 'Karisma', '10'),
('003', 'Membaca Pikiran Orang Lewat Bahasa Tubuh', 'Dianata Eka Putra', 'Kaifa PT.Mizan Pustaka', '7'),
('004', 'Islam Pesisir', 'Dr.Nur Syam', 'LKis', '2'),
('005', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '5'),
('006', 'Cinta Brontosaurus', 'Raditya Dika', 'Gagas Utama', '15'),
('007', 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', '20'),
('008', 'Sepatu Dahlan', 'Khasina Pabichara', 'Noura Books', '3'),
('009', '5 cm', 'Dhonny Dhirgantoro', 'PT.Grasindo', '5'),
('010', 'Perahu Kertas', 'Dewi Lestari', 'Treudee Pustaka', '10'),
('011', 'Milea, Suara dari Dilan', 'Pidi Baiq', 'Pastel Books', '2'),
('012', 'Matematika Dasar Teori', 'Erlangga', 'John Bird', '25'),
('013', 'Pemrograman Database Dengan Delphi7', 'Abdul Kadir', 'Andi', '12'),
('014', 'Srategic Management', 'Sofjan Assauri', 'Rajagrafindo', '16'),
('015', 'Cedera Kepala', 'M.Z.Arifin', 'Sagung Seto', '4'),
('016', 'Menjadi Guru Yang Menyenangkan', 'Hernowo', 'Mizan Learning', '8'),
('017', 'Pendidikan Masyarakat Kota', 'Paulo Freire', 'LKiS', '9'),
('018', 'Menjadi Guru Idola', 'Amir Tengku Ramly', 'Pustaka Inti', '12'),
('019', 'Mengukir Prestasi', 'Dr.Mukhtar', 'Misaka Galiza', '12'),
('020', 'Mendagangkan Sekolah', 'Prof.DR.Har Tilaar', 'Indonesia Corruption Watch', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `Id` char(10) NOT NULL,
  `Kode` char(10) DEFAULT NULL,
  `Tgl_pinjam` datetime DEFAULT NULL,
  `Tgl_kembali` datetime DEFAULT NULL,
  `Denda` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `Kode` char(10) NOT NULL,
  `Jumlah` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`Kode`, `Jumlah`) VALUES
('001', '5'),
('002', '10'),
('003', '7'),
('004', '2'),
('005', '5'),
('006', '15'),
('007', '20'),
('008', '3'),
('009', '5'),
('010', '10'),
('011', '2'),
('012', '25'),
('013', '12'),
('014', '16'),
('015', '4'),
('016', '8'),
('017', '9'),
('018', '12'),
('019', '12'),
('020', '5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`Kode`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Kode` (`Kode`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`Kode`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `anggota` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`Kode`) REFERENCES `koleksi` (`Kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`Kode`) REFERENCES `koleksi` (`Kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
