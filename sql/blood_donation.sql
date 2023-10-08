-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `blood_donation` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `blood_donation`;

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  UNIQUE KEY `admin_username` (`admin_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_username`, `admin_password`) VALUES
(1,	'Pradeep',	'pradeep',	'123');

DROP TABLE IF EXISTS `blood`;
CREATE TABLE `blood` (
  `blood_id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(10) NOT NULL,
  PRIMARY KEY (`blood_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `blood` (`blood_id`, `blood_group`) VALUES
(1,	'B+'),
(2,	'B-'),
(3,	'A+'),
(4,	'O+'),
(5,	'O-'),
(6,	'A-'),
(7,	'AB+'),
(8,	'AB-');

DROP TABLE IF EXISTS `contact_info`;
CREATE TABLE `contact_info` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_address` varchar(100) NOT NULL,
  `contact_mail` varchar(50) NOT NULL,
  `contact_phone` varchar(100) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contact_info` (`contact_id`, `contact_address`, `contact_mail`, `contact_phone`) VALUES
(1,	'Kukatpally,Hyderbad,Telangana(500072)',	'kpbloodbank@gmail.com',	'9110764830');

DROP TABLE IF EXISTS `contact_query`;
CREATE TABLE `contact_query` (
  `query_id` int(11) NOT NULL AUTO_INCREMENT,
  `query_name` varchar(100) NOT NULL,
  `query_mail` varchar(120) NOT NULL,
  `query_number` char(11) NOT NULL,
  `query_message` longtext NOT NULL,
  `query_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `query_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contact_query` (`query_id`, `query_name`, `query_mail`, `query_number`, `query_message`, `query_date`, `query_status`) VALUES
(1,	'Anuj',	'anuj@gmail.com',	'9923471025',	'I need O+ Blood.',	'2023-10-04 11:51:57',	1);

DROP TABLE IF EXISTS `donor_details`;
CREATE TABLE `donor_details` (
  `donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(50) NOT NULL,
  `donor_number` varchar(10) NOT NULL,
  `donor_mail` varchar(50) DEFAULT NULL,
  `donor_age` int(60) NOT NULL,
  `donor_gender` varchar(10) NOT NULL,
  `donor_blood` varchar(10) NOT NULL,
  `donor_address` varchar(100) NOT NULL,
  PRIMARY KEY (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `donor_details` (`donor_id`, `donor_name`, `donor_number`, `donor_mail`, `donor_age`, `donor_gender`, `donor_blood`, `donor_address`) VALUES
(1,	'vijay',	'9013456743',	'vijay12@gmail.com',	24,	'Male',	' 4',	'H.No-34/A, HB colony, Kuakatpally, Hyd-072');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `page_type` varchar(50) DEFAULT NULL,
  `page_data` longtext NOT NULL,
  UNIQUE KEY `page_id` (`page_id`),
  UNIQUE KEY `page_type` (`page_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `pages` (`page_id`, `page_name`, `page_type`, `page_data`) VALUES
(2,	'Why Become Donor',	'donor',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Blood is the most precious gift that anyone can give to another person — the gift of life. A decision to donate your blood can save a life, or even several if your blood is separated into its components — red cells, platelets and plasma — which can be used individually for patients with specific conditions. Safe blood saves lives and improves health. Blood transfusion is needed for:\r\n<ul><li>women with complications of pregnancy, such as ectopic pregnancies and haemorrhage before, during or after childbirth.\r\n</li><li>children with severe anaemia often resulting from malaria or malnutrition.\r\n</li><li>people with severe trauma following man-made and natural disasters.\r\n</li><li>many complex medical and surgical procedures and cancer patients.</li></ul>\r\n<br>It is also needed for regular transfusions for people with conditions such as thalassaemia and sickle cell disease and is used to make products such as clotting factors for people with haemophilia. There is a constant need for regular blood supply because blood can be stored for only a limited time before use. Regular blood donations by a sufficient number of healthy people are needed to ensure that safe blood will be available whenever and wherever it is needed.</span>'),
(3,	'About Us ',	'aboutus',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Blood bank is a place where blood bag that is collected from blood donation events is stored in one place. The term “blood bank” refers to a division of a hospital laboratory where the storage of blood product occurs and where proper testing is performed to reduce the risk of transfusion related events . The process of managing the blood bag that is received from the blood donation events needs a proper and systematic management. The blood bag must be handled with care and treated thoroughly as it is related to someone’s life. The development of Web-based Blood Bank And Donation Management System (BBDMS) is proposed to provide a management functional to the blood bank in order to handle the blood bag and to make entries of the individuals who want to donate blood and who are in need.</span>'),
(4,	'The Need For Blood',	'needforblood',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many reasons patients need blood. A common misunderstanding about blood usage is that accident victims are the patients who use the most blood. Actually, people needing the most blood include those:\r\n1) Being treated for cancer<br>\r\n2) Undergoing orthopedic surgeries<br>\r\n3) Undergoing cardiovascular surgeries<br>\r\n4) Being treated for inherited blood disorders</span>'),
(5,	'Blood Tips',	'bloodtips',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\n1) You must be in good health. <br>\r\n2) Hydrate and eat a healthy meal before your donation.<br>\r\n3) You’re never too old to donate blood. <br>\r\n4) Rest and relaxed.<br>\r\n5) Don’t forget your FREE post-donation snack. \r\n</span>'),
(6,	'Who you could Help',	'whoyouhelp',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\nEvery 2 seconds, someone in the World needs blood. Donating blood can help:\r\n\r\n1) People who go through disasters or emergency situations.<br>\r\n2) People who lose blood during major surgeries.<br>\r\n3) People who have lost blood because of a gastrointestinal bleed.<br>\r\n4) Women who have serious complications during pregnancy or childbirth.<br>\r\n5) People with cancer or severe anemia sometimes caused by thalassemia or sickle cell disease.<br>\r\n</span>'),
(7,	'Blood Groups',	'bloodgroups',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\n  <p>  Blood group of any human being will mainly fall in any one of the following groups.</p>\r\n                <ul>\r\n\r\n                  <li>A positive or A negative</li>\r\n                  <li>B positive or B negative</li>\r\n                  <li>O positive or O negative</li>\r\n                  <li>AB positive or AB negative.</li>\r\n                </ul>\r\n                <p>Your blood group is determined by the genes you inherit from your parents.<br>\r\n                  A healthy diet helps ensure a successful blood donation, and also makes you feel better!\r\n                </p>\r\n\r\n</span>'),
(8,	'Universal Donors And Recepients',	'universal',	'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\n  <p>\r\nThe most common blood type is O, followed by type A.\r\n\r\nType O individuals are often called \"universal donors\" since their blood can be transfused into persons with any blood type. Those with type AB blood are called \"universal recipients\" because they can receive blood of any type.</p>\r\n\r\n            For emergency transfusions, blood group type O negative blood is the variety of blood that has the lowest risk of causing serious reactions for most people who receive it. Because of this, it\'s sometimes called the universal blood donor type.\r\n\r\n</span>');

DROP TABLE IF EXISTS `query_stat`;
CREATE TABLE `query_stat` (
  `id` int(11) NOT NULL,
  `query_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `query_stat` (`id`, `query_type`) VALUES
(1,	'Read'),
(2,	'Pending');

-- 2023-10-08 07:40:52
