#!/bin/sh
cat prefixes.ttl >! reactome43.ttl 
cat reactome43.nt | perl -nle 's|<http://purl.obolibrary.org/obo/reactome/record/([^>]*)\>|r:$1|g; s|<http://purl.obolibrary.org/obo/reactome/release43sql/dbmodel/([^>]*)\>|rt:$1|; s|<http://www.w3.org/1999/02/22-rdf-syntax-ns#([^>]*)\>|rdf:$1|; s|<http://www.w3.org/2000/01/rdf-schema#([^>]*)>|rdfs:$1|; print' | gzip -c >> reactome43.ttl.gz 
