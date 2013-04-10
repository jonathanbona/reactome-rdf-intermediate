#!/bin/sh
# usage: sh generate-rdf-from-sql-database.sh
# add @prefixes
# Shorten to r: prefix, rt:prefix, rdf:, rdfs:
# change foo:bar values in DataModel table to foo_bar
pipe=/tmp/reactome-shrink-pipe
d2rq=/Volumes/Conjunctive/Users/alanr/repos/d2rq-0.8.1/
rm -f $pipe
mkfifo $pipe
gzip -c < $pipe > output/reactome43.ttl.gz &
cat prefixes.ttl > $pipe
sh $d2rq/dump-rdf -debug -f N-TRIPLE -b http://purl.obolibrary.org/obo/reactome/records/ release43/transformed-mapping.n3 | perl -nle 's%<http://purl.obolibrary.org/obo/reactome/record(s){0,1}/([^>]*)\>%r:$2%g; s%<http://www.w3.org/2001/XMLSchema#([^>]*)\>%xsd:$1%; s%<http://purl.obolibrary.org/obo/reactome/release43sql/dbmodel/([^>]*)\>%rt:$1%g; s%<http://www.w3.org/1999/02/22-rdf-syntax-ns#([^>]*)\>%rdf:$1%; s%<http://www.w3.org/2000/01/rdf-schema#([^>]*)>%rdfs:$1%; print' | sed -E 's/^([a-z]+:[a-zA-Z_]+):/\1_/' > $pipe
rm $pipe



