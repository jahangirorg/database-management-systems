-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 May 2020, 21:43:44
-- Sunucu sürümü: 10.3.15-MariaDB
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `beyazesya`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `kategori_id` int(11) NOT NULL,
  `kategori_adi` text NOT NULL,
  `kategori_resim` text NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`, `kategori_resim`, `urun_id`) VALUES
(1, 'deneme', 'lklmlm.jpg', 1),
(2, 'deneme2', 'kfkfkf.jpg', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunetiketi`
--

CREATE TABLE `urunetiketi` (
  `urunetiket_id` int(11) NOT NULL,
  `urunetiket_adi` text NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunetiketi`
--

INSERT INTO `urunetiketi` (`urunetiket_id`, `urunetiket_adi`, `urun_id`) VALUES
(1, 'etiket 1', 1),
(2, 'etiket 2', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfiyat`
--

CREATE TABLE `urunfiyat` (
  `urunfiyat_id` int(11) NOT NULL,
  `urunfiyati` text NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunfiyat`
--

INSERT INTO `urunfiyat` (`urunfiyat_id`, `urunfiyati`, `urun_id`) VALUES
(1, '4333', 1),
(2, '3333', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urungoruntulenmesi`
--

CREATE TABLE `urungoruntulenmesi` (
  `urungoruntule_id` int(11) NOT NULL,
  `urun_goruntulenmesi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urungoruntulenmesi`
--

INSERT INTO `urungoruntulenmesi` (`urungoruntule_id`, `urun_goruntulenmesi`) VALUES
(1, '8383838'),
(2, '477383737');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urun_id` int(11) NOT NULL,
  `urun_resim` text NOT NULL,
  `urun_adi` text NOT NULL,
  `urun_kategori` text NOT NULL,
  `urun_fiyati` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `urun_resim`, `urun_adi`, `urun_kategori`, `urun_fiyati`) VALUES
(1, '1', '1', '1', '1'),
(2, '2', '2', '2', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunpuani`
--

CREATE TABLE `urunpuani` (
  `urunpuani_id` int(11) NOT NULL,
  `urununpuani` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunpuani`
--

INSERT INTO `urunpuani` (`urunpuani_id`, `urununpuani`) VALUES
(1, '8'),
(2, '10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunresim`
--

CREATE TABLE `urunresim` (
  `urunresim_id` int(11) NOT NULL,
  `urunresim_uzanti` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uruntarihi`
--

CREATE TABLE `uruntarihi` (
  `uruntarihi_id` int(11) NOT NULL,
  `uruntarihi` date NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uruntarihi`
--

INSERT INTO `uruntarihi` (`uruntarihi_id`, `uruntarihi`, `urun_id`) VALUES
(1, '2020-05-06', 1),
(2, '2020-05-05', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunyorumu`
--

CREATE TABLE `urunyorumu` (
  `urunyorum_id` int(11) NOT NULL,
  `urunyorumu` text NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunyorumu`
--

INSERT INTO `urunyorumu` (`urunyorum_id`, `urunyorumu`, `urun_id`) VALUES
(1, 'deneme yorum', 1),
(2, 'deneme yorum 2', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(11) NOT NULL,
  `uye_adi` text NOT NULL,
  `uye_soyadi` text NOT NULL,
  `uye_mail` text NOT NULL,
  `uye_sifre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_soyadi`, `uye_mail`, `uye_sifre`) VALUES
(1, 'melih', 'hakan', 'b@gmail.com', '83883838388'),
(2, 'Ural', 'Serce', 's@gmail.com', '3637377373');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`kategori_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `urunetiketi`
--
ALTER TABLE `urunetiketi`
  ADD PRIMARY KEY (`urunetiket_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `urunfiyat`
--
ALTER TABLE `urunfiyat`
  ADD PRIMARY KEY (`urunfiyat_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `urungoruntulenmesi`
--
ALTER TABLE `urungoruntulenmesi`
  ADD PRIMARY KEY (`urungoruntule_id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunpuani`
--
ALTER TABLE `urunpuani`
  ADD PRIMARY KEY (`urunpuani_id`);

--
-- Tablo için indeksler `urunresim`
--
ALTER TABLE `urunresim`
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `uruntarihi`
--
ALTER TABLE `uruntarihi`
  ADD PRIMARY KEY (`uruntarihi_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `urunyorumu`
--
ALTER TABLE `urunyorumu`
  ADD PRIMARY KEY (`urunyorum_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD CONSTRAINT `kategoriler_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `urunetiketi`
--
ALTER TABLE `urunetiketi`
  ADD CONSTRAINT `urunetiketi_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `urunfiyat`
--
ALTER TABLE `urunfiyat`
  ADD CONSTRAINT `urunfiyat_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `urunresim`
--
ALTER TABLE `urunresim`
  ADD CONSTRAINT `urunresim_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `uruntarihi`
--
ALTER TABLE `uruntarihi`
  ADD CONSTRAINT `uruntarihi_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `urunyorumu`
--
ALTER TABLE `urunyorumu`
  ADD CONSTRAINT `urunyorumu_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
