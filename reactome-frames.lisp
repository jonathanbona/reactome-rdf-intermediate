(in-package :cl-user)
(defparameter *frames-classes* (make-hash-table))

(defvar *this-readtable* (copy-readtable))
(setf (readtable-case *this-readtable*) :preserve)
(setq *readtable* *this-readtable*)

(DEFMACRO |defclass-frames| (name &BODY entries)
  `(SETF (GETHASH ',name *FRAMES-CLASSES*) ',entries))
  
(defclass-frames :CLIPS_TOP_LEVEL_SLOT_CLASS
  (is-a USER)
  (role concrete)
  (single-slot modification
	       (type INSTANCE)
	       (allowed-classes SimpleEntity ReferenceGroup ReferenceMolecule)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot instanceEdit
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot previousValue
	     (type STRING)
	     (create-accessor read-write))
  (single-slot regulationType
	       (type INSTANCE)
	       (allowed-classes RegulationType)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot deletedInstanceDB_ID
	     (comment "Contains the DB_IDs of the instances that have been deleted")
	     (type INTEGER)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (single-slot sourceY
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (create-accessor read-write))
  (single-slot DB_ID
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot sequenceLength
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot hasSpecialisedForm
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot repeatedUnit
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (multislot affiliation
	     (type INSTANCE)
	     (allowed-classes Affiliation)
	     (create-accessor read-write))
  (single-slot stableIdentifier
	       (comment "Contains stable ID and version number")
	       (type INSTANCE)
	       (allowed-classes StableIdentifier)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot _doNotRelease
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot volume
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot endCoordinate
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot referenceTranscript
	     (type INSTANCE)
	     (allowed-classes ReferenceRNASequence)
	     (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot identityDefinedBy
	       (type SYMBOL)
	       (allowed-values ALL ANY none)
	       (cardinality 0 1)
	       (associated-facet _identityDefinedBy)
	       (create-accessor read-write))
  (single-slot eventLocationContext
	       (type INSTANCE)
	       (allowed-classes Pathway)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot ecNumber
	     (type STRING)
	     (create-accessor read-write))
  (multislot databaseIdentifier
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (create-accessor read-write))
  (multislot hasInstance
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot minUnitCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot firstname
	       (type STRING)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot journal
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot editor
	     (type INSTANCE)
	     (allowed-classes Person)
	     (create-accessor read-write))
  (single-slot title
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot author
	     (type INSTANCE)
	     (allowed-classes Person)
	     (create-accessor read-write))
  (single-slot attributeCategory
	       (type SYMBOL)
	       (allowed-values MANDATORY REQUIRED OPTIONAL NOMANUALEDIT)
	       (cardinality 0 1)
	       (associated-facet _attributeCategory)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (create-accessor read-write))
  (single-slot referenceGroup
	       (type INSTANCE)
	       (allowed-classes ReferenceGroup)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot referenceSequence
	       (type INSTANCE)
	       (allowed-classes ReferenceSequence)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (multislot secondaryIdentifier
	     (comment "This is for secondary/other identifiers WITHIN THE SAME DATABASE, e.g. secondary SPTREMBL accessions and SwissProt id. Use crossReference if the the identifier is from another db, e.g. for adding a RefSeq identifier to SPTREMBL SequenceDatabaseIdentifier.")
	     (type STRING)
	     (create-accessor read-write))
  (single-slot note
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot geneName
	     (comment "GN lines from sequence record.")
	     (type STRING)
	     (create-accessor read-write))
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot activeUnit
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot physicalEntity
	       (type INSTANCE)
	       (allowed-classes PhysicalEntity)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot locatedEvent
	       (type INSTANCE)
	       (allowed-classes Event)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot maxY
	       (type INTEGER)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (multislot reviewer
	     (type INSTANCE)
	     (allowed-classes Person)
	     (create-accessor read-write))
  (single-slot regulator
	       (type INSTANCE)
	       (allowed-classes)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot hasCandidate
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write))
  (single-slot sourceX
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write))
  (single-slot changedInstanceDB_ID
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot description
	     (comment "DE lines from sequence record")
	     (type STRING)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot frontPageItem
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (create-accessor read-write))
  (single-slot minY
	       (type INTEGER)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot dateAccepted
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot regulatedEntity
	       (type INSTANCE)
	       (allowed-classes Event CatalystActivity)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot changedInstance
	       (type INSTANCE)
	       (allowed-classes EvidenceType RegulationType Regulation DatabaseIdentifier GO_BiologicalProcess FrontPage CatalystActivity Taxon ModifiedResidue PhysicalEntity InstanceEdit Figure Person Summation LiteratureReference Affiliation ConcurrentEventSet Event ReferenceDatabase)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot __is_ghost
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot startCoordinate
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot year
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot address
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot pages
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot hasComponent
	     (type INSTANCE)
	     (allowed-classes :THING)
	     (create-accessor read-write))
  (single-slot activity
	       (type INSTANCE)
	       (allowed-classes GO_MolecularFunction)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot reason
	       (comment "Reason for an action, drawn from a limited controlled vocabulary of terms")
	       (type INSTANCE)
	       (allowed-classes ControlledVocabulary)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot initial
	       (type STRING)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (multislot hasModifiedResidue
	     (type INSTANCE)
	     (allowed-classes ModifiedResidue)
	     (create-accessor read-write))
  (multislot keyword
	     (comment "KW lines from SPTREMBL records")
	     (type STRING)
	     (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot locationContext
	       (type INSTANCE)
	       (allowed-classes Pathway)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot changedAttribute
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot concurrentEvents
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot reverseReaction
	       (type INSTANCE)
	       (allowed-classes Reaction)
	       (cardinality 0 1)
	       (inverse-slot reverseReaction)
	       (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot hasEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (single-slot accessUrl
	       (comment "Url for retrieving a record")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot _Protege_id
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot classDisplayName
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot maxUnitCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot slotDisplayName
	       (type STRING)
	       (cardinality 0 1)
	       (associated-facet _slotDisplayName)
	       (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot surname
	       (type STRING)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot identifierVersion
	       (comment "Version number for stable identifier")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot maxCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot creatingActivity
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (create-accessor read-write))
  (single-slot curatorComment
	       (comment "A free-text comment that the curator may optionally provide to add extra explanation")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot project
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot _doRelease
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot targetY
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot dateRevised
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot _displayName
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot pubMedIdentifier
	     (comment "PubMed ID")
	     (type INTEGER)
	     (create-accessor read-write))
  (single-slot superTaxon
	       (type INSTANCE)
	       (allowed-classes Taxon)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (create-accessor read-write))
  (single-slot taxon
	       (type INSTANCE)
	       (allowed-classes Species)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (inverse-slot orthologousEvent)
	     (create-accessor read-write))
  (multislot replacementInstances
	     (comment "The instance(s) (if any) that replace the deleted instance.  The allowed instance classes have been restricted to those for which stable IDs get generated.  If the classes for which stable IDs are generated is expanded, these need to be changed correspondingly.")
	     (type INSTANCE)
	     (allowed-classes Regulation Event PhysicalEntity)
	     (create-accessor read-write))
  (multislot attributeValuesBeforeChange
	     (type INSTANCE)
	     (allowed-classes _AttributeValueBeforeChange)
	     (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (create-accessor read-write))
  (multislot comment
	     (comment "CC lines from sequence record.")
	     (type STRING)
	     (create-accessor read-write))
  (multislot catalystActivity
	     (comment "roughly the same as EcoCyc's EnzymaticReaction")
	     (type INSTANCE)
	     (allowed-classes CatalystActivity)
	     (create-accessor read-write))
  (multislot referenceGene
	     (type INSTANCE)
	     (allowed-classes ReferenceDNASequence)
	     (create-accessor read-write))
  (single-slot targetX
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot residue
	       (comment "This is to hold the residue (like serine or tyrosine) which is modified. The value is instance of class ConcreteSimpleEntity, i.e. an instance representing serine. I know, this not exactly correct since free amino acid (nucleotide) is different from the one in the chain but it's still pretty good I think.")
	       (type INSTANCE)
	       (allowed-classes ReferenceGroup ReferenceMolecule)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (create-accessor read-write))
  (single-slot url
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot eMailAddress
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot _applyToAllEditedInstances
	       (comment "Set this attribute value to TRUE (by checking it) if you want to attch this InstanceEdit to all edited instances in your project.")
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot maxX
	       (type INTEGER)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (multislot referenceEntity
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (create-accessor read-write))
  (multislot focusEntity
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (single-slot coordinate
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot dateSubmitted
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot templateEvent
	       (type INSTANCE)
	       (allowed-classes Event)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot text
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot dateTime
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot minX
	       (type INTEGER)
	       (cardinality 1 1)
	       (create-accessor read-write))
  (single-slot databaseColumnSpecification
	       (type STRING)
	       (cardinality 0 1)
	       (associated-facet _databaseColumnSpecification)
	       (create-accessor read-write))
  (single-slot minCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot removingActivity
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write))
  (single-slot variantIdentifier
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot _1stAuthorSurname
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames :EXTENDED-CLASS
    (is-a :STANDARD-CLASS)
  (role concrete)
  (single-slot classDisplayName
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames :EXTENDED-SLOT
    (is-a :STANDARD-SLOT)
  (role concrete)
  (single-slot identityDefinedBy
	       (type SYMBOL)
	       (allowed-values ALL ANY none)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot slotDisplayName
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot attributeCategory
	       (type SYMBOL)
	       (allowed-values MANDATORY REQUIRED OPTIONAL NOMANUALEDIT)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot databaseColumnSpecification
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames DatabaseObject
    (is-a USER)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot __is_ghost
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "ENUM('TRUE')")
	       (create-accessor read-write))
  (single-slot _Protege_id
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "VARCHAR(255)")
	       (create-accessor read-write))
  (single-slot stableIdentifier
	       (comment "Contains stable ID and version number")
	       (type INSTANCE)
	       (allowed-classes StableIdentifier)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot _displayName
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot DB_ID
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames Event "Presents some sort of event, be it chemical reaction or some complex multistep process. The identity of direct instances of this class is defined by the values of name and txon attributes. Use this class to create a placeholder for a Reaction or Pathway to be fully defined later."
  (is-a DatabaseObject)
  (role abstract)
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot _doRelease
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "ENUM('TRUE','FALSE')")
	       (create-accessor read-write)))

(defclass-frames Pathway "Multi-step Event. Pathway is recursive, i.e. can contain other Pathways and hence should be handled with care to prevent cycles. Use sub-classes for creating appropriate instances. (The identity of a Pathway is defined by the component Events.)"
  (is-a Event)
  (role concrete)
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot hasEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy none)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames ReactionlikeEvent
    (is-a Event)
  (role abstract)
  (multislot catalystActivity
	     (comment "roughly the same as EcoCyc's EnzymaticReaction")
	     (type INSTANCE)
	     (allowed-classes CatalystActivity)
	     (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes ReactionlikeEvent)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write)))

(defclass-frames Reaction "Single-step Event. Use sub-classes for creating appropriate instances. (Identity of a Reaction is defined by its input, output and catalystActivity.)"
  (is-a ReactionlikeEvent)
  (role concrete)
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot reverseReaction
	       (type INSTANCE)
	       (allowed-classes Reaction)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot catalystActivity
	       (comment "roughly the same as EcoCyc's EnzymaticReaction")
	       (type INSTANCE)
	       (allowed-classes CatalystActivity)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy none)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes ReactionlikeEvent)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames BlackBoxEvent
    (is-a ReactionlikeEvent)
  (role concrete)
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot hasEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot catalystActivity
	     (comment "roughly the same as EcoCyc's EnzymaticReaction")
	     (type INSTANCE)
	     (allowed-classes CatalystActivity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot templateEvent
	       (type INSTANCE)
	       (allowed-classes Event)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write)))

(defclass-frames Polymerisation
    (is-a ReactionlikeEvent)
  (role concrete)
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot catalystActivity
	       (comment "roughly the same as EcoCyc's EnzymaticReaction")
	       (type INSTANCE)
	       (allowed-classes CatalystActivity)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames Depolymerisation
    (is-a ReactionlikeEvent)
  (role concrete)
  (multislot precedingEvent
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot orthologousEvent
	     (comment "Holds 'equivalent' Events in other organisms.")
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes Compartment)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot catalystActivity
	       (comment "roughly the same as EcoCyc's EnzymaticReaction")
	       (type INSTANCE)
	       (allowed-classes CatalystActivity)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot output
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot goBiologicalProcess
	       (comment "Fill it with GO biological process which is roughly equal to this GK Event. I.e. For \"Human S-phase\" it should be \"S-phase\" and not, say, \"Mitotic cell cycle\".")
	       (type INSTANCE)
	       (allowed-classes GO_BiologicalProcess)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot evidenceType
	       (type INSTANCE)
	       (allowed-classes EvidenceType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot requiredInputComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes Event)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot input
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames PhysicalEntity "Thing which participates in Events as input, output or catalyst. Can be recursive,i.e. contain other PhysicalEntities. This allows easier creation of cascading complexes."
  (is-a DatabaseObject)
  (role abstract)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames SimpleEntity "Indivisible entities, i.e. entities which do not have sub-units. Opposite to Complex"
  (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot referenceEntity
	     (type INSTANCE)
	     (allowed-classes ReferenceMolecule)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames Complex "Entities consisting of multiple independant subunits."
  (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasInstance
	     (type INSTANCE)
	     (allowed-classes Complex)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot hasComponent
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (cardinality 2 ?VARIABLE)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames GenomeEncodedEntity
    (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot species
	       (type INSTANCE)
	       (allowed-classes Species)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames EntityWithAccessionedSequence
    (is-a GenomeEncodedEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes SequenceDomain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasModifiedResidue
	     (type INSTANCE)
	     (allowed-classes ModifiedResidue)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot species
	       (type INSTANCE)
	       (allowed-classes Species)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy none)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot endCoordinate
	       (type INTEGER)
	       (default -1)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot referenceEntity
	       (type INSTANCE)
	       (allowed-classes ReferenceSequence)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy none)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot startCoordinate
	       (type INTEGER)
	       (default 1)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames EntitySet
    (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes Domain)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (create-accessor read-write)))

(defclass-frames DefinedSet
    (is-a EntitySet)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames OpenSet
    (is-a EntitySet)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot referenceEntity
	       (type INSTANCE)
	       (allowed-classes ReferenceMoleculeClass)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames CandidateSet
    (is-a EntitySet)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot hasCandidate
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot hasMember
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames Polymer
    (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot repeatedUnit
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot species
	     (type INSTANCE)
	     (allowed-classes Species)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot maxUnitCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot minUnitCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames OtherEntity
    (is-a PhysicalEntity)
  (role concrete)
  (multislot hasDomain
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot inferredFrom
	     (type INSTANCE)
	     (allowed-classes)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot compartment
	     (type INSTANCE)
	     (allowed-classes EntityCompartment)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot goCellularComponent
	       (type INSTANCE)
	       (allowed-classes GO_CellularComponent)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames Regulation
    (is-a DatabaseObject)
  (role concrete)
  (single-slot regulationType
	       (type INSTANCE)
	       (allowed-classes RegulationType)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (create-accessor read-write))
  (single-slot regulatedEntity
	       (type INSTANCE)
	       (allowed-classes Event CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (create-accessor read-write))
  (single-slot regulator
	       (type INSTANCE)
	       (allowed-classes Event PhysicalEntity CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames PositiveRegulation
    (is-a Regulation)
  (role concrete)
  (single-slot regulationType
	       (type INSTANCE)
	       (allowed-classes RegulationType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot regulatedEntity
	       (type INSTANCE)
	       (allowed-classes Event CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot regulator
	       (type INSTANCE)
	       (allowed-classes Event PhysicalEntity CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames Requirement "Extreme positive regulation, i.e. regulated entity absolutely requires regulator."
  (is-a PositiveRegulation)
  (role concrete)
  (single-slot regulationType
	       (type INSTANCE)
	       (allowed-classes RegulationType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot regulatedEntity
	       (type INSTANCE)
	       (allowed-classes Event CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot regulator
	       (type INSTANCE)
	       (allowed-classes Event PhysicalEntity CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames NegativeRegulation
    (is-a Regulation)
  (role concrete)
  (single-slot regulationType
	       (type INSTANCE)
	       (allowed-classes RegulationType)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot regulatedEntity
	       (type INSTANCE)
	       (allowed-classes Event CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot releaseDate
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "date")
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot summation
	     (type INSTANCE)
	     (allowed-classes Summation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot regulator
	       (type INSTANCE)
	       (allowed-classes Event PhysicalEntity CatalystActivity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot reviewed
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot edited
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot revised
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot authored
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames DatabaseIdentifier "Placeholder for database identifiers. Name is something human readable, e.g. a GO term itself while identifier is the numeric id. (In the instances created I've added the \"GO:\" prefix just for convenience really. When finally sticking the things in db these should be removed."
  (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _databaseColumnSpecification "varchar(20)")
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames Taxon "Placeholder for organisms. All names go to aliases (easier to retrieve if we just need to \"scan\" one column rather than both 'name' and 'alias'). DatabaseIdentifier allows to stick on, say, NCBI taxonomy ID."
  (is-a DatabaseObject)
  (role concrete)
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot superTaxon
	       (type INSTANCE)
	       (allowed-classes Taxon)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _databaseColumnSpecification "varchar(255)")
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames Species
    (is-a Taxon)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot superTaxon
	       (type INSTANCE)
	       (allowed-classes Taxon)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write)))

(defclass-frames InstanceEdit
    (is-a DatabaseObject)
  (role concrete)
  (single-slot _applyToAllEditedInstances
	       (comment "Set this attribute vaue to TRUE (by checking it) if you want to attch this InstenceEdit to all edited instances in your project.")
	       (type SYMBOL)
	       (allowed-values FALSE TRUE)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot note
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot dateTime
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "TIMESTAMP")
	       (create-accessor read-write))
  (multislot author
	     (type INSTANCE)
	     (allowed-classes Person)
	     (cardinality 1 ?VARIABLE)
	     (create-accessor read-write)))

(defclass-frames CatalystActivity "Allows to denote one activity (out of many possible) of a part of molecule, molecule and complex. Should be read either as \"Entity has ACTIVITY activity\" or \"ACTIVITY activity of entity\". The latter is the case if used in a dependency statement."
  (is-a DatabaseObject)
  (role concrete)
  (single-slot activity
	       (type INSTANCE)
	       (allowed-classes GO_MolecularFunction)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot activeUnit
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity Domain)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot physicalEntity
	       (type INSTANCE)
	       (allowed-classes PhysicalEntity)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames ReferenceDatabase "Place to keep info about databases used so that the general stuff shouldn't be writen out again and again with each database identifier."
  (is-a DatabaseObject)
  (role concrete)
  (single-slot url
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot accessUrl
	       (comment "Url for retrieving a record")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames GO_MolecularFunction "Basically GO functions"
  (is-a DatabaseObject)
  (role concrete)
  (multislot ecNumber
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes GO_MolecularFunction)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ANY)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes GO_MolecularFunction)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames ModifiedResidue "Placeholder for modified residues. Referenced by PhysicalEntity. Coordinate is the position of the modified residue in the VirtualMolecule. Virtual molecule is referenced in order to prevent situations where, say, residue 5 is phosphorylated in 2 diferent molecules. It woudl be logically wrong for these 2 real molecules to reference the same modified residue. Maybe an overkill (?)."
  (is-a DatabaseObject)
  (role concrete)
  (single-slot modification
	       (type INSTANCE)
	       (allowed-classes SimpleEntity ReferenceGroup ReferenceMolecule)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot coordinate
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot residue
	       (comment "This is to hold the residue (like serine or tyrosine) which is modified. The value is instance of class ConcreteSimpleEntity, i.e. an instance representing serine. I know, this not exactly correct since free amino acid (nucleotide) is different from the one in the chain but it's still pretty good I think.")
	       (type INSTANCE)
	       (allowed-classes ReferenceGroup ReferenceMolecule)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot referenceSequence
	       (type INSTANCE)
	       (allowed-classes ReferenceSequence)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames ReplacedResidue
    (is-a ModifiedResidue)
  (role concrete)
  (single-slot modification
	       (type INSTANCE)
	       (allowed-classes SimpleEntity ReferenceGroup ReferenceMolecule)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot coordinate
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot residue
	       (comment "This is to hold the residue (like serine or tyrosine) which is modified. The value is instance of class ConcreteSimpleEntity, i.e. an instance representing serine. I know, this not exactly correct since free amino acid (nucleotide) is different from the one in the chain but it's still pretty good I think.")
	       (type INSTANCE)
	       (allowed-classes ReferenceGroup ReferenceMolecule)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot referenceSequence
	       (type INSTANCE)
	       (allowed-classes ReferenceSequence)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames Person
    (is-a DatabaseObject)
  (role concrete)
  (single-slot eMailAddress
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "varchar(255)")
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot initial
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _databaseColumnSpecification "varchar(10)")
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot firstname
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot surname
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _databaseColumnSpecification "varchar(255)")
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot affiliation
	     (type INSTANCE)
	     (allowed-classes Affiliation)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot figure
	     (type INSTANCE)
	     (allowed-classes Figure)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot project
	       (type STRING)
	       (value "FlyBase")
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames Affiliation
    (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot address
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames LiteratureReference
    (is-a DatabaseObject)
  (role concrete)
  (single-slot pubMedIdentifier
	       (comment "PubMed ID")
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot journal
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "varchar(255)")
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot title
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot author
	     (type INSTANCE)
	     (allowed-classes Person)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot volume
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot year
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot pages
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _databaseColumnSpecification "varchar(20)")
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot _1stAuthorSurname
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames Figure
    (is-a DatabaseObject)
  (role concrete)
  (single-slot url
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write)))

(defclass-frames RegulationType
    (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes RegulationType)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _databaseColumnSpecification "VARCHAR(255)")
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames FrontPage
    (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot frontPageItem
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames Summation
    (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot text
	       (type STRING)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot literatureReference
	     (type INSTANCE)
	     (allowed-classes LiteratureReference)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames EvidenceType "Instances of this class represent different evidence types"
  (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes EvidenceType)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ANY)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames ConcurrentEventSet
    (is-a DatabaseObject)
  (role concrete)
  (multislot concurrentEvents
	     (type INSTANCE)
	     (allowed-classes Event)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot focusEntity
	     (type INSTANCE)
	     (allowed-classes PhysicalEntity)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write)))

(defclass-frames GO_BiologicalProcess
    (is-a DatabaseObject)
  (role concrete)
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes GO_BiologicalProcess)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ANY)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes GO_BiologicalProcess)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames _AttributeValueBeforeChange
    (is-a DatabaseObject)
  (role concrete)
  (multislot previousValue
	     (type STRING)
	     (create-accessor read-write))
  (single-slot changedAttribute
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames _InstanceBeforeChange
    (is-a DatabaseObject)
  (role concrete)
  (multislot attributeValuesBeforeChange
	     (type INSTANCE)
	     (allowed-classes _AttributeValueBeforeChange)
	     (create-accessor read-write))
  (single-slot instanceEdit
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot changedInstanceDB_ID
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames ReactionCoordinates
    (is-a DatabaseObject)
  (role concrete)
  (single-slot targetY
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot sourceY
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot locatedEvent
	       (type INSTANCE)
	       (allowed-classes Event)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot locationContext
	       (type INSTANCE)
	       (allowed-classes Pathway)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot sourceX
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot targetX
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames GO_CellularComponent
    (is-a DatabaseObject)
  (role concrete)
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ANY)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames Compartment
    (is-a GO_CellularComponent)
  (role concrete)
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ANY)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames EntityCompartment
    (is-a Compartment)
  (role concrete)
  (multislot componentOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot accession
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ANY)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot instanceOf
	     (type INSTANCE)
	     (allowed-classes GO_CellularComponent)
	     (user-facet _attributeCategory REQUIRED)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "This is for holding GO definition field.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames Domain
    (is-a DatabaseObject)
  (role abstract)
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames SequenceDomain
    (is-a Domain)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot startCoordinate
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot endCoordinate
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot referenceEntity
	       (type INSTANCE)
	       (allowed-classes ReferenceSequence)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames ComplexDomain
    (is-a Domain)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot hasComponent
	     (type INSTANCE)
	     (allowed-classes Domain PhysicalEntity)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames GenericDomain "For generalising multiple domains in different entities so that GenericEntities can also have domains."
  (is-a Domain)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot hasInstance
	     (type INSTANCE)
	     (allowed-classes ComplexDomain SequenceDomain)
	     (user-facet _identityDefinedBy ALL)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write)))

(defclass-frames ReferenceEntity
    (is-a DatabaseObject)
  (role abstract)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write)))

(defclass-frames ReferenceMolecule
    (is-a ReferenceEntity)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames ReferenceGroup
    (is-a ReferenceEntity)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames ReferenceSequence
    (is-a ReferenceEntity)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot keyword
	     (comment "KW lines from SPTREMBL records")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot sequenceLength
	       (type INTEGER)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot species
	       (type INSTANCE)
	       (allowed-classes Species)
	       (cardinality 1 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot comment
	     (comment "CC lines from sequence record.")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot secondaryIdentifier
	     (comment "This is for secondary/other identifiers WITHIN THE SAME DATABASE, e.g. secondary SPTREMBL accessions and SwissProt id. Use crossReference if the the identifier is from another db, e.g. for adding a RefSeq identifier to SPTREMBL SequenceDatabaseIdentifier.")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot description
	     (comment "DE lines from sequence record")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot geneName
	     (comment "GN lines from sequence record.")
	     (type STRING)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames ReferencePeptideSequence
    (is-a ReferenceSequence)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot referenceGene
	     (type INSTANCE)
	     (allowed-classes ReferenceDNASequence)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot referenceTranscript
	     (type INSTANCE)
	     (allowed-classes ReferenceRNASequence)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot variantIdentifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _identityDefinedBy ALL)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write)))

(defclass-frames ReferenceRNASequence
    (is-a ReferenceSequence)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot referenceGene
	     (type INSTANCE)
	     (allowed-classes ReferenceDNASequence)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames ReferenceDNASequence
    (is-a ReferenceSequence)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write)))

(defclass-frames ReferenceMoleculeClass
    (is-a ReferenceEntity)
  (role concrete)
  (single-slot atomicConnectivity
	       (comment "Contents of the mol file.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (single-slot fingerPrintString
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (multislot name_
	     (comment "This is the name of the entity whatever that entity is. Should be unique. Usually this is going to be the browser name.")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write))
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot crossReference
	     (comment "This slot is for holding references to the EQUIVALENT things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db.")
	     (type INSTANCE)
	     (allowed-classes DatabaseIdentifier)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write))
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (multislot otherIdentifier
	     (type STRING)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot formula
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot referenceGroupCount
	     (type INSTANCE)
	     (allowed-classes ReferenceGroupCount)
	     (user-facet _attributeCategory OPTIONAL)
	     (create-accessor read-write)))

(defclass-frames ReferenceGroupCount "Allows to indicate the range of a given group count. I.e. when put into ReferenceEntity's referenceGroupCount slot it indicats that the RefEnt in question contains this group in the specified number of copies. Set minCount and maxCount to 0 to indicate that this group should not be present in a given RefEnt. Leave maxCount empty to indicate that the group can occur at least in minCount copies."
  (is-a DatabaseObject)
  (role concrete)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot minCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot maxCount
	       (type INTEGER)
	       (cardinality 0 1)
	       (user-facet _attributeCategory REQUIRED)
	       (create-accessor read-write))
  (single-slot referenceGroup
	       (type INSTANCE)
	       (allowed-classes ReferenceGroup)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames PathwayCoordinates
    (is-a DatabaseObject)
  (role concrete)
  (single-slot minX
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot maxX
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot locatedEvent
	       (type INSTANCE)
	       (allowed-classes Event)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot minY
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write))
  (single-slot maxY
	       (type INTEGER)
	       (cardinality 1 1)
	       (user-facet _attributeCategory MANDATORY)
	       (create-accessor read-write)))

(defclass-frames StableIdentifier
    (is-a DatabaseObject)
  (role concrete)
  (single-slot identifier
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot referenceDatabase
	       (type INSTANCE)
	       (allowed-classes ReferenceDatabase)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (single-slot identifierVersion
	       (comment "Version number for stable identifier")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write)))

(defclass-frames _Deleted "Stores information about a single deleted instance"
  (is-a DatabaseObject)
  (role concrete)
  (multislot replacementInstances
	     (comment "The instance(s) (if any) that replace the deleted instance.  The allowed instance classes have been restricted to those for which stable IDs get generated.  If the classes for which stable IDs are generated is expanded, these need to be changed correspondingly.")
	     (type INSTANCE)
	     (allowed-classes Regulation Event PhysicalEntity)
	     (create-accessor read-write))
  (single-slot reason
	       (comment "Reason for deletion, drawn from a limited controlled vocabulary of terms")
	       (type INSTANCE)
	       (allowed-classes DeletedControlledVocabulary)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (single-slot curatorComment
	       (comment "A free-text comment that the curator may optionally provide to add extra explanation")
	       (type STRING)
	       (cardinality 0 1)
	       (create-accessor read-write))
  (multislot deletedInstanceDB_ID
	     (comment "Contains the DB_IDs of the instances that have been deleted")
	     (type INTEGER)
	     (cardinality 1 ?VARIABLE)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write)))

(defclass-frames ControlledVocabulary "Superclass for controlled vocabularies"
  (is-a DatabaseObject)
  (role abstract)
  (single-slot created
	       (type INSTANCE)
	       (allowed-classes InstanceEdit)
	       (cardinality 0 1)
	       (user-facet _attributeCategory NOMANUALEDIT)
	       (create-accessor read-write))
  (multislot modified
	     (type INSTANCE)
	     (allowed-classes InstanceEdit)
	     (user-facet _attributeCategory NOMANUALEDIT)
	     (create-accessor read-write))
  (single-slot definition
	       (comment "Short explanation.  Will appear on mouseover, if present.")
	       (type STRING)
	       (cardinality 0 1)
	       (user-facet _attributeCategory OPTIONAL)
	       (create-accessor read-write))
  (multislot name_
	     (comment "Maximum 5 word controlled vocabulary term")
	     (type STRING)
	     (user-facet _attributeCategory MANDATORY)
	     (create-accessor read-write)))

(defclass-frames DeletedControlledVocabulary "List of terms explaining reasons for deleting instances"
  (is-a ControlledVocabulary)
  (role concrete))