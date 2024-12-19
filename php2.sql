-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 12 月 19 日 17:16
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `innate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `content`, `innate`) VALUES
(1, '岸本', 'kadai@kadai.jp', '内容', '2024-12-19'),
(2, '久美子', 'test@test.jp', '問い合わせ', '2024-12-19'),
(3, 'ピノコ', 'pinoko@pinoko.jp', '内容', '2024-12-19');

-- --------------------------------------------------------

--
-- テーブルの構造 `php2kadai`
--

CREATE TABLE `php2kadai` (
  `id` int(12) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `php2kadai`
--

INSERT INTO `php2kadai` (`id`, `theme`, `url`, `content`, `date`) VALUES
(1, '福島はやと', 'test@test.jp', '内容', '2024-12-19'),
(2, 'きし', 'kishi@kishi.jp', '内容', '2024-12-20'),
(3, 'もと', 'moto@moto.jp', '内容', '2024-12-20'),
(4, 'きっし', 'kishimoto@kishi.com', 'テスト', '2024-12-20'),
(5, '岸本久美子', 'kishikumi@kk.jp', 'できたかな', '2024-12-20'),
(6, 'あああ', 'rrr.co.jp', 'できたかな？', '2024-12-20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php2kadai`
--
ALTER TABLE `php2kadai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `php2kadai`
--
ALTER TABLE `php2kadai`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
