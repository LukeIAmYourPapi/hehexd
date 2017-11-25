# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: distribueredesystemer.cqsg17giwvxa.eu-central-1.rds.amazonaws.com (MySQL 5.6.35-log)
# Database: fmldb
# Generation Time: 2017-11-07 12:46:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table choice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `choice`;

CREATE TABLE `choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choiceTitle` varchar(45) NOT NULL,
  `answer` tinyint(1) NOT NULL DEFAULT '0',
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_choice_question1_idx` (`question_id`),
  CONSTRAINT `fk_choice_question1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `choice` WRITE;
/*!40000 ALTER TABLE `choice` DISABLE KEYS */;

INSERT INTO `choice` (`id`, `choiceTitle`, `answer`, `question_id`)
VALUES
	(1,'Thorn',1,1),
	(2,'Horn',0,1),
	(3,'Torn',0,1),
	(4,'Kawasaki',0,1),
	(10,'demo title',1,1),
	(11,'demo title',1,1),
	(12,'demo ',1,1),
	(13,'hej ',1,1),
	(15,'Fuck github',0,1),
	(16,'Olivia',0,2),
	(17,'Hey',0,2),
	(18,'Hey',0,2),
	(19,'SAim er god nok',1,1),
	(20,'Hey',0,2),
	(21,'hej1',0,1),
	(23,'Virkerdet',1,1),
	(24,'Virkerdetpt2',1,1),
	(25,'Virkerdetpt2',1,1),
	(26,'Virkerdetpt2',1,1),
	(27,'hej1',0,1),
	(28,'Titlen',3,2),
	(29,'hej1hj',0,1),
	(30,'hej1hj',0,1),
	(31,'hehj',0,2),
	(32,'hejsan',0,2),
	(33,'hebnmn',0,2),
	(34,'hebnmn',0,2),
	(35,'fasdfsdf',0,2),
	(36,'fasdfsdf',0,2),
	(37,'fasf',0,2),
	(38,'fasf',1,2),
	(39,'bis',1,2),
	(40,'jjijiji',1,2),
	(41,'fsadfsdf',1,2),
	(42,'ff',1,2),
	(43,'ffd',1,2),
	(44,'ffd',1,2),
	(45,'ffd',1,2),
	(46,'fffasdfdsfd',1,2),
	(47,'fdasfdsfdasfsdf',1,2),
	(48,'fdasfdsfdasfsdf',1,2),
	(49,'fdasfdsfdasfsdf',1,2),
	(50,'fdasfdsfdasfsdf',1,2),
	(51,'fdasdasfsdf',1,2),
	(52,'fdasdasfsdf',1,2),
	(53,'fdasdasfsdf',1,2),
	(54,'hejsam',1,2),
	(55,'hej1',0,1),
	(56,'hej1',0,1),
	(57,'hej1',0,1),
	(58,'hej1',0,1),
	(59,'hej1',0,1),
	(60,'hej1',0,1),
	(61,'hej1',0,1),
	(63,'hej1',0,1),
	(67,'hej1',0,1);

/*!40000 ALTER TABLE `choice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseTitle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;

INSERT INTO `course` (`id`, `courseTitle`)
VALUES
	(1,'Distribuerede Systemer'),
	(2,'IT-Forandringsledelse'),
	(3,'Makroøkonomi'),
	(4,'Finansiering');

/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionTitle` varchar(45) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_question_quiz1_idx` (`quiz_id`),
  CONSTRAINT `fk_question_quiz1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;

INSERT INTO `question` (`id`, `questionTitle`, `quiz_id`)
VALUES
	(1,'Hvad hedder Henrik til efternavn?',1),
	(2,'test',1),
	(3,'test',1),
	(67,'test',1),
	(72,'test',1),
	(73,'test',1),
	(74,'test',1),
	(75,'test',1),
	(77,'test',1),
	(78,'DET HER SKAL VIRKE!',1),
	(79,'DET HER SKAL VIRsdfKE!',1),
	(80,'DET HER SKAL VIRsdfKE!',1),
	(81,'DET HER SKAL VE!',1),
	(82,'ER saim Lort?',1),
	(83,'SAim er god nok',1),
	(84,'Virkerdet',1),
	(85,'Tester',1),
	(89,'hej',1);

/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quiz
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quizTitle` varchar(45) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quiz_course1_idx` (`course_id`),
  CONSTRAINT `fk_quiz_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;

INSERT INTO `quiz` (`id`, `quizTitle`, `course_id`)
VALUES
	(1,'DIS QUIZ 1',1),
	(6,'Programmering',1),
	(13,'Olivia5',2),
	(14,'Oliv',4),
	(15,'Virkerdet',1),
	(16,'Virkerdet2',1),
	(17,'test',2),
	(19,'test',2),
	(20,'test',2),
	(21,'test',2),
	(22,'test',2),
	(23,'test',2),
	(24,'test',2),
	(25,'test',2),
	(26,'test',2),
	(27,'hej',4),
	(28,'Oliv',4),
	(29,'Oliv',4),
	(30,'Oliv',4),
	(31,'Oliv',4),
	(32,'Oliv',4),
	(33,'Hello',2),
	(34,'Hello',2),
	(35,'Oliv',4),
	(36,'Oliv',4),
	(37,'hejsa',4),
	(38,'hejsa',4),
	(39,'hejs',4),
	(40,'hejs',4),
	(41,'hejs',4),
	(42,'hejs',4),
	(43,'hes',3),
	(44,'hes',3),
	(45,'hes',3),
	(46,'hes',3),
	(47,'hes',3),
	(48,'hes',3),
	(49,'hes',3),
	(50,'hes',3),
	(51,'test',1),
	(52,'test',1),
	(53,'111111',1),
	(54,'111111',1),
	(55,'hejsa',1),
	(56,'hejsa',1),
	(57,'hejs',1),
	(58,'hejs',1),
	(59,'hejs',1),
	(60,'hejs',1),
	(61,'hejs',1),
	(62,'hjs',1),
	(66,'hejs',1);

/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `createdTime` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `firstName`, `lastName`, `userName`, `password`, `type`, `createdTime`)
VALUES
	(17,'gd','hjk','ceci','b1cb1210e5b2720bfe6d975ed1b8f4b5',1,'1508440951'),
	(18,'gd','hjk','asdlkasd','618fdbea112f4a60ec4df9e971751649',0,'1508441205'),
	(19,'gd','hjk','hej','17ff052dd4dd9dc78ab3905f67317a19',0,'1508442376'),
	(20,'f','f','ff','123',1,'1508444526'),
	(21,'gd','hjk','cecilie2','fd3382ffaf52c382f8c8886a79d7321c',0,'1508444654'),
	(27,'f','f','l','123',1,'1508445876'),
	(30,'Nicolai','Thomsen','Nico','3bd2a543ad890411cd90b31cd2f192fa',1,'1508450489'),
	(33,'gd','hjk','cecilie5','af31d4e3cd0249346ed10ba0ec29355c',0,'1508451575'),
	(34,'f','f','tester','111706acad92970d4a496ca192ae5b58',1,'1508518470'),
	(35,'gd','hjk','cecilie8','60deb5934a8db1cc90a2172c4e548397',0,'1508595901'),
	(37,'hej','lol','Søndag','bf62dfdeecf03dc18cd8a67d4b62840d',1,'1508663582'),
	(39,'gd','hjk','cecilie6','88e2e20cc8639676329b77ce051fcc4e',0,'1508752135'),
	(41,'gd','hjk','cecili','f220d9c407e760fe6d9015d858dbb3f1',0,'1508752237'),
	(43,'gd','hjk','hejmeddig','77ae0be6ca1bb9eeb636a4656748600c',0,'1508752307'),
	(51,'gd','hjk','fuck','88cc44f96d14439f914c002041ab68bb',1,'1508752665'),
	(55,'Test','sd','mh','5f4332d82eba94861d6cbbdaa489dbfe',2,'1508752722'),
	(62,'Test','sd','hejsah','65daf832292764c3cb71b1c7370885c0',2,'1508752849'),
	(67,'Test','sd','hejh','26f480675a639a5cbc5a6051f35f2f3e',2,'1508753122'),
	(71,'gd','hjk','cecilidfghj','cfc1109f058acd141e4d8ffc869078bf',0,'1508753316'),
	(72,'ol','m','test','e26d73d97d68293f60b710c030036405',1,'1508756808'),
	(73,'gd','hjk','cecie5','fb2961eb5245f62f7e037859e78fbbcc',0,'1508756973'),
	(74,'gd','hjk','cie5','c788abbd906453a1109fbf70cc06ab81',0,'1508757051'),
	(75,'gd','hjk','c5','36dfc318d2443855921db52e0c8b8d74',0,'1508757424'),
	(76,'Kristian','Koch','dfd','5e9491127c7ae8dec3b21ea94dc0148a',2,'1508759061'),
	(77,'gd','hjk','c6','b839c00307bd67b5b996dd334720688b',0,'1508759190'),
	(79,'gd','hjk','c8kl','be4abbdb1c66bfbbd7b67ba15e14fe63',0,'1508760992'),
	(80,'gd','hjk','c6666kl','ccc193162703720a6092af379b2415f6',1,'1508761163'),
	(81,'gd','hjk','c66kl','09e2aa17aa361b9c1ceab21fde695320',1,'1508784896'),
	(86,'gd','hjk','c8','441351ede8f8e4a404d567be4dd6e34d',0,'1508847533'),
	(88,'g33','hjk','c10','581b281feb4a702f8d9903f843a4dec7',0,'1508847838'),
	(93,'3043','1234','testtest','bd3d84b3af40fc8d13f23e185447bdc3',0,'1508848082'),
	(97,'3043','1234','Nicolai','a40169c17d377cbf687b16646c085652',0,'1508866425'),
	(98,'3043','1234','Blah','106bbbe4a826bf847faca19b43672beb',1,'1508866606'),
	(100,'3043','1234','Hola hola','390d43dca1f45b90dcfd01c630ffe0ab',1,'1508866707'),
	(101,'3043','1234','Despacito','86fb70c58b4274fab240af6e6c7ab803',1,'1508868705'),
	(102,'gd','hjk','cdfghjk','5c056b421d83f69a3c5b2b16f3c3f0de',1,'1509375237'),
	(103,'gd','hjk','cecilie56','fab1d5316af6419a4a1f1f550d97bbdd',0,'1509375285'),
	(110,'gd','hjk','asdf','1efc3bebe4b37480037acbddaa41b5e4',1,'1509375682'),
	(111,'gd','hjk','jesper','adbd0c5d0a3d5cc2d0f9776c243fb987',1,'1509375745'),
	(112,'gd','hjk','asdfff','e21ba5d1de49142bacb6e4dbd3c44fef',1,'1509375837'),
	(113,'gd','hjk','ceciliefos','b08261acf73162aac95878d1589d57aa',1,'1509385762'),
	(115,'gd','hjk','ceciliefs','be03a072880eeb3bfb7f0cbf9c4b4d10',1,'1509442979'),
	(116,'gd','hjk','cecil45','d9984759708450baa9326dd9cf36f2ca',1,'1509448838'),
	(117,'gd','hjk','cecil5','b3b802358863a8562651ce86a25daaaf',1,'1509449555'),
	(118,'Ady','fdsf','andy','4cba35b879e5db8feaf5b64e74f598e5',1,'1509449766'),
	(119,'Ady','fdsf','an4dy','a7beaa0ead5fd76ad7e5a1e750632308',1,'1509452830'),
	(121,'Ady','fdsf','andyhej','03218e6b466992186d5017da1666e3ab',1,'1509455523'),
	(122,'Ady','fdsf','andej','19e933bdf04387cf657fc8430f8f8387',1,'1509468227'),
	(123,'Ady','fdsf','adfghjkj','a908b46972963207f6a83c75901b4f79',1,'1509473849'),
	(124,'Ady','fdsf','adfghjkertyui','b76e2db2f1e201c2ab9cc94afc599976',1,'0'),
	(125,'Ady','fdsf','ceciliefid','4484aee63e6ff0a0e5407d6742a3c9e6',1,'0'),
	(127,'Ady','fdsf','cecilid','9cd47bb9927669b93ef348f62e90f2c8',1,'0'),
	(128,'Ady','fdsf','ceciliefosv','3f98e99e643608cf694526e5e26a24c5',1,'0'),
	(129,'Ady','fdsf','ceciliefosvghj','edf5e23139717e576ea394f51ead3a0a',1,'1509479751'),
	(130,'Ady','fdsf','ceciliefovghj','40018537035902812c641ce891d3c37d',1,'1509479795'),
	(131,'Ady','fdsf','hello','d85f6497d26ecf6796d424bd6a5aaba2',1,'1509479904'),
	(133,'Ady','fdsf','hellghjo','4aee4d09549676af6602c4f824ee1605',1,'1509523069'),
	(134,'Ady','fdsf','hehjklllo','2681abb8436a7c257d114a3f568043cd',1,'1509523214'),
	(135,'Ady','fdsf','hehlllo','618250c8c670ec571bff66376639f159',1,'1509523459'),
	(136,'Ady','fdsf','h','46fe54345ff8a3e62f5799bb1dcca34c',1,'1509524676'),
	(137,'Ady','fdsf','ghj','f6c2aeaa35219d0208b2265a370ae1e8',1,'1509524832'),
	(138,'Ady','fdsf','ghdfghj','87e2d9be8ce7f049b02f7fdb408edaa4',1,'1509534421'),
	(140,'Ady','fdsf','ceciliefosbo1','1b67ca89fcd27493d98f6bd22f90b3cf',1,'1509534459'),
	(141,'Ady','fdsf','ceciliefosbo2','b4ac649176792d41b5a66c09047c24d6',1,'1509535148'),
	(142,'Test','sd','miig','6938105c3cb5e9e0cb5f61540120fda3',2,'1509537347'),
	(144,'Ady','fdsf','ceciliefosbo3','bc9ff60a6b9cefd4f64a8342efed4a5f',1,'1509538863'),
	(147,'f','f','Jonathansbruger','94bed6538d357f2d4d60a782dacb3715',1,'1509543070'),
	(148,'Ady','fdsf','ceciliefosbo4','a129299b0a998d1083622890ade6cbc0',1,'1509543130'),
	(149,'Ady','fdsf','ceciliefosbo7','018a99ed975b01a4bd79c3bc5bd67a01',1,'1509543980'),
	(150,'Mads-Emil','Lemb','madsemillemb','9d83670e47371a1262f7f116b9bade23',2,'1509545503'),
	(151,'Ady','fdsf','cecilheje','40cd76b264b1394fb81e6b2260a5c993',1,'1509973724'),
	(152,'Ady','fdsf','hejsa3','6c4619232a8d328d45c6c18bdd3f6342',1,'1509973735'),
	(153,'Ady','fdsf','hejsa23','61f9a74b32ab3f96175cc8a83a947142',2,'1509976210'),
	(155,'Muneeb','Ashraf','Muneeb','6c92b3fe9c9989de8411d8caa0c1cd18',1,'1509995001'),
	(157,'Eva','Sneppen','Eva','e3482778698965263289727c0c1f067e',1,'1510010729'),
	(160,'Test','Testy','Dave','49d0bbba246d4d2060b177c27510d24a',1,'1510011661'),
	(164,'M','B','Mike','6857fa6b5a3de15d05c8e77055f73ad5',1,'1510012236');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_course`;

CREATE TABLE `user_course` (
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`course_id`),
  KEY `fk_user_course_user_idx` (`user_id`),
  KEY `fk_user_course_course1_idx` (`course_id`),
  CONSTRAINT `fk_user_course_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_course_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
