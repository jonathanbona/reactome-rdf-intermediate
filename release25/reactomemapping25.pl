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

my @classes =qw(Affiliation BlackBoxEvent CandidateSet
CatalystActivity Compartment Complex ComplexDomain ConcurrentEventSet
ControlledVocabulary DataModel DatabaseIdentifier DatabaseObject
DefinedSet DeletedControlledVocabulary Depolymerisation Domain
EntityCompartment EntitySet EntityWithAccessionedSequence Event
EvidenceType Figure FrontPage GO_BiologicalProcess
GO_CellularComponent GO_MolecularFunction GenericDomain
GenomeEncodedEntity InstanceEdit LiteratureReference ModifiedResidue
NegativeRegulation Ontology OpenSet OtherEntity Parameters Pathway
PathwayCoordinates Person PhysicalEntity Polymer Polymerisation
PositiveRegulation Reaction ReactionCoordinates ReactionlikeEvent
ReferenceDNASequence ReferenceDatabase ReferenceEntity ReferenceGroup
ReferenceGroupCount ReferenceMolecule ReferenceMoleculeClass
ReferencePeptideSequence ReferenceRNASequence ReferenceSequence
Regulation RegulationType ReplacedResidue Requirement SequenceDomain
SimpleEntity Species StableIdentifier Summation Taxon
_AttributeValueBeforeChange _Deleted _InstanceBeforeChange);

my $map;
my @lines;
while (<DATA>)
  { last unless /^@/;
    print;
  }

while (<DATA>)
  {     if (/^map:/)
      { my @lines = ($_);
	while (!((my $line = <DATA>) =~ /^\s*\.\s*$/)) {push @lines, $line; }
	my $desc = join ("",@lines);
	next if ($desc =~ /map:(\S+)_(class|rank|_label|DB_ID|_Protege_id) a d2rq:PropertyBridge;/s); # remove unused _class,_rank, DB_ID, and d2rq invented __label fields
	next if ($desc =~ /map:.*?_2_.*? d2rq:ClassMap;/s); # remove property tables
	if ($desc =~ /map:(\S+)_class a d2rq:PropertyBridge;/s)	# remove the class name from the property name
	  { $desc =~ s/(d2rq:property vocab:)$map\_(.*;)/$1.$2/es; }
	if ($desc =~ /a d2rq:ClassMap/s) # Make all the instances us just the id in their URI
	  { $desc =~ s/d2rq:uriPattern "[^\/]*\/(@@..*?@@)"/d2rq:uriPattern "$1"/s;}
	if (($desc =~ /^map:((GO_){0,1}[^_]*?)_(_*\S*?) a d2rq:PropertyBridge;/) && !($desc =~ /_2_/)) # a single-valued property
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
	if ($desc =~ /^map:(.*?)_2_(.*?)_\2 a d2rq:PropertyBridge;/) {
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

__DATA__
@prefix map: <http://purl.org/science/d2rq/reactome25/> .
@prefix vocab: <http://purl.org/science/ontology/reactome/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix d2rq: <http://www.wiwiss.fu-berlin.de/suhl/bizer/D2RQ/0.1#> .
@prefix record: <http://purl.org/science/record/reactome/> .

map:database a d2rq:Database;
	d2rq:jdbcDriver "com.mysql.jdbc.Driver";
	d2rq:jdbcDSN "jdbc:mysql://127.0.0.1/reactome_25?zeroDateTimeBehavior=convertToNull";
	d2rq:username "root";
	.

# Table Affiliation
map:Affiliation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Affiliation/@@Affiliation.DB_ID@@";
	d2rq:class vocab:Affiliation;
	.
map:Affiliation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation;
	d2rq:property rdfs:label;
	d2rq:pattern "Affiliation #@@Affiliation.DB_ID@@";
	.
map:Affiliation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation;
	d2rq:property vocab:Affiliation_DB_ID;
	d2rq:column "Affiliation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Affiliation_address a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation;
	d2rq:property vocab:Affiliation_address;
	d2rq:column "Affiliation.address";
	.

# Table Affiliation_2_name
map:Affiliation_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Affiliation_2_name";
	d2rq:class vocab:Affiliation_2_name;
	.
map:Affiliation_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "Affiliation_2_name #";
	.
map:Affiliation_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation_2_name;
	d2rq:property vocab:Affiliation_2_name_DB_ID;
	d2rq:column "Affiliation_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Affiliation_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation_2_name;
	d2rq:property vocab:Affiliation_2_name_name_rank;
	d2rq:column "Affiliation_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:Affiliation_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Affiliation_2_name;
	d2rq:property vocab:Affiliation_2_name_name;
	d2rq:column "Affiliation_2_name.name";
	.

# Table BlackBoxEvent
map:BlackBoxEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "BlackBoxEvent/@@BlackBoxEvent.DB_ID@@";
	d2rq:class vocab:BlackBoxEvent;
	.
map:BlackBoxEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "BlackBoxEvent #@@BlackBoxEvent.DB_ID@@";
	.
map:BlackBoxEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent;
	d2rq:property vocab:BlackBoxEvent_DB_ID;
	d2rq:column "BlackBoxEvent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:BlackBoxEvent_templateEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent;
	d2rq:property vocab:BlackBoxEvent_templateEvent;
	d2rq:column "BlackBoxEvent.templateEvent";
	d2rq:datatype xsd:int;
	.
map:BlackBoxEvent_templateEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent;
	d2rq:property vocab:BlackBoxEvent_templateEvent_class;
	d2rq:column "BlackBoxEvent.templateEvent_class";
	.

# Table BlackBoxEvent_2_hasEvent
map:BlackBoxEvent_2_hasEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "BlackBoxEvent_2_hasEvent";
	d2rq:class vocab:BlackBoxEvent_2_hasEvent;
	.
map:BlackBoxEvent_2_hasEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent_2_hasEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "BlackBoxEvent_2_hasEvent #";
	.
map:BlackBoxEvent_2_hasEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent_2_hasEvent;
	d2rq:property vocab:BlackBoxEvent_2_hasEvent_DB_ID;
	d2rq:column "BlackBoxEvent_2_hasEvent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:BlackBoxEvent_2_hasEvent_hasEvent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent_2_hasEvent;
	d2rq:property vocab:BlackBoxEvent_2_hasEvent_hasEvent_rank;
	d2rq:column "BlackBoxEvent_2_hasEvent.hasEvent_rank";
	d2rq:datatype xsd:int;
	.
map:BlackBoxEvent_2_hasEvent_hasEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent_2_hasEvent;
	d2rq:property vocab:BlackBoxEvent_2_hasEvent_hasEvent;
	d2rq:column "BlackBoxEvent_2_hasEvent.hasEvent";
	d2rq:datatype xsd:int;
	.
map:BlackBoxEvent_2_hasEvent_hasEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:BlackBoxEvent_2_hasEvent;
	d2rq:property vocab:BlackBoxEvent_2_hasEvent_hasEvent_class;
	d2rq:column "BlackBoxEvent_2_hasEvent.hasEvent_class";
	.

# Table CandidateSet
map:CandidateSet a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "CandidateSet/@@CandidateSet.DB_ID@@";
	d2rq:class vocab:CandidateSet;
	.
map:CandidateSet__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet;
	d2rq:property rdfs:label;
	d2rq:pattern "CandidateSet #@@CandidateSet.DB_ID@@";
	.
map:CandidateSet_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet;
	d2rq:property vocab:CandidateSet_DB_ID;
	d2rq:column "CandidateSet.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table CandidateSet_2_hasCandidate
map:CandidateSet_2_hasCandidate a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "CandidateSet_2_hasCandidate";
	d2rq:class vocab:CandidateSet_2_hasCandidate;
	.
map:CandidateSet_2_hasCandidate__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet_2_hasCandidate;
	d2rq:property rdfs:label;
	d2rq:pattern "CandidateSet_2_hasCandidate #";
	.
map:CandidateSet_2_hasCandidate_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet_2_hasCandidate;
	d2rq:property vocab:CandidateSet_2_hasCandidate_DB_ID;
	d2rq:column "CandidateSet_2_hasCandidate.DB_ID";
	d2rq:datatype xsd:int;
	.
map:CandidateSet_2_hasCandidate_hasCandidate_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet_2_hasCandidate;
	d2rq:property vocab:CandidateSet_2_hasCandidate_hasCandidate_rank;
	d2rq:column "CandidateSet_2_hasCandidate.hasCandidate_rank";
	d2rq:datatype xsd:int;
	.
map:CandidateSet_2_hasCandidate_hasCandidate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet_2_hasCandidate;
	d2rq:property vocab:CandidateSet_2_hasCandidate_hasCandidate;
	d2rq:column "CandidateSet_2_hasCandidate.hasCandidate";
	d2rq:datatype xsd:int;
	.
map:CandidateSet_2_hasCandidate_hasCandidate_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CandidateSet_2_hasCandidate;
	d2rq:property vocab:CandidateSet_2_hasCandidate_hasCandidate_class;
	d2rq:column "CandidateSet_2_hasCandidate.hasCandidate_class";
	.

# Table CatalystActivity
map:CatalystActivity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "CatalystActivity/@@CatalystActivity.DB_ID@@";
	d2rq:class vocab:CatalystActivity;
	.
map:CatalystActivity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property rdfs:label;
	d2rq:pattern "CatalystActivity #@@CatalystActivity.DB_ID@@";
	.
map:CatalystActivity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property vocab:CatalystActivity_DB_ID;
	d2rq:column "CatalystActivity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_activity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property vocab:CatalystActivity_activity;
	d2rq:column "CatalystActivity.activity";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_activity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property vocab:CatalystActivity_activity_class;
	d2rq:column "CatalystActivity.activity_class";
	.
map:CatalystActivity_physicalEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property vocab:CatalystActivity_physicalEntity;
	d2rq:column "CatalystActivity.physicalEntity";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_physicalEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity;
	d2rq:property vocab:CatalystActivity_physicalEntity_class;
	d2rq:column "CatalystActivity.physicalEntity_class";
	.

# Table CatalystActivity_2_activeUnit
map:CatalystActivity_2_activeUnit a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "CatalystActivity_2_activeUnit";
	d2rq:class vocab:CatalystActivity_2_activeUnit;
	.
map:CatalystActivity_2_activeUnit__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_activeUnit;
	d2rq:property rdfs:label;
	d2rq:pattern "CatalystActivity_2_activeUnit #";
	.
map:CatalystActivity_2_activeUnit_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_activeUnit;
	d2rq:property vocab:CatalystActivity_2_activeUnit_DB_ID;
	d2rq:column "CatalystActivity_2_activeUnit.DB_ID";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_activeUnit_activeUnit_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_activeUnit;
	d2rq:property vocab:CatalystActivity_2_activeUnit_activeUnit_rank;
	d2rq:column "CatalystActivity_2_activeUnit.activeUnit_rank";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_activeUnit_activeUnit a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_activeUnit;
	d2rq:property vocab:CatalystActivity_2_activeUnit_activeUnit;
	d2rq:column "CatalystActivity_2_activeUnit.activeUnit";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_activeUnit_activeUnit_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_activeUnit;
	d2rq:property vocab:CatalystActivity_2_activeUnit_activeUnit_class;
	d2rq:column "CatalystActivity_2_activeUnit.activeUnit_class";
	.

# Table CatalystActivity_2_literatureReference
map:CatalystActivity_2_literatureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "CatalystActivity_2_literatureReference";
	d2rq:class vocab:CatalystActivity_2_literatureReference;
	.
map:CatalystActivity_2_literatureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_literatureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "CatalystActivity_2_literatureReference #";
	.
map:CatalystActivity_2_literatureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_literatureReference;
	d2rq:property vocab:CatalystActivity_2_literatureReference_DB_ID;
	d2rq:column "CatalystActivity_2_literatureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_literatureReference_literatureReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_literatureReference;
	d2rq:property vocab:CatalystActivity_2_literatureReference_literatureReference_rank;
	d2rq:column "CatalystActivity_2_literatureReference.literatureReference_rank";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_literatureReference_literatureReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_literatureReference;
	d2rq:property vocab:CatalystActivity_2_literatureReference_literatureReference;
	d2rq:column "CatalystActivity_2_literatureReference.literatureReference";
	d2rq:datatype xsd:int;
	.
map:CatalystActivity_2_literatureReference_literatureReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:CatalystActivity_2_literatureReference;
	d2rq:property vocab:CatalystActivity_2_literatureReference_literatureReference_class;
	d2rq:column "CatalystActivity_2_literatureReference.literatureReference_class";
	.

# Table Compartment
map:Compartment a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Compartment/@@Compartment.DB_ID@@";
	d2rq:class vocab:Compartment;
	.
map:Compartment__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Compartment;
	d2rq:property rdfs:label;
	d2rq:pattern "Compartment #@@Compartment.DB_ID@@";
	.
map:Compartment_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Compartment;
	d2rq:property vocab:Compartment_DB_ID;
	d2rq:column "Compartment.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Complex
map:Complex a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Complex/@@Complex.DB_ID@@";
	d2rq:class vocab:Complex;
	.
map:Complex__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex #@@Complex.DB_ID@@";
	.
map:Complex_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex;
	d2rq:property vocab:Complex_DB_ID;
	d2rq:column "Complex.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_totalProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex;
	d2rq:property vocab:Complex_totalProt;
	d2rq:column "Complex.totalProt";
	.
map:Complex_maxHomologues a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex;
	d2rq:property vocab:Complex_maxHomologues;
	d2rq:column "Complex.maxHomologues";
	.
map:Complex_inferredProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex;
	d2rq:property vocab:Complex_inferredProt;
	d2rq:column "Complex.inferredProt";
	.

# Table ComplexDomain
map:ComplexDomain a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ComplexDomain/@@ComplexDomain.DB_ID@@";
	d2rq:class vocab:ComplexDomain;
	.
map:ComplexDomain__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain;
	d2rq:property rdfs:label;
	d2rq:pattern "ComplexDomain #@@ComplexDomain.DB_ID@@";
	.
map:ComplexDomain_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain;
	d2rq:property vocab:ComplexDomain_DB_ID;
	d2rq:column "ComplexDomain.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ComplexDomain_2_hasComponent
map:ComplexDomain_2_hasComponent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ComplexDomain_2_hasComponent";
	d2rq:class vocab:ComplexDomain_2_hasComponent;
	.
map:ComplexDomain_2_hasComponent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain_2_hasComponent;
	d2rq:property rdfs:label;
	d2rq:pattern "ComplexDomain_2_hasComponent #";
	.
map:ComplexDomain_2_hasComponent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain_2_hasComponent;
	d2rq:property vocab:ComplexDomain_2_hasComponent_DB_ID;
	d2rq:column "ComplexDomain_2_hasComponent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ComplexDomain_2_hasComponent_hasComponent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain_2_hasComponent;
	d2rq:property vocab:ComplexDomain_2_hasComponent_hasComponent_rank;
	d2rq:column "ComplexDomain_2_hasComponent.hasComponent_rank";
	d2rq:datatype xsd:int;
	.
map:ComplexDomain_2_hasComponent_hasComponent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain_2_hasComponent;
	d2rq:property vocab:ComplexDomain_2_hasComponent_hasComponent;
	d2rq:column "ComplexDomain_2_hasComponent.hasComponent";
	d2rq:datatype xsd:int;
	.
map:ComplexDomain_2_hasComponent_hasComponent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ComplexDomain_2_hasComponent;
	d2rq:property vocab:ComplexDomain_2_hasComponent_hasComponent_class;
	d2rq:column "ComplexDomain_2_hasComponent.hasComponent_class";
	.

# Table Complex_2_entityOnOtherCell
map:Complex_2_entityOnOtherCell a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Complex_2_entityOnOtherCell";
	d2rq:class vocab:Complex_2_entityOnOtherCell;
	.
map:Complex_2_entityOnOtherCell__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_entityOnOtherCell;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex_2_entityOnOtherCell #";
	.
map:Complex_2_entityOnOtherCell_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_entityOnOtherCell;
	d2rq:property vocab:Complex_2_entityOnOtherCell_DB_ID;
	d2rq:column "Complex_2_entityOnOtherCell.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_2_entityOnOtherCell_entityOnOtherCell_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_entityOnOtherCell;
	d2rq:property vocab:Complex_2_entityOnOtherCell_entityOnOtherCell_rank;
	d2rq:column "Complex_2_entityOnOtherCell.entityOnOtherCell_rank";
	d2rq:datatype xsd:int;
	.
map:Complex_2_entityOnOtherCell_entityOnOtherCell a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_entityOnOtherCell;
	d2rq:property vocab:Complex_2_entityOnOtherCell_entityOnOtherCell;
	d2rq:column "Complex_2_entityOnOtherCell.entityOnOtherCell";
	d2rq:datatype xsd:int;
	.
map:Complex_2_entityOnOtherCell_entityOnOtherCell_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_entityOnOtherCell;
	d2rq:property vocab:Complex_2_entityOnOtherCell_entityOnOtherCell_class;
	d2rq:column "Complex_2_entityOnOtherCell.entityOnOtherCell_class";
	.

# Table Complex_2_hasComponent
map:Complex_2_hasComponent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Complex_2_hasComponent";
	d2rq:class vocab:Complex_2_hasComponent;
	.
map:Complex_2_hasComponent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasComponent;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex_2_hasComponent #";
	.
map:Complex_2_hasComponent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasComponent;
	d2rq:property vocab:Complex_2_hasComponent_DB_ID;
	d2rq:column "Complex_2_hasComponent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasComponent_hasComponent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasComponent;
	d2rq:property vocab:Complex_2_hasComponent_hasComponent_rank;
	d2rq:column "Complex_2_hasComponent.hasComponent_rank";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasComponent_hasComponent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasComponent;
	d2rq:property vocab:Complex_2_hasComponent_hasComponent;
	d2rq:column "Complex_2_hasComponent.hasComponent";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasComponent_hasComponent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasComponent;
	d2rq:property vocab:Complex_2_hasComponent_hasComponent_class;
	d2rq:column "Complex_2_hasComponent.hasComponent_class";
	.

# Table Complex_2_hasInstance
map:Complex_2_hasInstance a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Complex_2_hasInstance";
	d2rq:class vocab:Complex_2_hasInstance;
	.
map:Complex_2_hasInstance__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasInstance;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex_2_hasInstance #";
	.
map:Complex_2_hasInstance_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasInstance;
	d2rq:property vocab:Complex_2_hasInstance_DB_ID;
	d2rq:column "Complex_2_hasInstance.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasInstance_hasInstance_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasInstance;
	d2rq:property vocab:Complex_2_hasInstance_hasInstance_rank;
	d2rq:column "Complex_2_hasInstance.hasInstance_rank";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasInstance_hasInstance a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasInstance;
	d2rq:property vocab:Complex_2_hasInstance_hasInstance;
	d2rq:column "Complex_2_hasInstance.hasInstance";
	d2rq:datatype xsd:int;
	.
map:Complex_2_hasInstance_hasInstance_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_hasInstance;
	d2rq:property vocab:Complex_2_hasInstance_hasInstance_class;
	d2rq:column "Complex_2_hasInstance.hasInstance_class";
	.

# Table Complex_2_interactionIdentifier
map:Complex_2_interactionIdentifier a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Complex_2_interactionIdentifier";
	d2rq:class vocab:Complex_2_interactionIdentifier;
	.
map:Complex_2_interactionIdentifier__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_interactionIdentifier;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex_2_interactionIdentifier #";
	.
map:Complex_2_interactionIdentifier_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_interactionIdentifier;
	d2rq:property vocab:Complex_2_interactionIdentifier_DB_ID;
	d2rq:column "Complex_2_interactionIdentifier.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_2_interactionIdentifier_interactionIdentifier_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_interactionIdentifier;
	d2rq:property vocab:Complex_2_interactionIdentifier_interactionIdentifier_rank;
	d2rq:column "Complex_2_interactionIdentifier.interactionIdentifier_rank";
	d2rq:datatype xsd:int;
	.
map:Complex_2_interactionIdentifier_interactionIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_interactionIdentifier;
	d2rq:property vocab:Complex_2_interactionIdentifier_interactionIdentifier;
	d2rq:column "Complex_2_interactionIdentifier.interactionIdentifier";
	d2rq:datatype xsd:int;
	.
map:Complex_2_interactionIdentifier_interactionIdentifier_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_interactionIdentifier;
	d2rq:property vocab:Complex_2_interactionIdentifier_interactionIdentifier_class;
	d2rq:column "Complex_2_interactionIdentifier.interactionIdentifier_class";
	.

# Table Complex_2_species
map:Complex_2_species a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Complex_2_species";
	d2rq:class vocab:Complex_2_species;
	.
map:Complex_2_species__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_species;
	d2rq:property rdfs:label;
	d2rq:pattern "Complex_2_species #";
	.
map:Complex_2_species_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_species;
	d2rq:property vocab:Complex_2_species_DB_ID;
	d2rq:column "Complex_2_species.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Complex_2_species_species_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_species;
	d2rq:property vocab:Complex_2_species_species_rank;
	d2rq:column "Complex_2_species.species_rank";
	d2rq:datatype xsd:int;
	.
map:Complex_2_species_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_species;
	d2rq:property vocab:Complex_2_species_species;
	d2rq:column "Complex_2_species.species";
	d2rq:datatype xsd:int;
	.
map:Complex_2_species_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Complex_2_species;
	d2rq:property vocab:Complex_2_species_species_class;
	d2rq:column "Complex_2_species.species_class";
	.

# Table ConcurrentEventSet
map:ConcurrentEventSet a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ConcurrentEventSet/@@ConcurrentEventSet.DB_ID@@";
	d2rq:class vocab:ConcurrentEventSet;
	.
map:ConcurrentEventSet__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet;
	d2rq:property rdfs:label;
	d2rq:pattern "ConcurrentEventSet #@@ConcurrentEventSet.DB_ID@@";
	.
map:ConcurrentEventSet_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet;
	d2rq:property vocab:ConcurrentEventSet_DB_ID;
	d2rq:column "ConcurrentEventSet.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ConcurrentEventSet_2_concurrentEvents
map:ConcurrentEventSet_2_concurrentEvents a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ConcurrentEventSet_2_concurrentEvents";
	d2rq:class vocab:ConcurrentEventSet_2_concurrentEvents;
	.
map:ConcurrentEventSet_2_concurrentEvents__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_concurrentEvents;
	d2rq:property rdfs:label;
	d2rq:pattern "ConcurrentEventSet_2_concurrentEvents #";
	.
map:ConcurrentEventSet_2_concurrentEvents_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_concurrentEvents;
	d2rq:property vocab:ConcurrentEventSet_2_concurrentEvents_DB_ID;
	d2rq:column "ConcurrentEventSet_2_concurrentEvents.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_concurrentEvents_concurrentEvents_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_concurrentEvents;
	d2rq:property vocab:ConcurrentEventSet_2_concurrentEvents_concurrentEvents_rank;
	d2rq:column "ConcurrentEventSet_2_concurrentEvents.concurrentEvents_rank";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_concurrentEvents_concurrentEvents a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_concurrentEvents;
	d2rq:property vocab:ConcurrentEventSet_2_concurrentEvents_concurrentEvents;
	d2rq:column "ConcurrentEventSet_2_concurrentEvents.concurrentEvents";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_concurrentEvents_concurrentEvents_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_concurrentEvents;
	d2rq:property vocab:ConcurrentEventSet_2_concurrentEvents_concurrentEvents_class;
	d2rq:column "ConcurrentEventSet_2_concurrentEvents.concurrentEvents_class";
	.

# Table ConcurrentEventSet_2_focusEntity
map:ConcurrentEventSet_2_focusEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ConcurrentEventSet_2_focusEntity";
	d2rq:class vocab:ConcurrentEventSet_2_focusEntity;
	.
map:ConcurrentEventSet_2_focusEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_focusEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "ConcurrentEventSet_2_focusEntity #";
	.
map:ConcurrentEventSet_2_focusEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_focusEntity;
	d2rq:property vocab:ConcurrentEventSet_2_focusEntity_DB_ID;
	d2rq:column "ConcurrentEventSet_2_focusEntity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_focusEntity_focusEntity_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_focusEntity;
	d2rq:property vocab:ConcurrentEventSet_2_focusEntity_focusEntity_rank;
	d2rq:column "ConcurrentEventSet_2_focusEntity.focusEntity_rank";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_focusEntity_focusEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_focusEntity;
	d2rq:property vocab:ConcurrentEventSet_2_focusEntity_focusEntity;
	d2rq:column "ConcurrentEventSet_2_focusEntity.focusEntity";
	d2rq:datatype xsd:int;
	.
map:ConcurrentEventSet_2_focusEntity_focusEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ConcurrentEventSet_2_focusEntity;
	d2rq:property vocab:ConcurrentEventSet_2_focusEntity_focusEntity_class;
	d2rq:column "ConcurrentEventSet_2_focusEntity.focusEntity_class";
	.

# Table ControlledVocabulary
map:ControlledVocabulary a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ControlledVocabulary/@@ControlledVocabulary.DB_ID@@";
	d2rq:class vocab:ControlledVocabulary;
	.
map:ControlledVocabulary__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary;
	d2rq:property rdfs:label;
	d2rq:pattern "ControlledVocabulary #@@ControlledVocabulary.DB_ID@@";
	.
map:ControlledVocabulary_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary;
	d2rq:property vocab:ControlledVocabulary_DB_ID;
	d2rq:column "ControlledVocabulary.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ControlledVocabulary_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary;
	d2rq:property vocab:ControlledVocabulary_definition;
	d2rq:column "ControlledVocabulary.definition";
	.

# Table ControlledVocabulary_2_name
map:ControlledVocabulary_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ControlledVocabulary_2_name";
	d2rq:class vocab:ControlledVocabulary_2_name;
	.
map:ControlledVocabulary_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "ControlledVocabulary_2_name #";
	.
map:ControlledVocabulary_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary_2_name;
	d2rq:property vocab:ControlledVocabulary_2_name_DB_ID;
	d2rq:column "ControlledVocabulary_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ControlledVocabulary_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary_2_name;
	d2rq:property vocab:ControlledVocabulary_2_name_name_rank;
	d2rq:column "ControlledVocabulary_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:ControlledVocabulary_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ControlledVocabulary_2_name;
	d2rq:property vocab:ControlledVocabulary_2_name_name;
	d2rq:column "ControlledVocabulary_2_name.name";
	.

# Table DataModel
map:DataModel a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "DataModel";
	d2rq:class vocab:DataModel;
	.
map:DataModel__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property rdfs:label;
	d2rq:pattern "DataModel #";
	.
map:DataModel_thing a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_thing;
	d2rq:column "DataModel.thing";
	.
map:DataModel_thing_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_thing_class;
	d2rq:column "DataModel.thing_class";
	.
map:DataModel_property_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_property_name;
	d2rq:column "DataModel.property_name";
	.
map:DataModel_property_value a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_property_value;
	d2rq:column "DataModel.property_value";
	.
map:DataModel_property_value_type a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_property_value_type;
	d2rq:column "DataModel.property_value_type";
	.
map:DataModel_property_value_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DataModel;
	d2rq:property vocab:DataModel_property_value_rank;
	d2rq:column "DataModel.property_value_rank";
	d2rq:datatype xsd:int;
	.

# Table DatabaseIdentifier
map:DatabaseIdentifier a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "DatabaseIdentifier/@@DatabaseIdentifier.DB_ID@@";
	d2rq:class vocab:DatabaseIdentifier;
	.
map:DatabaseIdentifier__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier;
	d2rq:property rdfs:label;
	d2rq:pattern "DatabaseIdentifier #@@DatabaseIdentifier.DB_ID@@";
	.
map:DatabaseIdentifier_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier;
	d2rq:property vocab:DatabaseIdentifier_DB_ID;
	d2rq:column "DatabaseIdentifier.DB_ID";
	d2rq:datatype xsd:int;
	.
map:DatabaseIdentifier_identifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier;
	d2rq:property vocab:DatabaseIdentifier_identifier;
	d2rq:column "DatabaseIdentifier.identifier";
	.
map:DatabaseIdentifier_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier;
	d2rq:property vocab:DatabaseIdentifier_referenceDatabase;
	d2rq:column "DatabaseIdentifier.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:DatabaseIdentifier_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier;
	d2rq:property vocab:DatabaseIdentifier_referenceDatabase_class;
	d2rq:column "DatabaseIdentifier.referenceDatabase_class";
	.

# Table DatabaseIdentifier_2_crossReference
map:DatabaseIdentifier_2_crossReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "DatabaseIdentifier_2_crossReference";
	d2rq:class vocab:DatabaseIdentifier_2_crossReference;
	.
map:DatabaseIdentifier_2_crossReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier_2_crossReference;
	d2rq:property rdfs:label;
	d2rq:pattern "DatabaseIdentifier_2_crossReference #";
	.
map:DatabaseIdentifier_2_crossReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier_2_crossReference;
	d2rq:property vocab:DatabaseIdentifier_2_crossReference_DB_ID;
	d2rq:column "DatabaseIdentifier_2_crossReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:DatabaseIdentifier_2_crossReference_crossReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier_2_crossReference;
	d2rq:property vocab:DatabaseIdentifier_2_crossReference_crossReference_rank;
	d2rq:column "DatabaseIdentifier_2_crossReference.crossReference_rank";
	d2rq:datatype xsd:int;
	.
map:DatabaseIdentifier_2_crossReference_crossReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier_2_crossReference;
	d2rq:property vocab:DatabaseIdentifier_2_crossReference_crossReference;
	d2rq:column "DatabaseIdentifier_2_crossReference.crossReference";
	d2rq:datatype xsd:int;
	.
map:DatabaseIdentifier_2_crossReference_crossReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseIdentifier_2_crossReference;
	d2rq:property vocab:DatabaseIdentifier_2_crossReference_crossReference_class;
	d2rq:column "DatabaseIdentifier_2_crossReference.crossReference_class";
	.

# Table DatabaseObject
map:DatabaseObject a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "DatabaseObject/@@DatabaseObject.DB_ID@@";
	d2rq:class vocab:DatabaseObject;
	.
map:DatabaseObject__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property rdfs:label;
	d2rq:pattern "DatabaseObject #@@DatabaseObject.DB_ID@@";
	.
map:DatabaseObject_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject_DB_ID;
	d2rq:column "DatabaseObject.DB_ID";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject__Protege_id a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject__Protege_id;
	d2rq:column "DatabaseObject._Protege_id";
	.
map:DatabaseObject___is_ghost a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject___is_ghost;
	d2rq:column "DatabaseObject.__is_ghost";
	.
map:DatabaseObject__class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject__class;
	d2rq:column "DatabaseObject._class";
	.
map:DatabaseObject__displayName a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject__displayName;
	d2rq:column "DatabaseObject._displayName";
	.
map:DatabaseObject__timestamp a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject__timestamp;
	d2rq:column "DatabaseObject._timestamp";
	d2rq:datatype xsd:dateTime;
	d2rq:condition "DatabaseObject._timestamp != '0000'";
	.
map:DatabaseObject_created a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject_created;
	d2rq:column "DatabaseObject.created";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject_created_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject_created_class;
	d2rq:column "DatabaseObject.created_class";
	.
map:DatabaseObject_stableIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject_stableIdentifier;
	d2rq:column "DatabaseObject.stableIdentifier";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject_stableIdentifier_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject;
	d2rq:property vocab:DatabaseObject_stableIdentifier_class;
	d2rq:column "DatabaseObject.stableIdentifier_class";
	.

# Table DatabaseObject_2_modified
map:DatabaseObject_2_modified a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "DatabaseObject_2_modified";
	d2rq:class vocab:DatabaseObject_2_modified;
	.
map:DatabaseObject_2_modified__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject_2_modified;
	d2rq:property rdfs:label;
	d2rq:pattern "DatabaseObject_2_modified #";
	.
map:DatabaseObject_2_modified_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject_2_modified;
	d2rq:property vocab:DatabaseObject_2_modified_DB_ID;
	d2rq:column "DatabaseObject_2_modified.DB_ID";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject_2_modified_modified_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject_2_modified;
	d2rq:property vocab:DatabaseObject_2_modified_modified_rank;
	d2rq:column "DatabaseObject_2_modified.modified_rank";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject_2_modified_modified a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject_2_modified;
	d2rq:property vocab:DatabaseObject_2_modified_modified;
	d2rq:column "DatabaseObject_2_modified.modified";
	d2rq:datatype xsd:int;
	.
map:DatabaseObject_2_modified_modified_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DatabaseObject_2_modified;
	d2rq:property vocab:DatabaseObject_2_modified_modified_class;
	d2rq:column "DatabaseObject_2_modified.modified_class";
	.

# Table DefinedSet
map:DefinedSet a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "DefinedSet/@@DefinedSet.DB_ID@@";
	d2rq:class vocab:DefinedSet;
	.
map:DefinedSet__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DefinedSet;
	d2rq:property rdfs:label;
	d2rq:pattern "DefinedSet #@@DefinedSet.DB_ID@@";
	.
map:DefinedSet_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DefinedSet;
	d2rq:property vocab:DefinedSet_DB_ID;
	d2rq:column "DefinedSet.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table DeletedControlledVocabulary
map:DeletedControlledVocabulary a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "DeletedControlledVocabulary/@@DeletedControlledVocabulary.DB_ID@@";
	d2rq:class vocab:DeletedControlledVocabulary;
	.
map:DeletedControlledVocabulary__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DeletedControlledVocabulary;
	d2rq:property rdfs:label;
	d2rq:pattern "DeletedControlledVocabulary #@@DeletedControlledVocabulary.DB_ID@@";
	.
map:DeletedControlledVocabulary_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:DeletedControlledVocabulary;
	d2rq:property vocab:DeletedControlledVocabulary_DB_ID;
	d2rq:column "DeletedControlledVocabulary.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Depolymerisation
map:Depolymerisation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Depolymerisation/@@Depolymerisation.DB_ID@@";
	d2rq:class vocab:Depolymerisation;
	.
map:Depolymerisation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Depolymerisation;
	d2rq:property rdfs:label;
	d2rq:pattern "Depolymerisation #@@Depolymerisation.DB_ID@@";
	.
map:Depolymerisation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Depolymerisation;
	d2rq:property vocab:Depolymerisation_DB_ID;
	d2rq:column "Depolymerisation.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Domain
map:Domain a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Domain/@@Domain.DB_ID@@";
	d2rq:class vocab:Domain;
	.
map:Domain__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain;
	d2rq:property rdfs:label;
	d2rq:pattern "Domain #@@Domain.DB_ID@@";
	.
map:Domain_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain;
	d2rq:property vocab:Domain_DB_ID;
	d2rq:column "Domain.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Domain_2_name
map:Domain_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Domain_2_name";
	d2rq:class vocab:Domain_2_name;
	.
map:Domain_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "Domain_2_name #";
	.
map:Domain_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain_2_name;
	d2rq:property vocab:Domain_2_name_DB_ID;
	d2rq:column "Domain_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Domain_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain_2_name;
	d2rq:property vocab:Domain_2_name_name_rank;
	d2rq:column "Domain_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:Domain_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Domain_2_name;
	d2rq:property vocab:Domain_2_name_name;
	d2rq:column "Domain_2_name.name";
	.

# Table EntityCompartment
map:EntityCompartment a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "EntityCompartment/@@EntityCompartment.DB_ID@@";
	d2rq:class vocab:EntityCompartment;
	.
map:EntityCompartment__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityCompartment;
	d2rq:property rdfs:label;
	d2rq:pattern "EntityCompartment #@@EntityCompartment.DB_ID@@";
	.
map:EntityCompartment_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityCompartment;
	d2rq:property vocab:EntityCompartment_DB_ID;
	d2rq:column "EntityCompartment.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table EntitySet
map:EntitySet a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "EntitySet/@@EntitySet.DB_ID@@";
	d2rq:class vocab:EntitySet;
	.
map:EntitySet__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet;
	d2rq:property rdfs:label;
	d2rq:pattern "EntitySet #@@EntitySet.DB_ID@@";
	.
map:EntitySet_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet;
	d2rq:property vocab:EntitySet_DB_ID;
	d2rq:column "EntitySet.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EntitySet_totalProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet;
	d2rq:property vocab:EntitySet_totalProt;
	d2rq:column "EntitySet.totalProt";
	.
map:EntitySet_inferredProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet;
	d2rq:property vocab:EntitySet_inferredProt;
	d2rq:column "EntitySet.inferredProt";
	.
map:EntitySet_maxHomologues a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet;
	d2rq:property vocab:EntitySet_maxHomologues;
	d2rq:column "EntitySet.maxHomologues";
	.

# Table EntitySet_2_hasMember
map:EntitySet_2_hasMember a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "EntitySet_2_hasMember";
	d2rq:class vocab:EntitySet_2_hasMember;
	.
map:EntitySet_2_hasMember__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_hasMember;
	d2rq:property rdfs:label;
	d2rq:pattern "EntitySet_2_hasMember #";
	.
map:EntitySet_2_hasMember_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_hasMember;
	d2rq:property vocab:EntitySet_2_hasMember_DB_ID;
	d2rq:column "EntitySet_2_hasMember.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_hasMember_hasMember_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_hasMember;
	d2rq:property vocab:EntitySet_2_hasMember_hasMember_rank;
	d2rq:column "EntitySet_2_hasMember.hasMember_rank";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_hasMember_hasMember a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_hasMember;
	d2rq:property vocab:EntitySet_2_hasMember_hasMember;
	d2rq:column "EntitySet_2_hasMember.hasMember";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_hasMember_hasMember_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_hasMember;
	d2rq:property vocab:EntitySet_2_hasMember_hasMember_class;
	d2rq:column "EntitySet_2_hasMember.hasMember_class";
	.

# Table EntitySet_2_species
map:EntitySet_2_species a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "EntitySet_2_species";
	d2rq:class vocab:EntitySet_2_species;
	.
map:EntitySet_2_species__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_species;
	d2rq:property rdfs:label;
	d2rq:pattern "EntitySet_2_species #";
	.
map:EntitySet_2_species_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_species;
	d2rq:property vocab:EntitySet_2_species_DB_ID;
	d2rq:column "EntitySet_2_species.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_species_species_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_species;
	d2rq:property vocab:EntitySet_2_species_species_rank;
	d2rq:column "EntitySet_2_species.species_rank";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_species_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_species;
	d2rq:property vocab:EntitySet_2_species_species;
	d2rq:column "EntitySet_2_species.species";
	d2rq:datatype xsd:int;
	.
map:EntitySet_2_species_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntitySet_2_species;
	d2rq:property vocab:EntitySet_2_species_species_class;
	d2rq:column "EntitySet_2_species.species_class";
	.

# Table EntityWithAccessionedSequence
map:EntityWithAccessionedSequence a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "EntityWithAccessionedSequence/@@EntityWithAccessionedSequence.DB_ID@@";
	d2rq:class vocab:EntityWithAccessionedSequence;
	.
map:EntityWithAccessionedSequence__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property rdfs:label;
	d2rq:pattern "EntityWithAccessionedSequence #@@EntityWithAccessionedSequence.DB_ID@@";
	.
map:EntityWithAccessionedSequence_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property vocab:EntityWithAccessionedSequence_DB_ID;
	d2rq:column "EntityWithAccessionedSequence.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_endCoordinate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property vocab:EntityWithAccessionedSequence_endCoordinate;
	d2rq:column "EntityWithAccessionedSequence.endCoordinate";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_referenceEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property vocab:EntityWithAccessionedSequence_referenceEntity;
	d2rq:column "EntityWithAccessionedSequence.referenceEntity";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_referenceEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property vocab:EntityWithAccessionedSequence_referenceEntity_class;
	d2rq:column "EntityWithAccessionedSequence.referenceEntity_class";
	.
map:EntityWithAccessionedSequence_startCoordinate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence;
	d2rq:property vocab:EntityWithAccessionedSequence_startCoordinate;
	d2rq:column "EntityWithAccessionedSequence.startCoordinate";
	d2rq:datatype xsd:int;
	.

# Table EntityWithAccessionedSequence_2_hasModifiedResidue
map:EntityWithAccessionedSequence_2_hasModifiedResidue a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "EntityWithAccessionedSequence_2_hasModifiedResidue";
	d2rq:class vocab:EntityWithAccessionedSequence_2_hasModifiedResidue;
	.
map:EntityWithAccessionedSequence_2_hasModifiedResidue__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence_2_hasModifiedResidue;
	d2rq:property rdfs:label;
	d2rq:pattern "EntityWithAccessionedSequence_2_hasModifiedResidue #";
	.
map:EntityWithAccessionedSequence_2_hasModifiedResidue_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence_2_hasModifiedResidue;
	d2rq:property vocab:EntityWithAccessionedSequence_2_hasModifiedResidue_DB_ID;
	d2rq:column "EntityWithAccessionedSequence_2_hasModifiedResidue.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence_2_hasModifiedResidue;
	d2rq:property vocab:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue_rank;
	d2rq:column "EntityWithAccessionedSequence_2_hasModifiedResidue.hasModifiedResidue_rank";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence_2_hasModifiedResidue;
	d2rq:property vocab:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue;
	d2rq:column "EntityWithAccessionedSequence_2_hasModifiedResidue.hasModifiedResidue";
	d2rq:datatype xsd:int;
	.
map:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EntityWithAccessionedSequence_2_hasModifiedResidue;
	d2rq:property vocab:EntityWithAccessionedSequence_2_hasModifiedResidue_hasModifiedResidue_class;
	d2rq:column "EntityWithAccessionedSequence_2_hasModifiedResidue.hasModifiedResidue_class";
	.

# Table Event
map:Event a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Event/@@Event.DB_ID@@";
	d2rq:class vocab:Event;
	.
map:Event__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property rdfs:label;
	d2rq:pattern "Event #@@Event.DB_ID@@";
	.
map:Event_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_DB_ID;
	d2rq:column "Event.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event__doRelease a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event__doRelease;
	d2rq:column "Event._doRelease";
	.
map:Event_authored a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_authored;
	d2rq:column "Event.authored";
	d2rq:datatype xsd:int;
	.
map:Event_authored_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_authored_class;
	d2rq:column "Event.authored_class";
	.
map:Event_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_definition;
	d2rq:column "Event.definition";
	.
map:Event_evidenceType a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_evidenceType;
	d2rq:column "Event.evidenceType";
	d2rq:datatype xsd:int;
	.
map:Event_evidenceType_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_evidenceType_class;
	d2rq:column "Event.evidenceType_class";
	.
map:Event_goBiologicalProcess a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_goBiologicalProcess;
	d2rq:column "Event.goBiologicalProcess";
	d2rq:datatype xsd:int;
	.
map:Event_goBiologicalProcess_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_goBiologicalProcess_class;
	d2rq:column "Event.goBiologicalProcess_class";
	.
map:Event_releaseDate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event;
	d2rq:property vocab:Event_releaseDate;
	d2rq:column "Event.releaseDate";
	d2rq:datatype xsd:date;
	d2rq:condition "Event.releaseDate != '0000'";
	.

# Table Event_2_compartment
map:Event_2_compartment a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_compartment";
	d2rq:class vocab:Event_2_compartment;
	.
map:Event_2_compartment__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_compartment;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_compartment #";
	.
map:Event_2_compartment_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_compartment;
	d2rq:property vocab:Event_2_compartment_DB_ID;
	d2rq:column "Event_2_compartment.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_compartment_compartment_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_compartment;
	d2rq:property vocab:Event_2_compartment_compartment_rank;
	d2rq:column "Event_2_compartment.compartment_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_compartment_compartment a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_compartment;
	d2rq:property vocab:Event_2_compartment_compartment;
	d2rq:column "Event_2_compartment.compartment";
	d2rq:datatype xsd:int;
	.
map:Event_2_compartment_compartment_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_compartment;
	d2rq:property vocab:Event_2_compartment_compartment_class;
	d2rq:column "Event_2_compartment.compartment_class";
	.

# Table Event_2_crossReference
map:Event_2_crossReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_crossReference";
	d2rq:class vocab:Event_2_crossReference;
	.
map:Event_2_crossReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_crossReference;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_crossReference #";
	.
map:Event_2_crossReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_crossReference;
	d2rq:property vocab:Event_2_crossReference_DB_ID;
	d2rq:column "Event_2_crossReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_crossReference_crossReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_crossReference;
	d2rq:property vocab:Event_2_crossReference_crossReference_rank;
	d2rq:column "Event_2_crossReference.crossReference_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_crossReference_crossReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_crossReference;
	d2rq:property vocab:Event_2_crossReference_crossReference;
	d2rq:column "Event_2_crossReference.crossReference";
	d2rq:datatype xsd:int;
	.
map:Event_2_crossReference_crossReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_crossReference;
	d2rq:property vocab:Event_2_crossReference_crossReference_class;
	d2rq:column "Event_2_crossReference.crossReference_class";
	.

# Table Event_2_edited
map:Event_2_edited a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_edited";
	d2rq:class vocab:Event_2_edited;
	.
map:Event_2_edited__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_edited;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_edited #";
	.
map:Event_2_edited_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_edited;
	d2rq:property vocab:Event_2_edited_DB_ID;
	d2rq:column "Event_2_edited.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_edited_edited_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_edited;
	d2rq:property vocab:Event_2_edited_edited_rank;
	d2rq:column "Event_2_edited.edited_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_edited_edited a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_edited;
	d2rq:property vocab:Event_2_edited_edited;
	d2rq:column "Event_2_edited.edited";
	d2rq:datatype xsd:int;
	.
map:Event_2_edited_edited_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_edited;
	d2rq:property vocab:Event_2_edited_edited_class;
	d2rq:column "Event_2_edited.edited_class";
	.

# Table Event_2_figure
map:Event_2_figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_figure";
	d2rq:class vocab:Event_2_figure;
	.
map:Event_2_figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_figure;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_figure #";
	.
map:Event_2_figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_figure;
	d2rq:property vocab:Event_2_figure_DB_ID;
	d2rq:column "Event_2_figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_figure_figure_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_figure;
	d2rq:property vocab:Event_2_figure_figure_rank;
	d2rq:column "Event_2_figure.figure_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_figure_figure a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_figure;
	d2rq:property vocab:Event_2_figure_figure;
	d2rq:column "Event_2_figure.figure";
	d2rq:datatype xsd:int;
	.
map:Event_2_figure_figure_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_figure;
	d2rq:property vocab:Event_2_figure_figure_class;
	d2rq:column "Event_2_figure.figure_class";
	.

# Table Event_2_inferredFrom
map:Event_2_inferredFrom a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_inferredFrom";
	d2rq:class vocab:Event_2_inferredFrom;
	.
map:Event_2_inferredFrom__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_inferredFrom;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_inferredFrom #";
	.
map:Event_2_inferredFrom_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_inferredFrom;
	d2rq:property vocab:Event_2_inferredFrom_DB_ID;
	d2rq:column "Event_2_inferredFrom.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_inferredFrom_inferredFrom_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_inferredFrom;
	d2rq:property vocab:Event_2_inferredFrom_inferredFrom_rank;
	d2rq:column "Event_2_inferredFrom.inferredFrom_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_inferredFrom_inferredFrom a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_inferredFrom;
	d2rq:property vocab:Event_2_inferredFrom_inferredFrom;
	d2rq:column "Event_2_inferredFrom.inferredFrom";
	d2rq:datatype xsd:int;
	.
map:Event_2_inferredFrom_inferredFrom_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_inferredFrom;
	d2rq:property vocab:Event_2_inferredFrom_inferredFrom_class;
	d2rq:column "Event_2_inferredFrom.inferredFrom_class";
	.

# Table Event_2_literatureReference
map:Event_2_literatureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_literatureReference";
	d2rq:class vocab:Event_2_literatureReference;
	.
map:Event_2_literatureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_literatureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_literatureReference #";
	.
map:Event_2_literatureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_literatureReference;
	d2rq:property vocab:Event_2_literatureReference_DB_ID;
	d2rq:column "Event_2_literatureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_literatureReference_literatureReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_literatureReference;
	d2rq:property vocab:Event_2_literatureReference_literatureReference_rank;
	d2rq:column "Event_2_literatureReference.literatureReference_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_literatureReference_literatureReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_literatureReference;
	d2rq:property vocab:Event_2_literatureReference_literatureReference;
	d2rq:column "Event_2_literatureReference.literatureReference";
	d2rq:datatype xsd:int;
	.
map:Event_2_literatureReference_literatureReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_literatureReference;
	d2rq:property vocab:Event_2_literatureReference_literatureReference_class;
	d2rq:column "Event_2_literatureReference.literatureReference_class";
	.

# Table Event_2_name
map:Event_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_name";
	d2rq:class vocab:Event_2_name;
	.
map:Event_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_name #";
	.
map:Event_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_name;
	d2rq:property vocab:Event_2_name_DB_ID;
	d2rq:column "Event_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_name;
	d2rq:property vocab:Event_2_name_name_rank;
	d2rq:column "Event_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_name;
	d2rq:property vocab:Event_2_name_name;
	d2rq:column "Event_2_name.name";
	.

# Table Event_2_orthologousEvent
map:Event_2_orthologousEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_orthologousEvent";
	d2rq:class vocab:Event_2_orthologousEvent;
	.
map:Event_2_orthologousEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_orthologousEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_orthologousEvent #";
	.
map:Event_2_orthologousEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_orthologousEvent;
	d2rq:property vocab:Event_2_orthologousEvent_DB_ID;
	d2rq:column "Event_2_orthologousEvent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_orthologousEvent_orthologousEvent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_orthologousEvent;
	d2rq:property vocab:Event_2_orthologousEvent_orthologousEvent_rank;
	d2rq:column "Event_2_orthologousEvent.orthologousEvent_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_orthologousEvent_orthologousEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_orthologousEvent;
	d2rq:property vocab:Event_2_orthologousEvent_orthologousEvent;
	d2rq:column "Event_2_orthologousEvent.orthologousEvent";
	d2rq:datatype xsd:int;
	.
map:Event_2_orthologousEvent_orthologousEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_orthologousEvent;
	d2rq:property vocab:Event_2_orthologousEvent_orthologousEvent_class;
	d2rq:column "Event_2_orthologousEvent.orthologousEvent_class";
	.

# Table Event_2_precedingEvent
map:Event_2_precedingEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_precedingEvent";
	d2rq:class vocab:Event_2_precedingEvent;
	.
map:Event_2_precedingEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_precedingEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_precedingEvent #";
	.
map:Event_2_precedingEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_precedingEvent;
	d2rq:property vocab:Event_2_precedingEvent_DB_ID;
	d2rq:column "Event_2_precedingEvent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_precedingEvent_precedingEvent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_precedingEvent;
	d2rq:property vocab:Event_2_precedingEvent_precedingEvent_rank;
	d2rq:column "Event_2_precedingEvent.precedingEvent_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_precedingEvent_precedingEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_precedingEvent;
	d2rq:property vocab:Event_2_precedingEvent_precedingEvent;
	d2rq:column "Event_2_precedingEvent.precedingEvent";
	d2rq:datatype xsd:int;
	.
map:Event_2_precedingEvent_precedingEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_precedingEvent;
	d2rq:property vocab:Event_2_precedingEvent_precedingEvent_class;
	d2rq:column "Event_2_precedingEvent.precedingEvent_class";
	.

# Table Event_2_reviewed
map:Event_2_reviewed a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_reviewed";
	d2rq:class vocab:Event_2_reviewed;
	.
map:Event_2_reviewed__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_reviewed;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_reviewed #";
	.
map:Event_2_reviewed_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_reviewed;
	d2rq:property vocab:Event_2_reviewed_DB_ID;
	d2rq:column "Event_2_reviewed.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_reviewed_reviewed_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_reviewed;
	d2rq:property vocab:Event_2_reviewed_reviewed_rank;
	d2rq:column "Event_2_reviewed.reviewed_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_reviewed_reviewed a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_reviewed;
	d2rq:property vocab:Event_2_reviewed_reviewed;
	d2rq:column "Event_2_reviewed.reviewed";
	d2rq:datatype xsd:int;
	.
map:Event_2_reviewed_reviewed_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_reviewed;
	d2rq:property vocab:Event_2_reviewed_reviewed_class;
	d2rq:column "Event_2_reviewed.reviewed_class";
	.

# Table Event_2_revised
map:Event_2_revised a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_revised";
	d2rq:class vocab:Event_2_revised;
	.
map:Event_2_revised__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_revised;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_revised #";
	.
map:Event_2_revised_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_revised;
	d2rq:property vocab:Event_2_revised_DB_ID;
	d2rq:column "Event_2_revised.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_revised_revised_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_revised;
	d2rq:property vocab:Event_2_revised_revised_rank;
	d2rq:column "Event_2_revised.revised_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_revised_revised a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_revised;
	d2rq:property vocab:Event_2_revised_revised;
	d2rq:column "Event_2_revised.revised";
	d2rq:datatype xsd:int;
	.
map:Event_2_revised_revised_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_revised;
	d2rq:property vocab:Event_2_revised_revised_class;
	d2rq:column "Event_2_revised.revised_class";
	.

# Table Event_2_species
map:Event_2_species a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_species";
	d2rq:class vocab:Event_2_species;
	.
map:Event_2_species__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_species;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_species #";
	.
map:Event_2_species_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_species;
	d2rq:property vocab:Event_2_species_DB_ID;
	d2rq:column "Event_2_species.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_species_species_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_species;
	d2rq:property vocab:Event_2_species_species_rank;
	d2rq:column "Event_2_species.species_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_species_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_species;
	d2rq:property vocab:Event_2_species_species;
	d2rq:column "Event_2_species.species";
	d2rq:datatype xsd:int;
	.
map:Event_2_species_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_species;
	d2rq:property vocab:Event_2_species_species_class;
	d2rq:column "Event_2_species.species_class";
	.

# Table Event_2_summation
map:Event_2_summation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Event_2_summation";
	d2rq:class vocab:Event_2_summation;
	.
map:Event_2_summation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_summation;
	d2rq:property rdfs:label;
	d2rq:pattern "Event_2_summation #";
	.
map:Event_2_summation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_summation;
	d2rq:property vocab:Event_2_summation_DB_ID;
	d2rq:column "Event_2_summation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Event_2_summation_summation_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_summation;
	d2rq:property vocab:Event_2_summation_summation_rank;
	d2rq:column "Event_2_summation.summation_rank";
	d2rq:datatype xsd:int;
	.
map:Event_2_summation_summation a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_summation;
	d2rq:property vocab:Event_2_summation_summation;
	d2rq:column "Event_2_summation.summation";
	d2rq:datatype xsd:int;
	.
map:Event_2_summation_summation_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Event_2_summation;
	d2rq:property vocab:Event_2_summation_summation_class;
	d2rq:column "Event_2_summation.summation_class";
	.

# Table EvidenceType
map:EvidenceType a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "EvidenceType/@@EvidenceType.DB_ID@@";
	d2rq:class vocab:EvidenceType;
	.
map:EvidenceType__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType;
	d2rq:property rdfs:label;
	d2rq:pattern "EvidenceType #@@EvidenceType.DB_ID@@";
	.
map:EvidenceType_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType;
	d2rq:property vocab:EvidenceType_DB_ID;
	d2rq:column "EvidenceType.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType;
	d2rq:property vocab:EvidenceType_definition;
	d2rq:column "EvidenceType.definition";
	.

# Table EvidenceType_2_instanceOf
map:EvidenceType_2_instanceOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "EvidenceType_2_instanceOf";
	d2rq:class vocab:EvidenceType_2_instanceOf;
	.
map:EvidenceType_2_instanceOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_instanceOf;
	d2rq:property rdfs:label;
	d2rq:pattern "EvidenceType_2_instanceOf #";
	.
map:EvidenceType_2_instanceOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_instanceOf;
	d2rq:property vocab:EvidenceType_2_instanceOf_DB_ID;
	d2rq:column "EvidenceType_2_instanceOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_2_instanceOf_instanceOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_instanceOf;
	d2rq:property vocab:EvidenceType_2_instanceOf_instanceOf_rank;
	d2rq:column "EvidenceType_2_instanceOf.instanceOf_rank";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_2_instanceOf_instanceOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_instanceOf;
	d2rq:property vocab:EvidenceType_2_instanceOf_instanceOf;
	d2rq:column "EvidenceType_2_instanceOf.instanceOf";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_2_instanceOf_instanceOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_instanceOf;
	d2rq:property vocab:EvidenceType_2_instanceOf_instanceOf_class;
	d2rq:column "EvidenceType_2_instanceOf.instanceOf_class";
	.

# Table EvidenceType_2_name
map:EvidenceType_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "EvidenceType_2_name";
	d2rq:class vocab:EvidenceType_2_name;
	.
map:EvidenceType_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "EvidenceType_2_name #";
	.
map:EvidenceType_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_name;
	d2rq:property vocab:EvidenceType_2_name_DB_ID;
	d2rq:column "EvidenceType_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_name;
	d2rq:property vocab:EvidenceType_2_name_name_rank;
	d2rq:column "EvidenceType_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:EvidenceType_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:EvidenceType_2_name;
	d2rq:property vocab:EvidenceType_2_name_name;
	d2rq:column "EvidenceType_2_name.name";
	.

# Table Figure
map:Figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Figure/@@Figure.DB_ID@@";
	d2rq:class vocab:Figure;
	.
map:Figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Figure;
	d2rq:property rdfs:label;
	d2rq:pattern "Figure #@@Figure.DB_ID@@";
	.
map:Figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Figure;
	d2rq:property vocab:Figure_DB_ID;
	d2rq:column "Figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Figure_url a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Figure;
	d2rq:property vocab:Figure_url;
	d2rq:column "Figure.url";
	.

# Table FrontPage
map:FrontPage a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "FrontPage/@@FrontPage.DB_ID@@";
	d2rq:class vocab:FrontPage;
	.
map:FrontPage__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage;
	d2rq:property rdfs:label;
	d2rq:pattern "FrontPage #@@FrontPage.DB_ID@@";
	.
map:FrontPage_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage;
	d2rq:property vocab:FrontPage_DB_ID;
	d2rq:column "FrontPage.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table FrontPage_2_frontPageItem
map:FrontPage_2_frontPageItem a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "FrontPage_2_frontPageItem";
	d2rq:class vocab:FrontPage_2_frontPageItem;
	.
map:FrontPage_2_frontPageItem__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage_2_frontPageItem;
	d2rq:property rdfs:label;
	d2rq:pattern "FrontPage_2_frontPageItem #";
	.
map:FrontPage_2_frontPageItem_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage_2_frontPageItem;
	d2rq:property vocab:FrontPage_2_frontPageItem_DB_ID;
	d2rq:column "FrontPage_2_frontPageItem.DB_ID";
	d2rq:datatype xsd:int;
	.
map:FrontPage_2_frontPageItem_frontPageItem_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage_2_frontPageItem;
	d2rq:property vocab:FrontPage_2_frontPageItem_frontPageItem_rank;
	d2rq:column "FrontPage_2_frontPageItem.frontPageItem_rank";
	d2rq:datatype xsd:int;
	.
map:FrontPage_2_frontPageItem_frontPageItem a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage_2_frontPageItem;
	d2rq:property vocab:FrontPage_2_frontPageItem_frontPageItem;
	d2rq:column "FrontPage_2_frontPageItem.frontPageItem";
	d2rq:datatype xsd:int;
	.
map:FrontPage_2_frontPageItem_frontPageItem_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:FrontPage_2_frontPageItem;
	d2rq:property vocab:FrontPage_2_frontPageItem_frontPageItem_class;
	d2rq:column "FrontPage_2_frontPageItem.frontPageItem_class";
	.

# Table GO_BiologicalProcess
map:GO_BiologicalProcess a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "GO_BiologicalProcess/@@GO_BiologicalProcess.DB_ID@@";
	d2rq:class vocab:GO_BiologicalProcess;
	.
map:GO_BiologicalProcess__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_BiologicalProcess #@@GO_BiologicalProcess.DB_ID@@";
	.
map:GO_BiologicalProcess_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property vocab:GO_BiologicalProcess_DB_ID;
	d2rq:column "GO_BiologicalProcess.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_accession a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property vocab:GO_BiologicalProcess_accession;
	d2rq:column "GO_BiologicalProcess.accession";
	.
map:GO_BiologicalProcess_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property vocab:GO_BiologicalProcess_definition;
	d2rq:column "GO_BiologicalProcess.definition";
	.
map:GO_BiologicalProcess_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property vocab:GO_BiologicalProcess_referenceDatabase;
	d2rq:column "GO_BiologicalProcess.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess;
	d2rq:property vocab:GO_BiologicalProcess_referenceDatabase_class;
	d2rq:column "GO_BiologicalProcess.referenceDatabase_class";
	.

# Table GO_BiologicalProcess_2_componentOf
map:GO_BiologicalProcess_2_componentOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_BiologicalProcess_2_componentOf";
	d2rq:class vocab:GO_BiologicalProcess_2_componentOf;
	.
map:GO_BiologicalProcess_2_componentOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_componentOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_BiologicalProcess_2_componentOf #";
	.
map:GO_BiologicalProcess_2_componentOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_componentOf;
	d2rq:property vocab:GO_BiologicalProcess_2_componentOf_DB_ID;
	d2rq:column "GO_BiologicalProcess_2_componentOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_componentOf_componentOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_componentOf;
	d2rq:property vocab:GO_BiologicalProcess_2_componentOf_componentOf_rank;
	d2rq:column "GO_BiologicalProcess_2_componentOf.componentOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_componentOf_componentOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_componentOf;
	d2rq:property vocab:GO_BiologicalProcess_2_componentOf_componentOf;
	d2rq:column "GO_BiologicalProcess_2_componentOf.componentOf";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_componentOf_componentOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_componentOf;
	d2rq:property vocab:GO_BiologicalProcess_2_componentOf_componentOf_class;
	d2rq:column "GO_BiologicalProcess_2_componentOf.componentOf_class";
	.

# Table GO_BiologicalProcess_2_instanceOf
map:GO_BiologicalProcess_2_instanceOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_BiologicalProcess_2_instanceOf";
	d2rq:class vocab:GO_BiologicalProcess_2_instanceOf;
	.
map:GO_BiologicalProcess_2_instanceOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_instanceOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_BiologicalProcess_2_instanceOf #";
	.
map:GO_BiologicalProcess_2_instanceOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_instanceOf;
	d2rq:property vocab:GO_BiologicalProcess_2_instanceOf_DB_ID;
	d2rq:column "GO_BiologicalProcess_2_instanceOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_instanceOf_instanceOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_instanceOf;
	d2rq:property vocab:GO_BiologicalProcess_2_instanceOf_instanceOf_rank;
	d2rq:column "GO_BiologicalProcess_2_instanceOf.instanceOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_instanceOf_instanceOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_instanceOf;
	d2rq:property vocab:GO_BiologicalProcess_2_instanceOf_instanceOf;
	d2rq:column "GO_BiologicalProcess_2_instanceOf.instanceOf";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_instanceOf_instanceOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_instanceOf;
	d2rq:property vocab:GO_BiologicalProcess_2_instanceOf_instanceOf_class;
	d2rq:column "GO_BiologicalProcess_2_instanceOf.instanceOf_class";
	.

# Table GO_BiologicalProcess_2_name
map:GO_BiologicalProcess_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_BiologicalProcess_2_name";
	d2rq:class vocab:GO_BiologicalProcess_2_name;
	.
map:GO_BiologicalProcess_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_BiologicalProcess_2_name #";
	.
map:GO_BiologicalProcess_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_name;
	d2rq:property vocab:GO_BiologicalProcess_2_name_DB_ID;
	d2rq:column "GO_BiologicalProcess_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_name;
	d2rq:property vocab:GO_BiologicalProcess_2_name_name_rank;
	d2rq:column "GO_BiologicalProcess_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:GO_BiologicalProcess_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_BiologicalProcess_2_name;
	d2rq:property vocab:GO_BiologicalProcess_2_name_name;
	d2rq:column "GO_BiologicalProcess_2_name.name";
	.

# Table GO_CellularComponent
map:GO_CellularComponent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "GO_CellularComponent/@@GO_CellularComponent.DB_ID@@";
	d2rq:class vocab:GO_CellularComponent;
	.
map:GO_CellularComponent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_CellularComponent #@@GO_CellularComponent.DB_ID@@";
	.
map:GO_CellularComponent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property vocab:GO_CellularComponent_DB_ID;
	d2rq:column "GO_CellularComponent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_accession a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property vocab:GO_CellularComponent_accession;
	d2rq:column "GO_CellularComponent.accession";
	.
map:GO_CellularComponent_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property vocab:GO_CellularComponent_definition;
	d2rq:column "GO_CellularComponent.definition";
	.
map:GO_CellularComponent_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property vocab:GO_CellularComponent_referenceDatabase;
	d2rq:column "GO_CellularComponent.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent;
	d2rq:property vocab:GO_CellularComponent_referenceDatabase_class;
	d2rq:column "GO_CellularComponent.referenceDatabase_class";
	.

# Table GO_CellularComponent_2_componentOf
map:GO_CellularComponent_2_componentOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_CellularComponent_2_componentOf";
	d2rq:class vocab:GO_CellularComponent_2_componentOf;
	.
map:GO_CellularComponent_2_componentOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_componentOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_CellularComponent_2_componentOf #";
	.
map:GO_CellularComponent_2_componentOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_componentOf;
	d2rq:property vocab:GO_CellularComponent_2_componentOf_DB_ID;
	d2rq:column "GO_CellularComponent_2_componentOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_componentOf_componentOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_componentOf;
	d2rq:property vocab:GO_CellularComponent_2_componentOf_componentOf_rank;
	d2rq:column "GO_CellularComponent_2_componentOf.componentOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_componentOf_componentOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_componentOf;
	d2rq:property vocab:GO_CellularComponent_2_componentOf_componentOf;
	d2rq:column "GO_CellularComponent_2_componentOf.componentOf";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_componentOf_componentOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_componentOf;
	d2rq:property vocab:GO_CellularComponent_2_componentOf_componentOf_class;
	d2rq:column "GO_CellularComponent_2_componentOf.componentOf_class";
	.

# Table GO_CellularComponent_2_instanceOf
map:GO_CellularComponent_2_instanceOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_CellularComponent_2_instanceOf";
	d2rq:class vocab:GO_CellularComponent_2_instanceOf;
	.
map:GO_CellularComponent_2_instanceOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_instanceOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_CellularComponent_2_instanceOf #";
	.
map:GO_CellularComponent_2_instanceOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_instanceOf;
	d2rq:property vocab:GO_CellularComponent_2_instanceOf_DB_ID;
	d2rq:column "GO_CellularComponent_2_instanceOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_instanceOf_instanceOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_instanceOf;
	d2rq:property vocab:GO_CellularComponent_2_instanceOf_instanceOf_rank;
	d2rq:column "GO_CellularComponent_2_instanceOf.instanceOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_instanceOf_instanceOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_instanceOf;
	d2rq:property vocab:GO_CellularComponent_2_instanceOf_instanceOf;
	d2rq:column "GO_CellularComponent_2_instanceOf.instanceOf";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_instanceOf_instanceOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_instanceOf;
	d2rq:property vocab:GO_CellularComponent_2_instanceOf_instanceOf_class;
	d2rq:column "GO_CellularComponent_2_instanceOf.instanceOf_class";
	.

# Table GO_CellularComponent_2_name
map:GO_CellularComponent_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_CellularComponent_2_name";
	d2rq:class vocab:GO_CellularComponent_2_name;
	.
map:GO_CellularComponent_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_CellularComponent_2_name #";
	.
map:GO_CellularComponent_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_name;
	d2rq:property vocab:GO_CellularComponent_2_name_DB_ID;
	d2rq:column "GO_CellularComponent_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_name;
	d2rq:property vocab:GO_CellularComponent_2_name_name_rank;
	d2rq:column "GO_CellularComponent_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:GO_CellularComponent_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_CellularComponent_2_name;
	d2rq:property vocab:GO_CellularComponent_2_name_name;
	d2rq:column "GO_CellularComponent_2_name.name";
	.

# Table GO_MolecularFunction
map:GO_MolecularFunction a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "GO_MolecularFunction/@@GO_MolecularFunction.DB_ID@@";
	d2rq:class vocab:GO_MolecularFunction;
	.
map:GO_MolecularFunction__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_MolecularFunction #@@GO_MolecularFunction.DB_ID@@";
	.
map:GO_MolecularFunction_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property vocab:GO_MolecularFunction_DB_ID;
	d2rq:column "GO_MolecularFunction.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_accession a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property vocab:GO_MolecularFunction_accession;
	d2rq:column "GO_MolecularFunction.accession";
	.
map:GO_MolecularFunction_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property vocab:GO_MolecularFunction_definition;
	d2rq:column "GO_MolecularFunction.definition";
	.
map:GO_MolecularFunction_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property vocab:GO_MolecularFunction_referenceDatabase;
	d2rq:column "GO_MolecularFunction.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction;
	d2rq:property vocab:GO_MolecularFunction_referenceDatabase_class;
	d2rq:column "GO_MolecularFunction.referenceDatabase_class";
	.

# Table GO_MolecularFunction_2_componentOf
map:GO_MolecularFunction_2_componentOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_MolecularFunction_2_componentOf";
	d2rq:class vocab:GO_MolecularFunction_2_componentOf;
	.
map:GO_MolecularFunction_2_componentOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_componentOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_MolecularFunction_2_componentOf #";
	.
map:GO_MolecularFunction_2_componentOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_componentOf;
	d2rq:property vocab:GO_MolecularFunction_2_componentOf_DB_ID;
	d2rq:column "GO_MolecularFunction_2_componentOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_componentOf_componentOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_componentOf;
	d2rq:property vocab:GO_MolecularFunction_2_componentOf_componentOf_rank;
	d2rq:column "GO_MolecularFunction_2_componentOf.componentOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_componentOf_componentOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_componentOf;
	d2rq:property vocab:GO_MolecularFunction_2_componentOf_componentOf;
	d2rq:column "GO_MolecularFunction_2_componentOf.componentOf";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_componentOf_componentOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_componentOf;
	d2rq:property vocab:GO_MolecularFunction_2_componentOf_componentOf_class;
	d2rq:column "GO_MolecularFunction_2_componentOf.componentOf_class";
	.

# Table GO_MolecularFunction_2_ecNumber
map:GO_MolecularFunction_2_ecNumber a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_MolecularFunction_2_ecNumber";
	d2rq:class vocab:GO_MolecularFunction_2_ecNumber;
	.
map:GO_MolecularFunction_2_ecNumber__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_ecNumber;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_MolecularFunction_2_ecNumber #";
	.
map:GO_MolecularFunction_2_ecNumber_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_ecNumber;
	d2rq:property vocab:GO_MolecularFunction_2_ecNumber_DB_ID;
	d2rq:column "GO_MolecularFunction_2_ecNumber.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_ecNumber_ecNumber_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_ecNumber;
	d2rq:property vocab:GO_MolecularFunction_2_ecNumber_ecNumber_rank;
	d2rq:column "GO_MolecularFunction_2_ecNumber.ecNumber_rank";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_ecNumber_ecNumber a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_ecNumber;
	d2rq:property vocab:GO_MolecularFunction_2_ecNumber_ecNumber;
	d2rq:column "GO_MolecularFunction_2_ecNumber.ecNumber";
	.

# Table GO_MolecularFunction_2_instanceOf
map:GO_MolecularFunction_2_instanceOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_MolecularFunction_2_instanceOf";
	d2rq:class vocab:GO_MolecularFunction_2_instanceOf;
	.
map:GO_MolecularFunction_2_instanceOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_instanceOf;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_MolecularFunction_2_instanceOf #";
	.
map:GO_MolecularFunction_2_instanceOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_instanceOf;
	d2rq:property vocab:GO_MolecularFunction_2_instanceOf_DB_ID;
	d2rq:column "GO_MolecularFunction_2_instanceOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_instanceOf_instanceOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_instanceOf;
	d2rq:property vocab:GO_MolecularFunction_2_instanceOf_instanceOf_rank;
	d2rq:column "GO_MolecularFunction_2_instanceOf.instanceOf_rank";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_instanceOf_instanceOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_instanceOf;
	d2rq:property vocab:GO_MolecularFunction_2_instanceOf_instanceOf;
	d2rq:column "GO_MolecularFunction_2_instanceOf.instanceOf";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_instanceOf_instanceOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_instanceOf;
	d2rq:property vocab:GO_MolecularFunction_2_instanceOf_instanceOf_class;
	d2rq:column "GO_MolecularFunction_2_instanceOf.instanceOf_class";
	.

# Table GO_MolecularFunction_2_name
map:GO_MolecularFunction_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GO_MolecularFunction_2_name";
	d2rq:class vocab:GO_MolecularFunction_2_name;
	.
map:GO_MolecularFunction_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "GO_MolecularFunction_2_name #";
	.
map:GO_MolecularFunction_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_name;
	d2rq:property vocab:GO_MolecularFunction_2_name_DB_ID;
	d2rq:column "GO_MolecularFunction_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_name;
	d2rq:property vocab:GO_MolecularFunction_2_name_name_rank;
	d2rq:column "GO_MolecularFunction_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:GO_MolecularFunction_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GO_MolecularFunction_2_name;
	d2rq:property vocab:GO_MolecularFunction_2_name_name;
	d2rq:column "GO_MolecularFunction_2_name.name";
	.

# Table GenericDomain
map:GenericDomain a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "GenericDomain/@@GenericDomain.DB_ID@@";
	d2rq:class vocab:GenericDomain;
	.
map:GenericDomain__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain;
	d2rq:property rdfs:label;
	d2rq:pattern "GenericDomain #@@GenericDomain.DB_ID@@";
	.
map:GenericDomain_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain;
	d2rq:property vocab:GenericDomain_DB_ID;
	d2rq:column "GenericDomain.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table GenericDomain_2_hasInstance
map:GenericDomain_2_hasInstance a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "GenericDomain_2_hasInstance";
	d2rq:class vocab:GenericDomain_2_hasInstance;
	.
map:GenericDomain_2_hasInstance__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain_2_hasInstance;
	d2rq:property rdfs:label;
	d2rq:pattern "GenericDomain_2_hasInstance #";
	.
map:GenericDomain_2_hasInstance_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain_2_hasInstance;
	d2rq:property vocab:GenericDomain_2_hasInstance_DB_ID;
	d2rq:column "GenericDomain_2_hasInstance.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GenericDomain_2_hasInstance_hasInstance_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain_2_hasInstance;
	d2rq:property vocab:GenericDomain_2_hasInstance_hasInstance_rank;
	d2rq:column "GenericDomain_2_hasInstance.hasInstance_rank";
	d2rq:datatype xsd:int;
	.
map:GenericDomain_2_hasInstance_hasInstance a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain_2_hasInstance;
	d2rq:property vocab:GenericDomain_2_hasInstance_hasInstance;
	d2rq:column "GenericDomain_2_hasInstance.hasInstance";
	d2rq:datatype xsd:int;
	.
map:GenericDomain_2_hasInstance_hasInstance_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenericDomain_2_hasInstance;
	d2rq:property vocab:GenericDomain_2_hasInstance_hasInstance_class;
	d2rq:column "GenericDomain_2_hasInstance.hasInstance_class";
	.

# Table GenomeEncodedEntity
map:GenomeEncodedEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "GenomeEncodedEntity/@@GenomeEncodedEntity.DB_ID@@";
	d2rq:class vocab:GenomeEncodedEntity;
	.
map:GenomeEncodedEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenomeEncodedEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "GenomeEncodedEntity #@@GenomeEncodedEntity.DB_ID@@";
	.
map:GenomeEncodedEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenomeEncodedEntity;
	d2rq:property vocab:GenomeEncodedEntity_DB_ID;
	d2rq:column "GenomeEncodedEntity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:GenomeEncodedEntity_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenomeEncodedEntity;
	d2rq:property vocab:GenomeEncodedEntity_species;
	d2rq:column "GenomeEncodedEntity.species";
	d2rq:datatype xsd:int;
	.
map:GenomeEncodedEntity_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:GenomeEncodedEntity;
	d2rq:property vocab:GenomeEncodedEntity_species_class;
	d2rq:column "GenomeEncodedEntity.species_class";
	.

# Table InstanceEdit
map:InstanceEdit a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "InstanceEdit/@@InstanceEdit.DB_ID@@";
	d2rq:class vocab:InstanceEdit;
	.
map:InstanceEdit__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit;
	d2rq:property rdfs:label;
	d2rq:pattern "InstanceEdit #@@InstanceEdit.DB_ID@@";
	.
map:InstanceEdit_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit;
	d2rq:property vocab:InstanceEdit_DB_ID;
	d2rq:column "InstanceEdit.DB_ID";
	d2rq:datatype xsd:int;
	.
map:InstanceEdit__applyToAllEditedInstances a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit;
	d2rq:property vocab:InstanceEdit__applyToAllEditedInstances;
	d2rq:column "InstanceEdit._applyToAllEditedInstances";
	.
map:InstanceEdit_dateTime a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit;
	d2rq:property vocab:InstanceEdit_dateTime;
	d2rq:column "InstanceEdit.dateTime";
	d2rq:datatype xsd:dateTime;
	d2rq:condition "InstanceEdit.dateTime != '0000'";
	.
map:InstanceEdit_note a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit;
	d2rq:property vocab:InstanceEdit_note;
	d2rq:column "InstanceEdit.note";
	.

# Table InstanceEdit_2_author
map:InstanceEdit_2_author a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "InstanceEdit_2_author";
	d2rq:class vocab:InstanceEdit_2_author;
	.
map:InstanceEdit_2_author__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit_2_author;
	d2rq:property rdfs:label;
	d2rq:pattern "InstanceEdit_2_author #";
	.
map:InstanceEdit_2_author_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit_2_author;
	d2rq:property vocab:InstanceEdit_2_author_DB_ID;
	d2rq:column "InstanceEdit_2_author.DB_ID";
	d2rq:datatype xsd:int;
	.
map:InstanceEdit_2_author_author_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit_2_author;
	d2rq:property vocab:InstanceEdit_2_author_author_rank;
	d2rq:column "InstanceEdit_2_author.author_rank";
	d2rq:datatype xsd:int;
	.
map:InstanceEdit_2_author_author a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit_2_author;
	d2rq:property vocab:InstanceEdit_2_author_author;
	d2rq:column "InstanceEdit_2_author.author";
	d2rq:datatype xsd:int;
	.
map:InstanceEdit_2_author_author_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:InstanceEdit_2_author;
	d2rq:property vocab:InstanceEdit_2_author_author_class;
	d2rq:column "InstanceEdit_2_author.author_class";
	.

# Table LiteratureReference
map:LiteratureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "LiteratureReference/@@LiteratureReference.DB_ID@@";
	d2rq:class vocab:LiteratureReference;
	.
map:LiteratureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "LiteratureReference #@@LiteratureReference.DB_ID@@";
	.
map:LiteratureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_DB_ID;
	d2rq:column "LiteratureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_journal a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_journal;
	d2rq:column "LiteratureReference.journal";
	.
map:LiteratureReference_pages a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_pages;
	d2rq:column "LiteratureReference.pages";
	.
map:LiteratureReference_pubMedIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_pubMedIdentifier;
	d2rq:column "LiteratureReference.pubMedIdentifier";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_title a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_title;
	d2rq:column "LiteratureReference.title";
	.
map:LiteratureReference_volume a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_volume;
	d2rq:column "LiteratureReference.volume";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_year a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference;
	d2rq:property vocab:LiteratureReference_year;
	d2rq:column "LiteratureReference.year";
	d2rq:datatype xsd:int;
	.

# Table LiteratureReference_2_author
map:LiteratureReference_2_author a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "LiteratureReference_2_author";
	d2rq:class vocab:LiteratureReference_2_author;
	.
map:LiteratureReference_2_author__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference_2_author;
	d2rq:property rdfs:label;
	d2rq:pattern "LiteratureReference_2_author #";
	.
map:LiteratureReference_2_author_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference_2_author;
	d2rq:property vocab:LiteratureReference_2_author_DB_ID;
	d2rq:column "LiteratureReference_2_author.DB_ID";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_2_author_author_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference_2_author;
	d2rq:property vocab:LiteratureReference_2_author_author_rank;
	d2rq:column "LiteratureReference_2_author.author_rank";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_2_author_author a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference_2_author;
	d2rq:property vocab:LiteratureReference_2_author_author;
	d2rq:column "LiteratureReference_2_author.author";
	d2rq:datatype xsd:int;
	.
map:LiteratureReference_2_author_author_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:LiteratureReference_2_author;
	d2rq:property vocab:LiteratureReference_2_author_author_class;
	d2rq:column "LiteratureReference_2_author.author_class";
	.

# Table ModifiedResidue
map:ModifiedResidue a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ModifiedResidue/@@ModifiedResidue.DB_ID@@";
	d2rq:class vocab:ModifiedResidue;
	.
map:ModifiedResidue__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property rdfs:label;
	d2rq:pattern "ModifiedResidue #@@ModifiedResidue.DB_ID@@";
	.
map:ModifiedResidue_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_DB_ID;
	d2rq:column "ModifiedResidue.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ModifiedResidue_coordinate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_coordinate;
	d2rq:column "ModifiedResidue.coordinate";
	d2rq:datatype xsd:int;
	.
map:ModifiedResidue_modification a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_modification;
	d2rq:column "ModifiedResidue.modification";
	d2rq:datatype xsd:int;
	.
map:ModifiedResidue_modification_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_modification_class;
	d2rq:column "ModifiedResidue.modification_class";
	.
map:ModifiedResidue_referenceSequence a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_referenceSequence;
	d2rq:column "ModifiedResidue.referenceSequence";
	d2rq:datatype xsd:int;
	.
map:ModifiedResidue_referenceSequence_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_referenceSequence_class;
	d2rq:column "ModifiedResidue.referenceSequence_class";
	.
map:ModifiedResidue_residue a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_residue;
	d2rq:column "ModifiedResidue.residue";
	d2rq:datatype xsd:int;
	.
map:ModifiedResidue_residue_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ModifiedResidue;
	d2rq:property vocab:ModifiedResidue_residue_class;
	d2rq:column "ModifiedResidue.residue_class";
	.

# Table NegativeRegulation
map:NegativeRegulation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "NegativeRegulation/@@NegativeRegulation.DB_ID@@";
	d2rq:class vocab:NegativeRegulation;
	.
map:NegativeRegulation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:NegativeRegulation;
	d2rq:property rdfs:label;
	d2rq:pattern "NegativeRegulation #@@NegativeRegulation.DB_ID@@";
	.
map:NegativeRegulation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:NegativeRegulation;
	d2rq:property vocab:NegativeRegulation_DB_ID;
	d2rq:column "NegativeRegulation.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Ontology
map:Ontology a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Ontology";
	d2rq:class vocab:Ontology;
	.
map:Ontology__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Ontology;
	d2rq:property rdfs:label;
	d2rq:pattern "Ontology #";
	.
map:Ontology_ontology a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Ontology;
	d2rq:property vocab:Ontology_ontology;
	d2rq:column "Ontology.ontology";
	.

# Table OpenSet
map:OpenSet a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "OpenSet/@@OpenSet.DB_ID@@";
	d2rq:class vocab:OpenSet;
	.
map:OpenSet__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OpenSet;
	d2rq:property rdfs:label;
	d2rq:pattern "OpenSet #@@OpenSet.DB_ID@@";
	.
map:OpenSet_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OpenSet;
	d2rq:property vocab:OpenSet_DB_ID;
	d2rq:column "OpenSet.DB_ID";
	d2rq:datatype xsd:int;
	.
map:OpenSet_referenceEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OpenSet;
	d2rq:property vocab:OpenSet_referenceEntity;
	d2rq:column "OpenSet.referenceEntity";
	d2rq:datatype xsd:int;
	.
map:OpenSet_referenceEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OpenSet;
	d2rq:property vocab:OpenSet_referenceEntity_class;
	d2rq:column "OpenSet.referenceEntity_class";
	.

# Table OtherEntity
map:OtherEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "OtherEntity/@@OtherEntity.DB_ID@@";
	d2rq:class vocab:OtherEntity;
	.
map:OtherEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OtherEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "OtherEntity #@@OtherEntity.DB_ID@@";
	.
map:OtherEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:OtherEntity;
	d2rq:property vocab:OtherEntity_DB_ID;
	d2rq:column "OtherEntity.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Parameters
map:Parameters a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Parameters/@@Parameters.parameter|urlify@@";
	d2rq:class vocab:Parameters;
	.
map:Parameters__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Parameters;
	d2rq:property rdfs:label;
	d2rq:pattern "Parameters #@@Parameters.parameter@@";
	.
map:Parameters_parameter a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Parameters;
	d2rq:property vocab:Parameters_parameter;
	d2rq:column "Parameters.parameter";
	.
map:Parameters_value a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Parameters;
	d2rq:property vocab:Parameters_value;
	d2rq:column "Parameters.value";
	.

# Table Pathway
map:Pathway a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Pathway/@@Pathway.DB_ID@@";
	d2rq:class vocab:Pathway;
	.
map:Pathway__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway;
	d2rq:property rdfs:label;
	d2rq:pattern "Pathway #@@Pathway.DB_ID@@";
	.
map:Pathway_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway;
	d2rq:property vocab:Pathway_DB_ID;
	d2rq:column "Pathway.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table PathwayCoordinates
map:PathwayCoordinates a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "PathwayCoordinates/@@PathwayCoordinates.DB_ID@@";
	d2rq:class vocab:PathwayCoordinates;
	.
map:PathwayCoordinates__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property rdfs:label;
	d2rq:pattern "PathwayCoordinates #@@PathwayCoordinates.DB_ID@@";
	.
map:PathwayCoordinates_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_DB_ID;
	d2rq:column "PathwayCoordinates.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PathwayCoordinates_locatedEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_locatedEvent;
	d2rq:column "PathwayCoordinates.locatedEvent";
	d2rq:datatype xsd:int;
	.
map:PathwayCoordinates_locatedEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_locatedEvent_class;
	d2rq:column "PathwayCoordinates.locatedEvent_class";
	.
map:PathwayCoordinates_maxX a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_maxX;
	d2rq:column "PathwayCoordinates.maxX";
	d2rq:datatype xsd:int;
	.
map:PathwayCoordinates_maxY a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_maxY;
	d2rq:column "PathwayCoordinates.maxY";
	d2rq:datatype xsd:int;
	.
map:PathwayCoordinates_minX a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_minX;
	d2rq:column "PathwayCoordinates.minX";
	d2rq:datatype xsd:int;
	.
map:PathwayCoordinates_minY a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PathwayCoordinates;
	d2rq:property vocab:PathwayCoordinates_minY;
	d2rq:column "PathwayCoordinates.minY";
	d2rq:datatype xsd:int;
	.

# Table Pathway_2_hasEvent
map:Pathway_2_hasEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Pathway_2_hasEvent";
	d2rq:class vocab:Pathway_2_hasEvent;
	.
map:Pathway_2_hasEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway_2_hasEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "Pathway_2_hasEvent #";
	.
map:Pathway_2_hasEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway_2_hasEvent;
	d2rq:property vocab:Pathway_2_hasEvent_DB_ID;
	d2rq:column "Pathway_2_hasEvent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Pathway_2_hasEvent_hasEvent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway_2_hasEvent;
	d2rq:property vocab:Pathway_2_hasEvent_hasEvent_rank;
	d2rq:column "Pathway_2_hasEvent.hasEvent_rank";
	d2rq:datatype xsd:int;
	.
map:Pathway_2_hasEvent_hasEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway_2_hasEvent;
	d2rq:property vocab:Pathway_2_hasEvent_hasEvent;
	d2rq:column "Pathway_2_hasEvent.hasEvent";
	d2rq:datatype xsd:int;
	.
map:Pathway_2_hasEvent_hasEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Pathway_2_hasEvent;
	d2rq:property vocab:Pathway_2_hasEvent_hasEvent_class;
	d2rq:column "Pathway_2_hasEvent.hasEvent_class";
	.

# Table Person
map:Person a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Person/@@Person.DB_ID@@";
	d2rq:class vocab:Person;
	.
map:Person__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property rdfs:label;
	d2rq:pattern "Person #@@Person.DB_ID@@";
	.
map:Person_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_DB_ID;
	d2rq:column "Person.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Person_eMailAddress a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_eMailAddress;
	d2rq:column "Person.eMailAddress";
	.
map:Person_firstname a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_firstname;
	d2rq:column "Person.firstname";
	.
map:Person_initial a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_initial;
	d2rq:column "Person.initial";
	.
map:Person_project a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_project;
	d2rq:column "Person.project";
	.
map:Person_surname a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person;
	d2rq:property vocab:Person_surname;
	d2rq:column "Person.surname";
	.

# Table Person_2_affiliation
map:Person_2_affiliation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Person_2_affiliation";
	d2rq:class vocab:Person_2_affiliation;
	.
map:Person_2_affiliation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_affiliation;
	d2rq:property rdfs:label;
	d2rq:pattern "Person_2_affiliation #";
	.
map:Person_2_affiliation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_affiliation;
	d2rq:property vocab:Person_2_affiliation_DB_ID;
	d2rq:column "Person_2_affiliation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Person_2_affiliation_affiliation_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_affiliation;
	d2rq:property vocab:Person_2_affiliation_affiliation_rank;
	d2rq:column "Person_2_affiliation.affiliation_rank";
	d2rq:datatype xsd:int;
	.
map:Person_2_affiliation_affiliation a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_affiliation;
	d2rq:property vocab:Person_2_affiliation_affiliation;
	d2rq:column "Person_2_affiliation.affiliation";
	d2rq:datatype xsd:int;
	.
map:Person_2_affiliation_affiliation_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_affiliation;
	d2rq:property vocab:Person_2_affiliation_affiliation_class;
	d2rq:column "Person_2_affiliation.affiliation_class";
	.

# Table Person_2_figure
map:Person_2_figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Person_2_figure";
	d2rq:class vocab:Person_2_figure;
	.
map:Person_2_figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_figure;
	d2rq:property rdfs:label;
	d2rq:pattern "Person_2_figure #";
	.
map:Person_2_figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_figure;
	d2rq:property vocab:Person_2_figure_DB_ID;
	d2rq:column "Person_2_figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Person_2_figure_figure_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_figure;
	d2rq:property vocab:Person_2_figure_figure_rank;
	d2rq:column "Person_2_figure.figure_rank";
	d2rq:datatype xsd:int;
	.
map:Person_2_figure_figure a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_figure;
	d2rq:property vocab:Person_2_figure_figure;
	d2rq:column "Person_2_figure.figure";
	d2rq:datatype xsd:int;
	.
map:Person_2_figure_figure_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Person_2_figure;
	d2rq:property vocab:Person_2_figure_figure_class;
	d2rq:column "Person_2_figure.figure_class";
	.

# Table PhysicalEntity
map:PhysicalEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "PhysicalEntity/@@PhysicalEntity.DB_ID@@";
	d2rq:class vocab:PhysicalEntity;
	.
map:PhysicalEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity #@@PhysicalEntity.DB_ID@@";
	.
map:PhysicalEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_DB_ID;
	d2rq:column "PhysicalEntity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_authored a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_authored;
	d2rq:column "PhysicalEntity.authored";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_authored_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_authored_class;
	d2rq:column "PhysicalEntity.authored_class";
	.
map:PhysicalEntity_definition a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_definition;
	d2rq:column "PhysicalEntity.definition";
	.
map:PhysicalEntity_goCellularComponent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_goCellularComponent;
	d2rq:column "PhysicalEntity.goCellularComponent";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_goCellularComponent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity;
	d2rq:property vocab:PhysicalEntity_goCellularComponent_class;
	d2rq:column "PhysicalEntity.goCellularComponent_class";
	.

# Table PhysicalEntity_2_compartment
map:PhysicalEntity_2_compartment a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_compartment";
	d2rq:class vocab:PhysicalEntity_2_compartment;
	.
map:PhysicalEntity_2_compartment__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_compartment;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_compartment #";
	.
map:PhysicalEntity_2_compartment_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_compartment;
	d2rq:property vocab:PhysicalEntity_2_compartment_DB_ID;
	d2rq:column "PhysicalEntity_2_compartment.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_compartment_compartment_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_compartment;
	d2rq:property vocab:PhysicalEntity_2_compartment_compartment_rank;
	d2rq:column "PhysicalEntity_2_compartment.compartment_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_compartment_compartment a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_compartment;
	d2rq:property vocab:PhysicalEntity_2_compartment_compartment;
	d2rq:column "PhysicalEntity_2_compartment.compartment";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_compartment_compartment_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_compartment;
	d2rq:property vocab:PhysicalEntity_2_compartment_compartment_class;
	d2rq:column "PhysicalEntity_2_compartment.compartment_class";
	.

# Table PhysicalEntity_2_crossReference
map:PhysicalEntity_2_crossReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_crossReference";
	d2rq:class vocab:PhysicalEntity_2_crossReference;
	.
map:PhysicalEntity_2_crossReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_crossReference;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_crossReference #";
	.
map:PhysicalEntity_2_crossReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_crossReference;
	d2rq:property vocab:PhysicalEntity_2_crossReference_DB_ID;
	d2rq:column "PhysicalEntity_2_crossReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_crossReference_crossReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_crossReference;
	d2rq:property vocab:PhysicalEntity_2_crossReference_crossReference_rank;
	d2rq:column "PhysicalEntity_2_crossReference.crossReference_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_crossReference_crossReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_crossReference;
	d2rq:property vocab:PhysicalEntity_2_crossReference_crossReference;
	d2rq:column "PhysicalEntity_2_crossReference.crossReference";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_crossReference_crossReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_crossReference;
	d2rq:property vocab:PhysicalEntity_2_crossReference_crossReference_class;
	d2rq:column "PhysicalEntity_2_crossReference.crossReference_class";
	.

# Table PhysicalEntity_2_edited
map:PhysicalEntity_2_edited a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_edited";
	d2rq:class vocab:PhysicalEntity_2_edited;
	.
map:PhysicalEntity_2_edited__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_edited;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_edited #";
	.
map:PhysicalEntity_2_edited_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_edited;
	d2rq:property vocab:PhysicalEntity_2_edited_DB_ID;
	d2rq:column "PhysicalEntity_2_edited.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_edited_edited_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_edited;
	d2rq:property vocab:PhysicalEntity_2_edited_edited_rank;
	d2rq:column "PhysicalEntity_2_edited.edited_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_edited_edited a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_edited;
	d2rq:property vocab:PhysicalEntity_2_edited_edited;
	d2rq:column "PhysicalEntity_2_edited.edited";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_edited_edited_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_edited;
	d2rq:property vocab:PhysicalEntity_2_edited_edited_class;
	d2rq:column "PhysicalEntity_2_edited.edited_class";
	.

# Table PhysicalEntity_2_figure
map:PhysicalEntity_2_figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_figure";
	d2rq:class vocab:PhysicalEntity_2_figure;
	.
map:PhysicalEntity_2_figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_figure;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_figure #";
	.
map:PhysicalEntity_2_figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_figure;
	d2rq:property vocab:PhysicalEntity_2_figure_DB_ID;
	d2rq:column "PhysicalEntity_2_figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_figure_figure_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_figure;
	d2rq:property vocab:PhysicalEntity_2_figure_figure_rank;
	d2rq:column "PhysicalEntity_2_figure.figure_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_figure_figure a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_figure;
	d2rq:property vocab:PhysicalEntity_2_figure_figure;
	d2rq:column "PhysicalEntity_2_figure.figure";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_figure_figure_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_figure;
	d2rq:property vocab:PhysicalEntity_2_figure_figure_class;
	d2rq:column "PhysicalEntity_2_figure.figure_class";
	.

# Table PhysicalEntity_2_hasDomain
map:PhysicalEntity_2_hasDomain a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_hasDomain";
	d2rq:class vocab:PhysicalEntity_2_hasDomain;
	.
map:PhysicalEntity_2_hasDomain__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_hasDomain;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_hasDomain #";
	.
map:PhysicalEntity_2_hasDomain_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_hasDomain;
	d2rq:property vocab:PhysicalEntity_2_hasDomain_DB_ID;
	d2rq:column "PhysicalEntity_2_hasDomain.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_hasDomain_hasDomain_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_hasDomain;
	d2rq:property vocab:PhysicalEntity_2_hasDomain_hasDomain_rank;
	d2rq:column "PhysicalEntity_2_hasDomain.hasDomain_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_hasDomain_hasDomain a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_hasDomain;
	d2rq:property vocab:PhysicalEntity_2_hasDomain_hasDomain;
	d2rq:column "PhysicalEntity_2_hasDomain.hasDomain";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_hasDomain_hasDomain_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_hasDomain;
	d2rq:property vocab:PhysicalEntity_2_hasDomain_hasDomain_class;
	d2rq:column "PhysicalEntity_2_hasDomain.hasDomain_class";
	.

# Table PhysicalEntity_2_inferredFrom
map:PhysicalEntity_2_inferredFrom a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_inferredFrom";
	d2rq:class vocab:PhysicalEntity_2_inferredFrom;
	.
map:PhysicalEntity_2_inferredFrom__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_inferredFrom;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_inferredFrom #";
	.
map:PhysicalEntity_2_inferredFrom_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_inferredFrom;
	d2rq:property vocab:PhysicalEntity_2_inferredFrom_DB_ID;
	d2rq:column "PhysicalEntity_2_inferredFrom.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_inferredFrom_inferredFrom_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_inferredFrom;
	d2rq:property vocab:PhysicalEntity_2_inferredFrom_inferredFrom_rank;
	d2rq:column "PhysicalEntity_2_inferredFrom.inferredFrom_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_inferredFrom_inferredFrom a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_inferredFrom;
	d2rq:property vocab:PhysicalEntity_2_inferredFrom_inferredFrom;
	d2rq:column "PhysicalEntity_2_inferredFrom.inferredFrom";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_inferredFrom_inferredFrom_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_inferredFrom;
	d2rq:property vocab:PhysicalEntity_2_inferredFrom_inferredFrom_class;
	d2rq:column "PhysicalEntity_2_inferredFrom.inferredFrom_class";
	.

# Table PhysicalEntity_2_literatureReference
map:PhysicalEntity_2_literatureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_literatureReference";
	d2rq:class vocab:PhysicalEntity_2_literatureReference;
	.
map:PhysicalEntity_2_literatureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_literatureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_literatureReference #";
	.
map:PhysicalEntity_2_literatureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_literatureReference;
	d2rq:property vocab:PhysicalEntity_2_literatureReference_DB_ID;
	d2rq:column "PhysicalEntity_2_literatureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_literatureReference_literatureReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_literatureReference;
	d2rq:property vocab:PhysicalEntity_2_literatureReference_literatureReference_rank;
	d2rq:column "PhysicalEntity_2_literatureReference.literatureReference_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_literatureReference_literatureReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_literatureReference;
	d2rq:property vocab:PhysicalEntity_2_literatureReference_literatureReference;
	d2rq:column "PhysicalEntity_2_literatureReference.literatureReference";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_literatureReference_literatureReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_literatureReference;
	d2rq:property vocab:PhysicalEntity_2_literatureReference_literatureReference_class;
	d2rq:column "PhysicalEntity_2_literatureReference.literatureReference_class";
	.

# Table PhysicalEntity_2_name
map:PhysicalEntity_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_name";
	d2rq:class vocab:PhysicalEntity_2_name;
	.
map:PhysicalEntity_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_name #";
	.
map:PhysicalEntity_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_name;
	d2rq:property vocab:PhysicalEntity_2_name_DB_ID;
	d2rq:column "PhysicalEntity_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_name;
	d2rq:property vocab:PhysicalEntity_2_name_name_rank;
	d2rq:column "PhysicalEntity_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_name;
	d2rq:property vocab:PhysicalEntity_2_name_name;
	d2rq:column "PhysicalEntity_2_name.name";
	.

# Table PhysicalEntity_2_reviewed
map:PhysicalEntity_2_reviewed a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_reviewed";
	d2rq:class vocab:PhysicalEntity_2_reviewed;
	.
map:PhysicalEntity_2_reviewed__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_reviewed;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_reviewed #";
	.
map:PhysicalEntity_2_reviewed_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_reviewed;
	d2rq:property vocab:PhysicalEntity_2_reviewed_DB_ID;
	d2rq:column "PhysicalEntity_2_reviewed.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_reviewed_reviewed_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_reviewed;
	d2rq:property vocab:PhysicalEntity_2_reviewed_reviewed_rank;
	d2rq:column "PhysicalEntity_2_reviewed.reviewed_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_reviewed_reviewed a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_reviewed;
	d2rq:property vocab:PhysicalEntity_2_reviewed_reviewed;
	d2rq:column "PhysicalEntity_2_reviewed.reviewed";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_reviewed_reviewed_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_reviewed;
	d2rq:property vocab:PhysicalEntity_2_reviewed_reviewed_class;
	d2rq:column "PhysicalEntity_2_reviewed.reviewed_class";
	.

# Table PhysicalEntity_2_revised
map:PhysicalEntity_2_revised a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_revised";
	d2rq:class vocab:PhysicalEntity_2_revised;
	.
map:PhysicalEntity_2_revised__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_revised;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_revised #";
	.
map:PhysicalEntity_2_revised_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_revised;
	d2rq:property vocab:PhysicalEntity_2_revised_DB_ID;
	d2rq:column "PhysicalEntity_2_revised.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_revised_revised_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_revised;
	d2rq:property vocab:PhysicalEntity_2_revised_revised_rank;
	d2rq:column "PhysicalEntity_2_revised.revised_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_revised_revised a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_revised;
	d2rq:property vocab:PhysicalEntity_2_revised_revised;
	d2rq:column "PhysicalEntity_2_revised.revised";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_revised_revised_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_revised;
	d2rq:property vocab:PhysicalEntity_2_revised_revised_class;
	d2rq:column "PhysicalEntity_2_revised.revised_class";
	.

# Table PhysicalEntity_2_summation
map:PhysicalEntity_2_summation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "PhysicalEntity_2_summation";
	d2rq:class vocab:PhysicalEntity_2_summation;
	.
map:PhysicalEntity_2_summation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_summation;
	d2rq:property rdfs:label;
	d2rq:pattern "PhysicalEntity_2_summation #";
	.
map:PhysicalEntity_2_summation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_summation;
	d2rq:property vocab:PhysicalEntity_2_summation_DB_ID;
	d2rq:column "PhysicalEntity_2_summation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_summation_summation_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_summation;
	d2rq:property vocab:PhysicalEntity_2_summation_summation_rank;
	d2rq:column "PhysicalEntity_2_summation.summation_rank";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_summation_summation a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_summation;
	d2rq:property vocab:PhysicalEntity_2_summation_summation;
	d2rq:column "PhysicalEntity_2_summation.summation";
	d2rq:datatype xsd:int;
	.
map:PhysicalEntity_2_summation_summation_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PhysicalEntity_2_summation;
	d2rq:property vocab:PhysicalEntity_2_summation_summation_class;
	d2rq:column "PhysicalEntity_2_summation.summation_class";
	.

# Table Polymer
map:Polymer a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Polymer/@@Polymer.DB_ID@@";
	d2rq:class vocab:Polymer;
	.
map:Polymer__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property rdfs:label;
	d2rq:pattern "Polymer #@@Polymer.DB_ID@@";
	.
map:Polymer_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_DB_ID;
	d2rq:column "Polymer.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Polymer_maxUnitCount a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_maxUnitCount;
	d2rq:column "Polymer.maxUnitCount";
	d2rq:datatype xsd:int;
	.
map:Polymer_minUnitCount a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_minUnitCount;
	d2rq:column "Polymer.minUnitCount";
	d2rq:datatype xsd:int;
	.
map:Polymer_totalProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_totalProt;
	d2rq:column "Polymer.totalProt";
	.
map:Polymer_maxHomologues a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_maxHomologues;
	d2rq:column "Polymer.maxHomologues";
	.
map:Polymer_inferredProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer;
	d2rq:property vocab:Polymer_inferredProt;
	d2rq:column "Polymer.inferredProt";
	.

# Table Polymer_2_repeatedUnit
map:Polymer_2_repeatedUnit a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Polymer_2_repeatedUnit";
	d2rq:class vocab:Polymer_2_repeatedUnit;
	.
map:Polymer_2_repeatedUnit__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_repeatedUnit;
	d2rq:property rdfs:label;
	d2rq:pattern "Polymer_2_repeatedUnit #";
	.
map:Polymer_2_repeatedUnit_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_repeatedUnit;
	d2rq:property vocab:Polymer_2_repeatedUnit_DB_ID;
	d2rq:column "Polymer_2_repeatedUnit.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_repeatedUnit_repeatedUnit_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_repeatedUnit;
	d2rq:property vocab:Polymer_2_repeatedUnit_repeatedUnit_rank;
	d2rq:column "Polymer_2_repeatedUnit.repeatedUnit_rank";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_repeatedUnit_repeatedUnit a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_repeatedUnit;
	d2rq:property vocab:Polymer_2_repeatedUnit_repeatedUnit;
	d2rq:column "Polymer_2_repeatedUnit.repeatedUnit";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_repeatedUnit_repeatedUnit_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_repeatedUnit;
	d2rq:property vocab:Polymer_2_repeatedUnit_repeatedUnit_class;
	d2rq:column "Polymer_2_repeatedUnit.repeatedUnit_class";
	.

# Table Polymer_2_species
map:Polymer_2_species a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Polymer_2_species";
	d2rq:class vocab:Polymer_2_species;
	.
map:Polymer_2_species__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_species;
	d2rq:property rdfs:label;
	d2rq:pattern "Polymer_2_species #";
	.
map:Polymer_2_species_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_species;
	d2rq:property vocab:Polymer_2_species_DB_ID;
	d2rq:column "Polymer_2_species.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_species_species_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_species;
	d2rq:property vocab:Polymer_2_species_species_rank;
	d2rq:column "Polymer_2_species.species_rank";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_species_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_species;
	d2rq:property vocab:Polymer_2_species_species;
	d2rq:column "Polymer_2_species.species";
	d2rq:datatype xsd:int;
	.
map:Polymer_2_species_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymer_2_species;
	d2rq:property vocab:Polymer_2_species_species_class;
	d2rq:column "Polymer_2_species.species_class";
	.

# Table Polymerisation
map:Polymerisation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Polymerisation/@@Polymerisation.DB_ID@@";
	d2rq:class vocab:Polymerisation;
	.
map:Polymerisation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymerisation;
	d2rq:property rdfs:label;
	d2rq:pattern "Polymerisation #@@Polymerisation.DB_ID@@";
	.
map:Polymerisation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Polymerisation;
	d2rq:property vocab:Polymerisation_DB_ID;
	d2rq:column "Polymerisation.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table PositiveRegulation
map:PositiveRegulation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "PositiveRegulation/@@PositiveRegulation.DB_ID@@";
	d2rq:class vocab:PositiveRegulation;
	.
map:PositiveRegulation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PositiveRegulation;
	d2rq:property rdfs:label;
	d2rq:pattern "PositiveRegulation #@@PositiveRegulation.DB_ID@@";
	.
map:PositiveRegulation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:PositiveRegulation;
	d2rq:property vocab:PositiveRegulation_DB_ID;
	d2rq:column "PositiveRegulation.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Reaction
map:Reaction a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Reaction/@@Reaction.DB_ID@@";
	d2rq:class vocab:Reaction;
	.
map:Reaction__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property rdfs:label;
	d2rq:pattern "Reaction #@@Reaction.DB_ID@@";
	.
map:Reaction_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_DB_ID;
	d2rq:column "Reaction.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Reaction_reverseReaction a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_reverseReaction;
	d2rq:column "Reaction.reverseReaction";
	d2rq:datatype xsd:int;
	.
map:Reaction_reverseReaction_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_reverseReaction_class;
	d2rq:column "Reaction.reverseReaction_class";
	.
map:Reaction_totalProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_totalProt;
	d2rq:column "Reaction.totalProt";
	.
map:Reaction_maxHomologues a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_maxHomologues;
	d2rq:column "Reaction.maxHomologues";
	.
map:Reaction_inferredProt a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Reaction;
	d2rq:property vocab:Reaction_inferredProt;
	d2rq:column "Reaction.inferredProt";
	.

# Table ReactionCoordinates
map:ReactionCoordinates a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReactionCoordinates/@@ReactionCoordinates.DB_ID@@";
	d2rq:class vocab:ReactionCoordinates;
	.
map:ReactionCoordinates__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionCoordinates #@@ReactionCoordinates.DB_ID@@";
	.
map:ReactionCoordinates_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_DB_ID;
	d2rq:column "ReactionCoordinates.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_locatedEvent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_locatedEvent;
	d2rq:column "ReactionCoordinates.locatedEvent";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_locatedEvent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_locatedEvent_class;
	d2rq:column "ReactionCoordinates.locatedEvent_class";
	.
map:ReactionCoordinates_locationContext a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_locationContext;
	d2rq:column "ReactionCoordinates.locationContext";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_locationContext_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_locationContext_class;
	d2rq:column "ReactionCoordinates.locationContext_class";
	.
map:ReactionCoordinates_sourceX a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_sourceX;
	d2rq:column "ReactionCoordinates.sourceX";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_sourceY a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_sourceY;
	d2rq:column "ReactionCoordinates.sourceY";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_targetX a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_targetX;
	d2rq:column "ReactionCoordinates.targetX";
	d2rq:datatype xsd:int;
	.
map:ReactionCoordinates_targetY a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionCoordinates;
	d2rq:property vocab:ReactionCoordinates_targetY;
	d2rq:column "ReactionCoordinates.targetY";
	d2rq:datatype xsd:int;
	.

# Table ReactionlikeEvent
map:ReactionlikeEvent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReactionlikeEvent/@@ReactionlikeEvent.DB_ID@@";
	d2rq:class vocab:ReactionlikeEvent;
	.
map:ReactionlikeEvent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent #@@ReactionlikeEvent.DB_ID@@";
	.
map:ReactionlikeEvent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent;
	d2rq:property vocab:ReactionlikeEvent_DB_ID;
	d2rq:column "ReactionlikeEvent.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReactionlikeEvent_2_catalystActivity
map:ReactionlikeEvent_2_catalystActivity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_catalystActivity";
	d2rq:class vocab:ReactionlikeEvent_2_catalystActivity;
	.
map:ReactionlikeEvent_2_catalystActivity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_catalystActivity;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_catalystActivity #";
	.
map:ReactionlikeEvent_2_catalystActivity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_catalystActivity;
	d2rq:property vocab:ReactionlikeEvent_2_catalystActivity_DB_ID;
	d2rq:column "ReactionlikeEvent_2_catalystActivity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_catalystActivity_catalystActivity_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_catalystActivity;
	d2rq:property vocab:ReactionlikeEvent_2_catalystActivity_catalystActivity_rank;
	d2rq:column "ReactionlikeEvent_2_catalystActivity.catalystActivity_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_catalystActivity_catalystActivity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_catalystActivity;
	d2rq:property vocab:ReactionlikeEvent_2_catalystActivity_catalystActivity;
	d2rq:column "ReactionlikeEvent_2_catalystActivity.catalystActivity";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_catalystActivity_catalystActivity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_catalystActivity;
	d2rq:property vocab:ReactionlikeEvent_2_catalystActivity_catalystActivity_class;
	d2rq:column "ReactionlikeEvent_2_catalystActivity.catalystActivity_class";
	.

# Table ReactionlikeEvent_2_entityOnOtherCell
map:ReactionlikeEvent_2_entityOnOtherCell a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_entityOnOtherCell";
	d2rq:class vocab:ReactionlikeEvent_2_entityOnOtherCell;
	.
map:ReactionlikeEvent_2_entityOnOtherCell__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_entityOnOtherCell;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_entityOnOtherCell #";
	.
map:ReactionlikeEvent_2_entityOnOtherCell_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_entityOnOtherCell;
	d2rq:property vocab:ReactionlikeEvent_2_entityOnOtherCell_DB_ID;
	d2rq:column "ReactionlikeEvent_2_entityOnOtherCell.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_entityOnOtherCell;
	d2rq:property vocab:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell_rank;
	d2rq:column "ReactionlikeEvent_2_entityOnOtherCell.entityOnOtherCell_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_entityOnOtherCell;
	d2rq:property vocab:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell;
	d2rq:column "ReactionlikeEvent_2_entityOnOtherCell.entityOnOtherCell";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_entityOnOtherCell;
	d2rq:property vocab:ReactionlikeEvent_2_entityOnOtherCell_entityOnOtherCell_class;
	d2rq:column "ReactionlikeEvent_2_entityOnOtherCell.entityOnOtherCell_class";
	.

# Table ReactionlikeEvent_2_hasMember
map:ReactionlikeEvent_2_hasMember a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_hasMember";
	d2rq:class vocab:ReactionlikeEvent_2_hasMember;
	.
map:ReactionlikeEvent_2_hasMember__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_hasMember;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_hasMember #";
	.
map:ReactionlikeEvent_2_hasMember_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_hasMember;
	d2rq:property vocab:ReactionlikeEvent_2_hasMember_DB_ID;
	d2rq:column "ReactionlikeEvent_2_hasMember.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_hasMember_hasMember_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_hasMember;
	d2rq:property vocab:ReactionlikeEvent_2_hasMember_hasMember_rank;
	d2rq:column "ReactionlikeEvent_2_hasMember.hasMember_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_hasMember_hasMember a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_hasMember;
	d2rq:property vocab:ReactionlikeEvent_2_hasMember_hasMember;
	d2rq:column "ReactionlikeEvent_2_hasMember.hasMember";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_hasMember_hasMember_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_hasMember;
	d2rq:property vocab:ReactionlikeEvent_2_hasMember_hasMember_class;
	d2rq:column "ReactionlikeEvent_2_hasMember.hasMember_class";
	.

# Table ReactionlikeEvent_2_input
map:ReactionlikeEvent_2_input a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_input";
	d2rq:class vocab:ReactionlikeEvent_2_input;
	.
map:ReactionlikeEvent_2_input__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_input;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_input #";
	.
map:ReactionlikeEvent_2_input_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_input;
	d2rq:property vocab:ReactionlikeEvent_2_input_DB_ID;
	d2rq:column "ReactionlikeEvent_2_input.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_input_input_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_input;
	d2rq:property vocab:ReactionlikeEvent_2_input_input_rank;
	d2rq:column "ReactionlikeEvent_2_input.input_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_input_input a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_input;
	d2rq:property vocab:ReactionlikeEvent_2_input_input;
	d2rq:column "ReactionlikeEvent_2_input.input";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_input_input_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_input;
	d2rq:property vocab:ReactionlikeEvent_2_input_input_class;
	d2rq:column "ReactionlikeEvent_2_input.input_class";
	.

# Table ReactionlikeEvent_2_output
map:ReactionlikeEvent_2_output a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_output";
	d2rq:class vocab:ReactionlikeEvent_2_output;
	.
map:ReactionlikeEvent_2_output__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_output;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_output #";
	.
map:ReactionlikeEvent_2_output_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_output;
	d2rq:property vocab:ReactionlikeEvent_2_output_DB_ID;
	d2rq:column "ReactionlikeEvent_2_output.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_output_output_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_output;
	d2rq:property vocab:ReactionlikeEvent_2_output_output_rank;
	d2rq:column "ReactionlikeEvent_2_output.output_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_output_output a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_output;
	d2rq:property vocab:ReactionlikeEvent_2_output_output;
	d2rq:column "ReactionlikeEvent_2_output.output";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_output_output_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_output;
	d2rq:property vocab:ReactionlikeEvent_2_output_output_class;
	d2rq:column "ReactionlikeEvent_2_output.output_class";
	.

# Table ReactionlikeEvent_2_requiredInputComponent
map:ReactionlikeEvent_2_requiredInputComponent a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReactionlikeEvent_2_requiredInputComponent";
	d2rq:class vocab:ReactionlikeEvent_2_requiredInputComponent;
	.
map:ReactionlikeEvent_2_requiredInputComponent__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_requiredInputComponent;
	d2rq:property rdfs:label;
	d2rq:pattern "ReactionlikeEvent_2_requiredInputComponent #";
	.
map:ReactionlikeEvent_2_requiredInputComponent_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_requiredInputComponent;
	d2rq:property vocab:ReactionlikeEvent_2_requiredInputComponent_DB_ID;
	d2rq:column "ReactionlikeEvent_2_requiredInputComponent.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_requiredInputComponent;
	d2rq:property vocab:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent_rank;
	d2rq:column "ReactionlikeEvent_2_requiredInputComponent.requiredInputComponent_rank";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_requiredInputComponent;
	d2rq:property vocab:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent;
	d2rq:column "ReactionlikeEvent_2_requiredInputComponent.requiredInputComponent";
	d2rq:datatype xsd:int;
	.
map:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReactionlikeEvent_2_requiredInputComponent;
	d2rq:property vocab:ReactionlikeEvent_2_requiredInputComponent_requiredInputComponent_class;
	d2rq:column "ReactionlikeEvent_2_requiredInputComponent.requiredInputComponent_class";
	.

# Table ReferenceDNASequence
map:ReferenceDNASequence a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceDNASequence/@@ReferenceDNASequence.DB_ID@@";
	d2rq:class vocab:ReferenceDNASequence;
	.
map:ReferenceDNASequence__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDNASequence;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceDNASequence #@@ReferenceDNASequence.DB_ID@@";
	.
map:ReferenceDNASequence_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDNASequence;
	d2rq:property vocab:ReferenceDNASequence_DB_ID;
	d2rq:column "ReferenceDNASequence.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReferenceDatabase
map:ReferenceDatabase a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceDatabase/@@ReferenceDatabase.DB_ID@@";
	d2rq:class vocab:ReferenceDatabase;
	.
map:ReferenceDatabase__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceDatabase #@@ReferenceDatabase.DB_ID@@";
	.
map:ReferenceDatabase_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase;
	d2rq:property vocab:ReferenceDatabase_DB_ID;
	d2rq:column "ReferenceDatabase.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceDatabase_accessUrl a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase;
	d2rq:property vocab:ReferenceDatabase_accessUrl;
	d2rq:column "ReferenceDatabase.accessUrl";
	.
map:ReferenceDatabase_url a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase;
	d2rq:property vocab:ReferenceDatabase_url;
	d2rq:column "ReferenceDatabase.url";
	.

# Table ReferenceDatabase_2_name
map:ReferenceDatabase_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceDatabase_2_name";
	d2rq:class vocab:ReferenceDatabase_2_name;
	.
map:ReferenceDatabase_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceDatabase_2_name #";
	.
map:ReferenceDatabase_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase_2_name;
	d2rq:property vocab:ReferenceDatabase_2_name_DB_ID;
	d2rq:column "ReferenceDatabase_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceDatabase_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase_2_name;
	d2rq:property vocab:ReferenceDatabase_2_name_name_rank;
	d2rq:column "ReferenceDatabase_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceDatabase_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceDatabase_2_name;
	d2rq:property vocab:ReferenceDatabase_2_name_name;
	d2rq:column "ReferenceDatabase_2_name.name";
	.

# Table ReferenceEntity
map:ReferenceEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceEntity/@@ReferenceEntity.DB_ID@@";
	d2rq:class vocab:ReferenceEntity;
	.
map:ReferenceEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceEntity #@@ReferenceEntity.DB_ID@@";
	.
map:ReferenceEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_DB_ID;
	d2rq:column "ReferenceEntity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_atomicConnectivity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_atomicConnectivity;
	d2rq:column "ReferenceEntity.atomicConnectivity";
	.
map:ReferenceEntity_fingerPrintString a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_fingerPrintString;
	d2rq:column "ReferenceEntity.fingerPrintString";
	.
map:ReferenceEntity_formula a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_formula;
	d2rq:column "ReferenceEntity.formula";
	.
map:ReferenceEntity_identifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_identifier;
	d2rq:column "ReferenceEntity.identifier";
	.
map:ReferenceEntity_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_referenceDatabase;
	d2rq:column "ReferenceEntity.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity;
	d2rq:property vocab:ReferenceEntity_referenceDatabase_class;
	d2rq:column "ReferenceEntity.referenceDatabase_class";
	.

# Table ReferenceEntity_2_crossReference
map:ReferenceEntity_2_crossReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceEntity_2_crossReference";
	d2rq:class vocab:ReferenceEntity_2_crossReference;
	.
map:ReferenceEntity_2_crossReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_crossReference;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceEntity_2_crossReference #";
	.
map:ReferenceEntity_2_crossReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_crossReference;
	d2rq:property vocab:ReferenceEntity_2_crossReference_DB_ID;
	d2rq:column "ReferenceEntity_2_crossReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_crossReference_crossReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_crossReference;
	d2rq:property vocab:ReferenceEntity_2_crossReference_crossReference_rank;
	d2rq:column "ReferenceEntity_2_crossReference.crossReference_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_crossReference_crossReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_crossReference;
	d2rq:property vocab:ReferenceEntity_2_crossReference_crossReference;
	d2rq:column "ReferenceEntity_2_crossReference.crossReference";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_crossReference_crossReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_crossReference;
	d2rq:property vocab:ReferenceEntity_2_crossReference_crossReference_class;
	d2rq:column "ReferenceEntity_2_crossReference.crossReference_class";
	.

# Table ReferenceEntity_2_name
map:ReferenceEntity_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceEntity_2_name";
	d2rq:class vocab:ReferenceEntity_2_name;
	.
map:ReferenceEntity_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceEntity_2_name #";
	.
map:ReferenceEntity_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_name;
	d2rq:property vocab:ReferenceEntity_2_name_DB_ID;
	d2rq:column "ReferenceEntity_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_name;
	d2rq:property vocab:ReferenceEntity_2_name_name_rank;
	d2rq:column "ReferenceEntity_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_name;
	d2rq:property vocab:ReferenceEntity_2_name_name;
	d2rq:column "ReferenceEntity_2_name.name";
	.

# Table ReferenceEntity_2_otherIdentifier
map:ReferenceEntity_2_otherIdentifier a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceEntity_2_otherIdentifier";
	d2rq:class vocab:ReferenceEntity_2_otherIdentifier;
	.
map:ReferenceEntity_2_otherIdentifier__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_otherIdentifier;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceEntity_2_otherIdentifier #";
	.
map:ReferenceEntity_2_otherIdentifier_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_otherIdentifier;
	d2rq:property vocab:ReferenceEntity_2_otherIdentifier_DB_ID;
	d2rq:column "ReferenceEntity_2_otherIdentifier.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_otherIdentifier_otherIdentifier_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_otherIdentifier;
	d2rq:property vocab:ReferenceEntity_2_otherIdentifier_otherIdentifier_rank;
	d2rq:column "ReferenceEntity_2_otherIdentifier.otherIdentifier_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_otherIdentifier_otherIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_otherIdentifier;
	d2rq:property vocab:ReferenceEntity_2_otherIdentifier_otherIdentifier;
	d2rq:column "ReferenceEntity_2_otherIdentifier.otherIdentifier";
	.

# Table ReferenceEntity_2_referenceGroupCount
map:ReferenceEntity_2_referenceGroupCount a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceEntity_2_referenceGroupCount";
	d2rq:class vocab:ReferenceEntity_2_referenceGroupCount;
	.
map:ReferenceEntity_2_referenceGroupCount__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_referenceGroupCount;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceEntity_2_referenceGroupCount #";
	.
map:ReferenceEntity_2_referenceGroupCount_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_referenceGroupCount;
	d2rq:property vocab:ReferenceEntity_2_referenceGroupCount_DB_ID;
	d2rq:column "ReferenceEntity_2_referenceGroupCount.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_referenceGroupCount_referenceGroupCount_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_referenceGroupCount;
	d2rq:property vocab:ReferenceEntity_2_referenceGroupCount_referenceGroupCount_rank;
	d2rq:column "ReferenceEntity_2_referenceGroupCount.referenceGroupCount_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_referenceGroupCount_referenceGroupCount a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_referenceGroupCount;
	d2rq:property vocab:ReferenceEntity_2_referenceGroupCount_referenceGroupCount;
	d2rq:column "ReferenceEntity_2_referenceGroupCount.referenceGroupCount";
	d2rq:datatype xsd:int;
	.
map:ReferenceEntity_2_referenceGroupCount_referenceGroupCount_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceEntity_2_referenceGroupCount;
	d2rq:property vocab:ReferenceEntity_2_referenceGroupCount_referenceGroupCount_class;
	d2rq:column "ReferenceEntity_2_referenceGroupCount.referenceGroupCount_class";
	.

# Table ReferenceGroup
map:ReferenceGroup a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceGroup/@@ReferenceGroup.DB_ID@@";
	d2rq:class vocab:ReferenceGroup;
	.
map:ReferenceGroup__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroup;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceGroup #@@ReferenceGroup.DB_ID@@";
	.
map:ReferenceGroup_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroup;
	d2rq:property vocab:ReferenceGroup_DB_ID;
	d2rq:column "ReferenceGroup.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReferenceGroupCount
map:ReferenceGroupCount a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceGroupCount/@@ReferenceGroupCount.DB_ID@@";
	d2rq:class vocab:ReferenceGroupCount;
	.
map:ReferenceGroupCount__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceGroupCount #@@ReferenceGroupCount.DB_ID@@";
	.
map:ReferenceGroupCount_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property vocab:ReferenceGroupCount_DB_ID;
	d2rq:column "ReferenceGroupCount.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceGroupCount_maxCount a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property vocab:ReferenceGroupCount_maxCount;
	d2rq:column "ReferenceGroupCount.maxCount";
	d2rq:datatype xsd:int;
	.
map:ReferenceGroupCount_minCount a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property vocab:ReferenceGroupCount_minCount;
	d2rq:column "ReferenceGroupCount.minCount";
	d2rq:datatype xsd:int;
	.
map:ReferenceGroupCount_referenceGroup a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property vocab:ReferenceGroupCount_referenceGroup;
	d2rq:column "ReferenceGroupCount.referenceGroup";
	d2rq:datatype xsd:int;
	.
map:ReferenceGroupCount_referenceGroup_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceGroupCount;
	d2rq:property vocab:ReferenceGroupCount_referenceGroup_class;
	d2rq:column "ReferenceGroupCount.referenceGroup_class";
	.

# Table ReferenceMolecule
map:ReferenceMolecule a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceMolecule/@@ReferenceMolecule.DB_ID@@";
	d2rq:class vocab:ReferenceMolecule;
	.
map:ReferenceMolecule__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceMolecule;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceMolecule #@@ReferenceMolecule.DB_ID@@";
	.
map:ReferenceMolecule_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceMolecule;
	d2rq:property vocab:ReferenceMolecule_DB_ID;
	d2rq:column "ReferenceMolecule.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReferenceMoleculeClass
map:ReferenceMoleculeClass a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceMoleculeClass/@@ReferenceMoleculeClass.DB_ID@@";
	d2rq:class vocab:ReferenceMoleculeClass;
	.
map:ReferenceMoleculeClass__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceMoleculeClass;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceMoleculeClass #@@ReferenceMoleculeClass.DB_ID@@";
	.
map:ReferenceMoleculeClass_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceMoleculeClass;
	d2rq:property vocab:ReferenceMoleculeClass_DB_ID;
	d2rq:column "ReferenceMoleculeClass.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReferencePeptideSequence
map:ReferencePeptideSequence a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferencePeptideSequence/@@ReferencePeptideSequence.DB_ID@@";
	d2rq:class vocab:ReferencePeptideSequence;
	.
map:ReferencePeptideSequence__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferencePeptideSequence #@@ReferencePeptideSequence.DB_ID@@";
	.
map:ReferencePeptideSequence_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence;
	d2rq:property vocab:ReferencePeptideSequence_DB_ID;
	d2rq:column "ReferencePeptideSequence.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_variantIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence;
	d2rq:property vocab:ReferencePeptideSequence_variantIdentifier;
	d2rq:column "ReferencePeptideSequence.variantIdentifier";
	.

# Table ReferencePeptideSequence_2_referenceGene
map:ReferencePeptideSequence_2_referenceGene a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferencePeptideSequence_2_referenceGene";
	d2rq:class vocab:ReferencePeptideSequence_2_referenceGene;
	.
map:ReferencePeptideSequence_2_referenceGene__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceGene;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferencePeptideSequence_2_referenceGene #";
	.
map:ReferencePeptideSequence_2_referenceGene_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceGene;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceGene_DB_ID;
	d2rq:column "ReferencePeptideSequence_2_referenceGene.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceGene_referenceGene_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceGene;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceGene_referenceGene_rank;
	d2rq:column "ReferencePeptideSequence_2_referenceGene.referenceGene_rank";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceGene_referenceGene a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceGene;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceGene_referenceGene;
	d2rq:column "ReferencePeptideSequence_2_referenceGene.referenceGene";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceGene_referenceGene_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceGene;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceGene_referenceGene_class;
	d2rq:column "ReferencePeptideSequence_2_referenceGene.referenceGene_class";
	.

# Table ReferencePeptideSequence_2_referenceTranscript
map:ReferencePeptideSequence_2_referenceTranscript a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferencePeptideSequence_2_referenceTranscript";
	d2rq:class vocab:ReferencePeptideSequence_2_referenceTranscript;
	.
map:ReferencePeptideSequence_2_referenceTranscript__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceTranscript;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferencePeptideSequence_2_referenceTranscript #";
	.
map:ReferencePeptideSequence_2_referenceTranscript_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceTranscript;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceTranscript_DB_ID;
	d2rq:column "ReferencePeptideSequence_2_referenceTranscript.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceTranscript;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript_rank;
	d2rq:column "ReferencePeptideSequence_2_referenceTranscript.referenceTranscript_rank";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceTranscript;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript;
	d2rq:column "ReferencePeptideSequence_2_referenceTranscript.referenceTranscript";
	d2rq:datatype xsd:int;
	.
map:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferencePeptideSequence_2_referenceTranscript;
	d2rq:property vocab:ReferencePeptideSequence_2_referenceTranscript_referenceTranscript_class;
	d2rq:column "ReferencePeptideSequence_2_referenceTranscript.referenceTranscript_class";
	.

# Table ReferenceRNASequence
map:ReferenceRNASequence a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceRNASequence/@@ReferenceRNASequence.DB_ID@@";
	d2rq:class vocab:ReferenceRNASequence;
	.
map:ReferenceRNASequence__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceRNASequence #@@ReferenceRNASequence.DB_ID@@";
	.
map:ReferenceRNASequence_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence;
	d2rq:property vocab:ReferenceRNASequence_DB_ID;
	d2rq:column "ReferenceRNASequence.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table ReferenceRNASequence_2_referenceGene
map:ReferenceRNASequence_2_referenceGene a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceRNASequence_2_referenceGene";
	d2rq:class vocab:ReferenceRNASequence_2_referenceGene;
	.
map:ReferenceRNASequence_2_referenceGene__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence_2_referenceGene;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceRNASequence_2_referenceGene #";
	.
map:ReferenceRNASequence_2_referenceGene_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence_2_referenceGene;
	d2rq:property vocab:ReferenceRNASequence_2_referenceGene_DB_ID;
	d2rq:column "ReferenceRNASequence_2_referenceGene.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceRNASequence_2_referenceGene_referenceGene_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence_2_referenceGene;
	d2rq:property vocab:ReferenceRNASequence_2_referenceGene_referenceGene_rank;
	d2rq:column "ReferenceRNASequence_2_referenceGene.referenceGene_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceRNASequence_2_referenceGene_referenceGene a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence_2_referenceGene;
	d2rq:property vocab:ReferenceRNASequence_2_referenceGene_referenceGene;
	d2rq:column "ReferenceRNASequence_2_referenceGene.referenceGene";
	d2rq:datatype xsd:int;
	.
map:ReferenceRNASequence_2_referenceGene_referenceGene_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceRNASequence_2_referenceGene;
	d2rq:property vocab:ReferenceRNASequence_2_referenceGene_referenceGene_class;
	d2rq:column "ReferenceRNASequence_2_referenceGene.referenceGene_class";
	.

# Table ReferenceSequence
map:ReferenceSequence a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReferenceSequence/@@ReferenceSequence.DB_ID@@";
	d2rq:class vocab:ReferenceSequence;
	.
map:ReferenceSequence__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence #@@ReferenceSequence.DB_ID@@";
	.
map:ReferenceSequence_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence;
	d2rq:property vocab:ReferenceSequence_DB_ID;
	d2rq:column "ReferenceSequence.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_sequenceLength a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence;
	d2rq:property vocab:ReferenceSequence_sequenceLength;
	d2rq:column "ReferenceSequence.sequenceLength";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_species a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence;
	d2rq:property vocab:ReferenceSequence_species;
	d2rq:column "ReferenceSequence.species";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_species_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence;
	d2rq:property vocab:ReferenceSequence_species_class;
	d2rq:column "ReferenceSequence.species_class";
	.

# Table ReferenceSequence_2_comment
map:ReferenceSequence_2_comment a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceSequence_2_comment";
	d2rq:class vocab:ReferenceSequence_2_comment;
	.
map:ReferenceSequence_2_comment__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_comment;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence_2_comment #";
	.
map:ReferenceSequence_2_comment_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_comment;
	d2rq:property vocab:ReferenceSequence_2_comment_DB_ID;
	d2rq:column "ReferenceSequence_2_comment.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_comment_comment_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_comment;
	d2rq:property vocab:ReferenceSequence_2_comment_comment_rank;
	d2rq:column "ReferenceSequence_2_comment.comment_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_comment_comment a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_comment;
	d2rq:property vocab:ReferenceSequence_2_comment_comment;
	d2rq:column "ReferenceSequence_2_comment.comment";
	.

# Table ReferenceSequence_2_description
map:ReferenceSequence_2_description a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceSequence_2_description";
	d2rq:class vocab:ReferenceSequence_2_description;
	.
map:ReferenceSequence_2_description__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_description;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence_2_description #";
	.
map:ReferenceSequence_2_description_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_description;
	d2rq:property vocab:ReferenceSequence_2_description_DB_ID;
	d2rq:column "ReferenceSequence_2_description.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_description_description_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_description;
	d2rq:property vocab:ReferenceSequence_2_description_description_rank;
	d2rq:column "ReferenceSequence_2_description.description_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_description_description a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_description;
	d2rq:property vocab:ReferenceSequence_2_description_description;
	d2rq:column "ReferenceSequence_2_description.description";
	.

# Table ReferenceSequence_2_geneName
map:ReferenceSequence_2_geneName a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceSequence_2_geneName";
	d2rq:class vocab:ReferenceSequence_2_geneName;
	.
map:ReferenceSequence_2_geneName__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_geneName;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence_2_geneName #";
	.
map:ReferenceSequence_2_geneName_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_geneName;
	d2rq:property vocab:ReferenceSequence_2_geneName_DB_ID;
	d2rq:column "ReferenceSequence_2_geneName.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_geneName_geneName_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_geneName;
	d2rq:property vocab:ReferenceSequence_2_geneName_geneName_rank;
	d2rq:column "ReferenceSequence_2_geneName.geneName_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_geneName_geneName a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_geneName;
	d2rq:property vocab:ReferenceSequence_2_geneName_geneName;
	d2rq:column "ReferenceSequence_2_geneName.geneName";
	.

# Table ReferenceSequence_2_keyword
map:ReferenceSequence_2_keyword a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceSequence_2_keyword";
	d2rq:class vocab:ReferenceSequence_2_keyword;
	.
map:ReferenceSequence_2_keyword__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_keyword;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence_2_keyword #";
	.
map:ReferenceSequence_2_keyword_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_keyword;
	d2rq:property vocab:ReferenceSequence_2_keyword_DB_ID;
	d2rq:column "ReferenceSequence_2_keyword.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_keyword_keyword_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_keyword;
	d2rq:property vocab:ReferenceSequence_2_keyword_keyword_rank;
	d2rq:column "ReferenceSequence_2_keyword.keyword_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_keyword_keyword a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_keyword;
	d2rq:property vocab:ReferenceSequence_2_keyword_keyword;
	d2rq:column "ReferenceSequence_2_keyword.keyword";
	.

# Table ReferenceSequence_2_secondaryIdentifier
map:ReferenceSequence_2_secondaryIdentifier a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "ReferenceSequence_2_secondaryIdentifier";
	d2rq:class vocab:ReferenceSequence_2_secondaryIdentifier;
	.
map:ReferenceSequence_2_secondaryIdentifier__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_secondaryIdentifier;
	d2rq:property rdfs:label;
	d2rq:pattern "ReferenceSequence_2_secondaryIdentifier #";
	.
map:ReferenceSequence_2_secondaryIdentifier_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_secondaryIdentifier;
	d2rq:property vocab:ReferenceSequence_2_secondaryIdentifier_DB_ID;
	d2rq:column "ReferenceSequence_2_secondaryIdentifier.DB_ID";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_secondaryIdentifier_secondaryIdentifier_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_secondaryIdentifier;
	d2rq:property vocab:ReferenceSequence_2_secondaryIdentifier_secondaryIdentifier_rank;
	d2rq:column "ReferenceSequence_2_secondaryIdentifier.secondaryIdentifier_rank";
	d2rq:datatype xsd:int;
	.
map:ReferenceSequence_2_secondaryIdentifier_secondaryIdentifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReferenceSequence_2_secondaryIdentifier;
	d2rq:property vocab:ReferenceSequence_2_secondaryIdentifier_secondaryIdentifier;
	d2rq:column "ReferenceSequence_2_secondaryIdentifier.secondaryIdentifier";
	.

# Table Regulation
map:Regulation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Regulation/@@Regulation.DB_ID@@";
	d2rq:class vocab:Regulation;
	.
map:Regulation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation #@@Regulation.DB_ID@@";
	.
map:Regulation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_DB_ID;
	d2rq:column "Regulation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_authored a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_authored;
	d2rq:column "Regulation.authored";
	d2rq:datatype xsd:int;
	.
map:Regulation_authored_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_authored_class;
	d2rq:column "Regulation.authored_class";
	.
map:Regulation_regulatedEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulatedEntity;
	d2rq:column "Regulation.regulatedEntity";
	d2rq:datatype xsd:int;
	.
map:Regulation_regulatedEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulatedEntity_class;
	d2rq:column "Regulation.regulatedEntity_class";
	.
map:Regulation_regulationType a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulationType;
	d2rq:column "Regulation.regulationType";
	d2rq:datatype xsd:int;
	.
map:Regulation_regulationType_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulationType_class;
	d2rq:column "Regulation.regulationType_class";
	.
map:Regulation_regulator a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulator;
	d2rq:column "Regulation.regulator";
	d2rq:datatype xsd:int;
	.
map:Regulation_regulator_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_regulator_class;
	d2rq:column "Regulation.regulator_class";
	.
map:Regulation_releaseDate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation;
	d2rq:property vocab:Regulation_releaseDate;
	d2rq:column "Regulation.releaseDate";
	d2rq:datatype xsd:date;
	d2rq:condition "Regulation.releaseDate != '0000'";
	.

# Table RegulationType
map:RegulationType a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "RegulationType/@@RegulationType.DB_ID@@";
	d2rq:class vocab:RegulationType;
	.
map:RegulationType__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType;
	d2rq:property rdfs:label;
	d2rq:pattern "RegulationType #@@RegulationType.DB_ID@@";
	.
map:RegulationType_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType;
	d2rq:property vocab:RegulationType_DB_ID;
	d2rq:column "RegulationType.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table RegulationType_2_instanceOf
map:RegulationType_2_instanceOf a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "RegulationType_2_instanceOf";
	d2rq:class vocab:RegulationType_2_instanceOf;
	.
map:RegulationType_2_instanceOf__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_instanceOf;
	d2rq:property rdfs:label;
	d2rq:pattern "RegulationType_2_instanceOf #";
	.
map:RegulationType_2_instanceOf_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_instanceOf;
	d2rq:property vocab:RegulationType_2_instanceOf_DB_ID;
	d2rq:column "RegulationType_2_instanceOf.DB_ID";
	d2rq:datatype xsd:int;
	.
map:RegulationType_2_instanceOf_instanceOf_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_instanceOf;
	d2rq:property vocab:RegulationType_2_instanceOf_instanceOf_rank;
	d2rq:column "RegulationType_2_instanceOf.instanceOf_rank";
	d2rq:datatype xsd:int;
	.
map:RegulationType_2_instanceOf_instanceOf a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_instanceOf;
	d2rq:property vocab:RegulationType_2_instanceOf_instanceOf;
	d2rq:column "RegulationType_2_instanceOf.instanceOf";
	d2rq:datatype xsd:int;
	.
map:RegulationType_2_instanceOf_instanceOf_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_instanceOf;
	d2rq:property vocab:RegulationType_2_instanceOf_instanceOf_class;
	d2rq:column "RegulationType_2_instanceOf.instanceOf_class";
	.

# Table RegulationType_2_name
map:RegulationType_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "RegulationType_2_name";
	d2rq:class vocab:RegulationType_2_name;
	.
map:RegulationType_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "RegulationType_2_name #";
	.
map:RegulationType_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_name;
	d2rq:property vocab:RegulationType_2_name_DB_ID;
	d2rq:column "RegulationType_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:RegulationType_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_name;
	d2rq:property vocab:RegulationType_2_name_name_rank;
	d2rq:column "RegulationType_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:RegulationType_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:RegulationType_2_name;
	d2rq:property vocab:RegulationType_2_name_name;
	d2rq:column "RegulationType_2_name.name";
	.

# Table Regulation_2_edited
map:Regulation_2_edited a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_edited";
	d2rq:class vocab:Regulation_2_edited;
	.
map:Regulation_2_edited__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_edited;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_edited #";
	.
map:Regulation_2_edited_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_edited;
	d2rq:property vocab:Regulation_2_edited_DB_ID;
	d2rq:column "Regulation_2_edited.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_edited_edited_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_edited;
	d2rq:property vocab:Regulation_2_edited_edited_rank;
	d2rq:column "Regulation_2_edited.edited_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_edited_edited a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_edited;
	d2rq:property vocab:Regulation_2_edited_edited;
	d2rq:column "Regulation_2_edited.edited";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_edited_edited_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_edited;
	d2rq:property vocab:Regulation_2_edited_edited_class;
	d2rq:column "Regulation_2_edited.edited_class";
	.

# Table Regulation_2_figure
map:Regulation_2_figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_figure";
	d2rq:class vocab:Regulation_2_figure;
	.
map:Regulation_2_figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_figure;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_figure #";
	.
map:Regulation_2_figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_figure;
	d2rq:property vocab:Regulation_2_figure_DB_ID;
	d2rq:column "Regulation_2_figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_figure_figure_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_figure;
	d2rq:property vocab:Regulation_2_figure_figure_rank;
	d2rq:column "Regulation_2_figure.figure_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_figure_figure a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_figure;
	d2rq:property vocab:Regulation_2_figure_figure;
	d2rq:column "Regulation_2_figure.figure";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_figure_figure_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_figure;
	d2rq:property vocab:Regulation_2_figure_figure_class;
	d2rq:column "Regulation_2_figure.figure_class";
	.

# Table Regulation_2_literatureReference
map:Regulation_2_literatureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_literatureReference";
	d2rq:class vocab:Regulation_2_literatureReference;
	.
map:Regulation_2_literatureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_literatureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_literatureReference #";
	.
map:Regulation_2_literatureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_literatureReference;
	d2rq:property vocab:Regulation_2_literatureReference_DB_ID;
	d2rq:column "Regulation_2_literatureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_literatureReference_literatureReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_literatureReference;
	d2rq:property vocab:Regulation_2_literatureReference_literatureReference_rank;
	d2rq:column "Regulation_2_literatureReference.literatureReference_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_literatureReference_literatureReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_literatureReference;
	d2rq:property vocab:Regulation_2_literatureReference_literatureReference;
	d2rq:column "Regulation_2_literatureReference.literatureReference";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_literatureReference_literatureReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_literatureReference;
	d2rq:property vocab:Regulation_2_literatureReference_literatureReference_class;
	d2rq:column "Regulation_2_literatureReference.literatureReference_class";
	.

# Table Regulation_2_name
map:Regulation_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_name";
	d2rq:class vocab:Regulation_2_name;
	.
map:Regulation_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_name #";
	.
map:Regulation_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_name;
	d2rq:property vocab:Regulation_2_name_DB_ID;
	d2rq:column "Regulation_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_name;
	d2rq:property vocab:Regulation_2_name_name_rank;
	d2rq:column "Regulation_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_name;
	d2rq:property vocab:Regulation_2_name_name;
	d2rq:column "Regulation_2_name.name";
	.

# Table Regulation_2_reviewed
map:Regulation_2_reviewed a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_reviewed";
	d2rq:class vocab:Regulation_2_reviewed;
	.
map:Regulation_2_reviewed__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_reviewed;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_reviewed #";
	.
map:Regulation_2_reviewed_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_reviewed;
	d2rq:property vocab:Regulation_2_reviewed_DB_ID;
	d2rq:column "Regulation_2_reviewed.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_reviewed_reviewed_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_reviewed;
	d2rq:property vocab:Regulation_2_reviewed_reviewed_rank;
	d2rq:column "Regulation_2_reviewed.reviewed_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_reviewed_reviewed a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_reviewed;
	d2rq:property vocab:Regulation_2_reviewed_reviewed;
	d2rq:column "Regulation_2_reviewed.reviewed";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_reviewed_reviewed_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_reviewed;
	d2rq:property vocab:Regulation_2_reviewed_reviewed_class;
	d2rq:column "Regulation_2_reviewed.reviewed_class";
	.

# Table Regulation_2_revised
map:Regulation_2_revised a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_revised";
	d2rq:class vocab:Regulation_2_revised;
	.
map:Regulation_2_revised__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_revised;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_revised #";
	.
map:Regulation_2_revised_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_revised;
	d2rq:property vocab:Regulation_2_revised_DB_ID;
	d2rq:column "Regulation_2_revised.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_revised_revised_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_revised;
	d2rq:property vocab:Regulation_2_revised_revised_rank;
	d2rq:column "Regulation_2_revised.revised_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_revised_revised a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_revised;
	d2rq:property vocab:Regulation_2_revised_revised;
	d2rq:column "Regulation_2_revised.revised";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_revised_revised_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_revised;
	d2rq:property vocab:Regulation_2_revised_revised_class;
	d2rq:column "Regulation_2_revised.revised_class";
	.

# Table Regulation_2_summation
map:Regulation_2_summation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Regulation_2_summation";
	d2rq:class vocab:Regulation_2_summation;
	.
map:Regulation_2_summation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_summation;
	d2rq:property rdfs:label;
	d2rq:pattern "Regulation_2_summation #";
	.
map:Regulation_2_summation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_summation;
	d2rq:property vocab:Regulation_2_summation_DB_ID;
	d2rq:column "Regulation_2_summation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_summation_summation_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_summation;
	d2rq:property vocab:Regulation_2_summation_summation_rank;
	d2rq:column "Regulation_2_summation.summation_rank";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_summation_summation a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_summation;
	d2rq:property vocab:Regulation_2_summation_summation;
	d2rq:column "Regulation_2_summation.summation";
	d2rq:datatype xsd:int;
	.
map:Regulation_2_summation_summation_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Regulation_2_summation;
	d2rq:property vocab:Regulation_2_summation_summation_class;
	d2rq:column "Regulation_2_summation.summation_class";
	.

# Table ReplacedResidue
map:ReplacedResidue a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "ReplacedResidue/@@ReplacedResidue.DB_ID@@";
	d2rq:class vocab:ReplacedResidue;
	.
map:ReplacedResidue__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReplacedResidue;
	d2rq:property rdfs:label;
	d2rq:pattern "ReplacedResidue #@@ReplacedResidue.DB_ID@@";
	.
map:ReplacedResidue_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:ReplacedResidue;
	d2rq:property vocab:ReplacedResidue_DB_ID;
	d2rq:column "ReplacedResidue.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Requirement
map:Requirement a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Requirement/@@Requirement.DB_ID@@";
	d2rq:class vocab:Requirement;
	.
map:Requirement__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Requirement;
	d2rq:property rdfs:label;
	d2rq:pattern "Requirement #@@Requirement.DB_ID@@";
	.
map:Requirement_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Requirement;
	d2rq:property vocab:Requirement_DB_ID;
	d2rq:column "Requirement.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table SequenceDomain
map:SequenceDomain a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "SequenceDomain/@@SequenceDomain.DB_ID@@";
	d2rq:class vocab:SequenceDomain;
	.
map:SequenceDomain__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property rdfs:label;
	d2rq:pattern "SequenceDomain #@@SequenceDomain.DB_ID@@";
	.
map:SequenceDomain_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property vocab:SequenceDomain_DB_ID;
	d2rq:column "SequenceDomain.DB_ID";
	d2rq:datatype xsd:int;
	.
map:SequenceDomain_endCoordinate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property vocab:SequenceDomain_endCoordinate;
	d2rq:column "SequenceDomain.endCoordinate";
	d2rq:datatype xsd:int;
	.
map:SequenceDomain_referenceEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property vocab:SequenceDomain_referenceEntity;
	d2rq:column "SequenceDomain.referenceEntity";
	d2rq:datatype xsd:int;
	.
map:SequenceDomain_referenceEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property vocab:SequenceDomain_referenceEntity_class;
	d2rq:column "SequenceDomain.referenceEntity_class";
	.
map:SequenceDomain_startCoordinate a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SequenceDomain;
	d2rq:property vocab:SequenceDomain_startCoordinate;
	d2rq:column "SequenceDomain.startCoordinate";
	d2rq:datatype xsd:int;
	.

# Table SimpleEntity
map:SimpleEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "SimpleEntity/@@SimpleEntity.DB_ID@@";
	d2rq:class vocab:SimpleEntity;
	.
map:SimpleEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "SimpleEntity #@@SimpleEntity.DB_ID@@";
	.
map:SimpleEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity;
	d2rq:property vocab:SimpleEntity_DB_ID;
	d2rq:column "SimpleEntity.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table SimpleEntity_2_referenceEntity
map:SimpleEntity_2_referenceEntity a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "SimpleEntity_2_referenceEntity";
	d2rq:class vocab:SimpleEntity_2_referenceEntity;
	.
map:SimpleEntity_2_referenceEntity__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity_2_referenceEntity;
	d2rq:property rdfs:label;
	d2rq:pattern "SimpleEntity_2_referenceEntity #";
	.
map:SimpleEntity_2_referenceEntity_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity_2_referenceEntity;
	d2rq:property vocab:SimpleEntity_2_referenceEntity_DB_ID;
	d2rq:column "SimpleEntity_2_referenceEntity.DB_ID";
	d2rq:datatype xsd:int;
	.
map:SimpleEntity_2_referenceEntity_referenceEntity_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity_2_referenceEntity;
	d2rq:property vocab:SimpleEntity_2_referenceEntity_referenceEntity_rank;
	d2rq:column "SimpleEntity_2_referenceEntity.referenceEntity_rank";
	d2rq:datatype xsd:int;
	.
map:SimpleEntity_2_referenceEntity_referenceEntity a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity_2_referenceEntity;
	d2rq:property vocab:SimpleEntity_2_referenceEntity_referenceEntity;
	d2rq:column "SimpleEntity_2_referenceEntity.referenceEntity";
	d2rq:datatype xsd:int;
	.
map:SimpleEntity_2_referenceEntity_referenceEntity_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:SimpleEntity_2_referenceEntity;
	d2rq:property vocab:SimpleEntity_2_referenceEntity_referenceEntity_class;
	d2rq:column "SimpleEntity_2_referenceEntity.referenceEntity_class";
	.

# Table Species
map:Species a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Species/@@Species.DB_ID@@";
	d2rq:class vocab:Species;
	.
map:Species__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species;
	d2rq:property rdfs:label;
	d2rq:pattern "Species #@@Species.DB_ID@@";
	.
map:Species_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species;
	d2rq:property vocab:Species_DB_ID;
	d2rq:column "Species.DB_ID";
	d2rq:datatype xsd:int;
	.

# Table Species_2_figure
map:Species_2_figure a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Species_2_figure";
	d2rq:class vocab:Species_2_figure;
	.
map:Species_2_figure__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species_2_figure;
	d2rq:property rdfs:label;
	d2rq:pattern "Species_2_figure #";
	.
map:Species_2_figure_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species_2_figure;
	d2rq:property vocab:Species_2_figure_DB_ID;
	d2rq:column "Species_2_figure.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Species_2_figure_figure_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species_2_figure;
	d2rq:property vocab:Species_2_figure_figure_rank;
	d2rq:column "Species_2_figure.figure_rank";
	d2rq:datatype xsd:int;
	.
map:Species_2_figure_figure a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species_2_figure;
	d2rq:property vocab:Species_2_figure_figure;
	d2rq:column "Species_2_figure.figure";
	d2rq:datatype xsd:int;
	.
map:Species_2_figure_figure_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Species_2_figure;
	d2rq:property vocab:Species_2_figure_figure_class;
	d2rq:column "Species_2_figure.figure_class";
	.

# Table StableIdentifier
map:StableIdentifier a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "StableIdentifier/@@StableIdentifier.DB_ID@@";
	d2rq:class vocab:StableIdentifier;
	.
map:StableIdentifier__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property rdfs:label;
	d2rq:pattern "StableIdentifier #@@StableIdentifier.DB_ID@@";
	.
map:StableIdentifier_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property vocab:StableIdentifier_DB_ID;
	d2rq:column "StableIdentifier.DB_ID";
	d2rq:datatype xsd:int;
	.
map:StableIdentifier_identifier a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property vocab:StableIdentifier_identifier;
	d2rq:column "StableIdentifier.identifier";
	.
map:StableIdentifier_identifierVersion a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property vocab:StableIdentifier_identifierVersion;
	d2rq:column "StableIdentifier.identifierVersion";
	.
map:StableIdentifier_referenceDatabase a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property vocab:StableIdentifier_referenceDatabase;
	d2rq:column "StableIdentifier.referenceDatabase";
	d2rq:datatype xsd:int;
	.
map:StableIdentifier_referenceDatabase_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:StableIdentifier;
	d2rq:property vocab:StableIdentifier_referenceDatabase_class;
	d2rq:column "StableIdentifier.referenceDatabase_class";
	.

# Table Summation
map:Summation a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Summation/@@Summation.DB_ID@@";
	d2rq:class vocab:Summation;
	.
map:Summation__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation;
	d2rq:property rdfs:label;
	d2rq:pattern "Summation #@@Summation.DB_ID@@";
	.
map:Summation_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation;
	d2rq:property vocab:Summation_DB_ID;
	d2rq:column "Summation.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Summation_text a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation;
	d2rq:property vocab:Summation_text;
	d2rq:column "Summation.text";
	.

# Table Summation_2_literatureReference
map:Summation_2_literatureReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Summation_2_literatureReference";
	d2rq:class vocab:Summation_2_literatureReference;
	.
map:Summation_2_literatureReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation_2_literatureReference;
	d2rq:property rdfs:label;
	d2rq:pattern "Summation_2_literatureReference #";
	.
map:Summation_2_literatureReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation_2_literatureReference;
	d2rq:property vocab:Summation_2_literatureReference_DB_ID;
	d2rq:column "Summation_2_literatureReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Summation_2_literatureReference_literatureReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation_2_literatureReference;
	d2rq:property vocab:Summation_2_literatureReference_literatureReference_rank;
	d2rq:column "Summation_2_literatureReference.literatureReference_rank";
	d2rq:datatype xsd:int;
	.
map:Summation_2_literatureReference_literatureReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation_2_literatureReference;
	d2rq:property vocab:Summation_2_literatureReference_literatureReference;
	d2rq:column "Summation_2_literatureReference.literatureReference";
	d2rq:datatype xsd:int;
	.
map:Summation_2_literatureReference_literatureReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Summation_2_literatureReference;
	d2rq:property vocab:Summation_2_literatureReference_literatureReference_class;
	d2rq:column "Summation_2_literatureReference.literatureReference_class";
	.

# Table Taxon
map:Taxon a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "Taxon/@@Taxon.DB_ID@@";
	d2rq:class vocab:Taxon;
	.
map:Taxon__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon;
	d2rq:property rdfs:label;
	d2rq:pattern "Taxon #@@Taxon.DB_ID@@";
	.
map:Taxon_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon;
	d2rq:property vocab:Taxon_DB_ID;
	d2rq:column "Taxon.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Taxon_superTaxon a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon;
	d2rq:property vocab:Taxon_superTaxon;
	d2rq:column "Taxon.superTaxon";
	d2rq:datatype xsd:int;
	.
map:Taxon_superTaxon_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon;
	d2rq:property vocab:Taxon_superTaxon_class;
	d2rq:column "Taxon.superTaxon_class";
	.

# Table Taxon_2_crossReference
map:Taxon_2_crossReference a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Taxon_2_crossReference";
	d2rq:class vocab:Taxon_2_crossReference;
	.
map:Taxon_2_crossReference__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_crossReference;
	d2rq:property rdfs:label;
	d2rq:pattern "Taxon_2_crossReference #";
	.
map:Taxon_2_crossReference_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_crossReference;
	d2rq:property vocab:Taxon_2_crossReference_DB_ID;
	d2rq:column "Taxon_2_crossReference.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Taxon_2_crossReference_crossReference_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_crossReference;
	d2rq:property vocab:Taxon_2_crossReference_crossReference_rank;
	d2rq:column "Taxon_2_crossReference.crossReference_rank";
	d2rq:datatype xsd:int;
	.
map:Taxon_2_crossReference_crossReference a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_crossReference;
	d2rq:property vocab:Taxon_2_crossReference_crossReference;
	d2rq:column "Taxon_2_crossReference.crossReference";
	d2rq:datatype xsd:int;
	.
map:Taxon_2_crossReference_crossReference_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_crossReference;
	d2rq:property vocab:Taxon_2_crossReference_crossReference_class;
	d2rq:column "Taxon_2_crossReference.crossReference_class";
	.

# Table Taxon_2_name
map:Taxon_2_name a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "Taxon_2_name";
	d2rq:class vocab:Taxon_2_name;
	.
map:Taxon_2_name__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_name;
	d2rq:property rdfs:label;
	d2rq:pattern "Taxon_2_name #";
	.
map:Taxon_2_name_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_name;
	d2rq:property vocab:Taxon_2_name_DB_ID;
	d2rq:column "Taxon_2_name.DB_ID";
	d2rq:datatype xsd:int;
	.
map:Taxon_2_name_name_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_name;
	d2rq:property vocab:Taxon_2_name_name_rank;
	d2rq:column "Taxon_2_name.name_rank";
	d2rq:datatype xsd:int;
	.
map:Taxon_2_name_name a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:Taxon_2_name;
	d2rq:property vocab:Taxon_2_name_name;
	d2rq:column "Taxon_2_name.name";
	.

# Table _AttributeValueBeforeChange
map:_AttributeValueBeforeChange a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "_AttributeValueBeforeChange/@@_AttributeValueBeforeChange.DB_ID@@";
	d2rq:class vocab:_AttributeValueBeforeChange;
	.
map:_AttributeValueBeforeChange__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange;
	d2rq:property rdfs:label;
	d2rq:pattern "_AttributeValueBeforeChange #@@_AttributeValueBeforeChange.DB_ID@@";
	.
map:_AttributeValueBeforeChange_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange;
	d2rq:property vocab:_AttributeValueBeforeChange_DB_ID;
	d2rq:column "_AttributeValueBeforeChange.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_AttributeValueBeforeChange_changedAttribute a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange;
	d2rq:property vocab:_AttributeValueBeforeChange_changedAttribute;
	d2rq:column "_AttributeValueBeforeChange.changedAttribute";
	.

# Table _AttributeValueBeforeChange_2_previousValue
map:_AttributeValueBeforeChange_2_previousValue a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "_AttributeValueBeforeChange_2_previousValue";
	d2rq:class vocab:_AttributeValueBeforeChange_2_previousValue;
	.
map:_AttributeValueBeforeChange_2_previousValue__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange_2_previousValue;
	d2rq:property rdfs:label;
	d2rq:pattern "_AttributeValueBeforeChange_2_previousValue #";
	.
map:_AttributeValueBeforeChange_2_previousValue_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange_2_previousValue;
	d2rq:property vocab:_AttributeValueBeforeChange_2_previousValue_DB_ID;
	d2rq:column "_AttributeValueBeforeChange_2_previousValue.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_AttributeValueBeforeChange_2_previousValue_previousValue_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange_2_previousValue;
	d2rq:property vocab:_AttributeValueBeforeChange_2_previousValue_previousValue_rank;
	d2rq:column "_AttributeValueBeforeChange_2_previousValue.previousValue_rank";
	d2rq:datatype xsd:int;
	.
map:_AttributeValueBeforeChange_2_previousValue_previousValue a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_AttributeValueBeforeChange_2_previousValue;
	d2rq:property vocab:_AttributeValueBeforeChange_2_previousValue_previousValue;
	d2rq:column "_AttributeValueBeforeChange_2_previousValue.previousValue";
	.

# Table _Deleted
map:_Deleted a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "_Deleted/@@_Deleted.DB_ID@@";
	d2rq:class vocab:_Deleted;
	.
map:_Deleted__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted;
	d2rq:property rdfs:label;
	d2rq:pattern "_Deleted #@@_Deleted.DB_ID@@";
	.
map:_Deleted_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted;
	d2rq:property vocab:_Deleted_DB_ID;
	d2rq:column "_Deleted.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_Deleted_curatorComment a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted;
	d2rq:property vocab:_Deleted_curatorComment;
	d2rq:column "_Deleted.curatorComment";
	.
map:_Deleted_reason a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted;
	d2rq:property vocab:_Deleted_reason;
	d2rq:column "_Deleted.reason";
	d2rq:datatype xsd:int;
	.
map:_Deleted_reason_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted;
	d2rq:property vocab:_Deleted_reason_class;
	d2rq:column "_Deleted.reason_class";
	.

# Table _Deleted_2_deletedInstanceDB_ID
map:_Deleted_2_deletedInstanceDB_ID a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "_Deleted_2_deletedInstanceDB_ID";
	d2rq:class vocab:_Deleted_2_deletedInstanceDB_ID;
	.
map:_Deleted_2_deletedInstanceDB_ID__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_deletedInstanceDB_ID;
	d2rq:property rdfs:label;
	d2rq:pattern "_Deleted_2_deletedInstanceDB_ID #";
	.
map:_Deleted_2_deletedInstanceDB_ID_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_deletedInstanceDB_ID;
	d2rq:property vocab:_Deleted_2_deletedInstanceDB_ID_DB_ID;
	d2rq:column "_Deleted_2_deletedInstanceDB_ID.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_Deleted_2_deletedInstanceDB_ID_deletedInstanceDB_ID_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_deletedInstanceDB_ID;
	d2rq:property vocab:_Deleted_2_deletedInstanceDB_ID_deletedInstanceDB_ID_rank;
	d2rq:column "_Deleted_2_deletedInstanceDB_ID.deletedInstanceDB_ID_rank";
	d2rq:datatype xsd:int;
	.
map:_Deleted_2_deletedInstanceDB_ID_deletedInstanceDB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_deletedInstanceDB_ID;
	d2rq:property vocab:_Deleted_2_deletedInstanceDB_ID_deletedInstanceDB_ID;
	d2rq:column "_Deleted_2_deletedInstanceDB_ID.deletedInstanceDB_ID";
	d2rq:datatype xsd:int;
	.

# Table _Deleted_2_replacementInstances
map:_Deleted_2_replacementInstances a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "_Deleted_2_replacementInstances";
	d2rq:class vocab:_Deleted_2_replacementInstances;
	.
map:_Deleted_2_replacementInstances__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_replacementInstances;
	d2rq:property rdfs:label;
	d2rq:pattern "_Deleted_2_replacementInstances #";
	.
map:_Deleted_2_replacementInstances_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_replacementInstances;
	d2rq:property vocab:_Deleted_2_replacementInstances_DB_ID;
	d2rq:column "_Deleted_2_replacementInstances.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_Deleted_2_replacementInstances_replacementInstances_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_replacementInstances;
	d2rq:property vocab:_Deleted_2_replacementInstances_replacementInstances_rank;
	d2rq:column "_Deleted_2_replacementInstances.replacementInstances_rank";
	d2rq:datatype xsd:int;
	.
map:_Deleted_2_replacementInstances_replacementInstances a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_replacementInstances;
	d2rq:property vocab:_Deleted_2_replacementInstances_replacementInstances;
	d2rq:column "_Deleted_2_replacementInstances.replacementInstances";
	d2rq:datatype xsd:int;
	.
map:_Deleted_2_replacementInstances_replacementInstances_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_Deleted_2_replacementInstances;
	d2rq:property vocab:_Deleted_2_replacementInstances_replacementInstances_class;
	d2rq:column "_Deleted_2_replacementInstances.replacementInstances_class";
	.

# Table _InstanceBeforeChange
map:_InstanceBeforeChange a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	d2rq:uriPattern "_InstanceBeforeChange/@@_InstanceBeforeChange.DB_ID@@";
	d2rq:class vocab:_InstanceBeforeChange;
	.
map:_InstanceBeforeChange__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange;
	d2rq:property rdfs:label;
	d2rq:pattern "_InstanceBeforeChange #@@_InstanceBeforeChange.DB_ID@@";
	.
map:_InstanceBeforeChange_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_DB_ID;
	d2rq:column "_InstanceBeforeChange.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_changedInstanceDB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_changedInstanceDB_ID;
	d2rq:column "_InstanceBeforeChange.changedInstanceDB_ID";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_instanceEdit a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_instanceEdit;
	d2rq:column "_InstanceBeforeChange.instanceEdit";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_instanceEdit_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_instanceEdit_class;
	d2rq:column "_InstanceBeforeChange.instanceEdit_class";
	.

# Table _InstanceBeforeChange_2_attributeValuesBeforeChange
map:_InstanceBeforeChange_2_attributeValuesBeforeChange a d2rq:ClassMap;
	d2rq:dataStorage map:database;
	# Sorry, I don't know which columns to put into the uriPattern
	# because the table doesn't have a primary key
	d2rq:uriPattern "_InstanceBeforeChange_2_attributeValuesBeforeChange";
	d2rq:class vocab:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	.
map:_InstanceBeforeChange_2_attributeValuesBeforeChange__label a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	d2rq:property rdfs:label;
	d2rq:pattern "_InstanceBeforeChange_2_attributeValuesBeforeChange #";
	.
map:_InstanceBeforeChange_2_attributeValuesBeforeChange_DB_ID a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_2_attributeValuesBeforeChange_DB_ID;
	d2rq:column "_InstanceBeforeChange_2_attributeValuesBeforeChange.DB_ID";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange_rank a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange_rank;
	d2rq:column "_InstanceBeforeChange_2_attributeValuesBeforeChange.attributeValuesBeforeChange_rank";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange;
	d2rq:column "_InstanceBeforeChange_2_attributeValuesBeforeChange.attributeValuesBeforeChange";
	d2rq:datatype xsd:int;
	.
map:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange_class a d2rq:PropertyBridge;
	d2rq:belongsToClassMap map:_InstanceBeforeChange_2_attributeValuesBeforeChange;
	d2rq:property vocab:_InstanceBeforeChange_2_attributeValuesBeforeChange_attributeValuesBeforeChange_class;
	d2rq:column "_InstanceBeforeChange_2_attributeValuesBeforeChange.attributeValuesBeforeChange_class";
	.

