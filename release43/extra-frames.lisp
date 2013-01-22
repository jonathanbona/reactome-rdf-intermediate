(in-package :cl-user)

;; an extra file of frames, manually created. Says Guanming:

;; Regarding other extra tables in our mysql database: DataModel is used
;; to store the actual data model by parsing the protege files. Ontology
;; is used to store a Perl serialized object for the data model, and
;; Parameters table used to store some analysis parameters during data
;; analysis for our web site.


(defvar *reactome-frames-43* (make-hash-table))

(defvar *this-readtable* (copy-readtable))
(setf (readtable-case *this-readtable*) :preserve)
(setq *readtable* *this-readtable*)

(DEFMACRO |defclass-frames| (name &BODY entries)
  `(PROGN
     (SETF (GETHASH ',name *REACTOME-FRAMES-43*) ',entries)
     ;; note that below is in addtion to what is done in the main file, since property definitions are generated from the defs on :CLIPS_TOP_LEVEL_SLOT_CLASS
     (SETF (GETHASH :CLIPS_TOP_LEVEL_SLOT_CLASS *REACTOME-FRAMES-43*) (APPEND (GETHASH :CLIPS_TOP_LEVEL_SLOT_CLASS *REACTOME-FRAMES-43*) (CDR ',entries)))))


;; DROP TABLE IF EXISTS `DataModel`;
;; /*!40101 SET @saved_cs_client     = @@character_set_client */;
;; /*!40101 SET character_set_client = utf8 */;
;; CREATE TABLE `DataModel` (
;;   `thing` varchar(255) NOT NULL,
;;   `thing_class` enum('SchemaClass','SchemaClassAttribute','Schema') DEFAULT NULL,
;;   `property_name` varchar(255) NOT NULL,
;;   `property_value` text,
;;   `property_value_type` enum('INTEGER','SYMBOL','STRING','INSTANCE','SchemaClass','SchemaClassAttribute') DEFAULT NULL,
;;   `property_value_rank` int(10) unsigned DEFAULT '0'
;; ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
;; /*!40101 SET character_set_client = @saved_cs_client */;

(defclass-frames DataModel "The instances of this class, together, are an encoding of the protege frames data model, each instance representing a class/property or a property/property-of-property pair"
	(is-a DatabaseObject)
	(single-slot thing
		(comment "Name of either a class, property or 'schema'(don't know what the last one is)")
		(type STRING)
		(cardinality 1 1)
		)
	(single-slot thing_class
		(comment "If SchemaClass, then it means this is a representation of a class, if SchemaClassAttribute then this is a representation of a property")
		(type STRING)
		(cardinality 0 1)
		(allowed-values SchemaClass SchemaClassAttribute Schema)
		)
	(single-slot property_name
		(comment "Name of a property relating this to something else")
		(type STRING)
		(cardinality 1 1)
		)
	(single-slot property_value
		(comment "relatum as string")
		(type STRING)
		(cardinality 0 1)
		)
	(single-slot property_value_type
		(comment "The type that the property_value should be interpreted as")
		(type STRING)
		(cardinality 0 1)
		(allowed-values INTEGER SYMBOL STRING INSTANCE SchemaClass SchemaClassAttribute)
		)
	(single-slot property_value_rank
		(comment "A value of 0-18. I don't know what this is used for")
		(type INTEGER)
		(cardinality 1 1)
		))
