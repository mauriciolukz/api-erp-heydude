-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2021 at 10:09 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`udyr0atmn7vmmvqf`@`%` PROCEDURE `smGetNextNoteIndex` (IN `p_I_sCompanyID` SMALLINT, IN `p_I_iSQLSessionID` INT, OUT `p_O_mNoteIndex` DECIMAL(19,5), OUT `p_O_iErrorState` INT)  sp_lbl:
 
BEGIN  
	declare v_tTransaction tinyint unsigned;  
	declare v_x INT;  
	SET p_O_mNoteIndex = 0.0, p_O_iErrorState = 0,v_x = 0;
	
	if((p_I_sCompanyID is NULL) or  (p_I_iSQLSessionID is NULL)) then  
		set  p_O_iErrorState = 20231;  
		leave sp_lbl; 
	end if;  
	
	if V_x = 0 then  
		set v_tTransaction = 1;
		START TRANSACTION; 
	end if; 
	
	update   SY01500 SET  NOTEINDX = NOTEINDX + 1.0 where CMPANYID = p_I_sCompanyID;
	SET p_O_mNoteIndex = (SELECT NOTEINDX FROM SY01500 where CMPANYID = p_I_sCompanyID);
	
	if (Found_rows() <> 1) then  
		set p_O_iErrorState = 20081;  
		if v_tTransaction = 1 then  
			ROLLBACK;
		end if;
		leave sp_lbl;    
	end if;
	
	if (p_O_mNoteIndex < 1) then  
		set p_O_mNoteIndex = 1.0;
	end if;
	
	if v_tTransaction = 1 then  
		commit;
	end if;  
	
    select 0 as retstat,p_O_mNoteIndex as param3,p_O_iErrorState as param4;
	
end$$

CREATE DEFINER=`udyr0atmn7vmmvqf`@`%` PROCEDURE `zDP_MC40200SI` (IN `CURNCYID` CHAR(15), IN `CURRNIDX` SMALLINT(6), IN `NOTEINDX` DECIMAL(19,5), IN `CRNCYDSC` CHAR(31), IN `CRNCYSYM` CHAR(3), IN `CNYSYMAR_1` SMALLINT(6), IN `CNYSYMAR_2` SMALLINT(6), IN `CNYSYMAR_3` SMALLINT(6), IN `CYSYMPLC` SMALLINT(6), IN `INCLSPAC` TINYINT(4), IN `NEGSYMBL` SMALLINT(6), IN `NGSMAMPC` SMALLINT(6), IN `NEGSMPLC` SMALLINT(6), IN `DECSYMBL` SMALLINT(6), IN `DECPLCUR` SMALLINT(6), IN `THOUSSYM` SMALLINT(6), IN `CURTEXT_1` CHAR(25), IN `CURTEXT_2` CHAR(25), IN `CURTEXT_3` CHAR(25), IN `ISOCURRC` CHAR(3), IN `CURLNGID` SMALLINT(6), OUT `DEX_ROW_ID` INT)  BEGIN
	INSERT INTO MC40200 (CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, DEX_ROW_TS) 
	VALUES              (CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, NOW());
	SET DEX_ROW_ID = LAST_INSERT_ID();
	SELECT DEX_ROW_ID;
END$$

CREATE DEFINER=`udyr0atmn7vmmvqf`@`%` PROCEDURE `zDP_MC60100SS_1` (IN `CMPANYID_1` SMALLINT, IN `CURNCYID_1` CHAR(15))  BEGIN
	SELECT CMPANYID, CURNCYID, INACTIVE, DEX_ROW_ID FROM MC60100 WHERE CMPANYID = CMPANYID_1 AND CURNCYID = CURNCYID_1  ORDER BY CMPANYID ASC, CURNCYID ASC LIMIT 1;

END$$

DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `SY01400`
--

CREATE TABLE `SY01400` (
  `USERID` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `DEX_ROW_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `ACSEGSEP` char(1) NOT NULL,
  `SECOPTS` binary(4) NOT NULL,
  `DisplayRegisteredPalette` tinyint(3) UNSIGNED NOT NULL,
  `Company_Options` binary(4) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SY01500`
--

INSERT INTO `SY01500` (`LSTUSRED`, `CREATDDT`, `MODIFDT`, `CMPANYID`, `CMPNYNAM`, `TAXEXMT1`, `TAXEXMT2`, `TAXREGTN`, `COPTXSCH`, `COSTXSCH`, `LOCATNNM`, `ADRCNTCT`, `ADDRESS1`, `ADDRESS2`, `ADDRESS3`, `CITY`, `COUNTY`, `STATE`, `ZIPCODE`, `PHONE1`, `PHONE2`, `PHONE3`, `FAXNUMBR`, `USESCRTY`, `UDCOSTR1`, `UDCOSTR2`, `CMPCNTRY`, `NOTEINDX`, `PPSFRNUM`, `PPSTAXRT`, `PPSVNDID`, `VATMODE`, `LOCATNID`, `INTERID`, `ACSEGSEP`, `SECOPTS`, `DisplayRegisteredPalette`, `Company_Options`, `Vets100CompanyNumber`, `TYPEOFBUSINESS`, `DUNS_Number`, `SICNUMBER`, `GOVCRPID`, `BRNCHNMBR`, `DFLTTXDTLID`, `PurchasesTaxDetailID`, `CCode`, `IVTRFDOCFMT`, `Offline_User`, `WORKFLOWENABLED`, `CrmCredentialsMethod`, `CrmOrganizationName`, `CrmServiceUrl`, `EnableGLReporting`, `EnableAAReporting`, `UseDateEffectiveTax`, `DateToUse`, `DEX_ROW_ID`) VALUES
('sa', '2020-09-19 06:53:33', '2020-09-19 06:53:34', 1, 'HEYDUDE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '128.00000', '0', 0, '0', 0, '0', '0', '0', 0x30000000, 0, 0x30000000, '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', 0, 0, '0', '0', 0, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MC40200`
--
ALTER TABLE `MC40200`
  ADD PRIMARY KEY (`DEX_ROW_ID`);

--
-- Indexes for table `MC60100`
--
ALTER TABLE `MC60100`
  ADD PRIMARY KEY (`CMPANYID`,`CURNCYID`),
  ADD KEY `DEX_ROW_ID` (`DEX_ROW_ID`);

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
-- AUTO_INCREMENT for table `MC40200`
--
ALTER TABLE `MC40200`
  MODIFY `DEX_ROW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `MC60100`
--
ALTER TABLE `MC60100`
  MODIFY `DEX_ROW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
