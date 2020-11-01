-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2020 at 03:20 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12526180_patient`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `pulse` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `temp` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `pulse`, `temp`) VALUES
(345, '90', '70'),
(346, '238', '0.00'),
(347, '229', '0.00'),
(348, '209', '0.00'),
(349, '0', '0'),
(350, '0', '0'),
(351, '0', '0'),
(352, '0', '0'),
(353, '0', '0'),
(354, '0', '0'),
(355, '0', '0'),
(356, '170', '0.00'),
(357, '107', '34.00'),
(358, '84', '34.00'),
(359, '76', '34.00'),
(360, '127', '34.00'),
(361, '0', '0'),
(362, '0', '0'),
(363, '90', '70'),
(364, '0', '0'),
(365, '93', '32'),
(366, '0', '0'),
(367, '93', '32'),
(368, '0', '0'),
(369, '0', '0'),
(370, '63', 'nan'),
(371, '66', 'nan'),
(372, '70', 'nan'),
(373, '75', 'nan'),
(374, '76', 'nan'),
(375, '77', 'nan'),
(376, '74', 'nan'),
(377, '138', 'nan'),
(378, '143', 'nan'),
(379, '143', 'nan'),
(380, '146', 'nan'),
(381, '122', 'nan'),
(382, '113', 'nan'),
(383, '92', 'nan'),
(384, '97', 'nan'),
(385, '101', 'nan'),
(386, '107', 'nan'),
(387, '106', 'nan'),
(388, '109', 'nan'),
(389, '116', 'nan'),
(390, '99', 'nan'),
(391, '46', 'nan'),
(392, '129', 'nan'),
(393, '229', 'nan'),
(394, '136', 'nan'),
(395, '51', 'nan'),
(396, '61', 'nan'),
(397, '98', 'nan'),
(398, '56', 'nan'),
(399, '24', 'nan'),
(400, '25', 'nan'),
(401, '27', 'nan'),
(402, '29', 'nan'),
(403, '31', 'nan'),
(404, '35', 'nan'),
(405, '40', 'nan'),
(406, '47', 'nan'),
(407, '56', 'nan'),
(408, '70', 'nan'),
(409, '94', 'nan'),
(410, '106', 'nan'),
(411, '99', 'nan'),
(412, '93', 'nan'),
(413, '75', 'nan'),
(414, '0', '0'),
(415, '64', 'nan'),
(416, '0', '0'),
(417, '54', 'nan'),
(418, '0', '0'),
(419, '68', 'nan'),
(420, '71', 'nan'),
(421, '75', 'nan'),
(422, '82', 'nan'),
(423, '89', 'nan'),
(424, '82', 'nan'),
(425, '80', 'nan'),
(426, '81', 'nan'),
(427, '85', 'nan'),
(428, '79', 'nan'),
(429, '75', 'nan'),
(430, '114', 'nan'),
(431, '0', '0'),
(432, '117', 'nan'),
(433, '116', 'nan'),
(434, '120', 'nan'),
(435, '0', '0'),
(436, '127', 'nan'),
(437, '238', 'nan'),
(438, '0', '0'),
(439, '24', 'nan'),
(440, '25', 'nan'),
(441, '26', 'nan'),
(442, '105', 'nan'),
(443, '110', 'nan'),
(444, '132', 'nan'),
(445, '137', 'nan'),
(446, '144', 'nan'),
(447, '31', 'nan'),
(448, '26', 'nan'),
(449, '27', 'nan'),
(450, '29', 'nan'),
(451, '31', 'nan'),
(452, '0', '0'),
(453, '50', 'nan'),
(454, '96', 'nan'),
(455, '100', 'nan'),
(456, '91', 'nan'),
(457, '96', 'nan'),
(458, '234', 'nan'),
(459, '235', 'nan'),
(460, '125', 'nan'),
(461, '63', 'nan'),
(462, '24', 'nan'),
(463, '111', 'nan'),
(464, '116', 'nan'),
(465, '122', 'nan'),
(466, '49', 'nan'),
(467, '51', 'nan'),
(468, '54', 'nan'),
(469, '58', 'nan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
