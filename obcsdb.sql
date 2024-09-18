SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-05 12:05:09');

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `NameOfMother` varchar(120) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `NameOfMother`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, '794994267', '2022-12-10', 'Female', 'Garima Singh', 'Max Vaishali Ghazibad', 'Amit Singh', 'Nisha Singh', 'A 122 Heritage Apartment Vaishali Ghaziabad', 'A 122 Heritage Apartment Vaishali Ghaziabad', 1234567890, 'amit0918@gmail.com', '2023-01-05 01:38:35', 'Application approved.', 'Verified', '2023-01-06 01:11:07'),
(2, 1, '155835407', '2022-09-01', 'Male', 'Amit Kumar', 'Laxmi New Delhi', 'Atul Kumar', 'Preeti', 'J123 J block Laxmi Nagar', 'J123 J block Laxmi Nagar', 4758696958, 'atl011@test.com', '2023-01-05 01:46:19', 'Details not verified', 'Rejected', '2023-01-06 01:13:22'),
(5, 4, '205213941', '2022-12-30', 'Female', 'Arnav Singh', 'Max New Delhi', 'Rahul Singh', 'Amita Singh', 'A1232 Xyz Apartment New Delhi', 'A1232 Xyz Apartment New Delhi', 1425365874, 'tett@test.com', '2023-01-07 04:46:11', 'Details verified', 'Verified', '2023-01-07 04:47:23');


CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(1, 'Anuj', 'Kumar', 3636251425, 'New Delhi', 'f925916e2754e5e03f75dd58a5733251', '2023-01-05 01:36:10'),
(3, 'Rahul ', 'Yadav', 4752632145, 'New Delhi India-110091', 'f925916e2754e5e03f75dd58a5733251', '2023-01-07 04:31:56'),
(4, 'Amita ', 'Singh', 789412536, 'Ghaziabad UP -201017', 'f925916e2754e5e03f75dd58a5733251', '2023-01-07 04:44:43');

ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;