DB.DBA.RDF_LOAD_RDFXML(file_to_string_output('/work/reactome/reactome-records.owl'),'http://purl.org/commons/record/reactome/','http://purl.org/science/graph/reactome-records');
DB.DBA.TTLP_MT(file_to_string_output('/work/reactome/reactome.nt'),'http://purl.org/commons/record/reactome/' ,'http://purl.org/science/graph/reactome-records',0); 

