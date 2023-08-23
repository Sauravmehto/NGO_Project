-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 09:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(16, 'wlkehfw', ',dbqwkjdq', 0, '2023-08-12', '2023-08-12', 8, '10', '2023-08-11 12:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40'),
(5, 5, 'Ratan ITR Return 31 July 2023', 'ITR For Viswas &lt;br&gt;', 1, '2023-07-15 13:29:10'),
(6, 5, 'Jitu Sir  ITR Return 31 July 2023', '				test			', 1, '2023-07-15 13:39:03'),
(7, 5, 'Rajan  ITR Return 31 July 2023', 'test', 1, '2023-07-15 13:39:49'),
(8, 7, 'Lucky  ITR Return 31 July 2023', 'Add Description &lt;br&gt;', 1, '2023-07-15 13:40:41'),
(9, 7, 'Varsh  ITR Return 31 July 2023', 'Add Description &lt;br&gt;', 1, '2023-07-15 13:41:11'),
(10, 7, 'Jitender  ITR Return 31 July 2023', '				Add Description &lt;br&gt;			', 3, '2023-07-15 13:41:56'),
(11, 6, 'om kar  ITR Return 31 July 2023', 'Add details&lt;br&gt;', 1, '2023-07-15 13:42:37'),
(12, 6, 'Punit  ITR Return 31 July 2023', '				add			', 3, '2023-07-15 13:42:50'),
(13, 6, 'shanti  ITR Return 31 July 2023', '				add			', 3, '2023-07-15 13:43:04'),
(14, 8, 'Find Name', 'test', 1, '2023-07-15 15:18:13'),
(15, 8, 'Filling', '							', 1, '2023-07-15 15:18:33'),
(16, 8, 'Din', 'Apply &lt;br&gt;', 1, '2023-07-15 15:19:01'),
(17, 8, 'Digital ', '&lt;span&gt;&lt;span class=&quot;c8d6zd&quot;&gt;Digital Signature &lt;br&gt;&lt;/span&gt;&lt;/span&gt;', 1, '2023-07-15 15:19:44'),
(18, 8, 'Tax', '				test			', 3, '2023-07-15 15:19:58'),
(19, 9, 'Done', 'ok', 3, '2023-07-15 16:33:44'),
(20, 10, 'ratan', 'awsk', 1, '2023-07-17 12:35:31'),
(21, 0, 'rajan', 'mai khu', 3, '2023-07-17 12:35:45'),
(22, 11, 'ITR OF GYAN CHAND YADAV', '				test			', 3, '2023-07-24 13:05:31'),
(23, 0, 'task1', 'test', 2, '2023-07-24 13:20:04'),
(24, 12, 'task2', 'test', 1, '2023-07-24 13:20:20'),
(25, 12, 'task2', '							', 1, '2023-07-24 13:21:01'),
(26, 8, 'org typr', 'test', 1, '2023-08-02 13:30:53'),
(27, 8, 'test2', 'teat', 1, '2023-08-07 09:27:24'),
(28, 13, 'wefwfw', '				wfcwfcwea			', 1, '2023-08-08 10:39:42'),
(29, 18, 'nkjbjkb ', 'bkjnbkjbjkb', 3, '2023-08-08 21:38:01'),
(30, 18, 'bv jb', 'kjbjk', 2, '2023-08-08 21:59:30'),
(31, 18, 'wefef', 'fdewqq', 1, '2023-08-08 22:09:45'),
(32, 18, '', '2fd32', 1, '2023-08-09 00:11:52'),
(33, 21, 'sgfve', 'wfwekjbgwf', 1, '2023-08-09 15:58:11'),
(34, 13, 'rdu3gqwd', 'wedguq3wq', 1, '2023-08-09 16:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'CA Anil Kumar', 'Vishwakarma', 'admin-anil@gmail.com', 'b3b991e836cbe529c365a1a6be4d5501', 1, '1689417480_file.jpeg', '2020-11-26 10:57:04'),
(6, 'CA Sanjay', 'Ahirwar', 'admin-sanjay@gmail.com', 'c0eb8be7d18d1b603fe4e42bc8f53da3', 1, '1689420840_ca.jpeg', '2023-07-15 11:34:13'),
(7, 'CA Sourabh', 'Aggarwal', 'admin-sourabh@gmail.com', 'e0059ac80b381910ae70b544c9fb5d82', 1, '1689420960_ca.jpeg', '2023-07-15 11:36:16'),
(8, 'CA Anil Kumar Emp', 'Vishwakarma', 'emp-anil@gmail.com', 'd9d9e34830b74b3e1339162b0c3414c7', 2, '1689421020_ca.jpeg', '2023-07-15 11:37:49'),
(9, 'CA Sanjay Emp', 'Ahirwar', 'emp-sanjay@gmail.com', '08573d803cc4e9256f2168839b2cb5bb', 3, '1689421140_ca.jpeg', '2023-07-15 11:39:33'),
(10, 'CA Sourabh Emp', 'Aggarwal', 'emp-sourabh@gmail.com', '52938dece29467355d2d0d168465ddf7', 3, '1689421200_ca.jpeg', '2023-07-15 11:40:56'),
(11, 'Sumit', 'Kumar', 'emp-sumit@gmail.com', 'f234064791ec4132cfaa789c1d23ab87', 3, '1689423300_ca.jpeg', '2023-07-15 12:15:25'),
(12, 'Ritik', 'Arora', 'emp-ritik@gmail.com', '2ed37f60c44225ada5d936eee0880f3f', 3, '1689423360_ca.jpeg', '2023-07-15 12:16:34'),
(13, 'Mahesh', 'Ahirwar', 'emp-mahesh@gmail.com', '7f79a542ae78cc51afb42600381d043c', 3, '1689423420_ca.jpeg', '2023-07-15 12:17:16'),
(14, 'Mister', 'Emp', 'emp-mister@gmail.com', '896206269e22781b0992f44a8b11a64e', 3, '1689438840_Mister.jpeg', '2023-07-15 12:18:56'),
(15, 'Jyoti', 'Emp', 'emp-jyoti@gmail.com', 'c74c86673f804b86e74e72780a79ac7d', 3, '1689423540_ca.jpeg', '2023-07-15 12:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 6, 13, 'Complete &lt;br&gt;', 'Shanti Return Filed ', '2023-07-15', '19:08:00', '20:00:00', 12, 0.866667, '2023-07-15 15:23:53'),
(6, 7, 10, '							Done						', 'Done', '2023-07-15', '14:04:00', '14:30:00', 13, 0.433333, '2023-07-15 15:36:30'),
(7, 11, 22, 'need suppoted doc', 'req. doc', '2023-07-24', '19:39:00', '20:39:00', 15, 1, '2023-07-24 13:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_reply`
--

CREATE TABLE `user_reply` (
  `id` int(11) NOT NULL,
  `project_id` varchar(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(255) NOT NULL,
  `replied_on` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reply`
--

INSERT INTO `user_reply` (`id`, `project_id`, `task`, `description`, `status`, `replied_on`) VALUES
(1, '17', 'qwdqwd', 'dkvjkwqdq', 1, '2023-08-09 06:03:16.464879'),
(2, '18', 'dwqdwqd', 'kjghwef', 1, '2023-08-09 06:11:01.314361'),
(3, '18', 'hosting related', 'to buy hosting', 1, '2023-08-09 06:12:09.208050'),
(4, '21', 'host related', 'to buy hosting', 1, '2023-08-09 06:16:12.889551'),
(5, '21', 'kf3fjf', '<p>dagabaaz ho tum sitam dhaane wale fareb-e-mohabbat mai uljhane wale&nbsp;</p><p><br></p>', 1, '2023-08-09 06:28:57.185209'),
(6, '0', 'qeshv', 'qdqdwqdqwd', 1, '2023-08-09 09:19:22.171092'),
(7, '0', 'flkflfwef', 'egfnwelkfnwef', 1, '2023-08-09 09:20:49.484920'),
(8, '21', 'wqdqwgiuds', 'wrfiwhrfwaf', 1, '2023-08-09 10:32:19.865988'),
(9, '21', 'wdugqyewd', 'whds12ues', 1, '2023-08-09 10:33:32.405830'),
(10, '21', 'rf3we', 'fhwier', 1, '2023-08-09 10:36:34.347540'),
(11, '21', 'efduqg3wedw', 'qwduigdcaw', 1, '2023-08-09 10:37:27.650451'),
(12, '', '', '							', 3, '2023-08-09 11:13:35.953362'),
(13, '', '', '							', 3, '2023-08-09 11:14:52.054959'),
(14, '', 'Work is doneriu23hriuwr', '				testwfh34wre', 1, '2023-08-10 07:40:17.202670'),
(15, '', 'histing related', 'to buy hosting', 1, '2023-08-10 07:32:46.258242'),
(16, '', 'oisDgifwegiuf', '				wkhnfeklewfhe			', 1, '2023-08-10 07:43:47.076509'),
(17, '', 'ergergt', 'etgerge', 1, '2023-08-10 07:42:10.552779'),
(18, '', 'ryhruht', '				kjehfwe			', 1, '2023-08-10 07:46:31.513983'),
(19, '', 'Akkjrtg', '				lkngeorasw			', 1, '2023-08-10 07:54:57.656975'),
(20, '', 'Ankiyu', 'sfhfbhnhed', 1, '2023-08-10 07:56:26.241969'),
(21, '23', 'wrdw', 'fvsfewf', 1, '2023-08-10 07:47:16.219273'),
(22, '23', 'hhhhh', 'htmghmg', 3, '2023-08-10 07:50:46.089539'),
(23, '23', 'klgherlgt', 'sbjgeskjdfs', 1, '2023-08-10 08:01:34.008514'),
(24, '23', 'last reply', 'wefhiowef', 1, '2023-08-10 08:09:53.434482'),
(25, '23', 'one more last', 'sdkbksj', 2, '2023-08-10 08:15:34.452395'),
(26, '', 'lsknfwelkevf', 'wefgfvw', 1, '2023-08-10 08:15:54.662142'),
(27, '', 'jai jai', 'fkwjwefwfbk', 1, '2023-08-10 08:16:21.237889'),
(28, '23', 'jkjkjkjk', 'gwfvs', 1, '2023-08-10 08:17:17.670300'),
(29, '', 'fromfrom', 'fwgfemfe', 1, '2023-08-10 08:17:48.415940'),
(30, '23', 'wdq2dq', 'qwdqwd', 1, '2023-08-10 08:18:57.566752'),
(31, '23', 'first', 'wefewafd', 2, '2023-08-10 08:19:24.629569');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reply`
--
ALTER TABLE `user_reply`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_reply`
--
ALTER TABLE `user_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
