-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2017 at 12:41 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autograder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_main`
--

CREATE TABLE `admin_main` (
  `adminid` varchar(20) NOT NULL,
  `adminname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_main`
--

INSERT INTO `admin_main` (`adminid`, `adminname`) VALUES
('admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_belongtogroups`
--

CREATE TABLE `faculty_belongtogroups` (
  `facultyid` varchar(20) NOT NULL,
  `groupid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_main`
--

CREATE TABLE `faculty_main` (
  `facultyid` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `count_problemsadded` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_main`
--

INSERT INTO `faculty_main` (`facultyid`, `fullname`, `dob`, `emailid`, `college`, `branch`, `designation`, `count_problemsadded`) VALUES
('AJAY', 'Ajay Kumar', '1980-04-18', 'ajaykumar@thapar.edu', 'Thapar University', 'COE', 'Assisstant Professor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `groups_faculty`
--

CREATE TABLE `groups_faculty` (
  `groupid` varchar(20) NOT NULL,
  `groupname` varchar(20) NOT NULL,
  `groupdetails` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups_students`
--

CREATE TABLE `groups_students` (
  `groupid` varchar(20) NOT NULL,
  `groupname` varchar(20) NOT NULL,
  `groupdetails` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_students`
--

INSERT INTO `groups_students` (`groupid`, `groupname`, `groupdetails`) VALUES
('CML', 'CML 2k18', 'The CML Batch of 2018'),
('DUMMY', 'Dummy group', 'just for the video! :)');

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`username`, `password`, `createdon`, `lastlogin`) VALUES
('101410052', '1c4de1eba5184794cbed9e7fba3d154ec1140943', '2017-12-20 10:36:52', '0000-00-00 00:00:00'),
('101410053', '76399e462b2771a5f032b1d24899d1ac5aebcb56', '2017-12-20 10:36:51', '0000-00-00 00:00:00'),
('101410062', 'a6e596049a2285414e5517cabe977ba4b61fc0ea', '2017-12-20 10:36:52', '0000-00-00 00:00:00'),
('101410067', 'f357afa1cd3f215e79f8beba232a6f5e05105d4a', '2017-12-20 10:36:52', '0000-00-00 00:00:00'),
('101460003', 'cef7c766fb7776361413a0be5a22af5a4cdb115c', '2017-12-20 10:36:52', '0000-00-00 00:00:00'),
('admin', 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d', '2017-05-09 15:21:22', '2017-12-20 10:35:48'),
('AJAY', '55cfb14691d272191a5884f5f3287d9e3f8814e9', '2017-12-19 20:18:17', '2017-12-20 10:39:52'),
('NITISH', '6e423b684d2f58a61a5255b60400a14492c933d7', '2017-12-06 20:58:32', '2017-12-19 16:46:38'),
('YUVRAJ', 'd7d5ea6d7dc6e8906c5fb219a487947c411d3698', '2017-05-09 15:26:54', '2017-12-20 10:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `problem_code` varchar(20) NOT NULL,
  `addedon` date DEFAULT NULL,
  `addedby` varchar(20) DEFAULT NULL,
  `number_testfiles` int(11) DEFAULT NULL,
  `timelimit` int(11) DEFAULT NULL,
  `memorylimit` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `showmistakes` varchar(20) DEFAULT NULL,
  `problem_title` varchar(50) DEFAULT NULL,
  `visiblesolutions` varchar(10) DEFAULT NULL,
  `totalsubmissions` int(11) DEFAULT '0',
  `acceptedsubmissions` int(11) DEFAULT '0',
  `solvedby` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`problem_code`, `addedon`, `addedby`, `number_testfiles`, `timelimit`, `memorylimit`, `type`, `showmistakes`, `problem_title`, `visiblesolutions`, `totalsubmissions`, `acceptedsubmissions`, `solvedby`) VALUES
('REVARR', '2017-12-20', 'AJAY', 2, 2, 1000000, 'practice', 'true', 'Reverse an array', 'true', 20, 7, 1),
('ROTARR', '2017-12-20', 'AJAY', 2, 1, 1000000, 'practice', 'true', 'Rotate the array', 'true', 6, 0, 0);

--
-- Triggers `problems`
--
DELIMITER $$
CREATE TRIGGER `incrementproblemsadded` AFTER INSERT ON `problems` FOR EACH ROW begin
	update faculty_main set count_problemsadded=count_problemsadded+1 where facultyid=new.addedby;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `problems_languagesallowed`
--

CREATE TABLE `problems_languagesallowed` (
  `problem_code` varchar(20) NOT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems_languagesallowed`
--

INSERT INTO `problems_languagesallowed` (`problem_code`, `language`) VALUES
('REVARR', 'C'),
('REVARR', 'C++'),
('ROTARR', 'C'),
('ROTARR', 'C++');

-- --------------------------------------------------------

--
-- Table structure for table `students_belongtogroups`
--

CREATE TABLE `students_belongtogroups` (
  `rollno` varchar(20) NOT NULL,
  `groupid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_belongtogroups`
--

INSERT INTO `students_belongtogroups` (`rollno`, `groupid`) VALUES
('NITISH', 'CML'),
('NITISH', 'DUMMY'),
('YUVRAJ', 'CML'),
('YUVRAJ', 'DUMMY');

-- --------------------------------------------------------

--
-- Table structure for table `students_main`
--

CREATE TABLE `students_main` (
  `rollno` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `count_submissions` int(11) DEFAULT '0',
  `count_AC` int(11) DEFAULT '0',
  `count_WA` int(11) DEFAULT '0',
  `count_TLE` int(11) DEFAULT '0',
  `count_RTE` int(11) DEFAULT '0',
  `count_CTE` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_main`
--

INSERT INTO `students_main` (`rollno`, `fullname`, `dob`, `emailid`, `college`, `branch`, `count_submissions`, `count_AC`, `count_WA`, `count_TLE`, `count_RTE`, `count_CTE`) VALUES
('101410052', 'Sidharth', '0000-00-00', 'kathpal.sid1@gmail.com', 'thapar', 'computer\n', 0, 0, 0, 0, 0, 0),
('101410053', 'sreeparna deb', '0000-00-00', 'sreeparna@gmail.com', 'thapar', 'computer\n', 0, 0, 0, 0, 0, 0),
('101410062', 'Vidushi sharma', '0000-00-00', 'sharmavidz@gmail.com', 'thapar', 'computer\n', 0, 0, 0, 0, 0, 0),
('101410067', 'Akash', '0000-00-00', 'akash@gmail.com', 'thapar', 'computer\n', 0, 0, 0, 0, 0, 0),
('101460003', 'Nitish sarin', '0000-00-00', 'nitishsarin@gmail.con', 'thapar', 'computer\n', 0, 0, 0, 0, 0, 0),
('NITISH', 'Nitish Sarin', '1995-04-18', 'nitishhsarin@gmail.com', 'Thapar University', 'CML', 0, 0, 0, 0, 0, 0),
('YUVRAJ', 'Yuvraj Singla', '1995-04-18', 'yuvrajsingla1995@gmail.com', 'Thapar University', 'CML', 26, 7, 11, 3, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submissionid` int(11) NOT NULL,
  `problem_code` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `submissiontime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verdict` varchar(20) DEFAULT NULL,
  `executiontime` float DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `count_ac` int(11) DEFAULT NULL,
  `count_wa` int(11) DEFAULT NULL,
  `count_rte` int(11) DEFAULT NULL,
  `count_tle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`submissionid`, `problem_code`, `username`, `submissiontime`, `verdict`, `executiontime`, `language`, `count_ac`, `count_wa`, `count_rte`, `count_tle`) VALUES
(172, 'REVARR', 'YUVRAJ', '2017-12-19 20:33:53', 'CTE', 0, 'C++', 0, 0, 0, 0),
(173, 'REVARR', 'YUVRAJ', '2017-12-19 20:34:37', 'WA', 0.00614905, 'C++', 0, 2, 0, 0),
(174, 'REVARR', 'YUVRAJ', '2017-12-19 20:35:41', 'AC', 0.00517297, 'C++', 2, 0, 0, 0),
(175, 'REVARR', 'YUVRAJ', '2017-12-19 20:56:02', 'WA', 0.00530791, 'C++', 1, 1, 0, 0),
(176, 'REVARR', 'YUVRAJ', '2017-12-19 20:57:36', 'CTE', 0, 'C++', 0, 0, 0, 0),
(177, 'REVARR', 'YUVRAJ', '2017-12-19 20:58:12', 'CTE', 0, 'C++', 0, 0, 0, 0),
(178, 'REVARR', 'YUVRAJ', '2017-12-19 20:59:33', 'TLE', 2.00517, 'C++', 0, 0, 0, 2),
(179, 'REVARR', 'YUVRAJ', '2017-12-19 20:20:42', 'WA', 0.00551105, 'C++', 1, 1, 0, 0),
(180, 'REVARR', 'YUVRAJ', '2017-12-19 20:27:44', 'AC', 0.00562191, 'C++', 2, 0, 0, 0),
(181, 'REVARR', 'YUVRAJ', '2017-12-19 21:03:25', 'WA', 0.00622201, 'C++', 1, 1, 0, 0),
(182, 'REVARR', 'YUVRAJ', '2017-12-19 21:04:35', 'AC', 0.00620914, 'C++', 2, 0, 0, 0),
(183, 'REVARR', 'YUVRAJ', '2017-12-19 21:06:06', 'AC', 0.00566292, 'C++', 2, 0, 0, 0),
(184, 'REVARR', 'YUVRAJ', '2017-12-19 21:07:17', 'AC', 0.00549698, 'C++', 2, 0, 0, 0),
(185, 'REVARR', 'YUVRAJ', '2017-12-19 21:09:40', 'WA', 0.00569487, 'C++', 1, 1, 0, 0),
(186, 'REVARR', 'YUVRAJ', '2017-12-19 21:10:07', 'AC', 0.0056591, 'C++', 2, 0, 0, 0),
(187, 'REVARR', 'YUVRAJ', '2017-12-19 21:11:14', 'WA', 0.00576711, 'C++', 1, 1, 0, 0),
(188, 'REVARR', 'YUVRAJ', '2017-12-19 21:11:54', 'WA', 0.00538707, 'C++', 0, 2, 0, 0),
(189, 'ROTARR', 'YUVRAJ', '2017-12-19 21:12:16', 'WA', 0.00574422, 'C++', 0, 2, 0, 0),
(190, 'ROTARR', 'YUVRAJ', '2017-12-19 21:12:39', 'CTE', 0, 'C++', 0, 0, 0, 0),
(191, 'ROTARR', 'YUVRAJ', '2017-12-19 21:13:14', 'WA', 0.0061028, 'C++', 0, 2, 0, 0),
(192, 'REVARR', 'YUVRAJ', '2017-12-19 21:47:36', 'WA', 0.00573516, 'C++', 1, 1, 0, 0),
(193, 'ROTARR', 'YUVRAJ', '2017-12-20 09:24:11', 'CTE', 0, 'C++', 0, 0, 0, 0),
(194, 'ROTARR', 'YUVRAJ', '2017-12-20 09:24:37', 'TLE', 1.00534, 'C++', 0, 0, 0, 2),
(195, 'ROTARR', 'YUVRAJ', '2017-12-20 09:24:50', 'WA', 0.00506806, 'C++', 1, 1, 0, 0),
(196, 'REVARR', 'YUVRAJ', '2017-12-20 10:43:27', 'AC', 0.018873, 'C++', 2, 0, 0, 0),
(197, 'REVARR', 'YUVRAJ', '2017-12-20 10:45:55', 'TLE', 2.0035, 'C++', 0, 0, 0, 2);

--
-- Triggers `submissions`
--
DELIMITER $$
CREATE TRIGGER `incrementverdictstats` AFTER UPDATE ON `submissions` FOR EACH ROW begin
	declare v_count int;
	if new.username in (select rollno from students_main)
	then
		update problems set totalsubmissions=totalsubmissions+1 where problem_code=new.problem_code;
		update students_main set count_submissions=count_submissions+1 where rollno=new.username;
		if new.verdict='AC'
		then
			update problems set acceptedsubmissions=acceptedsubmissions+1 where problem_code=new.problem_code;
			update students_main set count_AC=count_AC + 1 where rollno=new.username;
			select count(*) into v_count from submissions where submissionid!=new.submissionid and verdict='AC' and problem_code=new.problem_code and username=new.username;
			if v_count=0
			then
				update problems set solvedby=solvedby+1 where problem_code=new.problem_code;
			end if;
		elseif new.verdict='WA'
		then
			update students_main set count_WA=count_WA + 1 where rollno=new.username;
		elseif new.verdict='CTE'
		then
			update students_main set count_CTE=count_CTE + 1 where rollno=new.username;
		elseif new.verdict='RTE'
		then
			update students_main set count_RTE=count_RTE + 1 where rollno=new.username;
		elseif new.verdict='TLE'
		then
			update students_main set count_TLE=count_TLE + 1 where rollno=new.username;
		end if;
	end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_attemptedby`
--

CREATE TABLE `test_attemptedby` (
  `testid` varchar(20) NOT NULL,
  `rollno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_attemptedby`
--

INSERT INTO `test_attemptedby` (`testid`, `rollno`) VALUES
('DEC17', 'YUVRAJ');

-- --------------------------------------------------------

--
-- Table structure for table `test_main`
--

CREATE TABLE `test_main` (
  `testid` varchar(20) NOT NULL,
  `testname` varchar(30) DEFAULT NULL,
  `testdetails` varchar(100) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visiblefrom` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visibletill` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_main`
--

INSERT INTO `test_main` (`testid`, `testname`, `testdetails`, `createdby`, `createdon`, `visiblefrom`, `visibletill`) VALUES
('DEC17', 'December 2017', 'The Long hour Challenge.', 'AJAY', '2017-12-19 20:18:22', '2017-12-19 19:30:00', '2017-12-19 21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_problems`
--

CREATE TABLE `test_problems` (
  `testid` varchar(20) NOT NULL,
  `problem_code` varchar(20) NOT NULL,
  `totalsubmissions` int(11) DEFAULT '0',
  `acceptedsubmissions` int(11) DEFAULT '0',
  `solvedby` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_problems`
--

INSERT INTO `test_problems` (`testid`, `problem_code`, `totalsubmissions`, `acceptedsubmissions`, `solvedby`) VALUES
('DEC17', 'REVARR', 10, 5, 1),
('DEC17', 'ROTARR', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_submissions`
--

CREATE TABLE `test_submissions` (
  `testid` varchar(20) NOT NULL,
  `submissionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_submissions`
--

INSERT INTO `test_submissions` (`testid`, `submissionid`) VALUES
('DEC17', 179),
('DEC17', 180),
('DEC17', 181),
('DEC17', 182),
('DEC17', 183),
('DEC17', 184),
('DEC17', 185),
('DEC17', 186),
('DEC17', 187),
('DEC17', 188),
('DEC17', 189),
('DEC17', 190),
('DEC17', 191);

--
-- Triggers `test_submissions`
--
DELIMITER $$
CREATE TRIGGER `incrementtestproblemstats` AFTER INSERT ON `test_submissions` FOR EACH ROW begin
	declare v_verdict varchar(20);
	declare v_count int;
	declare v_problem_code varchar(20);
	declare v_username varchar(20);

	select problem_code,username into v_problem_code,v_username from submissions where submissionid=new.submissionid;
	if v_username IN (select rollno from students_main)
	then

		update test_problems set totalsubmissions=totalsubmissions+1 where testid=new.testid and problem_code=v_problem_code;
		select verdict into v_verdict from submissions where submissionid=new.submissionid;
		if v_verdict='AC'
		then
			update test_problems set acceptedsubmissions=acceptedsubmissions+1 where testid=new.testid and problem_code=v_problem_code;

			select count(*) into v_count from (select * from test_submissions where testid=new.testid) as A natural join (select * from submissions where problem_code=v_problem_code and username=v_username) as B where submissionid!=new.submissionid and verdict='AC';
			if v_count=0
			then
				update test_problems set solvedby=solvedby+1 where testid=new.testid and problem_code=v_problem_code;
			end if;
		end if;

	end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_visibleto`
--

CREATE TABLE `test_visibleto` (
  `testid` varchar(20) NOT NULL,
  `groupid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_visibleto`
--

INSERT INTO `test_visibleto` (`testid`, `groupid`) VALUES
('DEC17', 'CML');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `type`) VALUES
('101410052', 'student'),
('101410053', 'student'),
('101410062', 'student'),
('101410067', 'student'),
('101460003', 'student'),
('admin', 'admin'),
('AJAY', 'faculty'),
('NITISH', 'student'),
('YUVRAJ', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_main`
--
ALTER TABLE `admin_main`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `faculty_belongtogroups`
--
ALTER TABLE `faculty_belongtogroups`
  ADD PRIMARY KEY (`facultyid`,`groupid`),
  ADD KEY `fkey_fg_fgid` (`groupid`);

--
-- Indexes for table `faculty_main`
--
ALTER TABLE `faculty_main`
  ADD PRIMARY KEY (`facultyid`);

--
-- Indexes for table `groups_faculty`
--
ALTER TABLE `groups_faculty`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `groups_students`
--
ALTER TABLE `groups_students`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`problem_code`),
  ADD KEY `fkey_probadd_fid` (`addedby`);

--
-- Indexes for table `problems_languagesallowed`
--
ALTER TABLE `problems_languagesallowed`
  ADD PRIMARY KEY (`problem_code`,`language`);

--
-- Indexes for table `students_belongtogroups`
--
ALTER TABLE `students_belongtogroups`
  ADD PRIMARY KEY (`rollno`,`groupid`),
  ADD KEY `fkey_sg_sgid` (`groupid`);

--
-- Indexes for table `students_main`
--
ALTER TABLE `students_main`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submissionid`),
  ADD KEY `fkey_submit_pid` (`problem_code`),
  ADD KEY `fkey_submit_uid` (`username`);

--
-- Indexes for table `test_attemptedby`
--
ALTER TABLE `test_attemptedby`
  ADD PRIMARY KEY (`testid`,`rollno`),
  ADD KEY `fkey_testattempt_rollno` (`rollno`);

--
-- Indexes for table `test_main`
--
ALTER TABLE `test_main`
  ADD PRIMARY KEY (`testid`),
  ADD KEY `fkey_testcb_fid` (`createdby`);

--
-- Indexes for table `test_problems`
--
ALTER TABLE `test_problems`
  ADD PRIMARY KEY (`testid`,`problem_code`),
  ADD KEY `fkey_prob_pcode` (`problem_code`);

--
-- Indexes for table `test_submissions`
--
ALTER TABLE `test_submissions`
  ADD PRIMARY KEY (`testid`,`submissionid`),
  ADD KEY `fkey_testsubmissions_subid` (`submissionid`);

--
-- Indexes for table `test_visibleto`
--
ALTER TABLE `test_visibleto`
  ADD PRIMARY KEY (`testid`,`groupid`),
  ADD KEY `fkey_visibleto_gid` (`groupid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_main`
--
ALTER TABLE `admin_main`
  ADD CONSTRAINT `fkey_adminid_userid` FOREIGN KEY (`adminid`) REFERENCES `users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `faculty_belongtogroups`
--
ALTER TABLE `faculty_belongtogroups`
  ADD CONSTRAINT `fkey_fg_fgid` FOREIGN KEY (`groupid`) REFERENCES `groups_faculty` (`groupid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_fg_fid` FOREIGN KEY (`facultyid`) REFERENCES `faculty_main` (`facultyid`) ON DELETE CASCADE;

--
-- Constraints for table `faculty_main`
--
ALTER TABLE `faculty_main`
  ADD CONSTRAINT `fkey_fid_uid` FOREIGN KEY (`facultyid`) REFERENCES `users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD CONSTRAINT `fkey_loginadmin_uid` FOREIGN KEY (`username`) REFERENCES `users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `fkey_probadd_fid` FOREIGN KEY (`addedby`) REFERENCES `faculty_main` (`facultyid`) ON DELETE SET NULL;

--
-- Constraints for table `problems_languagesallowed`
--
ALTER TABLE `problems_languagesallowed`
  ADD CONSTRAINT `fkey_langallowed_problemcode` FOREIGN KEY (`problem_code`) REFERENCES `problems` (`problem_code`) ON DELETE CASCADE;

--
-- Constraints for table `students_belongtogroups`
--
ALTER TABLE `students_belongtogroups`
  ADD CONSTRAINT `fkey_sg_rollno` FOREIGN KEY (`rollno`) REFERENCES `students_main` (`rollno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_sg_sgid` FOREIGN KEY (`groupid`) REFERENCES `groups_students` (`groupid`) ON DELETE CASCADE;

--
-- Constraints for table `students_main`
--
ALTER TABLE `students_main`
  ADD CONSTRAINT `fkey_rollno_uid` FOREIGN KEY (`rollno`) REFERENCES `users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `fkey_submit_pid` FOREIGN KEY (`problem_code`) REFERENCES `problems` (`problem_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_submit_uid` FOREIGN KEY (`username`) REFERENCES `users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `test_attemptedby`
--
ALTER TABLE `test_attemptedby`
  ADD CONSTRAINT `fkey_testattempt_rollno` FOREIGN KEY (`rollno`) REFERENCES `students_main` (`rollno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_testattempt_tid` FOREIGN KEY (`testid`) REFERENCES `test_main` (`testid`) ON DELETE CASCADE;

--
-- Constraints for table `test_main`
--
ALTER TABLE `test_main`
  ADD CONSTRAINT `fkey_testcb_fid` FOREIGN KEY (`createdby`) REFERENCES `faculty_main` (`facultyid`) ON DELETE SET NULL;

--
-- Constraints for table `test_problems`
--
ALTER TABLE `test_problems`
  ADD CONSTRAINT `fkey_prob_pcode` FOREIGN KEY (`problem_code`) REFERENCES `problems` (`problem_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_prob_tid` FOREIGN KEY (`testid`) REFERENCES `test_main` (`testid`) ON DELETE CASCADE;

--
-- Constraints for table `test_submissions`
--
ALTER TABLE `test_submissions`
  ADD CONSTRAINT `fkey_testsubmissions_subid` FOREIGN KEY (`submissionid`) REFERENCES `submissions` (`submissionid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_testsubmissions_testid` FOREIGN KEY (`testid`) REFERENCES `test_main` (`testid`) ON DELETE CASCADE;

--
-- Constraints for table `test_visibleto`
--
ALTER TABLE `test_visibleto`
  ADD CONSTRAINT `fkey_visibleto_gid` FOREIGN KEY (`groupid`) REFERENCES `groups_students` (`groupid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkey_visibleto_tid` FOREIGN KEY (`testid`) REFERENCES `test_main` (`testid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
