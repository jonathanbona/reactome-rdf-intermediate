(register-namespace "r:" "http://purl.obolibrary.org/obo/reactome/record/")

(defun make-reactome-rdf-intermediate ()
  (setf (get '*reactome-frames* 'additional-assertions) '("reactome-intermediate:latest;web-documentation.lisp"))
  (let ((it (generate-reactome-records-ontology *reactome-frames*)))
    (write-rdfxml it "reactome-intermediate:latest;reactome-frames.owl")
    (write-rdfxml it "reactome-intermediate:output;reactome-frames.owl")))