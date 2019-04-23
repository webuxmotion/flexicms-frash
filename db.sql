-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2019 at 07:49 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(2, 'Header Menu'),
(3, 'Footer Menu'),
(4, 'My Menu');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '999',
  `link` varchar(255) NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `menu_id`, `name`, `parent`, `position`, `link`) VALUES
(1, 0, 'Home', 0, 0, '#'),
(2, 0, 'About', 0, 0, '#'),
(3, 0, 'Sample post', 0, 0, '#'),
(4, 0, 'Contact', 0, 0, '#'),
(6, 2, 'New item 3', 0, 2, '#'),
(9, 2, 'New item', 0, 0, '#'),
(11, 2, 'New item', 0, 3, '#'),
(13, 3, 'New item', 0, 999, '#'),
(14, 3, 'New item', 0, 999, '#'),
(15, 3, 'New item', 0, 999, '#'),
(16, 4, 'New item', 0, 999, '#'),
(17, 4, 'New item', 0, 999, '#');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `date`) VALUES
(1, 'aaaad', '<p>test update</p>', '2019-04-20 15:21:42'),
(2, 'Second Page', '<p>Some content</p><ul><li>asdf</li><li>adf</li></ul><ol><li>asdf</li><li>adf​</li></ol>', '2019-04-20 15:22:29'),
(3, 'dfFirst Paged', '<p><strong data-verified=\"redactor\" data-redactor-tag=\"strong\">sdf​This is the bold</strong></p>', '2019-04-20 15:26:57'),
(4, 'dfdf', '<p>df​df</p>', '2019-04-20 21:56:47'),
(5, 'some', '<p>some new​</p>', '2019-04-20 21:58:16'),
(6, 'first', '<p>first​</p>', '2019-04-20 21:58:48'),
(7, 'dockertt', '<p>docker content​</p>', '2019-04-20 22:04:28'),
(8, 'd', '<p>d​</p>', '2019-04-20 22:10:19'),
(9, 'Newwwaa', '<p>​new page</p>', '2019-04-21 10:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key_field` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `key_field`, `value`) VALUES
(1, 'Name site', 'name_site', 'Flexi CMS'),
(2, 'Description', 'description', 'a Example Description Something new'),
(3, 'Admin email', 'admin_email', 'admin@admin.com'),
(4, 'Language', 'language', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('admin','moderator','user','') NOT NULL,
  `hash` varchar(32) NOT NULL,
  `date_reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `hash`, `date_reg`) VALUES
(1, 'admin@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'admin', '1da6563eeeb0889f83bfd2cbd42cc132', '2019-04-16 18:16:33'),
(2, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:25'),
(3, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:25'),
(4, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:26'),
(5, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:26'),
(6, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:27'),
(7, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:27'),
(8, 'adminNew@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'user', 'new', '2019-04-20 14:28:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `key` (`key_field`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

