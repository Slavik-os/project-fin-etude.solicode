-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2022 at 02:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puerto_dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `demands_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `matricule_employee` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `responsable_id` int(11) NOT NULL,
  `type_demand` varchar(255) NOT NULL,
  `conge_type` varchar(255) DEFAULT NULL,
  `departement` varchar(255) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `replacement` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_rh` varchar(255) DEFAULT NULL,
  `justification` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT '...',
  `created_date` date DEFAULT NULL,
  `heur_start` varchar(255) DEFAULT NULL,
  `heur_end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`demands_id`, `employee_id`, `matricule_employee`, `firstName`, `lastname`, `responsable_id`, `type_demand`, `conge_type`, `departement`, `date_start`, `date_end`, `replacement`, `status`, `status_rh`, `justification`, `fonction`, `comment`, `created_date`, `heur_start`, `heur_end`) VALUES
(17, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, 'IT', '2022-03-17', '2022-03-29', 'imimi', 'True', 'True', 'sadsada', 'devlopora', '', '2022-03-14', NULL, NULL),
(20, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, 'IT', '2022-04-08', '2022-03-22', 'akram el kalkha', 'True', NULL, 'DOCTOR', 'DEV', '', '2022-03-12', '11:30', '15:04'),
(21, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, 'IT', '2022-04-08', '2022-03-22', 'akram el kalkha', 'True', NULL, 'DOCTOR', 'DEV', 'nononone', '2022-03-12', '11:30', '15:04'),
(22, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, 'IT', '2022-04-08', '2022-03-22', 'akram el kalkha', NULL, NULL, 'DOCTOR', 'DEV', '...', '2022-03-12', '11:30', '15:04'),
(27, 53, '7779', 'fin_fin', 'fin_last', 6, 'DEMAND DABSENCE.', NULL, 'Finance', '2022-04-03', '2022-04-04', 'nobody', 'False', NULL, 'wqewqert', 'finance', '', '2022-03-14', NULL, NULL),
(29, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, 'IT', '2022-03-24', '2022-04-08', 'akram', 'True', NULL, 'asd', 'devlopora', '', '2022-03-19', NULL, NULL),
(30, 55, '7710', 'akrame', 'ijiuniu', 45, 'DEMAND DABSENCE.', NULL, '', '2022-03-09', '2022-04-08', 'akram el kalkha', 'True', NULL, 'absence pour moi', 'BATMAN', '', '2022-03-21', '12:01', '14:05'),
(31, 57, '899', 'rh_player', 'rh_pp', 47, 'DEMAND DABSENCE.', NULL, '', '2022-03-09', '2022-03-17', 'sssssssssss', 'True', 'False', 'ssssss', 'LAAAAAAA', '', '2022-03-21', '16:25', '18:25'),
(32, 59, '0164', 'mimin', 'rgqwe', 6, 'DEMAND DABSENCE.', NULL, 'Finance', '2022-04-07', '2022-04-09', 'momomo', 'False', 'True', 'qwe', 'DEVO', '', '2022-03-21', NULL, NULL),
(34, 25, '999', 'chaymae', 'chaymae', 45, 'DEMANDE DE CONGE', NULL, 'IT', '2022-03-18', '2022-03-23', 'mohamed', 'True', 'False', 'lalalla', 'devlopora', '', '2022-03-22', NULL, NULL),
(35, 25, '999', 'chaymae', 'chaymae', 45, 'DEMANDE DE CONGE', 'DEMANDE DE CONGE', 'IT', '2022-03-18', '2022-03-23', 'mohamed', 'True', NULL, 'lalalla', 'devlopora', '', '2022-03-22', NULL, NULL),
(36, 25, '999', 'chaymae', 'chaymae', 45, 'DEMANDE DE CONGE', 'Congé annuel', 'IT', '2022-04-08', '2022-04-10', 'asd', NULL, NULL, 'asdasd', 'devlopora', '...', '2022-03-22', NULL, NULL),
(37, 25, '999', 'chaymae', 'chaymae', 45, 'DEMAND DABSENCE.', NULL, '', '2022-03-02', '2022-04-02', 'mohamed', NULL, NULL, 'Test dentice', 'devlopora', '...', '2022-03-22', '15:37', '18:37');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL DEFAULT 0,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `departement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `firstName`, `lastName`, `departement`) VALUES
(6, 'fin_mo', 'el kalkha', 'FINANCE'),
(45, 'akram', 'el kalkha', 'IT'),
(47, 'el kalkha', 'rh user', 'RH');

-- --------------------------------------------------------

--
-- Table structure for table `employes_tbl`
--

CREATE TABLE `employes_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `matricule` char(4) NOT NULL,
  `role` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `date_em` date NOT NULL DEFAULT '0000-00-00',
  `departement` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `burreaux` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `phone_fix` varchar(255) DEFAULT NULL,
  `phone_extenstion` varchar(255) DEFAULT NULL,
  `phone_portable` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employes_tbl`
--

INSERT INTO `employes_tbl` (`id`, `username`, `password`, `matricule`, `role`, `firstName`, `lastname`, `email`, `cin`, `date_em`, `departement`, `fonction`, `burreaux`, `post`, `address`, `photo`, `phone_fix`, `phone_extenstion`, `phone_portable`, `status`) VALUES
(6, 'fin', '768a0f027c2142bf3f626e9422a6ffe9', '1228', 'responsable', 'fin_moiii3', 'el kalkha', '1qwe2312', 'L66q03399', '2022-02-08', 'FINANCE', 'dev', 'aaa', 'aaa', 'aaa', 'uploads/273026716_141097721699170_7489208430733415064_n.jpeg', '.....', '.....', '.....', NULL),
(25, 'user', '768a0f027c2142bf3f626e9422a6ffe9', '999', '', 'chaymae', 'chaymae', 'chaymae@gmail.com', 'kb6666', '2022-03-20', 'IT', 'devlopora', 'ddddd', 'dddaaa', 'asdasdas', 'uploads/275671506_1151431505712969_6835288854425686829_n.jpeg', '.....', '.....', '.....', NULL),
(45, 'akram', '768a0f027c2142bf3f626e9422a6ffe9', '667', 'responsable', 'akrame', 'el kalkha', 'eeeeeeeeeee@gmail.com', 'L660399', '2022-03-18', 'IT', 'FFFFFFFFFF', 'BBBBBBBBBBBB', 'PPPPPPPPPPPPPP', 'AAAAAAAAAAAAA', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', 'FDDDDDDD', 'EEEEEEEEEEE', 'TTTTTTTTTTTT', NULL),
(47, 'rh_user', '768a0f027c2142bf3f626e9422a6ffe9', '183', 'responsable', 'el mama', 'rh user', 'thespacebird@gmail.com', 'L660800', '2022-03-25', 'RH', 'service it', 'B-123', 'P-140', 'hmtmkwe', 'uploads/dancing-troll.gif', '.....', '.....', '.....', NULL),
(53, 'fin_user', '768a0f027c2142bf3f626e9422a6ffe9', '7779', '', 'fin_fin', 'fin_last', '712379a1', 'L6300123', '2022-03-25', 'FINANCE', 'finance', 'pwqe', 'bwqe', '712379a1', 'uploads/download.jpeg', '.....', '.....', '.....', NULL),
(57, 'nono', '768a0f027c2142bf3f626e9422a6ffe9', '899', '', 'rh_player', 'rh_pp', 'rh_@gmail.com', 'L77912', '2022-03-09', 'RH', 'LAAAAAAA', 'aaaQ', 'DDDDD', 'aaaaAAAAAA', 'uploads/Screen Shot 2021-12-11 at 20.38.23.png', '.....', '.....', '.....', NULL),
(59, NULL, '768a0f027c2142bf3f626e9422a6ffe9', '0166', '', 'miminoosssssss', 'rgqwe', 'emm@gmail.comw', 'KB7082', '2022-03-25', 'IT', 'DEVO', 'aaaaaa', 'PPPBBB', 'qweaaaaaaa', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(61, 'rh_test', '768a0f027c2142bf3f626e9422a6ffe9', '8892', '', 'test_teur', 'euur', 'thespacebirds@wgmail.com', 'L7723', '2022-04-16', 'IT', 'devlop', 'fff', 'qwee', 'AAAAAAAAA', 'uploads/C64E2848-511D-44EC-AE80-79D41738CD0A_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(63, 'rhh', '768a0f027c2142bf3f626e9422a6ffe9', '1220', '', 'momo', 'momomi', 'thespacebirds@gmail.come', 'kpiie', '2022-04-21', 'IT', 'ffffff', 'eeee', 'eeeeee', 'bbbbb', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(68, 'kapa', '768a0f027c2142bf3f626e9422a6ffe9', '843', '', 'noqwe', 'uiweru', 'virusslavikos@puerto.com', 'bn231we', '2022-04-08', 'FINANCE', '.....', '.....', '.....', 'bbbsfad', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(75, 'test_1', 'd41d8cd98f00b204e9800998ecf8427e', '7899', '', 'weqwe', 'ewrio', 'asdddddddddd', 'KN123', '0000-00-00', 'FINANCE', '.....', '.....', '.....', 'ASD', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(80, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '0164', '', 'wqe', 'qwe', 'qwewqewqf@wqe.com', '1234w', '2022-05-05', 'FINANCE', 'FFFFFFFFFONC', 'BRRRRR', 'PPPOSSSSSST', 'ADDDDDDDDDDDD', 'uploads/E78FEE56-74ED-4747-84BC-BEFFF812A057_1_105_c.jpeg', 'FIIIIIIIIIX', 'EXXXXXXX', 'TELEPPHHHO', NULL),
(84, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '7789', '', 'qwe', 'qwe', 'qwnso@gasd.com', 'L79', '0000-00-00', 'FINANCE', '.....', '.....', '.....', '.....', 'uploads/30728892_2124503501119323_4434534100824489984_n.png', '.....', '.....', '.....', NULL),
(86, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '300', '', 'akram_t', 'elk_k', 'asd@dmail.com', 'BK089', '0000-00-00', 'FINANCE', '.....', '.....', '.....', '.....', 'uploads/30728892_2124503501119323_4434534100824489984_n.png', '.....', '.....', '.....', NULL),
(88, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '301', '', 'akram_d', 'elk_e', 'asd@dmail.comw', 'BK0891', '0000-00-00', 'FINANCE', '.....', '.....', '.....', '.....', 'uploads/D6A0A02A-AF47-4F55-8911-6757F6EC447D_4_5005_c.jpeg', 'fiiiiiix', '', '', NULL),
(90, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '688', '', 'qwed', 'qwe', '.....', '78791', '0000-00-00', 'FINANCE', '.....', '.....', '.....', '.....', 'uploads/F55775F8-89D5-4441-AC4D-948304B42DE1_1_201_a.jpeg', '.....', '.....', '.....', NULL),
(92, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '7891', '', 'lino', 'nubi', 'wqe@puertotransit.com', 'KB0OWE', '2022-04-26', 'IT', 'FONCCCCC', 'BURRRRR', 'POSTTTTTTTT', '2022-04-26', 'uploads/273026716_141097721699170_7489208430733415064_n.jpeg', 'FIIIIIXDDDD', 'EXTTTTTT', 'PPPORTTTTT', NULL),
(94, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '880', '', 'TST', 'TSET', 'wmm@glai.com', 'ljk234', '2022-04-16', 'FINANCE', 'foncccc', '.....', '.....', 'sasdasd', 'uploads/273026716_141097721699170_7489208430733415064_n.jpeg', '.....', '.....', '.....', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `responsable_name` varchar(255) NOT NULL,
  `responsable_depar` varchar(255) NOT NULL,
  `allowed_permitiion` varchar(255) DEFAULT NULL,
  `total_access` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`responsable_name`, `responsable_depar`, `allowed_permitiion`, `total_access`) VALUES
('akram', 'fin_moiii3', 'phone_extenstion,', 'edite/delete'),
('akram', 'fin_moiii3', 'burreaux,phone_extenstion,', 'edite/delete'),
('akram', 'fin_moiii3 ', 'burreaux,post,phone_extenstion,', 'edite/delete');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`demands_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `matricule_employee` (`matricule_employee`);

--
-- Indexes for table `employes_tbl`
--
ALTER TABLE `employes_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricule` (`matricule`),
  ADD UNIQUE KEY `cin` (`cin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `demands_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `employes_tbl`
--
ALTER TABLE `employes_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `demands`
--
ALTER TABLE `demands`
  ADD CONSTRAINT `demands_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employes_tbl` (`id`),
  ADD CONSTRAINT `demands_ibfk_2` FOREIGN KEY (`matricule_employee`) REFERENCES `Employes_tbl` (`matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
