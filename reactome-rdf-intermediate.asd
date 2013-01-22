;;;; -*- Mode: LISP -*-
;;;;

(in-package :asdf)

(setf (logical-pathname-translations "reactome-intermediate")
      `(("latest;**;*.*" ,(make-pathname :directory (append (pathname-directory *load-pathname*) '("release43" :wild-inferiors))
				    :name :wild
				    :type :wild))
	("**;*.*" ,(make-pathname :directory (append (pathname-directory *load-pathname*) '(:wild-inferiors))
				    :name :wild
				    :type :wild))
	))

(defsystem :reactome-rdf-intermediate
  :name "An OWL representation of the Reactome data model"
  :author "Alan Ruttenberg"
  :license "BSD"
  :components
  ((:module common
	    :pathname ""
	    :components
	    ((:file "frames-to-owl2")))
   (:module currentrelease
	    :pathname "release43"
	    :components 
	    ((:file "reactome-frames")
	     (:file "extra-frames")
	     ;; transformed-mapping.n3
	     ;; build-notes.txt
	     ;; d2rq-generated-mapping.n3
	     ;; dist/
	     ;; reactome-records.owl
	     ;; transformed-mapping.n3
	     ;(:file "web-documentation")
	     (:file "make"))))
   :depends-on (owl2))

;;;; eof
