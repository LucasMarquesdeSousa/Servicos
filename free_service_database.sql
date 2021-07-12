CREATE DATABASE  IF NOT EXISTS `cadastro_free_service` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cadastro_free_service`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro_free_service
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `cadastro_empresas`
--

DROP TABLE IF EXISTS `cadastro_empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_empresas` (
  `nome_empresa` varchar(80) NOT NULL,
  `ramo_empresarial` varchar(30) DEFAULT NULL,
  `cnpj_ou_nuit` varchar(16) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `contacto` bigint(14) unsigned zerofill NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_empresas`
--

LOCK TABLES `cadastro_empresas` WRITE;
/*!40000 ALTER TABLE `cadastro_empresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastro_empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_profissionais`
--

DROP TABLE IF EXISTS `cadastro_profissionais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_profissionais` (
  `formacao` text NOT NULL,
  `disponibilidade` varchar(100) NOT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `titulo_profissional` varchar(40) NOT NULL,
  `sobre_mim` text,
  `habilidades` text NOT NULL,
  `portifolio` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_profissionais`
--

LOCK TABLES `cadastro_profissionais` WRITE;
/*!40000 ALTER TABLE `cadastro_profissionais` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastro_profissionais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_usuarios`
--

DROP TABLE IF EXISTS `cadastro_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_usuarios` (
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(12) NOT NULL,
  `email` varchar(49) NOT NULL,
  `email_recuperacao` varchar(49) DEFAULT NULL,
  `razao_social` varchar(60) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `palavra_passe` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_usuarios`
--

LOCK TABLES `cadastro_usuarios` WRITE;
/*!40000 ALTER TABLE `cadastro_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastro_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problemas`
--

DROP TABLE IF EXISTS `problemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problemas` (
  `user_name` varchar(20) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `problema` varchar(500) NOT NULL,
  `evidencia` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problemas`
--

LOCK TABLES `problemas` WRITE;
/*!40000 ALTER TABLE `problemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `problemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cadastro_free_service'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-11 17:23:09
