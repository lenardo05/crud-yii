-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para yii
CREATE DATABASE IF NOT EXISTS `yii` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yii`;

-- Copiando estrutura para tabela yii.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(130) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `estado_civil` enum('S','C','D','V') DEFAULT 'S',
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela yii.usuarios: ~101 rows (aproximadamente)
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `email`, `telefone`, `celular`, `foto`, `data_nascimento`, `estado_civil`, `status`) VALUES
	(1, 'Urielle V. Winters', 'ullamcorper.nisl@utmolestiein.ca', NULL, '(07) 63444-3316', NULL, '2008-02-15', 'D', 1),
	(2, 'Roth Oneil', 'at.lacus@pedesagittisaugue.ca', NULL, '(81) 61892-0851', NULL, '1987-07-19', 'D', 0),
	(3, 'Madeline Gamble', 'non@eget.ca', NULL, '(78) 78721-0372', NULL, '1984-10-13', 'V', 0),
	(4, 'Grant Chang', 'magna.Sed.eu@risusDonecegestas.ca', NULL, '(32) 04121-0614', NULL, '2017-06-01', 'C', 0),
	(5, 'Kiayada Alvarez', 'lorem@Fuscediamnunc.co.uk', NULL, '(24) 37100-7693', NULL, '2002-09-27', 'S', 1),
	(6, 'Naomi Osborne', 'sagittis@nonarcu.edu', NULL, '(85) 40777-6421', NULL, '1988-04-24', 'D', 0),
	(7, 'Phelan M. Allison', 'euismod.ac.fermentum@eu.ca', NULL, '(28) 97972-6703', NULL, '1981-09-08', 'V', 1),
	(8, 'Valentine Lindsay', 'Aenean.massa.Integer@cursusluctusipsum.com', NULL, '(96) 32177-1617', NULL, '2019-02-25', 'S', 1),
	(9, 'Zenia K. Knight', 'lobortis.nisi.nibh@odio.com', NULL, '(45) 66768-2001', NULL, '1993-08-02', 'C', 1),
	(10, 'Imelda X. Newman', 'fringilla.ornare@mauris.edu', NULL, '(31) 13452-8864', NULL, '2015-03-13', 'D', 1),
	(11, 'Joseph E. Wiley', 'senectus.et@massa.ca', NULL, '(02) 27267-2983', NULL, '1991-02-02', 'S', 1),
	(12, 'Aurora Glover', 'lacus.Mauris.non@justoPraesentluctus.edu', NULL, '(51) 85402-0537', NULL, '2000-05-05', 'C', 1),
	(13, 'Emery Mckay', 'augue.eu.tempor@ut.net', NULL, '(77) 67483-6602', NULL, '2017-03-17', 'C', 0),
	(14, 'Asher Hooper', 'feugiat.Lorem@sapienmolestieorci.net', NULL, '(14) 66133-0822', NULL, '2000-08-16', 'V', 1),
	(15, 'April F. Gilmore', 'eget.ipsum@vulputate.net', NULL, '(76) 72985-3560', NULL, '1997-03-28', 'S', 1),
	(16, 'Alexandra R. Herrera', 'metus@mollisDuissit.co.uk', NULL, '(13) 75463-4017', NULL, '2005-04-23', 'C', 1),
	(17, 'Haley Buchanan', 'lacinia@tristiquepharetraQuisque.ca', NULL, '(67) 91580-9786', NULL, '2017-01-14', 'S', 0),
	(18, 'Jermaine M. Oneil', 'Cras.lorem.lorem@quis.edu', NULL, '(95) 69559-5952', NULL, '1997-07-17', 'S', 0),
	(19, 'Cora Campbell', 'ut.cursus.luctus@Cumsociisnatoque.org', NULL, '(88) 43686-8167', NULL, '2015-09-21', 'C', 0),
	(20, 'Lana O. Merritt', 'gravida@Cum.edu', NULL, '(64) 42237-9716', NULL, '2013-03-30', 'D', 1),
	(21, 'Zane Bowen', 'Mauris.eu@imperdiet.com', NULL, '(89) 09011-3128', NULL, '2009-09-17', 'C', 0),
	(22, 'Kieran F. Moran', 'dignissim.pharetra@ipsumsodalespurus.net', NULL, '(56) 18741-8179', NULL, '1988-08-03', 'D', 1),
	(23, 'Rosalyn Patel', 'vestibulum@sed.co.uk', NULL, '(53) 63510-8327', NULL, '1991-06-08', 'V', 1),
	(24, 'Maggie F. Hale', 'convallis@ataugueid.com', NULL, '(78) 94552-1723', NULL, '1991-01-04', 'V', 1),
	(25, 'Gary B. Tyson', 'lacus@Curae.org', NULL, '(32) 37195-5422', NULL, '2019-04-19', 'D', 0),
	(26, 'Chiquita V. Mckenzie', 'ac.fermentum.vel@eu.edu', NULL, '(29) 75347-2712', NULL, '1999-06-17', 'V', 1),
	(27, 'Tobias U. Conley', 'Sed@rhoncusidmollis.net', NULL, '(53) 97179-0550', NULL, '1988-03-16', 'C', 0),
	(28, 'Rhea Moran', 'scelerisque.neque.Nullam@PhasellusornareFusce.net', NULL, '(43) 71762-2648', NULL, '2010-08-04', 'C', 1),
	(29, 'Candace T. Goodwin', 'tellus@maurisutmi.edu', NULL, '(98) 24229-7500', NULL, '2011-06-01', 'D', 0),
	(30, 'Lucian X. Harmon', 'dignissim@odio.com', NULL, '(94) 96733-2093', NULL, '1998-09-29', 'D', 1),
	(31, 'Edward E. Mcdaniel', 'Phasellus.dapibus.quam@at.net', NULL, '(35) 16240-1728', NULL, '2006-09-21', 'D', 1),
	(32, 'Ginger M. Silva', 'Donec.vitae.erat@odiosemper.net', NULL, '(17) 60141-7447', NULL, '1988-10-02', 'C', 1),
	(33, 'Erica F. Cooley', 'mollis.lectus@sedhendrerita.com', NULL, '(34) 35795-1862', NULL, '2012-04-11', 'V', 0),
	(34, 'Sydnee Hebert', 'ipsum.sodales@odio.com', NULL, '(23) 98911-2860', NULL, '1991-04-26', 'S', 0),
	(35, 'Athena Morse', 'lorem@ac.co.uk', NULL, '(73) 05060-9671', NULL, '2020-07-30', 'S', 0),
	(36, 'Thor Ford', 'id.mollis@diam.net', NULL, '(10) 03692-4387', NULL, '2019-12-19', 'D', 1),
	(37, 'Vincent E. Le', 'nec.eleifend.non@necurnasuscipit.co.uk', NULL, '(06) 98150-3385', NULL, '2006-11-17', 'D', 0),
	(38, 'Simon Z. Sears', 'mi.lorem@utnisi.ca', NULL, '(42) 42947-1191', NULL, '1997-09-15', 'D', 1),
	(39, 'Madeson S. Kramer', 'interdum.Nunc@Curae.ca', NULL, '(15) 29364-4541', NULL, '2011-09-11', 'S', 0),
	(40, 'Curran D. Brennan', 'est@utlacusNulla.ca', NULL, '(79) 50456-8352', NULL, '2016-05-06', 'C', 1),
	(41, 'Rashad Alvarado', 'cursus@Nuncsollicitudincommodo.edu', NULL, '(22) 63765-9808', NULL, '2009-05-17', 'V', 0),
	(42, 'Fitzgerald A. Bray', 'et.arcu@utpellentesque.org', NULL, '(29) 05808-5083', NULL, '2018-07-14', 'C', 1),
	(43, 'Ora Hooper', 'tempor.diam@sem.org', NULL, '(13) 12056-9245', NULL, '1991-11-21', 'S', 0),
	(44, 'Ferris Wallace', 'Aenean@maurisrhoncus.edu', NULL, '(70) 54101-3321', NULL, '2015-12-12', 'S', 0),
	(45, 'Ray S. Santiago', 'dis.parturient.montes@ametdiameu.com', NULL, '(45) 92719-3864', NULL, '2012-10-11', 'D', 1),
	(46, 'Graham X. Hill', 'a@cursusinhendrerit.edu', NULL, '(37) 42044-3695', NULL, '1997-10-06', 'S', 1),
	(47, 'Willa N. Barr', 'massa.lobortis.ultrices@estmauris.com', NULL, '(66) 67527-5585', NULL, '1985-09-18', 'S', 1),
	(48, 'Brynne Mckee', 'sagittis.felis@et.ca', NULL, '(56) 37157-8290', NULL, '1998-04-25', 'V', 1),
	(49, 'Celeste Macdonald', 'placerat.velit@augueeu.ca', NULL, '(08) 35580-7776', NULL, '2016-08-10', 'D', 1),
	(50, 'Julie B. Livingston', 'dolor.nonummy@Nuncut.net', NULL, '(95) 10490-6036', NULL, '1986-09-09', 'C', 1),
	(51, 'Tatyana J. Bush', 'Cras.eget@nasceturridiculusmus.edu', NULL, '(35) 70551-0153', NULL, '1988-10-07', 'C', 1),
	(52, 'Nasim Sweet', 'Cum.sociis.natoque@urnaNunc.org', NULL, '(75) 00152-5548', NULL, '1992-04-06', 'D', 0),
	(53, 'Driscoll William', 'ligula@orci.edu', NULL, '(81) 34016-8453', NULL, '1981-04-28', 'C', 0),
	(54, 'Byron Y. Lawrence', 'Praesent.interdum@porttitorscelerisqueneque.net', NULL, '(08) 31461-4052', NULL, '1996-05-15', 'V', 1),
	(55, 'Idona Talley', 'nec.orci@egetmetus.ca', NULL, '(98) 85869-3809', NULL, '1983-03-12', 'C', 1),
	(56, 'Jakeem Mccall', 'cursus@aultricies.co.uk', NULL, '(30) 59676-8933', NULL, '2003-08-07', 'V', 1),
	(57, 'Linda N. Black', 'bibendum.Donec@AliquamnislNulla.net', NULL, '(28) 09448-0136', NULL, '1993-04-25', 'D', 1),
	(58, 'Kristen Stafford', 'Maecenas.ornare@maurisrhoncus.co.uk', NULL, '(85) 92154-4368', NULL, '1983-11-16', 'C', 1),
	(59, 'Zoe Banks', 'Mauris.magna@primisin.com', NULL, '(42) 25123-0190', NULL, '2010-01-01', 'V', 0),
	(60, 'Lars S. Love', 'pretium@utnisia.net', NULL, '(56) 22257-9137', NULL, '2020-08-09', 'V', 1),
	(61, 'Hanae P. Gill', 'vel.pede@utmi.ca', NULL, '(11) 87505-6864', NULL, '1993-11-13', 'D', 0),
	(62, 'Edan G. Young', 'ridiculus.mus@ridiculusmusProin.edu', NULL, '(80) 27863-2625', NULL, '2003-03-30', 'S', 0),
	(63, 'Rooney I. Colon', 'non.nisi@Classaptent.edu', NULL, '(21) 26009-0224', NULL, '1999-12-18', 'V', 1),
	(64, 'Melvin X. Duran', 'luctus.ut.pellentesque@Suspendisse.edu', NULL, '(06) 51142-2890', NULL, '2003-07-10', 'S', 0),
	(65, 'Maile L. William', 'rutrum.Fusce@interdumNunc.co.uk', NULL, '(46) 35235-9063', NULL, '1990-02-26', 'S', 0),
	(66, 'Priscilla B. Casey', 'feugiat.Lorem.ipsum@Morbi.edu', NULL, '(57) 22487-3706', NULL, '1996-07-04', 'D', 1),
	(67, 'Tatum Gilliam', 'accumsan.neque@orciinconsequat.com', NULL, '(61) 56701-9139', NULL, '1990-10-19', 'S', 1),
	(68, 'Kylie T. Mann', 'nostra.per.inceptos@metus.net', NULL, '(29) 06959-2881', NULL, '1984-12-23', 'D', 1),
	(69, 'Tallulah E. Cochran', 'magna.Praesent.interdum@famesacturpis.ca', NULL, '(40) 57448-3143', NULL, '2006-11-22', 'V', 0),
	(70, 'Leandra Wolfe', 'gravida@amet.net', NULL, '(97) 00122-0580', NULL, '2007-11-27', 'D', 1),
	(71, 'Hollee Everett', 'non.magna.Nam@Donec.co.uk', NULL, '(58) 08606-8896', NULL, '1987-09-14', 'D', 1),
	(72, 'Kevin X. Blackwell', 'eget@Nullaaliquet.co.uk', NULL, '(03) 83744-0061', NULL, '2016-02-02', 'V', 0),
	(73, 'Sean Leonard', 'lacus@dapibusquam.com', NULL, '(94) 65500-6039', NULL, '2014-06-17', 'D', 0),
	(74, 'Ariana Q. Zamora', 'montes.nascetur.ridiculus@Sednec.net', NULL, '(87) 61941-2695', NULL, '1989-02-22', 'C', 1),
	(75, 'Garth H. Ayers', 'tellus@dolorNullasemper.edu', NULL, '(19) 09487-3152', NULL, '2003-07-22', 'V', 0),
	(76, 'Harrison H. Randolph', 'pharetra.Quisque.ac@orci.edu', NULL, '(70) 88391-6655', NULL, '1999-11-30', 'V', 0),
	(77, 'Nigel Goff', 'pellentesque.a.facilisis@Aliquam.org', NULL, '(66) 55745-8297', NULL, '1982-06-26', 'D', 1),
	(78, 'Jayme W. Mitchell', 'congue.elit.sed@estvitaesodales.net', NULL, '(37) 83334-8100', NULL, '2017-07-31', 'V', 1),
	(79, 'Pamela Christensen', 'fermentum.metus@dictumcursus.ca', NULL, '(18) 80431-0633', NULL, '1987-12-10', 'S', 1),
	(80, 'Madeline U. Mcintosh', 'cursus@sit.net', NULL, '(39) 17525-8717', NULL, '2003-06-23', 'C', 1),
	(81, 'Yeo Pacheco', 'ipsum.leo@mollisDuissit.edu', NULL, '(09) 53775-6044', NULL, '1990-11-23', 'D', 0),
	(82, 'Risa D. Schmidt', 'ultrices@ipsum.co.uk', NULL, '(28) 61246-9895', NULL, '2015-10-25', 'D', 0),
	(83, 'Demetrius Harrington', 'aliquet.Proin.velit@imperdiet.co.uk', NULL, '(49) 16260-1597', NULL, '2020-05-02', 'D', 1),
	(84, 'Zahir Griffith', 'nibh.lacinia@amet.com', NULL, '(70) 29424-8458', NULL, '2013-10-13', 'S', 1),
	(85, 'Beau Brown', 'ac.risus@Maecenas.com', NULL, '(63) 82609-7874', NULL, '2015-01-23', 'C', 0),
	(86, 'Ariana Neal', 'sit.amet@loremDonecelementum.edu', NULL, '(23) 16754-2637', NULL, '1999-12-18', 'C', 0),
	(87, 'Lucian X. Sweeney', 'ante.ipsum@nullaCras.com', NULL, '(44) 06447-9978', NULL, '2016-07-05', 'D', 1),
	(88, 'Joel Hancock', 'placerat@Donec.ca', NULL, '(43) 83987-6086', NULL, '1990-12-26', 'V', 1),
	(89, 'Harrison George', 'nonummy.ipsum@lobortistellus.org', NULL, '(29) 57192-6960', NULL, '1997-09-29', 'S', 0),
	(90, 'Whitney J. Weiss', 'orci.luctus@Aliquam.co.uk', NULL, '(85) 30120-6712', NULL, '1998-01-30', 'V', 1),
	(91, 'Quail N. Terrell', 'lorem.Donec.elementum@Maurisblandit.ca', NULL, '(10) 45860-5411', NULL, '1984-05-08', 'D', 1),
	(92, 'Adrian Morris', 'augue.eu@non.net', NULL, '(85) 05140-6359', NULL, '2019-01-09', 'S', 0),
	(93, 'Elliott Hartman', 'semper.Nam@vitae.net', NULL, '(85) 38916-0174', NULL, '1982-01-02', 'V', 1),
	(94, 'Leilani Dean', 'elementum@amet.co.uk', NULL, '(35) 96754-0764', NULL, '1988-06-06', 'S', 0),
	(95, 'Fiona Duncan', 'ligula@rutrumjustoPraesent.org', NULL, '(48) 79799-9431', NULL, '1990-05-24', 'V', 0),
	(96, 'Valentine W. Hensley', 'egestas.rhoncus@lorem.com', NULL, '(38) 11748-5149', NULL, '1999-05-22', 'C', 1),
	(97, 'Lareina Paul', 'elementum.lorem@luctusaliquetodio.co.uk', NULL, '(68) 56612-3079', NULL, '1989-09-05', 'C', 0),
	(98, 'Donna Sexton', 'Nunc@blanditmattisCras.edu', NULL, '(88) 82831-5184', NULL, '1998-07-21', 'C', 1),
	(99, 'Byron X. Turner', 'egestas.Duis.ac@musDonec.com', NULL, '(47) 91327-4744', NULL, '1984-01-04', 'C', 0),
	(100, 'Britanney W. Jennings', 'Duis@metusIn.com', NULL, '(34) 46511-7742', NULL, '1980-08-20', 'S', 0),
	(101, 'Leonardo Costa', 'lenardo05@gmail.com', '(21) 97221-2284', '(21) 97221-2284', '', '1982-02-05', 'S', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
