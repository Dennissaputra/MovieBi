-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 26 Jun 2022 pada 15.47
-- Versi server: 5.7.33
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', ''),
(2, 'pengguna', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 5),
(2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'denis123@gmail.com', 1, '2022-06-19 03:57:29', 1),
(2, '::1', 'denis123@gmail.com', 1, '2022-06-19 04:03:03', 1),
(3, '::1', 'denis123@gmail.com', 1, '2022-06-19 04:06:48', 1),
(4, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 08:03:23', 0),
(5, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 08:03:55', 0),
(6, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 08:04:07', 0),
(7, '::1', 'Denis123@gmail.com', NULL, '2022-06-19 08:06:27', 0),
(8, '::1', 'denis123@gmail.com', NULL, '2022-06-19 08:06:43', 0),
(9, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 08:07:13', 0),
(10, '::1', 'Denis123@gmail.com', NULL, '2022-06-19 08:07:26', 0),
(11, '::1', 'Denis123@gmail.com', NULL, '2022-06-19 08:07:41', 0),
(12, '::1', 'Denis123@gmail.com', NULL, '2022-06-19 08:07:52', 0),
(13, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 08:08:22', 0),
(14, '::1', 'admin@gmail.com', 3, '2022-06-19 08:09:01', 1),
(15, '::1', 'dennissptr@gmail.com', NULL, '2022-06-19 19:50:50', 0),
(16, '::1', 'admin@gmail.com', 3, '2022-06-19 19:52:01', 1),
(17, '::1', 'admin@gmail.com', NULL, '2022-06-20 00:08:37', 0),
(18, '::1', 'admin@gmail.com', 3, '2022-06-20 00:08:49', 1),
(19, '::1', 'admin@gmail.com', 5, '2022-06-20 00:43:39', 1),
(20, '::1', 'admin@gmail.com', 5, '2022-06-20 01:03:11', 1),
(21, '::1', 'admin@gmail.com', 5, '2022-06-20 01:10:21', 1),
(22, '::1', 'pngguna@gmail.com', NULL, '2022-06-20 01:33:36', 0),
(23, '::1', 'pengguna@gmail.com', 4, '2022-06-20 01:33:56', 1),
(24, '::1', 'admin@gmail.com', 5, '2022-06-20 01:34:56', 1),
(25, '::1', 'admin@gmail.com', 5, '2022-06-20 01:48:17', 1),
(26, '::1', 'pengguna@gmail.com', 4, '2022-06-20 01:57:24', 1),
(27, '::1', 'admin@gmail.com', NULL, '2022-06-20 02:06:27', 0),
(28, '::1', 'admin@gmail.com', NULL, '2022-06-20 02:06:51', 0),
(29, '::1', 'admin@gmail.com', NULL, '2022-06-20 02:07:03', 0),
(30, '::1', 'admin@gmail.com', NULL, '2022-06-20 02:07:28', 0),
(31, '::1', 'admin@gmail.com', 5, '2022-06-20 02:07:40', 1),
(32, '::1', 'admin@gmail.com', 5, '2022-06-20 06:36:49', 1),
(33, '::1', 'admin@gmail.com', 5, '2022-06-21 09:14:51', 1),
(34, '::1', 'admin@gmail.com', 5, '2022-06-21 09:16:23', 1),
(35, '::1', 'admin@gmail.com', 5, '2022-06-21 22:47:34', 1),
(36, '::1', 'admin@gmail.com', 5, '2022-06-21 22:52:05', 1),
(37, '::1', 'admin@gmail.com', 5, '2022-06-22 00:38:50', 1),
(38, '::1', 'admin@gmail.com', 5, '2022-06-23 08:19:09', 1),
(39, '::1', 'admin@gmail.com', 5, '2022-06-23 20:45:28', 1),
(40, '::1', 'admin@gmail.com', 5, '2022-06-25 00:50:09', 1),
(41, '::1', 'admin@gmail.com', 5, '2022-06-25 08:04:42', 1),
(42, '::1', 'admin@gmail.com', 5, '2022-06-25 23:46:40', 1),
(43, '::1', 'admin@gmail.com', 5, '2022-06-25 23:53:57', 1),
(44, '::1', 'pengguna@gmail.com', 4, '2022-06-26 01:07:43', 1),
(45, '::1', 'admin@gmail.com', 5, '2022-06-26 01:08:12', 1),
(46, '::1', 'admin@gmail.com', 5, '2022-06-26 01:46:37', 1),
(47, '::1', 'pengguna@gmail.com', 4, '2022-06-26 03:16:58', 1),
(48, '::1', 'pengguna@gmail.com', 4, '2022-06-26 03:46:05', 1),
(49, '::1', 'pengguna@gmail.com', 4, '2022-06-26 03:50:15', 1),
(50, '::1', 'admin@gmail.com', 5, '2022-06-26 03:58:24', 1),
(51, '::1', 'admin@gmail.com', 5, '2022-06-26 08:04:49', 1),
(52, '::1', 'admin@gmail.com', 5, '2022-06-26 08:19:07', 1),
(53, '::1', 'admin@gmail.com', 5, '2022-06-26 09:05:10', 1),
(54, '::1', 'admin@gmail.com', 5, '2022-06-26 09:30:38', 1),
(55, '::1', 'admin@gmail.com', NULL, '2022-06-26 09:48:35', 0),
(56, '::1', 'admin@gmail.com', NULL, '2022-06-26 09:48:45', 0),
(57, '::1', 'admin@gmail.com', 5, '2022-06-26 09:48:56', 1),
(58, '::1', 'admin@gmail.com', 5, '2022-06-26 10:09:41', 1),
(59, '::1', 'admin@gmail.com', 5, '2022-06-26 10:40:46', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1655628715, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_film`
--

CREATE TABLE `tb_film` (
  `id` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rating` int(5) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `trailer` varchar(100) NOT NULL,
  `jadwal` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_film`
--

INSERT INTO `tb_film` (`id`, `cover`, `judul`, `rating`, `deskripsi`, `trailer`, `jadwal`, `status`) VALUES
(31, 'spiderman.jpg', 'Spiderman: No Way Home', 7, 'Spider-Man, yang identitasnya diungkap sebagai Peter Parker, dicap sebagai pembunuh dari Mysterio dan membuat semua orang kesal dan membenci dirinya.</br>Peter Parker yang semula tak pernah dilihat oleh sekelilingnya mendadak menjadi pusat perhatian. Rumahnya bahkan tak pernah sepi dipantau oleh media juga masyarakat. </br>Ia pun harus menghadapi berbagai tuntutan hukum usai pemberitaan tersebut.Kondisi itu membuat Peter Parker semakin merasa tersudutkan dan kepayahan, apalagi dirinya baru menjalin hubungan asmara dengan MJ (Zendaya).Sampai kemudian, Peter Parker memiliki ide. </br>Ia mendatangi Doctor Strange yang pernah sama-sama berjuang melawan Thanos. Kepada Strange, Peter meminta tolong membuat semua orang lupa bahwa dirinya adalah Spider-Man.Strange (Benedict Cumberbatch) sebenarnya sempat diberi peringatan oleh Wong (Benedict Wong), tapi ia tetap memilih membantu Peter Parker.Kala Strange mulai merapal mantra, Peter rupanya gamang akan keputusan tersebut hingga ia membuat ', 'https://www.youtube.com/embed/JfVOs4VSpmAs', '2022-06-29', 'Inteater'),
(32, 'thedoll.jpg', 'The Doll 3', 7, 'Film The Doll 3 mengisahkan tentang seorang gadis bernama Tara (Jessica Mila) yang kehilangan kedua orang tuanya karena kecelakaan lalu lintas dan sang adik bernama Gian yang di perankan Muhammad Zidane yang berhasil selamat dari kecelakaan maut tersebut. Namun kecelakaan itu berujung membuat sang adik trauma.Kecelakaan yang menewaskan kedua orang tua mereka membuat Tara kini hidup berdua hanya dengan sang adik. Seiring waktu berjalan, akhirnya Tara memutuskan untuk bertunangan dengan Aryan (Winky Wiryawan) yang merupakan seorang duda beranak satu. Aryan memiliki seorang anak perempuan bernama Mikha (Montserrat Gizelle) dan keduanya memutuskan untuk menikah dalam waktu dekat.Memiliki trauma akibat kecelakaan yang dia alami, akhirnya Gian memutuskan mengakhiri hidupnya dengan cara bunuh diri. Kemudian Aryan mengundur pernikahannya dengan Tara karena kondisi Tara yang depresi akibat kehilangan seluruh anggota keluarganya.Kehilangan satu per satu keluarganya membuat Tara depresi', 'https://www.youtube.com/embed/l3RiBklg6ss', '2022-06-24', 'Coming Soon'),
(33, 'strange.jpg', 'Dr.strange multiverse Of Madness', 8, 'Dr. Strange (Benedict Cumberbatch) mencoba mencari tahu siapa yang mengejar America Chavez (Xochitl Gomez), seorang gadis dengan kemampuan untuk melintasi multiverse. Untuk memecahkan masalah ini, Stephen Strange memutuskan meminta bantuan kepada penyihir yang paling kuat yang ia kenal, Wanda Maximoff (Elizabeth Olsen).Namun ternyata Wanda alias Scarlett Witch memiliki rencananya sendiri untuk America yang menempatkan semuanya dalam bahaya.Munculnya bebagai varian karakter Dr. StrangePremis sekuel Dr. Strange ini hampir mirip dengan film komedi fiksi ilmiah berjudul ‘Everything Everywhere All at Once’ yang dibintangi Michelle Yeoh dan menghadirkan berbagai alam semesta paralel.Film ke-28 dari MCU ini dibuka dengan tidak membuang waktu langsung masuk ke rangkaian aksi berkecepatan tinggi. Di mana kekuatan makhluk dari dimensi lain, datang dan memburu seseorang gadis dengan kemampuan unik.Seseorang gadis bernama America Chavez menceritakan kisahnya kepada Dr. Strange yang', 'https://www.youtube.com/embed/aWzlQ2N6qqg', '2022-07-01', 'Inteater'),
(34, 'kkn.jpg', 'KKN Desa Penari', 8, 'Film ini diangkat berdasarkan kisah nyata yang dialami salah satu teman pemilik akun Twitter Simple Man yang sempat viral pada 2019 lalu. Seperti judulnya, KKN di Desa Penari menceritakan berbagai kejadian mistis yang dialami enam mahasiswa ketika menjalani KKN di sebuah desa terpencil.Awal mula kisah ini berfokus pada enam mahasiswa yang sedang melaksanakan Kuliah Kerja Nyata (KKN) di sebuah desa terpencil setelah mengantongi izin dari orang tua masing-masing. Keenam mahasiswa tersebut bernama Nur (Tissa Biani), Widya (Adinda Thomas), Ayu (Aghniny Haque), Bima (Achmad Megantara), Anton (Calvin Jeremy), dan Wahyu (Fajar Nugraha). Kegiatan mereka di desa tersebut awalnya berjalan lancar, namun lama kelamaan, Widya dan Nur mengalami serangkaian kejadian mistis. Baca juga: Sinopsis I Give It a Year, Problematika Pengantin Baru Dimulai dari Nur yang seperti takut akan sesuatu karena kepekaannya dengan hal mistis, hingga Widya yang kesurupan menarikan sebuah tarian. Teror-teror dari sosok', 'https://www.youtube.com/embed/_ykK5YsWes0', '2022-06-17', 'Inteater'),
(35, 'lightyear.jpg', 'Disney & Pixar’s Lightyear ', 8, 'adalah film aksi fiksi ilmiah animasi komputer Amerika yang akan datang yang diproduksi oleh Pixar Animation Studios dan Walt Disney Pictures dan didistribusikan oleh Walt Disney Studios Motion Pictures. Film ini merupakan sempalan dari seri film Toy Story, yang berperan sebagai cerita asal untuk karakter manusia fiksi Buzz Lightyear, yang menginspirasi action figure dengan nama yang sama. Film ini disutradarai oleh Angus MacLane (dalam debut penyutradaraan film panjang) dan dibintangi oleh Chris Evans sebagai karakter tituler dengan Keke Palmer, Dale Soules, Taika Waititi, Peter Sohn, Uzo Aduba, James Brolin, Mary McDonald-Lewis, Efren Ramirez, dan Isiah Whitlock Jr. dalam peran pendukung.[2] Film ini mengeksplorasi asal usul Buzz Lightyear, seorang pilot uji manusia muda yang akan menjadi Space Ranger.', 'https://www.youtube.com/embed/Pmii78cIfFw', '2022-07-09', 'Coming Soon'),
(36, 'dinosourus.jpg', 'DINOSAUR WORLD', 8, 'Dua bersaudara Zach dan Gray Mitchell mengunjungi Jurassic World, sebuah taman hiburan dinosaurus di Isla Nublar, yang mana bibi mereka Claire Dearing adalah manajer operasinya. Claire menugaskan asistennya Zara sebagai pemandu, tetapi keduanya menolak dan ingin menjelajah sendiri. Di tempat lain di pulau itu, veteran dan etolog Angkatan Laut AS Owen Grady telah melatih empat Velociraptors bernama Blue, Echo, Delta, dan Charlie, dan meneliti kecerdasan mereka. Owen dipanggil oleh Vic Hoskins, kepala keamanan InGen, yang mengusulkan untuk menggunakan raptor Owen sebagai senjata perang, dan Owen tidak menyetujuinya. Namun, terjadi insiden saat salah satu staf jatuh ke dalam kandang raptor. Owen menyelamatkannya, menahan raptor tersebut, dan melarikan diri, membuktikan bahwa raptor tidak jinak. Zach dan Gray meninggalkan Zara dan menjelajahi taman sebelum bepergian dengan monorel gyrosphere, sementara Claire sampai di tempat tinggal Owen dan meminta Owen untuk memeriksa kandang Indominus ', 'https://www.youtube.com/embed/QzjbcX9Herk', '2022-07-20', 'Coming Soon'),
(37, 'gatotkaca.jpg', 'Gatot Kaca', 8, 'Film ini mengisahkan perjalanan hidup seorang pemuda bernama Yudha (Rizky Nazar), yang merupakan putra dari pasangan suami istri Arimbi dan Pandega yang memiliki kehidupan cukup sulit. Yudha dituntut untuk merawat kedua orang tuanya yang sakit-sakitan di tengah kondisi ekonominya yang tak bagus. Belakangan diketahui bahwa Yudha merupakan seseorang yang memiliki titisan langsung dari kesatria Gatotkaca asli yang hidup dari tahun lalu dan berasal dari klan Pandawa. Mengetahui hal tersebut, Yudha pun mencari tahu tentang kekuatan serta keistimewaan yang ia miliki. Sebagai keturunan Super Hero, Yudha tidak serta merta dapat menggunakan kekuatan yang ia miliki. Untuk dapat menggunakannya, Yudha harus menemukan sebuah benda pusaka dari sang ibunda. Pusaka tersebut diketahui dapat membantu Yudha untuk menggunakan kekuatan dahsyat yang ia dapatkan dari Gatotkaca. Yudha pun mempersiapkan kekuatannya untuk melawan sisa-sisa prajurit Kurawa yang masih hidup di bumi dan akan menghancur', 'https://www.youtube.com/embed/LQahVZ7DbBU?start=3', '2022-06-24', 'Coming Soon'),
(38, 'morbius.jpg', 'MORBIUS || 2022', 9, 'Film Morbius sendiri akan menceritakan tentang perjalanan seorang pria bernama Dr. Michael Morbius. Dia merupakan seorang ilmuwan yang mengidap penyakit kelainan darah sejak kecil.Dia pun bertekad untuk menyembuhkan penyakitnya dan juga membantu orang lain yang bernasib sama dengannya. Dr. Michael melakukan berbagai penelitian untuk menemukan obat yang mujarab supaya penyakitnya bisa sembuh. Berbagai eksperimen telah dia coba dan kembangkan, bahkan tak sedikit dari eksperimennya itu meraih penghargaan Nobel. Tak tanggung - tanggung Morbius pun melakukan perjalanan hingga pelosok desa untuk menyembuhkan penyakitnya yang langka tersebut.Saat menemukan perawatan berbahaya yang menggunakan metode vampirisme dan terapi kejut listrik, Morbius menemukan dirinya sembuh karena diberi kekuatan manusia super. Namun, kemampuan ini juga dibarengi dengan rasa haus darah yang membuatnya malah berubah menjadi vampir lengkap dengan kemampuan kelelawarnya.Demikian Sinopsis Film Morbius', 'https://www.youtube.com/embed/oZ6iiRrz1SY?start=3', '2022-06-29', 'Inteater'),
(39, 'venom.jpg', 'VENOM: LET THERE BE CARNAGE', 10, 'Film kedua Venom mengambil latar tepat setelah akhir dari film perdananya -- atau lebih tepatnya mid-credit scene ', 'https://www.youtube.com/embed/-ezfi6FQ8Ds?start=3', '2022-06-30', 'Inteater'),
(40, 'Moon-Knight-3_1.jpg', 'Moon Night', 8, 'Moon Knight sendiri berkisah tentang seorang pegawai museum bernama Steven Grant yang terbawa ke dalam sebuah konspirasi dewa-dewa Mesir saat dirinya melihat kejanggalan di kehidupan sehari-harinya, seperti penemuan identitas alter egonya, Marc Spector yang bekerja di bawah dewa KhonshuMoon Knight bercerita tentang seorang pria bernama Steven Grant, yang berprofesi sebagai seorang karyawan toko souvenir.</br>Steven menemukan dia memiliki gangguan identitas disosiatif. Dalam dunia medis, penyakit yang dialami olehnya dinamakan DID atau Dissociative Identity Disorder.Rupanya Steven berbagi tubuh dengan tentara bayaran Marc Spector. Saat musuh Steven/Marc bertemu dengan mereka, mereka harus menavigasi identitas kompleks mereka sambil didorong ke dalam misteri mematikan di antara para dewa kuat Mesir. Steven pun dapat berubah menjadi Moon Knight setelah mendapat kekuatan dari dewa bulan Mesir.</brKekuatan bela diri Moon Knight diperkuat dengan kekuatan sihir. Ia semakin tangguh de', 'https://www.youtube.com/embed/x7Krla_UxRg?start=3', '2022-06-30', 'Coming Soon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `Userimage` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `Userimage`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'pengguna@gmail.com', '', 'pengguna', '$2y$10$WQIhYgRGrNDkxqVw1HOJOu7q1uyoxIAgsxppJi8IPCy8vXKPCuf9O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-20 00:40:55', '2022-06-20 00:40:55', NULL),
(5, 'admin@gmail.com', '', 'admin', '$2y$10$CEvxMlCHn/ZIfM1BsDwciOf6EThEKFFzc3UqQ8b5lu5Pfm6XrZERG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-06-20 00:42:43', '2022-06-20 00:42:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
