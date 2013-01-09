;; The essential ideas are here: http://helix-web.stanford.edu/psb06/zhang_s.pdf

(defparameter *d2rq-properties* ; grabbed by grep out of the d2rq final mapping - don't bother generating more.
  '(|address| |name| |templateEvent|
    |hasEvent| |hasCandidate| |activity| |physicalEntity| |activeUnit|
    |literatureReference| |totalProt| |maxHomologues| |inferredProt|
    |hasComponent| |hasComponent| |hasInstance| |interactionIdentifier|
    |species| |concurrentEvents| |focusEntity| |definition| |name| |thing|
    |property_name| |property_value| |property_value_type| |identifier|
    |referenceDatabase| |crossReference| |__is_ghost| |_timestamp|
    |created| |stableIdentifier| |modified| |name| |totalProt|
    |inferredProt| |maxHomologues| |hasMember| |species| |endCoordinate|
    |referenceEntity| |startCoordinate| |hasModifiedResidue| |_doRelease|
    |authored| |definition| |evidenceType| |goBiologicalProcess|
    |releaseDate| |compartment| |crossReference| |edited| |figure|
    |inferredFrom| |literatureReference| |name| |orthologousEvent|
    |precedingEvent| |reviewed| |revised| |species| |summation|
    |definition| |instanceOf| |name| |url| |frontPageItem| |accession|
    |definition| |referenceDatabase| |componentOf| |instanceOf| |name|
    |accession| |definition| |referenceDatabase| |componentOf|
    |instanceOf| |name| |accession| |definition| |referenceDatabase|
    |componentOf| |ecNumber| |instanceOf| |name| |hasInstance| |species|
    |_applyToAllEditedInstances| |dateTime| |note| |author|
    |_1stAuthorSurname| |journal| |pages| |pubMedIdentifier| |title| |project|
    |volume| |year| |author| |coordinate| |modification|
    |referenceSequence| |residue| |ontology| |referenceEntity| |parameter|
    |value| |locatedEvent| |maxX| |maxY| |minX| |minY| |hasEvent|
    |eMailAddress| |firstname| |initial| |surname| |affiliation| |figure|
    |authored| |definition| |goCellularComponent| |compartment|
    |crossReference| |edited| |figure| |hasDomain| |inferredFrom|
    |literatureReference| |name| |reviewed| |revised| |summation|
    |maxUnitCount| |minUnitCount| |totalProt| |maxHomologues|
    |inferredProt| |repeatedUnit| |species| |reverseReaction| |totalProt|
    |maxHomologues| |inferredProt| |locatedEvent| |locationContext|
    |sourceX| |sourceY| |targetX| |targetY| |catalystActivity| |hasMember|
    |input| |output| |requiredInputComponent| |accessUrl| |url| |name|
    |atomicConnectivity| |fingerPrintString| |formula| |identifier|
    |referenceDatabase| |crossReference| |name| |otherIdentifier| |entityOnOtherCell|
    |referenceGroupCount| |maxCount| |minCount| |referenceGroup|
    |variantIdentifier| |referenceGene| |referenceTranscript|
    |referenceGene| |sequenceLength| |species| |comment| |description|
    |geneName| |keyword| |secondaryIdentifier| |authored|
    |regulatedEntity| |regulationType| |regulator| |releaseDate|
    |instanceOf| |name| |edited| |figure| |literatureReference| |name|
    |reviewed| |revised| |summation| |endCoordinate| |referenceEntity|
    |startCoordinate| |referenceEntity| |figure| |identifier|
    |identifierVersion| |referenceDatabase| |text| |literatureReference|
    |superTaxon| |crossReference| |name| |changedAttribute|
    |previousValue| |curatorComment| |reason| |deletedInstanceDB_ID|
    |replacementInstances| |changedInstanceDB_ID| |instanceEdit|
    |attributeValuesBeforeChange|))

(defun generate-classes ()
  (let ((defs nil))
    (flet ((nameit (name)
	     (make-uri (format nil "http://purl.org/science/ontology/reactome/~a" name))))
      (maphash (lambda(class list)
		 (unless (or (keywordp class) (eq class 'user))
		   (let ((is-a (second (find-if (lambda(el) (and (consp el) (eq (car el) '|is-a|))) list)))
			 (comment (and (stringp (car list)) (list (car list))))
			 (restriction (generate-restriction-for-delta class list)))
		     (if is-a
			 (if (or (keywordp is-a) (eq is-a 'user))
			   (push `(class ,(nameit class) ,@comment :partial
					 ,@(if restriction
					       (if (= (length restriction) 1)
						   restriction
						   `(intersection-of ,@restriction))))
				 defs)
			   (push `(class ,(nameit class) ,@comment :partial
					 ,@(if restriction
					       `((intersection-of ,(nameit is-a) ,@restriction)))
					 ,(nameit is-a)) defs))))))
	     *frames-classes*)
      defs)))

(defun generate-restriction-for-delta (class props)
  (flet ((nameit (name)
	   (make-uri (format nil "http://purl.org/science/ontology/reactome/~a" name))))
    (loop for item in props
       when (and (consp item)
		 (member (car item) '(|single-slot| |multislot|))
		 (member (second item) *d2rq-properties*))
	 append
	 (let ((base (find (second item)
			   (gethash :clips_top_level_slot_class *frames-classes*)
			   :key (lambda(el) (if (consp el) (second el))))))
	   (let ((diff (remove '|value| (remove '|user-facet| (set-difference (cddr item) (cddr base) :test 'equalp)
						:key 'car) :key 'car)))
	     (let ((cardinality (cdr (find '|cardinality| diff :key 'car)))
		   (range (cdr (find '|allowed-classes| diff :key 'car))))
	       (append
		(if cardinality
		    (cons `(restriction ,(nameit (second item))
					(min-cardinality ,(car cardinality)))
			  (unless (eq (second cardinality) '?variable)
			    (list `(restriction ,(nameit (second item))
					  (max-cardinality ,(second cardinality)))))))
		(if range
		    (list (if (= (length range) 1)
			      `(restriction ,(nameit (second item)) (all-values-from ,@(mapcar #'nameit range)))
			      `(restriction ,(nameit (second item))
					    (all-values-from (union-of ,@(mapcar #'nameit range)))))))
		)))))))



(defun generate-properties ()
  (let ((top (gethash :clips_top_level_slot_class *frames-classes*))
	(slot2class (generate-slot2class)))
    (flet ((nameit (name)
	     (make-uri (format nil "http://purl.org/science/ontology/reactome/~a" name))))
      (loop for def in (remove '|role| (remove '|is-a| top :key 'car) :key 'car) 
	 for name = (second def)
	 for functional = (eq (car def) '|single-slot|)
	 for inverse = (second (assoc '|inverse-slot| (cddr def)))
	 for range = (remove :thing (cdr (assoc '|allowed-classes| (cddr def))))
	 for comment = (second (assoc '|comment| (cddr def)))
	 for values = (second (assoc '|values| (cddr def)))
	 for cardinality = (rest (assoc '|cardinality| (cddr def)))
	 for type = (second (assoc '|type| (cddr def)))
	 for domain = (gethash name slot2class)
	 when (member name *d2rq-properties*)
	 collect
	 (cond ((member type '(string symbol integer))
		`(datatype-property ,(nameit name)
		   ,@(if comment (list comment))
		   ,@(if (or functional (equal cardinality '(0 1))) (list :functional))
		   ,@(if domain 
			   (if (= (length domain) 1)
			       (list `(domain ,@(mapcar #'nameit domain)))
			       (list `(domain (union-of ,@(mapcar #'nameit domain))))))
		   ,@(cond ((eq type 'integer)
			    (list `(range ,!xsd:int))))
		   ))
	       (t `(object-property ,(nameit name)
		     ,@(if comment (list comment))
		     ,@(if (or functional (equal cardinality '(0 1))) (list :functional))
		     ,@(if domain 
			   (if (= (length domain) 1)
			       (list `(domain ,@(mapcar #'nameit domain)))
			       (list `(domain (union-of ,@(mapcar #'nameit domain))))))
		     ,@(if range 
			   (if (= (length range) 1)
			       (list `(range ,@(mapcar #'nameit range)))
			       (list `(range (union-of ,@(mapcar #'nameit range))))))))
	       )))))

(defun generate-slot2class ()
  (let ((slot2class (make-hash-table)))
    (maphash (lambda(class list)
	       (unless (or (keywordp class) (eq class 'user))
		 (loop for el in list
		      when (and (consp el) (member (car el) '(|single-slot| |multislot|)))
		      do (pushnew class (gethash (second el) slot2class)))))
	     *frames-classes*)
    slot2class))  
		   
(defun generate-disjoints ()
  (let ((parent2child (make-hash-table))
	(all-disjoints nil))
    (flet ((nameit (name)
	     (make-uri (format nil "http://purl.org/science/ontology/reactome/~a" name))))
      (maphash (lambda(class list)
		 (unless (or (keywordp class) (eq class 'user))
		   (let ((is-a (second (find-if (lambda(el) (and (consp el) (eq (car el) '|is-a|))) list))))
		     (if is-a
			 (unless (or (keywordp is-a) (eq is-a 'user))
			   (pushnew (nameit class) (gethash (nameit is-a) parent2child)))))))
	       *frames-classes*)
      (loop with queue = (list (nameit '|DatabaseObject|))
	 for root = (pop queue)
	 for children = (gethash root parent2child)
	 when children
	 do 
	 (when (>= (length children) 2)
	   (push `(disjoint-classes ,@children) all-disjoints))
	 do (setf queue (append queue children))
	 until (null queue)
	 ))
    all-disjoints
    ))

(define-ontology reactome-records (:base "http://purl.org/science/ontology/reactome/"
					 :about "http://purl.org/science/ontology/reactome/")
  (mapcar 'eval (generate-properties))
  (mapcar 'eval (generate-classes))
  (mapcar 'eval (generate-disjoints))
  (annotation-property  !<http://purl.org/science/ontology/reactome/uri> (comment "to connect GO Records to the actual GO term URI") )
  )
  
	   


#|
http://helix-web.stanford.edu/psb06/zhang_s.pdf
http://protege.stanford.edu/conference/2006/submissions/abstracts/7.2_Wang_Hai_Protege_conf.pdf
http://www.cs.us.es/software/clips/clips.hlp

(let ((slots (make-hash-table)))
	   (maphash (lambda(class list) 
		    (loop for entry in list
		       do
			 (when (and (consp entry)
				    (member (car entry) '(|single-slot| |multi-slot|)))
			   (let* ((entry (list* (first entry) (second entry) 
						(remove-if (lambda(el) (member el '(|cardinality| |user-facet| |default| |associated-facet| |comment| |value| |allowed-classes| |inverse-slot|)))
							   (cddr entry) :key 'car)))
				 (slot (second entry)))
			     (if (gethash slot slots) 
				 (unless (equalp entry (gethash slot slots))
				   (print-db entry (gethash slot slots)))
				 (setf (gethash slot slots) entry))))))
		  *frames-classes*)
	   slots)

(let ((slots nil))
	   (maphash (lambda(class list) 
		    (loop for entry in list
		       do
			 (when (and (consp entry)
				    (member (car entry) '(|single-slot| |multi-slot|)))
			   (loop for prop in (cddr entry) do (pushnew (car prop) slots)))))
		  *frames-classes*)
	   slots)

(|inverse-slot| ; shouln't vary
 |associated-facet| ; varies
 |default| ; varies
 |value| ; varies
 |allowed-values| ; varies
 |comment| ; varies for a couple of slots
 |allowed-classes| ; varies
 |create-accessor| ;ignore
 |user-facet| ;optional
 |cardinality| ;varies
 |type|) ; constant

slotDisplayName ignore
_attributeCategory MANDATORY OPTIONAL NOMANUALEDIT
(cardinality 1 ?VARIABLE) -> mincardinality
(cardinality 0 1) -> functional
(cardinality 1 1) -> cardinality

(allowed-classes SimpleEntity ReferenceGroup ReferenceMolecule)
 (all-values-from (union-of ...))

types: INSTANCE STRING SYMBOL INTEGER
(user-facet _databaseColumnSpecification "date")
single-slot -> functional
mandatory -> (mincardinality 1)


3.1 Converting slots of the FMA in ProtÅÈgÅÈ into properties in OWL DL
All slots used in the FMA are represented in a top-level slot class. Each of these slots is
converted into a property in OWL DL. Slots have a type specification (e.g., INTEGER
and SYMBOL) and constraints about the allowable values (i.e., in allowed-parents /
allowed-classes / allowed-values), which are used to delimit the type and range of property
in OWL DL, as shown in Table 1. Additionally, the number of values allowed in a
slot (single-slot or multi-slot specification) corresponds to the cardinality (at most one
or multiple) of the corresponding property. Slots with single-slot specification are converted
into functional properties in OWL DL. Finally, slots having inverses (inverse-slot
specification) are converted as to stand in a owl:inverseOf relation in OWL DL; when a slot
is its own inverse, the corresponding property becomes symmetric in OWL DL.
Slot of the FMA in CLIPS Property in OWL DL

Typed INTEGER, FLOAT or STRING owl:DatatypeProperty with range being XML Schema datatypes
integer, float and string, respectively

Typed SYMBOL with allowed-values
TRUE and FALSE
owl:DatatypeProperty with range being XML Schema datatype

Boolean
Typed SYMBOL with allowed-values that
are neither TRUE nor FALSE

owl:ObjectProperty with range being an enumerated class of all
individuals in allowed-values

Typed SYMBOL with allowed-parents owl:ObjectProperty with range being owl:unionOf all classes in
allowed-parents

Typed INSTANCE with allowed-classes owl:ObjectProperty with range being owl:unionOf all classes in
allowed-classes

Table 1 úÙÚÛ Rules for converting slots of the FMA into properties in OWL DL

In addition to the overall top-level definition, slots can be introduced in class descriptions
in CLIPS, representing that the class is allowed to have the slot. We use such
specification to delimit the domain of property in OWL DL. If slot S is introduced in
class X, then X becomes an element of the domain of the property S. As one slot can be
introduced into multiple classes, the domain of S is the union of all these classes. (see
Supp 1- Supp 4 for examples)

In order to convert slots of type SYMBOL with allowed values other than TRUE or
FALSE into properties having an enumerated class as their range, one individual has to
be generated in OWL DL for each of the allowed values of these slots (see Supp 5).

7 OWL classes are either named or unnamed. Throughout this paper, unless we explicitly specify úÙÚ¸unnamedúÙÚ˝,
úÙÚ¸classúÙÚ˝ refers to named classes.




(|inverse-slot| ; shouln't vary
 |associated-facet| ; varies
 |default| ; varies
 |value| ; varies
 |allowed-values| ; varies
 |comment| ; varies for a couple of slots
 |allowed-classes| ; varies
 |create-accessor| ;ignore
 |user-facet| ;optional
 |cardinality| ;varies
 |type|)

|#
