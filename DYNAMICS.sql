-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2021 at 09:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DYNAMICS`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MC40200`
--

CREATE TABLE `MC40200` (
  `CURNCYID` char(15) NOT NULL,
  `CURRNIDX` smallint(6) NOT NULL,
  `NOTEINDX` decimal(19,5) NOT NULL,
  `CRNCYDSC` char(31) NOT NULL,
  `CRNCYSYM` char(3) NOT NULL,
  `CNYSYMAR_1` smallint(6) NOT NULL,
  `CNYSYMAR_2` smallint(6) NOT NULL,
  `CNYSYMAR_3` smallint(6) NOT NULL,
  `CYSYMPLC` smallint(6) NOT NULL,
  `INCLSPAC` tinyint(4) NOT NULL,
  `NEGSYMBL` smallint(6) NOT NULL,
  `NGSMAMPC` smallint(6) NOT NULL,
  `NEGSMPLC` smallint(6) NOT NULL,
  `DECSYMBL` smallint(6) NOT NULL,
  `DECPLCUR` smallint(6) NOT NULL,
  `THOUSSYM` smallint(6) NOT NULL,
  `CURTEXT_1` char(25) NOT NULL,
  `CURTEXT_2` char(25) NOT NULL,
  `CURTEXT_3` char(25) NOT NULL,
  `ISOCURRC` char(3) NOT NULL,
  `CURLNGID` smallint(6) NOT NULL,
  `DEX_ROW_TS` datetime NOT NULL,
  `DEX_ROW_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MC40200`
--

INSERT INTO `MC40200` (`CURNCYID`, `CURRNIDX`, `NOTEINDX`, `CRNCYDSC`, `CRNCYSYM`, `CNYSYMAR_1`, `CNYSYMAR_2`, `CNYSYMAR_3`, `CYSYMPLC`, `INCLSPAC`, `NEGSYMBL`, `NGSMAMPC`, `NEGSMPLC`, `DECSYMBL`, `DECPLCUR`, `THOUSSYM`, `CURTEXT_1`, `CURTEXT_2`, `CURTEXT_3`, `ISOCURRC`, `CURLNGID`, `DEX_ROW_TS`, `DEX_ROW_ID`) VALUES
('USD', 1001, '121.00000', 'Moneda dolaress', 'USD', 0, 1, 1, 0, 1, 1, 0, 0, 2, 3, 3, 'Dólares', 'Centavos', 'Y', 'Dol', 0, '2020-09-30 16:10:15', 2),
('C$', 1002, '122.00000', 'Cordobas', 'COR', 0, 1, 1, 0, 1, 1, 0, 0, 2, 3, 3, 'Dólares', 'Centavos', 'Y', 'NIO', 0, '2021-02-05 16:44:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `MC60100`
--

CREATE TABLE `MC60100` (
  `CMPANYID` smallint(6) NOT NULL,
  `CURNCYID` char(15) NOT NULL,
  `INACTIVE` tinyint(4) NOT NULL,
  `DEX_ROW_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MC60100`
--

INSERT INTO `MC60100` (`CMPANYID`, `CURNCYID`, `INACTIVE`, `DEX_ROW_ID`) VALUES
(1, 'C$', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_22_153336_create_m_c40200_s_table', 1),
(6, '2021_10_22_154610_create_s_y01400_s_table', 1),
(7, '2021_10_22_154659_create_s_y01500_s_table', 1),
(8, '2021_10_24_190552_create_m_c60100_s_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SY01400`
--

CREATE TABLE `SY01400` (
  `USERID` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `DEX_ROW_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SY01400`
--

INSERT INTO `SY01400` (`USERID`, `USERNAME`, `PASSWORD`, `DEX_ROW_ID`) VALUES
('sa', '$2y$12$amYUEa99oG2XsjODdGDYKe/KK6aGBJe5ZNX862YXLWCEw08tLae3q', '$2y$12$amYUEa99oG2XsjODdGDYKe/KK6aGBJe5ZNX862YXLWCEw08tLae3q', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SY01500`
--

CREATE TABLE `SY01500` (
  `LSTUSRED` char(15) NOT NULL,
  `CREATDDT` datetime NOT NULL,
  `MODIFDT` datetime NOT NULL,
  `CMPANYID` smallint(6) NOT NULL,
  `CMPNYNAM` char(65) NOT NULL,
  `TAXEXMT1` char(25) NOT NULL,
  `TAXEXMT2` char(25) NOT NULL,
  `TAXREGTN` char(25) NOT NULL,
  `COPTXSCH` char(15) NOT NULL,
  `COSTXSCH` char(15) NOT NULL,
  `LOCATNNM` char(31) NOT NULL,
  `ADRCNTCT` char(61) NOT NULL,
  `ADDRESS1` char(61) NOT NULL,
  `ADDRESS2` char(61) NOT NULL,
  `ADDRESS3` char(61) NOT NULL,
  `CITY` char(35) NOT NULL,
  `COUNTY` char(61) NOT NULL,
  `STATE` char(29) NOT NULL,
  `ZIPCODE` char(11) NOT NULL,
  `PHONE1` char(21) NOT NULL,
  `PHONE2` char(21) NOT NULL,
  `PHONE3` char(21) NOT NULL,
  `FAXNUMBR` char(21) NOT NULL,
  `USESCRTY` tinyint(3) UNSIGNED NOT NULL,
  `UDCOSTR1` char(31) NOT NULL,
  `UDCOSTR2` char(31) NOT NULL,
  `CMPCNTRY` char(61) NOT NULL,
  `NOTEINDX` decimal(19,5) NOT NULL,
  `PPSFRNUM` char(25) NOT NULL,
  `PPSTAXRT` smallint(6) NOT NULL,
  `PPSVNDID` char(15) NOT NULL,
  `VATMODE` tinyint(3) UNSIGNED NOT NULL,
  `LOCATNID` char(15) NOT NULL,
  `INTERID` char(5) NOT NULL,
  `ACSEGSEP` char(50) NOT NULL,
  `SECOPTS` binary(50) NOT NULL,
  `DisplayRegisteredPalette` tinyint(3) UNSIGNED NOT NULL,
  `Company_Options` binary(50) NOT NULL,
  `Vets100CompanyNumber` char(21) NOT NULL,
  `TYPEOFBUSINESS` char(31) NOT NULL,
  `DUNS_Number` char(21) NOT NULL,
  `SICNUMBER` char(15) NOT NULL,
  `GOVCRPID` char(31) NOT NULL,
  `BRNCHNMBR` char(21) NOT NULL,
  `DFLTTXDTLID` char(15) NOT NULL,
  `PurchasesTaxDetailID` char(15) NOT NULL,
  `CCode` char(7) NOT NULL,
  `IVTRFDOCFMT` smallint(6) NOT NULL,
  `Offline_User` char(15) NOT NULL,
  `WORKFLOWENABLED` tinyint(3) UNSIGNED NOT NULL,
  `CrmCredentialsMethod` smallint(6) NOT NULL,
  `CrmOrganizationName` char(255) NOT NULL,
  `CrmServiceUrl` char(255) NOT NULL,
  `EnableGLReporting` tinyint(3) UNSIGNED NOT NULL,
  `EnableAAReporting` tinyint(3) UNSIGNED NOT NULL,
  `UseDateEffectiveTax` tinyint(3) UNSIGNED NOT NULL,
  `DateToUse` smallint(6) NOT NULL,
  `DEX_ROW_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SY01500`
--

INSERT INTO `SY01500` (`LSTUSRED`, `CREATDDT`, `MODIFDT`, `CMPANYID`, `CMPNYNAM`, `TAXEXMT1`, `TAXEXMT2`, `TAXREGTN`, `COPTXSCH`, `COSTXSCH`, `LOCATNNM`, `ADRCNTCT`, `ADDRESS1`, `ADDRESS2`, `ADDRESS3`, `CITY`, `COUNTY`, `STATE`, `ZIPCODE`, `PHONE1`, `PHONE2`, `PHONE3`, `FAXNUMBR`, `USESCRTY`, `UDCOSTR1`, `UDCOSTR2`, `CMPCNTRY`, `NOTEINDX`, `PPSFRNUM`, `PPSTAXRT`, `PPSVNDID`, `VATMODE`, `LOCATNID`, `INTERID`, `ACSEGSEP`, `SECOPTS`, `DisplayRegisteredPalette`, `Company_Options`, `Vets100CompanyNumber`, `TYPEOFBUSINESS`, `DUNS_Number`, `SICNUMBER`, `GOVCRPID`, `BRNCHNMBR`, `DFLTTXDTLID`, `PurchasesTaxDetailID`, `CCode`, `IVTRFDOCFMT`, `Offline_User`, `WORKFLOWENABLED`, `CrmCredentialsMethod`, `CrmOrganizationName`, `CrmServiceUrl`, `EnableGLReporting`, `EnableAAReporting`, `UseDateEffectiveTax`, `DateToUse`, `DEX_ROW_ID`) VALUES
('sa', '2019-12-09 00:00:00', '2019-12-09 00:00:00', 1, 'HEYDUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '116.00000', '0', 0, '0', 0, '0', '0', '0', 0x3078303030303030303000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0, 0x3078303134303030303000000000000000000000000000000000000000000000000000000000000000000000000000000000, '\'0\'', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', 0, 0, '0', '0', 0, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `MC40200`
--
ALTER TABLE `MC40200`
  ADD PRIMARY KEY (`DEX_ROW_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `SY01400`
--
ALTER TABLE `SY01400`
  ADD PRIMARY KEY (`DEX_ROW_ID`);

--
-- Indexes for table `SY01500`
--
ALTER TABLE `SY01500`
  ADD PRIMARY KEY (`DEX_ROW_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MC40200`
--
ALTER TABLE `MC40200`
  MODIFY `DEX_ROW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SY01400`
--
ALTER TABLE `SY01400`
  MODIFY `DEX_ROW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SY01500`
--
ALTER TABLE `SY01500`
  MODIFY `DEX_ROW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
