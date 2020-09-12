-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-09-12 13:44:05
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mini_bbs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `picture`, `created`, `modified`) VALUES
(1, 'aaa', 'aaa@bbb', '70c881d4a26984ddce795f6f71817c9cf4480e79', '20200821124928', '2020-08-21 12:49:33', '2020-08-21 03:49:33'),
(2, 'AAA', 'ccc@ddd', '70c881d4a26984ddce795f6f71817c9cf4480e79', '20200821174052txt_copyright.png', '2020-08-21 17:40:57', '2020-08-21 08:40:57'),
(3, 'ABCD', 'ABCD@ABCD', 'fb2f85c88567f3c8ce9b799c7c54642d0c7b41f6', '20200829142149', '2020-08-29 14:21:51', '2020-08-29 05:21:51');

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `member_id` int(11) NOT NULL,
  `reply_message_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modeified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `message`, `member_id`, `reply_message_id`, `created`, `modeified`) VALUES
(1, 'こんにちわ', 1, 0, '2020-08-21 16:22:34', '2020-08-21 07:22:34'),
(2, 'headerを挿入しました', 1, 0, '2020-08-21 16:27:42', '2020-08-21 07:27:42'),
(4, 'やっほー', 2, 0, '2020-08-21 17:41:35', '2020-08-21 08:41:35'),
(5, '@aaa 一覧を作りました <いいですね', 2, 3, '2020-08-21 18:58:58', '2020-08-21 09:58:58'),
(6, '@AAA やっほー <こんにちわ', 2, 4, '2020-08-22 02:08:07', '2020-08-21 17:08:07'),
(7, 'あああああああ', 2, 0, '2020-08-22 11:10:47', '2020-08-22 02:10:47'),
(8, '@AAA あああああああ　<ｆｆｆｆｆ', 2, 7, '2020-08-22 11:11:04', '2020-08-22 02:11:04'),
(9, '１', 1, 0, '2020-08-22 13:02:11', '2020-08-22 04:02:11'),
(10, '２', 1, 0, '2020-08-22 13:02:15', '2020-08-22 04:02:15'),
(11, '３', 1, 0, '2020-08-22 13:18:12', '2020-08-22 04:18:12'),
(12, '4', 1, 0, '2020-08-22 14:10:29', '2020-08-22 05:10:29'),
(13, '5', 1, 0, '2020-08-22 14:10:34', '2020-08-22 05:10:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
