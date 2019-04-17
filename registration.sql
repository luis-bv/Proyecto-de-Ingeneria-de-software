-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2019 at 09:18 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab-registration`
--

DROP TABLE IF EXISTS `tab-registration`;
CREATE TABLE IF NOT EXISTS `tab-registration` (
  `No.` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` varchar(10) NOT NULL,
  `Nombre de Clientes` varchar(50) NOT NULL,
  `Concepto de Prestamo` varchar(30) NOT NULL,
  `Monto Prestamo` varchar(30) NOT NULL,
  `% de Interes` varchar(30) NOT NULL,
  `Total a Pagar $` varchar(30) NOT NULL,
  `Fecha de Pago` varchar(10) NOT NULL,
  `Fecha de Vencimiento $` varchar(10) NOT NULL,
  `Pago Redito/ Atraso` varchar(30) NOT NULL,
  PRIMARY KEY (`No.`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab-registration`
--

INSERT INTO `tab-registration` (`No.`, `Fecha`, `Nombre de Clientes`, `Concepto de Prestamo`, `Monto Prestamo`, `% de Interes`, `Total a Pagar $`, `Fecha de Pago`, `Fecha de Vencimiento $`, `Pago Redito/ Atraso`) VALUES
(1, '23.09.2018', 'Jose Feliciano', 'Trimentral', 'RD$ 10,000.00', 'RD$ 3,500.00', 'RD$ 13,500.00', '23.09.2019', '24.09.2019', 'RD$ 1,000.00'),
(2, '09.03.2018', 'Fernando de la Cruz', 'Mentral', 'RD$ 20,000.00', 'RD$ 2,000.00', 'RD$ 22,000.00', '09.03.2020', '10.03.2020', 'NO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
