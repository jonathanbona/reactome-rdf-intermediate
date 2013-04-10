-- MySQL dump 10.11
--
-- Host: reactomedev.oicr.on.ca    Database: test_reactome_44
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny5-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AbstractModifiedResidue`
--

DROP TABLE IF EXISTS `AbstractModifiedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `AbstractModifiedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  `referenceSequence` int(10) unsigned default NULL,
  `referenceSequence_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceSequence` (`referenceSequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `AbstractModifiedResidue`
--

LOCK TABLES `AbstractModifiedResidue` WRITE;
/*!40000 ALTER TABLE `AbstractModifiedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `AbstractModifiedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Affiliation`
--

DROP TABLE IF EXISTS `Affiliation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Affiliation` (
  `DB_ID` int(10) unsigned NOT NULL,
  `address` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `address` (`address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Affiliation`
--

LOCK TABLES `Affiliation` WRITE;
/*!40000 ALTER TABLE `Affiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Affiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Affiliation_2_name`
--

DROP TABLE IF EXISTS `Affiliation_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Affiliation_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Affiliation_2_name`
--

LOCK TABLES `Affiliation_2_name` WRITE;
/*!40000 ALTER TABLE `Affiliation_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `Affiliation_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlackBoxEvent`
--

DROP TABLE IF EXISTS `BlackBoxEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `BlackBoxEvent` (
  `DB_ID` int(10) unsigned NOT NULL,
  `templateEvent` int(10) unsigned default NULL,
  `templateEvent_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `templateEvent` (`templateEvent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `BlackBoxEvent`
--

LOCK TABLES `BlackBoxEvent` WRITE;
/*!40000 ALTER TABLE `BlackBoxEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlackBoxEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlackBoxEvent_2_hasEvent`
--

DROP TABLE IF EXISTS `BlackBoxEvent_2_hasEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `BlackBoxEvent_2_hasEvent` (
  `DB_ID` int(10) unsigned default NULL,
  `hasEvent_rank` int(10) unsigned default NULL,
  `hasEvent` int(10) unsigned default NULL,
  `hasEvent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasEvent` (`hasEvent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `BlackBoxEvent_2_hasEvent`
--

LOCK TABLES `BlackBoxEvent_2_hasEvent` WRITE;
/*!40000 ALTER TABLE `BlackBoxEvent_2_hasEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlackBoxEvent_2_hasEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Book` (
  `DB_ID` int(10) unsigned NOT NULL,
  `ISBN` text,
  `chapterTitle` text,
  `pages` text,
  `publisher` int(10) unsigned default NULL,
  `publisher_class` varchar(64) default NULL,
  `year` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `publisher` (`publisher`),
  KEY `year` (`year`),
  FULLTEXT KEY `ISBN` (`ISBN`),
  FULLTEXT KEY `chapterTitle` (`chapterTitle`),
  FULLTEXT KEY `pages` (`pages`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_2_chapterAuthors`
--

DROP TABLE IF EXISTS `Book_2_chapterAuthors`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Book_2_chapterAuthors` (
  `DB_ID` int(10) unsigned default NULL,
  `chapterAuthors_rank` int(10) unsigned default NULL,
  `chapterAuthors` int(10) unsigned default NULL,
  `chapterAuthors_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `chapterAuthors` (`chapterAuthors`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Book_2_chapterAuthors`
--

LOCK TABLES `Book_2_chapterAuthors` WRITE;
/*!40000 ALTER TABLE `Book_2_chapterAuthors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Book_2_chapterAuthors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateSet`
--

DROP TABLE IF EXISTS `CandidateSet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CandidateSet` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CandidateSet`
--

LOCK TABLES `CandidateSet` WRITE;
/*!40000 ALTER TABLE `CandidateSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateSet_2_hasCandidate`
--

DROP TABLE IF EXISTS `CandidateSet_2_hasCandidate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CandidateSet_2_hasCandidate` (
  `DB_ID` int(10) unsigned default NULL,
  `hasCandidate_rank` int(10) unsigned default NULL,
  `hasCandidate` int(10) unsigned default NULL,
  `hasCandidate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasCandidate` (`hasCandidate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CandidateSet_2_hasCandidate`
--

LOCK TABLES `CandidateSet_2_hasCandidate` WRITE;
/*!40000 ALTER TABLE `CandidateSet_2_hasCandidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateSet_2_hasCandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CatalystActivity`
--

DROP TABLE IF EXISTS `CatalystActivity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CatalystActivity` (
  `DB_ID` int(10) unsigned NOT NULL,
  `activity` int(10) unsigned default NULL,
  `activity_class` varchar(64) default NULL,
  `physicalEntity` int(10) unsigned default NULL,
  `physicalEntity_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `activity` (`activity`),
  KEY `physicalEntity` (`physicalEntity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CatalystActivity`
--

LOCK TABLES `CatalystActivity` WRITE;
/*!40000 ALTER TABLE `CatalystActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `CatalystActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CatalystActivity_2_activeUnit`
--

DROP TABLE IF EXISTS `CatalystActivity_2_activeUnit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CatalystActivity_2_activeUnit` (
  `DB_ID` int(10) unsigned default NULL,
  `activeUnit_rank` int(10) unsigned default NULL,
  `activeUnit` int(10) unsigned default NULL,
  `activeUnit_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `activeUnit` (`activeUnit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CatalystActivity_2_activeUnit`
--

LOCK TABLES `CatalystActivity_2_activeUnit` WRITE;
/*!40000 ALTER TABLE `CatalystActivity_2_activeUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `CatalystActivity_2_activeUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CatalystActivity_2_literatureReference`
--

DROP TABLE IF EXISTS `CatalystActivity_2_literatureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CatalystActivity_2_literatureReference` (
  `DB_ID` int(10) unsigned default NULL,
  `literatureReference_rank` int(10) unsigned default NULL,
  `literatureReference` int(10) unsigned default NULL,
  `literatureReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CatalystActivity_2_literatureReference`
--

LOCK TABLES `CatalystActivity_2_literatureReference` WRITE;
/*!40000 ALTER TABLE `CatalystActivity_2_literatureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `CatalystActivity_2_literatureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CellType`
--

DROP TABLE IF EXISTS `CellType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CellType` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CellType`
--

LOCK TABLES `CellType` WRITE;
/*!40000 ALTER TABLE `CellType` DISABLE KEYS */;
/*!40000 ALTER TABLE `CellType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compartment`
--

DROP TABLE IF EXISTS `Compartment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Compartment` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Compartment`
--

LOCK TABLES `Compartment` WRITE;
/*!40000 ALTER TABLE `Compartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complex`
--

DROP TABLE IF EXISTS `Complex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Complex` (
  `DB_ID` int(10) unsigned NOT NULL,
  `isChimeric` enum('TRUE','FALSE') default NULL,
  `totalProt` text,
  `maxHomologues` text,
  `inferredProt` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `isChimeric` (`isChimeric`),
  FULLTEXT KEY `totalProt` (`totalProt`),
  FULLTEXT KEY `maxHomologues` (`maxHomologues`),
  FULLTEXT KEY `inferredProt` (`inferredProt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Complex`
--

LOCK TABLES `Complex` WRITE;
/*!40000 ALTER TABLE `Complex` DISABLE KEYS */;
/*!40000 ALTER TABLE `Complex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComplexDomain`
--

DROP TABLE IF EXISTS `ComplexDomain`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ComplexDomain` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ComplexDomain`
--

LOCK TABLES `ComplexDomain` WRITE;
/*!40000 ALTER TABLE `ComplexDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComplexDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComplexDomain_2_hasComponent`
--

DROP TABLE IF EXISTS `ComplexDomain_2_hasComponent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ComplexDomain_2_hasComponent` (
  `DB_ID` int(10) unsigned default NULL,
  `hasComponent_rank` int(10) unsigned default NULL,
  `hasComponent` int(10) unsigned default NULL,
  `hasComponent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasComponent` (`hasComponent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ComplexDomain_2_hasComponent`
--

LOCK TABLES `ComplexDomain_2_hasComponent` WRITE;
/*!40000 ALTER TABLE `ComplexDomain_2_hasComponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComplexDomain_2_hasComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complex_2_entityOnOtherCell`
--

DROP TABLE IF EXISTS `Complex_2_entityOnOtherCell`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Complex_2_entityOnOtherCell` (
  `DB_ID` int(10) unsigned default NULL,
  `entityOnOtherCell_rank` int(10) unsigned default NULL,
  `entityOnOtherCell` int(10) unsigned default NULL,
  `entityOnOtherCell_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityOnOtherCell` (`entityOnOtherCell`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Complex_2_entityOnOtherCell`
--

LOCK TABLES `Complex_2_entityOnOtherCell` WRITE;
/*!40000 ALTER TABLE `Complex_2_entityOnOtherCell` DISABLE KEYS */;
/*!40000 ALTER TABLE `Complex_2_entityOnOtherCell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complex_2_hasComponent`
--

DROP TABLE IF EXISTS `Complex_2_hasComponent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Complex_2_hasComponent` (
  `DB_ID` int(10) unsigned default NULL,
  `hasComponent_rank` int(10) unsigned default NULL,
  `hasComponent` int(10) unsigned default NULL,
  `hasComponent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasComponent` (`hasComponent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Complex_2_hasComponent`
--

LOCK TABLES `Complex_2_hasComponent` WRITE;
/*!40000 ALTER TABLE `Complex_2_hasComponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Complex_2_hasComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complex_2_includedLocation`
--

DROP TABLE IF EXISTS `Complex_2_includedLocation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Complex_2_includedLocation` (
  `DB_ID` int(10) unsigned default NULL,
  `includedLocation_rank` int(10) unsigned default NULL,
  `includedLocation` int(10) unsigned default NULL,
  `includedLocation_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `includedLocation` (`includedLocation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Complex_2_includedLocation`
--

LOCK TABLES `Complex_2_includedLocation` WRITE;
/*!40000 ALTER TABLE `Complex_2_includedLocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Complex_2_includedLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complex_2_species`
--

DROP TABLE IF EXISTS `Complex_2_species`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Complex_2_species` (
  `DB_ID` int(10) unsigned default NULL,
  `species_rank` int(10) unsigned default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Complex_2_species`
--

LOCK TABLES `Complex_2_species` WRITE;
/*!40000 ALTER TABLE `Complex_2_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `Complex_2_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConcurrentEventSet`
--

DROP TABLE IF EXISTS `ConcurrentEventSet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ConcurrentEventSet` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ConcurrentEventSet`
--

LOCK TABLES `ConcurrentEventSet` WRITE;
/*!40000 ALTER TABLE `ConcurrentEventSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConcurrentEventSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConcurrentEventSet_2_concurrentEvents`
--

DROP TABLE IF EXISTS `ConcurrentEventSet_2_concurrentEvents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ConcurrentEventSet_2_concurrentEvents` (
  `DB_ID` int(10) unsigned default NULL,
  `concurrentEvents_rank` int(10) unsigned default NULL,
  `concurrentEvents` int(10) unsigned default NULL,
  `concurrentEvents_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `concurrentEvents` (`concurrentEvents`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ConcurrentEventSet_2_concurrentEvents`
--

LOCK TABLES `ConcurrentEventSet_2_concurrentEvents` WRITE;
/*!40000 ALTER TABLE `ConcurrentEventSet_2_concurrentEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConcurrentEventSet_2_concurrentEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConcurrentEventSet_2_focusEntity`
--

DROP TABLE IF EXISTS `ConcurrentEventSet_2_focusEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ConcurrentEventSet_2_focusEntity` (
  `DB_ID` int(10) unsigned default NULL,
  `focusEntity_rank` int(10) unsigned default NULL,
  `focusEntity` int(10) unsigned default NULL,
  `focusEntity_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `focusEntity` (`focusEntity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ConcurrentEventSet_2_focusEntity`
--

LOCK TABLES `ConcurrentEventSet_2_focusEntity` WRITE;
/*!40000 ALTER TABLE `ConcurrentEventSet_2_focusEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConcurrentEventSet_2_focusEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ControlledVocabulary`
--

DROP TABLE IF EXISTS `ControlledVocabulary`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ControlledVocabulary` (
  `DB_ID` int(10) unsigned NOT NULL,
  `definition` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ControlledVocabulary`
--

LOCK TABLES `ControlledVocabulary` WRITE;
/*!40000 ALTER TABLE `ControlledVocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `ControlledVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ControlledVocabulary_2_name`
--

DROP TABLE IF EXISTS `ControlledVocabulary_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ControlledVocabulary_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ControlledVocabulary_2_name`
--

LOCK TABLES `ControlledVocabulary_2_name` WRITE;
/*!40000 ALTER TABLE `ControlledVocabulary_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `ControlledVocabulary_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CrosslinkedResidue`
--

DROP TABLE IF EXISTS `CrosslinkedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CrosslinkedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  `modification` int(10) unsigned default NULL,
  `modification_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `modification` (`modification`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CrosslinkedResidue`
--

LOCK TABLES `CrosslinkedResidue` WRITE;
/*!40000 ALTER TABLE `CrosslinkedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `CrosslinkedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CrosslinkedResidue_2_secondCoordinate`
--

DROP TABLE IF EXISTS `CrosslinkedResidue_2_secondCoordinate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `CrosslinkedResidue_2_secondCoordinate` (
  `DB_ID` int(10) unsigned default NULL,
  `secondCoordinate_rank` int(10) unsigned default NULL,
  `secondCoordinate` int(10) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `secondCoordinate` (`secondCoordinate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `CrosslinkedResidue_2_secondCoordinate`
--

LOCK TABLES `CrosslinkedResidue_2_secondCoordinate` WRITE;
/*!40000 ALTER TABLE `CrosslinkedResidue_2_secondCoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `CrosslinkedResidue_2_secondCoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DataModel`
--

DROP TABLE IF EXISTS `DataModel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DataModel` (
  `thing` varchar(255) NOT NULL,
  `thing_class` enum('SchemaClass','SchemaClassAttribute','Schema') default NULL,
  `property_name` varchar(255) NOT NULL,
  `property_value` text,
  `property_value_type` enum('INTEGER','SYMBOL','STRING','INSTANCE','SchemaClass','SchemaClassAttribute') default NULL,
  `property_value_rank` int(10) unsigned default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DataModel`
--

LOCK TABLES `DataModel` WRITE;
/*!40000 ALTER TABLE `DataModel` DISABLE KEYS */;
/*!40000 ALTER TABLE `DataModel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatabaseIdentifier`
--

DROP TABLE IF EXISTS `DatabaseIdentifier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DatabaseIdentifier` (
  `DB_ID` int(10) unsigned NOT NULL,
  `identifier` varchar(20) default NULL,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `identifier` (`identifier`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `identifier_fulltext` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DatabaseIdentifier`
--

LOCK TABLES `DatabaseIdentifier` WRITE;
/*!40000 ALTER TABLE `DatabaseIdentifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatabaseIdentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatabaseIdentifier_2_crossReference`
--

DROP TABLE IF EXISTS `DatabaseIdentifier_2_crossReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DatabaseIdentifier_2_crossReference` (
  `DB_ID` int(10) unsigned default NULL,
  `crossReference_rank` int(10) unsigned default NULL,
  `crossReference` int(10) unsigned default NULL,
  `crossReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DatabaseIdentifier_2_crossReference`
--

LOCK TABLES `DatabaseIdentifier_2_crossReference` WRITE;
/*!40000 ALTER TABLE `DatabaseIdentifier_2_crossReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatabaseIdentifier_2_crossReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatabaseObject`
--

DROP TABLE IF EXISTS `DatabaseObject`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DatabaseObject` (
  `DB_ID` int(10) NOT NULL auto_increment,
  `_Protege_id` varchar(255) default NULL,
  `__is_ghost` enum('TRUE') default NULL,
  `_class` varchar(64) default NULL,
  `_displayName` text,
  `_timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `created` int(10) unsigned default NULL,
  `created_class` varchar(64) default NULL,
  `stableIdentifier` int(10) unsigned default NULL,
  `stableIdentifier_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `_Protege_id` (`_Protege_id`),
  KEY `__is_ghost` (`__is_ghost`),
  KEY `_class` (`_class`),
  KEY `_timestamp` (`_timestamp`),
  KEY `created` (`created`),
  KEY `stableIdentifier` (`stableIdentifier`),
  FULLTEXT KEY `_Protege_id_fulltext` (`_Protege_id`),
  FULLTEXT KEY `_class_fulltext` (`_class`),
  FULLTEXT KEY `_displayName` (`_displayName`)
) ENGINE=MyISAM AUTO_INCREMENT=4031859 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DatabaseObject`
--

LOCK TABLES `DatabaseObject` WRITE;
/*!40000 ALTER TABLE `DatabaseObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatabaseObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatabaseObject_2_modified`
--

DROP TABLE IF EXISTS `DatabaseObject_2_modified`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DatabaseObject_2_modified` (
  `DB_ID` int(10) unsigned default NULL,
  `modified_rank` int(10) unsigned default NULL,
  `modified` int(10) unsigned default NULL,
  `modified_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `modified` (`modified`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DatabaseObject_2_modified`
--

LOCK TABLES `DatabaseObject_2_modified` WRITE;
/*!40000 ALTER TABLE `DatabaseObject_2_modified` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatabaseObject_2_modified` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DefinedSet`
--

DROP TABLE IF EXISTS `DefinedSet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DefinedSet` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DefinedSet`
--

LOCK TABLES `DefinedSet` WRITE;
/*!40000 ALTER TABLE `DefinedSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DefinedSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeletedControlledVocabulary`
--

DROP TABLE IF EXISTS `DeletedControlledVocabulary`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `DeletedControlledVocabulary` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `DeletedControlledVocabulary`
--

LOCK TABLES `DeletedControlledVocabulary` WRITE;
/*!40000 ALTER TABLE `DeletedControlledVocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `DeletedControlledVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Depolymerisation`
--

DROP TABLE IF EXISTS `Depolymerisation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Depolymerisation` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Depolymerisation`
--

LOCK TABLES `Depolymerisation` WRITE;
/*!40000 ALTER TABLE `Depolymerisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Depolymerisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Disease`
--

DROP TABLE IF EXISTS `Disease`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Disease` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Disease`
--

LOCK TABLES `Disease` WRITE;
/*!40000 ALTER TABLE `Disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `Disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Domain`
--

DROP TABLE IF EXISTS `Domain`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Domain` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Domain`
--

LOCK TABLES `Domain` WRITE;
/*!40000 ALTER TABLE `Domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Domain_2_name`
--

DROP TABLE IF EXISTS `Domain_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Domain_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Domain_2_name`
--

LOCK TABLES `Domain_2_name` WRITE;
/*!40000 ALTER TABLE `Domain_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `Domain_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Edge`
--

DROP TABLE IF EXISTS `Edge`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Edge` (
  `DB_ID` int(10) unsigned NOT NULL,
  `edgeType` int(10) default NULL,
  `pathwayDiagram` int(10) unsigned default NULL,
  `pathwayDiagram_class` varchar(64) default NULL,
  `pointCoordinates` text,
  `sourceVertex` int(10) unsigned default NULL,
  `sourceVertex_class` varchar(64) default NULL,
  `targetVertex` int(10) unsigned default NULL,
  `targetVertex_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `edgeType` (`edgeType`),
  KEY `pathwayDiagram` (`pathwayDiagram`),
  KEY `sourceVertex` (`sourceVertex`),
  KEY `targetVertex` (`targetVertex`),
  FULLTEXT KEY `pointCoordinates` (`pointCoordinates`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Edge`
--

LOCK TABLES `Edge` WRITE;
/*!40000 ALTER TABLE `Edge` DISABLE KEYS */;
/*!40000 ALTER TABLE `Edge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityCompartment`
--

DROP TABLE IF EXISTS `EntityCompartment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityCompartment` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityCompartment`
--

LOCK TABLES `EntityCompartment` WRITE;
/*!40000 ALTER TABLE `EntityCompartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityCompartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityFunctionalStatus`
--

DROP TABLE IF EXISTS `EntityFunctionalStatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityFunctionalStatus` (
  `DB_ID` int(10) unsigned NOT NULL,
  `physicalEntity` int(10) unsigned default NULL,
  `physicalEntity_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `physicalEntity` (`physicalEntity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityFunctionalStatus`
--

LOCK TABLES `EntityFunctionalStatus` WRITE;
/*!40000 ALTER TABLE `EntityFunctionalStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityFunctionalStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityFunctionalStatus_2_functionalStatus`
--

DROP TABLE IF EXISTS `EntityFunctionalStatus_2_functionalStatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityFunctionalStatus_2_functionalStatus` (
  `DB_ID` int(10) unsigned default NULL,
  `functionalStatus_rank` int(10) unsigned default NULL,
  `functionalStatus` int(10) unsigned default NULL,
  `functionalStatus_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `functionalStatus` (`functionalStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityFunctionalStatus_2_functionalStatus`
--

LOCK TABLES `EntityFunctionalStatus_2_functionalStatus` WRITE;
/*!40000 ALTER TABLE `EntityFunctionalStatus_2_functionalStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityFunctionalStatus_2_functionalStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntitySet`
--

DROP TABLE IF EXISTS `EntitySet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntitySet` (
  `DB_ID` int(10) unsigned NOT NULL,
  `totalProt` text,
  `inferredProt` text,
  `maxHomologues` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `totalProt` (`totalProt`),
  FULLTEXT KEY `inferredProt` (`inferredProt`),
  FULLTEXT KEY `maxHomologues` (`maxHomologues`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntitySet`
--

LOCK TABLES `EntitySet` WRITE;
/*!40000 ALTER TABLE `EntitySet` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntitySet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntitySet_2_hasMember`
--

DROP TABLE IF EXISTS `EntitySet_2_hasMember`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntitySet_2_hasMember` (
  `DB_ID` int(10) unsigned default NULL,
  `hasMember_rank` int(10) unsigned default NULL,
  `hasMember` int(10) unsigned default NULL,
  `hasMember_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasMember` (`hasMember`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntitySet_2_hasMember`
--

LOCK TABLES `EntitySet_2_hasMember` WRITE;
/*!40000 ALTER TABLE `EntitySet_2_hasMember` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntitySet_2_hasMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntitySet_2_species`
--

DROP TABLE IF EXISTS `EntitySet_2_species`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntitySet_2_species` (
  `DB_ID` int(10) unsigned default NULL,
  `species_rank` int(10) unsigned default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntitySet_2_species`
--

LOCK TABLES `EntitySet_2_species` WRITE;
/*!40000 ALTER TABLE `EntitySet_2_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntitySet_2_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityVertex`
--

DROP TABLE IF EXISTS `EntityVertex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityVertex` (
  `DB_ID` int(10) unsigned NOT NULL,
  `containedInEntityVertex` int(10) unsigned default NULL,
  `containedInEntityVertex_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `containedInEntityVertex` (`containedInEntityVertex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityVertex`
--

LOCK TABLES `EntityVertex` WRITE;
/*!40000 ALTER TABLE `EntityVertex` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityVertex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityWithAccessionedSequence`
--

DROP TABLE IF EXISTS `EntityWithAccessionedSequence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityWithAccessionedSequence` (
  `DB_ID` int(10) unsigned NOT NULL,
  `endCoordinate` int(10) default NULL,
  `referenceEntity` int(10) unsigned default NULL,
  `referenceEntity_class` varchar(64) default NULL,
  `startCoordinate` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `endCoordinate` (`endCoordinate`),
  KEY `referenceEntity` (`referenceEntity`),
  KEY `startCoordinate` (`startCoordinate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityWithAccessionedSequence`
--

LOCK TABLES `EntityWithAccessionedSequence` WRITE;
/*!40000 ALTER TABLE `EntityWithAccessionedSequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityWithAccessionedSequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityWithAccessionedSequence_2_hasModifiedResidue`
--

DROP TABLE IF EXISTS `EntityWithAccessionedSequence_2_hasModifiedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EntityWithAccessionedSequence_2_hasModifiedResidue` (
  `DB_ID` int(10) unsigned default NULL,
  `hasModifiedResidue_rank` int(10) unsigned default NULL,
  `hasModifiedResidue` int(10) unsigned default NULL,
  `hasModifiedResidue_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasModifiedResidue` (`hasModifiedResidue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EntityWithAccessionedSequence_2_hasModifiedResidue`
--

LOCK TABLES `EntityWithAccessionedSequence_2_hasModifiedResidue` WRITE;
/*!40000 ALTER TABLE `EntityWithAccessionedSequence_2_hasModifiedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `EntityWithAccessionedSequence_2_hasModifiedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event` (
  `DB_ID` int(10) unsigned NOT NULL,
  `_doRelease` enum('TRUE','FALSE') default NULL,
  `definition` text,
  `evidenceType` int(10) unsigned default NULL,
  `evidenceType_class` varchar(64) default NULL,
  `goBiologicalProcess` int(10) unsigned default NULL,
  `goBiologicalProcess_class` varchar(64) default NULL,
  `releaseDate` date default NULL,
  `releaseStatus` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `_doRelease` (`_doRelease`),
  KEY `evidenceType` (`evidenceType`),
  KEY `goBiologicalProcess` (`goBiologicalProcess`),
  KEY `releaseDate` (`releaseDate`),
  FULLTEXT KEY `definition` (`definition`),
  FULLTEXT KEY `releaseStatus` (`releaseStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_authored`
--

DROP TABLE IF EXISTS `Event_2_authored`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_authored` (
  `DB_ID` int(10) unsigned default NULL,
  `authored_rank` int(10) unsigned default NULL,
  `authored` int(10) unsigned default NULL,
  `authored_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `authored` (`authored`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_authored`
--

LOCK TABLES `Event_2_authored` WRITE;
/*!40000 ALTER TABLE `Event_2_authored` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_authored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_compartment`
--

DROP TABLE IF EXISTS `Event_2_compartment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_compartment` (
  `DB_ID` int(10) unsigned default NULL,
  `compartment_rank` int(10) unsigned default NULL,
  `compartment` int(10) unsigned default NULL,
  `compartment_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_compartment`
--

LOCK TABLES `Event_2_compartment` WRITE;
/*!40000 ALTER TABLE `Event_2_compartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_compartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_crossReference`
--

DROP TABLE IF EXISTS `Event_2_crossReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_crossReference` (
  `DB_ID` int(10) unsigned default NULL,
  `crossReference_rank` int(10) unsigned default NULL,
  `crossReference` int(10) unsigned default NULL,
  `crossReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_crossReference`
--

LOCK TABLES `Event_2_crossReference` WRITE;
/*!40000 ALTER TABLE `Event_2_crossReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_crossReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_disease`
--

DROP TABLE IF EXISTS `Event_2_disease`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_disease` (
  `DB_ID` int(10) unsigned default NULL,
  `disease_rank` int(10) unsigned default NULL,
  `disease` int(10) unsigned default NULL,
  `disease_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `disease` (`disease`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_disease`
--

LOCK TABLES `Event_2_disease` WRITE;
/*!40000 ALTER TABLE `Event_2_disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_edited`
--

DROP TABLE IF EXISTS `Event_2_edited`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_edited` (
  `DB_ID` int(10) unsigned default NULL,
  `edited_rank` int(10) unsigned default NULL,
  `edited` int(10) unsigned default NULL,
  `edited_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `edited` (`edited`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_edited`
--

LOCK TABLES `Event_2_edited` WRITE;
/*!40000 ALTER TABLE `Event_2_edited` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_edited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_figure`
--

DROP TABLE IF EXISTS `Event_2_figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_figure` (
  `DB_ID` int(10) unsigned default NULL,
  `figure_rank` int(10) unsigned default NULL,
  `figure` int(10) unsigned default NULL,
  `figure_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_figure`
--

LOCK TABLES `Event_2_figure` WRITE;
/*!40000 ALTER TABLE `Event_2_figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_inferredFrom`
--

DROP TABLE IF EXISTS `Event_2_inferredFrom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_inferredFrom` (
  `DB_ID` int(10) unsigned default NULL,
  `inferredFrom_rank` int(10) unsigned default NULL,
  `inferredFrom` int(10) unsigned default NULL,
  `inferredFrom_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredFrom` (`inferredFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_inferredFrom`
--

LOCK TABLES `Event_2_inferredFrom` WRITE;
/*!40000 ALTER TABLE `Event_2_inferredFrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_inferredFrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_literatureReference`
--

DROP TABLE IF EXISTS `Event_2_literatureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_literatureReference` (
  `DB_ID` int(10) unsigned default NULL,
  `literatureReference_rank` int(10) unsigned default NULL,
  `literatureReference` int(10) unsigned default NULL,
  `literatureReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_literatureReference`
--

LOCK TABLES `Event_2_literatureReference` WRITE;
/*!40000 ALTER TABLE `Event_2_literatureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_literatureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_name`
--

DROP TABLE IF EXISTS `Event_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_name`
--

LOCK TABLES `Event_2_name` WRITE;
/*!40000 ALTER TABLE `Event_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_orthologousEvent`
--

DROP TABLE IF EXISTS `Event_2_orthologousEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_orthologousEvent` (
  `DB_ID` int(10) unsigned default NULL,
  `orthologousEvent_rank` int(10) unsigned default NULL,
  `orthologousEvent` int(10) unsigned default NULL,
  `orthologousEvent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `orthologousEvent` (`orthologousEvent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_orthologousEvent`
--

LOCK TABLES `Event_2_orthologousEvent` WRITE;
/*!40000 ALTER TABLE `Event_2_orthologousEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_orthologousEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_precedingEvent`
--

DROP TABLE IF EXISTS `Event_2_precedingEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_precedingEvent` (
  `DB_ID` int(10) unsigned default NULL,
  `precedingEvent_rank` int(10) unsigned default NULL,
  `precedingEvent` int(10) unsigned default NULL,
  `precedingEvent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `precedingEvent` (`precedingEvent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_precedingEvent`
--

LOCK TABLES `Event_2_precedingEvent` WRITE;
/*!40000 ALTER TABLE `Event_2_precedingEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_precedingEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_reviewed`
--

DROP TABLE IF EXISTS `Event_2_reviewed`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_reviewed` (
  `DB_ID` int(10) unsigned default NULL,
  `reviewed_rank` int(10) unsigned default NULL,
  `reviewed` int(10) unsigned default NULL,
  `reviewed_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reviewed` (`reviewed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_reviewed`
--

LOCK TABLES `Event_2_reviewed` WRITE;
/*!40000 ALTER TABLE `Event_2_reviewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_revised`
--

DROP TABLE IF EXISTS `Event_2_revised`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_revised` (
  `DB_ID` int(10) unsigned default NULL,
  `revised_rank` int(10) unsigned default NULL,
  `revised` int(10) unsigned default NULL,
  `revised_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `revised` (`revised`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_revised`
--

LOCK TABLES `Event_2_revised` WRITE;
/*!40000 ALTER TABLE `Event_2_revised` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_revised` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_species`
--

DROP TABLE IF EXISTS `Event_2_species`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_species` (
  `DB_ID` int(10) unsigned default NULL,
  `species_rank` int(10) unsigned default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_species`
--

LOCK TABLES `Event_2_species` WRITE;
/*!40000 ALTER TABLE `Event_2_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_2_summation`
--

DROP TABLE IF EXISTS `Event_2_summation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Event_2_summation` (
  `DB_ID` int(10) unsigned default NULL,
  `summation_rank` int(10) unsigned default NULL,
  `summation` int(10) unsigned default NULL,
  `summation_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `summation` (`summation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Event_2_summation`
--

LOCK TABLES `Event_2_summation` WRITE;
/*!40000 ALTER TABLE `Event_2_summation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_2_summation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EvidenceType`
--

DROP TABLE IF EXISTS `EvidenceType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EvidenceType` (
  `DB_ID` int(10) unsigned NOT NULL,
  `definition` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EvidenceType`
--

LOCK TABLES `EvidenceType` WRITE;
/*!40000 ALTER TABLE `EvidenceType` DISABLE KEYS */;
/*!40000 ALTER TABLE `EvidenceType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EvidenceType_2_instanceOf`
--

DROP TABLE IF EXISTS `EvidenceType_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EvidenceType_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EvidenceType_2_instanceOf`
--

LOCK TABLES `EvidenceType_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `EvidenceType_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `EvidenceType_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EvidenceType_2_name`
--

DROP TABLE IF EXISTS `EvidenceType_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EvidenceType_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EvidenceType_2_name`
--

LOCK TABLES `EvidenceType_2_name` WRITE;
/*!40000 ALTER TABLE `EvidenceType_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `EvidenceType_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExternalOntology`
--

DROP TABLE IF EXISTS `ExternalOntology`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ExternalOntology` (
  `DB_ID` int(10) unsigned NOT NULL,
  `definition` text,
  `identifier` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `definition` (`definition`),
  FULLTEXT KEY `identifier` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ExternalOntology`
--

LOCK TABLES `ExternalOntology` WRITE;
/*!40000 ALTER TABLE `ExternalOntology` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExternalOntology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExternalOntology_2_instanceOf`
--

DROP TABLE IF EXISTS `ExternalOntology_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ExternalOntology_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ExternalOntology_2_instanceOf`
--

LOCK TABLES `ExternalOntology_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `ExternalOntology_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExternalOntology_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExternalOntology_2_name`
--

DROP TABLE IF EXISTS `ExternalOntology_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ExternalOntology_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ExternalOntology_2_name`
--

LOCK TABLES `ExternalOntology_2_name` WRITE;
/*!40000 ALTER TABLE `ExternalOntology_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExternalOntology_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExternalOntology_2_synonym`
--

DROP TABLE IF EXISTS `ExternalOntology_2_synonym`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ExternalOntology_2_synonym` (
  `DB_ID` int(10) unsigned default NULL,
  `synonym_rank` int(10) unsigned default NULL,
  `synonym` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `synonym` (`synonym`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ExternalOntology_2_synonym`
--

LOCK TABLES `ExternalOntology_2_synonym` WRITE;
/*!40000 ALTER TABLE `ExternalOntology_2_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExternalOntology_2_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Figure`
--

DROP TABLE IF EXISTS `Figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Figure` (
  `DB_ID` int(10) unsigned NOT NULL,
  `url` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Figure`
--

LOCK TABLES `Figure` WRITE;
/*!40000 ALTER TABLE `Figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FragmentDeletionModification`
--

DROP TABLE IF EXISTS `FragmentDeletionModification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FragmentDeletionModification` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FragmentDeletionModification`
--

LOCK TABLES `FragmentDeletionModification` WRITE;
/*!40000 ALTER TABLE `FragmentDeletionModification` DISABLE KEYS */;
/*!40000 ALTER TABLE `FragmentDeletionModification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FragmentInsertionModification`
--

DROP TABLE IF EXISTS `FragmentInsertionModification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FragmentInsertionModification` (
  `DB_ID` int(10) unsigned NOT NULL,
  `coordinate` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `coordinate` (`coordinate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FragmentInsertionModification`
--

LOCK TABLES `FragmentInsertionModification` WRITE;
/*!40000 ALTER TABLE `FragmentInsertionModification` DISABLE KEYS */;
/*!40000 ALTER TABLE `FragmentInsertionModification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FragmentModification`
--

DROP TABLE IF EXISTS `FragmentModification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FragmentModification` (
  `DB_ID` int(10) unsigned NOT NULL,
  `endPositionInReferenceSequence` int(10) default NULL,
  `startPositionInReferenceSequence` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `endPositionInReferenceSequence` (`endPositionInReferenceSequence`),
  KEY `startPositionInReferenceSequence` (`startPositionInReferenceSequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FragmentModification`
--

LOCK TABLES `FragmentModification` WRITE;
/*!40000 ALTER TABLE `FragmentModification` DISABLE KEYS */;
/*!40000 ALTER TABLE `FragmentModification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FrontPage`
--

DROP TABLE IF EXISTS `FrontPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FrontPage` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FrontPage`
--

LOCK TABLES `FrontPage` WRITE;
/*!40000 ALTER TABLE `FrontPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `FrontPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FrontPage_2_frontPageItem`
--

DROP TABLE IF EXISTS `FrontPage_2_frontPageItem`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FrontPage_2_frontPageItem` (
  `DB_ID` int(10) unsigned default NULL,
  `frontPageItem_rank` int(10) unsigned default NULL,
  `frontPageItem` int(10) unsigned default NULL,
  `frontPageItem_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `frontPageItem` (`frontPageItem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FrontPage_2_frontPageItem`
--

LOCK TABLES `FrontPage_2_frontPageItem` WRITE;
/*!40000 ALTER TABLE `FrontPage_2_frontPageItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `FrontPage_2_frontPageItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FunctionalStatus`
--

DROP TABLE IF EXISTS `FunctionalStatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FunctionalStatus` (
  `DB_ID` int(10) unsigned NOT NULL,
  `functionalStatusType` int(10) unsigned default NULL,
  `functionalStatusType_class` varchar(64) default NULL,
  `structuralVariant` int(10) unsigned default NULL,
  `structuralVariant_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `functionalStatusType` (`functionalStatusType`),
  KEY `structuralVariant` (`structuralVariant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FunctionalStatus`
--

LOCK TABLES `FunctionalStatus` WRITE;
/*!40000 ALTER TABLE `FunctionalStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `FunctionalStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FunctionalStatusType`
--

DROP TABLE IF EXISTS `FunctionalStatusType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FunctionalStatusType` (
  `DB_ID` int(10) unsigned NOT NULL,
  `definition` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FunctionalStatusType`
--

LOCK TABLES `FunctionalStatusType` WRITE;
/*!40000 ALTER TABLE `FunctionalStatusType` DISABLE KEYS */;
/*!40000 ALTER TABLE `FunctionalStatusType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FunctionalStatusType_2_name`
--

DROP TABLE IF EXISTS `FunctionalStatusType_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FunctionalStatusType_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FunctionalStatusType_2_name`
--

LOCK TABLES `FunctionalStatusType_2_name` WRITE;
/*!40000 ALTER TABLE `FunctionalStatusType_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `FunctionalStatusType_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess` (
  `DB_ID` int(10) unsigned NOT NULL,
  `accession` text,
  `definition` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `accession` (`accession`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess`
--

LOCK TABLES `GO_BiologicalProcess` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_componentOf`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_componentOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_componentOf` (
  `DB_ID` int(10) unsigned default NULL,
  `componentOf_rank` int(10) unsigned default NULL,
  `componentOf` int(10) unsigned default NULL,
  `componentOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `componentOf` (`componentOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_componentOf`
--

LOCK TABLES `GO_BiologicalProcess_2_componentOf` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_componentOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_componentOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_hasPart`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_hasPart`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_hasPart` (
  `DB_ID` int(10) unsigned default NULL,
  `hasPart_rank` int(10) unsigned default NULL,
  `hasPart` int(10) unsigned default NULL,
  `hasPart_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasPart` (`hasPart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_hasPart`
--

LOCK TABLES `GO_BiologicalProcess_2_hasPart` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_hasPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_hasPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_instanceOf`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_instanceOf`
--

LOCK TABLES `GO_BiologicalProcess_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_name`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_name`
--

LOCK TABLES `GO_BiologicalProcess_2_name` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_negativelyRegulate`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_negativelyRegulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_negativelyRegulate` (
  `DB_ID` int(10) unsigned default NULL,
  `negativelyRegulate_rank` int(10) unsigned default NULL,
  `negativelyRegulate` int(10) unsigned default NULL,
  `negativelyRegulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `negativelyRegulate` (`negativelyRegulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_negativelyRegulate`
--

LOCK TABLES `GO_BiologicalProcess_2_negativelyRegulate` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_negativelyRegulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_negativelyRegulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_positivelyRegulate`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_positivelyRegulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_positivelyRegulate` (
  `DB_ID` int(10) unsigned default NULL,
  `positivelyRegulate_rank` int(10) unsigned default NULL,
  `positivelyRegulate` int(10) unsigned default NULL,
  `positivelyRegulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `positivelyRegulate` (`positivelyRegulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_positivelyRegulate`
--

LOCK TABLES `GO_BiologicalProcess_2_positivelyRegulate` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_positivelyRegulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_positivelyRegulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_BiologicalProcess_2_regulate`
--

DROP TABLE IF EXISTS `GO_BiologicalProcess_2_regulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_BiologicalProcess_2_regulate` (
  `DB_ID` int(10) unsigned default NULL,
  `regulate_rank` int(10) unsigned default NULL,
  `regulate` int(10) unsigned default NULL,
  `regulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `regulate` (`regulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_BiologicalProcess_2_regulate`
--

LOCK TABLES `GO_BiologicalProcess_2_regulate` WRITE;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_regulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_BiologicalProcess_2_regulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_CellularComponent`
--

DROP TABLE IF EXISTS `GO_CellularComponent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_CellularComponent` (
  `DB_ID` int(10) unsigned NOT NULL,
  `accession` text,
  `definition` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `accession` (`accession`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_CellularComponent`
--

LOCK TABLES `GO_CellularComponent` WRITE;
/*!40000 ALTER TABLE `GO_CellularComponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_CellularComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_CellularComponent_2_componentOf`
--

DROP TABLE IF EXISTS `GO_CellularComponent_2_componentOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_CellularComponent_2_componentOf` (
  `DB_ID` int(10) unsigned default NULL,
  `componentOf_rank` int(10) unsigned default NULL,
  `componentOf` int(10) unsigned default NULL,
  `componentOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `componentOf` (`componentOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_CellularComponent_2_componentOf`
--

LOCK TABLES `GO_CellularComponent_2_componentOf` WRITE;
/*!40000 ALTER TABLE `GO_CellularComponent_2_componentOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_CellularComponent_2_componentOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_CellularComponent_2_hasPart`
--

DROP TABLE IF EXISTS `GO_CellularComponent_2_hasPart`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_CellularComponent_2_hasPart` (
  `DB_ID` int(10) unsigned default NULL,
  `hasPart_rank` int(10) unsigned default NULL,
  `hasPart` int(10) unsigned default NULL,
  `hasPart_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasPart` (`hasPart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_CellularComponent_2_hasPart`
--

LOCK TABLES `GO_CellularComponent_2_hasPart` WRITE;
/*!40000 ALTER TABLE `GO_CellularComponent_2_hasPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_CellularComponent_2_hasPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_CellularComponent_2_instanceOf`
--

DROP TABLE IF EXISTS `GO_CellularComponent_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_CellularComponent_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_CellularComponent_2_instanceOf`
--

LOCK TABLES `GO_CellularComponent_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `GO_CellularComponent_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_CellularComponent_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_CellularComponent_2_name`
--

DROP TABLE IF EXISTS `GO_CellularComponent_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_CellularComponent_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_CellularComponent_2_name`
--

LOCK TABLES `GO_CellularComponent_2_name` WRITE;
/*!40000 ALTER TABLE `GO_CellularComponent_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_CellularComponent_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction`
--

DROP TABLE IF EXISTS `GO_MolecularFunction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction` (
  `DB_ID` int(10) unsigned NOT NULL,
  `accession` text,
  `definition` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `accession` (`accession`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction`
--

LOCK TABLES `GO_MolecularFunction` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_componentOf`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_componentOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_componentOf` (
  `DB_ID` int(10) unsigned default NULL,
  `componentOf_rank` int(10) unsigned default NULL,
  `componentOf` int(10) unsigned default NULL,
  `componentOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `componentOf` (`componentOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_componentOf`
--

LOCK TABLES `GO_MolecularFunction_2_componentOf` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_componentOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_componentOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_ecNumber`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_ecNumber`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_ecNumber` (
  `DB_ID` int(10) unsigned default NULL,
  `ecNumber_rank` int(10) unsigned default NULL,
  `ecNumber` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `ecNumber` (`ecNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_ecNumber`
--

LOCK TABLES `GO_MolecularFunction_2_ecNumber` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_ecNumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_ecNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_hasPart`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_hasPart`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_hasPart` (
  `DB_ID` int(10) unsigned default NULL,
  `hasPart_rank` int(10) unsigned default NULL,
  `hasPart` int(10) unsigned default NULL,
  `hasPart_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasPart` (`hasPart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_hasPart`
--

LOCK TABLES `GO_MolecularFunction_2_hasPart` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_hasPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_hasPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_instanceOf`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_instanceOf`
--

LOCK TABLES `GO_MolecularFunction_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_name`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_name`
--

LOCK TABLES `GO_MolecularFunction_2_name` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_negativelyRegulate`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_negativelyRegulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_negativelyRegulate` (
  `DB_ID` int(10) unsigned default NULL,
  `negativelyRegulate_rank` int(10) unsigned default NULL,
  `negativelyRegulate` int(10) unsigned default NULL,
  `negativelyRegulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `negativelyRegulate` (`negativelyRegulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_negativelyRegulate`
--

LOCK TABLES `GO_MolecularFunction_2_negativelyRegulate` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_negativelyRegulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_negativelyRegulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_positivelyRegulate`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_positivelyRegulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_positivelyRegulate` (
  `DB_ID` int(10) unsigned default NULL,
  `positivelyRegulate_rank` int(10) unsigned default NULL,
  `positivelyRegulate` int(10) unsigned default NULL,
  `positivelyRegulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `positivelyRegulate` (`positivelyRegulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_positivelyRegulate`
--

LOCK TABLES `GO_MolecularFunction_2_positivelyRegulate` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_positivelyRegulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_positivelyRegulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_MolecularFunction_2_regulate`
--

DROP TABLE IF EXISTS `GO_MolecularFunction_2_regulate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GO_MolecularFunction_2_regulate` (
  `DB_ID` int(10) unsigned default NULL,
  `regulate_rank` int(10) unsigned default NULL,
  `regulate` int(10) unsigned default NULL,
  `regulate_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `regulate` (`regulate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GO_MolecularFunction_2_regulate`
--

LOCK TABLES `GO_MolecularFunction_2_regulate` WRITE;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_regulate` DISABLE KEYS */;
/*!40000 ALTER TABLE `GO_MolecularFunction_2_regulate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GenericDomain`
--

DROP TABLE IF EXISTS `GenericDomain`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GenericDomain` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GenericDomain`
--

LOCK TABLES `GenericDomain` WRITE;
/*!40000 ALTER TABLE `GenericDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `GenericDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GenericDomain_2_hasInstance`
--

DROP TABLE IF EXISTS `GenericDomain_2_hasInstance`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GenericDomain_2_hasInstance` (
  `DB_ID` int(10) unsigned default NULL,
  `hasInstance_rank` int(10) unsigned default NULL,
  `hasInstance` int(10) unsigned default NULL,
  `hasInstance_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasInstance` (`hasInstance`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GenericDomain_2_hasInstance`
--

LOCK TABLES `GenericDomain_2_hasInstance` WRITE;
/*!40000 ALTER TABLE `GenericDomain_2_hasInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `GenericDomain_2_hasInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GeneticallyModifiedResidue`
--

DROP TABLE IF EXISTS `GeneticallyModifiedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GeneticallyModifiedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GeneticallyModifiedResidue`
--

LOCK TABLES `GeneticallyModifiedResidue` WRITE;
/*!40000 ALTER TABLE `GeneticallyModifiedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `GeneticallyModifiedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GenomeEncodedEntity`
--

DROP TABLE IF EXISTS `GenomeEncodedEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GenomeEncodedEntity` (
  `DB_ID` int(10) unsigned NOT NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GenomeEncodedEntity`
--

LOCK TABLES `GenomeEncodedEntity` WRITE;
/*!40000 ALTER TABLE `GenomeEncodedEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `GenomeEncodedEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupModifiedResidue`
--

DROP TABLE IF EXISTS `GroupModifiedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GroupModifiedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  `modification` int(10) unsigned default NULL,
  `modification_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `modification` (`modification`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GroupModifiedResidue`
--

LOCK TABLES `GroupModifiedResidue` WRITE;
/*!40000 ALTER TABLE `GroupModifiedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupModifiedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InstanceEdit`
--

DROP TABLE IF EXISTS `InstanceEdit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InstanceEdit` (
  `DB_ID` int(10) unsigned NOT NULL,
  `_applyToAllEditedInstances` text,
  `dateTime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `note` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `dateTime` (`dateTime`),
  FULLTEXT KEY `_applyToAllEditedInstances` (`_applyToAllEditedInstances`),
  FULLTEXT KEY `note` (`note`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `InstanceEdit`
--

LOCK TABLES `InstanceEdit` WRITE;
/*!40000 ALTER TABLE `InstanceEdit` DISABLE KEYS */;
/*!40000 ALTER TABLE `InstanceEdit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InstanceEdit_2_author`
--

DROP TABLE IF EXISTS `InstanceEdit_2_author`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InstanceEdit_2_author` (
  `DB_ID` int(10) unsigned default NULL,
  `author_rank` int(10) unsigned default NULL,
  `author` int(10) unsigned default NULL,
  `author_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `InstanceEdit_2_author`
--

LOCK TABLES `InstanceEdit_2_author` WRITE;
/*!40000 ALTER TABLE `InstanceEdit_2_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `InstanceEdit_2_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InterChainCrosslinkedResidue`
--

DROP TABLE IF EXISTS `InterChainCrosslinkedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InterChainCrosslinkedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `InterChainCrosslinkedResidue`
--

LOCK TABLES `InterChainCrosslinkedResidue` WRITE;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InterChainCrosslinkedResidue_2_equivalentTo`
--

DROP TABLE IF EXISTS `InterChainCrosslinkedResidue_2_equivalentTo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InterChainCrosslinkedResidue_2_equivalentTo` (
  `DB_ID` int(10) unsigned default NULL,
  `equivalentTo_rank` int(10) unsigned default NULL,
  `equivalentTo` int(10) unsigned default NULL,
  `equivalentTo_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `equivalentTo` (`equivalentTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `InterChainCrosslinkedResidue_2_equivalentTo`
--

LOCK TABLES `InterChainCrosslinkedResidue_2_equivalentTo` WRITE;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue_2_equivalentTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue_2_equivalentTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InterChainCrosslinkedResidue_2_secondReferenceSequence`
--

DROP TABLE IF EXISTS `InterChainCrosslinkedResidue_2_secondReferenceSequence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `InterChainCrosslinkedResidue_2_secondReferenceSequence` (
  `DB_ID` int(10) unsigned default NULL,
  `secondReferenceSequence_rank` int(10) unsigned default NULL,
  `secondReferenceSequence` int(10) unsigned default NULL,
  `secondReferenceSequence_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `secondReferenceSequence` (`secondReferenceSequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `InterChainCrosslinkedResidue_2_secondReferenceSequence`
--

LOCK TABLES `InterChainCrosslinkedResidue_2_secondReferenceSequence` WRITE;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue_2_secondReferenceSequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `InterChainCrosslinkedResidue_2_secondReferenceSequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntraChainCrosslinkedResidue`
--

DROP TABLE IF EXISTS `IntraChainCrosslinkedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `IntraChainCrosslinkedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `IntraChainCrosslinkedResidue`
--

LOCK TABLES `IntraChainCrosslinkedResidue` WRITE;
/*!40000 ALTER TABLE `IntraChainCrosslinkedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntraChainCrosslinkedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LiteratureReference`
--

DROP TABLE IF EXISTS `LiteratureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `LiteratureReference` (
  `DB_ID` int(10) unsigned NOT NULL,
  `journal` varchar(255) default NULL,
  `pages` text,
  `pubMedIdentifier` int(10) default NULL,
  `volume` int(10) default NULL,
  `year` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `journal` (`journal`),
  KEY `pubMedIdentifier` (`pubMedIdentifier`),
  KEY `volume` (`volume`),
  KEY `year` (`year`),
  FULLTEXT KEY `journal_fulltext` (`journal`),
  FULLTEXT KEY `pages` (`pages`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `LiteratureReference`
--

LOCK TABLES `LiteratureReference` WRITE;
/*!40000 ALTER TABLE `LiteratureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `LiteratureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModifiedResidue`
--

DROP TABLE IF EXISTS `ModifiedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ModifiedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ModifiedResidue`
--

LOCK TABLES `ModifiedResidue` WRITE;
/*!40000 ALTER TABLE `ModifiedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModifiedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NegativeRegulation`
--

DROP TABLE IF EXISTS `NegativeRegulation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `NegativeRegulation` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `NegativeRegulation`
--

LOCK TABLES `NegativeRegulation` WRITE;
/*!40000 ALTER TABLE `NegativeRegulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `NegativeRegulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ontology`
--

DROP TABLE IF EXISTS `Ontology`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Ontology` (
  `ontology` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Ontology`
--

LOCK TABLES `Ontology` WRITE;
/*!40000 ALTER TABLE `Ontology` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ontology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSet`
--

DROP TABLE IF EXISTS `OpenSet`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `OpenSet` (
  `DB_ID` int(10) unsigned NOT NULL,
  `referenceEntity` int(10) unsigned default NULL,
  `referenceEntity_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceEntity` (`referenceEntity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `OpenSet`
--

LOCK TABLES `OpenSet` WRITE;
/*!40000 ALTER TABLE `OpenSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OtherEntity`
--

DROP TABLE IF EXISTS `OtherEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `OtherEntity` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `OtherEntity`
--

LOCK TABLES `OtherEntity` WRITE;
/*!40000 ALTER TABLE `OtherEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `OtherEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parameters`
--

DROP TABLE IF EXISTS `Parameters`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Parameters` (
  `parameter` varchar(64) NOT NULL,
  `value` longblob,
  PRIMARY KEY  (`parameter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Parameters`
--

LOCK TABLES `Parameters` WRITE;
/*!40000 ALTER TABLE `Parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `Parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pathway`
--

DROP TABLE IF EXISTS `Pathway`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Pathway` (
  `DB_ID` int(10) unsigned NOT NULL,
  `doi` varchar(64) default NULL,
  `isCanonical` enum('TRUE','FALSE') default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `doi` (`doi`),
  KEY `isCanonical` (`isCanonical`),
  FULLTEXT KEY `doi_fulltext` (`doi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Pathway`
--

LOCK TABLES `Pathway` WRITE;
/*!40000 ALTER TABLE `Pathway` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pathway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PathwayCoordinates`
--

DROP TABLE IF EXISTS `PathwayCoordinates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PathwayCoordinates` (
  `DB_ID` int(10) unsigned NOT NULL,
  `locatedEvent` int(10) unsigned default NULL,
  `locatedEvent_class` varchar(64) default NULL,
  `maxX` int(10) default NULL,
  `maxY` int(10) default NULL,
  `minX` int(10) default NULL,
  `minY` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `locatedEvent` (`locatedEvent`),
  KEY `maxX` (`maxX`),
  KEY `maxY` (`maxY`),
  KEY `minX` (`minX`),
  KEY `minY` (`minY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PathwayCoordinates`
--

LOCK TABLES `PathwayCoordinates` WRITE;
/*!40000 ALTER TABLE `PathwayCoordinates` DISABLE KEYS */;
/*!40000 ALTER TABLE `PathwayCoordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PathwayDiagram`
--

DROP TABLE IF EXISTS `PathwayDiagram`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PathwayDiagram` (
  `DB_ID` int(10) unsigned NOT NULL,
  `height` int(10) default NULL,
  `storedATXML` longblob,
  `width` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `height` (`height`),
  KEY `width` (`width`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PathwayDiagram`
--

LOCK TABLES `PathwayDiagram` WRITE;
/*!40000 ALTER TABLE `PathwayDiagram` DISABLE KEYS */;
/*!40000 ALTER TABLE `PathwayDiagram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PathwayDiagramItem`
--

DROP TABLE IF EXISTS `PathwayDiagramItem`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PathwayDiagramItem` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PathwayDiagramItem`
--

LOCK TABLES `PathwayDiagramItem` WRITE;
/*!40000 ALTER TABLE `PathwayDiagramItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PathwayDiagramItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PathwayDiagram_2_representedPathway`
--

DROP TABLE IF EXISTS `PathwayDiagram_2_representedPathway`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PathwayDiagram_2_representedPathway` (
  `DB_ID` int(10) unsigned default NULL,
  `representedPathway_rank` int(10) unsigned default NULL,
  `representedPathway` int(10) unsigned default NULL,
  `representedPathway_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `representedPathway` (`representedPathway`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PathwayDiagram_2_representedPathway`
--

LOCK TABLES `PathwayDiagram_2_representedPathway` WRITE;
/*!40000 ALTER TABLE `PathwayDiagram_2_representedPathway` DISABLE KEYS */;
/*!40000 ALTER TABLE `PathwayDiagram_2_representedPathway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PathwayVertex`
--

DROP TABLE IF EXISTS `PathwayVertex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PathwayVertex` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PathwayVertex`
--

LOCK TABLES `PathwayVertex` WRITE;
/*!40000 ALTER TABLE `PathwayVertex` DISABLE KEYS */;
/*!40000 ALTER TABLE `PathwayVertex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pathway_2_hasEvent`
--

DROP TABLE IF EXISTS `Pathway_2_hasEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Pathway_2_hasEvent` (
  `DB_ID` int(10) unsigned default NULL,
  `hasEvent_rank` int(10) unsigned default NULL,
  `hasEvent` int(10) unsigned default NULL,
  `hasEvent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasEvent` (`hasEvent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Pathway_2_hasEvent`
--

LOCK TABLES `Pathway_2_hasEvent` WRITE;
/*!40000 ALTER TABLE `Pathway_2_hasEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pathway_2_hasEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Person` (
  `DB_ID` int(10) unsigned NOT NULL,
  `eMailAddress` varchar(255) default NULL,
  `firstname` text,
  `initial` varchar(10) default NULL,
  `project` text,
  `surname` varchar(255) default NULL,
  `url` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `eMailAddress` (`eMailAddress`),
  KEY `initial` (`initial`),
  KEY `surname` (`surname`),
  FULLTEXT KEY `eMailAddress_fulltext` (`eMailAddress`),
  FULLTEXT KEY `firstname` (`firstname`),
  FULLTEXT KEY `initial_fulltext` (`initial`),
  FULLTEXT KEY `project` (`project`),
  FULLTEXT KEY `surname_fulltext` (`surname`),
  FULLTEXT KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person_2_affiliation`
--

DROP TABLE IF EXISTS `Person_2_affiliation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Person_2_affiliation` (
  `DB_ID` int(10) unsigned default NULL,
  `affiliation_rank` int(10) unsigned default NULL,
  `affiliation` int(10) unsigned default NULL,
  `affiliation_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `affiliation` (`affiliation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Person_2_affiliation`
--

LOCK TABLES `Person_2_affiliation` WRITE;
/*!40000 ALTER TABLE `Person_2_affiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person_2_affiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person_2_figure`
--

DROP TABLE IF EXISTS `Person_2_figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Person_2_figure` (
  `DB_ID` int(10) unsigned default NULL,
  `figure_rank` int(10) unsigned default NULL,
  `figure` int(10) unsigned default NULL,
  `figure_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Person_2_figure`
--

LOCK TABLES `Person_2_figure` WRITE;
/*!40000 ALTER TABLE `Person_2_figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person_2_figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity`
--

DROP TABLE IF EXISTS `PhysicalEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity` (
  `DB_ID` int(10) unsigned NOT NULL,
  `authored` int(10) unsigned default NULL,
  `authored_class` varchar(64) default NULL,
  `cellType` int(10) unsigned default NULL,
  `cellType_class` varchar(64) default NULL,
  `definition` text,
  `goCellularComponent` int(10) unsigned default NULL,
  `goCellularComponent_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `authored` (`authored`),
  KEY `cellType` (`cellType`),
  KEY `goCellularComponent` (`goCellularComponent`),
  FULLTEXT KEY `definition` (`definition`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity`
--

LOCK TABLES `PhysicalEntity` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_compartment`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_compartment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_compartment` (
  `DB_ID` int(10) unsigned default NULL,
  `compartment_rank` int(10) unsigned default NULL,
  `compartment` int(10) unsigned default NULL,
  `compartment_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `compartment` (`compartment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_compartment`
--

LOCK TABLES `PhysicalEntity_2_compartment` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_compartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_compartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_crossReference`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_crossReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_crossReference` (
  `DB_ID` int(10) unsigned default NULL,
  `crossReference_rank` int(10) unsigned default NULL,
  `crossReference` int(10) unsigned default NULL,
  `crossReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_crossReference`
--

LOCK TABLES `PhysicalEntity_2_crossReference` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_crossReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_crossReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_disease`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_disease`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_disease` (
  `DB_ID` int(10) unsigned default NULL,
  `disease_rank` int(10) unsigned default NULL,
  `disease` int(10) unsigned default NULL,
  `disease_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `disease` (`disease`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_disease`
--

LOCK TABLES `PhysicalEntity_2_disease` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_edited`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_edited`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_edited` (
  `DB_ID` int(10) unsigned default NULL,
  `edited_rank` int(10) unsigned default NULL,
  `edited` int(10) unsigned default NULL,
  `edited_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `edited` (`edited`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_edited`
--

LOCK TABLES `PhysicalEntity_2_edited` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_edited` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_edited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_figure`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_figure` (
  `DB_ID` int(10) unsigned default NULL,
  `figure_rank` int(10) unsigned default NULL,
  `figure` int(10) unsigned default NULL,
  `figure_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_figure`
--

LOCK TABLES `PhysicalEntity_2_figure` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_hasDomain`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_hasDomain`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_hasDomain` (
  `DB_ID` int(10) unsigned default NULL,
  `hasDomain_rank` int(10) unsigned default NULL,
  `hasDomain` int(10) unsigned default NULL,
  `hasDomain_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `hasDomain` (`hasDomain`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_hasDomain`
--

LOCK TABLES `PhysicalEntity_2_hasDomain` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_hasDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_hasDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_inferredFrom`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_inferredFrom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_inferredFrom` (
  `DB_ID` int(10) unsigned default NULL,
  `inferredFrom_rank` int(10) unsigned default NULL,
  `inferredFrom` int(10) unsigned default NULL,
  `inferredFrom_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredFrom` (`inferredFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_inferredFrom`
--

LOCK TABLES `PhysicalEntity_2_inferredFrom` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_inferredFrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_inferredFrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_inferredTo`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_inferredTo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_inferredTo` (
  `DB_ID` int(10) unsigned default NULL,
  `inferredTo_rank` int(10) unsigned default NULL,
  `inferredTo` int(10) unsigned default NULL,
  `inferredTo_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `inferredTo` (`inferredTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_inferredTo`
--

LOCK TABLES `PhysicalEntity_2_inferredTo` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_inferredTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_inferredTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_literatureReference`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_literatureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_literatureReference` (
  `DB_ID` int(10) unsigned default NULL,
  `literatureReference_rank` int(10) unsigned default NULL,
  `literatureReference` int(10) unsigned default NULL,
  `literatureReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_literatureReference`
--

LOCK TABLES `PhysicalEntity_2_literatureReference` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_literatureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_literatureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_name`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_name`
--

LOCK TABLES `PhysicalEntity_2_name` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_reviewed`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_reviewed`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_reviewed` (
  `DB_ID` int(10) unsigned default NULL,
  `reviewed_rank` int(10) unsigned default NULL,
  `reviewed` int(10) unsigned default NULL,
  `reviewed_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reviewed` (`reviewed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_reviewed`
--

LOCK TABLES `PhysicalEntity_2_reviewed` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_reviewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_revised`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_revised`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_revised` (
  `DB_ID` int(10) unsigned default NULL,
  `revised_rank` int(10) unsigned default NULL,
  `revised` int(10) unsigned default NULL,
  `revised_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `revised` (`revised`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_revised`
--

LOCK TABLES `PhysicalEntity_2_revised` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_revised` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_revised` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhysicalEntity_2_summation`
--

DROP TABLE IF EXISTS `PhysicalEntity_2_summation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PhysicalEntity_2_summation` (
  `DB_ID` int(10) unsigned default NULL,
  `summation_rank` int(10) unsigned default NULL,
  `summation` int(10) unsigned default NULL,
  `summation_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `summation` (`summation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PhysicalEntity_2_summation`
--

LOCK TABLES `PhysicalEntity_2_summation` WRITE;
/*!40000 ALTER TABLE `PhysicalEntity_2_summation` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhysicalEntity_2_summation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Polymer`
--

DROP TABLE IF EXISTS `Polymer`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Polymer` (
  `DB_ID` int(10) unsigned NOT NULL,
  `maxUnitCount` int(10) default NULL,
  `minUnitCount` int(10) default NULL,
  `totalProt` text,
  `maxHomologues` text,
  `inferredProt` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `maxUnitCount` (`maxUnitCount`),
  KEY `minUnitCount` (`minUnitCount`),
  FULLTEXT KEY `totalProt` (`totalProt`),
  FULLTEXT KEY `maxHomologues` (`maxHomologues`),
  FULLTEXT KEY `inferredProt` (`inferredProt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Polymer`
--

LOCK TABLES `Polymer` WRITE;
/*!40000 ALTER TABLE `Polymer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Polymer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Polymer_2_repeatedUnit`
--

DROP TABLE IF EXISTS `Polymer_2_repeatedUnit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Polymer_2_repeatedUnit` (
  `DB_ID` int(10) unsigned default NULL,
  `repeatedUnit_rank` int(10) unsigned default NULL,
  `repeatedUnit` int(10) unsigned default NULL,
  `repeatedUnit_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `repeatedUnit` (`repeatedUnit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Polymer_2_repeatedUnit`
--

LOCK TABLES `Polymer_2_repeatedUnit` WRITE;
/*!40000 ALTER TABLE `Polymer_2_repeatedUnit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Polymer_2_repeatedUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Polymer_2_species`
--

DROP TABLE IF EXISTS `Polymer_2_species`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Polymer_2_species` (
  `DB_ID` int(10) unsigned default NULL,
  `species_rank` int(10) unsigned default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Polymer_2_species`
--

LOCK TABLES `Polymer_2_species` WRITE;
/*!40000 ALTER TABLE `Polymer_2_species` DISABLE KEYS */;
/*!40000 ALTER TABLE `Polymer_2_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Polymerisation`
--

DROP TABLE IF EXISTS `Polymerisation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Polymerisation` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Polymerisation`
--

LOCK TABLES `Polymerisation` WRITE;
/*!40000 ALTER TABLE `Polymerisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Polymerisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PositiveRegulation`
--

DROP TABLE IF EXISTS `PositiveRegulation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PositiveRegulation` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PositiveRegulation`
--

LOCK TABLES `PositiveRegulation` WRITE;
/*!40000 ALTER TABLE `PositiveRegulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `PositiveRegulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PsiMod`
--

DROP TABLE IF EXISTS `PsiMod`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PsiMod` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PsiMod`
--

LOCK TABLES `PsiMod` WRITE;
/*!40000 ALTER TABLE `PsiMod` DISABLE KEYS */;
/*!40000 ALTER TABLE `PsiMod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publication`
--

DROP TABLE IF EXISTS `Publication`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Publication` (
  `DB_ID` int(10) unsigned NOT NULL,
  `title` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Publication`
--

LOCK TABLES `Publication` WRITE;
/*!40000 ALTER TABLE `Publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `Publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publication_2_author`
--

DROP TABLE IF EXISTS `Publication_2_author`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Publication_2_author` (
  `DB_ID` int(10) unsigned default NULL,
  `author_rank` int(10) unsigned default NULL,
  `author` int(10) unsigned default NULL,
  `author_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Publication_2_author`
--

LOCK TABLES `Publication_2_author` WRITE;
/*!40000 ALTER TABLE `Publication_2_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `Publication_2_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reaction`
--

DROP TABLE IF EXISTS `Reaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Reaction` (
  `DB_ID` int(10) unsigned NOT NULL,
  `reverseReaction` int(10) unsigned default NULL,
  `reverseReaction_class` varchar(64) default NULL,
  `totalProt` text,
  `maxHomologues` text,
  `inferredProt` text,
  PRIMARY KEY  (`DB_ID`),
  KEY `reverseReaction` (`reverseReaction`),
  FULLTEXT KEY `totalProt` (`totalProt`),
  FULLTEXT KEY `maxHomologues` (`maxHomologues`),
  FULLTEXT KEY `inferredProt` (`inferredProt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Reaction`
--

LOCK TABLES `Reaction` WRITE;
/*!40000 ALTER TABLE `Reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionCoordinates`
--

DROP TABLE IF EXISTS `ReactionCoordinates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionCoordinates` (
  `DB_ID` int(10) unsigned NOT NULL,
  `locatedEvent` int(10) unsigned default NULL,
  `locatedEvent_class` varchar(64) default NULL,
  `locationContext` int(10) unsigned default NULL,
  `locationContext_class` varchar(64) default NULL,
  `sourceX` int(10) default NULL,
  `sourceY` int(10) default NULL,
  `targetX` int(10) default NULL,
  `targetY` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `locatedEvent` (`locatedEvent`),
  KEY `locationContext` (`locationContext`),
  KEY `sourceX` (`sourceX`),
  KEY `sourceY` (`sourceY`),
  KEY `targetX` (`targetX`),
  KEY `targetY` (`targetY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionCoordinates`
--

LOCK TABLES `ReactionCoordinates` WRITE;
/*!40000 ALTER TABLE `ReactionCoordinates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionCoordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionVertex`
--

DROP TABLE IF EXISTS `ReactionVertex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionVertex` (
  `DB_ID` int(10) unsigned NOT NULL,
  `pointCoordinates` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `pointCoordinates` (`pointCoordinates`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionVertex`
--

LOCK TABLES `ReactionVertex` WRITE;
/*!40000 ALTER TABLE `ReactionVertex` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionVertex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent`
--

DROP TABLE IF EXISTS `ReactionlikeEvent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent` (
  `DB_ID` int(10) unsigned NOT NULL,
  `isChimeric` enum('TRUE','FALSE') default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `isChimeric` (`isChimeric`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent`
--

LOCK TABLES `ReactionlikeEvent` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_catalystActivity`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_catalystActivity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_catalystActivity` (
  `DB_ID` int(10) unsigned default NULL,
  `catalystActivity_rank` int(10) unsigned default NULL,
  `catalystActivity` int(10) unsigned default NULL,
  `catalystActivity_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `catalystActivity` (`catalystActivity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_catalystActivity`
--

LOCK TABLES `ReactionlikeEvent_2_catalystActivity` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_catalystActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_catalystActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_entityFunctionalStatus`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_entityFunctionalStatus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_entityFunctionalStatus` (
  `DB_ID` int(10) unsigned default NULL,
  `entityFunctionalStatus_rank` int(10) unsigned default NULL,
  `entityFunctionalStatus` int(10) unsigned default NULL,
  `entityFunctionalStatus_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityFunctionalStatus` (`entityFunctionalStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_entityFunctionalStatus`
--

LOCK TABLES `ReactionlikeEvent_2_entityFunctionalStatus` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_entityFunctionalStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_entityFunctionalStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_entityOnOtherCell`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_entityOnOtherCell`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_entityOnOtherCell` (
  `DB_ID` int(10) unsigned default NULL,
  `entityOnOtherCell_rank` int(10) unsigned default NULL,
  `entityOnOtherCell` int(10) unsigned default NULL,
  `entityOnOtherCell_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `entityOnOtherCell` (`entityOnOtherCell`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_entityOnOtherCell`
--

LOCK TABLES `ReactionlikeEvent_2_entityOnOtherCell` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_entityOnOtherCell` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_entityOnOtherCell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_input`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_input`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_input` (
  `DB_ID` int(10) unsigned default NULL,
  `input_rank` int(10) unsigned default NULL,
  `input` int(10) unsigned default NULL,
  `input_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `input` (`input`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_input`
--

LOCK TABLES `ReactionlikeEvent_2_input` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_normalReaction`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_normalReaction`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_normalReaction` (
  `DB_ID` int(10) unsigned default NULL,
  `normalReaction_rank` int(10) unsigned default NULL,
  `normalReaction` int(10) unsigned default NULL,
  `normalReaction_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `normalReaction` (`normalReaction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_normalReaction`
--

LOCK TABLES `ReactionlikeEvent_2_normalReaction` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_normalReaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_normalReaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_output`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_output`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_output` (
  `DB_ID` int(10) unsigned default NULL,
  `output_rank` int(10) unsigned default NULL,
  `output` int(10) unsigned default NULL,
  `output_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `output` (`output`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_output`
--

LOCK TABLES `ReactionlikeEvent_2_output` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReactionlikeEvent_2_requiredInputComponent`
--

DROP TABLE IF EXISTS `ReactionlikeEvent_2_requiredInputComponent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReactionlikeEvent_2_requiredInputComponent` (
  `DB_ID` int(10) unsigned default NULL,
  `requiredInputComponent_rank` int(10) unsigned default NULL,
  `requiredInputComponent` int(10) unsigned default NULL,
  `requiredInputComponent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `requiredInputComponent` (`requiredInputComponent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReactionlikeEvent_2_requiredInputComponent`
--

LOCK TABLES `ReactionlikeEvent_2_requiredInputComponent` WRITE;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_requiredInputComponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReactionlikeEvent_2_requiredInputComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceDNASequence`
--

DROP TABLE IF EXISTS `ReferenceDNASequence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceDNASequence` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceDNASequence`
--

LOCK TABLES `ReferenceDNASequence` WRITE;
/*!40000 ALTER TABLE `ReferenceDNASequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceDNASequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceDatabase`
--

DROP TABLE IF EXISTS `ReferenceDatabase`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceDatabase` (
  `DB_ID` int(10) unsigned NOT NULL,
  `accessUrl` text,
  `url` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `accessUrl` (`accessUrl`),
  FULLTEXT KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceDatabase`
--

LOCK TABLES `ReferenceDatabase` WRITE;
/*!40000 ALTER TABLE `ReferenceDatabase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceDatabase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceDatabase_2_name`
--

DROP TABLE IF EXISTS `ReferenceDatabase_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceDatabase_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceDatabase_2_name`
--

LOCK TABLES `ReferenceDatabase_2_name` WRITE;
/*!40000 ALTER TABLE `ReferenceDatabase_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceDatabase_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceEntity`
--

DROP TABLE IF EXISTS `ReferenceEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceEntity` (
  `DB_ID` int(10) unsigned NOT NULL,
  `identifier` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `identifier` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceEntity`
--

LOCK TABLES `ReferenceEntity` WRITE;
/*!40000 ALTER TABLE `ReferenceEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceEntity_2_crossReference`
--

DROP TABLE IF EXISTS `ReferenceEntity_2_crossReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceEntity_2_crossReference` (
  `DB_ID` int(10) unsigned default NULL,
  `crossReference_rank` int(10) unsigned default NULL,
  `crossReference` int(10) unsigned default NULL,
  `crossReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceEntity_2_crossReference`
--

LOCK TABLES `ReferenceEntity_2_crossReference` WRITE;
/*!40000 ALTER TABLE `ReferenceEntity_2_crossReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceEntity_2_crossReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceEntity_2_name`
--

DROP TABLE IF EXISTS `ReferenceEntity_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceEntity_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceEntity_2_name`
--

LOCK TABLES `ReferenceEntity_2_name` WRITE;
/*!40000 ALTER TABLE `ReferenceEntity_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceEntity_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceEntity_2_otherIdentifier`
--

DROP TABLE IF EXISTS `ReferenceEntity_2_otherIdentifier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceEntity_2_otherIdentifier` (
  `DB_ID` int(10) unsigned default NULL,
  `otherIdentifier_rank` int(10) unsigned default NULL,
  `otherIdentifier` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `otherIdentifier` (`otherIdentifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceEntity_2_otherIdentifier`
--

LOCK TABLES `ReferenceEntity_2_otherIdentifier` WRITE;
/*!40000 ALTER TABLE `ReferenceEntity_2_otherIdentifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceEntity_2_otherIdentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceGeneProduct`
--

DROP TABLE IF EXISTS `ReferenceGeneProduct`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceGeneProduct` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceGeneProduct`
--

LOCK TABLES `ReferenceGeneProduct` WRITE;
/*!40000 ALTER TABLE `ReferenceGeneProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceGeneProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceGeneProduct_2_referenceGene`
--

DROP TABLE IF EXISTS `ReferenceGeneProduct_2_referenceGene`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceGeneProduct_2_referenceGene` (
  `DB_ID` int(10) unsigned default NULL,
  `referenceGene_rank` int(10) unsigned default NULL,
  `referenceGene` int(10) unsigned default NULL,
  `referenceGene_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceGene` (`referenceGene`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceGeneProduct_2_referenceGene`
--

LOCK TABLES `ReferenceGeneProduct_2_referenceGene` WRITE;
/*!40000 ALTER TABLE `ReferenceGeneProduct_2_referenceGene` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceGeneProduct_2_referenceGene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceGeneProduct_2_referenceTranscript`
--

DROP TABLE IF EXISTS `ReferenceGeneProduct_2_referenceTranscript`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceGeneProduct_2_referenceTranscript` (
  `DB_ID` int(10) unsigned default NULL,
  `referenceTranscript_rank` int(10) unsigned default NULL,
  `referenceTranscript` int(10) unsigned default NULL,
  `referenceTranscript_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceTranscript` (`referenceTranscript`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceGeneProduct_2_referenceTranscript`
--

LOCK TABLES `ReferenceGeneProduct_2_referenceTranscript` WRITE;
/*!40000 ALTER TABLE `ReferenceGeneProduct_2_referenceTranscript` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceGeneProduct_2_referenceTranscript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceGroup`
--

DROP TABLE IF EXISTS `ReferenceGroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceGroup` (
  `DB_ID` int(10) unsigned NOT NULL,
  `atomicConnectivity` text,
  `formula` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `atomicConnectivity` (`atomicConnectivity`),
  FULLTEXT KEY `formula` (`formula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceGroup`
--

LOCK TABLES `ReferenceGroup` WRITE;
/*!40000 ALTER TABLE `ReferenceGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceIsoform`
--

DROP TABLE IF EXISTS `ReferenceIsoform`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceIsoform` (
  `DB_ID` int(10) unsigned NOT NULL,
  `variantIdentifier` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `variantIdentifier` (`variantIdentifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceIsoform`
--

LOCK TABLES `ReferenceIsoform` WRITE;
/*!40000 ALTER TABLE `ReferenceIsoform` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceIsoform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceIsoform_2_isoformParent`
--

DROP TABLE IF EXISTS `ReferenceIsoform_2_isoformParent`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceIsoform_2_isoformParent` (
  `DB_ID` int(10) unsigned default NULL,
  `isoformParent_rank` int(10) unsigned default NULL,
  `isoformParent` int(10) unsigned default NULL,
  `isoformParent_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `isoformParent` (`isoformParent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceIsoform_2_isoformParent`
--

LOCK TABLES `ReferenceIsoform_2_isoformParent` WRITE;
/*!40000 ALTER TABLE `ReferenceIsoform_2_isoformParent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceIsoform_2_isoformParent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceMolecule`
--

DROP TABLE IF EXISTS `ReferenceMolecule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceMolecule` (
  `DB_ID` int(10) unsigned NOT NULL,
  `atomicConnectivity` text,
  `formula` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `atomicConnectivity` (`atomicConnectivity`),
  FULLTEXT KEY `formula` (`formula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceMolecule`
--

LOCK TABLES `ReferenceMolecule` WRITE;
/*!40000 ALTER TABLE `ReferenceMolecule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceMolecule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceRNASequence`
--

DROP TABLE IF EXISTS `ReferenceRNASequence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceRNASequence` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceRNASequence`
--

LOCK TABLES `ReferenceRNASequence` WRITE;
/*!40000 ALTER TABLE `ReferenceRNASequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceRNASequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceRNASequence_2_referenceGene`
--

DROP TABLE IF EXISTS `ReferenceRNASequence_2_referenceGene`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceRNASequence_2_referenceGene` (
  `DB_ID` int(10) unsigned default NULL,
  `referenceGene_rank` int(10) unsigned default NULL,
  `referenceGene` int(10) unsigned default NULL,
  `referenceGene_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceGene` (`referenceGene`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceRNASequence_2_referenceGene`
--

LOCK TABLES `ReferenceRNASequence_2_referenceGene` WRITE;
/*!40000 ALTER TABLE `ReferenceRNASequence_2_referenceGene` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceRNASequence_2_referenceGene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence`
--

DROP TABLE IF EXISTS `ReferenceSequence`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence` (
  `DB_ID` int(10) unsigned NOT NULL,
  `checksum` text,
  `isSequenceChanged` text,
  `sequenceLength` int(10) default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `sequenceLength` (`sequenceLength`),
  KEY `species` (`species`),
  FULLTEXT KEY `checksum` (`checksum`),
  FULLTEXT KEY `isSequenceChanged` (`isSequenceChanged`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence`
--

LOCK TABLES `ReferenceSequence` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence_2_comment`
--

DROP TABLE IF EXISTS `ReferenceSequence_2_comment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence_2_comment` (
  `DB_ID` int(10) unsigned default NULL,
  `comment_rank` int(10) unsigned default NULL,
  `comment` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `comment` (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence_2_comment`
--

LOCK TABLES `ReferenceSequence_2_comment` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence_2_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence_2_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence_2_description`
--

DROP TABLE IF EXISTS `ReferenceSequence_2_description`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence_2_description` (
  `DB_ID` int(10) unsigned default NULL,
  `description_rank` int(10) unsigned default NULL,
  `description` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence_2_description`
--

LOCK TABLES `ReferenceSequence_2_description` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence_2_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence_2_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence_2_geneName`
--

DROP TABLE IF EXISTS `ReferenceSequence_2_geneName`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence_2_geneName` (
  `DB_ID` int(10) unsigned default NULL,
  `geneName_rank` int(10) unsigned default NULL,
  `geneName` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `geneName` (`geneName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence_2_geneName`
--

LOCK TABLES `ReferenceSequence_2_geneName` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence_2_geneName` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence_2_geneName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence_2_keyword`
--

DROP TABLE IF EXISTS `ReferenceSequence_2_keyword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence_2_keyword` (
  `DB_ID` int(10) unsigned default NULL,
  `keyword_rank` int(10) unsigned default NULL,
  `keyword` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence_2_keyword`
--

LOCK TABLES `ReferenceSequence_2_keyword` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence_2_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence_2_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSequence_2_secondaryIdentifier`
--

DROP TABLE IF EXISTS `ReferenceSequence_2_secondaryIdentifier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReferenceSequence_2_secondaryIdentifier` (
  `DB_ID` int(10) unsigned default NULL,
  `secondaryIdentifier_rank` int(10) unsigned default NULL,
  `secondaryIdentifier` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `secondaryIdentifier` (`secondaryIdentifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReferenceSequence_2_secondaryIdentifier`
--

LOCK TABLES `ReferenceSequence_2_secondaryIdentifier` WRITE;
/*!40000 ALTER TABLE `ReferenceSequence_2_secondaryIdentifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSequence_2_secondaryIdentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation`
--

DROP TABLE IF EXISTS `Regulation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation` (
  `DB_ID` int(10) unsigned NOT NULL,
  `authored` int(10) unsigned default NULL,
  `authored_class` varchar(64) default NULL,
  `regulatedEntity` int(10) unsigned default NULL,
  `regulatedEntity_class` varchar(64) default NULL,
  `regulationType` int(10) unsigned default NULL,
  `regulationType_class` varchar(64) default NULL,
  `regulator` int(10) unsigned default NULL,
  `regulator_class` varchar(64) default NULL,
  `releaseDate` date default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `authored` (`authored`),
  KEY `regulatedEntity` (`regulatedEntity`),
  KEY `regulationType` (`regulationType`),
  KEY `regulator` (`regulator`),
  KEY `releaseDate` (`releaseDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation`
--

LOCK TABLES `Regulation` WRITE;
/*!40000 ALTER TABLE `Regulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegulationType`
--

DROP TABLE IF EXISTS `RegulationType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RegulationType` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RegulationType`
--

LOCK TABLES `RegulationType` WRITE;
/*!40000 ALTER TABLE `RegulationType` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegulationType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegulationType_2_instanceOf`
--

DROP TABLE IF EXISTS `RegulationType_2_instanceOf`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RegulationType_2_instanceOf` (
  `DB_ID` int(10) unsigned default NULL,
  `instanceOf_rank` int(10) unsigned default NULL,
  `instanceOf` int(10) unsigned default NULL,
  `instanceOf_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `instanceOf` (`instanceOf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RegulationType_2_instanceOf`
--

LOCK TABLES `RegulationType_2_instanceOf` WRITE;
/*!40000 ALTER TABLE `RegulationType_2_instanceOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegulationType_2_instanceOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegulationType_2_name`
--

DROP TABLE IF EXISTS `RegulationType_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RegulationType_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` varchar(255) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`),
  FULLTEXT KEY `name_fulltext` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RegulationType_2_name`
--

LOCK TABLES `RegulationType_2_name` WRITE;
/*!40000 ALTER TABLE `RegulationType_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegulationType_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_edited`
--

DROP TABLE IF EXISTS `Regulation_2_edited`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_edited` (
  `DB_ID` int(10) unsigned default NULL,
  `edited_rank` int(10) unsigned default NULL,
  `edited` int(10) unsigned default NULL,
  `edited_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `edited` (`edited`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_edited`
--

LOCK TABLES `Regulation_2_edited` WRITE;
/*!40000 ALTER TABLE `Regulation_2_edited` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_edited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_figure`
--

DROP TABLE IF EXISTS `Regulation_2_figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_figure` (
  `DB_ID` int(10) unsigned default NULL,
  `figure_rank` int(10) unsigned default NULL,
  `figure` int(10) unsigned default NULL,
  `figure_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_figure`
--

LOCK TABLES `Regulation_2_figure` WRITE;
/*!40000 ALTER TABLE `Regulation_2_figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_literatureReference`
--

DROP TABLE IF EXISTS `Regulation_2_literatureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_literatureReference` (
  `DB_ID` int(10) unsigned default NULL,
  `literatureReference_rank` int(10) unsigned default NULL,
  `literatureReference` int(10) unsigned default NULL,
  `literatureReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_literatureReference`
--

LOCK TABLES `Regulation_2_literatureReference` WRITE;
/*!40000 ALTER TABLE `Regulation_2_literatureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_literatureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_name`
--

DROP TABLE IF EXISTS `Regulation_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_name`
--

LOCK TABLES `Regulation_2_name` WRITE;
/*!40000 ALTER TABLE `Regulation_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_reviewed`
--

DROP TABLE IF EXISTS `Regulation_2_reviewed`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_reviewed` (
  `DB_ID` int(10) unsigned default NULL,
  `reviewed_rank` int(10) unsigned default NULL,
  `reviewed` int(10) unsigned default NULL,
  `reviewed_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `reviewed` (`reviewed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_reviewed`
--

LOCK TABLES `Regulation_2_reviewed` WRITE;
/*!40000 ALTER TABLE `Regulation_2_reviewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_revised`
--

DROP TABLE IF EXISTS `Regulation_2_revised`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_revised` (
  `DB_ID` int(10) unsigned default NULL,
  `revised_rank` int(10) unsigned default NULL,
  `revised` int(10) unsigned default NULL,
  `revised_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `revised` (`revised`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_revised`
--

LOCK TABLES `Regulation_2_revised` WRITE;
/*!40000 ALTER TABLE `Regulation_2_revised` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_revised` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regulation_2_summation`
--

DROP TABLE IF EXISTS `Regulation_2_summation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Regulation_2_summation` (
  `DB_ID` int(10) unsigned default NULL,
  `summation_rank` int(10) unsigned default NULL,
  `summation` int(10) unsigned default NULL,
  `summation_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `summation` (`summation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Regulation_2_summation`
--

LOCK TABLES `Regulation_2_summation` WRITE;
/*!40000 ALTER TABLE `Regulation_2_summation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regulation_2_summation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReplacedResidue`
--

DROP TABLE IF EXISTS `ReplacedResidue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReplacedResidue` (
  `DB_ID` int(10) unsigned NOT NULL,
  `coordinate` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `coordinate` (`coordinate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReplacedResidue`
--

LOCK TABLES `ReplacedResidue` WRITE;
/*!40000 ALTER TABLE `ReplacedResidue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReplacedResidue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReplacedResidue_2_psiMod`
--

DROP TABLE IF EXISTS `ReplacedResidue_2_psiMod`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ReplacedResidue_2_psiMod` (
  `DB_ID` int(10) unsigned default NULL,
  `psiMod_rank` int(10) unsigned default NULL,
  `psiMod` int(10) unsigned default NULL,
  `psiMod_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `psiMod` (`psiMod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ReplacedResidue_2_psiMod`
--

LOCK TABLES `ReplacedResidue_2_psiMod` WRITE;
/*!40000 ALTER TABLE `ReplacedResidue_2_psiMod` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReplacedResidue_2_psiMod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requirement`
--

DROP TABLE IF EXISTS `Requirement`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Requirement` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Requirement`
--

LOCK TABLES `Requirement` WRITE;
/*!40000 ALTER TABLE `Requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `Requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequenceDomain`
--

DROP TABLE IF EXISTS `SequenceDomain`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SequenceDomain` (
  `DB_ID` int(10) unsigned NOT NULL,
  `endCoordinate` int(10) default NULL,
  `referenceEntity` int(10) unsigned default NULL,
  `referenceEntity_class` varchar(64) default NULL,
  `startCoordinate` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `endCoordinate` (`endCoordinate`),
  KEY `referenceEntity` (`referenceEntity`),
  KEY `startCoordinate` (`startCoordinate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SequenceDomain`
--

LOCK TABLES `SequenceDomain` WRITE;
/*!40000 ALTER TABLE `SequenceDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `SequenceDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequenceOntology`
--

DROP TABLE IF EXISTS `SequenceOntology`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SequenceOntology` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SequenceOntology`
--

LOCK TABLES `SequenceOntology` WRITE;
/*!40000 ALTER TABLE `SequenceOntology` DISABLE KEYS */;
/*!40000 ALTER TABLE `SequenceOntology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SimpleEntity`
--

DROP TABLE IF EXISTS `SimpleEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SimpleEntity` (
  `DB_ID` int(10) unsigned NOT NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `species` (`species`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SimpleEntity`
--

LOCK TABLES `SimpleEntity` WRITE;
/*!40000 ALTER TABLE `SimpleEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `SimpleEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SimpleEntity_2_referenceEntity`
--

DROP TABLE IF EXISTS `SimpleEntity_2_referenceEntity`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SimpleEntity_2_referenceEntity` (
  `DB_ID` int(10) unsigned default NULL,
  `referenceEntity_rank` int(10) unsigned default NULL,
  `referenceEntity` int(10) unsigned default NULL,
  `referenceEntity_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `referenceEntity` (`referenceEntity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SimpleEntity_2_referenceEntity`
--

LOCK TABLES `SimpleEntity_2_referenceEntity` WRITE;
/*!40000 ALTER TABLE `SimpleEntity_2_referenceEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `SimpleEntity_2_referenceEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Species`
--

DROP TABLE IF EXISTS `Species`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Species` (
  `DB_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`DB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Species`
--

LOCK TABLES `Species` WRITE;
/*!40000 ALTER TABLE `Species` DISABLE KEYS */;
/*!40000 ALTER TABLE `Species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Species_2_figure`
--

DROP TABLE IF EXISTS `Species_2_figure`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Species_2_figure` (
  `DB_ID` int(10) unsigned default NULL,
  `figure_rank` int(10) unsigned default NULL,
  `figure` int(10) unsigned default NULL,
  `figure_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `figure` (`figure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Species_2_figure`
--

LOCK TABLES `Species_2_figure` WRITE;
/*!40000 ALTER TABLE `Species_2_figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Species_2_figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StableIdentifier`
--

DROP TABLE IF EXISTS `StableIdentifier`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `StableIdentifier` (
  `DB_ID` int(10) unsigned NOT NULL,
  `identifier` text,
  `identifierVersion` text,
  `referenceDatabase` int(10) unsigned default NULL,
  `referenceDatabase_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `referenceDatabase` (`referenceDatabase`),
  FULLTEXT KEY `identifier` (`identifier`),
  FULLTEXT KEY `identifierVersion` (`identifierVersion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `StableIdentifier`
--

LOCK TABLES `StableIdentifier` WRITE;
/*!40000 ALTER TABLE `StableIdentifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `StableIdentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Summation`
--

DROP TABLE IF EXISTS `Summation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Summation` (
  `DB_ID` int(10) unsigned NOT NULL,
  `text` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Summation`
--

LOCK TABLES `Summation` WRITE;
/*!40000 ALTER TABLE `Summation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Summation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Summation_2_literatureReference`
--

DROP TABLE IF EXISTS `Summation_2_literatureReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Summation_2_literatureReference` (
  `DB_ID` int(10) unsigned default NULL,
  `literatureReference_rank` int(10) unsigned default NULL,
  `literatureReference` int(10) unsigned default NULL,
  `literatureReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `literatureReference` (`literatureReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Summation_2_literatureReference`
--

LOCK TABLES `Summation_2_literatureReference` WRITE;
/*!40000 ALTER TABLE `Summation_2_literatureReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Summation_2_literatureReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxon`
--

DROP TABLE IF EXISTS `Taxon`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Taxon` (
  `DB_ID` int(10) unsigned NOT NULL,
  `superTaxon` int(10) unsigned default NULL,
  `superTaxon_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `superTaxon` (`superTaxon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Taxon`
--

LOCK TABLES `Taxon` WRITE;
/*!40000 ALTER TABLE `Taxon` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxon_2_crossReference`
--

DROP TABLE IF EXISTS `Taxon_2_crossReference`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Taxon_2_crossReference` (
  `DB_ID` int(10) unsigned default NULL,
  `crossReference_rank` int(10) unsigned default NULL,
  `crossReference` int(10) unsigned default NULL,
  `crossReference_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `crossReference` (`crossReference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Taxon_2_crossReference`
--

LOCK TABLES `Taxon_2_crossReference` WRITE;
/*!40000 ALTER TABLE `Taxon_2_crossReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxon_2_crossReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxon_2_name`
--

DROP TABLE IF EXISTS `Taxon_2_name`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Taxon_2_name` (
  `DB_ID` int(10) unsigned default NULL,
  `name_rank` int(10) unsigned default NULL,
  `name` varchar(255) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `name` (`name`),
  FULLTEXT KEY `name_fulltext` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Taxon_2_name`
--

LOCK TABLES `Taxon_2_name` WRITE;
/*!40000 ALTER TABLE `Taxon_2_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxon_2_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TranslationalModification`
--

DROP TABLE IF EXISTS `TranslationalModification`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `TranslationalModification` (
  `DB_ID` int(10) unsigned NOT NULL,
  `coordinate` int(10) default NULL,
  `psiMod` int(10) unsigned default NULL,
  `psiMod_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `coordinate` (`coordinate`),
  KEY `psiMod` (`psiMod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `TranslationalModification`
--

LOCK TABLES `TranslationalModification` WRITE;
/*!40000 ALTER TABLE `TranslationalModification` DISABLE KEYS */;
/*!40000 ALTER TABLE `TranslationalModification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `URL`
--

DROP TABLE IF EXISTS `URL`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `URL` (
  `DB_ID` int(10) unsigned NOT NULL,
  `uniformResourceLocator` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `uniformResourceLocator` (`uniformResourceLocator`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `URL`
--

LOCK TABLES `URL` WRITE;
/*!40000 ALTER TABLE `URL` DISABLE KEYS */;
/*!40000 ALTER TABLE `URL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vertex`
--

DROP TABLE IF EXISTS `Vertex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Vertex` (
  `DB_ID` int(10) unsigned NOT NULL,
  `height` int(10) default NULL,
  `pathwayDiagram` int(10) unsigned default NULL,
  `pathwayDiagram_class` varchar(64) default NULL,
  `representedInstance` int(10) unsigned default NULL,
  `representedInstance_class` varchar(64) default NULL,
  `width` int(10) default NULL,
  `x` int(10) default NULL,
  `y` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `height` (`height`),
  KEY `pathwayDiagram` (`pathwayDiagram`),
  KEY `representedInstance` (`representedInstance`),
  KEY `width` (`width`),
  KEY `x` (`x`),
  KEY `y` (`y`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Vertex`
--

LOCK TABLES `Vertex` WRITE;
/*!40000 ALTER TABLE `Vertex` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vertex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VertexSearchableTerm`
--

DROP TABLE IF EXISTS `VertexSearchableTerm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VertexSearchableTerm` (
  `DB_ID` int(10) unsigned NOT NULL,
  `providerCount` int(10) default NULL,
  `searchableTerm` varchar(255) default NULL,
  `species` int(10) unsigned default NULL,
  `species_class` varchar(64) default NULL,
  `vertexCount` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `providerCount` (`providerCount`),
  KEY `searchableTerm` (`searchableTerm`),
  KEY `species` (`species`),
  KEY `vertexCount` (`vertexCount`),
  FULLTEXT KEY `searchableTerm_fulltext` (`searchableTerm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VertexSearchableTerm`
--

LOCK TABLES `VertexSearchableTerm` WRITE;
/*!40000 ALTER TABLE `VertexSearchableTerm` DISABLE KEYS */;
/*!40000 ALTER TABLE `VertexSearchableTerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VertexSearchableTerm_2_termProvider`
--

DROP TABLE IF EXISTS `VertexSearchableTerm_2_termProvider`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VertexSearchableTerm_2_termProvider` (
  `DB_ID` int(10) unsigned default NULL,
  `termProvider_rank` int(10) unsigned default NULL,
  `termProvider` int(10) unsigned default NULL,
  `termProvider_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `termProvider` (`termProvider`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VertexSearchableTerm_2_termProvider`
--

LOCK TABLES `VertexSearchableTerm_2_termProvider` WRITE;
/*!40000 ALTER TABLE `VertexSearchableTerm_2_termProvider` DISABLE KEYS */;
/*!40000 ALTER TABLE `VertexSearchableTerm_2_termProvider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VertexSearchableTerm_2_vertex`
--

DROP TABLE IF EXISTS `VertexSearchableTerm_2_vertex`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VertexSearchableTerm_2_vertex` (
  `DB_ID` int(10) unsigned default NULL,
  `vertex_rank` int(10) unsigned default NULL,
  `vertex` int(10) unsigned default NULL,
  `vertex_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `vertex` (`vertex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VertexSearchableTerm_2_vertex`
--

LOCK TABLES `VertexSearchableTerm_2_vertex` WRITE;
/*!40000 ALTER TABLE `VertexSearchableTerm_2_vertex` DISABLE KEYS */;
/*!40000 ALTER TABLE `VertexSearchableTerm_2_vertex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_AttributeValueBeforeChange`
--

DROP TABLE IF EXISTS `_AttributeValueBeforeChange`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_AttributeValueBeforeChange` (
  `DB_ID` int(10) unsigned NOT NULL,
  `changedAttribute` text,
  PRIMARY KEY  (`DB_ID`),
  FULLTEXT KEY `changedAttribute` (`changedAttribute`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_AttributeValueBeforeChange`
--

LOCK TABLES `_AttributeValueBeforeChange` WRITE;
/*!40000 ALTER TABLE `_AttributeValueBeforeChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `_AttributeValueBeforeChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_AttributeValueBeforeChange_2_previousValue`
--

DROP TABLE IF EXISTS `_AttributeValueBeforeChange_2_previousValue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_AttributeValueBeforeChange_2_previousValue` (
  `DB_ID` int(10) unsigned default NULL,
  `previousValue_rank` int(10) unsigned default NULL,
  `previousValue` text,
  KEY `DB_ID` (`DB_ID`),
  FULLTEXT KEY `previousValue` (`previousValue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_AttributeValueBeforeChange_2_previousValue`
--

LOCK TABLES `_AttributeValueBeforeChange_2_previousValue` WRITE;
/*!40000 ALTER TABLE `_AttributeValueBeforeChange_2_previousValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `_AttributeValueBeforeChange_2_previousValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_Deleted`
--

DROP TABLE IF EXISTS `_Deleted`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_Deleted` (
  `DB_ID` int(10) unsigned NOT NULL,
  `curatorComment` text,
  `reason` int(10) unsigned default NULL,
  `reason_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `reason` (`reason`),
  FULLTEXT KEY `curatorComment` (`curatorComment`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_Deleted`
--

LOCK TABLES `_Deleted` WRITE;
/*!40000 ALTER TABLE `_Deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `_Deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_Deleted_2_deletedInstanceDB_ID`
--

DROP TABLE IF EXISTS `_Deleted_2_deletedInstanceDB_ID`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_Deleted_2_deletedInstanceDB_ID` (
  `DB_ID` int(10) unsigned default NULL,
  `deletedInstanceDB_ID_rank` int(10) unsigned default NULL,
  `deletedInstanceDB_ID` int(10) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `deletedInstanceDB_ID` (`deletedInstanceDB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_Deleted_2_deletedInstanceDB_ID`
--

LOCK TABLES `_Deleted_2_deletedInstanceDB_ID` WRITE;
/*!40000 ALTER TABLE `_Deleted_2_deletedInstanceDB_ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `_Deleted_2_deletedInstanceDB_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_Deleted_2_replacementInstances`
--

DROP TABLE IF EXISTS `_Deleted_2_replacementInstances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_Deleted_2_replacementInstances` (
  `DB_ID` int(10) unsigned default NULL,
  `replacementInstances_rank` int(10) unsigned default NULL,
  `replacementInstances` int(10) unsigned default NULL,
  `replacementInstances_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `replacementInstances` (`replacementInstances`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_Deleted_2_replacementInstances`
--

LOCK TABLES `_Deleted_2_replacementInstances` WRITE;
/*!40000 ALTER TABLE `_Deleted_2_replacementInstances` DISABLE KEYS */;
/*!40000 ALTER TABLE `_Deleted_2_replacementInstances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_InstanceBeforeChange`
--

DROP TABLE IF EXISTS `_InstanceBeforeChange`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_InstanceBeforeChange` (
  `DB_ID` int(10) unsigned NOT NULL,
  `changedInstanceDB_ID` int(10) default NULL,
  `instanceEdit` int(10) unsigned default NULL,
  `instanceEdit_class` varchar(64) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `changedInstanceDB_ID` (`changedInstanceDB_ID`),
  KEY `instanceEdit` (`instanceEdit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_InstanceBeforeChange`
--

LOCK TABLES `_InstanceBeforeChange` WRITE;
/*!40000 ALTER TABLE `_InstanceBeforeChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `_InstanceBeforeChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_InstanceBeforeChange_2_attributeValuesBeforeChange`
--

DROP TABLE IF EXISTS `_InstanceBeforeChange_2_attributeValuesBeforeChange`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_InstanceBeforeChange_2_attributeValuesBeforeChange` (
  `DB_ID` int(10) unsigned default NULL,
  `attributeValuesBeforeChange_rank` int(10) unsigned default NULL,
  `attributeValuesBeforeChange` int(10) unsigned default NULL,
  `attributeValuesBeforeChange_class` varchar(64) default NULL,
  KEY `DB_ID` (`DB_ID`),
  KEY `attributeValuesBeforeChange` (`attributeValuesBeforeChange`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_InstanceBeforeChange_2_attributeValuesBeforeChange`
--

LOCK TABLES `_InstanceBeforeChange_2_attributeValuesBeforeChange` WRITE;
/*!40000 ALTER TABLE `_InstanceBeforeChange_2_attributeValuesBeforeChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `_InstanceBeforeChange_2_attributeValuesBeforeChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_Release`
--

DROP TABLE IF EXISTS `_Release`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `_Release` (
  `DB_ID` int(10) unsigned NOT NULL,
  `releaseDate` text,
  `releaseNumber` int(10) default NULL,
  PRIMARY KEY  (`DB_ID`),
  KEY `releaseNumber` (`releaseNumber`),
  FULLTEXT KEY `releaseDate` (`releaseDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `_Release`
--

LOCK TABLES `_Release` WRITE;
/*!40000 ALTER TABLE `_Release` DISABLE KEYS */;
/*!40000 ALTER TABLE `_Release` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-06 16:25:16
