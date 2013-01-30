#/bin/sh
# select all triples from the OWLIM repository and dump them to a file
wget -O /triplestores/owlim-reactome-dump.ttl 'http://localhost:8080/openrdf-sesame/repositories/reactome43?query=prefix+r%3A+%3Chttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Freactome%2Frecord%2F%3E%0Aprefix+rt%3A+%3Chttp%3A%2F%2Fpurl.obolibrary.org%2Fobo%2Freactome%2Frecord%2F%3E%0Aprefix+rdf%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23%3E%0Aprefix+rdfs%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0Aprefix+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0Aprefix+owl%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2002%2F07%2Fowl%23%3E%0Aconstruct+%7B%3Fs+%3Fp+%3Fo%7D+where+%7B%3Fs+%3Fp+%3Fo%7D&format=application%2Fsparql-results%2Bxml&Accept=text%2Fturtle'

#dump-reactome-from-owlim.sh: line 2: unexpected EOF while looking for matching `''
#dump-reactome-from-owlim.sh: line 3: syntax error: unexpected end of file
