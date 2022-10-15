# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost:3308    Database: grupo02
# ------------------------------------------------------
# Server version 5.5.5-10.1.13-MariaDB

DROP DATABASE IF EXISTS `grupo02`;
CREATE DATABASE `grupo02` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `grupo02`;

#
# Source for table libros
#

DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(13) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '0000000000111' COMMENT 'ISBN',
  `titulo` varchar(120) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Sin título' COMMENT 'TITULO',
  `autor` varchar(120) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Desconocido' COMMENT 'AUTOR',
  `editorial` varchar(120) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Desconocido' COMMENT 'EDITORIAL',
  `anio` varchar(4) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '1800' COMMENT 'AÑO',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='LIBROS';

#
# Dumping data for table libros
#

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'9780140444445','La iliada','Homero','Editorial Santillana',1879);
INSERT INTO `libros` VALUES (2,'8577892230000','El Amante','Rachida Dominguez','Editorial Santillana',1987);
INSERT INTO `libros` VALUES (3,'7016985650000','Cien Años De Soledad','Juan Alvarez','Editorial Edisal',1982);
INSERT INTO `libros` VALUES (4,'9788420677507','La Odisea','Homero','Editorial Edisal',1935);
INSERT INTO `libros` VALUES (5,'9780865164215','La Eneida','Virgilio','ESe Ediciones',1785);
INSERT INTO `libros` VALUES (6,'9780672322389','Aprendiendo Uml En 24 Horas ','Joseph Schmuller','Editorial Nuevo Mundo',1999);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Anonimo' COMMENT 'LOGIN',
  `clave` varchar(25) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'mlsm4' COMMENT 'PASSWORD',
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo Anonimo' COMMENT 'NOMBRE',
  `nivel` int(2) NOT NULL DEFAULT '0' COMMENT 'NIVEL',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='USUARIOS';

#
# Dumping data for table usuarios
#

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Admin','4bw1n','El Admin',2);
INSERT INTO `usuarios` VALUES (2,'Digitador','m1sm4','Maria Sol',1);
INSERT INTO `usuarios` VALUES (3,'Buenavista','m1sm4','CasimiroBuenavista',2);
INSERT INTO `usuarios` VALUES (4,'Mantenimiento','m1sm4','Juana Perez',2);
INSERT INTO `usuarios` VALUES (5,'Digitador','mlsm4','Alex Constanza',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
