-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-06-23 03:50:38
-- 服务器版本： 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nightlife`
--

-- --------------------------------------------------------

--
-- 表的结构 `eat`
--

CREATE TABLE `eat` (
  `id` int(255) NOT NULL,
  `classid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `sell` varchar(255) NOT NULL,
  `sendout` varchar(255) NOT NULL,
  `thesamecity` varchar(255) NOT NULL,
  `time` int(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `firstpurchase` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `classify` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eat`
--

INSERT INTO `eat` (`id`, `classid`, `name`, `picture`, `price`, `sell`, `sendout`, `thesamecity`, `time`, `discount`, `firstpurchase`, `location`, `store`, `classify`) VALUES
(44, 1, '糖醋鲤鱼(北京店)', 'picture.png', 20, '500', '起送价20元', '5元', 45, '满25减5;满30减10 (在线支付专享)', '首单立减15元 (在线支付专享)', '西二旗', '总店', '川菜'),
(45, 2, '糖醋鲤鱼(上海店)', 'picture.png', 20, '500', '起送价20元', '5元', 45, '满25减5;满30减10 (在线支付专享)', '首单立减15元 (在线支付专享)', '西二旗', '总店', '川菜'),
(46, 3, '糖醋鲤鱼(任丘店)', 'picture.png', 20, '500', '起送价20元', '5元', 45, '满25减5;满30减10 (在线支付专享)', '首单立减15元 (在线支付专享)', '西二旗', '总店', '川菜');

-- --------------------------------------------------------

--
-- 表的结构 `foods`
--

CREATE TABLE `foods` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classid` int(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `effect` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `people` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `foods`
--

INSERT INTO `foods` (`id`, `name`, `classid`, `picture`, `effect`, `price`, `grade`, `people`) VALUES
(8, '胡辣汤', 5, 'recommend1.png', '好喝', 99, '5分', 588),
(9, '西红柿鸡蛋汤汤', 6, 'recommend1.png', '好喝', 29, '5分', 588);

-- --------------------------------------------------------

--
-- 表的结构 `play`
--

CREATE TABLE `play` (
  `id` int(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `play`
--

INSERT INTO `play` (`id`, `class`, `img`, `title`) VALUES
(10, '美女', '刘亦菲', '好漂亮');

-- --------------------------------------------------------

--
-- 表的结构 `ploid`
--

CREATE TABLE `ploid` (
  `id` int(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `prices` varchar(255) NOT NULL,
  `carolTime` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ploid`
--

INSERT INTO `ploid` (`id`, `images`, `img`, `names`, `grade`, `prices`, `carolTime`, `location`) VALUES
(1, 'KTV_03.png', 'KTV_07.png', '量贩式KTV', '4.5分', '¥63', '欢唱3小时', '世界公园 1.6km'),
(2, 'KTV_03.png', 'KTV_07.png', '量贩式KTV', '4.5分', '¥63', '欢唱3小时', '世界公园 1.6km');

-- --------------------------------------------------------

--
-- 表的结构 `register1`
--

CREATE TABLE `register1` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `register1`
--

INSERT INTO `register1` (`id`, `name`, `phone`, `age`) VALUES
(1, 'wangminyue', 2147483647, '18'),
(2, 'wangminyue', 2147483647, '18'),
(3, 'wangminyue', 2147483647, '18'),
(4, 'wangminyue', 2147483647, '18');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `telePhone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `repassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `telePhone`, `password`, `repassword`) VALUES
(1, 'wangmingyue', '1123', '1123'),
(2, 'wangmingyue', '1123', '1123'),
(3, '18201175200', '123', '123'),
(6, '15944444441', '123', '123'),
(7, '18814622878', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eat`
--
ALTER TABLE `eat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ploid`
--
ALTER TABLE `ploid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register1`
--
ALTER TABLE `register1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `eat`
--
ALTER TABLE `eat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- 使用表AUTO_INCREMENT `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `play`
--
ALTER TABLE `play`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `ploid`
--
ALTER TABLE `ploid`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `register1`
--
ALTER TABLE `register1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
