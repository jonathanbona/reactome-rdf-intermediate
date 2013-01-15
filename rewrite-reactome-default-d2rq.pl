# Usage: perl rewrite-reactome-default-d2rq.pl dist/reactome_data_model.pont reactome43-d2rq-generated-mapping.n3 > transformed-mapping.n3

# http://banon.cshl.edu/object_relational_mapping.html

###############################
# Example of a datatype property: Table Affiliation_2_name
###############################
### Original ###
### toss! ###
# map:Affiliation_2_name a d2rq:ClassMap;
# 	d2rq:dataStorage map:database;
# 	# Sorry, I don't know which columns to put into the uriPattern
# 	# because the table doesn't have a primary key
# 	d2rq:uriPattern "Affiliation_2_name";
# 	d2rq:class vocab:Affiliation_2_name;
# 	.
# ### toss! ###
# map:Affiliation_2_name__label a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Affiliation_2_name;
# 	d2rq:property rdfs:label;
# 	d2rq:pattern "Affiliation_2_name #";
# 	.
# ### toss! ###
# map:Affiliation_2_name_DB_ID a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Affiliation_2_name;
# 	d2rq:property vocab:Affiliation_2_name_DB_ID;
# 	d2rq:column "Affiliation_2_name.DB_ID";
# 	d2rq:datatype xsd:int;
# 	.
# ### toss! ###
# map:Affiliation_2_name_name_rank a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Affiliation_2_name;
# 	d2rq:property vocab:Affiliation_2_name_name_rank;
# 	d2rq:column "Affiliation_2_name.name_rank";
# 	d2rq:datatype xsd:int;
# 	.
# ### Recognize this by being a _2_foo_foo propertybridge, and not having a d2rq:datatype line ###
# map:Affiliation_2_name_name a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Affiliation_2_name;
# 	d2rq:property vocab:Affiliation_2_name_name;
# 	d2rq:column "Affiliation_2_name.name";
#
# ### Rewrite as follows: ###
#map:hasName a d2rq:PropertyBridge;
#	d2rq:belongsToClassMap map:Affiliation;
#	d2rq:property re:hasName;
#	d2rq:column "Affiliation_2_name.name";
#	d2rq:join "Affiliation.DB_ID = Affiliation_2_name.DB_ID";

#########################################
# Example of an object property. Person_2_affiliation
#########################################
# Table Person_2_affiliation

# ### toss! ###
# map:Person_2_affiliation a d2rq:ClassMap;
# 	d2rq:dataStorage map:database;
# 	# Sorry, I don't know which columns to put into the uriPattern
# 	# because the table doesn't have a primary key
# 	d2rq:uriPattern "Person_2_affiliation";
# 	d2rq:class vocab:Person_2_affiliation;
# 	.
# ### toss! __label ###
# map:Person_2_affiliation__label a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person_2_affiliation;
# 	d2rq:property rdfs:label;
# 	d2rq:pattern "Person_2_affiliation #";
# 	.
# ### toss! DB_ID ###
# map:Person_2_affiliation_DB_ID a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person_2_affiliation;
# 	d2rq:property vocab:Person_2_affiliation_DB_ID;
# 	d2rq:column "Person_2_affiliation.DB_ID";
# 	d2rq:datatype xsd:int;
# 	.
# ### toss! _rank ###
# map:Person_2_affiliation_affiliation_rank a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person_2_affiliation;
# 	d2rq:property vocab:Person_2_affiliation_affiliation_rank;
# 	d2rq:column "Person_2_affiliation.affiliation_rank";
# 	d2rq:datatype xsd:int;

# ### Recognize by being a _2_foo_foo PropertyBridge and having a datatype row
# map:Person_2_affiliation_affiliation a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person_2_affiliation;
# 	d2rq:property vocab:Person_2_affiliation_affiliation;
# 	d2rq:column "Person_2_affiliation.affiliation";
# 	d2rq:datatype xsd:int;
# 	.
# ### toss! _class ###
# map:Person_2_affiliation_affiliation_class a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person_2_affiliation;
# 	d2rq:property vocab:Person_2_affiliation_affiliation_class;
# 	d2rq:column "Person_2_affiliation.affiliation_class";

# ### Rewrite as follows: ###
# map:hasAffiliation a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:Person;
# 	d2rq:property re:hasAffiliation;
# 	d2rq:uriPattern "@@Person_2_affiliation.affiliation@@"; 
# 	d2rq:join "Person.DB_ID = Person_2_affiliation.DB_ID";

# ### Add uri property for each GO accession 
# map:GO_MolecularFunction_property_accession a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:GO_MolecularFunction;
# 	d2rq:property vocab:accession;
# 	d2rq:column "GO_MolecularFunction.accession";

# .
# map:GO_MolecularFunction_property_uri a d2rq:PropertyBridge;
# 	d2rq:belongsToClassMap map:GO_MolecularFunction;
# 	d2rq:property vocab:uri;
# 	d2rq:uriPattern "http://purl.org/obo/owl/GO#GO_@@GO_MolecularFunction.accession@@";
# .

open(my $pont,"<",$ARGV[0]) or die("expected first argument to be path to .pons");
open(my $mapping,"<",$ARGV[1]) or die("expected first argument to be path to d2rq mapping");

my @classes = map {/defclass\s+(\S+)/;$1} (grep /defclass\s+[^%]/, <$pont>);

my $map;
my @lines;
while (<$mapping>)
  { last unless /^@/;
    print;
  }

while (<$mapping>)
  {     if (/^map:/)
      { my @lines = ($_);
	while (!((my $line = <$mapping>) =~ /^\s*\.\s*$/))
	{ next if ($line =~ /d2rq:propertyDefinitionLabel/); # remove d2rq generated property label
	  next if ($line =~ /d2rq:classDefinitionLabel/); # remove d2rq generated class label
	  push @lines, $line; }

	my $desc = join ("",@lines);
	next if ($desc =~ /map:(\S+)_(class|rank|_label|DB_ID|_Protege_id) a d2rq:PropertyBridge;/s); # remove unused _class,_rank, DB_ID, and d2rq invented __label fields
	next if ($desc =~ /map:.*?_2_.*? d2rq:ClassMap;/s); # remove property tables
	if ($desc =~ /map:(\S+)_class a d2rq:PropertyBridge;/s)	# remove the class name from the property name
	  { $desc =~ s/(d2rq:property vocab:)$map\_(.*;)/$1.$2/es; }
	if ($desc =~ /a d2rq:ClassMap/s) # Make all the instances us just the id in their URI
	  { $desc =~ s/d2rq:uriPattern "[^\/]*\/(@@..*?@@)"/d2rq:uriPattern "$1"/s;}
	if (($desc =~ /^map:(_{0,1}(GO_){0,1}[^_]*?)_(_*\S*?) a d2rq:PropertyBridge;/) && !($desc =~ /_2_/)) # a single-valued property
	  { my $table=$1; my $field=$3; my $fieldClass = ucfirst($3);
	    if ((grep(/^$fieldClass$/ , @classes) || $field=~/^(created|go|author|activity)/) && !($field=~/^ontology/))  # a single-valued object property
	      { #print "### $table ### $field ###\n";
		$desc = "map:$table\_property_$field a d2rq:PropertyBridge;\n".
		  "\td2rq:belongsToClassMap map:$table;\n".
		  "\td2rq:property vocab:$field;\n".
		  "\td2rq:uriPattern \"@@"."$table.$field@@\";\n"
		}
	    else # a single-valued data property
	      { if ($field =~ /^_displayName/)
		  {$desc =~ s/(vocab:$table\_$field)/"rdfs:label"/es;} # rename the field to drop the class name
		else
		  { $desc =~ s/(vocab:$table\_$field)/"vocab:".$field/es;} # rename the field to drop the class name
		$desc =~ s/($table\_$field)/$table."_property_".$field/es; # rename the map to be consistent
	      }
	  }
	if ($desc =~ /^map:(_{0,1}.*?)_2_(.*?)_\2 a d2rq:PropertyBridge;/) {
	  my $table = $1; my $field = $2; my $fieldtable=ucfirst($2);
	  print "### $table ### $field ###\n";
	  if ($desc =~ /d2rq:datatype/) { # an object property
	    $desc = "map:$table\_property_$field a d2rq:PropertyBridge;\n".
	      "\td2rq:belongsToClassMap map:$table;\n".
	      "\td2rq:property vocab:$field;\n".
	      "\td2rq:uriPattern \"@@"."$table\_2_$field.$field@@\";\n".
	      "\td2rq:join \"$table.DB_ID = $table\_2_$field.DB_ID\";\n"
		#	      "\td2rq:join \"$table.DB_ID = $table\_2_$field.$field\";\n";
	    }
	  else {	# a datatype property
	      $desc = "map:$table\_property_$field a d2rq:PropertyBridge;\n".
		"\td2rq:belongsToClassMap map:$table;\n".
		"\td2rq:property vocab:$field;\n".
		"\td2rq:column \"$table\_2_$field.$field\";\n".
		"\td2rq:join \"$table.DB_ID = $table\_2_$field.DB_ID\";\n";
	    }
	}
	# special cases
	# no key. This is a schema encoding of some sort
	$desc =~ s/d2rq:uriPattern "DataModel";/d2rq:uriPattern "\@\@DataModel.thing\@\@";/s;
	# 


	print "$desc\n.\n";
      }
   }

