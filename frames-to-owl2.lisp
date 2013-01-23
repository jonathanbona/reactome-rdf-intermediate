;; The essential ideas are here: http://helix-web.stanford.edu/psb06/zhang_s.pdf

(def-uri-alias "definition" !obi:IAO_0000115)
(def-uri-alias "definition-source" !obi:IAO_0000119)
(def-uri-alias "definition-editor" !obi:IAO_0000117)
(def-uri-alias "preferred-term" !obi:IAO_0000111)
(def-uri-alias "alternative-term" !obi:IAO_0000118)
(def-uri-alias "example-of-usage" !obi:IAO_0000112)
(def-uri-alias "curation-status" !obi:IAO_0000078)
(def-uri-alias "editor-note" !obo:IAO_0000116)
(def-uri-alias "curator-note" !obo:IAO_0000232)

(defun reactome-term-uri (label)
  (make-uri (concatenate 'string "http://purl.obolibrary.org/obo/reactome/record/" (string label))))

(defun generate-class-axioms (frames)
  (let ((all-classes frames)
	(all-properties (mapcar 'second (cdddr (gethash :clips_top_level_slot_class *reactome-frames*)))))
    (collecting-axioms
     (maphash (lambda(class list)
		(unless (or (keywordp class) (eq class 'user))
		  (let ((is-a (second (find-if (lambda(el) (and (consp el) (eq (car el) '|is-a|))) list)))
			(comment (and (stringp (car list)) (list (car list)))))
		    (as `(declaration (class ,(reactome-term-uri class))))
		    (as `(annotation-assertion !rdfs:label ,(reactome-term-uri class) ,(replace-all (string class) "([a-z])([A-Z])" (lambda(a b) (format nil "~a ~a" a (string-downcase b))) 1 2)))
		    (and comment (as `(annotation-assertion !rdfs:comment ,(reactome-term-uri class) ,comment)))
		    (as  (generate-local-class-restrictions class list all-classes all-properties))
		    (if (and is-a (not (keywordp is-a)) (not (eq is-a 'user)))
			(as `(sub-class-of ,(reactome-term-uri class) ,(reactome-term-uri is-a)))))))
	      all-classes)
     )))

(defun generate-local-class-restrictions (class props all-classes all-properties)
  (collecting-axioms
   (loop for item in props
      when (and (consp item)
		(member (car item) '(|single-slot| |multislot|)))
      do
	(assert  (or (eq (second item) '|name_|)
		     (member (second item) all-properties) () "there's a local restriction on ~a but ~a isn't declared a property" (second item) (second item)))
      and append
      (let ((base (find (second item)
			(gethash :clips_top_level_slot_class all-classes)
			:key (lambda(el) (if (consp el) (second el))))))
	(let ((diff (remove '|value| (remove '|user-facet| (set-difference (cddr item) (cddr base) :test 'equalp)
					     :key 'car) :key 'car)))
	  (let* ((type (second (find '|type| (cddr base) :key 'car)))
		(cardinality (cdr (find '|cardinality| diff :key 'car)))
		(object-property-range (cdr (find '|allowed-classes| diff :key 'car)))
		 ;; in the general case we would need to handle this, but in this case all data property ranges are global
		 ;;		(data-property-range (unless (eq type 'instance) (cons type (cdr (find '|allowed-values| diff :key 'car)))))
		(object-property? (eq 'instance type)))
	    (append
	     (if cardinality
		 (progn
		   (unless (eql 0 (first cardinality))
		     (as `(sub-class-of ,(reactome-term-uri class) (,(if object-property? 'object-min-cardinality 'data-min-cardinality) ,(first cardinality) ,(reactome-term-uri (second item))))))
		   (unless (eq (second cardinality) '?variable)
		     (as `(sub-class-of ,(reactome-term-uri class) (,(if object-property? 'object-max-cardinality 'data-max-cardinality) ,(second cardinality) ,(reactome-term-uri (second item)))))))
		 (when object-property-range
		   (assert object-property? () "Curious about that - I don't expect data properties (~a:~a) to have allowed-classes ~a" item type diff)
		     (progn
		       (if (= (length object-property-range) 1)
			   (as `(sub-class-of ,(reactome-term-uri class) (object-all-values-from ,(reactome-term-uri (second item)) ,@(mapcar #'reactome-term-uri object-property-range))))
			   (as `(sub-class-of ,(reactome-term-uri class) (object-all-values-from ,(reactome-term-uri (second item)) (object-union-of ,@(mapcar #'reactome-term-uri object-property-range)))))
			   )))
		 ))))))))

(defun generate-property-axioms (frames)
  (collecting-axioms
   (let ((all-classes frames)
	 (all-properties (mapcar 'second (cdddr (gethash :clips_top_level_slot_class *reactome-frames*)))))
     (let ((top (gethash :clips_top_level_slot_class all-classes))
	   (slot2class (generate-slot2class all-classes all-properties)))
       (loop for def in (remove '|role| (remove '|is-a| (cdr top) :key 'car) :key 'car) 
	  for name = (second def)
	  for functional = (eq (car def) '|single-slot|)
	  for inverse = (second (assoc '|inverse-slot| (cddr def)))
	  for range = (remove :thing (cdr (assoc '|allowed-classes| (cddr def))))
	  for comment = (second (assoc '|comment| (cddr def)))
	  for values = (second (assoc '|values| (cddr def)))
	  for cardinality = (rest (assoc '|cardinality| (cddr def)))
	  for type = (second (assoc '|type| (cddr def)))
	  for domain = (gethash name slot2class)
	  for uri = (reactome-term-uri name)
	  when (member name all-properties)
	  do
	    (as `(annotation-assertion !rdfs:label ,uri ,(replace-all (string name) "([a-z])([A-Z])" (lambda(a b) (format nil "~a ~a" a (string-downcase b))) 1 2)))
	  (cond ((member type '(string symbol integer))
		 (as `(declaration (data-property ,uri)))
		 (when comment (as `(annotation-assertion !rdfs:comment ,uri ,comment)))
		 (when (or functional (equal cardinality '(0 1))) (as `(functional-data-property ,uri)))
		 (when domain 
		   (if (= (length domain) 1)
		       (as `(data-property-domain ,uri ,@(mapcar #'reactome-term-uri domain)))
		       (as `(data-property-domain ,uri (object-union-of ,@(mapcar #'reactome-term-uri domain))))))
		 (when (eq type 'integer)
		   (as `(data-property-range ,uri !xsd:int)))
		 (when values
		   (as `(data-property-range ,uri (data-one-of ,@values))))
		 (when inverse
		   (as `(inverse-object-properties ,uri ,(reactome-term-uri inverse)))))
		(t
		 (as `(declaration (object-property ,uri)))
		 (when comment (as `(annotation-assertion !rdfs:comment ,uri ,comment)))
		 (when (or functional (equal cardinality '(0 1))) (as `(functional-object-property ,uri)))
		 (when domain 
		   (if (= (length domain) 1)
		       (as `(object-property-domain ,uri ,@(mapcar #'reactome-term-uri domain)))
		       (as `(object-property-domain ,uri (object-union-of ,@(mapcar #'reactome-term-uri domain))))))
		 (when  range 
		   (if (= (length range) 1)
		       (as `(object-property-range ,uri ,@(mapcar #'reactome-term-uri range)))
		       (as `(object-property-range ,uri (object-union-of ,@(mapcar #'reactome-term-uri range))))))))
	  )))))

(defun generate-slot2class (all-classes all-properties)
  (let ((slot2class (make-hash-table)))
    (maphash (lambda(class list)
	       (unless (or (keywordp class) (eq class 'user))
		 (loop for el in list
		      when (and (consp el) (member (car el) '(|single-slot| |multislot|)))
		      do (pushnew class (gethash (second el) slot2class)))))
	     all-classes)
    slot2class))  
		   
(defun generate-disjoints (all-classes)
  (collecting-axioms
   (let ((parent2child (make-hash-table))
	 (all-disjoints nil))
     (maphash (lambda(class list)
		(unless (or (keywordp class) (eq class 'user))
		  (let ((is-a (second (find-if (lambda(el) (and (consp el) (eq (car el) '|is-a|))) list))))
		    (if is-a
			(unless (or (keywordp is-a) (eq is-a 'user))
			  (pushnew (reactome-term-uri class) (gethash (reactome-term-uri is-a) parent2child)))))))
	      all-classes)
     (loop with queue = (list (reactome-term-uri '|DatabaseObject|))
	for root = (pop queue)
	for children = (gethash root parent2child)
	when children
	do 
	(when (>= (length children) 2)
	  (as `(disjoint-classes ,@children)))
	do (setf queue (append queue children))
	until (null queue)
	))))


(defun generate-reactome-records-ontology (frames)
  (with-ontology reactome-records (:collecting t
					       :base (uri-full (reactome-term-uri ""))
					       :about (#"replaceFirst" (uri-full (reactome-term-uri ".owl")) "/.owl" "s.owl"))
      ((asq (declaration (annotation-property !definition))
	    (annotation-assertion !rdfs:label !definition  "definition")
	    (declaration (annotation-property !definition-source))
	    (annotation-assertion !rdfs:label !definition-source  "definition source")
	    (declaration (annotation-property !editor-note))
	    (declaration (annotation-property !dc:creator))
	    (declaration (annotation-property !definition-editor))
	    (declaration (annotation-property !dc:contributor))
	    (annotation-assertion !rdfs:label !editor-note  "editor note")
	    (annotation-assertion !rdfs:label !definition-editor  "definition editor"))
       (as (generate-property-axioms frames) 
	   (generate-class-axioms frames)
	   (generate-disjoints frames)
	   `(declaration (annotation-property ,(reactome-term-uri "uri")))
	   `(annotation-assertion !rdfs:comment ,(reactome-term-uri "uri")
				  "to connect GO Records to the actual GO term URI")
	   )
       (loop for a in (get '*reactome-frames* 'additional-assertions) do
	    (as (with-open-file (f a)
		  (loop for form = (read f nil :eof) until (eq form :eof) collect form)))))
    reactome-records))


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


3.1 Converting slots of the FMA in Protégé into properties in OWL DL
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

Table 1 – Rules for converting slots of the FMA into properties in OWL DL

In addition to the overall top-level definition, slots can be introduced in class descriptions
in CLIPS, representing that the class is allowed to have the slot. We use such
specification to delimit the domain of property in OWL DL. If slot S is introduced in
class X, then X becomes an element of the domain of the property S. As one slot can be
introduced into multiple classes, the domain of S is the union of all these classes. (see
Supp 1- Supp 4 for examples)

In order to convert slots of type SYMBOL with allowed values other than TRUE or
FALSE into properties having an enumerated class as their range, one individual has to
be generated in OWL DL for each of the allowed values of these slots (see Supp 5).

7 OWL classes are either named or unnamed. Throughout this paper, unless we explicitly specify “unnamed”,
“class” refers to named classes.




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

