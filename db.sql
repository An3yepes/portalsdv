-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: flasksdv
-- ------------------------------------------------------
-- Server version	5.7.38-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `archivos`
--

DROP TABLE IF EXISTS `archivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedulaPaciente` varchar(50) NOT NULL,
  `nombreExamen` varchar(250) DEFAULT NULL,
  `examen` varchar(250) DEFAULT NULL,
  `lectura` varchar(250) DEFAULT NULL,
  `Fecha_examen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivos`
--

LOCK TABLES `archivos` WRITE;
/*!40000 ALTER TABLE `archivos` DISABLE KEYS */;
INSERT INTO `archivos` VALUES (1,'22222','Examen1','C:\\fakepath\\JL-logo-gris.png','','2022-07-20'),(3,'22222','Examen2','examen1.txt','lectura1.rtf','2022-07-13'),(4,'22222','Examen3','edgard.mp3','edgard.mp3','2022-07-19'),(5,'22222','examen4','favi.png','favi.png','2022-07-12'),(7,'1110110110','examen','hostpital_system.mp4','CUENTA_DE_COBRO_01.pdf','2022-07-20');
/*!40000 ALTER TABLE `archivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relaciones`
--

DROP TABLE IF EXISTS `relaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedulaMedico` varchar(50) NOT NULL,
  `cedulaPaciente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relaciones`
--

LOCK TABLES `relaciones` WRITE;
/*!40000 ALTER TABLE `relaciones` DISABLE KEYS */;
INSERT INTO `relaciones` VALUES (1,'11111',' 22222'),(3,'1234567','123456'),(4,'2220220220','1110110110'),(5,'2220220220','22222'),(6,'1234567','12');
/*!40000 ALTER TABLE `relaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipoDocumento` varchar(20) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `password` varchar(102) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fechaNacimiento` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `fechaCreacionUsuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `email1` (`email1`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Cédula','Admin','Admin','Andres','Yepes','2022-06-06','casa1','2161022','admin@portalsdv.com',NULL,'admin','2022-06-06'),(3,'Cédula','22222','Paciente','Paciende','Prueba uno','2022-06-06','casa3','2161024','paciente@pportalsdv.com',NULL,'paciente','2022-06-07'),(4,'Cédula','123456','12345678','Paciente tres','Numero Tres','1999-10-13','Calle 45','3105161022','paciente3@portalsdv.com',NULL,'paciente','2022-07-26'),(5,'Cédula','1234567','12345678','Remisor Dos','Numero Dos','2000-09-13','calle 1','3165225689','remisor2@portalsdv.com','','medico','2022-07-26'),(6,'Cédula','999999','12345678','Remisor Lector','Adm Lector','1990-06-25','Portal SDV','3156532286','remisorl@portalsdv.com',NULL,'lector','2022-07-18'),(7,'Cédula','1110110110','12345678','Andres fernando','Molina Osorio','2000-07-07','Calle 45 # 42 25','2161029','pacienteprueba@portalsdv.com',NULL,'paciente','2022-07-26'),(8,'Cédula','2220220220','12345678','Jorge Marios','Molina Osorio','1993-07-21','Calle 33 con carrera 50','3126345987','remisor4@portalsdv.com','','medico','2022-07-26');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01 23:05:12
