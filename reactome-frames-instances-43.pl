;; note this is also http://www.reactome.org/download/current/reactome_data_model.pins

;+ (version "2.1.2")
;+ (build "Build 246")

([__is_ghost] of %3AEXTENDED-SLOT)

([_applyToAllEditedInstances] of %3AEXTENDED-SLOT)

([_attributeCategory] of %3ASTANDARD-FACET
	(%3AASSOCIATED-SLOT [attributeCategory]))

([_AttributeValueBeforeChange] of %3AEXTENDED-CLASS)

([_databaseColumnSpecification] of %3ASTANDARD-FACET
	(%3AASSOCIATED-SLOT [databaseColumnSpecification]))

([_Deleted] of %3AEXTENDED-CLASS)

([_displayName] of %3AEXTENDED-SLOT)

([_doNotRelease] of %3AEXTENDED-SLOT)

([_doRelease] of %3AEXTENDED-SLOT)

([_identityDefinedBy] of %3ASTANDARD-FACET
	(%3AASSOCIATED-SLOT [identityDefinedBy]))

([_InstanceBeforeChange] of %3AEXTENDED-CLASS)

([_Protege_id] of %3AEXTENDED-SLOT)

([_Release] of %3AEXTENDED-CLASS)

([_slotDisplayName] of %3ASTANDARD-FACET
	(%3AASSOCIATED-SLOT [slotDisplayName]))

([AbstractModifiedResidue] of %3AEXTENDED-CLASS)

([accession] of %3AEXTENDED-SLOT)

([accessUrl] of %3AEXTENDED-SLOT)

([activeUnit] of %3AEXTENDED-SLOT)

([activity] of %3AEXTENDED-SLOT)

([address] of %3AEXTENDED-SLOT)

([Affiliation] of %3AEXTENDED-CLASS)

([affiliation] of %3AEXTENDED-SLOT)

([atomicConnectivity] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([attributeCategory] of %3AEXTENDED-SLOT
	(%3AASSOCIATED-FACET [_attributeCategory]))

([attributeValuesBeforeChange] of %3AEXTENDED-SLOT)

([author] of %3AEXTENDED-SLOT)

([authored] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([BlackBoxEvent] of %3AEXTENDED-CLASS)

([Book] of %3AEXTENDED-CLASS)

([CandidateSet] of %3AEXTENDED-CLASS)

([CatalystActivity] of %3AEXTENDED-CLASS)

([catalystActivity] of %3AEXTENDED-SLOT)

([CellType] of %3AEXTENDED-CLASS)

([cellType] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL)
	(identityDefinedBy ALL))

([changedAttribute] of %3AEXTENDED-SLOT
	(databaseColumnSpecification "VARCHAR(64)"))

([changedInstance] of %3AEXTENDED-SLOT)

([changedInstanceDB_ID] of %3AEXTENDED-SLOT)

([chapterAuthors] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([chapterTitle] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL)
	(identityDefinedBy ANY))

([checksum] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([classDisplayName] of %3AEXTENDED-SLOT)

([comment] of %3AEXTENDED-SLOT)

([Compartment] of %3AEXTENDED-CLASS)

([compartment] of %3AEXTENDED-SLOT)

([Complex] of %3AEXTENDED-CLASS)

([ComplexDomain] of %3AEXTENDED-CLASS)

([componentOf] of %3AEXTENDED-SLOT)

([concurrentEvents] of %3AEXTENDED-SLOT
	(identityDefinedBy ALL))

([ConcurrentEventSet] of %3AEXTENDED-CLASS)

([containedInEntityVertex] of %3AEXTENDED-SLOT)

([ControlledVocabulary] of %3AEXTENDED-CLASS)

([coordinate] of %3AEXTENDED-SLOT
	(attributeCategory REQUIRED))

([created] of %3AEXTENDED-SLOT)

([creatingActivity] of %3AEXTENDED-SLOT)

([CrosslinkedResidue] of %3AEXTENDED-CLASS)

([crossReference] of %3AEXTENDED-SLOT)

([curatorComment] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([databaseColumnSpecification] of %3AEXTENDED-SLOT
	(%3AASSOCIATED-FACET [_databaseColumnSpecification]))

([DatabaseIdentifier] of %3AEXTENDED-CLASS)

([databaseIdentifier] of %3AEXTENDED-SLOT)

([DatabaseObject] of %3AEXTENDED-CLASS)

([dateAccepted] of %3AEXTENDED-SLOT)

([dateRevised] of %3AEXTENDED-SLOT)

([dateSubmitted] of %3AEXTENDED-SLOT)

([dateTime] of %3AEXTENDED-SLOT)

([DB_ID] of %3AEXTENDED-SLOT)

([DefinedSet] of %3AEXTENDED-CLASS)

([definition] of %3AEXTENDED-SLOT)

([DeletedControlledVocabulary] of %3AEXTENDED-CLASS)

([deletedInstanceDB_ID] of %3AEXTENDED-SLOT
	(attributeCategory MANDATORY))

([Depolymerisation] of %3AEXTENDED-CLASS)

([description] of %3AEXTENDED-SLOT)

([Disease] of %3AEXTENDED-CLASS)

([disease] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([doi] of %3AEXTENDED-SLOT)

([Domain] of %3AEXTENDED-CLASS)

([ecNumber] of %3AEXTENDED-SLOT)

([edgeType] of %3AEXTENDED-SLOT)

([edited] of %3AEXTENDED-SLOT)

([editor] of %3AEXTENDED-SLOT)

([eMailAddress] of %3AEXTENDED-SLOT)

([endCoordinate] of %3AEXTENDED-SLOT)

([endPositionInReferenceSequence] of %3AEXTENDED-SLOT
	(attributeCategory MANDATORY))

([EntityCompartment] of %3AEXTENDED-CLASS)

([EntityFunctionalStatus] of %3AEXTENDED-CLASS)

([entityFunctionalStatus] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL)
	(identityDefinedBy ALL))

([entityOnOtherCell] of %3AEXTENDED-SLOT)

([EntitySet] of %3AEXTENDED-CLASS)

([EntityWithAccessionedSequence] of %3AEXTENDED-CLASS)

([equivalentTo] of %3AEXTENDED-SLOT
	(attributeCategory MANDATORY))

([Event] of %3AEXTENDED-CLASS)

([eventLocationContext] of %3AEXTENDED-SLOT)

([evidenceType] of %3AEXTENDED-SLOT)

([ExternalOntology] of %3AEXTENDED-CLASS)

([Figure] of %3AEXTENDED-CLASS)

([figure] of %3AEXTENDED-SLOT)

([fingerPrintString] of %3AEXTENDED-SLOT)

([firstname] of %3AEXTENDED-SLOT)

([focusEntity] of %3AEXTENDED-SLOT
	(identityDefinedBy ALL))

([formula] of %3AEXTENDED-SLOT
	(attributeCategory OPTIONAL))

([FragmentDeletionModification] of %3AEXTENDED-CLASS)

([FragmentInsertionModification] of %3AEXTENDED-CLASS)

([FragmentModification] of %3AEXTENDED-CLASS)

([FrontPage] of %3AEXTENDED-CLASS)

([frontPageItem] of %3AEXTENDED-SLOT)

([FunctionalStatus] of %3AEXTENDED-CLASS)

([functionalStatus] of %3AEXTENDED-SLOT
	(attributeCategory MANDATORY)
	(identityDefinedBy ALL))

([FunctionalStatusType] of %3AEXTENDED-CLASS)

([functionalStatusType] of %3AEXTENDED-SLOT
	(attributeCategory MANDATORY)
	(databaseColumnSpecification "ENUM('gain_of_function', 'loss_of_function', 'partial_loss_of_function', 'decreased_translational_product_level', 'increased_translational_product_level')")
	(identityDefinedBy ANY))

([geneName] of %3AEXTENDED-SLOT)

([GenericDomain] of %3AEXTENDED-CLASS)

([GeneticallyModifiedResidue] of %3AEXTENDED-CLASS)

([GenomeEncodedEntity] of %3AEXTENDED-CLASS)

([GK_1] of ReferenceDatabase
	(_displayName "GO")
	(accessUrl "http://www.ebi.ac.uk/ego/QuickGO?mode=display&entry=GO:###ID###")
	(DB_ID 1)
	(name
		"GO"
		"Gene Ontology")
	(url "http://www.geneontology.org"))

([GK_1011570] of EntityWithAccessionedSequence
	(_displayName "[Hsa] perlecan [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1011570)
	(endCoordinate 4391)
	(name
		"perlecan"
		"HSPG2")
	(referenceEntity [GK_61584])
	(species [GK_48887])
	(stableIdentifier [GK_1358429])
	(startCoordinate 22))

([GK_1042833] of GO_CellularComponent
	(_displayName "cell periphery")
	(accession "0071944")
	(DB_ID 1042833)
	(definition "The part of a cell encompassing the cell cortex, the plasma membrane, and any external encapsulating structures.")
	(instanceOf [GK_258147])
	(name "cell periphery")
	(referenceDatabase [GK_1]))

([GK_1043016] of GO_BiologicalProcess
	(_displayName "regulation of cysteine-type endopeptidase activity")
	(accession "2000116")
	(DB_ID 1043016)
	(definition "Any process that modulates the frequency, rate or extent of cysteine-type endopeptidase activity.")
	(instanceOf [GK_258859])
	(name "regulation of cysteine-type endopeptidase activity")
	(referenceDatabase [GK_1])
	(regulate [GK_4344]))

([GK_106] of GO_BiologicalProcess
	(_displayName "biological_process")
	(accession "0008150")
	(DB_ID 106)
	(definition "Any process specifically pertinent to the functioning of integrated living units: cells, tissues, organs, and organisms. A process is a collection of molecular events with a defined beginning and end.")
	(name "biological_process")
	(referenceDatabase [GK_1]))

([GK_109477] of Person
	(_displayName "Hellman, U")
	(DB_ID 109477)
	(firstname "Ulf")
	(initial "U")
	(surname "Hellman"))

([GK_109607] of Pathway
	(_displayName "[Hsa] Extrinsic Pathway for Apoptosis")
	(_doRelease TRUE)
	(authored [GK_139957])
	(compartment [GK_356])
	(DB_ID 109607)
	(doi "10.3180/REACT_1059.1")
	(edited [GK_165085])
	(figure [GK_141277])
	(goBiologicalProcess [GK_25446])
	(hasEvent
		[GK_73887]
		[GK_140534])
	(literatureReference [GK_139960])
	(name "Extrinsic Pathway for Apoptosis")
	(reviewed [GK_165094])
	(species [GK_48887])
	(stableIdentifier [GK_360111])
	(summation [GK_139959]))

([GK_1105998] of StableIdentifier
	(_displayName "REACT_18708.1")
	(DB_ID 1105998)
	(identifier "REACT_18708")
	(identifierVersion "1"))

([GK_111029] of Person
	(_displayName "Camonis, JH")
	(DB_ID 111029)
	(firstname "J H")
	(initial "JH")
	(surname "Camonis"))

([GK_1110572] of StableIdentifier
	(_displayName "REACT_24037.1")
	(DB_ID 1110572)
	(identifier "REACT_24037")
	(identifierVersion "1"))

([GK_1111661] of StableIdentifier
	(_displayName "REACT_18787.1")
	(DB_ID 1111661)
	(identifier "REACT_18787")
	(identifierVersion "1"))

([GK_111168] of Person
	(_displayName "Smith, CA")
	(DB_ID 111168)
	(firstname "C A")
	(initial "CA")
	(surname "Smith"))

([GK_114129] of Person
	(_displayName "Zhang, X")
	(DB_ID 114129)
	(firstname "Xiuqin")
	(initial "X")
	(surname "Zhang"))

([GK_114197] of Person
	(_displayName "Yamaguchi, Y")
	(DB_ID 114197)
	(firstname "Yuki")
	(initial "Y")
	(surname "Yamaguchi"))

([GK_114768] of ReferenceMolecule
	(_displayName "Calcium [ChEBI:29108]")
	(crossReference
		[GK_29497]
		[GK_183728])
	(DB_ID 114768)
	(identifier "29108")
	(name
		"Calcium"
		"Ca2+")
	(referenceDatabase [GK_114984]))

([GK_114961] of ReferenceGroup
	(_displayName "Double-stranded DNA")
	(crossReference [GK_30151])
	(DB_ID 114961)
	(identifier "4705")
	(name "Double-stranded DNA")
	(referenceDatabase [GK_114984]))

([GK_114984] of ReferenceDatabase
	(_displayName "ChEBI")
	(accessUrl "http://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:###ID###")
	(DB_ID 114984)
	(name "ChEBI")
	(url "http://www.ebi.ac.uk/chebi"))

([GK_1247556] of Affiliation
	(_displayName "La Trobe University, Institute for Molecular Science")
	(address "Victoria AU")
	(DB_ID 1247556)
	(name "La Trobe University, Institute for Molecular Science"))

([GK_1247689] of ModifiedResidue
	(_displayName "L-proline residue at 30")
	(coordinate 30)
	(DB_ID 1247689)
	(psiMod [GK_611069])
	(referenceSequence [GK_65462]))

([GK_1247690] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Alpha-synuclein (A30P) [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1247690)
	(endCoordinate -1)
	(hasModifiedResidue [GK_1247689])
	(name
		"Alpha-synuclein (A30P)"
		"SNCA"
		"SYUA_HUMAN"
		"SNCA")
	(referenceEntity [GK_65462])
	(species [GK_48887])
	(stableIdentifier [GK_1357932])
	(startCoordinate 1))

([GK_1247691] of LiteratureReference
	(_displayName "Amyloid fibril protein related to prealbumin in familial amyloidotic polyneuropathy")
	(author
		[GK_1247754]
		[GK_1247741]
		[GK_1247799])
	(DB_ID 1247691)
	(journal "Proc Natl Acad Sci U S A")
	(pages "4499-503")
	(pubMedIdentifier 279930)
	(title "Amyloid fibril protein related to prealbumin in familial amyloidotic polyneuropathy")
	(volume 75)
	(year 1978))

([GK_1247692] of Person
	(_displayName "Canneva, F")
	(DB_ID 1247692)
	(initial "F")
	(surname "Canneva"))

([GK_1247693] of Person
	(_displayName "Gage, FH")
	(DB_ID 1247693)
	(initial "FH")
	(surname "Gage"))

([GK_1247694] of Person
	(_displayName "Jarrett, JT")
	(DB_ID 1247694)
	(initial "JT")
	(surname "Jarrett"))

([GK_1247695] of Person
	(_displayName "Soragni, A")
	(DB_ID 1247695)
	(initial "A")
	(surname "Soragni"))

([GK_1247696] of LiteratureReference
	(_displayName "Amyloid beta-protein assembly and Alzheimer disease")
	(author
		[GK_1247749]
		[GK_1247783]
		[GK_1247785]
		[GK_75542])
	(DB_ID 1247696)
	(journal "J Biol Chem")
	(pages "4749-53")
	(pubMedIdentifier 18845536)
	(title "Amyloid beta-protein assembly and Alzheimer disease")
	(volume 284)
	(year 2009))

([GK_1247697] of LiteratureReference
	(_displayName "Serum levels of beta 2-microglobulin as a new form of amyloid protein in patients undergoing long-term hemodialysis")
	(author
		[GK_977120]
		[GK_1247744]
		[GK_193525]
		[GK_1247756])
	(DB_ID 1247697)
	(journal "N Engl J Med")
	(pages "585-6")
	(pubMedIdentifier 3080684)
	(title "Serum levels of beta 2-microglobulin as a new form of amyloid protein in patients undergoing long-term hemodialysis")
	(volume 314)
	(year 1986))

([GK_1247698] of Person
	(_displayName "Scott, K")
	(DB_ID 1247698)
	(initial "K")
	(surname "Scott"))

([GK_1247699] of Person
	(_displayName "Hori, S")
	(DB_ID 1247699)
	(initial "S")
	(surname "Hori"))

([GK_1247700] of Person
	(_displayName "Sievers, SA")
	(DB_ID 1247700)
	(initial "SA")
	(surname "Sievers"))

([GK_1247701] of Person
	(_displayName "Stevens, FJ")
	(DB_ID 1247701)
	(initial "FJ")
	(surname "Stevens"))

([GK_1247702] of LiteratureReference
	(_displayName "Immunoglobulin heavy-chain-associated amyloidosis")
	(author
		[GK_207287]
		[GK_976922]
		[GK_976858])
	(DB_ID 1247702)
	(journal "Proc Natl Acad Sci U S A")
	(pages "6542-6")
	(pubMedIdentifier 2118650)
	(title "Immunoglobulin heavy-chain-associated amyloidosis")
	(volume 87)
	(year 1990))

([GK_1247703] of LiteratureReference
	(_displayName "Tau oligomers and aggregation in Alzheimer's disease")
	(author
		[GK_1247775]
		[GK_1247731]
		[GK_1247746]
		[GK_1247710]
		[GK_1247780])
	(DB_ID 1247703)
	(journal "J Neurochem")
	(pages "1353-67")
	(pubMedIdentifier 19943854)
	(title "Tau oligomers and aggregation in Alzheimer's disease")
	(volume 112)
	(year 2010))

([GK_1247704] of URL
	(_displayName "http://www.alzforum.org/new/detailprint.asp?id=2276")
	(author
		[GK_1247742]
		[GK_1247705])
	(DB_ID 1247704)
	(title "Alzheimer Research Forum")
	(uniformResourceLocator "http://www.alzforum.org/new/detailprint.asp?id=2276"))

([GK_1247705] of Person
	(_displayName "Strobel, G")
	(affiliation [GK_1247728])
	(DB_ID 1247705)
	(firstname "Gabrielle")
	(initial "G")
	(surname "Strobel"))

([GK_1247706] of Person
	(_displayName "Wallace, A")
	(DB_ID 1247706)
	(initial "A")
	(surname "Wallace"))

([GK_1247707] of DefinedSet
	(_displayName "[Hsa] Alpha-synuclein [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1247707)
	(hasMember
		[GK_976954]
		[GK_1247690])
	(name "Alpha-synuclein")
	(species [GK_48887])
	(stableIdentifier [GK_1358302]))

([GK_1247708] of Person
	(_displayName "Riekel, C")
	(DB_ID 1247708)
	(initial "C")
	(surname "Riekel"))

([GK_1247709] of LiteratureReference
	(_displayName "Localized amyloidosis of the seminal vesicle: identification of lactoferrin immunoreactivity in the amyloid material")
	(author
		[GK_375875]
		[GK_1247752]
		[GK_1247699])
	(DB_ID 1247709)
	(journal "Pathol Int")
	(pages "491-7")
	(pubMedIdentifier 8870004)
	(title "Localized amyloidosis of the seminal vesicle: identification of lactoferrin immunoreactivity in the amyloid material")
	(volume 46)
	(year 1996))

([GK_1247710] of Person
	(_displayName "De Anda-HernÃ¡ndez, MA")
	(DB_ID 1247710)
	(initial "MA")
	(surname "De Anda-HernÃ¡ndez"))

([GK_1247711] of LiteratureReference
	(_displayName "Isolation and partial characterization of SAA-an amyloid-related protein from human serum")
	(author
		[GK_1247750]
		[GK_1247796]
		[GK_976928]
		[GK_1247764])
	(DB_ID 1247711)
	(journal "J Immunol")
	(pages "1415-8")
	(pubMedIdentifier 1270801)
	(title "Isolation and partial characterization of SAA-an amyloid-related protein from human serum")
	(volume 116)
	(year 1976))

([GK_1247712] of Person
	(_displayName "Kennel, SJ")
	(DB_ID 1247712)
	(initial "SJ")
	(surname "Kennel"))

([GK_1247713] of Person
	(_displayName "James, S")
	(DB_ID 1247713)
	(initial "S")
	(surname "James"))

([GK_1247714] of Person
	(_displayName "Sambashivan, S")
	(DB_ID 1247714)
	(initial "S")
	(surname "Sambashivan"))

([GK_1247715] of LiteratureReference
	(_displayName "Transgenic mice as a model of pre-clinical Alzheimer's disease")
	(author
		[GK_1247778]
		[GK_1247769]
		[GK_1247751]
		[GK_1247692]
		[GK_1247725]
		[GK_1247723]
		[GK_1247800]
		[GK_1247727]
		[GK_1247732]
		[GK_1247738]
		[GK_1247761]
		[GK_212143]
		[GK_1247789])
	(DB_ID 1247715)
	(journal "Curr Alzheimer Res")
	(pages "4-23")
	(pubMedIdentifier 21143159)
	(title "Transgenic mice as a model of pre-clinical Alzheimer's disease")
	(volume 8)
	(year 2011))

([GK_1247716] of Person
	(_displayName "Kestler, DP")
	(DB_ID 1247716)
	(initial "DP")
	(surname "Kestler"))

([GK_1247717] of LiteratureReference
	(_displayName "Odontogenic ameloblast-associated protein nature of the amyloid found in calcifying epithelial odontogenic tumors and unerupted tooth follicles")
	(author
		[GK_976849]
		[GK_1247716]
		[GK_1247798]
		[GK_140991]
		[GK_1247792]
		[GK_1247712]
		[GK_1247807]
		[GK_517749]
		[GK_976922]
		[GK_976858])
	(DB_ID 1247717)
	(journal "Amyloid")
	(pages "89-95")
	(pubMedIdentifier 18484335)
	(title "Odontogenic ameloblast-associated protein nature of the amyloid found in calcifying epithelial odontogenic tumors and unerupted tooth follicles")
	(volume 15)
	(year 2008))

([GK_1247718] of Person
	(_displayName "Myatt, EA")
	(DB_ID 1247718)
	(initial "EA")
	(surname "Myatt"))

([GK_1247719] of LiteratureReference
	(_displayName "In vivo demonstration that {alpha}-synuclein oligomers are toxic")
	(author
		[GK_1247788]
		[GK_1247790]
		[GK_1247806]
		[GK_1247765]
		[GK_1247768]
		[GK_437238]
		[GK_1247804]
		[GK_1247797]
		[GK_1247726]
		[GK_1247773]
		[GK_1247743]
		[GK_1247695]
		[GK_1247747]
		[GK_1247770]
		[GK_1247767]
		[GK_1247733]
		[GK_1247794]
		[GK_1247693]
		[GK_1247772])
	(DB_ID 1247719)
	(journal "Proc Natl Acad Sci U S A")
	(pages "4194-9")
	(pubMedIdentifier 21325059)
	(title "In vivo demonstration that {alpha}-synuclein oligomers are toxic")
	(volume 108)
	(year 2011))

([GK_1247720] of Person
	(_displayName "Ivanova, MI")
	(DB_ID 1247720)
	(initial "MI")
	(surname "Ivanova"))

([GK_1247721] of Person
	(_displayName "Schiffer, M")
	(DB_ID 1247721)
	(initial "M")
	(surname "Schiffer"))

([GK_1247722] of LiteratureReference
	(_displayName "Amyloid fibril protein nomenclature: 2010 recommendations from the nomenclature committee of the International Society of Amyloidosis")
	(author
		[GK_1247763]
		[GK_976904]
		[GK_1247816]
		[GK_207482]
		[GK_1247730]
		[GK_976872]
		[GK_976884])
	(DB_ID 1247722)
	(journal "Amyloid")
	(pages "101-4")
	(pubMedIdentifier 21039326)
	(title "Amyloid fibril protein nomenclature: 2010 recommendations from the nomenclature committee of the International Society of Amyloidosis")
	(volume 17)
	(year 2010))

([GK_1247723] of Person
	(_displayName "Arvanitis, DN")
	(DB_ID 1247723)
	(initial "DN")
	(surname "Arvanitis"))

([GK_1247724] of LiteratureReference
	(_displayName "Leukocyte chemotactic factor 2: A novel renal amyloid protein")
	(author
		[GK_976904]
		[GK_1247713]
		[GK_1247698]
		[GK_976874]
		[GK_976932])
	(DB_ID 1247724)
	(journal "Kidney Int")
	(pages "218-22")
	(pubMedIdentifier 18449172)
	(title "Leukocyte chemotactic factor 2: A novel renal amyloid protein")
	(volume 74)
	(year 2008))

([GK_1247725] of Person
	(_displayName "Allard, S")
	(DB_ID 1247725)
	(initial "S")
	(surname "Allard"))

([GK_1247726] of Person
	(_displayName "Vilar, M")
	(DB_ID 1247726)
	(initial "M")
	(surname "Vilar"))

([GK_1247727] of Person
	(_displayName "Houle, D")
	(DB_ID 1247727)
	(initial "D")
	(surname "Houle"))

([GK_1247728] of Affiliation
	(_displayName "Alzheimer Research Foundation")
	(DB_ID 1247728)
	(name "Alzheimer Research Foundation"))

([GK_1247729] of Person
	(_displayName "Arbustini, E")
	(DB_ID 1247729)
	(initial "E")
	(surname "Arbustini"))

([GK_1247730] of Person
	(_displayName "Merlini, G")
	(DB_ID 1247730)
	(initial "G")
	(surname "Merlini"))

([GK_1247731] of Person
	(_displayName "Lira-De LeÃ³n, KI")
	(DB_ID 1247731)
	(initial "KI")
	(surname "Lira-De LeÃ³n"))

([GK_1247732] of Person
	(_displayName "Ducatenzeiler, A")
	(DB_ID 1247732)
	(initial "A")
	(surname "Ducatenzeiler"))

([GK_1247733] of Person
	(_displayName "Pham, E")
	(DB_ID 1247733)
	(initial "E")
	(surname "Pham"))

([GK_1247734] of Affiliation
	(_displayName "National Association of Science Writers")
	(DB_ID 1247734)
	(name "National Association of Science Writers"))

([GK_1247735] of Person
	(_displayName "Grasso, M")
	(DB_ID 1247735)
	(initial "M")
	(surname "Grasso"))

([GK_1247736] of Person
	(_displayName "Rubenstein, AH")
	(DB_ID 1247736)
	(initial "AH")
	(surname "Rubenstein"))

([GK_1247737] of Person
	(_displayName "Lansbury PT, Jr")
	(DB_ID 1247737)
	(initial "Jr")
	(surname "Lansbury PT"))

([GK_1247738] of Person
	(_displayName "Klein, WL")
	(DB_ID 1247738)
	(initial "WL")
	(surname "Klein"))

([GK_1247739] of Person
	(_displayName "Thompson, JL")
	(DB_ID 1247739)
	(initial "JL")
	(surname "Thompson"))

([GK_1247740] of Person
	(_displayName "Madsen, AÃ˜")
	(DB_ID 1247740)
	(initial "AÃ˜")
	(surname "Madsen"))

([GK_1247741] of Person
	(_displayName "Figueira, AS")
	(DB_ID 1247741)
	(initial "AS")
	(surname "Figueira"))

([GK_1247742] of Person
	(_displayName "Dance, A")
	(affiliation [GK_1247734])
	(DB_ID 1247742)
	(eMailAddress "adance@nasw.org")
	(firstname "Amber")
	(initial "A")
	(surname "Dance"))

([GK_1247743] of Person
	(_displayName "Tzitzilonis, C")
	(DB_ID 1247743)
	(initial "C")
	(surname "Tzitzilonis"))

([GK_1247744] of Person
	(_displayName "Homma, N")
	(DB_ID 1247744)
	(initial "N")
	(surname "Homma"))

([GK_1247745] of LiteratureReference
	(_displayName "Structural and kinetic features of amyloid beta-protein fibrillogenesis")
	(author [GK_75542])
	(DB_ID 1247745)
	(journal "Amyloid")
	(pages "121-42")
	(pubMedIdentifier 9686307)
	(title "Structural and kinetic features of amyloid beta-protein fibrillogenesis")
	(volume 5)
	(year 1998))

([GK_1247746] of Person
	(_displayName "Campos-PeÃ±a, V")
	(DB_ID 1247746)
	(initial "V")
	(surname "Campos-PeÃ±a"))

([GK_1247747] of Person
	(_displayName "Jessberger, S")
	(DB_ID 1247747)
	(initial "S")
	(surname "Jessberger"))

([GK_1247748] of Person
	(_displayName "ViganÃ², M")
	(DB_ID 1247748)
	(initial "M")
	(surname "ViganÃ²"))

([GK_1247749] of Person
	(_displayName "Roychaudhuri, R")
	(DB_ID 1247749)
	(initial "R")
	(surname "Roychaudhuri"))

([GK_1247750] of Person
	(_displayName "Rosenthal, CJ")
	(DB_ID 1247750)
	(initial "CJ")
	(surname "Rosenthal"))

([GK_1247751] of Person
	(_displayName "Leon, WC")
	(DB_ID 1247751)
	(initial "WC")
	(surname "Leon"))

([GK_1247752] of Person
	(_displayName "Serizawa, A")
	(DB_ID 1247752)
	(initial "A")
	(surname "Serizawa"))

([GK_1247753] of Person
	(_displayName "McFarlane, HT")
	(DB_ID 1247753)
	(initial "HT")
	(surname "McFarlane"))

([GK_1247754] of Person
	(_displayName "Costa, PP")
	(DB_ID 1247754)
	(initial "PP")
	(surname "Costa"))

([GK_1247755] of Person
	(_displayName "Cotman, CW")
	(DB_ID 1247755)
	(initial "CW")
	(surname "Cotman"))

([GK_1247756] of Person
	(_displayName "Arakawa, M")
	(DB_ID 1247756)
	(initial "M")
	(surname "Arakawa"))

([GK_1247757] of LiteratureReference
	(_displayName "The carboxy terminus of the beta amyloid protein is critical for the seeding of amyloid formation: implications for the pathogenesis of Alzheimer's disease")
	(author
		[GK_1247694]
		[GK_1247814]
		[GK_1247737])
	(DB_ID 1247757)
	(journal "Biochemistry")
	(pages "4693-7")
	(pubMedIdentifier 8490014)
	(title "The carboxy terminus of the beta amyloid protein is critical for the seeding of amyloid formation: implications for the pathogenesis of Alzheimer's disease")
	(volume 32)
	(year 1993))

([GK_1247758] of Person
	(_displayName "Fournier, RE")
	(DB_ID 1247758)
	(initial "RE")
	(surname "Fournier"))

([GK_1247759] of Person
	(_displayName "Jakes, R")
	(DB_ID 1247759)
	(initial "R")
	(surname "Jakes"))

([GK_1247760] of Person
	(_displayName "McIntire, TM")
	(DB_ID 1247760)
	(initial "TM")
	(surname "McIntire"))

([GK_1247761] of Person
	(_displayName "Glabe, CG")
	(DB_ID 1247761)
	(initial "CG")
	(surname "Glabe"))

([GK_1247762] of LiteratureReference
	(_displayName "Atomic structures of amyloid cross-beta spines reveal varied steric zippers")
	(author
		[GK_207642]
		[GK_1247714]
		[GK_977146]
		[GK_1247720]
		[GK_1247700]
		[GK_1247779]
		[GK_1247776]
		[GK_1247793]
		[GK_981768]
		[GK_1247753]
		[GK_1247740]
		[GK_1247708]
		[GK_977123])
	(DB_ID 1247762)
	(journal "Nature")
	(pages "453-7")
	(pubMedIdentifier 17468747)
	(title "Atomic structures of amyloid cross-beta spines reveal varied steric zippers")
	(volume 447)
	(year 2007))

([GK_1247763] of Person
	(_displayName "Sipe, JD")
	(DB_ID 1247763)
	(initial "JD")
	(surname "Sipe"))

([GK_1247764] of Person
	(_displayName "Greenspan, J")
	(DB_ID 1247764)
	(initial "J")
	(surname "Greenspan"))

([GK_1247765] of Person
	(_displayName "Desplats, PA")
	(DB_ID 1247765)
	(initial "PA")
	(surname "Desplats"))

([GK_1247766] of LiteratureReference
	(_displayName "Islet amyloid polypeptide: pinpointing amino acid residues linked to amyloid fibril formation")
	(author
		[GK_976884]
		[GK_976986]
		[GK_976995]
		[GK_374884]
		[GK_452587])
	(DB_ID 1247766)
	(journal "Proc Natl Acad Sci U S A")
	(pages "5036-40")
	(pubMedIdentifier 2195544)
	(title "Islet amyloid polypeptide: pinpointing amino acid residues linked to amyloid fibril formation")
	(volume 87)
	(year 1990))

([GK_1247767] of Person
	(_displayName "Consiglio, A")
	(DB_ID 1247767)
	(initial "A")
	(surname "Consiglio"))

([GK_1247768] of Person
	(_displayName "Boyer, L")
	(DB_ID 1247768)
	(initial "L")
	(surname "Boyer"))

([GK_1247769] of Person
	(_displayName "Partridge, V")
	(DB_ID 1247769)
	(initial "V")
	(surname "Partridge"))

([GK_1247770] of Person
	(_displayName "Mira, H")
	(DB_ID 1247770)
	(initial "H")
	(surname "Mira"))

([GK_1247771] of Person
	(_displayName "Wharton, J")
	(DB_ID 1247771)
	(initial "J")
	(surname "Wharton"))

([GK_1247772] of Person
	(_displayName "Riek, R")
	(DB_ID 1247772)
	(initial "R")
	(surname "Riek"))

([GK_1247773] of Person
	(_displayName "Campioni, S")
	(DB_ID 1247773)
	(initial "S")
	(surname "Campioni"))

([GK_1247774] of Person
	(_displayName "Needleman, P")
	(DB_ID 1247774)
	(initial "P")
	(surname "Needleman"))

([GK_1247775] of Person
	(_displayName "Meraz-RÃ­os, MA")
	(DB_ID 1247775)
	(initial "MA")
	(surname "Meraz-RÃ­os"))

([GK_1247776] of Person
	(_displayName "Thompson, MJ")
	(DB_ID 1247776)
	(initial "MJ")
	(surname "Thompson"))

([GK_1247777] of Person
	(_displayName "Milton, SC")
	(DB_ID 1247777)
	(initial "SC")
	(surname "Milton"))

([GK_1247778] of Person
	(_displayName "Ferretti, MT")
	(DB_ID 1247778)
	(initial "MT")
	(surname "Ferretti"))

([GK_1247779] of Person
	(_displayName "Apostol, MI")
	(DB_ID 1247779)
	(initial "MI")
	(surname "Apostol"))

([GK_1247780] of Person
	(_displayName "Mena-LÃ³pez, R")
	(DB_ID 1247780)
	(initial "R")
	(surname "Mena-LÃ³pez"))

([GK_1247781] of LiteratureReference
	(_displayName "Atrial amyloid deposits in the failing human heart display both atrial and brain natriuretic peptide-like immunoreactivity")
	(author
		[GK_1247795]
		[GK_1247771]
		[GK_1247729]
		[GK_1247735]
		[GK_1247787]
		[GK_1247774]
		[GK_1247748]
		[GK_388867])
	(DB_ID 1247781)
	(journal "J Pathol")
	(pages "235-41")
	(pubMedIdentifier 1837051)
	(title "Atrial amyloid deposits in the failing human heart display both atrial and brain natriuretic peptide-like immunoreactivity")
	(volume 165)
	(year 1991))

([GK_1247782] of Person
	(_displayName "Cohn, VH")
	(DB_ID 1247782)
	(initial "VH")
	(surname "Cohn"))

([GK_1247783] of Person
	(_displayName "Yang, M")
	(DB_ID 1247783)
	(initial "M")
	(surname "Yang"))

([GK_1247784] of LiteratureReference
	(_displayName "Assignment of the human and mouse prion protein genes to homologous chromosomes")
	(author
		[GK_75583]
		[GK_75643]
		[GK_1247782]
		[GK_1247758]
		[GK_75642]
		[GK_75579]
		[GK_480491]
		[GK_1247810]
		[GK_1247786]
		[GK_75582])
	(DB_ID 1247784)
	(journal "Proc Natl Acad Sci U S A")
	(pages "7358-62")
	(pubMedIdentifier 3094007)
	(title "Assignment of the human and mouse prion protein genes to homologous chromosomes")
	(volume 83)
	(year 1986))

([GK_1247785] of Person
	(_displayName "Hoshi, MM")
	(DB_ID 1247785)
	(initial "MM")
	(surname "Hoshi"))

([GK_1247786] of Person
	(_displayName "Lucero, M")
	(DB_ID 1247786)
	(initial "M")
	(surname "Lucero"))

([GK_1247787] of Person
	(_displayName "Diegoli, M")
	(DB_ID 1247787)
	(initial "M")
	(surname "Diegoli"))

([GK_1247788] of Person
	(_displayName "Winner, B")
	(DB_ID 1247788)
	(initial "B")
	(surname "Winner"))

([GK_1247789] of Person
	(_displayName "Cuello, AC")
	(DB_ID 1247789)
	(initial "AC")
	(surname "Cuello"))

([GK_1247790] of Person
	(_displayName "Jappelli, R")
	(DB_ID 1247790)
	(initial "R")
	(surname "Jappelli"))

([GK_1247791] of LiteratureReference
	(_displayName "Pathogenic potential of human monoclonal immunoglobulin light chains: relationship of in vitro aggregation to in vivo organ deposition")
	(author
		[GK_1247718]
		[GK_1247803]
		[GK_976922]
		[GK_976858]
		[GK_1247721]
		[GK_1247701])
	(DB_ID 1247791)
	(journal "Proc Natl Acad Sci U S A")
	(pages "3034-8")
	(pubMedIdentifier 8159701)
	(title "Pathogenic potential of human monoclonal immunoglobulin light chains: relationship of in vitro aggregation to in vivo organ deposition")
	(volume 91)
	(year 1994))

([GK_1247792] of Person
	(_displayName "Macy, SD")
	(DB_ID 1247792)
	(initial "SD")
	(surname "Macy"))

([GK_1247793] of Person
	(_displayName "Balbirnie, M")
	(DB_ID 1247793)
	(initial "M")
	(surname "Balbirnie"))

([GK_1247794] of Person
	(_displayName "Masliah, E")
	(DB_ID 1247794)
	(initial "E")
	(surname "Masliah"))

([GK_1247795] of Person
	(_displayName "Pucci, A")
	(DB_ID 1247795)
	(initial "A")
	(surname "Pucci"))

([GK_1247796] of Person
	(_displayName "Franklin, EC")
	(DB_ID 1247796)
	(initial "EC")
	(surname "Franklin"))

([GK_1247797] of Person
	(_displayName "Loher, T")
	(DB_ID 1247797)
	(initial "T")
	(surname "Loher"))

([GK_1247798] of Person
	(_displayName "Foster, JS")
	(DB_ID 1247798)
	(initial "JS")
	(surname "Foster"))

([GK_1247799] of Person
	(_displayName "Bravo, FR")
	(DB_ID 1247799)
	(initial "FR")
	(surname "Bravo"))

([GK_1247800] of Person
	(_displayName "Vercauteren, F")
	(DB_ID 1247800)
	(initial "F")
	(surname "Vercauteren"))

([GK_1247801] of LiteratureReference
	(_displayName "An islet amyloid peptide is derived from an 89-amino acid precursor by proteolytic processing")
	(author
		[GK_420066]
		[GK_70121]
		[GK_1247808]
		[GK_1247736]
		[GK_264348])
	(DB_ID 1247801)
	(journal "J Biol Chem")
	(pages "17243-6")
	(pubMedIdentifier 3053705)
	(title "An islet amyloid peptide is derived from an 89-amino acid precursor by proteolytic processing")
	(volume 263)
	(year 1988))

([GK_1247802] of Person
	(_displayName "Kayed, R")
	(DB_ID 1247802)
	(initial "R")
	(surname "Kayed"))

([GK_1247803] of Person
	(_displayName "Westholm, FA")
	(DB_ID 1247803)
	(initial "FA")
	(surname "Westholm"))

([GK_1247804] of Person
	(_displayName "Hetzer, C")
	(DB_ID 1247804)
	(initial "C")
	(surname "Hetzer"))

([GK_1247805] of LiteratureReference
	(_displayName "Amyloid Oligomer Structures and Toxicity")
	(author [GK_1247761])
	(DB_ID 1247805)
	(journal "Open Biol J")
	(pages "222-227")
	(title "Amyloid Oligomer Structures and Toxicity")
	(year 2009))

([GK_1247806] of Person
	(_displayName "Maji, SK")
	(DB_ID 1247806)
	(initial "SK")
	(surname "Maji"))

([GK_1247807] of Person
	(_displayName "Carlson, ER")
	(DB_ID 1247807)
	(initial "ER")
	(surname "Carlson"))

([GK_1247808] of Person
	(_displayName "Sample, C")
	(DB_ID 1247808)
	(initial "C")
	(surname "Sample"))

([GK_1247809] of LiteratureReference
	(_displayName "Effects of the mutations Ala30 to Pro and Ala53 to Thr on the physical and morphological properties of alpha-synuclein protein implicated in Parkinson's disease")
	(author
		[GK_976894]
		[GK_1247759]
		[GK_1247811]
		[GK_1247706])
	(DB_ID 1247809)
	(journal "FEBS Lett")
	(pages "67-70")
	(pubMedIdentifier 9862427)
	(title "Effects of the mutations Ala30 to Pro and Ala53 to Thr on the physical and morphological properties of alpha-synuclein protein implicated in Parkinson's disease")
	(volume 440)
	(year 1998))

([GK_1247810] of Person
	(_displayName "Blatt, C")
	(DB_ID 1247810)
	(initial "C")
	(surname "Blatt"))

([GK_1247811] of Person
	(_displayName "Curran, MD")
	(DB_ID 1247811)
	(initial "MD")
	(surname "Curran"))

([GK_1247812] of LiteratureReference
	(_displayName "Common structure of soluble amyloid oligomers implies common mechanism of pathogenesis")
	(author
		[GK_1247802]
		[GK_1247815]
		[GK_1247739]
		[GK_1247760]
		[GK_1247777]
		[GK_1247755]
		[GK_1247761])
	(DB_ID 1247812)
	(journal "Science")
	(pages "486-9")
	(pubMedIdentifier 12702875)
	(title "Common structure of soluble amyloid oligomers implies common mechanism of pathogenesis")
	(volume 300)
	(year 2003))

([GK_1247814] of Person
	(_displayName "Berger, EP")
	(DB_ID 1247814)
	(initial "EP")
	(surname "Berger"))

([GK_1247815] of Person
	(_displayName "Head, E")
	(DB_ID 1247815)
	(initial "E")
	(surname "Head"))

([GK_1247816] of Person
	(_displayName "Buxbaum, JN")
	(DB_ID 1247816)
	(initial "JN")
	(surname "Buxbaum"))

([GK_1247852] of Polymer
	(_displayName "[Hsa] Alpha-synucein fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1247852)
	(name "Alpha-synucein fibril")
	(repeatedUnit [GK_1247707])
	(species [GK_48887])
	(stableIdentifier [GK_1358160]))

([GK_1247882] of InstanceEdit
	(_displayName "Perry, G, 2011-04-08")
	(author [GK_879404])
	(dateTime "2011-04-08 12:41:42")
	(DB_ID 1247882))

([GK_1247883] of Affiliation
	(_displayName "University of Texas at San Antonio")
	(DB_ID 1247883)
	(name "University of Texas at San Antonio"))

([GK_1247884] of InstanceEdit
	(_displayName "Jupe, S, 2011-04-08")
	(author [GK_391309])
	(dateTime "2011-04-08 13:02:35")
	(DB_ID 1247884))

([GK_1302721] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Beta-2-microglobulin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1302721)
	(endCoordinate 119)
	(name "Beta-2-microglobulin")
	(referenceEntity [GK_50591])
	(species [GK_48887])
	(stableIdentifier [GK_1357821])
	(startCoordinate 21))

([GK_1302722] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Kerato-epithelin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 1302722)
	(endCoordinate 683)
	(name
		"Kerato-epithelin"
		"Transforming growth factor-beta induced protein IG-H3 precursor"
		"BGH3_HUMAN"
		"TGFBI")
	(referenceEntity [GK_50810])
	(species [GK_48887])
	(stableIdentifier [GK_1358223])
	(startCoordinate 24))

([GK_1357590] of StableIdentifier
	(_displayName "REACT_75858.1")
	(DB_ID 1357590)
	(identifier "REACT_75858")
	(identifierVersion "1"))

([GK_1357608] of StableIdentifier
	(_displayName "REACT_75876.1")
	(DB_ID 1357608)
	(identifier "REACT_75876")
	(identifierVersion "1"))

([GK_1357610] of StableIdentifier
	(_displayName "REACT_75878.1")
	(DB_ID 1357610)
	(identifier "REACT_75878")
	(identifierVersion "1"))

([GK_1357634] of StableIdentifier
	(_displayName "REACT_75902.1")
	(DB_ID 1357634)
	(identifier "REACT_75902")
	(identifierVersion "1"))

([GK_1357637] of StableIdentifier
	(_displayName "REACT_75905.1")
	(DB_ID 1357637)
	(identifier "REACT_75905")
	(identifierVersion "1"))

([GK_1357657] of StableIdentifier
	(_displayName "REACT_75925.1")
	(DB_ID 1357657)
	(identifier "REACT_75925")
	(identifierVersion "1"))

([GK_1357672] of StableIdentifier
	(_displayName "REACT_75940.1")
	(DB_ID 1357672)
	(identifier "REACT_75940")
	(identifierVersion "1"))

([GK_1357676] of StableIdentifier
	(_displayName "REACT_75944.1")
	(DB_ID 1357676)
	(identifier "REACT_75944")
	(identifierVersion "1"))

([GK_1357692] of StableIdentifier
	(_displayName "REACT_75960.1")
	(DB_ID 1357692)
	(identifier "REACT_75960")
	(identifierVersion "1"))

([GK_1357699] of StableIdentifier
	(_displayName "REACT_75967.1")
	(DB_ID 1357699)
	(identifier "REACT_75967")
	(identifierVersion "1"))

([GK_1357703] of StableIdentifier
	(_displayName "REACT_75971.1")
	(DB_ID 1357703)
	(identifier "REACT_75971")
	(identifierVersion "1"))

([GK_1357707] of StableIdentifier
	(_displayName "REACT_75975.1")
	(DB_ID 1357707)
	(identifier "REACT_75975")
	(identifierVersion "1"))

([GK_1357725] of StableIdentifier
	(_displayName "REACT_75993.1")
	(DB_ID 1357725)
	(identifier "REACT_75993")
	(identifierVersion "1"))

([GK_1357743] of StableIdentifier
	(_displayName "REACT_76011.1")
	(DB_ID 1357743)
	(identifier "REACT_76011")
	(identifierVersion "1"))

([GK_1357748] of StableIdentifier
	(_displayName "REACT_76016.1")
	(DB_ID 1357748)
	(identifier "REACT_76016")
	(identifierVersion "1"))

([GK_1357751] of StableIdentifier
	(_displayName "REACT_76019.1")
	(DB_ID 1357751)
	(identifier "REACT_76019")
	(identifierVersion "1"))

([GK_1357757] of StableIdentifier
	(_displayName "REACT_76025.1")
	(DB_ID 1357757)
	(identifier "REACT_76025")
	(identifierVersion "1"))

([GK_1357767] of StableIdentifier
	(_displayName "REACT_76035.1")
	(DB_ID 1357767)
	(identifier "REACT_76035")
	(identifierVersion "1"))

([GK_1357778] of StableIdentifier
	(_displayName "REACT_76046.1")
	(DB_ID 1357778)
	(identifier "REACT_76046")
	(identifierVersion "1"))

([GK_1357799] of StableIdentifier
	(_displayName "REACT_76067.1")
	(DB_ID 1357799)
	(identifier "REACT_76067")
	(identifierVersion "1"))

([GK_1357802] of StableIdentifier
	(_displayName "REACT_76070.1")
	(DB_ID 1357802)
	(identifier "REACT_76070")
	(identifierVersion "1"))

([GK_1357805] of StableIdentifier
	(_displayName "REACT_76073.1")
	(DB_ID 1357805)
	(identifier "REACT_76073")
	(identifierVersion "1"))

([GK_1357816] of StableIdentifier
	(_displayName "REACT_76084.1")
	(DB_ID 1357816)
	(identifier "REACT_76084")
	(identifierVersion "1"))

([GK_1357821] of StableIdentifier
	(_displayName "REACT_76089.1")
	(DB_ID 1357821)
	(identifier "REACT_76089")
	(identifierVersion "1"))

([GK_1357824] of StableIdentifier
	(_displayName "REACT_76092.1")
	(DB_ID 1357824)
	(identifier "REACT_76092")
	(identifierVersion "1"))

([GK_1357834] of StableIdentifier
	(_displayName "REACT_76102.1")
	(DB_ID 1357834)
	(identifier "REACT_76102")
	(identifierVersion "1"))

([GK_1357839] of StableIdentifier
	(_displayName "REACT_76107.1")
	(DB_ID 1357839)
	(identifier "REACT_76107")
	(identifierVersion "1"))

([GK_1357842] of StableIdentifier
	(_displayName "REACT_76110.1")
	(DB_ID 1357842)
	(identifier "REACT_76110")
	(identifierVersion "1"))

([GK_1357844] of StableIdentifier
	(_displayName "REACT_76112.1")
	(DB_ID 1357844)
	(identifier "REACT_76112")
	(identifierVersion "1"))

([GK_1357848] of StableIdentifier
	(_displayName "REACT_76116.1")
	(DB_ID 1357848)
	(identifier "REACT_76116")
	(identifierVersion "1"))

([GK_1357872] of StableIdentifier
	(_displayName "REACT_76140.1")
	(DB_ID 1357872)
	(identifier "REACT_76140")
	(identifierVersion "1"))

([GK_1357875] of StableIdentifier
	(_displayName "REACT_76143.1")
	(DB_ID 1357875)
	(identifier "REACT_76143")
	(identifierVersion "1"))

([GK_1357931] of StableIdentifier
	(_displayName "REACT_76199.1")
	(DB_ID 1357931)
	(identifier "REACT_76199")
	(identifierVersion "1"))

([GK_1357932] of StableIdentifier
	(_displayName "REACT_76200.1")
	(DB_ID 1357932)
	(identifier "REACT_76200")
	(identifierVersion "1"))

([GK_1357950] of StableIdentifier
	(_displayName "REACT_76218.1")
	(DB_ID 1357950)
	(identifier "REACT_76218")
	(identifierVersion "1"))

([GK_1357954] of StableIdentifier
	(_displayName "REACT_76222.1")
	(DB_ID 1357954)
	(identifier "REACT_76222")
	(identifierVersion "1"))

([GK_1357967] of StableIdentifier
	(_displayName "REACT_76235.1")
	(DB_ID 1357967)
	(identifier "REACT_76235")
	(identifierVersion "1"))

([GK_1357973] of StableIdentifier
	(_displayName "REACT_76241.1")
	(DB_ID 1357973)
	(identifier "REACT_76241")
	(identifierVersion "1"))

([GK_1357978] of StableIdentifier
	(_displayName "REACT_76246.1")
	(DB_ID 1357978)
	(identifier "REACT_76246")
	(identifierVersion "1"))

([GK_1357980] of StableIdentifier
	(_displayName "REACT_76248.1")
	(DB_ID 1357980)
	(identifier "REACT_76248")
	(identifierVersion "1"))

([GK_1357984] of StableIdentifier
	(_displayName "REACT_76252.1")
	(DB_ID 1357984)
	(identifier "REACT_76252")
	(identifierVersion "1"))

([GK_1357996] of StableIdentifier
	(_displayName "REACT_76264.1")
	(DB_ID 1357996)
	(identifier "REACT_76264")
	(identifierVersion "1"))

([GK_1358001] of StableIdentifier
	(_displayName "REACT_76269.1")
	(DB_ID 1358001)
	(identifier "REACT_76269")
	(identifierVersion "1"))

([GK_1358008] of StableIdentifier
	(_displayName "REACT_76276.1")
	(DB_ID 1358008)
	(identifier "REACT_76276")
	(identifierVersion "1"))

([GK_1358010] of StableIdentifier
	(_displayName "REACT_76278.1")
	(DB_ID 1358010)
	(identifier "REACT_76278")
	(identifierVersion "1"))

([GK_1358027] of StableIdentifier
	(_displayName "REACT_76295.1")
	(DB_ID 1358027)
	(identifier "REACT_76295")
	(identifierVersion "1"))

([GK_1358045] of StableIdentifier
	(_displayName "REACT_76313.1")
	(DB_ID 1358045)
	(identifier "REACT_76313")
	(identifierVersion "1"))

([GK_1358054] of StableIdentifier
	(_displayName "REACT_76322.1")
	(DB_ID 1358054)
	(identifier "REACT_76322")
	(identifierVersion "1"))

([GK_1358060] of StableIdentifier
	(_displayName "REACT_76328.1")
	(DB_ID 1358060)
	(identifier "REACT_76328")
	(identifierVersion "1"))

([GK_1358061] of StableIdentifier
	(_displayName "REACT_76329.1")
	(DB_ID 1358061)
	(identifier "REACT_76329")
	(identifierVersion "1"))

([GK_1358063] of StableIdentifier
	(_displayName "REACT_76331.1")
	(DB_ID 1358063)
	(identifier "REACT_76331")
	(identifierVersion "1"))

([GK_1358067] of StableIdentifier
	(_displayName "REACT_76335.1")
	(DB_ID 1358067)
	(identifier "REACT_76335")
	(identifierVersion "1"))

([GK_1358072] of StableIdentifier
	(_displayName "REACT_76340.1")
	(DB_ID 1358072)
	(identifier "REACT_76340")
	(identifierVersion "1"))

([GK_1358076] of StableIdentifier
	(_displayName "REACT_76344.1")
	(DB_ID 1358076)
	(identifier "REACT_76344")
	(identifierVersion "1"))

([GK_1358084] of StableIdentifier
	(_displayName "REACT_76352.1")
	(DB_ID 1358084)
	(identifier "REACT_76352")
	(identifierVersion "1"))

([GK_1358096] of StableIdentifier
	(_displayName "REACT_76364.1")
	(DB_ID 1358096)
	(identifier "REACT_76364")
	(identifierVersion "1"))

([GK_1358102] of StableIdentifier
	(_displayName "REACT_76370.1")
	(DB_ID 1358102)
	(identifier "REACT_76370")
	(identifierVersion "1"))

([GK_1358114] of StableIdentifier
	(_displayName "REACT_76382.1")
	(DB_ID 1358114)
	(identifier "REACT_76382")
	(identifierVersion "1"))

([GK_1358143] of StableIdentifier
	(_displayName "REACT_76411.1")
	(DB_ID 1358143)
	(identifier "REACT_76411")
	(identifierVersion "1"))

([GK_1358155] of StableIdentifier
	(_displayName "REACT_76423.1")
	(DB_ID 1358155)
	(identifier "REACT_76423")
	(identifierVersion "1"))

([GK_1358160] of StableIdentifier
	(_displayName "REACT_76428.1")
	(DB_ID 1358160)
	(identifier "REACT_76428")
	(identifierVersion "1"))

([GK_1358170] of StableIdentifier
	(_displayName "REACT_76438.1")
	(DB_ID 1358170)
	(identifier "REACT_76438")
	(identifierVersion "1"))

([GK_1358175] of StableIdentifier
	(_displayName "REACT_76443.1")
	(DB_ID 1358175)
	(identifier "REACT_76443")
	(identifierVersion "1"))

([GK_1358177] of StableIdentifier
	(_displayName "REACT_76445.1")
	(DB_ID 1358177)
	(identifier "REACT_76445")
	(identifierVersion "1"))

([GK_1358185] of StableIdentifier
	(_displayName "REACT_76453.1")
	(DB_ID 1358185)
	(identifier "REACT_76453")
	(identifierVersion "1"))

([GK_1358187] of StableIdentifier
	(_displayName "REACT_76455.1")
	(DB_ID 1358187)
	(identifier "REACT_76455")
	(identifierVersion "1"))

([GK_1358194] of StableIdentifier
	(_displayName "REACT_76462.1")
	(DB_ID 1358194)
	(identifier "REACT_76462")
	(identifierVersion "1"))

([GK_1358195] of StableIdentifier
	(_displayName "REACT_76463.1")
	(DB_ID 1358195)
	(identifier "REACT_76463")
	(identifierVersion "1"))

([GK_1358199] of StableIdentifier
	(_displayName "REACT_76467.1")
	(DB_ID 1358199)
	(identifier "REACT_76467")
	(identifierVersion "1"))

([GK_1358212] of StableIdentifier
	(_displayName "REACT_76480.1")
	(DB_ID 1358212)
	(identifier "REACT_76480")
	(identifierVersion "1"))

([GK_1358223] of StableIdentifier
	(_displayName "REACT_76491.1")
	(DB_ID 1358223)
	(identifier "REACT_76491")
	(identifierVersion "1"))

([GK_1358224] of StableIdentifier
	(_displayName "REACT_76492.1")
	(DB_ID 1358224)
	(identifier "REACT_76492")
	(identifierVersion "1"))

([GK_1358225] of StableIdentifier
	(_displayName "REACT_76493.1")
	(DB_ID 1358225)
	(identifier "REACT_76493")
	(identifierVersion "1"))

([GK_1358234] of StableIdentifier
	(_displayName "REACT_76502.1")
	(DB_ID 1358234)
	(identifier "REACT_76502")
	(identifierVersion "1"))

([GK_1358239] of StableIdentifier
	(_displayName "REACT_76507.1")
	(DB_ID 1358239)
	(identifier "REACT_76507")
	(identifierVersion "1"))

([GK_1358244] of StableIdentifier
	(_displayName "REACT_76512.1")
	(DB_ID 1358244)
	(identifier "REACT_76512")
	(identifierVersion "1"))

([GK_1358246] of StableIdentifier
	(_displayName "REACT_76514.1")
	(DB_ID 1358246)
	(identifier "REACT_76514")
	(identifierVersion "1"))

([GK_1358248] of StableIdentifier
	(_displayName "REACT_76516.1")
	(DB_ID 1358248)
	(identifier "REACT_76516")
	(identifierVersion "1"))

([GK_1358276] of StableIdentifier
	(_displayName "REACT_76544.1")
	(DB_ID 1358276)
	(identifier "REACT_76544")
	(identifierVersion "1"))

([GK_1358281] of StableIdentifier
	(_displayName "REACT_76549.1")
	(DB_ID 1358281)
	(identifier "REACT_76549")
	(identifierVersion "1"))

([GK_1358284] of StableIdentifier
	(_displayName "REACT_76552.1")
	(DB_ID 1358284)
	(identifier "REACT_76552")
	(identifierVersion "1"))

([GK_1358302] of StableIdentifier
	(_displayName "REACT_76570.1")
	(DB_ID 1358302)
	(identifier "REACT_76570")
	(identifierVersion "1"))

([GK_1358324] of StableIdentifier
	(_displayName "REACT_76592.1")
	(DB_ID 1358324)
	(identifier "REACT_76592")
	(identifierVersion "1"))

([GK_1358325] of StableIdentifier
	(_displayName "REACT_76593.1")
	(DB_ID 1358325)
	(identifier "REACT_76593")
	(identifierVersion "1"))

([GK_1358327] of StableIdentifier
	(_displayName "REACT_76595.1")
	(DB_ID 1358327)
	(identifier "REACT_76595")
	(identifierVersion "1"))

([GK_1358336] of StableIdentifier
	(_displayName "REACT_76604.1")
	(DB_ID 1358336)
	(identifier "REACT_76604")
	(identifierVersion "1"))

([GK_1358358] of StableIdentifier
	(_displayName "REACT_76626.1")
	(DB_ID 1358358)
	(identifier "REACT_76626")
	(identifierVersion "1"))

([GK_1358359] of StableIdentifier
	(_displayName "REACT_76627.1")
	(DB_ID 1358359)
	(identifier "REACT_76627")
	(identifierVersion "1"))

([GK_1358370] of StableIdentifier
	(_displayName "REACT_76638.1")
	(DB_ID 1358370)
	(identifier "REACT_76638")
	(identifierVersion "1"))

([GK_1358373] of StableIdentifier
	(_displayName "REACT_76641.1")
	(DB_ID 1358373)
	(identifier "REACT_76641")
	(identifierVersion "1"))

([GK_1358376] of StableIdentifier
	(_displayName "REACT_76644.1")
	(DB_ID 1358376)
	(identifier "REACT_76644")
	(identifierVersion "1"))

([GK_1358387] of StableIdentifier
	(_displayName "REACT_76655.1")
	(DB_ID 1358387)
	(identifier "REACT_76655")
	(identifierVersion "1"))

([GK_1358393] of StableIdentifier
	(_displayName "REACT_76661.1")
	(DB_ID 1358393)
	(identifier "REACT_76661")
	(identifierVersion "1"))

([GK_1358399] of StableIdentifier
	(_displayName "REACT_76667.1")
	(DB_ID 1358399)
	(identifier "REACT_76667")
	(identifierVersion "1"))

([GK_1358413] of StableIdentifier
	(_displayName "REACT_76681.1")
	(DB_ID 1358413)
	(identifier "REACT_76681")
	(identifierVersion "1"))

([GK_1358419] of StableIdentifier
	(_displayName "REACT_76687.1")
	(DB_ID 1358419)
	(identifier "REACT_76687")
	(identifierVersion "1"))

([GK_1358429] of StableIdentifier
	(_displayName "REACT_76697.1")
	(DB_ID 1358429)
	(identifier "REACT_76697")
	(identifierVersion "1"))

([GK_1358435] of StableIdentifier
	(_displayName "REACT_76703.1")
	(DB_ID 1358435)
	(identifier "REACT_76703")
	(identifierVersion "1"))

([GK_1358465] of StableIdentifier
	(_displayName "REACT_76733.1")
	(DB_ID 1358465)
	(identifier "REACT_76733")
	(identifierVersion "1"))

([GK_1358509] of StableIdentifier
	(_displayName "REACT_76777.1")
	(DB_ID 1358509)
	(identifier "REACT_76777")
	(identifierVersion "1"))

([GK_1358519] of StableIdentifier
	(_displayName "REACT_76787.1")
	(DB_ID 1358519)
	(identifier "REACT_76787")
	(identifierVersion "1"))

([GK_1358524] of StableIdentifier
	(_displayName "REACT_76792.1")
	(DB_ID 1358524)
	(identifier "REACT_76792")
	(identifierVersion "1"))

([GK_1358546] of StableIdentifier
	(_displayName "REACT_76814.1")
	(DB_ID 1358546)
	(identifier "REACT_76814")
	(identifierVersion "1"))

([GK_1358552] of StableIdentifier
	(_displayName "REACT_76820.1")
	(DB_ID 1358552)
	(identifier "REACT_76820")
	(identifierVersion "1"))

([GK_1358566] of StableIdentifier
	(_displayName "REACT_76834.1")
	(DB_ID 1358566)
	(identifier "REACT_76834")
	(identifierVersion "1"))

([GK_1358567] of StableIdentifier
	(_displayName "REACT_76835.1")
	(DB_ID 1358567)
	(identifier "REACT_76835")
	(identifierVersion "1"))

([GK_1358575] of StableIdentifier
	(_displayName "REACT_76843.1")
	(DB_ID 1358575)
	(identifier "REACT_76843")
	(identifierVersion "1"))

([GK_1358579] of StableIdentifier
	(_displayName "REACT_76847.1")
	(DB_ID 1358579)
	(identifier "REACT_76847")
	(identifierVersion "1"))

([GK_1358592] of StableIdentifier
	(_displayName "REACT_76860.1")
	(DB_ID 1358592)
	(identifier "REACT_76860")
	(identifierVersion "1"))

([GK_1358602] of StableIdentifier
	(_displayName "REACT_76870.1")
	(DB_ID 1358602)
	(identifier "REACT_76870")
	(identifierVersion "1"))

([GK_1358620] of StableIdentifier
	(_displayName "REACT_76888.1")
	(DB_ID 1358620)
	(identifier "REACT_76888")
	(identifierVersion "1"))

([GK_1358637] of StableIdentifier
	(_displayName "REACT_76905.1")
	(DB_ID 1358637)
	(identifier "REACT_76905")
	(identifierVersion "1"))

([GK_1358639] of StableIdentifier
	(_displayName "REACT_76907.1")
	(DB_ID 1358639)
	(identifier "REACT_76907")
	(identifierVersion "1"))

([GK_139809] of GO_BiologicalProcess
	(_displayName "regulation of cellular process")
	(accession "0050794")
	(DB_ID 139809)
	(definition "Any process that modulates the frequency, rate or extent of a cellular process, any of those that are carried out at the cellular level, but are not necessarily restricted to a single cell. For example, cell communication occurs among more than one cell, but occurs at the cellular level.")
	(instanceOf [GK_139810])
	(name "regulation of cellular process")
	(referenceDatabase [GK_1])
	(regulate [GK_143]))

([GK_139810] of GO_BiologicalProcess
	(_displayName "regulation of biological process")
	(accession "0050789")
	(DB_ID 139810)
	(definition "Any process that modulates the frequency, rate or extent of a biological process. Biological processes are regulated by many means; examples include the control of gene expression, protein modification or interaction with a protein or substrate molecule.")
	(instanceOf [GK_258123])
	(name "regulation of biological process")
	(referenceDatabase [GK_1])
	(regulate [GK_106]))

([GK_139812] of GO_BiologicalProcess
	(_displayName "regulation of apoptotic process")
	(accession "0042981")
	(DB_ID 139812)
	(definition "Any process that modulates the occurrence or rate of cell death by apoptotic process.")
	(instanceOf [GK_139813])
	(name "regulation of apoptotic process")
	(referenceDatabase [GK_1])
	(regulate [GK_2273]))

([GK_139813] of GO_BiologicalProcess
	(_displayName "regulation of programmed cell death")
	(accession "0043067")
	(DB_ID 139813)
	(definition "Any process that modulates the frequency, rate or extent of programmed cell death, cell death resulting from activation of endogenous cellular processes.")
	(instanceOf [GK_422582])
	(name "regulation of programmed cell death")
	(referenceDatabase [GK_1])
	(regulate [GK_2274]))

([GK_139950] of Complex
	(_displayName "[Hsa] Caspase-8 dimer [cytosol]")
	(compartment [GK_70101])
	(DB_ID 139950)
	(hasComponent
		[GK_75975]
		[GK_76158])
	(name "Caspase-8 dimer")
	(species [GK_48887])
	(stableIdentifier [GK_366061]))

([GK_139952] of Reaction
	(_displayName "[Hsa] Formation of Caspase-8 dimer")
	(_doRelease TRUE)
	(compartment [GK_70101])
	(DB_ID 139952)
	(input
		[GK_75975]
		[GK_76158])
	(name "Formation of Caspase-8 dimer")
	(output [GK_139950])
	(precedingEvent
		[GK_141156]
		[GK_141159]
		[GK_73945])
	(species [GK_48887])
	(stableIdentifier [GK_358238])
	(summation [GK_178769]))

([GK_139957] of InstanceEdit
	(_displayName "Gillespie, ME, 2004-08-10 16:59:18")
	(author [GK_73681])
	(dateTime "2004-08-10 16:59:18")
	(DB_ID 139957))

([GK_139958] of Summation
	(_displayName "The death receptors, all cell-surface receptors, begin the p...")
	(DB_ID 139958)
	(text "The death receptors, all cell-surface receptors, begin the process of caspase activation. The common feature of these type 1 transmembrane proteins is the \"death-domain\" a conserved cytoplasmic motif found on all of the three receptors (FAS/CD95, TNF-receptor, and TRAIL-receptor) that binds the Fas-associated protein with death domain (FADD)"))

([GK_139959] of Summation
	(_displayName "Known as the \"death receptor pathway\" the extrinsic or caspa...")
	(DB_ID 139959)
	(text "Known as the \"death receptor pathway\" the extrinsic or caspase 8/10 dependent pathway is activated by ligand binding. The \"death receptors\" are specialized cell-surface receptors including Fas/CD95, tumor necrosis factor-alpha (TNF-alpha) receptor 1, and two receptors, DR4 and DR5, that bind to the TNF-alpha related apoptosis-inducing ligand (TRAIL). The extrinsic and intrinsic pathways unite in the activation of Caspase-3, though the two pathways communicate through the pro-apoptotic Bcl-2 family member Bid before uniting at the shared activation of Caspase-3."))

([GK_139960] of LiteratureReference
	(_displayName "The biochemistry of apoptosis.")
	(author [GK_140492])
	(DB_ID 139960)
	(journal "Nature")
	(pages "770-6")
	(pubMedIdentifier 11048727)
	(title "The biochemistry of apoptosis.")
	(volume 407)
	(year 2000))

([GK_140480] of InstanceEdit
	(_displayName "Gillespie, ME, 2004-08-18 21:05:31")
	(author [GK_73681])
	(dateTime "2004-08-18 21:05:31")
	(DB_ID 140480))

([GK_140481] of Summation
	(_displayName "The Fas family of cell surface receptors initiate the apotot...")
	(DB_ID 140481)
	(literatureReference
		[GK_140482]
		[GK_140484]
		[GK_140483])
	(text "The Fas family of cell surface receptors initiate the apototic pathway through interaction with the external ligand, FasL.  The cytoplasmic domain of Fas interacts with a number of molecules in the transduction of the external signal to the cytoplasmic side of the cell membrane. The most notable cytoplasmic domain is the Death Domain (DD) that is involved in recruiting the FAS-associating death domain-containing protein (FADD). This interaction drives downstream events."))

([GK_140482] of LiteratureReference
	(_displayName "The polypeptide encoded by the cDNA for human cell surface antigen Fas can mediate apoptosis")
	(author
		[GK_141169]
		[GK_141174]
		[GK_141175]
		[GK_141172]
		[GK_141170]
		[GK_141171]
		[GK_141166]
		[GK_76786]
		[GK_141176])
	(DB_ID 140482)
	(journal "Cell")
	(pages "233-43")
	(pubMedIdentifier 1713127)
	(title "The polypeptide encoded by the cDNA for human cell surface antigen Fas can mediate apoptosis")
	(volume 66)
	(year 1991))

([GK_140483] of LiteratureReference
	(_displayName "FADD, a novel death domain-containing protein, interacts with the death domain of Fas and initiates apoptosis")
	(author
		[GK_141168]
		[GK_141167]
		[GK_141165]
		[GK_141149])
	(DB_ID 140483)
	(journal "Cell")
	(pages "505-12")
	(pubMedIdentifier 7538907)
	(title "FADD, a novel death domain-containing protein, interacts with the death domain of Fas and initiates apoptosis")
	(volume 81)
	(year 1995))

([GK_140484] of LiteratureReference
	(_displayName "A cell-killing monoclonal antibody (anti-Fas) to a cell surface antigen co-downregulated with the receptor of tumor necrosis factor")
	(author
		[GK_141174]
		[GK_141175]
		[GK_141172])
	(DB_ID 140484)
	(journal "J Exp Med")
	(pages "1747-56")
	(pubMedIdentifier 2469768)
	(title "A cell-killing monoclonal antibody (anti-Fas) to a cell surface antigen co-downregulated with the receptor of tumor necrosis factor")
	(volume 169)
	(year 1989))

([GK_140492] of Person
	(_displayName "Hengartner, MO")
	(DB_ID 140492)
	(initial "MO")
	(surname "Hengartner"))

([GK_140494] of Person
	(_displayName "Wallach, D")
	(DB_ID 140494)
	(initial "D")
	(surname "Wallach"))

([GK_140495] of LiteratureReference
	(_displayName "A novel protein that interacts with the death domain of Fas/APO1 contains a sequence motif related to the death domain")
	(author
		[GK_140497]
		[GK_140520]
		[GK_140518]
		[GK_140511]
		[GK_111029]
		[GK_140494])
	(DB_ID 140495)
	(journal "J Biol Chem")
	(pages "7795-8")
	(pubMedIdentifier 7536190)
	(title "A novel protein that interacts with the death domain of Fas/APO1 contains a sequence motif related to the death domain")
	(volume 270)
	(year 1995))

([GK_140496] of Person
	(_displayName "Hellbardt, S")
	(DB_ID 140496)
	(initial "S")
	(surname "Hellbardt"))

([GK_140497] of Person
	(_displayName "Boldin, MP")
	(DB_ID 140497)
	(initial "MP")
	(surname "Boldin"))

([GK_140498] of Person
	(_displayName "Krammer, PH")
	(DB_ID 140498)
	(initial "PH")
	(surname "Krammer"))

([GK_140499] of Person
	(_displayName "Lynch, DH")
	(DB_ID 140499)
	(initial "DH")
	(surname "Lynch"))

([GK_140500] of Person
	(_displayName "Echeverri, F")
	(DB_ID 140500)
	(initial "F")
	(surname "Echeverri"))

([GK_140501] of Person
	(_displayName "Yoo, NJ")
	(DB_ID 140501)
	(initial "NJ")
	(surname "Yoo"))

([GK_140502] of Person
	(_displayName "Peter, ME")
	(DB_ID 140502)
	(initial "ME")
	(surname "Peter"))

([GK_140504] of Person
	(_displayName "Pawlita, M")
	(DB_ID 140504)
	(initial "M")
	(surname "Pawlita"))

([GK_140505] of LiteratureReference
	(_displayName "Cytotoxicity-dependent APO-1 (Fas/CD95)-associated proteins form a death-inducing signaling complex (DISC) with the receptor")
	(author
		[GK_140512]
		[GK_140496]
		[GK_140507]
		[GK_140517]
		[GK_140504]
		[GK_140498]
		[GK_140502])
	(DB_ID 140505)
	(journal "EMBO J")
	(pages "5579-88")
	(pubMedIdentifier 8521815)
	(title "Cytotoxicity-dependent APO-1 (Fas/CD95)-associated proteins form a death-inducing signaling complex (DISC) with the receptor")
	(volume 14)
	(year 1995))

([GK_140506] of Person
	(_displayName "Brunner, T")
	(DB_ID 140506)
	(initial "T")
	(surname "Brunner"))

([GK_140507] of Person
	(_displayName "Behrmann, I")
	(DB_ID 140507)
	(initial "I")
	(surname "Behrmann"))

([GK_140509] of Person
	(_displayName "Mahboubi, A")
	(DB_ID 140509)
	(initial "A")
	(surname "Mahboubi"))

([GK_140510] of Person
	(_displayName "LaFace, D")
	(DB_ID 140510)
	(initial "D")
	(surname "LaFace"))

([GK_140511] of Person
	(_displayName "Mett, IL")
	(DB_ID 140511)
	(initial "IL")
	(surname "Mett"))

([GK_140512] of Person
	(_displayName "Kischkel, FC")
	(DB_ID 140512)
	(initial "FC")
	(surname "Kischkel"))

([GK_140513] of LiteratureReference
	(_displayName "Cell-autonomous Fas (CD95)/Fas-ligand interaction mediates activation-induced apoptosis in T-cell hybridomas")
	(author
		[GK_140506]
		[GK_140515]
		[GK_140510]
		[GK_140501]
		[GK_140509]
		[GK_140500]
		[GK_140516]
		[GK_140514]
		[GK_140499]
		[GK_140519])
	(DB_ID 140513)
	(journal "Nature")
	(pages "441-4")
	(pubMedIdentifier 7530336)
	(title "Cell-autonomous Fas (CD95)/Fas-ligand interaction mediates activation-induced apoptosis in T-cell hybridomas")
	(volume 373)
	(year 1995))

([GK_140514] of Person
	(_displayName "Force, WR")
	(DB_ID 140514)
	(initial "WR")
	(surname "Force"))

([GK_140515] of Person
	(_displayName "Mogil, RJ")
	(DB_ID 140515)
	(initial "RJ")
	(surname "Mogil"))

([GK_140516] of Person
	(_displayName "Martin, SJ")
	(DB_ID 140516)
	(initial "SJ")
	(surname "Martin"))

([GK_140517] of Person
	(_displayName "Germer, M")
	(DB_ID 140517)
	(initial "M")
	(surname "Germer"))

([GK_140518] of Person
	(_displayName "Pancer, Z")
	(DB_ID 140518)
	(initial "Z")
	(surname "Pancer"))

([GK_140519] of Person
	(_displayName "Ware, CF")
	(DB_ID 140519)
	(initial "CF")
	(surname "Ware"))

([GK_140520] of Person
	(_displayName "Varfolomeev, EE")
	(DB_ID 140520)
	(initial "EE")
	(surname "Varfolomeev"))

([GK_140534] of Pathway
	(_displayName "[Hsa] Caspase-8 is formed from procaspase-8")
	(_doRelease TRUE)
	(compartment [GK_70101])
	(DB_ID 140534)
	(goBiologicalProcess [GK_25482])
	(hasEvent
		[GK_69416]
		[GK_139952])
	(literatureReference [GK_141160])
	(name "Caspase-8 is formed from procaspase-8")
	(species [GK_48887])
	(stableIdentifier [GK_362011])
	(summation [GK_213088]))

([GK_140935] of Complex
	(_displayName "[Hsa] TRAF2:TRADD:RIP1 Complex [cytosol]")
	(compartment [GK_70101])
	(DB_ID 140935)
	(goCellularComponent [GK_161217])
	(hasComponent
		[GK_63118]
		[GK_66370]
		[GK_66376])
	(name "TRAF2:TRADD:RIP1 Complex")
	(species [GK_48887])
	(stableIdentifier [GK_363774]))

([GK_140936] of InstanceEdit
	(_displayName "Gillespie, ME, 2004-08-24 21:32:45")
	(author [GK_73681])
	(dateTime "2004-08-24 21:32:45")
	(DB_ID 140936))

([GK_140937] of Person
	(_displayName "Hsu, H")
	(DB_ID 140937)
	(initial "H")
	(surname "Hsu"))

([GK_140938] of Person
	(_displayName "Aggarwal, BB")
	(DB_ID 140938)
	(initial "BB")
	(surname "Aggarwal"))

([GK_140939] of LiteratureReference
	(_displayName "TNF-R1 signaling: a beautiful pathway")
	(author
		[GK_140944]
		[GK_75697])
	(DB_ID 140939)
	(journal "Science")
	(pages "1634-5")
	(pubMedIdentifier 12040173)
	(title "TNF-R1 signaling: a beautiful pathway")
	(volume 296)
	(year 2002))

([GK_140940] of Person
	(_displayName "Aiyer, RA")
	(DB_ID 140940)
	(initial "RA")
	(surname "Aiyer"))

([GK_140941] of LiteratureReference
	(_displayName "Involvement of MACH, a novel MORT1/FADD-interacting protease, in Fas/APO-1- and TNF receptor-induced cell death")
	(author
		[GK_140497]
		[GK_140949]
		[GK_140947]
		[GK_140494])
	(DB_ID 140941)
	(journal "Cell")
	(pages "803-15")
	(pubMedIdentifier 8681376)
	(title "Involvement of MACH, a novel MORT1/FADD-interacting protease, in Fas/APO-1- and TNF receptor-induced cell death")
	(volume 85)
	(year 1996))

([GK_140942] of Summation
	(_displayName "The Tumor Necrosis Factor alpha (TNF-alpha) mediated apoptos...")
	(DB_ID 140942)
	(text "The Tumor Necrosis Factor alpha (TNF-alpha) mediated apoptosis pathway has been implicated in the pathogenesis of a number of diseases including sepsis, diabetes, cancer, osteoporosis, multiple sclerosis, rheumatoid arthritis, and inflammatory bowel diseases. The TNF signaling network provides extensive cross talk between the apoptotic pathway, and the other NF-B, and JNK pathways that also emanate from TNF-R."))

([GK_140943] of Person
	(_displayName "Stauber, GB")
	(DB_ID 140943)
	(initial "GB")
	(surname "Stauber"))

([GK_140944] of Person
	(_displayName "Chen, G")
	(DB_ID 140944)
	(initial "G")
	(surname "Chen"))

([GK_140945] of LiteratureReference
	(_displayName "Human tumor necrosis factor-alpha receptor. Purification by immunoaffinity chromatography and initial characterization.")
	(author
		[GK_140943]
		[GK_140940]
		[GK_140938])
	(DB_ID 140945)
	(journal "J Biol Chem")
	(pages "19098-104")
	(pubMedIdentifier 2848815)
	(title "Human tumor necrosis factor-alpha receptor. Purification by immunoaffinity chromatography and initial characterization.")
	(volume 263)
	(year 1988))

([GK_140946] of Complex
	(_displayName "[Hsa] TNF-alpha:TNF-R1:TRAPP:RIP1:TRAF2 Complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 140946)
	(goCellularComponent [GK_161217])
	(hasComponent
		[GK_74277]
		[GK_66376]
		[GK_63118]
		[GK_66370])
	(name "TNF-alpha:TNF-R1:TRAPP:RIP1:TRAF2 Complex")
	(species [GK_48887])
	(stableIdentifier [GK_371402]))

([GK_140947] of Person
	(_displayName "Goltsev, YV")
	(DB_ID 140947)
	(initial "YV")
	(surname "Goltsev"))

([GK_140948] of LiteratureReference
	(_displayName "The TNF receptor 1-associated protein TRADD signals cell death and NF-kappa B activation")
	(author
		[GK_140937]
		[GK_140950]
		[GK_75697])
	(DB_ID 140948)
	(journal "Cell")
	(pages "495-504")
	(pubMedIdentifier 7758105)
	(title "The TNF receptor 1-associated protein TRADD signals cell death and NF-kappa B activation")
	(volume 81)
	(year 1995))

([GK_140949] of Person
	(_displayName "Goncharov, TM")
	(DB_ID 140949)
	(initial "TM")
	(surname "Goncharov"))

([GK_140950] of Person
	(_displayName "Xiong, J")
	(DB_ID 140950)
	(initial "J")
	(surname "Xiong"))

([GK_140975] of Person
	(_displayName "Micheau, O")
	(DB_ID 140975)
	(initial "O")
	(surname "Micheau"))

([GK_140976] of Complex
	(_displayName "[Hsa] TRADD:TRAF2:RIP1:FADD:Caspase-8 Complex [cytosol]")
	(compartment [GK_70101])
	(DB_ID 140976)
	(goCellularComponent [GK_161217])
	(hasComponent
		[GK_140977]
		[GK_57031])
	(name "TRADD:TRAF2:RIP1:FADD:Caspase-8 Complex")
	(species [GK_48887])
	(stableIdentifier [GK_362216]))

([GK_140977] of Complex
	(_displayName "[Hsa] TRAF2:TRADD:RIP1:FADD [cytosol]")
	(compartment [GK_70101])
	(DB_ID 140977)
	(goCellularComponent [GK_161217])
	(hasComponent
		[GK_140935]
		[GK_54639])
	(name "TRAF2:TRADD:RIP1:FADD")
	(species [GK_48887])
	(stableIdentifier [GK_367733]))

([GK_140978] of Reaction
	(_displayName "[Hsa] TRADD:TRAF2:RIP1 complex binds FADD")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 140978)
	(edited [GK_165085])
	(input
		[GK_140935]
		[GK_54639])
	(literatureReference [GK_140979])
	(name "TRADD:TRAF2:RIP1 complex binds FADD")
	(output [GK_140977])
	(precedingEvent [GK_83582])
	(reviewed [GK_165094])
	(species [GK_48887])
	(stableIdentifier [GK_358269])
	(summation [GK_74353]))

([GK_140979] of LiteratureReference
	(_displayName "Induction of TNF receptor I-mediated apoptosis via two sequential signaling complexes")
	(author
		[GK_140975]
		[GK_77293])
	(DB_ID 140979)
	(journal "Cell")
	(pages "181-90")
	(pubMedIdentifier 12887920)
	(title "Induction of TNF receptor I-mediated apoptosis via two sequential signaling complexes")
	(volume 114)
	(year 2003))

([GK_140991] of Person
	(_displayName "Wang, S")
	(DB_ID 140991)
	(initial "S")
	(surname "Wang"))

([GK_140992] of LiteratureReference
	(_displayName "TRAIL and apoptosis induction by TNF-family death receptors")
	(author
		[GK_140991]
		[GK_77151])
	(DB_ID 140992)
	(journal "Oncogene")
	(pages "8628-33")
	(pubMedIdentifier 14634624)
	(title "TRAIL and apoptosis induction by TNF-family death receptors")
	(volume 22)
	(year 2003))

([GK_141075] of Person
	(_displayName "Ashkenazi, A")
	(DB_ID 141075)
	(initial "A")
	(surname "Ashkenazi"))

([GK_141083] of Summation
	(_displayName "Tumor necrosis factor-related apoptosis-inducing ligand or A...")
	(DB_ID 141083)
	(literatureReference [GK_140992])
	(text "Tumor necrosis factor-related apoptosis-inducing ligand or Apo 2 ligand (TRAIL/Apo2L) is a member of the tumor necrosis factor (TNF) family. This group of apoptosis induction pathways all work through protein interactions mediated by the intracellular death domain (DD), encoded within the cytoplasmic domain of the receptor. TRAIL selectively induces apoptosis through its interaction with the Fas-associated death domain protein (FADD)."))

([GK_141084] of InstanceEdit
	(_displayName "Gillespie, ME, 2004-08-31 03:31:31")
	(author [GK_73681])
	(dateTime "2004-08-31 03:31:31")
	(DB_ID 141084))

([GK_141118] of Complex
	(_displayName "[Hsa] TRAIL receptor-2:TRAIL complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141118)
	(hasComponent
		[GK_65505]
		[GK_66186])
	(name "TRAIL receptor-2:TRAIL complex")
	(species [GK_48887])
	(stableIdentifier [GK_368665]))

([GK_141126] of Complex
	(_displayName "[Hsa] TRAIL receptor-2:TRAIL Trimer [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141126)
	(hasComponent
		[GK_141118]
		[GK_141118]
		[GK_141118])
	(name "TRAIL receptor-2:TRAIL Trimer")
	(species [GK_48887])
	(stableIdentifier [GK_371770]))

([GK_141128] of LiteratureReference
	(_displayName "FADD/MORT1 and caspase-8 are recruited to TRAIL receptors 1 and 2 and are essential for apoptosis mediated by TRAIL receptor 2")
	(author
		[GK_141131]
		[GK_141129]
		[GK_141136]
		[GK_141130]
		[GK_141135]
		[GK_141134]
		[GK_140498]
		[GK_141138])
	(DB_ID 141128)
	(journal "Immunity")
	(pages "599-609")
	(pubMedIdentifier 10894160)
	(title "FADD/MORT1 and caspase-8 are recruited to TRAIL receptors 1 and 2 and are essential for apoptosis mediated by TRAIL receptor 2")
	(volume 12)
	(year 2000))

([GK_141129] of Person
	(_displayName "Weigand, MA")
	(DB_ID 141129)
	(initial "MA")
	(surname "Weigand"))

([GK_141130] of Person
	(_displayName "Rauch, CT")
	(DB_ID 141130)
	(initial "CT")
	(surname "Rauch"))

([GK_141131] of Person
	(_displayName "Sprick, MR")
	(DB_ID 141131)
	(initial "MR")
	(surname "Sprick"))

([GK_141133] of Complex
	(_displayName "[Hsa] TRAIL:TRAIL receptor-2 Trimer:FADD:Caspase-8 precursor complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141133)
	(hasComponent
		[GK_57031]
		[GK_141137])
	(name "TRAIL:TRAIL receptor-2 Trimer:FADD:Caspase-8 precursor complex")
	(species [GK_48887])
	(stableIdentifier [GK_364329]))

([GK_141134] of Person
	(_displayName "Blenis, J")
	(DB_ID 141134)
	(initial "J")
	(surname "Blenis"))

([GK_141135] of Person
	(_displayName "Juo, P")
	(DB_ID 141135)
	(initial "P")
	(surname "Juo"))

([GK_141136] of Person
	(_displayName "Rieser, E")
	(DB_ID 141136)
	(initial "E")
	(surname "Rieser"))

([GK_141137] of Complex
	(_displayName "[Hsa] TRAIL:TRAIL receptor-2:FADD complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141137)
	(hasComponent
		[GK_141126]
		[GK_54639])
	(name "TRAIL:TRAIL receptor-2:FADD complex")
	(species [GK_48887])
	(stableIdentifier [GK_363728]))

([GK_141138] of Person
	(_displayName "Walczak, H")
	(DB_ID 141138)
	(firstname "Henning")
	(initial "H")
	(surname "Walczak"))

([GK_141139] of Reaction
	(_displayName "[Hsa] Trimerization of TRAIL: TRAIL receptor-2 complex")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 141139)
	(input
		[GK_141118]
		[GK_141118]
		[GK_141118])
	(literatureReference [GK_141128])
	(name "Trimerization of TRAIL: TRAIL receptor-2 complex")
	(output [GK_141126])
	(precedingEvent [GK_75238])
	(species [GK_48887])
	(stableIdentifier [GK_361815])
	(summation [GK_179273]))

([GK_141140] of Person
	(_displayName "Salvesen, GS")
	(DB_ID 141140)
	(firstname "Guy S.")
	(initial "GS")
	(surname "Salvesen"))

([GK_141141] of Person
	(_displayName "Sutherland, GR")
	(DB_ID 141141)
	(initial "GR")
	(surname "Sutherland"))

([GK_141142] of Person
	(_displayName "Wiley, SR")
	(DB_ID 141142)
	(initial "SR")
	(surname "Wiley"))

([GK_141143] of Person
	(_displayName "Boatright, KM")
	(DB_ID 141143)
	(initial "KM")
	(surname "Boatright"))

([GK_141147] of LiteratureReference
	(_displayName "Identification and characterization of a new member of the TNF family that induces apoptosis")
	(author
		[GK_141142]
		[GK_141153]
		[GK_141148]
		[GK_141154]
		[GK_141157]
		[GK_141155]
		[GK_141141]
		[GK_141152]
		[GK_141151]
		[GK_111168])
	(DB_ID 141147)
	(journal "Immunity")
	(pages "673-82")
	(pubMedIdentifier 8777713)
	(title "Identification and characterization of a new member of the TNF family that induces apoptosis")
	(volume 3)
	(year 1995))

([GK_141148] of Person
	(_displayName "Smolak, PJ")
	(DB_ID 141148)
	(initial "PJ")
	(surname "Smolak"))

([GK_141149] of Person
	(_displayName "Dixit, VM")
	(DB_ID 141149)
	(initial "VM")
	(surname "Dixit"))

([GK_141151] of Person
	(_displayName "Rauch, C")
	(DB_ID 141151)
	(initial "C")
	(surname "Rauch"))

([GK_141152] of Person
	(_displayName "Smith, TD")
	(DB_ID 141152)
	(initial "TD")
	(surname "Smith"))

([GK_141153] of Person
	(_displayName "Schooley, K")
	(DB_ID 141153)
	(initial "K")
	(surname "Schooley"))

([GK_141154] of Person
	(_displayName "Din, WS")
	(DB_ID 141154)
	(initial "WS")
	(surname "Din"))

([GK_141155] of Person
	(_displayName "Nicholl, JK")
	(DB_ID 141155)
	(initial "JK")
	(surname "Nicholl"))

([GK_141156] of Reaction
	(_displayName "[Hsa] TRAIL Mediated Activation of Pro-caspase 8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 141156)
	(input [GK_141133])
	(name "TRAIL Mediated Activation of Pro-caspase 8")
	(output
		[GK_76158]
		[GK_75975]
		[GK_141137])
	(precedingEvent [GK_83586])
	(species [GK_48887])
	(stableIdentifier [GK_361043])
	(summation [GK_179244]))

([GK_141157] of Person
	(_displayName "Huang, CP")
	(DB_ID 141157)
	(initial "CP")
	(surname "Huang"))

([GK_141158] of LiteratureReference
	(_displayName "Death receptors: signaling and modulation")
	(author
		[GK_141075]
		[GK_141149])
	(DB_ID 141158)
	(journal "Science")
	(pages "1305-8")
	(pubMedIdentifier 9721089)
	(title "Death receptors: signaling and modulation")
	(volume 281)
	(year 1998))

([GK_141159] of Reaction
	(_displayName "[Hsa] TNF Mediated Activation of Pro-caspase 8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 141159)
	(input [GK_140976])
	(name "TNF Mediated Activation of Pro-caspase 8")
	(output
		[GK_76158]
		[GK_75975]
		[GK_140977])
	(precedingEvent [GK_75240])
	(species [GK_48887])
	(stableIdentifier [GK_359831])
	(summation [GK_179239]))

([GK_141160] of LiteratureReference
	(_displayName "Mechanisms of caspase activation")
	(author
		[GK_141143]
		[GK_141140])
	(DB_ID 141160)
	(journal "Curr Opin Cell Biol")
	(pages "725-31")
	(pubMedIdentifier 14644197)
	(title "Mechanisms of caspase activation")
	(volume 15)
	(year 2003))

([GK_141165] of Person
	(_displayName "Tewari, M")
	(DB_ID 141165)
	(initial "M")
	(surname "Tewari"))

([GK_141166] of Person
	(_displayName "Hase, A")
	(DB_ID 141166)
	(initial "A")
	(surname "Hase"))

([GK_141167] of Person
	(_displayName "O'Rourke, K")
	(DB_ID 141167)
	(initial "K")
	(surname "O'Rourke"))

([GK_141168] of Person
	(_displayName "Chinnaiyan, AM")
	(DB_ID 141168)
	(initial "AM")
	(surname "Chinnaiyan"))

([GK_141169] of Person
	(_displayName "Itoh, N")
	(DB_ID 141169)
	(initial "N")
	(surname "Itoh"))

([GK_141170] of Person
	(_displayName "Mizushima, S")
	(DB_ID 141170)
	(initial "S")
	(surname "Mizushima"))

([GK_141171] of Person
	(_displayName "Sameshima, M")
	(DB_ID 141171)
	(initial "M")
	(surname "Sameshima"))

([GK_141172] of Person
	(_displayName "Yonehara, M")
	(DB_ID 141172)
	(initial "M")
	(surname "Yonehara"))

([GK_141174] of Person
	(_displayName "Yonehara, S")
	(DB_ID 141174)
	(initial "S")
	(surname "Yonehara"))

([GK_141175] of Person
	(_displayName "Ishii, A")
	(DB_ID 141175)
	(initial "A")
	(surname "Ishii"))

([GK_141176] of Person
	(_displayName "Nagata, S")
	(DB_ID 141176)
	(initial "S")
	(surname "Nagata"))

([GK_141226] of Figure
	(_displayName "/figures/FasL_Fas_FADD.jpg")
	(DB_ID 141226)
	(url "/figures/FasL_Fas_FADD.jpg"))

([GK_141227] of Figure
	(_displayName "/figures/FasL_Fas_FADD_Caspase8.jpg")
	(DB_ID 141227)
	(url "/figures/FasL_Fas_FADD_Caspase8.jpg"))

([GK_141228] of Figure
	(_displayName "/figures/FasL_Fas_FADD_ProCaspase8.jpg")
	(DB_ID 141228)
	(url "/figures/FasL_Fas_FADD_ProCaspase8.jpg"))

([GK_141234] of Figure
	(_displayName "/figures/FAS_Top.jpg")
	(DB_ID 141234)
	(url "/figures/FAS_Top.jpg"))

([GK_141237] of Figure
	(_displayName "/figures/FasL_Fas.jpg")
	(DB_ID 141237)
	(url "/figures/FasL_Fas.jpg"))

([GK_141240] of Figure
	(_displayName "/figures/FasL_Fas_FADD_ProCaspase10.jpg")
	(DB_ID 141240)
	(url "/figures/FasL_Fas_FADD_ProCaspase10.jpg"))

([GK_141277] of Figure
	(_displayName "/figures/extrinsic_overview.jpeg")
	(DB_ID 141277)
	(url "/figures/extrinsic_overview.jpeg"))

([GK_141304] of Complex
	(_displayName "[Hsa] TRAIL:TRAIL receptor-2 Trimer:FADD:Caspase-10 precursor complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141304)
	(hasComponent
		[GK_57035]
		[GK_141137])
	(name "TRAIL:TRAIL receptor-2 Trimer:FADD:Caspase-10 precursor complex")
	(species [GK_48887])
	(stableIdentifier [GK_366444]))

([GK_141305] of Person
	(_displayName "Grosse-Wilde, A")
	(DB_ID 141305)
	(initial "A")
	(surname "Grosse-Wilde"))

([GK_141306] of LiteratureReference
	(_displayName "Caspase-10 is an initiator caspase in death receptor signaling")
	(author
		[GK_84039]
		[GK_141307]
		[GK_141309]
		[GK_141311]
		[GK_141313])
	(DB_ID 141306)
	(journal "Proc Natl Acad Sci U S A")
	(pages "13884-8")
	(pubMedIdentifier 11717445)
	(title "Caspase-10 is an initiator caspase in death receptor signaling")
	(volume 98)
	(year 2001))

([GK_141307] of Person
	(_displayName "Chun, HJ")
	(DB_ID 141307)
	(initial "HJ")
	(surname "Chun"))

([GK_141308] of Person
	(_displayName "Stahl, H")
	(DB_ID 141308)
	(initial "H")
	(surname "Stahl"))

([GK_141309] of Person
	(_displayName "Wong, W")
	(DB_ID 141309)
	(initial "W")
	(surname "Wong"))

([GK_141310] of Reaction
	(_displayName "[Hsa] FASL:FAS Receptor Trimer:FADD complex binds pro-Caspase-10")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 141310)
	(figure [GK_141240])
	(input
		[GK_43124]
		[GK_57035])
	(literatureReference
		[GK_141306]
		[GK_141314])
	(name "FASL:FAS Receptor Trimer:FADD complex binds pro-Caspase-10")
	(output [GK_141315])
	(precedingEvent [GK_83650])
	(species [GK_48887])
	(stableIdentifier [GK_359435])
	(summation [GK_178763]))

([GK_141311] of Person
	(_displayName "Spencer, DM")
	(DB_ID 141311)
	(initial "DM")
	(surname "Spencer"))

([GK_141313] of Person
	(_displayName "Lenardo, MJ")
	(DB_ID 141313)
	(initial "MJ")
	(surname "Lenardo"))

([GK_141314] of LiteratureReference
	(_displayName "Caspase-10 is recruited to and activated at the native TRAIL and CD95 death-inducing signalling complexes in a FADD-dependent manner but can not functionally substitute caspase-8")
	(author
		[GK_141131]
		[GK_141136]
		[GK_141308]
		[GK_141305]
		[GK_141129]
		[GK_141138])
	(DB_ID 141314)
	(journal "EMBO J")
	(pages "4520-30")
	(pubMedIdentifier 12198154)
	(title "Caspase-10 is recruited to and activated at the native TRAIL and CD95 death-inducing signalling complexes in a FADD-dependent manner but can not functionally substitute caspase-8")
	(volume 21)
	(year 2002))

([GK_141315] of Complex
	(_displayName "[Hsa] FASL:FAS Receptor Trimer:FADD:pro-Caspase-10 [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 141315)
	(hasComponent
		[GK_43124]
		[GK_57035])
	(name "FASL:FAS Receptor Trimer:FADD:pro-Caspase-10")
	(species [GK_48887])
	(stableIdentifier [GK_370192]))

([GK_141316] of Reaction
	(_displayName "[Hsa] TRAIL:TRAIL-Receptor2 Trimer:FADD complex binds Caspase-10")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 141316)
	(input
		[GK_141137]
		[GK_57035])
	(literatureReference
		[GK_141306]
		[GK_141314])
	(name "TRAIL:TRAIL-Receptor2 Trimer:FADD complex binds Caspase-10")
	(output [GK_141304])
	(precedingEvent [GK_75187])
	(species [GK_48887])
	(stableIdentifier [GK_358282])
	(summation [GK_179246]))

([GK_141456] of Person
	(_displayName "Vaux, DL")
	(affiliation [GK_1247556])
	(DB_ID 141456)
	(eMailAddress "d.vaux@latrobe.edu.au")
	(firstname "David L")
	(initial "DL")
	(surname "Vaux"))

([GK_143] of GO_BiologicalProcess
	(_displayName "cellular process")
	(accession "0009987")
	(DB_ID 143)
	(definition "Any process that is carried out at the cellular level, but not necessarily restricted to a single cell. For example, cell communication occurs among more than one cell, but occurs at the cellular level.")
	(instanceOf [GK_106])
	(name "cellular process")
	(referenceDatabase [GK_1]))

([GK_144921] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01258 CALCA recommendedName: Calcitonin  component recommendedName: Calcitonin  /component component recommendedName: Katacalcin  alternativeName: Calcitonin carboxyl-terminal peptide shortName:CCP  alternativeName: PDN-21  /component")
	(checksum "1")
	(comment "FUNCTION Calcitonin causes a rapid but short-lived drop in the level of calcium and phosphate in blood by promoting the incorporation of those ions in the bones.FUNCTION Katacalcin is a potent plasma calcium-lowering peptide.SIMILARITY Belongs to the calcitonin family.")
	(DB_ID 144921)
	(description "recommendedName: Calcitonin  component recommendedName: Calcitonin  /component component recommendedName: Katacalcin  alternativeName: Calcitonin carboxyl-terminal peptide shortName:CCP  alternativeName: PDN-21  /component")
	(geneName
		"CALCA"
		"CALC1")
	(identifier "P01258")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Amidation"
		"Cleavage on pair of basic residues"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Hormone"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "CALCA")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"CALC_HUMAN"
		"B7ZL39"
		"Q13935"
		"Q13937"
		"Q52LX7")
	(sequenceLength 141)
	(species [GK_48887]))

([GK_148293] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:O60814 HIST1H2BK recommendedName: Histone H2B type 1-K shortName:H2B K  alternativeName: HIRA-interacting protein 1 ")
	(checksum "1")
	(comment "SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 148293)
	(description "recommendedName: Histone H2B type 1-K shortName:H2B K  alternativeName: HIRA-interacting protein 1 ")
	(geneName
		"HIST1H2BK"
		"H2BFT"
		"HIRIP1")
	(identifier "O60814")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Antibiotic"
		"Antimicrobial"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BK")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1K_HUMAN"
		"A8K7P7"
		"Q2VPI7")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_148294] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q96A08 HIST1H2BA recommendedName: Histone H2B type 1-A  alternativeName: Histone H2B, testis  alternativeName: Testis-specific histone H2B ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-122 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 148294)
	(description "recommendedName: Histone H2B type 1-A  alternativeName: Histone H2B, testis  alternativeName: Testis-specific histone H2B ")
	(geneName
		"HIST1H2BA"
		"TSH2B")
	(identifier "Q96A08")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Ubl conjugation")
	(name "HIST1H2BA")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1A_HUMAN"
		"B2R544"
		"Q6NZ98"
		"Q6NZA0"
		"Q6NZA1")
	(sequenceLength 127)
	(species [GK_48887]))

([GK_148296] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q8N257 HIST3H2BB recommendedName: Histone H2B type 3-B  alternativeName: H2B type 12 ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 148296)
	(description "recommendedName: Histone H2B type 3-B  alternativeName: H2B type 12 ")
	(geneName "HIST3H2BB")
	(identifier "Q8N257")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST3H2BB")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B3B_HUMAN"
		"A4FU05"
		"Q3ZCP6"
		"Q5TA30")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_157508] of Affiliation
	(_displayName "University of Lausanne")
	(address "Department of Biochemistry <br>Chemin des Boveressses 155 <br>CH-1066 Epalinges <br>Switzerland")
	(DB_ID 157508)
	(name "University of Lausanne"))

([GK_158007] of Affiliation
	(_displayName "Cold Spring Harbor Laboratory")
	(address "1 Bungtown Road, Cold Spring Harbor, NY 11724")
	(DB_ID 158007)
	(name
		"Cold Spring Harbor Laboratory"
		"CSHL"))

([GK_159979] of GO_CellularComponent
	(_displayName "protein complex")
	(accession "0043234")
	(DB_ID 159979)
	(definition "Any macromolecular complex composed of two or more polypeptide subunits, which may or may not be identical. Protein complexes may have other associated non-protein prosthetic groups, such as nucleotides, metal ions or other small molecules.")
	(instanceOf [GK_258170])
	(name "protein complex")
	(referenceDatabase [GK_1]))

([GK_159990] of GO_BiologicalProcess
	(_displayName "positive regulation of biological process")
	(accession "0048518")
	(DB_ID 159990)
	(definition "Any process that activates or increases the frequency, rate or extent of a biological process. Biological processes are regulated by many means; examples include the control of gene expression, protein modification or interaction with a protein or substrate molecule.")
	(instanceOf [GK_139810])
	(name "positive regulation of biological process")
	(positivelyRegulate [GK_106])
	(referenceDatabase [GK_1]))

([GK_160064] of GO_BiologicalProcess
	(_displayName "positive regulation of cellular process")
	(accession "0048522")
	(DB_ID 160064)
	(definition "Any process that activates or increases the frequency, rate or extent of a cellular process, any of those that are carried out at the cellular level, but are not necessarily restricted to a single cell. For example, cell communication occurs among more than one cell, but occurs at the cellular level.")
	(instanceOf
		[GK_159990]
		[GK_139809])
	(name "positive regulation of cellular process")
	(positivelyRegulate [GK_143])
	(referenceDatabase [GK_1]))

([GK_160114] of GO_BiologicalProcess
	(_displayName "regulation of catalytic activity")
	(accession "0050790")
	(DB_ID 160114)
	(definition "Any process that modulates the activity of an enzyme.")
	(instanceOf
		[GK_3320]
		[GK_258234])
	(name "regulation of catalytic activity")
	(referenceDatabase [GK_1])
	(regulate [GK_97]))

([GK_160116] of GO_BiologicalProcess
	(_displayName "positive regulation of catalytic activity")
	(accession "0043085")
	(DB_ID 160116)
	(definition "Any process that activates or increases the activity of an enzyme.")
	(instanceOf
		[GK_422587]
		[GK_160114])
	(name "positive regulation of catalytic activity")
	(positivelyRegulate [GK_97])
	(referenceDatabase [GK_1]))

([GK_160227] of GO_BiologicalProcess
	(_displayName "positive regulation of programmed cell death")
	(accession "0043068")
	(DB_ID 160227)
	(definition "Any process that activates or increases the frequency, rate or extent of programmed cell death, cell death resulting from activation of endogenous cellular processes.")
	(instanceOf
		[GK_422583]
		[GK_139813])
	(name "positive regulation of programmed cell death")
	(positivelyRegulate [GK_2274])
	(referenceDatabase [GK_1]))

([GK_160291] of GO_BiologicalProcess
	(_displayName "regulation of hydrolase activity")
	(accession "0051336")
	(DB_ID 160291)
	(definition "Any process that modulates the frequency, rate or extent of hydrolase activity, the catalysis of the hydrolysis of various bonds, e.g. C-O, C-N, C-C, phosphoric anhydride bonds, etc. Hydrolase is the systematic name for any enzyme of EC class 3.")
	(instanceOf [GK_160114])
	(name "regulation of hydrolase activity")
	(referenceDatabase [GK_1])
	(regulate [GK_450]))

([GK_160292] of GO_BiologicalProcess
	(_displayName "regulation of cysteine-type endopeptidase activity involved in apoptotic process")
	(accession "0043281")
	(componentOf [GK_2273])
	(DB_ID 160292)
	(definition "Any process that modulates the activity of a cysteine-type endopeptidase involved in apoptosis.")
	(instanceOf [GK_1043016])
	(name "regulation of cysteine-type endopeptidase activity involved in apoptotic process")
	(referenceDatabase [GK_1]))

([GK_160293] of GO_BiologicalProcess
	(_displayName "positive regulation of hydrolase activity")
	(accession "0051345")
	(DB_ID 160293)
	(definition "Any process that activates or increases the frequency, rate or extent of hydrolase activity, the catalysis of the hydrolysis of various bonds.")
	(instanceOf
		[GK_160116]
		[GK_160291])
	(name "positive regulation of hydrolase activity")
	(positivelyRegulate [GK_450])
	(referenceDatabase [GK_1]))

([GK_160294] of GO_BiologicalProcess
	(_displayName "positive regulation of cysteine-type endopeptidase activity involved in apoptotic process")
	(accession "0043280")
	(componentOf [GK_2273])
	(DB_ID 160294)
	(definition "Any process that activates or increases the activity of a cysteine-type endopeptidase involved in the apoptotic process.")
	(instanceOf
		[GK_160292]
		[GK_1996045])
	(name "positive regulation of cysteine-type endopeptidase activity involved in apoptotic process")
	(referenceDatabase [GK_1]))

([GK_160565] of GO_BiologicalProcess
	(_displayName "positive regulation of apoptotic process")
	(accession "0043065")
	(DB_ID 160565)
	(definition "Any process that activates or increases the frequency, rate or extent of cell death by apoptotic process.")
	(instanceOf
		[GK_139812]
		[GK_160227])
	(name "positive regulation of apoptotic process")
	(positivelyRegulate [GK_2273])
	(referenceDatabase [GK_1]))

([GK_161217] of GO_CellularComponent
	(_displayName "death-inducing signaling complex")
	(accession "0031264")
	(DB_ID 161217)
	(definition "A protein complex formed by the association of signaling proteins with a death receptor upon ligand binding. The complex includes procaspases and death domain-containing proteins in addition to the ligand-bound receptor.")
	(instanceOf
		[GK_159979]
		[GK_258155])
	(name "death-inducing signaling complex")
	(referenceDatabase [GK_1]))

([GK_163570] of Person
	(_displayName "Wernstedt, C")
	(DB_ID 163570)
	(firstname "Christier")
	(initial "C")
	(surname "Wernstedt"))

([GK_164487] of Taxon
	(_displayName "root")
	(DB_ID 164487)
	(name "root"))

([GK_165085] of InstanceEdit
	(_displayName "Gillespie, ME, 0000-00-00 00:00:00")
	(author [GK_73681])
	(dateTime "0000-00-00 00:00:00")
	(DB_ID 165085))

([GK_165094] of InstanceEdit
	(_displayName "Vaux, D, 0000-00-00 00:00:00")
	(author [GK_141456])
	(dateTime "0000-00-00 00:00:00")
	(DB_ID 165094))

([GK_167743] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Beta-2-microglobulin [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 167743)
	(endCoordinate 119)
	(name "Beta-2-microglobulin")
	(referenceEntity [GK_50591])
	(species [GK_48887])
	(stableIdentifier [GK_368685])
	(startCoordinate 21))

([GK_1687] of GO_MolecularFunction
	(_displayName "peptidase activity")
	(accession "0008233")
	(DB_ID 1687)
	(definition "Catalysis of the hydrolysis of a peptide bond. A peptide bond is a covalent bond formed when the carbon atom from the carboxyl group of one amino acid shares electrons with the nitrogen atom from the amino group of a second amino acid.")
	(ecNumber
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4"
		"3.4")
	(instanceOf [GK_450])
	(name "peptidase activity")
	(referenceDatabase [GK_1]))

([GK_171090] of Person
	(_displayName "Soutar, AK")
	(DB_ID 171090)
	(firstname "Anne K")
	(initial "AK")
	(surname "Soutar"))

([GK_174719] of EntityWithAccessionedSequence
	(_displayName "[Hsa] perlecan [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 174719)
	(endCoordinate 4391)
	(name
		"perlecan"
		"HSPG2")
	(referenceEntity [GK_61584])
	(species [GK_48887])
	(stableIdentifier [GK_366563])
	(startCoordinate 22))

([GK_178760] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'FASL:FAS R...")
	(DB_ID 178760)
	(text "At the beginning of this reaction, 1 molecule of 'FASL:FAS Receptor Trimer:FADD:pro-Caspase-8 DISC' is present. At the end of this reaction, 1 molecule of 'p10 subunit of Caspase 8', 1 molecule of 'p18 subunit of Caspase 8', and 1 molecule of 'FASL:FAS Receptor Trimer:FADD complex' are present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_178761] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'FASL', and...")
	(DB_ID 178761)
	(text "At the beginning of this reaction, 1 molecule of 'FASL', and 1 molecule of 'FAS Receptor' are present. At the end of this reaction, 1 molecule of 'FASL:FAS Receptor monomer' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_178762] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'FADD', and...")
	(DB_ID 178762)
	(text "At the beginning of this reaction, 1 molecule of 'FADD', and 1 molecule of 'FASL:FAS Receptor Trimer' are present. At the end of this reaction, 1 molecule of 'FASL:FAS Receptor Trimer:FADD complex' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_178763] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'Caspase-10...")
	(DB_ID 178763)
	(text "At the beginning of this reaction, 1 molecule of 'Caspase-10 precursor ', and 1 molecule of 'FASL:FAS Receptor Trimer:FADD complex' are present. At the end of this reaction, 1 molecule of 'FASL:FAS Receptor Trimer:FADD:pro-Caspase-10' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_178764] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'Caspase-8 ...")
	(DB_ID 178764)
	(text "At the beginning of this reaction, 1 molecule of 'Caspase-8 precursor ', and 1 molecule of 'FASL:FAS Receptor Trimer:FADD complex' are present. At the end of this reaction, 1 molecule of 'FASL:FAS Receptor Trimer:FADD:pro-Caspase-8 DISC' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_178769] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'p10 subuni...")
	(DB_ID 178769)
	(text "At the beginning of this reaction, 1 molecule of 'p10 subunit of Caspase 8', and 1 molecule of 'p18 subunit of Caspase 8' are present. At the end of this reaction, 1 molecule of 'Caspase-8 dimer' is present.<br><br> This reaction takes place in the 'cytosol'.<br>"))

([GK_179238] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'TNF-RI', a...")
	(DB_ID 179238)
	(text "At the beginning of this reaction, 1 molecule of 'TNF-RI', and 1 molecule of 'TNF-alpha' are present. At the end of this reaction, 1 molecule of 'TNF-alpha:TNF-R1 complex' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_179239] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'TRADD:TRAF...")
	(DB_ID 179239)
	(text "At the beginning of this reaction, 1 molecule of 'TRADD:TRAF2:RIP1:FADD:Capase-8 Complex' is present. At the end of this reaction, 1 molecule of 'TRAF2:TRADD:RIP1:FADD', 1 molecule of 'p10 subunit of Caspase 8', and 1 molecule of 'p18 subunit of Caspase 8' are present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_179240] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'TRAF2:TRAD...")
	(DB_ID 179240)
	(text "At the beginning of this reaction, 1 molecule of 'TRAF2:TRADD:RIP1:FADD', and 1 molecule of 'Caspase-8 precursor ' are present. At the end of this reaction, 1 molecule of 'TRADD:TRAF2:RIP1:FADD:Capase-8 Complex' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_179243] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'TRAIL rece...")
	(DB_ID 179243)
	(text "At the beginning of this reaction, 1 molecule of 'TRAIL receptor-2', and 1 molecule of 'TRAIL' are present. At the end of this reaction, 1 molecule of 'TRAIL receptor-2:TRAIL complex' is present.<br><br> This reaction takes place in the 'cell'.<br>"))

([GK_179244] of Summation
	(_displayName "At the beginning of this reaction, 1 molecule of 'TRAIL:TRAIes arising mainly in the mandible and commonly associated with an unerupted or embedded tooth. They are characterized by the presence of squamous-cell proliferation, calcification, and, notably, amyloid deposits.SIMILARITY Belongs to the ODAM family.")
	(DB_ID 240941)
	(description "recommendedName: Odontogenic ameloblast-associated protein  alternativeName: Apin ")
	(geneName
		"ODAM"
		"APIN")
	(identifier "A1E959")
	(isSequenceChanged TRUE)
	(keyword
		"Biomineralization"
		"Complete proteome"
		"Glycoprotein"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "ODAM")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"ODAM_HUMAN"
		"Q8WWE5"
		"Q9NWZ9")
	(sequenceLength 279)
	(species [GK_48887]))

([GK_25446] of GO_BiologicalProcess
	(_displayName "induction of apoptosis by extracellular signals")
	(accession "0008624")
	(DB_ID 25446)
	(definition "Any process induced by extracellular signals that directly activates any of the steps required for cell death by apoptosis.")
	(instanceOf [GK_6542])
	(name "induction of apoptosis by extracellular signals")
	(referenceDatabase [GK_1]))

([GK_25482] of GO_BiologicalProcess
	(_displayName "activation of pro-apoptotic gene products")
	(accession "0008633")
	(componentOf [GK_2273])
	(DB_ID 25482)
	(definition "The conversion of proteins that induce or sustain apoptosis to an active form.")
	(instanceOf [GK_160565])
	(name "activation of pro-apoptotic gene products")
	(referenceDatabase [GK_1]))

([GK_258123] of GO_BiologicalProcess
	(_displayName "biological regulation")
	(accession "0065007")
	(DB_ID 258123)
	(definition "Any process that modulates a measurable attribute of any biological process, quality or function.")
	(instanceOf [GK_106])
	(name "biological regulation")
	(referenceDatabase [GK_1]))

([GK_258147] of GO_CellularComponent
	(_displayName "cell part")
	(accession "0044464")
	(componentOf [GK_356])
	(DB_ID 258147)
	(definition "Any constituent part of a cell, the basic structural and functional unit of all organisms.")
	(instanceOf [GK_357])
	(name "cell part")
	(referenceDatabase [GK_1]))

([GK_258148] of GO_CellularComponent
	(_displayName "intracellular part")
	(accession "0044424")
	(componentOf [GK_354])
	(DB_ID 258148)
	(definition "Any constituent part of the living contents of a cell; the matter contained within (but not including) the plasma membrane, usually taken to exclude large vacuoles and masses of secretory or ingested material. In eukaryotes it includes the nucleus and cytoplasm.")
	(instanceOf [GK_258147])
	(name "intracellular part")
	(referenceDatabase [GK_1]))

([GK_258154] of GO_CellularComponent
	(_displayName "membrane part")
	(accession "0044425")
	(componentOf [GK_383187])
	(DB_ID 258154)
	(definition "Any constituent part of a membrane, a double layer of lipid molecules that encloses all cells, and, in eukaryotes, many organelles; may be a single or double lipid bilayer; also includes associated proteins.")
	(instanceOf [GK_357])
	(name "membrane part")
	(referenceDatabase [GK_1]))

([GK_258155] of GO_CellularComponent
	(_displayName "plasma membrane part")
	(accession "0044459")
	(componentOf [GK_876])
	(DB_ID 258155)
	(definition "Any constituent part of the plasma membrane, the membrane surrounding a cell that separates the cell from its external environment. It consists of a phospholipid bilayer and associated proteins.")
	(instanceOf [GK_258154])
	(name "plasma membrane part")
	(referenceDatabase [GK_1]))

([GK_258163] of GO_CellularComponent
	(_displayName "cytoplasmic part")
	(accession "0044444")
	(componentOf [GK_459])
	(DB_ID 258163)
	(definition "Any constituent part of the cytoplasm, all of the contents of a cell excluding the plasma membrane and nucleus, but including other subcellular structures.")
	(instanceOf [GK_258148])
	(name "cytoplasmic part")
	(referenceDatabase [GK_1]))

([GK_258170] of GO_CellularComponent
	(_displayName "macromolecular complex")
	(accession "0032991")
	(DB_ID 258170)
	(definition "A stable assembly of two or more macromolecules, i.e. proteins, nucleic acids, carbohydrates or lipids, in which the constituent parts function together.")
	(instanceOf [GK_357])
	(name "macromolecular complex")
	(referenceDatabase [GK_1]))

([GK_258234] of GO_BiologicalProcess
	(_displayName "regulation of molecular function")
	(accession "0065009")
	(DB_ID 258234)
	(definition "Any process that modulates the frequency, rate or extent of a molecular function, an elemental biological activity occurring at the molecular level, such as catalysis or binding.")
	(instanceOf [GK_258123])
	(name "regulation of molecular function")
	(referenceDatabase [GK_1])
	(regulate [GK_43]))

([GK_258858] of GO_BiologicalProcess
	(_displayName "regulation of peptidase activity")
	(accession "0052547")
	(DB_ID 258858)
	(definition "Any process that modulates the frequency, rate or extent of peptidase activity, the hydrolysis of peptide bonds within proteins.")
	(instanceOf [GK_160291])
	(name "regulation of peptidase activity")
	(referenceDatabase [GK_1])
	(regulate [GK_1687]))

([GK_258859] of GO_BiologicalProcess
	(_displayName "regulation of endopeptidase activity")
	(accession "0052548")
	(DB_ID 258859)
	(definition "Any process that modulates the frequency, rate or extent of endopeptidase activity, the endohydrolysis of peptide bonds within proteins.")
	(instanceOf [GK_258858])
	(name "regulation of endopeptidase activity")
	(referenceDatabase [GK_1])
	(regulate [GK_1793]))

([GK_264348] of Person
	(_displayName "Steiner, DF")
	(DB_ID 264348)
	(initial "DF")
	(surname "Steiner"))

([GK_264874] of ModifiedResidue
	(_displayName "half cystine at 109")
	(coordinate 109)
	(DB_ID 264874)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_264928] of ModifiedResidue
	(_displayName "half cystine at 95")
	(coordinate 95)
	(DB_ID 264928)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_264936] of ModifiedResidue
	(_displayName "half cystine at 96")
	(coordinate 96)
	(DB_ID 264936)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_265017] of ModifiedResidue
	(_displayName "half cystine at 43")
	(coordinate 43)
	(DB_ID 265017)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_265035] of ModifiedResidue
	(_displayName "half cystine at 100")
	(coordinate 100)
	(DB_ID 265035)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_265094] of ModifiedResidue
	(_displayName "half cystine at 31")
	(coordinate 31)
	(DB_ID 265094)
	(psiMod [GK_448182])
	(referenceSequence [GK_57415]))

([GK_265170] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin A Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 265170)
	(endCoordinate 110)
	(hasModifiedResidue
		[GK_265035]
		[GK_264874]
		[GK_264928]
		[GK_264936])
	(name "Insulin A Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_387943])
	(startCoordinate 90))

([GK_2741] of GO_MolecularFunction
	(_displayName "cysteine-type peptidase activity")
	(accession "0008234")
	(DB_ID 2741)
	(definition "Catalysis of the hydrolysis of peptide bonds in a polypeptide chain by a mechanism in which the sulfhydryl group of a cysteine residue at the active center acts as a nucleophile.")
	(instanceOf [GK_376448])
	(name "cysteine-type peptidase activity")
	(referenceDatabase [GK_1]))

([GK_29497] of DatabaseIdentifier
	(_displayName "COMPOUND:C00076")
	(DB_ID 29497)
	(identifier "C00076")
	(referenceDatabase [GK_6]))

([GK_30151] of DatabaseIdentifier
	(_displayName "COMPOUND:C00434")
	(DB_ID 30151)
	(identifier "C00434")
	(referenceDatabase [GK_6]))

([GK_3320] of GO_BiologicalProcess
	(_displayName "regulation of metabolic process")
	(accession "0019222")
	(DB_ID 3320)
	(definition "Any process that modulates the frequency, rate or extent of the chemical reactions and pathways within a cell or an organism.")
	(instanceOf [GK_139810])
	(name "regulation of metabolic process")
	(referenceDatabase [GK_1])
	(regulate [GK_504]))

([GK_354] of Compartment
	(_displayName "intracellular")
	(accession "0005622")
	(DB_ID 354)
	(definition "The living contents of a cell; the matter contained within (but not including) the plasma membrane, usually taken to exclude large vacuoles and masses of secretory or ingested material. In eukaryotes it includes the nucleus and cytoplasm.")
	(instanceOf [GK_258147])
	(name "intracellular")
	(referenceDatabase [GK_1]))

([GK_355446] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P68431 HIST1H3A recommendedName: Histone H3.1  alternativeName: Histone H3/a  alternativeName: Histone H3/b  alternativeName: Histone H3/c  alternativeName: Histone H3/d  alternativeName: Histone H3/f  alternativeName: Histone H3/h  alternativeName: Histone H3/i  alternativeName: Histone H3/j  alternativeName: Histone H3/k  alternativeName: Histone H3/l ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.DEVELOPMENTAL STAGE Expressed during S phase, then expression strongly decreases as cell division slows down during the process of differentiation.PTM Acetylation is generally linked to gene activation. Acetylation on Lys-10 (H3K9ac) impairs methylation at Arg-9 (H3R8me2s). Acetylation on Lys-19 (H3K18ac) and Lys-24 (H3K24ac) favors methylation at Arg-18 (H3R17me).PTM Citrullination at Arg-9 (H3R8ci) and/or Arg-18 (H3R17ci) by PADI4 impairs methylation and represses transcription.PTM Asymmetric dimethylation at Arg-18 (H3R17me2a) by CARM1 is linked to gene activation. Symmetric dimethylation at Arg-9 (H3R8me2s) by PRMT5 is linked to gene repression. Asymmetric dimethylation at Arg-3 (H3R2me2a) by PRMT6 is linked to gene repression and is mutually exclusive with H3 Lys-5 methylation (H3K4me2 and H3K4me3). H3R2me2a is present at the 3' of genes regardless of their transcription state and is enriched on inactive promoters, while it is absent on active promoters.PTM Methylation at Lys-5 (H3K4me), Lys-37 (H3K36me) and Lys-80 (H3K79me) are linked to gene activation. Methylation at Lys-5 (H3K4me) facilitates subsequent acetylation of H3 and H4. Methylation at Lys-80 (H3K79me) is associated with DNA double-strand break (DSB) responses and is a specific target for TP53BP1. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me) are linked to gene repression. Methylation at Lys-10 (H3K9me) is a specific target for HP1 proteins (CBX1, CBX3 and CBX5) and prevents subsequent phosphorylation at Ser-11 (H3S10ph) and acetylation of H3 and H4. Methylation at Lys-5 (H3K4me) and Lys-80 (H3K79me) require preliminary monoubiquitination of H2B at 'Lys-120'. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me) are enriched in inactive X chromosome chromatin.MISCELLANEOUS This histone is only present in mammals and is enriched in acetylation of Lys-15 and dimethylation of Lys-10 (H3K9me2).SIMILARITY Belongs to the histone H3 family.")
	(DB_ID 355446)
	(description "recommendedName: Histone H3.1  alternativeName: Histone H3/a  alternativeName: Histone H3/b  alternativeName: Histone H3/c  alternativeName: Histone H3/d  alternativeName: Histone H3/f  alternativeName: Histone H3/h  alternativeName: Histone H3/i  alternativeName: Histone H3/j  alternativeName: Histone H3/k  alternativeName: Histone H3/l ")
	(geneName
		"HIST1H3A"
		"H3FA"
		"</gene>"
		"<gene>"
		"HIST1H3B"
		"H3FL"
		"</gene>"
		"<gene>"
		"HIST1H3C"
		"H3FC"
		"</gene>"
		"<gene>"
		"HIST1H3D"
		"H3FB"
		"</gene>"
		"<gene>"
		"HIST1H3E"
		"H3FD"
		"</gene>"
		"<gene>"
		"HIST1H3F"
		"H3FI"
		"</gene>"
		"<gene>"
		"HIST1H3G"
		"H3FH"
		"</gene>"
		"<gene>"
		"HIST1H3H"
		"H3FK"
		"</gene>"
		"<gene>"
		"HIST1H3I"
		"H3FF"
		"</gene>"
		"<gene>"
		"HIST1H3J"
		"H3FJ")
	(identifier "P68431")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H3A")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H31_HUMAN"
		"A0PJT7"
		"A5PLR1"
		"P02295"
		"P02296"
		"P16106"
		"Q6ISV8"
		"Q6NWP8"
		"Q6NWP9"
		"Q6NXU4"
		"Q71DJ3"
		"Q93081")
	(sequenceLength 136)
	(species [GK_48887]))

([GK_355447] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q71DI3 HIST2H3A recommendedName: Histone H3.2  alternativeName: Histone H3/m  alternativeName: Histone H3/o ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA. During nucleosome assembly the chaperone ASF1A interacts with the histone H3-H4 heterodimer.DEVELOPMENTAL STAGE Expressed during S phase, then expression strongly decreases as cell division slows down during the process of differentiation.PTM Acetylation is generally linked to gene activation. Acetylation on Lys-10 (H3K9ac) impairs methylation at Arg-9 (H3R8me2s). Acetylation on Lys-19 (H3K18ac) and Lys-24 (H3K24ac) favors methylation at Arg-18 (H3R17me).PTM Citrullination at Arg-9 (H3R8ci) and/or Arg-18 (H3R17ci) by PADI4 impairs methylation and represses transcription.PTM Asymmetric dimethylation at Arg-18 (H3R17me2a) by CARM1 is linked to gene activation. Symmetric dimethylation at Arg-9 (H3R8me2s) by PRMT5 is linked to gene repression. Asymmetric dimethylation at Arg-3 (H3R2me2a) by PRMT6 is linked to gene repression and is mutually exclusive with H3 Lys-5 methylation (H3K4me2 and H3K4me3). H3R2me2a is present at the 3' of genes regardless of their transcription state and is enriched on inactive promoters, while it is absent on active promoters.PTM Methylation at Lys-5 (H3K4me), Lys-37 (H3K36me) and Lys-80 (H3K79me) are linked to gene activation. Methylation at Lys-5 (H3K4me) facilitates subsequent acetylation of H3 and H4. Methylation at Lys-80 (H3K79me) is associated with DNA double-strand break (DSB) responses and is a specific target for TP53BP1. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me) are linked to gene repression. Methylation at Lys-10 (H3K9me) is a specific target for HP1 proteins (CBX1, CBX3 and CBX5) and prevents subsequent phosphorylation at Ser-11 (H3S10ph) and acetylation of H3 and H4. Methylation at Lys-5 (H3K4me) and Lys-80 (H3K79me) require preliminary monoubiquitination of H2B at 'Lys-120'. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me) are enriched in inactive X chromosome chromatin.SIMILARITY Belongs to the histone H3 family.")
	(DB_ID 355447)
	(description "recommendedName: Histone H3.2  alternativeName: Histone H3/m  alternativeName: Histone H3/o ")
	(geneName
		"HIST2H3A"
		"</gene>"
		"<gene>"
		"HIST2H3C"
		"H3F2"
		"H3FM"
		"</gene>"
		"<gene>"
		"HIST2H3D")
	(identifier "Q71DI3")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Polymorphism"
		"Ubl conjugation")
	(name "HIST2H3A")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H32_HUMAN"
		"A2BDF6"
		"A6NFS4"
		"Q6B053")
	(sequenceLength 136)
	(species [GK_48887]))

([GK_355448] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P84243 H3F3A recommendedName: Histone H3.3 ")
	(checksum "1")
	(comment "DEVELOPMENTAL STAGE Expressed throughout the cell cycle independently of DNA synthesis.PTM Acetylation is generally linked to gene activation. Acetylation on Lys-10 (H3K9ac) impairs methylation at Arg-9 (H3R8me2s). Acetylation on Lys-19 (H3K18ac) and Lys-24 (H3K24ac) favors methylation at Arg-18 (H3R17me).PTM Citrullination at Arg-9 (H3R8ci) and/or Arg-18 (H3R17ci) by PADI4 impairs methylation and represses transcription.PTM Asymmetric dimethylation at Arg-18 (H3R17me2a) by CARM1 is linked to gene activation. Symmetric dimethylation at Arg-9 (H3R8me2s) by PRMT5 is linked to gene repression. Asymmetric dimethylation at Arg-3 (H3R2me2a) by PRMT6 is linked to gene repression and is mutually exclusive with H3 Lys-5 methylation (H3K4me2 and H3K4me3). H3R2me2a is present at the 3' of genes regardless of their transcription state and is enriched on inactive promoters, while it is absent on active promoters.PTM Specifically enriched in modifications associated with active chromatin such as methylation at Lys-5 (H3K4me), Lys-37 and Lys-80. Methylation at Lys-5 (H3K4me) facilitates subsequent acetylation of H3 and H4. Methylation at Lys-80 (H3K79me) is associated with DNA double-strand break (DSB) responses and is a specific target for TP53BP1. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me), which are linked to gene repression, are underrepresented. Methylation at Lys-10 (H3K9me) is a specific target for HP1 proteins (CBX1, CBX3 and CBX5) and prevents subsequent phosphorylation at Ser-11 (H3S10ph) and acetylation of H3 and H4. Methylation at Lys-5 (H3K4me) and Lys-80 (H3K79me) require preliminary monoubiquitination of H2B at 'Lys-120'. Methylation at Lys-10 (H3K9me) and Lys-28 (H3K27me) are enriched in inactive X chromosome chromatin.SIMILARITY Belongs to the histone H3 family.")
	(DB_ID 355448)
	(description "recommendedName: Histone H3.3 ")
	(geneName
		"H3F3A"
		"H3.3A"
		"H3F3"
		"PP781"
		"</gene>"
		"<gene>"
		"H3F3B"
		"H3.3B")
	(identifier "P84243")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "H3F3A")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H33_HUMAN"
		"P06351"
		"P33155"
		"Q5VV55"
		"Q5VV56"
		"Q66I33"
		"Q9V3W4")
	(sequenceLength 136)
	(species [GK_48887]))

([GK_355449] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P62805 HIST1H4A recommendedName: Histone H4 ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Acetylation at Lys-6 (H4K5ac), Lys-9 (H4K8ac), Lys-13 (H4K12ac) and Lys-17 (H4K16ac) occurs in coding regions of the genome but not in heterochromatin.PTM Citrullination at Arg-4 (H4R3ci) by PADI4 impairs methylation.PTM Monomethylation and asymmetric dimethylation at Arg-4 (H4R3me1 and H4R3me2a, respectively) by PRMT1 favors acetylation at Lys-9 (H4K8ac) and Lys-13 (H4K12ac). Demethylation is performed by JMJD6. Symmetric dimethylation on Arg-4 (H4R3me2s) by the PRDM1/PRMT5 complex may play a crucial role in the germ-cell lineage.SIMILARITY Belongs to the histone H4 family.")
	(DB_ID 355449)
	(description "recommendedName: Histone H4 ")
	(geneName
		"HIST1H4A"
		"H4/A"
		"H4FA"
		"</gene>"
		"<gene>"
		"HIST1H4B"
		"H4/I"
		"H4FI"
		"</gene>"
		"<gene>"
		"HIST1H4C"
		"H4/G"
		"H4FG"
		"</gene>"
		"<gene>"
		"HIST1H4D"
		"H4/B"
		"H4FB"
		"</gene>"
		"<gene>"
		"HIST1H4E"
		"H4/J"
		"H4FJ"
		"</gene>"
		"<gene>"
		"HIST1H4F"
		"H4/C"
		"H4FC"
		"</gene>"
		"<gene>"
		"HIST1H4H"
		"H4/H"
		"H4FH"
		"</gene>"
		"<gene>"
		"HIST1H4I"
		"H4/M"
		"H4FM"
		"</gene>"
		"<gene>"
		"HIST1H4J"
		"H4/E"
		"H4FE"
		"</gene>"
		"<gene>"
		"HIST1H4K"
		"H4/D"
		"H4FD"
		"</gene>"
		"<gene>"
		"HIST1H4L"
		"H4/K"
		"H4FK"
		"</gene>"
		"<gene>"
		"HIST2H4A"
		"H4/N"
		"H4F2"
		"H4FN"
		"HIST2H4"
		"</gene>"
		"<gene>"
		"HIST2H4B"
		"H4/O"
		"H4FO"
		"</gene>"
		"<gene>"
		"HIST4H4")
	(identifier "P62805")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Polymorphism"
		"Ubl conjugation")
	(name "HIST1H4A")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H4_HUMAN"
		"A2VCL0"
		"P02304"
		"P02305"
		"Q6DRA9"
		"Q6FGB8"
		"Q6NWP7")
	(sequenceLength 103)
	(species [GK_48887]))

([GK_356] of Compartment
	(_displayName "cell")
	(accession "0005623")
	(DB_ID 356)
	(definition "The basic structural and functional unit of all organisms. Includes the plasma membrane and any external encapsulating structures such as the cell wall and cell envelope.")
	(instanceOf [GK_357])
	(name "cell")
	(referenceDatabase [GK_1]))

([GK_357] of Compartment
	(_displayName "cellular_component")
	(accession "0005575")
	(DB_ID 357)
	(definition "The part of a cell or its extracellular environment in which a gene product is located. A gene product may be located in one or more parts of a cell and its location may be as specific as a particular macromolecular complex, that is, a stable, persistent association of macromolecules that function together.")
	(name "cellular_component")
	(referenceDatabase [GK_1]))

([GK_358192] of Person
	(_displayName "Robinson, CV")
	(DB_ID 358192)
	(initial "CV")
	(surname "Robinson"))

([GK_358238] of StableIdentifier
	(_displayName "REACT_1159.2")
	(DB_ID 358238)
	(identifier "REACT_1159")
	(identifierVersion "2"))

([GK_358269] of StableIdentifier
	(_displayName "REACT_1766.1")
	(DB_ID 358269)
	(identifier "REACT_1766")
	(identifierVersion "1"))

([GK_358282] of StableIdentifier
	(_displayName "REACT_1143.2")
	(DB_ID 358282)
	(identifier "REACT_1143")
	(identifierVersion "2"))

([GK_358384] of StableIdentifier
	(_displayName "REACT_832.2")
	(DB_ID 358384)
	(identifier "REACT_832")
	(identifierVersion "2"))

([GK_358527] of StableIdentifier
	(_displayName "REACT_2170.2")
	(DB_ID 358527)
	(identifier "REACT_2170")
	(identifierVersion "2"))

([GK_358712] of StableIdentifier
	(_displayName "REACT_1856.1")
	(DB_ID 358712)
	(identifier "REACT_1856")
	(identifierVersion "1"))

([GK_358827] of StableIdentifier
	(_displayName "REACT_402.1")
	(DB_ID 358827)
	(identifier "REACT_402")
	(identifierVersion "1"))

([GK_359034] of StableIdentifier
	(_displayName "REACT_1543.2")
	(DB_ID 359034)
	(identifier "REACT_1543")
	(identifierVersion "2"))

([GK_359070] of StableIdentifier
	(_displayName "REACT_279.2")
	(DB_ID 359070)
	(identifier "REACT_279")
	(identifierVersion "2"))

([GK_359435] of StableIdentifier
	(_displayName "REACT_1418.2")
	(DB_ID 359435)
	(identifier "REACT_1418")
	(identifierVersion "2"))

([GK_359726] of StableIdentifier
	(_displayName "REACT_606.2")
	(DB_ID 359726)
	(identifier "REACT_606")
	(identifierVersion "2"))

([GK_359831] of StableIdentifier
	(_displayName "REACT_663.2")
	(DB_ID 359831)
	(identifier "REACT_663")
	(identifierVersion "2"))

([GK_360111] of StableIdentifier
	(_displayName "REACT_1059.1")
	(DB_ID 360111)
	(identifier "REACT_1059")
	(identifierVersion "2"))

([GK_360371] of StableIdentifier
	(_displayName "REACT_737.2")
	(DB_ID 360371)
	(identifier "REACT_737")
	(identifierVersion "2"))

([GK_360533] of StableIdentifier
	(_displayName "REACT_2096.2")
	(DB_ID 360533)
	(identifier "REACT_2096")
	(identifierVersion "2"))

([GK_360537] of StableIdentifier
	(_displayName "REACT_1038.2")
	(DB_ID 360537)
	(identifier "REACT_1038")
	(identifierVersion "2"))

([GK_360947] of StableIdentifier
	(_displayName "REACT_900.1")
	(DB_ID 360947)
	(identifier "REACT_900")
	(identifierVersion "1"))

([GK_361043] of StableIdentifier
	(_displayName "REACT_961.2")
	(DB_ID 361043)
	(identifier "REACT_961")
	(identifierVersion "2"))

([GK_361068] of StableIdentifier
	(_displayName "REACT_2175.2")
	(DB_ID 361068)
	(identifier "REACT_2175")
	(identifierVersion "2"))

([GK_361140] of StableIdentifier
	(_displayName "REACT_1619.1")
	(DB_ID 361140)
	(identifier "REACT_1619")
	(identifierVersion "1"))

([GK_361228] of StableIdentifier
	(_displayName "REACT_1432.1")
	(DB_ID 361228)
	(identifier "REACT_1432")
	(identifierVersion "2"))

([GK_361795] of StableIdentifier
	(_displayName "REACT_1426.2")
	(DB_ID 361795)
	(identifier "REACT_1426")
	(identifierVersion "2"))

([GK_361815] of StableIdentifier
	(_displayName "REACT_1360.2")
	(DB_ID 361815)
	(identifier "REACT_1360")
	(identifierVersion "2"))

([GK_362003] of StableIdentifier
	(_displayName "REACT_2191.3")
	(DB_ID 362003)
	(identifier "REACT_2191")
	(identifierVersion "3"))

([GK_362011] of StableIdentifier
	(_displayName "REACT_1503.2")
	(DB_ID 362011)
	(identifier "REACT_1503")
	(identifierVersion "2"))

([GK_362019] of StableIdentifier
	(_displayName "REACT_1721.2")
	(DB_ID 362019)
	(identifier "REACT_1721")
	(identifierVersion "2"))

([GK_362216] of StableIdentifier
	(_displayName "REACT_4646.1")
	(DB_ID 362216)
	(identifier "REACT_4646")
	(identifierVersion "2"))

([GK_362769] of StableIdentifier
	(_displayName "REACT_2430.1")
	(DB_ID 362769)
	(identifier "REACT_2430")
	(identifierVersion "1"))

([GK_362980] of StableIdentifier
	(_displayName "REACT_4998.1")
	(DB_ID 362980)
	(identifier "REACT_4998")
	(identifierVersion "1"))

([GK_363728] of StableIdentifier
	(_displayName "REACT_5875.1")
	(DB_ID 363728)
	(identifier "REACT_5875")
	(identifierVersion "1"))

([GK_363774] of StableIdentifier
	(_displayName "REACT_3424.1")
	(DB_ID 363774)
	(identifier "REACT_3424")
	(identifierVersion "2"))

([GK_363887] of StableIdentifier
	(_displayName "REACT_5668.1")
	(DB_ID 363887)
	(identifier "REACT_5668")
	(identifierVersion "2"))

([GK_364006] of StableIdentifier
	(_displayName "REACT_5339.1")
	(DB_ID 364006)
	(identifier "REACT_5339")
	(identifierVersion "1"))

([GK_364329] of StableIdentifier
	(_displayName "REACT_4420.1")
	(DB_ID 364329)
	(identifier "REACT_4420")
	(identifierVersion "1"))

([GK_364838] of StableIdentifier
	(_displayName "REACT_3983.1")
	(DB_ID 364838)
	(identifier "REACT_3983")
	(identifierVersion "1"))

([GK_365034] of StableIdentifier
	(_displayName "REACT_5415.1")
	(DB_ID 365034)
	(identifier "REACT_5415")
	(identifierVersion "1"))

([GK_365494] of StableIdentifier
	(_displayName "REACT_5404.1")
	(DB_ID 365494)
	(identifier "REACT_5404")
	(identifierVersion "1"))

([GK_365522] of StableIdentifier
	(_displayName "REACT_3459.1")
	(DB_ID 365522)
	(identifier "REACT_3459")
	(identifierVersion "1"))

([GK_365546] of StableIdentifier
	(_displayName "REACT_5449.2")
	(DB_ID 365546)
	(identifier "REACT_5449")
	(identifierVersion "2"))

([GK_366061] of StableIdentifier
	(_displayName "REACT_4185.1")
	(DB_ID 366061)
	(identifier "REACT_4185")
	(identifierVersion "1"))

([GK_366444] of StableIdentifier
	(_displayName "REACT_4656.1")
	(DB_ID 366444)
	(identifier "REACT_4656")
	(identifierVersion "1"))

([GK_366491] of StableIdentifier
	(_displayName "REACT_4500.1")
	(DB_ID 366491)
	(identifier "REACT_4500")
	(identifierVersion "1"))

([GK_366563] of StableIdentifier
	(_displayName "REACT_7535.1")
	(DB_ID 366563)
	(identifier "REACT_7535")
	(identifierVersion "1"))

([GK_366902] of StableIdentifier
	(_displayName "REACT_3803.1")
	(DB_ID 366902)
	(identifier "REACT_3803")
	(identifierVersion "1"))

([GK_367393] of StableIdentifier
	(_displayName "REACT_4773.1")
	(DB_ID 367393)
	(identifier "REACT_4773")
	(identifierVersion "1"))

([GK_367488] of StableIdentifier
	(_displayName "REACT_5140.1")
	(DB_ID 367488)
	(identifier "REACT_5140")
	(identifierVersion "1"))

([GK_367733] of StableIdentifier
	(_displayName "REACT_3905.1")
	(DB_ID 367733)
	(identifier "REACT_3905")
	(identifierVersion "2"))

([GK_367761] of StableIdentifier
	(_displayName "REACT_2698.1")
	(DB_ID 367761)
	(identifier "REACT_2698")
	(identifierVersion "1"))

([GK_368490] of StableIdentifier
	(_displayName "REACT_4632.1")
	(DB_ID 368490)
	(identifier "REACT_4632")
	(identifierVersion "2"))

([GK_368665] of StableIdentifier
	(_displayName "REACT_5556.1")
	(DB_ID 368665)
	(identifier "REACT_5556")
	(identifierVersion "1"))

([GK_368685] of StableIdentifier
	(_displayName "REACT_11797.1")
	(DB_ID 368685)
	(identifier "REACT_11797")
	(identifierVersion "1"))

([GK_369343] of StableIdentifier
	(_displayName "REACT_4499.1")
	(DB_ID 369343)
	(identifier "REACT_4499")
	(identifierVersion "2"))

([GK_370163] of StableIdentifier
	(_displayName "REACT_3855.1")
	(DB_ID 370163)
	(identifier "REACT_3855")
	(identifierVersion "1"))

([GK_370192] of StableIdentifier
	(_displayName "REACT_4528.1")
	(DB_ID 370192)
	(identifier "REACT_4528")
	(identifierVersion "1"))

([GK_370748] of StableIdentifier
	(_displayName "REACT_4114.1")
	(DB_ID 370748)
	(identifier "REACT_4114")
	(identifierVersion "1"))

([GK_371020] of StableIdentifier
	(_displayName "REACT_5688.1")
	(DB_ID 371020)
	(identifier "REACT_5688")
	(identifierVersion "1"))

([GK_371402] of StableIdentifier
	(_displayName "REACT_2659.1")
	(DB_ID 371402)
	(identifier "REACT_2659")
	(identifierVersion "2"))

([GK_371450] of StableIdentifier
	(_displayName "REACT_2540.1")
	(DB_ID 371450)
	(identifier "REACT_2540")
	(identifierVersion "1"))

([GK_371770] of StableIdentifier
	(_displayName "REACT_4466.1")
	(DB_ID 371770)
	(identifier "REACT_4466")
	(identifierVersion "1"))

([GK_374884] of Person
	(_displayName "Westermark, GT")
	(DB_ID 374884)
	(initial "GT")
	(surname "Westermark"))

([GK_375875] of Person
	(_displayName "Tsutsumi, Y")
	(DB_ID 375875)
	(initial "Y")
	(surname "Tsutsumi"))

([GK_376448] of GO_MolecularFunction
	(_displayName "peptidase activity, acting on L-amino acid peptides")
	(accession "0070011")
	(DB_ID 376448)
	(definition "Catalysis of the hydrolysis of peptide bonds formed between L-amino acids.")
	(instanceOf [GK_1687])
	(name "peptidase activity, acting on L-amino acid peptides")
	(referenceDatabase [GK_1]))

([GK_383187] of Compartment
	(_displayName "membrane")
	(accession "0016020")
	(DB_ID 383187)
	(definition "Double layer of lipid molecules that encloses all cells, and, in eukaryotes, many organelles; may be a single or double lipid bilayer; also includes associated proteins.")
	(instanceOf [GK_357])
	(name "membrane")
	(referenceDatabase [GK_1]))

([GK_386948] of InstanceEdit
	(_displayName "Williams, MG, 2007-07-11 16:49:12")
	(author [GK_205591])
	(dateTime "2007-07-11 16:49:12")
	(DB_ID 386948))

([GK_386956] of InstanceEdit
	(_displayName "Silverman, N, Lemaitre, B, 2008-06-20 10:21:55")
	(author
		[GK_207774]
		[GK_207144])
	(dateTime "2008-06-20 10:21:55")
	(DB_ID 386956))

([GK_387943] of StableIdentifier
	(_displayName "REACT_15682.1")
	(DB_ID 387943)
	(identifier "REACT_15682")
	(identifierVersion "1"))

([GK_388867] of Person
	(_displayName "Polak, JM")
	(DB_ID 388867)
	(initial "JM")
	(surname "Polak"))

([GK_391309] of Person
	(_displayName "Jupe, S")
	(DB_ID 391309)
	(eMailAddress "sjupe@ebi.ac.uk")
	(firstname "Steve")
	(initial "S")
	(surname "Jupe"))

([GK_397172] of StableIdentifier
	(_displayName "REACT_16281.1")
	(DB_ID 397172)
	(identifier "REACT_16281")
	(identifierVersion "1"))

([GK_397296] of StableIdentifier
	(_displayName "REACT_16405.1")
	(DB_ID 397296)
	(identifier "REACT_16405")
	(identifierVersion "1"))

([GK_397681] of StableIdentifier
	(_displayName "REACT_16790.1")
	(DB_ID 397681)
	(identifier "REACT_16790")
	(identifierVersion "1"))

([GK_397759] of StableIdentifier
	(_displayName "REACT_16868.1")
	(DB_ID 397759)
	(identifier "REACT_16868")
	(identifierVersion "1"))

([GK_419781] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Calcitonin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 419781)
	(endCoordinate 116)
	(name
		"Calcitonin"
		"CALCA"
		"CALC_HUMAN"
		"CALCA")
	(referenceEntity [GK_144921])
	(species [GK_48887])
	(stableIdentifier [GK_1105998])
	(startCoordinate 85))

([GK_419837] of Person
	(_displayName "Lorenz, B")
	(DB_ID 419837)
	(initial "B")
	(surname "Lorenz"))

([GK_420066] of Person
	(_displayName "Sanke, T")
	(DB_ID 420066)
	(initial "T")
	(surname "Sanke"))

([GK_420076] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Amylin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 420076)
	(endCoordinate 70)
	(name
		"Amylin"
		"Islet amyloid polypeptide"
		"IAPP"
		"IAPP_HUMAN"
		"IAPP")
	(referenceEntity [GK_56978])
	(species [GK_48887])
	(stableIdentifier [GK_1111661])
	(startCoordinate 34))

([GK_422582] of GO_BiologicalProcess
	(_displayName "regulation of cell death")
	(accession "0010941")
	(DB_ID 422582)
	(definition "Any process that modulates the rate or frequency of cell death. Cell death is the specific activation or halting of processes within a cell so that its vital functions markedly cease, rather than simply deteriorating gradually over time, which culminates in cell death.")
	(instanceOf [GK_139809])
	(name "regulation of cell death")
	(referenceDatabase [GK_1])
	(regulate [GK_2275]))

([GK_422583] of GO_BiologicalProcess
	(_displayName "positive regulation of cell death")
	(accession "0010942")
	(DB_ID 422583)
	(definition "Any process that increases the rate or frequency of cell death. Cell death is the specific activation or halting of processes within a cell so that its vital functions markedly cease, rather than simply deteriorating gradually over time, which culminates in cell death.")
	(instanceOf
		[GK_422582]
		[GK_160064])
	(name "positive regulation of cell death")
	(positivelyRegulate [GK_2275])
	(referenceDatabase [GK_1]))

([GK_422587] of GO_BiologicalProcess
	(_displayName "positive regulation of molecular function")
	(accession "0044093")
	(DB_ID 422587)
	(definition "Any process that activates or increases the rate or extent of a molecular function, an elemental biological activity occurring at the molecular level, such as catalysis or binding.")
	(instanceOf [GK_258234])
	(name "positive regulation of molecular function")
	(positivelyRegulate [GK_43])
	(referenceDatabase [GK_1]))

([GK_422633] of GO_BiologicalProcess
	(_displayName "positive regulation of peptidase activity")
	(accession "0010952")
	(DB_ID 422633)
	(definition "Any process that increases the frequency, rate or extent of peptidase activity, the hydrolysis of peptide bonds within proteins.")
	(instanceOf
		[GK_160293]
		[GK_258858])
	(name "positive regulation of peptidase activity")
	(positivelyRegulate [GK_1687])
	(referenceDatabase [GK_1]))

([GK_423068] of GO_BiologicalProcess
	(_displayName "positive regulation of endopeptidase activity")
	(accession "0010950")
	(DB_ID 423068)
	(definition "Any process that increases the frequency, rate or extent of endopeptidase activity, the endohydrolysis of peptide bonds within proteins.")
	(instanceOf
		[GK_422633]
		[GK_258859])
	(name "positive regulation of endopeptidase activity")
	(positivelyRegulate [GK_1793])
	(referenceDatabase [GK_1]))

([GK_428598] of Person
	(_displayName "Paul, SM")
	(DB_ID 428598)
	(initial "SM")
	(surname "Paul"))

([GK_429341] of DatabaseIdentifier
	(_displayName "COMPOUND:D03250")
	(DB_ID 429341)
	(identifier "D03250")
	(referenceDatabase [GK_6]))

([GK_429343] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin_Detemir B Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429343)
	(endCoordinate 53)
	(hasModifiedResidue
		[GK_265094]
		[GK_265017]
		[GK_429398])
	(name "Insulin_Detemir B Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1358276])
	(startCoordinate 25))

([GK_429344] of ReplacedResidue
	(_displayName "L-lysine 53 replaced with L-proline")
	(coordinate 53)
	(DB_ID 429344)
	(psiMod
		[GK_611065]
		[GK_611069])
	(referenceSequence [GK_57415]))

([GK_429345] of Person
	(_displayName "Hirsch, IB")
	(DB_ID 429345)
	(initial "IB")
	(surname "Hirsch"))

([GK_429347] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin Glargine B Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429347)
	(endCoordinate 56)
	(hasModifiedResidue
		[GK_265094]
		[GK_265017]
		[GK_429376])
	(name "Insulin Glargine B Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1358234])
	(startCoordinate 25))

([GK_429348] of Complex
	(_displayName "[Hsa] Insulin_Glargine [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_429341])
	(DB_ID 429348)
	(hasComponent
		[GK_429347]
		[GK_429369])
	(name "Insulin_Glargine")
	(species [GK_48887])
	(stableIdentifier [GK_1358602]))

([GK_429349] of Complex
	(_displayName "[Hsa] Insulin_Detemir(Levemir) [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_429388])
	(DB_ID 429349)
	(hasComponent
		[GK_265170]
		[GK_429343])
	(name "Insulin_Detemir(Levemir)")
	(species [GK_48887])
	(stableIdentifier [GK_1358413]))

([GK_429352] of Complex
	(_displayName "[Hsa] Insulin Aspart (Novolog) [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_429381])
	(DB_ID 429352)
	(hasComponent
		[GK_265170]
		[GK_429393])
	(name "Insulin Aspart (Novolog)")
	(species [GK_48887])
	(stableIdentifier [GK_1357816]))

([GK_429361] of ReplacedResidue
	(_displayName "L-proline 52 replaced with L-aspartic acid")
	(coordinate 52)
	(DB_ID 429361)
	(psiMod
		[GK_611072]
		[GK_611070])
	(referenceSequence [GK_57415]))

([GK_429362] of ReplacedResidue
	(_displayName "L-asparagine 110 replaced with glycine")
	(coordinate 110)
	(DB_ID 429362)
	(psiMod
		[GK_611064]
		[GK_611068])
	(referenceSequence [GK_57415]))

([GK_429369] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin Glargine A Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429369)
	(endCoordinate 110)
	(hasModifiedResidue
		[GK_265035]
		[GK_264874]
		[GK_264928]
		[GK_264936]
		[GK_429362])
	(name "Insulin Glargine A Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1357824])
	(startCoordinate 90))

([GK_429372] of LiteratureReference
	(_displayName "Insulin analogues")
	(author [GK_429345])
	(DB_ID 429372)
	(journal "N Engl J Med")
	(pages "174-83")
	(pubMedIdentifier 15647580)
	(title "Insulin analogues")
	(volume 352)
	(year 2005))

([GK_429374] of ReplacedResidue
	(_displayName "L-proline 52 replaced with L-lysine")
	(coordinate 52)
	(DB_ID 429374)
	(psiMod
		[GK_611072]
		[GK_611062])
	(referenceSequence [GK_57415]))

([GK_429376] of ReplacedResidue
	(_displayName "L-threonine 54 replaced with L-threonine - L-arginine - L-arginine")
	(coordinate 54)
	(DB_ID 429376)
	(psiMod
		[GK_611087]
		[GK_611082]
		[GK_611066]
		[GK_611066])
	(referenceSequence [GK_57415]))

([GK_429381] of DatabaseIdentifier
	(_displayName "COMPOUND:D04475")
	(DB_ID 429381)
	(identifier "D04475")
	(referenceDatabase [GK_6]))

([GK_429384] of Complex
	(_displayName "[Hsa] Insulin_Humalog(Lispro) [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_429391])
	(DB_ID 429384)
	(hasComponent
		[GK_265170]
		[GK_429397])
	(name "Insulin_Humalog(Lispro)")
	(species [GK_48887])
	(stableIdentifier [GK_1358519]))

([GK_429388] of DatabaseIdentifier
	(_displayName "COMPOUND:D04539")
	(DB_ID 429388)
	(identifier "D04539")
	(referenceDatabase [GK_6]))

([GK_429391] of DatabaseIdentifier
	(_displayName "COMPOUND:D04477")
	(DB_ID 429391)
	(identifier "D04477")
	(referenceDatabase [GK_6]))

([GK_429393] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin Aspart B Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429393)
	(endCoordinate 54)
	(hasModifiedResidue
		[GK_265094]
		[GK_265017]
		[GK_429361])
	(name "Insulin Aspart B Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1357978])
	(startCoordinate 25))

([GK_429397] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin Humalog B Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429397)
	(endCoordinate 54)
	(hasModifiedResidue
		[GK_265094]
		[GK_265017]
		[GK_429374]
		[GK_429344])
	(name "Insulin Humalog B Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1357751])
	(startCoordinate 25))

([GK_429398] of ModifiedResidue
	(_displayName "N6-myristoyl-L-lysine at 53")
	(coordinate 53)
	(DB_ID 429398)
	(psiMod [GK_448179])
	(referenceSequence [GK_57415]))

([GK_429407] of DefinedSet
	(_displayName "[Hsa] Human Insulin Analogues [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429407)
	(hasMember
		[GK_429348]
		[GK_429384]
		[GK_429349]
		[GK_429352]
		[GK_429472])
	(literatureReference [GK_429372])
	(name "Human Insulin Analogues")
	(species [GK_48887])
	(stableIdentifier [GK_1358336]))

([GK_429461] of DatabaseIdentifier
	(_displayName "COMPOUND:D04540")
	(DB_ID 429461)
	(identifier "D04540")
	(referenceDatabase [GK_6]))

([GK_429462] of ReplacedResidue
	(_displayName "L-asparagine 27 replaced with L-lysine")
	(coordinate 27)
	(DB_ID 429462)
	(psiMod
		[GK_611064]
		[GK_611062])
	(referenceSequence [GK_57415]))

([GK_429463] of ReplacedResidue
	(_displayName "L-lysine 53 replaced with L-glutamic acid")
	(coordinate 53)
	(DB_ID 429463)
	(psiMod
		[GK_611065]
		[GK_611067])
	(referenceSequence [GK_57415]))

([GK_429464] of Person
	(_displayName "Becker, RH")
	(DB_ID 429464)
	(initial "RH")
	(surname "Becker"))

([GK_429465] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Insulin Glulisine B Chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 429465)
	(endCoordinate 54)
	(hasModifiedResidue
		[GK_265094]
		[GK_265017]
		[GK_429463]
		[GK_429462])
	(name "Insulin Glulisine B Chain")
	(referenceEntity [GK_57415])
	(species [GK_48887])
	(stableIdentifier [GK_1358212])
	(startCoordinate 25))

([GK_429466] of Person
	(_displayName "Plosker, GL")
	(DB_ID 429466)
	(initial "GL")
	(surname "Plosker"))

([GK_429467] of Person
	(_displayName "Frick, AD")
	(DB_ID 429467)
	(initial "AD")
	(surname "Frick"))

([GK_429468] of Summation
	(_displayName "Insulin Glulisine, a fast acting analogue of human insulin, ...")
	(DB_ID 429468)
	(text "Insulin Glulisine, a fast acting analogue of human insulin, that has a faster onset of action and shorter duration of action than regular human insulin (RHI) in patients with type 1 or 2 diabetes mellitus"))

([GK_429470] of LiteratureReference
	(_displayName "Clinical pharmacokinetics and pharmacodynamics of insulin glulisine")
	(author
		[GK_429464]
		[GK_429467])
	(DB_ID 429470)
	(journal "Clin Pharmacokinet")
	(pages "7-20")
	(pubMedIdentifier 18076215)
	(title "Clinical pharmacokinetics and pharmacodynamics of insulin glulisine")
	(volume 47)
	(year 2008))

([GK_429471] of Person
	(_displayName "Garnock-Jones, KP")
	(DB_ID 429471)
	(initial "KP")
	(surname "Garnock-Jones"))

([GK_429472] of Complex
	(_displayName "[Hsa] Insulin Glulisine (Apidra) [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_429461])
	(DB_ID 429472)
	(hasComponent
		[GK_265170]
		[GK_429465])
	(literatureReference
		[GK_429470]
		[GK_429473])
	(name "Insulin Glulisine (Apidra)")
	(species [GK_48887])
	(stableIdentifier [GK_1358370])
	(summation [GK_429468]))

([GK_429473] of LiteratureReference
	(_displayName "Insulin glulisine: a review of its use in the management of diabetes mellitus")
	(author
		[GK_429471]
		[GK_429466])
	(DB_ID 429473)
	(journal "Drugs")
	(pages "1035-57")
	(pubMedIdentifier 19496630)
	(title "Insulin glulisine: a review of its use in the management of diabetes mellitus")
	(volume 69)
	(year 2009))

([GK_43] of GO_MolecularFunction
	(_displayName "molecular_function")
	(accession "0003674")
	(DB_ID 43)
	(definition "Elemental activities, such as catalysis or binding, describing the actions of a gene product at the molecular level. A given gene product may exhibit one or more molecular functions.")
	(name "molecular_function")
	(referenceDatabase [GK_1]))

([GK_43124] of Complex
	(_displayName "[Hsa] FASL:FAS Receptor Trimer:FADD complex [plasma membrane]")
	(compartment [GK_876])
	(crossReference [GK_43125])
	(DB_ID 43124)
	(hasComponent
		[GK_76195]
		[GK_54639])
	(name "FASL:FAS Receptor Trimer:FADD complex")
	(species [GK_48887])
	(stableIdentifier [GK_366491]))

([GK_43125] of DatabaseIdentifier
	(_displayName "COMPOUND:C08698")
	(DB_ID 43125)
	(identifier "C08698")
	(referenceDatabase [GK_6]))

([GK_4344] of GO_MolecularFunction
	(_displayName "cysteine-type endopeptidase activity")
	(accession "0004197")
	(DB_ID 4344)
	(definition "Catalysis of the hydrolysis of internal, alpha-peptide bonds in a polypeptide chain by a mechanism in which the sulfhydryl group of a cysteine residue at the active center acts as a nucleophile.")
	(ecNumber
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22"
		"3.4.22")
	(instanceOf
		[GK_1793]
		[GK_2741])
	(name "cysteine-type endopeptidase activity")
	(referenceDatabase [GK_1]))

([GK_437238] of Person
	(_displayName "Aigner, S")
	(DB_ID 437238)
	(initial "S")
	(surname "Aigner"))

([GK_437354] of ReferenceDatabase
	(_displayName "MOD")
	(accessUrl "http://www.ebi.ac.uk/ontology-lookup/?termId=MOD:###ID###")
	(DB_ID 437354)
	(name
		"MOD"
		"PSI-MOD")
	(url "http://www.ebi.ac.uk/ontology-lookup/browse.do?ontName=MOD"))

([GK_445564] of Person
	(_displayName "Takahashi, N")
	(DB_ID 445564)
	(initial "N")
	(surname "Takahashi"))

([GK_448179] of PsiMod
	(_displayName "N6-myristoyl-L-lysine [MOD:00087]")
	(DB_ID 448179)
	(definition "A protein modification that effectively converts an L-lysine residue to N6-myristoyl-L-lysine.")
	(identifier "00087")
	(name "N6-myristoyl-L-lysine")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-amino-6-(tetradecanoylamino)hexanoic acid"
		"N6-myristoyl lysine"
		"N6MyrLys"
		"N6-myristoylated L-lysine"
		"Myristoylation"
		"Myristoyl"))

([GK_448182] of PsiMod
	(_displayName "half cystine [MOD:00798]")
	(DB_ID 448182)
	(definition "A protein modification that can be regarded as effectively either one half of a cystine cross-link, or a cysteine residue with one hydrogen atom or proton removed.")
	(identifier "00798")
	(name "half cystine")
	(referenceDatabase [GK_437354])
	(synonym
		"Half of a disulfide bridge"
		"Dehydro"))

([GK_450] of GO_MolecularFunction
	(_displayName "hydrolase activity")
	(accession "0016787")
	(DB_ID 450)
	(definition "Catalysis of the hydrolysis of various bonds, e.g. C-O, C-N, C-C, phosphoric anhydride bonds, etc. Hydrolase is the systematic name for any enzyme of EC class 3.")
	(ecNumber
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3"
		"3")
	(instanceOf [GK_97])
	(name "hydrolase activity")
	(referenceDatabase [GK_1]))

([GK_452587] of Person
	(_displayName "Betsholtz, C")
	(DB_ID 452587)
	(initial "C")
	(surname "Betsholtz"))

([GK_459] of Compartment
	(_displayName "cytoplasm")
	(accession "0005737")
	(DB_ID 459)
	(definition "All of the contents of a cell excluding the plasma membrane and nucleus, but including other subcellular structures.")
	(instanceOf [GK_258148])
	(name "cytoplasm")
	(referenceDatabase [GK_1]))

([GK_469669] of Person
	(_displayName "Gilbey, SG")
	(DB_ID 469669)
	(initial "SG")
	(surname "Gilbey"))

([GK_480491] of Person
	(_displayName "Heinzmann, C")
	(DB_ID 480491)
	(initial "C")
	(surname "Heinzmann"))

([GK_48887] of Species
	(_displayName "Homo sapiens")
	(crossReference [GK_72938])
	(DB_ID 48887)
	(name
		"Homo sapiens"
		"H. sapiens"
		"Hs"
		"human"
		"man")
	(superTaxon [GK_72939]))

([GK_49984] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01160 NPPA recommendedName: Natriuretic peptides A  alternativeName: CDD-ANF  alternativeName: Prepronatriodilatin  component recommendedName: Cardiodilatin-related peptide shortName:CDP  /component component recommendedName: Atrial natriuretic factor shortName:ANF  alternativeName: Atrial natriuretic peptide shortName:ANP  /component")
	(checksum "1")
	(comment "PTM Cleaved by CORIN upon secretion to produce the functional hormone.POLYMORPHISM There are two different prepronatriodilatin alleles. One codes for 2 Arg residues at the C-terminus that are cleaved to form the mature peptide, while the other ends in a termination codon immediately after the last codon of the mature peptide.SIMILARITY Belongs to the natriuretic peptide family.")
	(DB_ID 49984)
	(description "recommendedName: Natriuretic peptides A  alternativeName: CDD-ANF  alternativeName: Prepronatriodilatin  component recommendedName: Cardiodilatin-related peptide shortName:CDP  /component component recommendedName: Atrial natriuretic factor shortName:ANF  alternativeName: Atrial natriuretic peptide shortName:ANP  /component")
	(geneName
		"NPPA"
		"ANP"
		"PND")
	(identifier "P01160")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Atrial fibrillation"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Hormone"
		"Polymorphism"
		"Secreted"
		"Signal"
		"Vasoactive")
	(name "NPPA")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"ANF_HUMAN"
		"Q13766"
		"Q5JZE1")
	(sequenceLength 153)
	(species [GK_48887]))

([GK_500144] of Person
	(_displayName "Baker, D")
	(DB_ID 500144)
	(firstname "David")
	(initial "D")
	(surname "Baker"))

([GK_500361] of Person
	(_displayName "Peng, S")
	(DB_ID 500361)
	(initial "S")
	(surname "Peng"))

([GK_50094] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02647 APOA1 recommendedName: Apolipoprotein A-I shortName:Apo-AI shortName:ApoA-I  alternativeName: Apolipoprotein A1  component recommendedName: Apolipoprotein A-I(1-242)  /component")
	(checksum "1")
	(comment "PTM Phosphorylation sites are present in the extracelllular medium.SIMILARITY Belongs to the apolipoprotein A1/A4/E family.")
	(DB_ID 50094)
	(description "recommendedName: Apolipoprotein A-I shortName:Apo-AI shortName:ApoA-I  alternativeName: Apolipoprotein A1  component recommendedName: Apolipoprotein A-I(1-242)  /component")
	(geneName "APOA1")
	(identifier "P02647")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amyloid"
		"Amyloidosis"
		"Atherosclerosis"
		"Cholesterol metabolism"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Glycation"
		"Glycoprotein"
		"HDL"
		"Lipid metabolism"
		"Lipid transport"
		"Lipoprotein"
		"Neuropathy"
		"Palmitate"
		"Phosphoprotein"
		"Polymorphism"
		"Repeat"
		"Secreted"
		"Signal"
		"Steroid metabolism"
		"Transport")
	(name "APOA1")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"APOA1_HUMAN"
		"A8K866"
		"Q6LDN9"
		"Q6Q785"
		"Q9UCS8"
		"Q9UCT8")
	(sequenceLength 267)
	(species [GK_48887]))

([GK_50098] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P06727 APOA4 recommendedName: Apolipoprotein A-IV shortName:Apo-AIV shortName:ApoA-IV  alternativeName: Apolipoprotein A4 ")
	(checksum "1")
	(comment "FUNCTION May have a role in chylomicrons and VLDL secretion and catabolism. Required for efficient activation of lipoprotein lipase by ApoC-II; potent activator of LCAT. Apoa-IV is a major component of HDL and chylomicrons.DOMAIN Nine of the thirteen 22-amino acid tandem repeats (each 22-mer is actually a tandem array of two, A and B, related 11-mers) occurring in this sequence are predicted to be highly alpha-helical, and many of these helices are amphipathic. They may therefore serve as lipid-binding domains with lecithin:cholesterol acyltransferase (LCAT) activating abilities.PTM Phosphorylation sites are present in the extracelllular medium.POLYMORPHISM Eight alleles have been characterized (APOA-IV*0 to APOA-IV*7). APOA-IV*1 is the major allele (90%), APOA-IV*2 is also common (8%), the others are rare alleles. The sequence shown represents allele APOA-IV*1.SIMILARITY Belongs to the apolipoprotein A1/A4/E family.")
	(DB_ID 50098)
	(description "recommendedName: Apolipoprotein A-IV shortName:Apo-AIV shortName:ApoA-IV  alternativeName: Apolipoprotein A4 ")
	(geneName "APOA4")
	(identifier "P06727")
	(isSequenceChanged TRUE)
	(keyword
		"Chylomicron"
		"Complete proteome"
		"HDL"
		"Lipid transport"
		"Phosphoprotein"
		"Polymorphism"
		"Repeat"
		"Secreted"
		"Signal"
		"Transport")
	(name "APOA4")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"APOA4_HUMAN"
		"A8MSL6"
		"Q14CW8"
		"Q6Q787")
	(sequenceLength 396)
	(species [GK_48887]))

([GK_504] of GO_BiologicalProcess
	(_displayName "metabolic process")
	(accession "0008152")
	(DB_ID 504)
	(definition "The chemical reactions and pathways, including anabolism and catabolism, by which living organisms transform chemical substances. Metabolic processes typically transform small molecules, but also include macromolecular processes such as DNA repair and replication, and protein synthesis and degradation.")
	(instanceOf [GK_106])
	(name "metabolic process")
	(referenceDatabase [GK_1]))

([GK_50591] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P61769 B2M recommendedName: Beta-2-microglobulin  component recommendedName: Beta-2-microglobulin form pI 5.3  /component")
	(checksum "1")
	(comment "FUNCTION Component of the class I major histocompatibility complex (MHC). Involved in the presentation of peptide antigens to the immune system.PTM Glycation of Ile-21 is observed in long-term hemodialysis patients.SIMILARITY Belongs to the beta-2-microglobulin family.SIMILARITY Contains 1 Ig-like C1-type (immunoglobulin-like) domain.")
	(DB_ID 50591)
	(description "recommendedName: Beta-2-microglobulin  component recommendedName: Beta-2-microglobulin form pI 5.3  /component")
	(geneName
		"B2M"
		"CDABP0092"
		"HDCMA22P")
	(identifier "P61769")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amyloid"
		"Amyloidosis"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycation"
		"Glycoprotein"
		"Immunity"
		"Immunoglobulin domain"
		"MHC I"
		"Pyrrolidone carboxylic acid"
		"Secreted"
		"Signal")
	(name "B2M")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"B2MG_HUMAN"
		"P01884"
		"Q540F8"
		"Q6IAT8"
		"Q9UCK0"
		"Q9UD48"
		"Q9UDF4")
	(sequenceLength 119)
	(species [GK_48887]))

([GK_50810] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q15582 TGFBI recommendedName: Transforming growth factor-beta-induced protein ig-h3 shortName:Beta ig-h3  alternativeName: Kerato-epithelin  alternativeName: RGD-containing collagen-associated protein shortName:RGD-CAP  alternativeName: RGD-containing collagen-associated protein shortName:RGD-CAP ")
	(checksum "1")
	(comment "FUNCTION Binds to type I, II, and IV collagens. This adhesion protein may play an important role in cell-collagen interactions. In cartilage, may be involved in endochondral bone formation.INDUCTION By TGFB1.DISEASE Defects in TGFBI are the cause of corneal dystrophy lattice type 1 (CDL1) [MIM:122200]. Inheritance is autosomal dominant.DISEASE Defects in TGFBI are a cause of corneal dystrophy Thiel-Behnke type (CDTB) [MIM:602082]; also known as corneal dystrophy of Bowman layer type 2 (CDB2).DISEASE Defects in TGFBI are the cause of Avellino corneal dystrophy (ACD) [MIM:607541]. ACD could be considered a variant of granular dystrophy with a significant amyloidogenic tendency. Inheritance is autosomal dominant.SIMILARITY Contains 1 EMI domain.SIMILARITY Contains 4 FAS1 domains.")
	(DB_ID 50810)
	(description "recommendedName: Transforming growth factor-beta-induced protein ig-h3 shortName:Beta ig-h3  alternativeName: Kerato-epithelin  alternativeName: RGD-containing collagen-associated protein shortName:RGD-CAP  alternativeName: RGD-containing collagen-associated protein shortName:RGD-CAP ")
	(geneName
		"TGFBI"
		"BIGH3")
	(identifier "Q15582")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amyloid"
		"Cell adhesion"
		"Complete proteome"
		"Disease mutation"
		"Disulfide bond"
		"Extracellular matrix"
		"Gamma-carboxyglutamic acid"
		"Polymorphism"
		"Repeat"
		"Secreted"
		"Sensory transduction"
		"Signal"
		"Vision")
	(name "TGFBI")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"BGH3_HUMAN"
		"D3DQB1"
		"O14471"
		"O14472"
		"O14476"
		"O43216"
		"O43217"
		"O43218"
		"O43219"
		"Q53XM1")
	(sequenceLength 683)
	(species [GK_48887]))

([GK_517749] of Person
	(_displayName "Hudson, J")
	(DB_ID 517749)
	(initial "J")
	(surname "Hudson"))

([GK_53331] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01034 CST3 recommendedName: Cystatin-C  alternativeName: Cystatin-3  alternativeName: Gamma-trace  alternativeName: Neuroendocrine basic polypeptide  alternativeName: Post-gamma-globulin ")
	(checksum "1")
	(comment "FUNCTION As an inhibitor of cysteine proteinases, this protein is thought to serve an important physiological role as a local regulator of this enzyme activity.SUBUNIT Homodimer.MISCELLANEOUS Potential cerebrospinal fluid marker for the diagnosis of Creutzfeldt-Jakob disease.SIMILARITY Belongs to the cystatin family.")
	(DB_ID 53331)
	(description "recommendedName: Cystatin-C  alternativeName: Cystatin-3  alternativeName: Gamma-trace  alternativeName: Neuroendocrine basic polypeptide  alternativeName: Post-gamma-globulin ")
	(geneName "CST3")
	(identifier "P01034")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Age-related macular degeneration"
		"Amyloid"
		"Amyloidosis"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycoprotein"
		"Polymorphism"
		"Protease inhibitor"
		"Secreted"
		"Signal"
		"Thiol protease inhibitor")
	(name "CST3")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"CYTC_HUMAN"
		"B2R5J9"
		"D3DW42"
		"Q6FGW9")
	(sequenceLength 146)
	(species [GK_48887]))

([GK_538696] of Person
	(_displayName "Enghild, JJ")
	(DB_ID 538696)
	(initial "JJ")
	(surname "Enghild"))

([GK_54639] of EntityWithAccessionedSequence
	(_displayName "[Hsa] FADD [cytosol]")
	(compartment [GK_70101])
	(DB_ID 54639)
	(endCoordinate -1)
	(literatureReference [GK_140483])
	(name
		"FADD"
		"FADD protein (FAS-associating death domain-containing protein) (Mediator of receptor induced toxicity)"
		"FADD protein"
		"FAS-associating death domain-containing protein"
		"Mediator of receptor induced toxicity")
	(referenceEntity [GK_54640])
	(species [GK_48887])
	(stableIdentifier [GK_365546])
	(startCoordinate 1))

([GK_54640] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q13158 FADD recommendedName: Protein FADD  alternativeName: FAS-associated death domain protein  alternativeName: FAS-associating death domain-containing protein  alternativeName: Growth-inhibiting gene 3 protein  alternativeName: Mediator of receptor induced toxicity ")
	(checksum "0E65E2F852E83507")
	(comment "FUNCTION Apoptotic adaptor molecule that recruits caspase-8 or caspase-10 to the activated Fas (CD95) or TNFR-1 receptors. The resulting aggregate called the death-inducing signaling complex (DISC) performs caspase-8 proteolytic activation. Active caspase-8 initiates the subsequent cascade of caspases mediating apoptosis. Involved in interferon-mediated antiviral immune response, playing a role in the positive regulation of interferon signaling.SUBUNIT Can self-associate. Interacts with CFLAR, PEA15 and MBD4. When phosphorylated, part of a complex containing HIPK3 and FAS. May interact with MAVS/IPS1. Interacts with MOCV v-CFLAR protein and LRDD. Interacts (via death domain) with FAS (via death domain). Interacts with CASP8.TISSUE SPECIFICITY Expressed in a wide variety of tissues, except for peripheral blood mononuclear leukocytes.DOMAIN Contains a death domain involved in the binding of the corresponding domain within Fas receptor.DOMAIN The interaction between the FAS and FADD death domains is crucial for the formation of the death-inducing signaling complex (DISC).DISEASE Defects in FADD are the cause of infections recurrent associated with encephalopathy hepatic dysfunction and cardiovascular malformations (IEHDCM) [MIM:613759]. A condition with biological features of autoimmune lymphoproliferative syndrome such as high-circulating CD4(-)CD8(-)TCR-alpha-beta(+) T-cell counts, and elevated IL10 and FASL levels. Affected individuals suffer from recurrent, stereotypical episodes of fever, encephalopathy, and mild liver dysfunction sometimes accompanied by generalized seizures. The episodes can be triggered by varicella zoster virus (VZV), measles mumps rubella (MMR) attenuated vaccine, parainfluenza virus, and Epstein-Barr virus (EBV).SIMILARITY Contains 1 death domain.SIMILARITY Contains 1 DED (death effector) domain.")
	(DB_ID 54640)
	(description "recommendedName: Protein FADD  alternativeName: FAS-associated death domain protein  alternativeName: FAS-associating death domain-containing protein  alternativeName: Growth-inhibiting gene 3 protein  alternativeName: Mediator of receptor induced toxicity ")
	(geneName
		"FADD"
		"MORT1"
		"GIG3")
	(identifier "Q13158")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Apoptosis"
		"Complete proteome"
		"Disease mutation"
		"Host-virus interaction"
		"Immunity"
		"Innate immunity"
		"Phosphoprotein"
		"Reference proteome")
	(name "FADD")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"FADD_HUMAN"
		"Q14866"
		"Q6IBR4")
	(sequenceLength 208)
	(species [GK_48887]))

([GK_54840] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02671 FGA recommendedName: Fibrinogen alpha chain  component recommendedName: Fibrinopeptide A  /component component recommendedName: Fibrinogen alpha chain  /component")
	(checksum "1")
	(comment "FUNCTION Fibrinogen has a double function: yielding monomers that polymerize into fibrin and acting as a cofactor in platelet aggregation.DOMAIN A long coiled coil structure formed by 3 polypeptide chains connects the central nodule to the C-terminal domains (distal nodules). The long C-terminal ends of the alpha chains fold back, contributing a fourth strand to the coiled coil structure.PTM Forms F13A-mediated cross-links between a glutamine and the epsilon-amino group of a lysine residue, forming fibronectin-fibrinogen heteropolymers.PTM Conversion of fibrinogen to fibrin is triggered by thrombin, which cleaves fibrinopeptides A and B from alpha and beta chains, and thus exposes the N-terminal polymerization sites responsible for the formation of the soft clot. The soft clot is converted into the hard clot by factor XIIIA which catalyzes the epsilon-(gamma-glutamyl)lysine cross-linking between gamma chains (stronger) and between alpha chains (weaker) of different monomers.PTM Phosphorylation sites are present in the extracelllular medium.DISEASE Defects in FGA are a cause of congenital afibrinogenemia (CAFBN) [MIM:202400]. This is a rare autosomal recessive disorder characterized by bleeding that varies from mild to severe and by complete absence or extremely low levels of plasma and platelet fibrinogen. Note=The majority of cases of afibrinogenemia are due to truncating mutations. Variations in position Arg-35 (the site of cleavage of fibrinopeptide a by thrombin) leads to alpha-dysfibrinogenemias.SIMILARITY Contains 1 fibrinogen C-terminal domain.")
	(DB_ID 54840)
	(description "recommendedName: Fibrinogen alpha chain  component recommendedName: Fibrinopeptide A  /component component recommendedName: Fibrinogen alpha chain  /component")
	(geneName "FGA")
	(identifier "P02671")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Amyloid"
		"Amyloidosis"
		"Blood coagulation"
		"Coiled coil"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycoprotein"
		"Isopeptide bond"
		"Phosphoprotein"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "FGA")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"FIBA_HUMAN"
		"D3DP14"
		"D3DP15"
		"Q4QQH7"
		"Q9BX62"
		"Q9UCH2")
	(sequenceLength 866)
	(species [GK_48887]))

([GK_55564] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P06396 GSN recommendedName: Gelsolin  alternativeName: AGEL  alternativeName: Actin-depolymerizing factor shortName:ADF  alternativeName: Actin-depolymerizing factor shortName:ADF  alternativeName: Brevin ")
	(checksum "1")
	(comment "TISSUE SPECIFICITY Phagocytic cells, platelets, fibroblasts, nonmuscle cells, smooth and skeletal muscle cells.PTM Phosphorylation on Tyr-86, Tyr-409, Tyr-465, Tyr-603 and Tyr-651 in vitro is induced in presence of phospholipids.SIMILARITY Belongs to the villin/gelsolin family.SIMILARITY Contains 6 gelsolin-like repeats.")
	(DB_ID 55564)
	(description "recommendedName: Gelsolin  alternativeName: AGEL  alternativeName: Actin-depolymerizing factor shortName:ADF  alternativeName: Actin-depolymerizing factor shortName:ADF  alternativeName: Brevin ")
	(geneName "GSN")
	(identifier "P06396")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Actin capping"
		"Actin-binding"
		"Alternative initiation"
		"Amyloid"
		"Amyloidosis"
		"Calcium"
		"Cilium biogenesis/degradation"
		"Complete proteome"
		"Cytoplasm"
		"Cytoskeleton"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Phosphoprotein"
		"Polymorphism"
		"Repeat"
		"Secreted"
		"Signal")
	(name "GSN")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"GELS_HUMAN"
		"Q8WVV7")
	(sequenceLength 782)
	(species [GK_48887]))

([GK_56134] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q99878 HIST1H2AJ recommendedName: Histone H2A type 1-J  alternativeName: Histone H2A/e ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Deiminated on Arg-4 in granulocytes upon calcium entry.PTM Phosphorylation on Ser-2 is enhanced during mitosis. Phosphorylation on Ser-2 by RPS6KA5/MSK1 directly represses transcription. Acetylation of H3 inhibits Ser-2 phosphorylation by RPS6KA5/MSK1.SIMILARITY Belongs to the histone H2A family.")
	(DB_ID 56134)
	(description "recommendedName: Histone H2A type 1-J  alternativeName: Histone H2A/e ")
	(geneName
		"HIST1H2AJ"
		"H2AFE")
	(identifier "Q99878")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2AJ")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2A1J_HUMAN"
		"A2RUU6"
		"Q5JXQ5")
	(sequenceLength 128)
	(species [GK_48887]))

([GK_56136] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P20671 HIST1H2AD recommendedName: Histone H2A type 1-D  alternativeName: Histone H2A.3  alternativeName: Histone H2A/g ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Deiminated on Arg-4 in granulocytes upon calcium entry.PTM Phosphorylation on Ser-2 is enhanced during mitosis. Phosphorylation on Ser-2 by RPS6KA5/MSK1 directly represses transcription. Acetylation of H3 inhibits Ser-2 phosphorylation by RPS6KA5/MSK1.SIMILARITY Belongs to the histone H2A family.CAUTION Was originally (PubMed:2587222) thought to originate from mouse.")
	(DB_ID 56136)
	(description "recommendedName: Histone H2A type 1-D  alternativeName: Histone H2A.3  alternativeName: Histone H2A/g ")
	(geneName
		"HIST1H2AD"
		"H2AFG")
	(identifier "P20671")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2AD")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2A1D_HUMAN"
		"A0PK91"
		"P57754"
		"Q6FGY6")
	(sequenceLength 130)
	(species [GK_48887]))

([GK_56140] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q93077 HIST1H2AC recommendedName: Histone H2A type 1-C  alternativeName: Histone H2A/l ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Deiminated on Arg-4 in granulocytes upon calcium entry.PTM Phosphorylation on Ser-2 is enhanced during mitosis. Phosphorylation on Ser-2 by RPS6KA5/MSK1 directly represses transcription. Acetylation of H3 inhibits Ser-2 phosphorylation by RPS6KA5/MSK1.SIMILARITY Belongs to the histone H2A family.")
	(DB_ID 56140)
	(description "recommendedName: Histone H2A type 1-C  alternativeName: Histone H2A/l ")
	(geneName
		"HIST1H2AC"
		"H2AFL")
	(identifier "Q93077")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2AC")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2A1C_HUMAN"
		"B2R4F7"
		"O00775"
		"O00776"
		"O00777"
		"O00778"
		"Q540R1")
	(sequenceLength 130)
	(species [GK_48887]))

([GK_56142] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P04908 HIST1H2AB recommendedName: Histone H2A type 1-B/E  alternativeName: Histone H2A.2  alternativeName: Histone H2A/a  alternativeName: Histone H2A/m ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Deiminated on Arg-4 in granulocytes upon calcium entry.PTM Phosphorylation on Ser-2 is enhanced during mitosis. Phosphorylation on Ser-2 by RPS6KA5/MSK1 directly represses transcription. Acetylation of H3 inhibits Ser-2 phosphorylation by RPS6KA5/MSK1.SIMILARITY Belongs to the histone H2A family.")
	(DB_ID 56142)
	(description "recommendedName: Histone H2A type 1-B/E  alternativeName: Histone H2A.2  alternativeName: Histone H2A/a  alternativeName: Histone H2A/m ")
	(geneName
		"HIST1H2AB"
		"H2AFM"
		"</gene>"
		"<gene>"
		"HIST1H2AE"
		"H2AFA")
	(identifier "P04908")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2AB")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2A1B_HUMAN"
		"P28001"
		"Q76P63")
	(sequenceLength 130)
	(species [GK_48887]))

([GK_56148] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q16777 HIST2H2AC recommendedName: Histone H2A type 2-C  alternativeName: Histone H2A-GL101  alternativeName: Histone H2A/q ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Deiminated on Arg-4 in granulocytes upon calcium entry.PTM Phosphorylation on Ser-2 is enhanced during mitosis. Phosphorylation on Ser-2 by RPS6KA5/MSK1 directly represses transcription. Acetylation of H3 inhibits Ser-2 phosphorylation by RPS6KA5/MSK1.SIMILARITY Belongs to the histone H2A family.")
	(DB_ID 56148)
	(description "recommendedName: Histone H2A type 2-C  alternativeName: Histone H2A-GL101  alternativeName: Histone H2A/q ")
	(geneName
		"HIST2H2AC"
		"H2AFQ")
	(identifier "Q16777")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Citrullination"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST2H2AC")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2A2C_HUMAN"
		"Q6DRA7"
		"Q8IUE5")
	(sequenceLength 129)
	(species [GK_48887]))

([GK_56152] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P16104 H2AFX recommendedName: Histone H2A.x shortName:H2a/x ")
	(checksum "1")
	(comment "DEVELOPMENTAL STAGE Synthesized in G1 as well as in S-phase.DOMAIN The [ST]-Q motif constitutes a recognition sequence for kinases from the PI3/PI4-kinase family.PTM Monoubiquitination of Lys-120 (H2AXK119ub) by RING1 and RNF2/RING2 complex gives a specific tag for epigenetic transcriptional repression. Following DNA double-strand breaks (DSBs), it is ubiquitinated through 'Lys-63' linkage of ubiquitin moieties by the E2 ligase UBE2N and the E3 ligases RNF8 and RNF168, leading to the recruitment of repair proteins to sites of DNA damage. Monoubiquitination and ionizing radiation-induced 'Lys-63'-linked ubiquitination are distinct events.SIMILARITY Belongs to the histone H2A family.")
	(DB_ID 56152)
	(description "recommendedName: Histone H2A.x shortName:H2a/x ")
	(geneName
		"H2AFX"
		"H2AX")
	(identifier "P16104")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Cell cycle"
		"Chromosome"
		"Complete proteome"
		"DNA damage"
		"DNA recombination"
		"DNA repair"
		"DNA-binding"
		"Isopeptide bond"
		"Meiosis"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "H2AFX")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2AX_HUMAN"
		"Q4ZGJ7"
		"Q6IAS5")
	(sequenceLength 143)
	(species [GK_48887]))

([GK_56164] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P62807 HIST1H2BC recommendedName: Histone H2B type 1-C/E/F/G/I  alternativeName: Histone H2B.1 A  alternativeName: Histone H2B.a shortName:H2B/a  alternativeName: Histone H2B.a shortName:H2B/a  alternativeName: Histone H2B.g shortName:H2B/g  alternativeName: Histone H2B.g shortName:H2B/g  alternativeName: Histone H2B.h shortName:H2B/h  alternativeName: Histone H2B.h shortName:H2B/h  alternativeName: Histone H2B.k shortName:H2B/k  alternativeName: Histone H2B.k shortName:H2B/k  alternativeName: Histone H2B.l shortName:H2B/l  alternativeName: Histone H2B.l shortName:H2B/l ")
	(checksum "1")
	(comment "SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56164)
	(description "recommendedName: Histone H2B type 1-C/E/F/G/I  alternativeName: Histone H2B.1 A  alternativeName: Histone H2B.a shortName:H2B/a  alternativeName: Histone H2B.a shortName:H2B/a  alternativeName: Histone H2B.g shortName:H2B/g  alternativeName: Histone H2B.g shortName:H2B/g  alternativeName: Histone H2B.h shortName:H2B/h  alternativeName: Histone H2B.h shortName:H2B/h  alternativeName: Histone H2B.k shortName:H2B/k  alternativeName: Histone H2B.k shortName:H2B/k  alternativeName: Histone H2B.l shortName:H2B/l  alternativeName: Histone H2B.l shortName:H2B/l ")
	(geneName
		"HIST1H2BC"
		"H2BFL"
		"</gene>"
		"<gene>"
		"HIST1H2BE"
		"H2BFH"
		"</gene>"
		"<gene>"
		"HIST1H2BF"
		"H2BFG"
		"</gene>"
		"<gene>"
		"HIST1H2BG"
		"H2BFA"
		"</gene>"
		"<gene>"
		"HIST1H2BI"
		"H2BFK")
	(identifier "P62807")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Antibiotic"
		"Antimicrobial"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Polymorphism"
		"Ubl conjugation")
	(name "HIST1H2BC")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1C_HUMAN"
		"P02278"
		"Q3B872"
		"Q4VB69"
		"Q93078"
		"Q93080")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56168] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P58876 HIST1H2BD recommendedName: Histone H2B type 1-D  alternativeName: HIRA-interacting protein 2  alternativeName: Histone H2B.1 B  alternativeName: Histone H2B.b shortName:H2B/b  alternativeName: Histone H2B.b shortName:H2B/b ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.MISCELLANEOUS The mouse orthologous protein seems not to exist.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56168)
	(description "recommendedName: Histone H2B type 1-D  alternativeName: HIRA-interacting protein 2  alternativeName: Histone H2B.1 B  alternativeName: Histone H2B.b shortName:H2B/b  alternativeName: Histone H2B.b shortName:H2B/b ")
	(geneName
		"HIST1H2BD"
		"H2BFB"
		"HIRIP2")
	(identifier "P58876")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BD")
	(referenceDatabase [GK_2])
	(secondaryIdentifier "H2B1D_HUMAN")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56170] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q99880 HIST1H2BL recommendedName: Histone H2B type 1-L  alternativeName: Histone H2B.c shortName:H2B/c  alternativeName: Histone H2B.c shortName:H2B/c ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56170)
	(description "recommendedName: Histone H2B type 1-L  alternativeName: Histone H2B.c shortName:H2B/c  alternativeName: Histone H2B.c shortName:H2B/c ")
	(geneName
		"HIST1H2BL"
		"H2BFC")
	(identifier "Q99880")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Polymorphism"
		"Ubl conjugation")
	(name "HIST1H2BL")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1L_HUMAN"
		"B2R5A3"
		"Q52LW9")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56172] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q99877 HIST1H2BN recommendedName: Histone H2B type 1-N  alternativeName: Histone H2B.d shortName:H2B/d  alternativeName: Histone H2B.d shortName:H2B/d ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56172)
	(description "recommendedName: Histone H2B type 1-N  alternativeName: Histone H2B.d shortName:H2B/d  alternativeName: Histone H2B.d shortName:H2B/d ")
	(geneName
		"HIST1H2BN"
		"H2BFD")
	(identifier "Q99877")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BN")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1N_HUMAN"
		"B2R5L4"
		"Q494S8"
		"Q96FB7")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56174] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q99879 HIST1H2BM recommendedName: Histone H2B type 1-M  alternativeName: Histone H2B.e shortName:H2B/e  alternativeName: Histone H2B.e shortName:H2B/e ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56174)
	(description "recommendedName: Histone H2B type 1-M  alternativeName: Histone H2B.e shortName:H2B/e  alternativeName: Histone H2B.e shortName:H2B/e ")
	(geneName
		"HIST1H2BM"
		"H2BFE")
	(identifier "Q99879")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Polymorphism"
		"Ubl conjugation")
	(name "HIST1H2BM")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1M_HUMAN"
		"Q6NWQ3")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56176] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P33778 HIST1H2BB recommendedName: Histone H2B type 1-B  alternativeName: Histone H2B.1  alternativeName: Histone H2B.f shortName:H2B/f  alternativeName: Histone H2B.f shortName:H2B/f ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56176)
	(description "recommendedName: Histone H2B type 1-B  alternativeName: Histone H2B.1  alternativeName: Histone H2B.f shortName:H2B/f  alternativeName: Histone H2B.f shortName:H2B/f ")
	(geneName
		"HIST1H2BB"
		"H2BFF")
	(identifier "P33778")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BB")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1B_HUMAN"
		"Q4KN36")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56180] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q93079 HIST1H2BH recommendedName: Histone H2B type 1-H  alternativeName: Histone H2B.j shortName:H2B/j  alternativeName: Histone H2B.j shortName:H2B/j ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56180)
	(description "recommendedName: Histone H2B type 1-H  alternativeName: Histone H2B.j shortName:H2B/j  alternativeName: Histone H2B.j shortName:H2B/j ")
	(geneName
		"HIST1H2BH"
		"H2BFJ")
	(identifier "Q93079")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BH")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1H_HUMAN"
		"B2R541"
		"Q4VB74")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56184] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P23527 HIST1H2BO recommendedName: Histone H2B type 1-O  alternativeName: Histone H2B.2  alternativeName: Histone H2B.n shortName:H2B/n  alternativeName: Histone H2B.n shortName:H2B/n ")
	(checksum "1")
	(comment "FUNCTION Core component of nucleosome. Nucleosomes wrap and compact DNA into chromatin, limiting DNA accessibility to the cellular machineries which require DNA as a template. Histones thereby play a central role in transcription regulation, DNA repair, DNA replication and chromosomal stability. DNA accessibility is regulated via a complex set of post-translational modifications of histones, also called histone code, and nucleosome remodeling.SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.MISCELLANEOUS The mouse orthologous protein seems not to exist.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56184)
	(description "recommendedName: Histone H2B type 1-O  alternativeName: Histone H2B.2  alternativeName: Histone H2B.n shortName:H2B/n  alternativeName: Histone H2B.n shortName:H2B/n ")
	(geneName
		"HIST1H2BO"
		"H2BFH"
		"H2BFN")
	(identifier "P23527")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BO")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1O_HUMAN"
		"Q3KPI7"
		"Q8TCV6")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56186] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q16778 HIST2H2BE recommendedName: Histone H2B type 2-E  alternativeName: Histone H2B-GL105  alternativeName: Histone H2B.q shortName:H2B/q  alternativeName: Histone H2B.q shortName:H2B/q ")
	(checksum "1")
	(comment "SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56186)
	(description "recommendedName: Histone H2B type 2-E  alternativeName: Histone H2B-GL105  alternativeName: Histone H2B.q shortName:H2B/q  alternativeName: Histone H2B.q shortName:H2B/q ")
	(geneName
		"HIST2H2BE"
		"H2BFQ")
	(identifier "Q16778")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Antibiotic"
		"Antimicrobial"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST2H2BE")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B2E_HUMAN"
		"A3KMC7"
		"A8K110"
		"Q4KMY1"
		"Q5QNX0"
		"Q9UE88")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56188] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P06899 HIST1H2BJ recommendedName: Histone H2B type 1-J  alternativeName: Histone H2B.1  alternativeName: Histone H2B.r shortName:H2B/r  alternativeName: Histone H2B.r shortName:H2B/r ")
	(checksum "1")
	(comment "SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56188)
	(description "recommendedName: Histone H2B type 1-J  alternativeName: Histone H2B.1  alternativeName: Histone H2B.r shortName:H2B/r  alternativeName: Histone H2B.r shortName:H2B/r ")
	(geneName
		"HIST1H2BJ"
		"H2BFR")
	(identifier "P06899")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Antibiotic"
		"Antimicrobial"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "HIST1H2BJ")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2B1J_HUMAN"
		"B2R4J4"
		"O60816")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56190] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P57053 H2BFS recommendedName: Histone H2B type F-S  alternativeName: Histone H2B.s shortName:H2B/s  alternativeName: Histone H2B.s shortName:H2B/s ")
	(checksum "1")
	(comment "SUBUNIT The nucleosome is a histone octamer containing two molecules each of H2A, H2B, H3 and H4 assembled in one H3-H4 heterotetramer and two H2A-H2B heterodimers. The octamer wraps approximately 147 bp of DNA.PTM Monoubiquitination of Lys-121 by the RNF20/40 complex gives a specific tag for epigenetic transcriptional activation and is also prerequisite for histone H3 'Lys-4' and 'Lys-79' methylation. It also functions cooperatively with the FACT dimer to stimulate elongation by RNA polymerase II.SIMILARITY Belongs to the histone H2B family.")
	(DB_ID 56190)
	(description "recommendedName: Histone H2B type F-S  alternativeName: Histone H2B.s shortName:H2B/s  alternativeName: Histone H2B.s shortName:H2B/s ")
	(geneName "H2BFS")
	(identifier "P57053")
	(isSequenceChanged TRUE)
	(keyword
		"Acetylation"
		"Antibiotic"
		"Antimicrobial"
		"Chromosome"
		"Complete proteome"
		"Direct protein sequencing"
		"DNA-binding"
		"Isopeptide bond"
		"Methylation"
		"Nucleosome core"
		"Nucleus"
		"Phosphoprotein"
		"Ubl conjugation")
	(name "H2BFS")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"H2BFS_HUMAN"
		"A0AVF9"
		"Q5R2W0")
	(sequenceLength 126)
	(species [GK_48887]))

([GK_56978] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P10997 IAPP recommendedName: Islet amyloid polypeptide  alternativeName: Amylin  alternativeName: Diabetes-associated peptide shortName:DAP  alternativeName: Diabetes-associated peptide shortName:DAP  alternativeName: Insulinoma amyloid peptide ")
	(checksum "1")
	(comment "FUNCTION Selectively inhibits insulin-stimulated glucose utilization and glycogen deposition in muscle, while not affecting adipocyte glucose metabolism.PTM Amyloid fibrils are degraded by IDE.MISCELLANEOUS IAPP is the peptide subunit of amyloid found in pancreatic islets of type 2 diabetic patients and in insulinomas.SIMILARITY Belongs to the calcitonin family.")
	(DB_ID 56978)
	(description "recommendedName: Islet amyloid polypeptide  alternativeName: Amylin  alternativeName: Diabetes-associated peptide shortName:DAP  alternativeName: Diabetes-associated peptide shortName:DAP  alternativeName: Insulinoma amyloid peptide ")
	(geneName "IAPP")
	(identifier "P10997")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amidation"
		"Amyloid"
		"Cleavage on pair of basic residues"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Hormone"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "IAPP")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"IAPP_HUMAN"
		"Q0ZD87"
		"Q14598")
	(sequenceLength 89)
	(species [GK_48887]))

([GK_57031] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Caspase-8 precursor  [cytosol]")
	(compartment [GK_70101])
	(DB_ID 57031)
	(endCoordinate -1)
	(name
		"Caspase-8 precursor "
		"ICE-like apoptotic protease 5"
		"MORT1-associated CED-3 homolog"
		"MACH"
		"FADD-homologous ICE/CED-3- like protease"
		"FADD-like ICE"
		"FLICE"
		"Apoptotic cysteine protease"
		"Apoptotic protease Mch-5"
		"CAP4")
	(referenceEntity [GK_57032])
	(species [GK_48887])
	(stableIdentifier [GK_362980])
	(startCoordinate 1))

([GK_57032] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q14790 CASP8 recommendedName: Caspase-8 shortName:CASP-8 ecNumber3.4.22.61/ecNumber  alternativeName: Apoptotic cysteine protease  alternativeName: Apoptotic protease Mch-5  alternativeName: CAP4  alternativeName: FADD-homologous ICE/ced-3-like protease  alternativeName: FADD-like ICE shortName:FLICE  alternativeName: ICE-like apoptotic protease 5  alternativeName: MORT1-associated ced-3 homolog shortName:MACH  component recommendedName: Caspase-8 subunit p18  /component component recommendedName: Caspase-8 subunit p10  /component")
	(checksum "7A5FEAA6B39B582F")
	(comment "FUNCTION Most upstream protease of the activation cascade of caspases responsible for the TNFRSF6/FAS mediated and TNFRSF1A induced cell death. Binding to the adapter molecule FADD recruits it to either receptor. The resulting aggregate called death-inducing signaling complex (DISC) performs CASP8 proteolytic activation. The active dimeric enzyme is then liberated from the DISC and free to activate downstream apoptotic proteases. Proteolytic fragments of the N-terminal propeptide (termed CAP3, CAP5 and CAP6) are likely retained in the DISC. Cleaves and activates CASP3, CASP4, CASP6, CASP7, CASP9 and CASP10. May participate in the GZMB apoptotic pathways. Cleaves ADPRT. Hydrolyzes the small-molecule substrate, Ac-Asp-Glu-Val-Asp-|-AMC. Likely target for the cowpox virus CRMA death inhibitory protein. Isoform 5, isoform 6, isoform 7 and isoform 8 lack the catalytic site and may interfere with the pro-apoptotic activity of the complex.CATALYTIC ACTIVITY Strict requirement for Asp at position P1 and has a preferred cleavage sequence of (Leu/Asp/Val)-Glu-Thr-Asp-|-(Gly/Ser/Ala).SUBUNIT Heterotetramer that consists of two anti-parallel arranged heterodimers, each one formed by a 18 kDa (p18) and a 10 kDa (p10) subunit. Interacts with FADD, CFLAR and PEA15. Isoform 9 interacts at the endoplasmic reticulum with a complex containing BCAP31, BAP29, BCL2 and/or BCL2L1. Interacts with TNFAIP8L2 (By similarity). Interacts with human cytomegalovirus/HHV-5 protein vICA/UL36; this interaction inhibits CASP8 activation.TISSUE SPECIFICITY Isoform 1, isoform 5 and isoform 7 are expressed in a wide variety of tissues. Highest expression in peripheral blood leukocytes, spleen, thymus and liver. Barely detectable in brain, testis and skeletal muscle.DOMAIN Isoform 9 contains a N-terminal extension that is required for interaction with the BCAP31 complex.PTM Generation of the subunits requires association with the death-inducing signaling complex (DISC), whereas additional processing is likely due to the autocatalytic activity of the activated protease. GZMB and CASP10 can be involved in these processing events.PTM Phosphorylated upon DNA damage, probably by ATM or ATR. Phosphorylation on Ser-387 during mitosis by CDK1 inhibits activation by proteolysis and prevents apoptosis. This phosphorylation occurs in cancer cell lines, as well as in primary breast tissues and lymphocytes.POLYMORPHISM Genetic variations in CASP8 are associated with reduced risk of lung cancer [MIM:211980] in a population of Han Chinese subjects. Genetic variations are also associated with decreased risk of cancer of various other forms including esophageal, gastric, colorectal, cervical, and breast, acting in an allele dose-dependent manner.DISEASE Defects in CASP8 are the cause of caspase-8 deficiency (CASP8D) [MIM:607271]. CASP8D is a disorder resembling autoimmune lymphoproliferative syndrome (ALPS). It is characterized by lymphadenopathy, splenomegaly, and defective CD95-induced apoptosis of peripheral blood lymphocytes (PBLs). It leads to defects in activation of T-lymphocytes, B-lymphocytes, and natural killer cells leading to immunodeficiency characterized by recurrent sinopulmonary and herpes simplex virus infections and poor responses to immunization.SIMILARITY Belongs to the peptidase C14A family.SIMILARITY Contains 2 DED (death effector) domains.")
	(DB_ID 57032)
	(description "recommendedName: Caspase-8 shortName:CASP-8 ecNumber3.4.22.61/ecNumber  alternativeName: Apoptotic cysteine protease  alternativeName: Apoptotic protease Mch-5  alternativeName: CAP4  alternativeName: FADD-homologous ICE/ced-3-like protease  alternativeName: FADD-like ICE shortName:FLICE  alternativeName: ICE-like apoptotic protease 5  alternativeName: MORT1-associated ced-3 homolog shortName:MACH  component recommendedName: Caspase-8 subunit p18  /component component recommendedName: Caspase-8 subunit p10  /component")
	(geneName
		"CASP8"
		"MCH5")
	(identifier "Q14790")
	(isSequenceChanged FALSE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Apoptosis"
		"Complete proteome"
		"Cytoplasm"
		"Direct protein sequencing"
		"Disease mutation"
		"Host-virus interaction"
		"Hydrolase"
		"Phosphoprotein"
		"Polymorphism"
		"Protease"
		"Reference proteome"
		"Repeat"
		"Thiol protease"
		"Zymogen")
	(name "CASP8")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"CASP8_HUMAN"
		"O14676"
		"Q14791"
		"Q14792"
		"Q14793"
		"Q14794"
		"Q14795"
		"Q14796"
		"Q15780"
		"Q15806"
		"Q53TT5"
		"Q8TDI1"
		"Q8TDI2"
		"Q8TDI3"
		"Q8TDI4"
		"Q8TDI5"
		"Q96T22"
		"Q9C0K4"
		"Q9UQ81")
	(sequenceLength 479)
	(species [GK_48887]))

([GK_57035] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Caspase-10 precursor  [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 57035)
	(endCoordinate -1)
	(name
		"Caspase-10 precursor "
		"ICE-like apoptotic protease 4"
		"Apoptotic protease Mch-4"
		"FAS-associated death domain protein interleukin-1B-converting enzyme 2"
		"FLICE2")
	(referenceEntity [GK_57036])
	(species [GK_48887])
	(stableIdentifier [GK_370163])
	(startCoordinate 1))

([GK_57036] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q92851 CASP10 recommendedName: Caspase-10 shortName:CASP-10 ecNumber3.4.22.63/ecNumber  alternativeName: Apoptotic protease Mch-4  alternativeName: FAS-associated death domain protein interleukin-1B-converting enzyme 2 shortName:FLICE2  alternativeName: ICE-like apoptotic protease 4  component recommendedName: Caspase-10 subunit p23/17  /component component recommendedName: Caspase-10 subunit p12  /component")
	(checksum "840348AE602B8243")
	(comment "FUNCTION Involved in the activation cascade of caspases responsible for apoptosis execution. Recruited to both Fas- and TNFR-1 receptors in a FADD dependent manner. May participate in the granzyme B apoptotic pathways. Cleaves and activates caspase-3, -4, -6, -7, -8, and -9. Hydrolyzes the small- molecule substrates, Tyr-Val-Ala-Asp-|-AMC and Asp-Glu-Val-Asp-|-AMC.FUNCTION Isoform C is proteolytically inactive.CATALYTIC ACTIVITY Strict requirement for Asp at position P1 and has a preferred cleavage sequence of Leu-Gln-Thr-Asp-|-Gly.SUBUNIT Heterotetramer that consists of two anti-parallel arranged heterodimers, each one formed by a 23/17 kDa (p23/17) (depending on the splicing events) and a 12 kDa (p12) subunit (By similarity). Self-associates. Interacts with FADD and CASP8. Found in a Fas signaling complex consisting of FAS, FADD, CASP8 and CASP10.TISSUE SPECIFICITY Detectable in most tissues. Lowest expression is seen in brain, kidney, prostate, testis and colon.PTM Cleavage by granzyme B and autocatalytic activity generate the two active subunits.PTM Phosphorylated upon DNA damage, probably by ATM or ATR.DISEASE Defects in CASP10 are the cause of autoimmune lymphoproliferative syndrome type 2A (ALPS2A) [MIM:603909]. ALPS2 is characterized by abnormal lymphocyte and dendritic cell homeostasis and immune regulatory defects.DISEASE Defects in CASP10 are a cause of familial non-Hodgkin lymphoma (NHL) [MIM:605027]. NHL is a cancer that starts in cells of the lymph system, which is part of the body's immune system. NHLs can occur at any age and are often marked by enlarged lymph nodes, fever and weight loss.DISEASE Defects in CASP10 are a cause of gastric cancer (GASC) [MIM:613659]. A malignant disease which starts in the stomach, can spread to the esophagus or the small intestine, and can extend through the stomach wall to nearby lymph nodes and organs. It also can metastasize to other parts of the body. The term gastric cancer or gastric carcinoma refers to adenocarcinoma of the stomach that accounts for most of all gastric malignant tumors. Two main histologic types are recognized, diffuse type and intestinal type carcinomas. Diffuse tumors are poorly differentiated infiltrating lesions resulting in thickening of the stomach. In contrast, intestinal tumors are usually exophytic, often ulcerating, and associated with intestinal metaplasia of the stomach, most often observed in sporadic disease.SIMILARITY Belongs to the peptidase C14A family.SIMILARITY Contains 2 DED (death effector) domains.")
	(DB_ID 57036)
	(description "recommendedName: Caspase-10 shortName:CASP-10 ecNumber3.4.22.63/ecNumber  alternativeName: Apoptotic protease Mch-4  alternativeName: FAS-associated death domain protein interleukin-1B-converting enzyme 2 shortName:FLICE2  alternativeName: ICE-like apoptotic protease 4  component recommendedName: Caspase-10 subunit p23/17  /component component recommendedName: Caspase-10 subunit p12  /component")
	(geneName
		"CASP10"
		"MCH4")
	(identifier "Q92851")
	(isSequenceChanged TRUE)
	(keyword
		"Alternative splicing"
		"Apoptosis"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Hydrolase"
		"Phosphoprotein"
		"Polymorphism"
		"Protease"
		"Reference proteome"
		"Repeat"
		"Thiol protease"
		"Zymogen")
	(name "CASP10")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"CASPA_HUMAN"
		"Q6KF62"
		"Q6KF63"
		"Q8IUP5"
		"Q8WYQ8"
		"Q99845"
		"Q9Y2U6"
		"Q9Y2U7")
	(sequenceLength 521)
	(species [GK_48887]))

([GK_571213] of Person
	(_displayName "Zhou, H")
	(DB_ID 571213)
	(firstname "Huaijun")
	(initial "H")
	(surname "Zhou"))

([GK_57415] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01308 INS recommendedName: Insulin  component recommendedName: Insulin B chain  /component component recommendedName: Insulin A chain  /component")
	(checksum "1")
	(comment "FUNCTION Insulin decreases blood glucose concentration. It increases cell permeability to monosaccharides, amino acids and fatty acids. It accelerates glycolysis, the pentose phosphate cycle, and glycogen synthesis in liver.SUBUNIT Heterodimer of a B chain and an A chain linked by two disulfide bonds.PHARMACEUTICAL Available under the names Humulin or Humalog (Eli Lilly) and Novolin (Novo Nordisk). Used in the treatment of diabetes. Humalog is an insulin analog with 52-Lys-Pro-53 instead of 52-Pro-Lys-53.SIMILARITY Belongs to the insulin family.")
	(DB_ID 57415)
	(description "recommendedName: Insulin  component recommendedName: Insulin B chain  /component component recommendedName: Insulin A chain  /component")
	(geneName "INS")
	(identifier "P01308")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Carbohydrate metabolism"
		"Cleavage on pair of basic residues"
		"Complete proteome"
		"Diabetes mellitus"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glucose metabolism"
		"Hormone"
		"Pharmaceutical"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "INS")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"INS_HUMAN"
		"Q5EEX2")
	(sequenceLength 110)
	(species [GK_48887]))

([GK_57627] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q9Y287 ITM2B recommendedName: Integral membrane protein 2B  alternativeName: Protein E25B  alternativeName: Transmembrane protein BRI  component recommendedName: ABri/ADan amyloid peptide  /component")
	(checksum "1")
	(comment "TISSUE SPECIFICITY Expressed in brain and in other tissues.DISEASE Defects in ITM2B are a cause of cerebral amyloid angiopathy ITM2B-related type 2 (CAA-ITM2B2) [MIM:117300]; also known as heredopathia ophthalmo-oto-encephalica. A disorder characterized by amyloid deposition in the walls of the blood vessels of the cerebrum, choroid plexus, cerebellum, spinal cord and retina. Plaques and neurofibrillary tangles are observed in the hippocampus. Clinical features include progressive ataxia, dementia, cataracts and deafness.SIMILARITY Belongs to the ITM2 family.SIMILARITY Contains 1 BRICHOS domain.")
	(DB_ID 57627)
	(description "recommendedName: Integral membrane protein 2B  alternativeName: Protein E25B  alternativeName: Transmembrane protein BRI  component recommendedName: ABri/ADan amyloid peptide  /component")
	(geneName
		"ITM2B"
		"BRI"
		"BRI2")
	(identifier "Q9Y287")
	(isSequenceChanged TRUE)
	(keyword
		"Amyloid"
		"Amyloidosis"
		"Cell membrane"
		"Cleavage on pair of basic residues"
		"Complete proteome"
		"Deafness"
		"Disease mutation"
		"Disulfide bond"
		"Glycoprotein"
		"Golgi apparatus"
		"Membrane"
		"Signal-anchor"
		"Transmembrane"
		"Transmembrane helix")
	(name "ITM2B")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"ITM2B_HUMAN"
		"Q9NYH1")
	(sequenceLength 266)
	(species [GK_48887]))

([GK_58841] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P61626 LYZ  Lysozyme C  alternativeName: 1,4-beta-N-acetylmuramidase C ")
	(checksum "1")
	(comment "FUNCTION Lysozymes have primarily a bacteriolytic function; those in tissues and body fluids are associated with the monocyte-macrophage system and enhance the activity of immunoagents.CATALYTIC ACTIVITY Hydrolysis of (1-&gt;4)-beta-linkages between N-acetylmuramic acid and N-acetyl-D-glucosamine residues in a peptidoglycan and between N-acetyl-D-glucosamine residues in chitodextrins.SUBUNIT Monomer.MISCELLANEOUS Lysozyme C is capable of both hydrolysis and transglycosylation; it shows also a slight esterase activity. It acts rapidly on both peptide-substituted and unsubstituted peptidoglycan, and slowly on chitin oligosaccharides.SIMILARITY Belongs to the glycosyl hydrolase 22 family.")
	(DB_ID 58841)
	(description " Lysozyme C  alternativeName: 1,4-beta-N-acetylmuramidase C ")
	(geneName
		"LYZ"
		"LZM")
	(identifier "P61626")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amyloid"
		"Amyloidosis"
		"Antimicrobial"
		"Bacteriolytic enzyme"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycosidase"
		"Hydrolase"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "LYZ")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"LYSC_HUMAN"
		"P00695"
		"Q13170"
		"Q9UCF8")
	(sequenceLength 148)
	(species [GK_48887]))

([GK_59185] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q08431 MFGE8 recommendedName: Lactadherin  alternativeName: Breast epithelial antigen BA46  alternativeName: HMFG  alternativeName: MFGM  alternativeName: Milk fat globule-EGF factor 8 shortName:MFG-E8  alternativeName: Milk fat globule-EGF factor 8 shortName:MFG-E8  alternativeName: SED1  component recommendedName: Lactadherin short form  /component component recommendedName: Medin  /component")
	(checksum "1")
	(comment "TISSUE SPECIFICITY Mammary epithelial cell surfaces and aortic media. Overexpressed in several carcinomas.PTM Medin has a ragged N-terminus with minor species starting at Pro-264 and Gly-273.SIMILARITY Contains 1 EGF-like domain.SIMILARITY Contains 2 F5/8 type C domains.")
	(DB_ID 59185)
	(description "recommendedName: Lactadherin  alternativeName: Breast epithelial antigen BA46  alternativeName: HMFG  alternativeName: MFGM  alternativeName: Milk fat globule-EGF factor 8 shortName:MFG-E8  alternativeName: Milk fat globule-EGF factor 8 shortName:MFG-E8  alternativeName: SED1  component recommendedName: Lactadherin short form  /component component recommendedName: Medin  /component")
	(geneName "MFGE8")
	(identifier "Q08431")
	(isSequenceChanged TRUE)
	(keyword
		"Alternative splicing"
		"Amyloid"
		"Angiogenesis"
		"Cell adhesion"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"EGF-like domain"
		"Fertilization"
		"Glycoprotein"
		"Host-virus interaction"
		"Membrane"
		"Polymorphism"
		"Repeat"
		"Secreted"
		"Signal")
	(name "MFGE8")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"MFGM_HUMAN"
		"B2R6M7"
		"Q53FU9"
		"Q7Z3D2"
		"Q9BTL9")
	(sequenceLength 387)
	(species [GK_48887]))

([GK_6] of ReferenceDatabase
	(_displayName "COMPOUND")
	(accessUrl "http://www.genome.ad.jp/dbget-bin/www_bget?cpd:###ID###")
	(DB_ID 6)
	(name "COMPOUND")
	(url "http://www.genome.ad.jp/kegg/"))

([GK_611062] of PsiMod
	(_displayName "L-lysine residue [MOD:00021]")
	(DB_ID 611062)
	(definition "A protein modification that effectively converts a source amino acid residue to L-lysine.")
	(identifier "00021")
	(name "L-lysine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2,6-diaminohexanoic acid"
		"Lys"
		"alpha,epsilon-diaminocaproic acid"))

([GK_611064] of PsiMod
	(_displayName "L-asparagine removal [MOD:01633]")
	(DB_ID 611064)
	(definition "A protein modification that effectively removes or replaces an L-asparagine.")
	(identifier "01633")
	(name "L-asparagine removal")
	(referenceDatabase [GK_437354]))

([GK_611065] of PsiMod
	(_displayName "L-lysine removal [MOD:01642]")
	(DB_ID 611065)
	(definition "A protein modification that effectively removes or replaces an L-lysine.")
	(identifier "01642")
	(name "L-lysine removal")
	(referenceDatabase [GK_437354]))

([GK_611066] of PsiMod
	(_displayName "L-arginine residue [MOD:00011]")
	(DB_ID 611066)
	(definition "A protein modification that effectively converts a source amino acid residue to an L-arginine.")
	(identifier "00011")
	(name "L-arginine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-amino-5-(carbamimidamido)pentanoic acid"
		"Arg"))

([GK_611067] of PsiMod
	(_displayName "L-glutamic acid residue [MOD:00015]")
	(DB_ID 611067)
	(definition "A protein modification that effectively converts a source amino acid residue to an L-glutamic acid.")
	(identifier "00015")
	(name "L-glutamic acid residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-aminopentanedioic acid"
		"Glu"))

([GK_611068] of PsiMod
	(_displayName "glycine residue [MOD:00017]")
	(DB_ID 611068)
	(definition "A protein modification that effectively converts a source amino acid residue to a glycine.")
	(identifier "00017")
	(name "glycine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"aminoethanoic acid"
		"Gly"))

([GK_611069] of PsiMod
	(_displayName "L-proline residue [MOD:00024]")
	(DB_ID 611069)
	(definition "A protein modification that effectively converts a source amino acid residue to L-proline.")
	(identifier "00024")
	(name "L-proline residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-pyrrolidinecarboxylic acid"
		"Pro"
		"pyrrolidine-2-carboxylic acid"))

([GK_611070] of PsiMod
	(_displayName "L-aspartic acid residue [MOD:00013]")
	(DB_ID 611070)
	(definition "A protein modification that effectively converts a source amino acid residue to an L-aspartic acid.")
	(identifier "00013")
	(name "L-aspartic acid residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-aminobutanedioic acid"
		"Asp"
		"aminosuccinic acid"))

([GK_611072] of PsiMod
	(_displayName "L-proline removal [MOD:01645]")
	(DB_ID 611072)
	(definition "A protein modification that effectively removes or replaces an L-proline.")
	(identifier "01645")
	(name "L-proline removal")
	(referenceDatabase [GK_437354]))

([GK_611082] of PsiMod
	(_displayName "L-threonine residue [MOD:00026]")
	(DB_ID 611082)
	(definition "A protein modification that effectively converts a source amino acid residue to L-threonine.")
	(identifier "00026")
	(name "L-threonine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(2S,3R)-2-amino-3-hydroxybutanoic acid"
		"Thr"))

([GK_611087] of PsiMod
	(_displayName "L-threonine removal [MOD:01647]")
	(DB_ID 611087)
	(definition "A protein modification that effectively removes or replaces an L-threonine.")
	(identifier "01647")
	(name "L-threonine removal")
	(referenceDatabase [GK_437354]))

([GK_611088] of PsiMod
	(_displayName "L-glutamine residue [MOD:00016]")
	(DB_ID 611088)
	(definition "A protein modification that effectively converts a source amino acid residue to an L-glutamine.")
	(identifier "00016")
	(name "L-glutamine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-amino-5-pentanediamic acid"
		"Gln"))

([GK_611093] of PsiMod
	(_displayName "L-leucine residue [MOD:00020]")
	(DB_ID 611093)
	(definition "A protein modification that effectively converts a source amino acid residue to an L-leucine.")
	(identifier "00020")
	(name "L-leucine residue")
	(referenceDatabase [GK_437354])
	(synonym
		"(S)-2-amino-4-methylpentanoic acid"
		"Leu"))

([GK_61584] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P98160 HSPG2 recommendedName: Basement membrane-specific heparan sulfate proteoglycan core protein shortName:HSPG  alternativeName: Perlecan shortName:PLC  alternativeName: Perlecan shortName:PLC  component recommendedName: Endorepellin  /component component recommendedName: LG3 peptide  /component")
	(checksum "1")
	(comment "TISSUE SPECIFICITY Found in the basement membranes.PTM Proteolytic processing produces the C-terminal angiogenic peptide, endorepellin. This peptide can be further processed to produce the LG3 peptide.MISCELLANEOUS The LG3 peptide has been found in the urine of patients with end-stage renal disease and in the amniotic fluid of pregnant women with premature rupture of fetal membranes.SIMILARITY Contains 4 EGF-like domains.SIMILARITY Contains 22 Ig-like C2-type (immunoglobulin-like) domains.SIMILARITY Contains 11 laminin EGF-like domains.SIMILARITY Contains 3 laminin G-like domains.SIMILARITY Contains 3 laminin IV type A domains.SIMILARITY Contains 4 LDL-receptor class A domains.SIMILARITY Contains 1 SEA domain.")
	(DB_ID 61584)
	(description "recommendedName: Basement membrane-specific heparan sulfate proteoglycan core protein shortName:HSPG  alternativeName: Perlecan shortName:PLC  alternativeName: Perlecan shortName:PLC  component recommendedName: Endorepellin  /component component recommendedName: LG3 peptide  /component")
	(geneName "HSPG2")
	(identifier "P98160")
	(isSequenceChanged TRUE)
	(keyword
		"Angiogenesis"
		"Basement membrane"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"EGF-like domain"
		"Extracellular matrix"
		"Glycoprotein"
		"Heparan sulfate"
		"Immunoglobulin domain"
		"Laminin EGF-like domain"
		"Polymorphism"
		"Proteoglycan"
		"Repeat"
		"Secreted"
		"Signal")
	(name "HSPG2")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"PGBM_HUMAN"
		"Q16287"
		"Q5SZI3"
		"Q9H3V5")
	(sequenceLength 4391)
	(species [GK_48887]))

([GK_62178] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01236 PRL recommendedName: Prolactin shortName:PRL ")
	(checksum "1")
	(comment "FUNCTION Prolactin acts primarily on the mammary gland by promoting lactation.SIMILARITY Belongs to the somatotropin/prolactin family.")
	(DB_ID 62178)
	(description "recommendedName: Prolactin shortName:PRL ")
	(geneName "PRL")
	(identifier "P01236")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Glycoprotein"
		"Hormone"
		"Lactation"
		"Secreted"
		"Signal")
	(name "PRL")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"PRL_HUMAN"
		"Q15199"
		"Q92996")
	(sequenceLength 227)
	(species [GK_48887]))

([GK_63118] of EntityWithAccessionedSequence
	(_displayName "[Hsa] RIP [cytosol]")
	(compartment [GK_70101])
	(DB_ID 63118)
	(endCoordinate -1)
	(name
		"RIP"
		"Receptor-interacting serine/threonine protein kinase 2 (EC 2.7.1.-) (Serine/threonine protein kinase RIP) (Cell death protein RIP) (Receptor interacting protein)"
		"Receptor-interacting serine/threonine protein kinase 2 "
		"Serine/threonine protein kinase RIP"
		"Cell death protein RIP"
		"Receptor interacting protein")
	(referenceEntity [GK_63119])
	(species [GK_48887])
	(stableIdentifier [GK_367393])
	(startCoordinate 1))

([GK_63119] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q13546 RIPK1 recommendedName: Receptor-interacting serine/threonine-protein kinase 1 ecNumber2.7.11.1/ecNumber  alternativeName: Cell death protein RIP  alternativeName: Receptor-interacting protein 1 shortName:RIP-1  alternativeName: Serine/threonine-protein kinase RIP ")
	(checksum "976E2428D525A9B2")
	(comment "FUNCTION Serine-threonine kinase which transduces inflammatory and cell-death signals (necroptosis) following death receptors ligation, activation of pathogen recognition receptors (PRRs), and DNA damage. Upon activation of TNFR1 by the TNF-alpha family cytokines, TRADD and TRAF2 are recruited to the receptor. Ubiquitination by TRAF2 via 'Lys-63'-link chains acts as a critical enhancer of communication with downstream signal transducers in the mitogen-activated protein kinase pathway and the NF-kappa-B pathway, which in turn mediate downstream events including the activation of genes encoding inflammatory molecules. Polyubiquitinated protein binds to IKBKG/NEMO, the regulatory subunit of the IKK complex, a critical event for NF-kappa-B activation. Interaction with other cellular RHIM-containing adapters initiates gene activation and cell death. RIPK1 and RIPK3 association, in particular, forms a necroptosis-inducing complex.CATALYTIC ACTIVITY ATP + a protein = ADP + a phosphoprotein.ENZYME REGULATION Inhibited by necrostatin-1.SUBUNIT Interacts (via RIP homotypic interaction motif) with RIPK3 (via RIP homotypic interaction motif); this interaction induces RIPK1 necroptosis-specific phosphorylation, formation of the necroptosis-inducing complex. Interacts (via the death domain) with TNFRSF6 (via the death domain) and TRADD (via the death domain). Is recruited by TRADD to TNFRSF1A in a TNF-dependent process. Binds RNF216, EGFR, IKBKG, TRAF1, TRAF2 and TRAF3. Interacts with BNLF1. Interacts with SQSTM1 upon TNF-alpha stimulation. May interact with MAVS/IPS1. Interacts with ZFAND5. Interacts with RBCK1 (By similarity). Interacts with BIRC2/c-IAP1, BIRC3/c-IAP2 and XIAP/BIRC4.DOMAIN Contains a C-terminal death domain (DD) that engages other DD-containing proteins as well as a central (intermediate) region important for NF-kB activation and RHIM-dependent signaling.PTM Proteolytically cleaved by caspase-8 during TNF-induced apoptosis. Cleavage abolishes NF-kappa-B activation and enhances pro-apoptotic signaling through the TRADD-FADD interaction.PTM RIPK1 and RIPK3 undergo reciprocal auto- and trans-phosphorylation. Phosphorylation of Ser-161 by RIPK3 is necessary for the formation of the necroptosis-inducing complex.PTM Ubiquitinated by 'Lys-11'-, 'Lys-48'-, 'Lys-63'- and linear-linked type ubiquitin. Polyubiquitination with 'Lys-63'-linked chains by TRAF2 induces association with the IKK complex. Deubiquitination of 'Lys-63'-linked chains and polyubiquitination with 'Lys-48'-linked chains by TNFAIP3 leads to RIPK1 proteasomal degradation and consequently down-regulates TNF-alpha-induced NFkappa-B signaling. Linear polyubiquitinated; the head-to-tail polyubiquitination is mediated by the LUBAC complex. LPS-mediated activation of NF-kappa-B. Also ubiquitinated with 'Lys-11'-linked chains. Polyubiquitinated with 'Lys-48' and 'Lys-63'-linked chains by BIRC2/c-IAP1 and BIRC3/c-IAP2, leading to activation of NF-kappa-B.SIMILARITY Belongs to the protein kinase superfamily. TKL Ser/Thr protein kinase family.SIMILARITY Contains 1 death domain.SIMILARITY Contains 1 protein kinase domain.")
	(DB_ID 63119)
	(description "recommendedName: Receptor-interacting serine/threonine-protein kinase 1 ecNumber2.7.11.1/ecNumber  alternativeName: Cell death protein RIP  alternativeName: Receptor-interacting protein 1 shortName:RIP-1  alternativeName: Serine/threonine-protein kinase RIP ")
	(geneName
		"RIPK1"
		"RIP"
		"RIP1")
	(identifier "Q13546")
	(isSequenceChanged FALSE)
	(keyword
		"Alternative splicing"
		"ATP-binding"
		"Cell membrane"
		"Complete proteome"
		"Cytoplasm"
		"Isopeptide bond"
		"Kinase"
		"Membrane"
		"Nucleotide-binding"
		"Phosphoprotein"
		"Polymorphism"
		"Reference proteome"
		"Serine/threonine-protein kinase"
		"Transferase"
		"Ubl conjugation")
	(name "RIPK1")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"RIPK1_HUMAN"
		"A0AV89"
		"B2RAG1"
		"B4E3F9"
		"Q13180"
		"Q59H33")
	(sequenceLength 671)
	(species [GK_48887]))

([GK_64108] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02735 SAA1 recommendedName: Serum amyloid A protein shortName:SAA  component recommendedName: Amyloid protein A  alternativeName: Amyloid fibril protein AA  /component component recommendedName: Serum amyloid protein A(2-104)  /component component recommendedName: Serum amyloid protein A(3-104)  /component component recommendedName: Serum amyloid protein A(2-103)  /component component recommendedName: Serum amyloid protein A(2-102)  /component component recommendedName: Serum amyloid protein A(4-101)  /component")
	(checksum "1")
	(comment "FUNCTION Major acute phase reactant. Apolipoprotein of the HDL complex.INDUCTION Upon cytokine stimulation.PTM This protein is the precursor of amyloid protein A, which is formed by the removal of approximately 24 residues from the C-terminal end.POLYMORPHISM Both SAA1 and SAA2 have a number of alleles. We use here the nomenclature of PubMed:1546977. The sequence shown is that of 1-alpha.DISEASE Note=Reactive, secondary amyloidosis is characterized by the extracellular accumulation in various tissues of the SAA protein. These deposits are highly insoluble and resistant to proteolysis; they disrupt tissue structure and compromise function.DISEASE Note=Elevated serum SSA protein levels may be associated with lung cancer.SIMILARITY Belongs to the SAA family.")
	(DB_ID 64108)
	(description "recommendedName: Serum amyloid A protein shortName:SAA  component recommendedName: Amyloid protein A  alternativeName: Amyloid fibril protein AA  /component component recommendedName: Serum amyloid protein A(2-104)  /component component recommendedName: Serum amyloid protein A(3-104)  /component component recommendedName: Serum amyloid protein A(2-103)  /component component recommendedName: Serum amyloid protein A(2-102)  /component component recommendedName: Serum amyloid protein A(4-101)  /component")
	(geneName
		"SAA1"
		"</gene>"
		"<gene>"
		"SAA2")
	(identifier "P02735")
	(isSequenceChanged TRUE)
	(keyword
		"Acute phase"
		"Amyloid"
		"Amyloidosis"
		"Complete proteome"
		"Direct protein sequencing"
		"HDL"
		"Methylation"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "SAA1")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"SAA_HUMAN"
		"P02736"
		"P02737"
		"Q16730"
		"Q16834"
		"Q16835"
		"Q16879"
		"Q3KRB3"
		"Q6FG67"
		"Q96QN0"
		"Q9UCK9"
		"Q9UCL0")
	(sequenceLength 122)
	(species [GK_48887]))

([GK_64128] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02743 APCS recommendedName: Serum amyloid P-component shortName:SAP  alternativeName: 9.5S alpha-1-glycoprotein  component recommendedName: Serum amyloid P-component(1-203)  /component")
	(checksum "1")
	(comment "FUNCTION Can interact with DNA and histones and may scavenge nuclear material released from damaged circulating cells. May also function as a calcium-dependent lectin.COFACTOR Binds 2 calcium ions per subunit.SUBUNIT Homopentamer. Pentaxin (or pentraxin) have a discoid arrangement of 5 non-covalently bound subunits.DISEASE Note=SAP is a precursor of amyloid component P which is found in basement membrane and associated with amyloid deposits.SIMILARITY Belongs to the pentaxin family.SIMILARITY Contains 1 pentaxin domain.")
	(DB_ID 64128)
	(description "recommendedName: Serum amyloid P-component shortName:SAP  alternativeName: 9.5S alpha-1-glycoprotein  component recommendedName: Serum amyloid P-component(1-203)  /component")
	(geneName
		"APCS"
		"PTX2")
	(identifier "P02743")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Amyloid"
		"Calcium"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Glycoprotein"
		"Lectin"
		"Metal-binding"
		"Phosphoprotein"
		"Polymorphism"
		"Secreted"
		"Signal")
	(name "APCS")
	(referenceDatabase [GK_2])
	(secondaryIdentifier "SAMP_HUMAN")
	(sequenceLength 223)
	(species [GK_48887]))

([GK_64296] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P04279 SEMG1 recommendedName: Semenogelin-1  alternativeName: Semenogelin I shortName:SGI  alternativeName: Semenogelin I shortName:SGI  component recommendedName: Alpha-inhibin-92  /component component recommendedName: Alpha-inhibin-31  /component component recommendedName: Seminal basic protein  /component")
	(checksum "1")
	(comment "FUNCTION Predominant protein in semen. It participates in the formation of a gel matrix entrapping the accessory gland secretions and ejaculated spermatozoa. Fragments of semenogelin and/or fragments of the related proteins may contribute to the activation of progressive sperm movements as the gel-forming proteins are fragmented by KLK3/PSA.FUNCTION Alpha-inhibin-92 and alpha-inhibin-31, derived from the proteolytic degradation of semenogelin, inhibit the secretion of pituitary follicle-stimulating hormone.SUBUNIT Occurs in disulfide-linked complexes which may also contain two less abundant 71- and 76-kDa semenogelin-related polypeptides.TISSUE SPECIFICITY Seminal vesicle.PTM Transglutaminase substrate.PTM Rapidly cleaved after ejaculation by KLK3/PSA, resulting in liquefaction of the semen coagulum and the progressive release of motile spermatozoa.SIMILARITY Belongs to the semenogelin family.")
	(DB_ID 64296)
	(description "recommendedName: Semenogelin-1  alternativeName: Semenogelin I shortName:SGI  alternativeName: Semenogelin I shortName:SGI  component recommendedName: Alpha-inhibin-92  /component component recommendedName: Alpha-inhibin-31  /component component recommendedName: Seminal basic protein  /component")
	(geneName
		"SEMG1"
		"SEMG")
	(identifier "P04279")
	(isSequenceChanged TRUE)
	(keyword
		"Alternative splicing"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Polymorphism"
		"Pyrrolidone carboxylic acid"
		"Repeat"
		"Secreted"
		"Signal")
	(name "SEMG1")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"SEMG1_HUMAN"
		"Q53ZV0"
		"Q53ZV1"
		"Q53ZV2"
		"Q6X4I9"
		"Q6Y809"
		"Q6Y822"
		"Q6Y823"
		"Q86U64"
		"Q96QM3")
	(sequenceLength 462)
	(species [GK_48887]))

([GK_6542] of GO_BiologicalProcess
	(_displayName "induction of apoptosis")
	(accession "0006917")
	(DB_ID 6542)
	(definition "A process that directly activates any of the steps required for cell death by apoptosis.")
	(instanceOf
		[GK_6543]
		[GK_160565])
	(name "induction of apoptosis")
	(referenceDatabase [GK_1]))

([GK_6543] of GO_BiologicalProcess
	(_displayName "induction of programmed cell death")
	(accession "0012502")
	(DB_ID 6543)
	(definition "A process which directly activates any of the steps required for programmed cell death.")
	(instanceOf [GK_160227])
	(name "induction of programmed cell death")
	(referenceDatabase [GK_1]))

([GK_65462] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P37840 SNCA recommendedName: Alpha-synuclein  alternativeName: Non-A beta component of AD amyloid  alternativeName: Non-A4 component of amyloid precursor shortName:NACP  alternativeName: Non-A4 component of amyloid precursor shortName:NACP ")
	(checksum "1")
	(comment "FUNCTION May be involved in the regulation of dopamine release and transport. Induces fibrillization of microtubule-associated protein tau. Reduces neuronal responsiveness to various apoptotic stimuli, leading to a decreased caspase-3 activation.TISSUE SPECIFICITY Expressed principally in brain but is also expressed in low concentrations in all tissues examined except in liver. Concentrated in presynaptic nerve terminals.PTM Hallmark lesions of neurodegenerative synucleinopathies contain alpha-synuclein that is modified by nitration of tyrosine residues and possibly by dityrosine cross-linking to generated stable oligomers.DISEASE Note=Genetic alterations of SNCA resulting in aberrant polymerization into fibrils, are associated with several neurodegenerative diseases (synucleinopathies). SNCA fibrillar aggregates represent the major non A-beta component of Alzheimer disease amyloid plaque, and a major component of Lewy body inclusions. They are also found within Lewy body (LB)-like intraneuronal inclusions, glial inclusions and axonal spheroids in neurodegeneration with brain iron accumulation type 1.DISEASE Defects in SNCA are the cause of Parkinson disease type 4 (PARK4) [MIM:605543]. A complex neurodegenerative disorder with manifestations ranging from typical Parkinson disease to dementia with Lewy bodies. Clinical features include parkinsonian symptoms (tremor, rigidity, postural instability and bradykinesia), dementia, diffuse Lewy body pathology, autonomic dysfunction, hallucinations and paranoia.DISEASE Defects in SNCA are the cause of dementia Lewy body (DLB) [MIM:127750]. A neurodegenerative disorder clinically characterized by mental impairment leading to dementia, parkinsonism, often with fluctuating cognitive function, visual hallucinations, falls, syncopal episodes, and sensitivity to neuroleptic medication. Brainstem or cortical intraneuronal accumulations of aggregated proteins (Lewy bodies) are the only essential pathologic features. Patients may also have hippocampal and neocortical senile plaques, sometimes in sufficient number to fulfill the diagnostic criteria for Alzheimer disease.SIMILARITY Belongs to the synuclein family.")
	(DB_ID 65462)
	(description "recommendedName: Alpha-synuclein  alternativeName: Non-A beta component of AD amyloid  alternativeName: Non-A4 component of amyloid precursor shortName:NACP  alternativeName: Non-A4 component of amyloid precursor shortName:NACP ")
	(geneName
		"SNCA"
		"NACP"
		"PARK1")
	(identifier "P37840")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Alzheimer disease"
		"Amyloid"
		"Cell junction"
		"Complete proteome"
		"Cytoplasm"
		"Direct protein sequencing"
		"Disease mutation"
		"Membrane"
		"Neurodegeneration"
		"Nucleus"
		"Parkinson disease"
		"Parkinsonism"
		"Phosphoprotein"
		"Repeat"
		"Synapse"
		"Ubl conjugation")
	(name "SNCA")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"SYUA_HUMAN"
		"A8K2A4"
		"Q13701"
		"Q4JHI3"
		"Q6IAU6")
	(sequenceLength 140)
	(species [GK_48887]))

([GK_65505] of EntityWithAccessionedSequence
	(_displayName "[Hsa] TRAIL receptor-2 [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 65505)
	(endCoordinate -1)
	(name
		"TRAIL receptor-2"
		"Tumor necrosis factor receptor superfamily member 10B precursor (Death receptor 5) (TNF-related apoptosis-inducing ligand receptor 2) (TRAIL receptor-2) (TRAIL-R2)"
		"Tumor necrosis factor receptor superfamily member 10B precursor"
		"Death receptor 5"
		"TNF-related apoptosis-inducing ligand receptor 2"
		"TRAIL-R2")
	(referenceEntity [GK_65506])
	(species [GK_48887])
	(stableIdentifier [GK_371450])
	(startCoordinate 1))

([GK_65506] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:O14763 TNFRSF10B recommendedName: Tumor necrosis factor receptor superfamily member 10B  alternativeName: Death receptor 5  alternativeName: TNF-related apoptosis-inducing ligand receptor 2 shortName:TRAIL receptor 2 shortName:TRAIL-R2  cdAntigenNameCD262/cdAntigenName")
	(checksum "60358EAF2A835870")
	(comment "FUNCTION Receptor for the cytotoxic ligand TNFSF10/TRAIL. The adapter molecule FADD recruits caspase-8 to the activated receptor. The resulting death-inducing signaling complex (DISC) performs caspase-8 proteolytic activation which initiates the subsequent cascade of caspases (aspartate-specific cysteine proteases) mediating apoptosis. Promotes the activation of NF-kappa-B.SUBUNIT Homotrimer. Can interact with TRADD and RIPK1.TISSUE SPECIFICITY Widely expressed in adult and fetal tissues; very highly expressed in tumor cell lines such as HeLaS3, K-562, HL-60, SW480, A-549 and G-361; highly expressed in heart, peripheral blood lymphocytes, liver, pancreas, spleen, thymus, prostate, ovary, uterus, placenta, testis, esophagus, stomach and throughout the intestinal tract; not detectable in brain.INDUCTION Regulated by p53/TP53.DISEASE Defects in TNFRSF10B may be a cause of head and neck squamous cell carcinomas (HNSCC) [MIM:275355]; also known as squamous cell carcinoma of the head and neck.SIMILARITY Contains 1 death domain.SIMILARITY Contains 3 TNFR-Cys repeats.")
	(DB_ID 65506)
	(description "recommendedName: Tumor necrosis factor receptor superfamily member 10B  alternativeName: Death receptor 5  alternativeName: TNF-related apoptosis-inducing ligand receptor 2 shortName:TRAIL receptor 2 shortName:TRAIL-R2  cdAntigenNameCD262/cdAntigenName")
	(geneName
		"TNFRSF10B"
		"DR5"
		"KILLER"
		"TRAILR2"
		"TRICK2"
		"ZTNFR9"
		"UNQ160/PRO186")
	(identifier "O14763")
	(isSequenceChanged FALSE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Apoptosis"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Membrane"
		"Polymorphism"
		"Receptor"
		"Reference proteome"
		"Repeat"
		"Signal"
		"Transmembrane"
		"Transmembrane helix")
	(name "TNFRSF10B")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TR10B_HUMAN"
		"O14720"
		"O15508"
		"O15517"
		"O15531"
		"Q6UXM8"
		"Q7Z360"
		"Q9BVE0")
	(sequenceLength 440)
	(species [GK_48887]))

([GK_66186] of EntityWithAccessionedSequence
	(_displayName "[Hsa] TRAIL [extracellular region]")
	(compartment [GK_984])
	(DB_ID 66186)
	(endCoordinate -1)
	(name
		"TRAIL"
		"Tumor necrosis factor ligand superfamily member 10 (TNF-related apoptosis inducing ligand) (TRAIL protein) (Apo-2 ligand) (Apo-2L)"
		"Tumor necrosis factor ligand superfamily member 10"
		"TNF-related apoptosis inducing ligand"
		"TRAIL protein"
		"Apo-2 ligand"
		"Apo-2L")
	(referenceEntity [GK_66187])
	(species [GK_48887])
	(stableIdentifier [GK_366902])
	(startCoordinate 1))

([GK_66187] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P50591 TNFSF10 recommendedName: Tumor necrosis factor ligand superfamily member 10  alternativeName: Apo-2 ligand shortName:Apo-2L  alternativeName: TNF-related apoptosis-inducing ligand shortName:Protein TRAIL  cdAntigenNameCD253/cdAntigenName")
	(checksum "DDAAAF78DAAB2F6D")
	(comment "FUNCTION Cytokine that binds to TNFRSF10A/TRAILR1, TNFRSF10B/TRAILR2, TNFRSF10C/TRAILR3, TNFRSF10D/TRAILR4 and possibly also to TNFRSF11B/OPG. Induces apoptosis. Its activity may be modulated by binding to the decoy receptors TNFRSF10C/TRAILR3, TNFRSF10D/TRAILR4 and TNFRSF11B/OPG that cannot induce apoptosis.COFACTOR Binds 1 zinc ion per trimer.SUBUNIT Homotrimer.TISSUE SPECIFICITY Widespread; most predominant in spleen, lung and prostate.SIMILARITY Belongs to the tumor necrosis factor family.")
	(DB_ID 66187)
	(description "recommendedName: Tumor necrosis factor ligand superfamily member 10  alternativeName: Apo-2 ligand shortName:Apo-2L  alternativeName: TNF-related apoptosis-inducing ligand shortName:Protein TRAIL  cdAntigenNameCD253/cdAntigenName")
	(geneName
		"TNFSF10"
		"APO2L"
		"TRAIL")
	(identifier "P50591")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Apoptosis"
		"Complete proteome"
		"Cytokine"
		"Membrane"
		"Metal-binding"
		"Polymorphism"
		"Reference proteome"
		"Signal-anchor"
		"Transmembrane"
		"Transmembrane helix"
		"Zinc")
	(name "TNFSF10")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TNF10_HUMAN"
		"A1Y9B3")
	(sequenceLength 281)
	(species [GK_48887]))

([GK_66212] of EntityWithAccessionedSequence
	(_displayName "[Hsa] FASL [extracellular region]")
	(compartment [GK_984])
	(DB_ID 66212)
	(endCoordinate -1)
	(name
		"FASL"
		"Tumor necrosis factor ligand superfamily member 6 (FAS antigen ligand) (Apoptosis antigen ligand) (APTL) (CD178 antigen)"
		"Tumor necrosis factor ligand superfamily member 6"
		"FAS antigen ligand"
		"Apoptosis antigen ligand"
		"APTL"
		"CD178 antigen")
	(referenceEntity [GK_66213])
	(species [GK_48887])
	(stableIdentifier [GK_364838])
	(startCoordinate 1))

([GK_66213] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P48023 FASLG recommendedName: Tumor necrosis factor ligand superfamily member 6  alternativeName: Apoptosis antigen ligand shortName:APTL  alternativeName: CD95 ligand shortName:CD95-L  alternativeName: Fas antigen ligand shortName:Fas ligand shortName:FasL  cdAntigenNameCD178/cdAntigenName component recommendedName: Tumor necrosis factor ligand superfamily member 6, membrane form  /component component recommendedName: Tumor necrosis factor ligand superfamily member 6, soluble form  alternativeName: Receptor-binding FasL ectodomain  alternativeName: Soluble Fas ligand shortName:sFasL  /component component recommendedName: ADAM10-processed FasL form shortName:APL  /component component recommendedName: FasL intracellular domain shortName:FasL ICD  alternativeName: SPPL2A-processed FasL form shortName:SPA  /component")
	(checksum "A8A6EB358246E9BB")
	(comment "FUNCTION Cytokine that binds to TNFRSF6/FAS, a receptor that transduces the apoptotic signal into cells. May be involved in cytotoxic T-cell mediated apoptosis and in T-cell development. TNFRSF6/FAS-mediated apoptosis may have a role in the induction of peripheral tolerance, in the antigen-stimulated suicide of mature T-cells, or both. Binding to the decoy receptor TNFRSF6B/DcR3 modulates its effects.FUNCTION The FasL intracellular domain (FasL ICD) cytoplasmic form induces gene transcription inhibition.SUBUNIT Homotrimer (Probable). Interacts with ARHGAP9, BAIAP2L1, BTK, CACNB3, CACNB4, CRK, DLG2, DNMBP, DOCK4, EPS8L3, FGR, FYB, FYN, HCK, ITK, ITSN2, KALRN, LYN, MACC1, MIA, MPP4, MYO15A, NCF1, NCK1, NCK2, NCKIPSD, OSTF1, PIK3R1, PSTPIP1, RIMBP3C, SAMSN1, SH3GL3, SH3PXD2B, SH3PXD2A, SH3RF2, SKAP2, SNX33, SNX9, SORBS3, SPTA1, SRC, SRGAP1, SRGAP2, SRGAP3, TEC, TJP3 and YES1.PTM The soluble form derives from the membrane form by proteolytic processing. The membrane-bound form undergoes two successive intramembrane proteolytic cleavages. The first one is processed by ADAM10 producing an N-terminal fragment, which lacks the receptor-binding extracellular domain. This ADAM10-processed FasL (FasL APL) remnant form is still membrane anchored and further processed by SPPL2A that liberates the FasL intracellular domain (FasL ICD). FasL shedding by ADAM10 is a prerequisite for subsequent intramembrane cleavage by SPPL2A in T-cells.PTM N-glycosylated.PTM Phosphorylated by FGR on tyrosine residues; this is required for ubiquitination and subsequent internalization.PTM Monoubiquitinated.DISEASE Defects in FASLG are the cause of autoimmune lymphoproliferative syndrome type 1B (ALPS1B) [MIM:601859]; also known as Canale-Smith syndrome (CSS). ALPS is a childhood syndrome involving hemolytic anemia and thrombocytopenia with massive lymphadenopathy and splenomegaly.SIMILARITY Belongs to the tumor necrosis factor family.")
	(DB_ID 66213)
	(description "recommendedName: Tumor necrosis factor ligand superfamily member 6  alternativeName: Apoptosis antigen ligand shortName:APTL  alternativeName: CD95 ligand shortName:CD95-L  alternativeName: Fas antigen ligand shortName:Fas ligand shortName:FasL  cdAntigenNameCD178/cdAntigenName component recommendedName: Tumor necrosis factor ligand superfamily member 6, membrane form  /component component recommendedName: Tumor necrosis factor ligand superfamily member 6, soluble form  alternativeName: Receptor-binding FasL ectodomain  alternativeName: Soluble Fas ligand shortName:sFasL  /component component recommendedName: ADAM10-processed FasL form shortName:APL  /component component recommendedName: FasL intracellular domain shortName:FasL ICD  alternativeName: SPPL2A-processed FasL form shortName:SPA  /component")
	(geneName
		"FASLG"
		"APT1LG1"
		"CD95L"
		"FASL"
		"TNFSF6")
	(identifier "P48023")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Apoptosis"
		"Cell membrane"
		"Complete proteome"
		"Cytokine"
		"Cytoplasmic vesicle"
		"Disulfide bond"
		"Glycoprotein"
		"Lysosome"
		"Membrane"
		"Nucleus"
		"Polymorphism"
		"Reference proteome"
		"Repressor"
		"Secreted"
		"Signal-anchor"
		"Transcription"
		"Transcription regulation"
		"Transmembrane"
		"Transmembrane helix"
		"Ubl conjugation")
	(name "FASLG")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TNFL6_HUMAN"
		"Q9BZP9")
	(sequenceLength 281)
	(species [GK_48887]))

([GK_66220] of EntityWithAccessionedSequence
	(_displayName "[Hsa] TNF-alpha [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 66220)
	(endCoordinate -1)
	(name
		"TNF-alpha"
		"Tumor necrosis factor precursor (TNF-alpha) (Tumor necrosis factor ligand superfamily member 2) (Cachectin)"
		"Tumor necrosis factor precursor"
		"Tumor necrosis factor ligand superfamily member 2"
		"TNF-a"
		"Cachectin")
	(referenceEntity [GK_66221])
	(species [GK_48887])
	(stableIdentifier [GK_370748])
	(startCoordinate 1))

([GK_66221] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P01375 TNF recommendedName: Tumor necrosis factor  alternativeName: Cachectin  alternativeName: TNF-alpha  alternativeName: Tumor necrosis factor ligand superfamily member 2 shortName:TNF-a  component recommendedName: Tumor necrosis factor, membrane form  alternativeName: N-terminal fragment shortName:NTF  /component component recommendedName: Intracellular domain 1 shortName:ICD1  /component component recommendedName: Intracellular domain 2 shortName:ICD2  /component component recommendedName: C-domain 1  /component component recommendedName: C-domain 2  /component component recommendedName: Tumor necrosis factor, soluble form  /component")
	(checksum "3DF90F96C9031FFE")
	(comment "FUNCTION Cytokine that binds to TNFRSF1A/TNFR1 and TNFRSF1B/TNFBR. It is mainly secreted by macrophages and can induce cell death of certain tumor cell lines. It is potent pyrogen causing fever by direct action or by stimulation of interleukin-1 secretion and is implicated in the induction of cachexia, Under certain conditions it can stimulate cell proliferation and induce cell differentiation.FUNCTION The TNF intracellular domain (ICD) form induces IL12 production in dendritic cells.SUBUNIT Homotrimer. Interacts with SPPL2B.PTM The soluble form derives from the membrane form by proteolytic processing. The membrane-bound form is further proteolytically processed by SPPL2A or SPPL2B through regulated intramembrane proteolysis producing TNF intracellular domains (ICD1 and ICD2) released in the cytosol and TNF C-domain 1 and C-domain 2 secreted into the extracellular space.PTM The membrane form, but not the soluble form, is phosphorylated on serine residues. Dephosphorylation of the membrane form occurs by binding to soluble TNFRSF1A/TNFR1.PTM O-glycosylated; glycans contain galactose, N-acetylgalactosamine and N-acetylneuraminic acid.POLYMORPHISM Genetic variations in TNF influence susceptibility to hepatitis B virus (HBV) infection [MIM:610424].POLYMORPHISM Genetic variations in TNF are involved in susceptibility to malaria [MIM:611162].DISEASE Genetic variations in TNF are a cause of susceptibility psoriatic arthritis (PSORAS) [MIM:607507]. PSORAS is an inflammatory, seronegative arthritis associated with psoriasis. It is a heterogeneous disorder ranging from a mild, non-destructive disease to a severe, progressive, erosive arthropathy. Five types of psoriatic arthritis have been defined: asymmetrical oligoarthritis characterized by primary involvement of the small joints of the fingers or toes; asymmetrical arthritis which involves the joints of the extremities; symmetrical polyarthritis characterized by a rheumatoidlike pattern that can involve hands, wrists, ankles, and feet; arthritis mutilans, which is a rare but deforming and destructive condition; arthritis of the sacroiliac joints and spine (psoriatic spondylitis).SIMILARITY Belongs to the tumor necrosis factor family.")
	(DB_ID 66221)
	(description "recommendedName: Tumor necrosis factor  alternativeName: Cachectin  alternativeName: TNF-alpha  alternativeName: Tumor necrosis factor ligand superfamily member 2 shortName:TNF-a  component recommendedName: Tumor necrosis factor, membrane form  alternativeName: N-terminal fragment shortName:NTF  /component component recommendedName: Intracellular domain 1 shortName:ICD1  /component component recommendedName: Intracellular domain 2 shortName:ICD2  /component component recommendedName: C-domain 1  /component component recommendedName: C-domain 2  /component component recommendedName: Tumor necrosis factor, soluble form  /component")
	(geneName
		"TNF"
		"TNFA"
		"TNFSF2")
	(identifier "P01375")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Cell membrane"
		"Complete proteome"
		"Cytokine"
		"Direct protein sequencing"
		"Disulfide bond"
		"Glycoprotein"
		"Lipoprotein"
		"Membrane"
		"Myristate"
		"Phosphoprotein"
		"Polymorphism"
		"Reference proteome"
		"Secreted"
		"Signal-anchor"
		"Transmembrane"
		"Transmembrane helix")
	(name "TNF")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TNFA_HUMAN"
		"O43647"
		"Q9P1Q2"
		"Q9UIV3")
	(sequenceLength 233)
	(species [GK_48887]))

([GK_66248] of EntityWithAccessionedSequence
	(_displayName "[Hsa] FAS Receptor [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 66248)
	(endCoordinate -1)
	(name
		"FAS Receptor"
		"Tumor necrosis factor receptor superfamily member 6 precursor (FASL receptor) (Apoptosis-mediating surface antigen FAS) (Apo-1 antigen) (CD95)"
		"Tumor necrosis factor receptor superfamily member 6 precursor"
		"FASL receptor"
		"Apoptosis-mediating surface antigen FAS"
		"Apo-1 antigen"
		"CD95")
	(referenceEntity [GK_66249])
	(species [GK_48887])
	(stableIdentifier [GK_364006])
	(startCoordinate 1))

([GK_66249] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P25445 FAS recommendedName: Tumor necrosis factor receptor superfamily member 6  alternativeName: Apo-1 antigen  alternativeName: Apoptosis-mediating surface antigen FAS  alternativeName: FASLG receptor  cdAntigenNameCD95/cdAntigenName")
	(checksum "0139942535111410")
	(comment "FUNCTION Receptor for TNFSF6/FASLG. The adapter molecule FADD recruits caspase-8 to the activated receptor. The resulting death-inducing signaling complex (DISC) performs caspase-8 proteolytic activation which initiates the subsequent cascade of caspases (aspartate-specific cysteine proteases) mediating apoptosis. FAS-mediated apoptosis may have a role in the induction of peripheral tolerance, in the antigen-stimulated suicide of mature T-cells, or both. The secreted isoforms 2 to 6 block apoptosis (in vitro).SUBUNIT Binds DAXX. Interacts with HIPK3. Part of a complex containing HIPK3 and FADD (By similarity). Binds RIPK1 and FAIM2. Interacts with BRE and FEM1B. Interacts with FADD.TISSUE SPECIFICITY Isoform 1 and isoform 6 are expressed at equal levels in resting peripheral blood mononuclear cells. After activation there is an increase in isoform 1 and decrease in the levels of isoform 6.DOMAIN Contains a death domain involved in the binding of FADD, and maybe to other cytosolic adapter proteins.PTM N- and O-glycosylated. O-glycosylated with core 1 or possibly core 8 glycans.DISEASE Defects in FAS are the cause of autoimmune lymphoproliferative syndrome type 1A (ALPS1A) [MIM:601859]; also known as Canale-Smith syndrome (CSS). ALPS is a childhood syndrome involving hemolytic anemia and thrombocytopenia with massive lymphadenopathy and splenomegaly.SIMILARITY Contains 1 death domain.SIMILARITY Contains 3 TNFR-Cys repeats.")
	(DB_ID 66249)
	(description "recommendedName: Tumor necrosis factor receptor superfamily member 6  alternativeName: Apo-1 antigen  alternativeName: Apoptosis-mediating surface antigen FAS  alternativeName: FASLG receptor  cdAntigenNameCD95/cdAntigenName")
	(geneName
		"FAS"
		"APT1"
		"FAS1"
		"TNFRSF6")
	(identifier "P25445")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Apoptosis"
		"Cell membrane"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycoprotein"
		"Membrane"
		"Phosphoprotein"
		"Polymorphism"
		"Receptor"
		"Reference proteome"
		"Repeat"
		"Secreted"
		"Signal"
		"Transmembrane"
		"Transmembrane helix")
	(name "FAS")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TNR6_HUMAN"
		"A9UJX4"
		"B6VNV4"
		"Q14292"
		"Q14293"
		"Q14294"
		"Q14295"
		"Q16652"
		"Q5T9P1"
		"Q5T9P2"
		"Q6SSE9")
	(sequenceLength 335)
	(species [GK_48887]))

([GK_66344] of EntityWithAccessionedSequence
	(_displayName "[Hsa] TNF-RI [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 66344)
	(endCoordinate -1)
	(name
		"TNF-RI"
		"Tumor necrosis factor receptor superfamily member 1A precursor (p60) (TNF-R1) (TNF-RI) (p55) (CD120a) (Contains: Tumor necrosis factor binding protein 1 (TBPI))"
		"Tumor necrosis factor receptor superfamily member 1A precursor"
		"p60"
		"TNF-R1"
		"p55"
		"CD120a"
		"Tumor necrosis factor binding protein 1"
		"TBPI")
	(referenceEntity [GK_66345])
	(species [GK_48887])
	(stableIdentifier [GK_368490])
	(startCoordinate 1))

([GK_66345] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P19438 TNFRSF1A recommendedName: Tumor necrosis factor receptor superfamily member 1A  alternativeName: Tumor necrosis factor receptor 1 shortName:TNF-R1  alternativeName: Tumor necrosis factor receptor type I shortName:TNF-RI shortName:TNFR-I  alternativeName: p55  alternativeName: p60  cdAntigenNameCD120a/cdAntigenName component recommendedName: Tumor necrosis factor receptor superfamily member 1A, membrane form  /component component recommendedName: Tumor necrosis factor-binding protein 1 shortName:TBPI  /component")
	(checksum "4CEFBA96D03B8225")
	(comment "FUNCTION Receptor for TNFSF2/TNF-alpha and homotrimeric TNFSF1/lymphotoxin-alpha. The adapter molecule FADD recruits caspase-8 to the activated receptor. The resulting death-inducing signaling complex (DISC) performs caspase-8 proteolytic activation which initiates the subsequent cascade of caspases (aspartate-specific cysteine proteases) mediating apoptosis. Contributes to the induction of non-cytocidal TNF effects including anti-viral state and activation of the acid sphingomyelinase.SUBUNIT Binding of TNF to the extracellular domain leads to homotrimerization. The aggregated death domains provide a novel molecular interface that interacts specifically with the death domain of TRADD. Various TRADD-interacting proteins such as TRAFS, RIPK1 and possibly FADD, are recruited to the complex by their association with TRADD. This complex activates at least two distinct signaling cascades, apoptosis and NF-kappa-B signaling. Interacts with BAG4, BRE, FEM1B, GRB2, SQSTM1 and TRPC4AP. Interacts with HCV core protein. Interacts with human cytomegalovirus/HHV-5 protein UL138.DOMAIN The domain that induces A-SMASE is probably identical to the death domain. The N-SMASE activation domain (NSD) is both necessary and sufficient for activation of N-SMASE.PTM The soluble form is produced from the membrane form by proteolytic processing.DISEASE Defects in TNFRSF1A are the cause of familial hibernian fever (FHF) [MIM:142680]; also known as tumor necrosis factor receptor-associated periodic syndrome (TRAPS). FHF is a hereditary periodic fever syndrome characterized by recurrent fever, abdominal pain, localized tender skin lesions and myalgia. Reactive amyloidosis is the main complication and occurs in 25% of cases.SIMILARITY Contains 1 death domain.SIMILARITY Contains 4 TNFR-Cys repeats.")
	(DB_ID 66345)
	(description "recommendedName: Tumor necrosis factor receptor superfamily member 1A  alternativeName: Tumor necrosis factor receptor 1 shortName:TNF-R1  alternativeName: Tumor necrosis factor receptor type I shortName:TNF-RI shortName:TNFR-I  alternativeName: p55  alternativeName: p60  cdAntigenNameCD120a/cdAntigenName component recommendedName: Tumor necrosis factor receptor superfamily member 1A, membrane form  /component component recommendedName: Tumor necrosis factor-binding protein 1 shortName:TBPI  /component")
	(geneName
		"TNFRSF1A"
		"TNFAR"
		"TNFR1")
	(identifier "P19438")
	(isSequenceChanged FALSE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Amyloidosis"
		"Apoptosis"
		"Cell membrane"
		"Cleavage on pair of basic residues"
		"Complete proteome"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Glycoprotein"
		"Host-virus interaction"
		"Membrane"
		"Polymorphism"
		"Receptor"
		"Reference proteome"
		"Repeat"
		"Secreted"
		"Signal"
		"Transmembrane"
		"Transmembrane helix")
	(name "TNFRSF1A")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TNR1A_HUMAN"
		"A8K4X3"
		"B2RDE4"
		"B3KPQ1"
		"B4DQB7"
		"B4E309"
		"D3DUR1"
		"Q9UCA4")
	(sequenceLength 455)
	(species [GK_48887]))

([GK_66370] of EntityWithAccessionedSequence
	(_displayName "[Hsa] TRAF2 [cytosol]")
	(compartment [GK_70101])
	(DB_ID 66370)
	(endCoordinate -1)
	(name
		"TRAF2"
		"TNF receptor associated factor 2"
		"Tumor necrosis factor type 2 receptor associated protein 3")
	(referenceEntity [GK_66371])
	(species [GK_48887])
	(stableIdentifier [GK_369343])
	(startCoordinate 1))

([GK_66371] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q12933 TRAF2 recommendedName: TNF receptor-associated factor 2 ecNumber6.3.2.-/ecNumber  alternativeName: E3 ubiquitin-protein ligase TRAF2  alternativeName: Tumor necrosis factor type 2 receptor-associated protein 3 ")
	(checksum "C508BE185B783B20")
	(comment "FUNCTION Regulates activation of NF-kappa-B and JNK and plays a central role in the regulation of cell survival and apoptosis. Required for normal antibody isotype switching from IgM to IgG. Has E3 ubiquitin-protein ligase activity and promotes 'Lys-63'-linked ubiquitination of target proteins, such as BIRC3, RIPK1 and TICAM1. Is an essential constituent of several E3 ubiquitin-protein ligase complexes, where it promotes the ubiquitination of target proteins by bringing them into contact with other E3 ubiquitin ligases. Regulates BIRC2 and BIRC3 protein levels by inhibiting their autoubiquitination and subsequent degradation; this does not depend on the TRAF2 RING-type zinc finger domain.ENZYME REGULATION Has very low E3 ubiquitin ligase activity in the absence of sphingosine-1-phosphate. E3 ubiquitin ligase activity is strongly activated by cytoplasmic sphingosine-1-phosphate.PATHWAY Protein modification; protein ubiquitination.SUBUNIT Homotrimer, and heterotrimer with TRAF1 and TRAF3 (via TRAF domain). The domain containing the RING-type and the first TRAF-type zinc finger can also form homodimers (in vitro). Interacts with TNFRSF1B/TNFR2, TNFRSF4, TNFRSF5/CD40, CD27/TNFRSF7, TNFRSF8/CD30, TNFRSF9/CD137, TNFRSF11A/RANK, TNFRSF13B/TACI, TNFRSF14, TNFRSF16/NGFR, TNFRSF17/BCMA, TNFRSF18/AITR, TNFRSF19/TROY, TNFRSF19L/RELT, XEDAR, EDAR, Epstein-Barr virus BNFL1/LMP-1 and IL15RA. Interacts with CDK9, CSK, MAP3K1, MAP3K5, MAP3K11, MAP3K14, MAP4K2, RIPK1, RIPK2, TNIK, TBK1, SPHK1, TRADD, TRAFD1, TRAIP, TANK/ITRAF, TNFAIP3, TDP2, MAVS/IPS1, TICAM1 and TRPC4AP. Interacts with CASP8AP2, NFATC2IP, PEG3 and HIVEP3 (By similarity). Interacts with BIRC2 and BIRC3 N-terminus; a single BIRC2 or BIRC3 molecule interacts with a heterotrimer formed by TRAF1 and TRAF2, or a TRAF2 homotrimer. Identified in a complex composed of TRAF2, TRAF3, BIRC2 and BIRC3. Interaction with BIRC2 and/or BIRC3 is essential for degradation of NFKBIA and activation of NF-kappa-B. Interacts with CYLD, USP48, DAB2IP, IKKA and IKKB. Identified in a complex with TNFRSF1A, RIPK1 and IKKB. Interacts (via 'Lys-63'-linked polyubiquitin chains) with TAB2 and TAB3. Interacts with ERN1 and TAOK3. Interaction with TAOK3 is facilitated under ER stress conditions, such as treatment with tunicamycin, and may promote TRAF2 phosphorylation.DOMAIN The coiled coil domain mediates homo- and hetero-oligomerization.DOMAIN The MATH/TRAF domain binds to receptor cytoplasmic domains.DOMAIN The RING-type zinc finger domain is essential for E3 ubiquitin-protein ligase activity. It is not essential for the stabilization of BIRC2, or for the ubiquitination of RIPK1 in response to TNFR1 signaling.PTM Phosphorylated at several serine residues within the first 128 amino acid residues. Phosphorylated at Thr-117 in response to signaling via TNF and TNFRSF1A. Phosphorylation at Thr-117 is required for 'Lys-63'-linked polyubiquitination, but not for 'Lys-48'-linked polyubiquitination. Phosphorylation at Thr-117 is important for interaction with IKKA and IKKB, activation of IKK and subsequent activation of NF-kappa-B.PTM Undergoes both 'Lys-48'-linked and 'Lys-63'-linked polyubiquitination. Polyubiquitinated via 'Lys-63'-linked ubiquitin in response to TNF signaling; this requires prior phosphorylation at Thr-117. 'Lys-63'-linked polyubiquitination promotes TRAF2-mediated activation of NF-kappa-B. Can be polyubiquitinated at several Lys residues via 'Lys-48'-linked ubiquitin chains in response to TNF signaling, leading to proteasomal degradation. Autoubiquitinated, leading to its subsequent proteasomal degradation. Polyubiquitinated by BIRC2 and SIAH2, leading to its subsequent proteasomal degradation. Deubiquitinated by CYLD, a protease that specifically cleaves 'Lys-63'-linked polyubiquitin chains.SIMILARITY Belongs to the TNF receptor-associated factor family. A subfamily.SIMILARITY Contains 1 MATH domain.SIMILARITY Contains 1 RING-type zinc finger.SIMILARITY Contains 2 TRAF-type zinc fingers.")
	(DB_ID 66371)
	(description "recommendedName: TNF receptor-associated factor 2 ecNumber6.3.2.-/ecNumber  alternativeName: E3 ubiquitin-protein ligase TRAF2  alternativeName: Tumor necrosis factor type 2 receptor-associated protein 3 ")
	(geneName
		"TRAF2"
		"TRAP3")
	(identifier "Q12933")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Acetylation"
		"Alternative splicing"
		"Apoptosis"
		"Coiled coil"
		"Complete proteome"
		"Cytoplasm"
		"Isopeptide bond"
		"Ligase"
		"Lipid-binding"
		"Metal-binding"
		"Phosphoprotein"
		"Reference proteome"
		"Repeat"
		"Ubl conjugation"
		"Ubl conjugation pathway"
		"Zinc"
		"Zinc-finger")
	(name "TRAF2")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TRAF2_HUMAN"
		"A8K107"
		"B4DPJ7"
		"Q7Z337"
		"Q96NT2")
	(sequenceLength 501)
	(species [GK_48887]))

([GK_66376] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Tumor necrosis factor receptor type 1 associated DEATH domain protein [cytosol]")
	(compartment [GK_70101])
	(DB_ID 66376)
	(endCoordinate -1)
	(name
		"Tumor necrosis factor receptor type 1 associated DEATH domain protein"
		"TNFR1-associated DEATH domain protein"
		"TNFRSF1A-associated via death domain")
	(referenceEntity [GK_66377])
	(species [GK_48887])
	(stableIdentifier [GK_365494])
	(startCoordinate 1))

([GK_66377] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:Q15628 TRADD recommendedName: Tumor necrosis factor receptor type 1-associated DEATH domain protein shortName:TNFR1-associated DEATH domain protein  alternativeName: TNFRSF1A-associated via death domain ")
	(checksum "5645D7E63E5FF05A")
	(comment "FUNCTION Adapter molecule for TNFRSF1A/TNFR1 that specifically associates with the cytoplasmic domain of activated TNFRSF1A/TNFR1 mediating its interaction with FADD. Overexpression of TRADD leads to two major TNF-induced responses, apoptosis and activation of NF-kappa-B.SUBUNIT Heterodimer with TNFRSF1A/TNFR1. Interacts with DAB2IP, FADD, HIPK2, KRT14, KRT16, KRT17, KRT18, RIPK1, SQSTM1, TRAF1, TRAF2 and TRPC4AP.TISSUE SPECIFICITY Found in all examined tissues.DOMAIN Requires the intact DEATH domain to associate with TNFRSF1A/TNFR1.SIMILARITY Contains 1 death domain.")
	(DB_ID 66377)
	(description "recommendedName: Tumor necrosis factor receptor type 1-associated DEATH domain protein shortName:TNFR1-associated DEATH domain protein  alternativeName: TNFRSF1A-associated via death domain ")
	(geneName "TRADD")
	(identifier "Q15628")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Apoptosis"
		"Complete proteome"
		"Cytoplasm"
		"Cytoskeleton"
		"Reference proteome")
	(name "TRADD")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TRADD_HUMAN"
		"B2RDS3"
		"Q52NZ1")
	(sequenceLength 312)
	(species [GK_48887]))

([GK_66401] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02788 LTF  Lactotransferrin shortName:Lactoferrin  alternativeName: Talalactoferrin  component recommendedName: Kaliocin-1  /component component recommendedName: Lactoferroxin-A  /component component recommendedName: Lactoferroxin-B  /component component recommendedName: Lactoferroxin-C  /component")
	(checksum "1")
	(comment "CATALYTIC ACTIVITY Preferential at -Arg-Ser-Arg-Arg-|- and -Arg-Arg-Ser-Arg-|-, and of Z-Phe-Arg-|-aminomethylcoumarin.SUBUNIT Monomer.SIMILARITY Belongs to the transferrin family.SIMILARITY Contains 2 transferrin-like domains.")
	(DB_ID 66401)
	(description " Lactotransferrin shortName:Lactoferrin  alternativeName: Talalactoferrin  component recommendedName: Kaliocin-1  /component component recommendedName: Lactoferroxin-A  /component component recommendedName: Lactoferroxin-B  /component component recommendedName: Lactoferroxin-C  /component")
	(geneName
		"LTF"
		"LF")
	(identifier "P02788")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Antibiotic"
		"Antimicrobial"
		"Complete proteome"
		"Direct protein sequencing"
		"Disulfide bond"
		"Glycoprotein"
		"Hydrolase"
		"Ion transport"
		"Iron"
		"Iron transport"
		"Metal-binding"
		"Phosphoprotein"
		"Polymorphism"
		"Protease"
		"Repeat"
		"Secreted"
		"Serine protease"
		"Signal"
		"Transport")
	(name "LTF")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TRFL_HUMAN"
		"O00756"
		"Q16780"
		"Q16785"
		"Q16786"
		"Q16789"
		"Q8IU92"
		"Q8IZH6"
		"Q8TCD2"
		"Q96KZ4"
		"Q96KZ5"
		"Q9H1Z3"
		"Q9UCY5")
	(sequenceLength 710)
	(species [GK_48887]))

([GK_66545] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P02766 TTR recommendedName: Transthyretin  alternativeName: ATTR  alternativeName: Prealbumin  alternativeName: TBPA ")
	(checksum "1")
	(comment "DOMAIN Each monomer has two 4-stranded beta sheets and the shape of a prolate ellipsoid. Antiparallel beta-sheet interactions link monomers into dimers. A short loop from each monomer forms the main dimer-dimer interaction. These two pairs of loops separate the opposed, convex beta-sheets of the dimers to form an internal channel.MISCELLANEOUS Tetramer dissociation and partial unfolding leads to the formation of aggregates and amyloid fibrils. Small molecules that occupy at least one of the thyroid hormone binding sites stabilize the tetramer, and thereby stabilize the native state and protect against misfolding and the formation of amyloid fibrils.MISCELLANEOUS Two binding sites for thyroxine are located in the channel. Less than 1% of plasma prealbumin molecules are normally involved in thyroxine transport. L-thyroxine binds to the transthyretin by an order of magnitude stronger than does the triiodo-L-thyronine. Thyroxine-binding globulin is the major carrier protein for thyroid hormones in man.MISCELLANEOUS About 40% of plasma transthyretin circulates in a tight protein-protein complex with the plasma retinol-binding protein (RBP). The formation of the complex with RBP stabilizes the binding of retinol to RBP and decreases the glomerular filtration and renal catabolism of the relatively small RBP molecule. There is evidence for 2 binding sites for RBP, one possibly being a region that includes Ile-104, located on the outer surface of the transthyretin molecule.SIMILARITY Belongs to the transthyretin family.")
	(DB_ID 66545)
	(description "recommendedName: Transthyretin  alternativeName: ATTR  alternativeName: Prealbumin  alternativeName: TBPA ")
	(geneName
		"TTR"
		"PALB")
	(identifier "P02766")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Amyloid"
		"Amyloidosis"
		"Complete proteome"
		"Cytoplasm"
		"Direct protein sequencing"
		"Disease mutation"
		"Gamma-carboxyglutamic acid"
		"Glycoprotein"
		"Hormone"
		"Neuropathy"
		"Polymorphism"
		"Secreted"
		"Signal"
		"Thyroid hormone"
		"Transport")
	(name "TTR")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"TTHY_HUMAN"
		"Q549C7"
		"Q6IB96"
		"Q9UBZ6"
		"Q9UCM9")
	(sequenceLength 147)
	(species [GK_48887]))

([GK_69416] of Pathway
	(_displayName "[Hsa] Activation of Pro-Caspase 8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 69416)
	(goBiologicalProcess [GK_23175])
	(hasEvent
		[GK_73945]
		[GK_141156]
		[GK_141159])
	(name "Activation of Pro-Caspase 8")
	(species [GK_48887])
	(stableIdentifier [GK_358384])
	(summation [GK_213104]))

([GK_69781] of ReferenceGeneProduct
	(_displayName "[Hsa] UniProt:P05067 APP recommendedName: Amyloid beta A4 protein  alternativeName: ABPP  alternativeName: APPI shortName:APP  alternativeName: APPI shortName:APP  alternativeName: Alzheimer disease amyloid protein  alternativeName: Cerebral vascular amyloid peptide shortName:CVAP  alternativeName: Cerebral vascular amyloid peptide shortName:CVAP  alternativeName: PreA4  alternativeName: Protease nexin-II shortName:PN-II  alternativeName: Protease nexin-II shortName:PN-II  component recommendedName: N-APP  /component component recommendedName: Soluble APP-alpha shortName:S-APP-alpha  /component component recommendedName: Soluble APP-beta shortName:S-APP-beta  /component component recommendedName: C99  /component component recommendedName: Beta-amyloid protein 42  alternativeName: Beta-APP42  /component component recommendedName: Beta-amyloid protein 40  alternativeName: Beta-APP40  /component component recommendedName: C83  /component component recommendedName: P3(42)  /component component recommendedName: P3(40)  /component component recommendedName: C80  /component component recommendedName: Gamma-secretase C-terminal fragment 59  alternativeName: Amyloid intracellular domain 59 shortName:AICD-59 shortName:AID(59)  alternativeName: Gamma-CTF(59)  /component component recommendedName: Gamma-secretase C-terminal fragment 57  alternativeName: Amyloid intracellular domain 57 shortName:AICD-57 shortName:AID(57)  alternativeName: Gamma-CTF(57)  /component component recommendedName: Gamma-secretase C-terminal fragment 50  alternativeName: Amyloid intracellular domain 50 shortName:AICD-50 shortName:AID(50)  alternativeName: Gamma-CTF(50)  /component component recommendedName: C31  /component")
	(checksum "1")
	(comment "INDUCTION Increased levels during neuronal differentiation.PTM Proteolytically processed under normal cellular conditions. Cleavage either by alpha-secretase, beta-secretase or theta-secretase leads to generation and extracellular release of soluble APP peptides, S-APP-alpha and S-APP-beta, and the retention of corresponding membrane-anchored C-terminal fragments, C80, C83 and C99. Subsequent processing of C80 and C83 by gamma-secretase yields P3 peptides. This is the major secretory pathway and is non-amyloidogenic. Alternatively, presenilin/nicastrin-mediated gamma-secretase processing of C99 releases the amyloid beta proteins, amyloid-beta 40 (Abeta40) and amyloid-beta 42 (Abeta42), major components of amyloid plaques, and the cytotoxic C-terminal fragments, gamma-CTF(50), gamma-CTF(57) and gamma-CTF(59).PTM Extracellular binding and reduction of copper, results in a corresponding oxidation of Cys-144 and Cys-158, and the formation of a disulfide bond. In vitro, the APP-Cu(+) complex in the presence of hydrogen peroxide results in an increased production of beta-amyloid-containing peptides.PTM Beta-amyloid peptides are degraded by IDE.MISCELLANEOUS Chelation of metal ions, notably copper, iron and zinc, can induce histidine-bridging between beta-amyloid molecules resulting in beta-amyloid-metal aggregates. The affinity for copper is much higher than for other transient metals and is increased under acidic conditions. Extracellular zinc-binding increases binding of heparin to APP and inhibits collagen-binding.SIMILARITY Belongs to the APP family.SIMILARITY Contains 1 BPTI/Kunitz inhibitor domain.")
	(DB_ID 69781)
	(description "recommendedName: Amyloid beta A4 protein  alternativeName: ABPP  alternativeName: APPI shortName:APP  alternativeName: APPI shortName:APP  alternativeName: Alzheimer disease amyloid protein  alternativeName: Cerebral vascular amyloid peptide shortName:CVAP  alternativeName: Cerebral vascular amyloid peptide shortName:CVAP  alternativeName: PreA4  alternativeName: Protease nexin-II shortName:PN-II  alternativeName: Protease nexin-II shortName:PN-II  component recommendedName: N-APP  /component component recommendedName: Soluble APP-alpha shortName:S-APP-alpha  /component component recommendedName: Soluble APP-beta shortName:S-APP-beta  /component component recommendedName: C99  /component component recommendedName: Beta-amyloid protein 42  alternativeName: Beta-APP42  /component component recommendedName: Beta-amyloid protein 40  alternativeName: Beta-APP40  /component component recommendedName: C83  /component component recommendedName: P3(42)  /component component recommendedName: P3(40)  /component component recommendedName: C80  /component component recommendedName: Gamma-secretase C-terminal fragment 59  alternativeName: Amyloid intracellular domain 59 shortName:AICD-59 shortName:AID(59)  alternativeName: Gamma-CTF(59)  /component component recommendedName: Gamma-secretase C-terminal fragment 57  alternativeName: Amyloid intracellular domain 57 shortName:AICD-57 shortName:AID(57)  alternativeName: Gamma-CTF(57)  /component component recommendedName: Gamma-secretase C-terminal fragment 50  alternativeName: Amyloid intracellular domain 50 shortName:AICD-50 shortName:AID(50)  alternativeName: Gamma-CTF(50)  /component component recommendedName: C31  /component")
	(geneName
		"APP"
		"A4"
		"AD1")
	(identifier "P05067")
	(isSequenceChanged TRUE)
	(keyword
		"3D-structure"
		"Alternative splicing"
		"Alzheimer disease"
		"Amyloid"
		"Amyloidosis"
		"Apoptosis"
		"Cell adhesion"
		"Coated pit"
		"Complete proteome"
		"Copper"
		"Direct protein sequencing"
		"Disease mutation"
		"Disulfide bond"
		"Endocytosis"
		"Glycoprotein"
		"Heparin-binding"
		"Iron"
		"Membrane"
		"Metal-binding"
		"Neurodegeneration"
		"Notch signaling pathway"
		"Phosphoprotein"
		"Polymorphism"
		"Protease inhibitor"
		"Proteoglycan"
		"Serine protease inhibitor"
		"Signal"
		"Transmembrane"
		"Transmembrane helix"
		"Zinc")
	(name "APP")
	(referenceDatabase [GK_2])
	(secondaryIdentifier
		"A4_HUMAN"
		"B2R5V1"
		"D3DSD1"
		"D3DSD2"
		"D3DSD3"
		"P09000"
		"P78438"
		"Q13764"
		"Q13778"
		"Q13793"
		"Q16011"
		"Q16014"
		"Q16019"
		"Q16020"
		"Q6GSC0"
		"Q8WZ99"
		"Q9BT38"
		"Q9UC33"
		"Q9UCA9"
		"Q9UCB6"
		"Q9UCC8"
		"Q9UCD1"
		"Q9UQ58")
	(sequenceLength 770)
	(species [GK_48887]))

([GK_70101] of EntityCompartment
	(_displayName "cytosol")
	(accession "0005829")
	(DB_ID 70101)
	(definition "The part of the cytoplasm that does not contain organelles but which does contain other particulate matter, such as protein complexes.")
	(instanceOf [GK_258163])
	(name "cytosol")
	(referenceDatabase [GK_1]))

([GK_70121] of Person
	(_displayName "Bell, GI")
	(DB_ID 70121)
	(firstname "Graeme I")
	(initial "GI")
	(surname "Bell"))

([GK_70650] of Person
	(_displayName "Hohenester, E")
	(DB_ID 70650)
	(firstname "Erhard")
	(initial "E")
	(surname "Hohenester"))

([GK_71050] of Reaction
	(_displayName "[Hsa] Trimerization of the FASL:FAS receptor complex")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 71050)
	(figure [GK_141237])
	(input
		[GK_76564]
		[GK_76564]
		[GK_76564])
	(literatureReference [GK_140505])
	(name "Trimerization of the FASL:FAS receptor complex")
	(output [GK_76195])
	(precedingEvent [GK_75244])
	(species [GK_48887])
	(stableIdentifier [GK_359726])
	(summation [GK_179272]))

([GK_72803] of Taxon
	(_displayName "Coelomata")
	(crossReference [GK_72818])
	(DB_ID 72803)
	(name "Coelomata")
	(superTaxon [GK_72804]))

([GK_72804] of Taxon
	(_displayName "Bilateria")
	(crossReference [GK_72817])
	(DB_ID 72804)
	(name "Bilateria")
	(superTaxon [GK_72805]))

([GK_72805] of Taxon
	(_displayName "Eumetazoa")
	(crossReference [GK_72816])
	(DB_ID 72805)
	(name "Eumetazoa")
	(superTaxon [GK_72806]))

([GK_72806] of Taxon
	(_displayName "Metazoa")
	(crossReference [GK_72815])
	(DB_ID 72806)
	(name
		"Metazoa"
		"Animalia"
		"animals"
		"multicellular animals")
	(superTaxon [GK_72807]))

([GK_72807] of Taxon
	(_displayName "Fungi/Metazoa group")
	(crossReference [GK_72814])
	(DB_ID 72807)
	(name "Fungi/Metazoa group")
	(superTaxon [GK_72808]))

([GK_72808] of Taxon
	(_displayName "Eukaryota")
	(crossReference [GK_72813])
	(DB_ID 72808)
	(name
		"Eukaryota"
		"eucaryotes")
	(superTaxon [GK_72809]))

([GK_72809] of Taxon
	(_displayName "cellular_organisms")
	(crossReference [GK_72812])
	(DB_ID 72809)
	(name "cellular_organisms")
	(superTaxon [GK_164487]))

([GK_72810] of ReferenceDatabase
	(_displayName "NCBI_taxonomy")
	(accessUrl "http://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?mode=Info&id=###ID###")
	(DB_ID 72810)
	(name "NCBI_taxonomy")
	(url "http://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html"))

([GK_72812] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:131567")
	(DB_ID 72812)
	(identifier "131567")
	(referenceDatabase [GK_72810]))

([GK_72813] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:2759")
	(DB_ID 72813)
	(identifier "2759")
	(referenceDatabase [GK_72810]))

([GK_72814] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:33154")
	(DB_ID 72814)
	(identifier "33154")
	(referenceDatabase [GK_72810]))

([GK_72815] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:33208")
	(DB_ID 72815)
	(identifier "33208")
	(referenceDatabase [GK_72810]))

([GK_72816] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:6072")
	(DB_ID 72816)
	(identifier "6072")
	(referenceDatabase [GK_72810]))

([GK_72817] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:33213")
	(DB_ID 72817)
	(identifier "33213")
	(referenceDatabase [GK_72810]))

([GK_72818] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:33316")
	(DB_ID 72818)
	(identifier "33316")
	(referenceDatabase [GK_72810]))

([GK_72862] of Taxon
	(_displayName "Eutheria")
	(crossReference [GK_72887])
	(DB_ID 72862)
	(name "Eutheria")
	(superTaxon [GK_72863]))

([GK_72863] of Taxon
	(_displayName "Theria")
	(crossReference [GK_72886])
	(DB_ID 72863)
	(name "Theria")
	(superTaxon [GK_72864]))

([GK_72864] of Taxon
	(_displayName "Mammalia")
	(crossReference [GK_72885])
	(DB_ID 72864)
	(name "Mammalia")
	(superTaxon [GK_72865]))

([GK_72865] of Taxon
	(_displayName "Amniota")
	(crossReference [GK_72884])
	(DB_ID 72865)
	(name "Amniota")
	(superTaxon [GK_72866]))

([GK_72866] of Taxon
	(_displayName "Tetrapoda")
	(crossReference [GK_72883])
	(DB_ID 72866)
	(name "Tetrapoda")
	(superTaxon [GK_72867]))

([GK_72867] of Taxon
	(_displayName "Sarcopterygii")
	(crossReference [GK_72882])
	(DB_ID 72867)
	(name "Sarcopterygii")
	(superTaxon [GK_72868]))

([GK_72868] of Taxon
	(_displayName "Euteleostomi")
	(crossReference [GK_72881])
	(DB_ID 72868)
	(name "Euteleostomi")
	(superTaxon [GK_72869]))

([GK_72869] of Taxon
	(_displayName "Teleostomi")
	(crossReference [GK_72880])
	(DB_ID 72869)
	(name "Teleostomi")
	(superTaxon [GK_72870]))

([GK_72870] of Taxon
	(_displayName "Gnathostomata")
	(crossReference [GK_72879])
	(DB_ID 72870)
	(name "Gnathostomata")
	(superTaxon [GK_72871]))

([GK_72871] of Taxon
	(_displayName "Vertebrata")
	(crossReference [GK_72878])
	(DB_ID 72871)
	(name
		"Vertebrata"
		"vertebrates")
	(superTaxon [GK_72872]))

([GK_72872] of Taxon
	(_displayName "Craniata")
	(crossReference [GK_72877])
	(DB_ID 72872)
	(name "Craniata")
	(superTaxon [GK_72873]))

([GK_72873] of Taxon
	(_displayName "Chordata")
	(crossReference [GK_72876])
	(DB_ID 72873)
	(name "Chordata")
	(superTaxon [GK_72874]))

([GK_72874] of Taxon
	(_displayName "Deuterostomia")
	(crossReference [GK_72875])
	(DB_ID 72874)
	(name "Deuterostomia")
	(superTaxon [GK_72803]))

([GK_72875] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:33511")
	(DB_ID 72875)
	(identifier "33511")
	(referenceDatabase [GK_72810]))

([GK_72876] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:7711")
	(DB_ID 72876)
	(identifier "7711")
	(referenceDatabase [GK_72810]))

([GK_72877] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:89593")
	(DB_ID 72877)
	(identifier "89593")
	(referenceDatabase [GK_72810]))

([GK_72878] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:7742")
	(DB_ID 72878)
	(identifier "7742")
	(referenceDatabase [GK_72810]))

([GK_72879] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:7776")
	(DB_ID 72879)
	(identifier "7776")
	(referenceDatabase [GK_72810]))

([GK_72880] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:117570")
	(DB_ID 72880)
	(identifier "117570")
	(referenceDatabase [GK_72810]))

([GK_72881] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:117571")
	(DB_ID 72881)
	(identifier "117571")
	(referenceDatabase [GK_72810]))

([GK_72882] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:8287")
	(DB_ID 72882)
	(identifier "8287")
	(referenceDatabase [GK_72810]))

([GK_72883] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:32523")
	(DB_ID 72883)
	(identifier "32523")
	(referenceDatabase [GK_72810]))

([GK_72884] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:32524")
	(DB_ID 72884)
	(identifier "32524")
	(referenceDatabase [GK_72810]))

([GK_72885] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:40674")
	(DB_ID 72885)
	(identifier "40674")
	(referenceDatabase [GK_72810]))

([GK_72886] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:32525")
	(DB_ID 72886)
	(identifier "32525")
	(referenceDatabase [GK_72810]))

([GK_72887] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9347")
	(DB_ID 72887)
	(identifier "9347")
	(referenceDatabase [GK_72810]))

([GK_72938] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9606")
	(DB_ID 72938)
	(identifier "9606")
	(referenceDatabase [GK_72810]))

([GK_72939] of Taxon
	(_displayName "Homo")
	(crossReference [GK_72948])
	(DB_ID 72939)
	(name "Homo")
	(superTaxon [GK_72940]))

([GK_72940] of Taxon
	(_displayName "Homo/Pan/Gorilla group")
	(crossReference [GK_72947])
	(DB_ID 72940)
	(name "Homo/Pan/Gorilla group")
	(superTaxon [GK_72941]))

([GK_72941] of Taxon
	(_displayName "Hominidae")
	(crossReference [GK_72946])
	(DB_ID 72941)
	(name "Hominidae")
	(superTaxon [GK_72942]))

([GK_72942] of Taxon
	(_displayName "Catarrhini")
	(crossReference [GK_72945])
	(DB_ID 72942)
	(name "Catarrhini")
	(superTaxon [GK_72943]))

([GK_72943] of Taxon
	(_displayName "Primates")
	(crossReference [GK_72944])
	(DB_ID 72943)
	(name "Primates")
	(superTaxon [GK_72862]))

([GK_72944] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9443")
	(DB_ID 72944)
	(identifier "9443")
	(referenceDatabase [GK_72810]))

([GK_72945] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9526")
	(DB_ID 72945)
	(identifier "9526")
	(referenceDatabase [GK_72810]))

([GK_72946] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9604")
	(DB_ID 72946)
	(identifier "9604")
	(referenceDatabase [GK_72810]))

([GK_72947] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:207598")
	(DB_ID 72947)
	(identifier "207598")
	(referenceDatabase [GK_72810]))

([GK_72948] of DatabaseIdentifier
	(_displayName "NCBI_taxonomy:9605")
	(DB_ID 72948)
	(identifier "9605")
	(referenceDatabase [GK_72810]))

([GK_73681] of Person
	(_displayName "Gillespie, ME")
	(affiliation
		[GK_77249]
		[GK_158007])
	(DB_ID 73681)
	(eMailAddress "gillespm@cshl.org")
	(firstname "Marc E")
	(initial "ME")
	(surname "Gillespie"))

([GK_73887] of Pathway
	(_displayName "[Hsa] Death Receptor  Signalling")
	(_doRelease TRUE)
	(authored [GK_139957])
	(compartment [GK_356])
	(DB_ID 73887)
	(edited [GK_165085])
	(goBiologicalProcess [GK_25446])
	(hasEvent
		[GK_75157]
		[GK_75893]
		[GK_75158])
	(name "Death Receptor  Signalling")
	(reviewed [GK_165094])
	(species [GK_48887])
	(stableIdentifier [GK_361140])
	(summation [GK_139958]))

([GK_73945] of Reaction
	(_displayName "[Hsa] FAS Mediated Activation of Pro-caspase 8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 73945)
	(figure [GK_141227])
	(input [GK_75114])
	(literatureReference [GK_141158])
	(name "FAS Mediated Activation of Pro-caspase 8")
	(output
		[GK_43124]
		[GK_76158]
		[GK_75975])
	(precedingEvent [GK_83586])
	(species [GK_48887])
	(stableIdentifier [GK_359070])
	(summation [GK_178760]))

([GK_74112] of SimpleEntity
	(_displayName "Ca2+ [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_29497])
	(DB_ID 74112)
	(name
		"Ca2+"
		"Calcium")
	(referenceEntity [GK_114768])
	(stableIdentifier [GK_363887]))

([GK_74277] of Complex
	(_displayName "[Hsa] TNF-alpha:TNF-R1 complex [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 74277)
	(hasComponent
		[GK_66220]
		[GK_66344])
	(name "TNF-alpha:TNF-R1 complex")
	(species [GK_48887])
	(stableIdentifier [GK_367488]))

([GK_74302] of Summation
	(_displayName "Once the TNF-aplha:TNF-R1:TRADD complex is formed the two TN...")
	(DB_ID 74302)
	(text "Once the TNF-aplha:TNF-R1:TRADD complex is formed the two TNF-alpha mediated pathways are possible. The variable is the recruitment of FADD to the larger complex formed by the TNF-aplha:TNF-R1 platform via the interaction of the Death Domains. The steps leading to the Jun, NF kappaB, or apoptotic pathways are rife with modulation."))

([GK_74353] of Summation
	(_displayName "Once formed the TRADD:TRAF2:RIP1 complex may dissociate from...")
	(DB_ID 74353)
	(text "Once formed the TRADD:TRAF2:RIP1 complex may dissociate from the TNF:TNF-R1 platform and become cytosolic. If this complex recruits FADD then the cell will be pushed along the apoptotic pathway."))

([GK_75114] of Complex
	(_displayName "[Hsa] FASL:FAS Receptor Trimer:FADD:pro-Caspase-8 DISC [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 75114)
	(hasComponent
		[GK_43124]
		[GK_57031])
	(name "FASL:FAS Receptor Trimer:FADD:pro-Caspase-8 DISC")
	(species [GK_48887])
	(stableIdentifier [GK_362769]))

([GK_75146] of Reaction
	(_displayName "[Hsa] TRAIL:TRAIL-Receptor2 Trimer:FADD complex binds Caspase-8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 75146)
	(input
		[GK_57031]
		[GK_141137])
	(literatureReference [GK_141128])
	(name "TRAIL:TRAIL-Receptor2 Trimer:FADD complex binds Caspase-8")
	(output [GK_141133])
	(precedingEvent [GK_75187])
	(species [GK_48887])
	(stableIdentifier [GK_359034])
	(summation [GK_179247]))

([GK_75157] of Pathway
	(_displayName "[Hsa] FasL/ CD95L signaling")
	(_doRelease TRUE)
	(authored [GK_140480])
	(compartment [GK_356])
	(DB_ID 75157)
	(edited [GK_165085])
	(figure [GK_141234])
	(goBiologicalProcess [GK_25446])
	(hasEvent
		[GK_75244]
		[GK_71050]
		[GK_83650]
		[GK_83586]
		[GK_141310])
	(literatureReference [GK_139960])
	(name "FasL/ CD95L signaling")
	(reviewed [GK_165094])
	(species [GK_48887])
	(stableIdentifier [GK_360947])
	(summation [GK_140481]))

([GK_75158] of Pathway
	(_displayName "[Hsa] TRAIL  signaling")
	(_doRelease TRUE)
	(authored [GK_141084])
	(compartment [GK_356])
	(DB_ID 75158)
	(edited [GK_165085])
	(hasEvent
		[GK_75238]
		[GK_141139]
		[GK_75187]
		[GK_75146]
		[GK_141316])
	(literatureReference [GK_140992])
	(name "TRAIL  signaling")
	(species [GK_48887])
	(stableIdentifier [GK_358827])
	(summation [GK_141083]))

([GK_75187] of Reaction
	(_displayName "[Hsa] TRAIL:TRAIL receptor-2 Trimer Binds FADD")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 75187)
	(input
		[GK_141126]
		[GK_54639])
	(literatureReference [GK_141128])
	(name "TRAIL:TRAIL receptor-2 Trimer Binds FADD")
	(output [GK_141137])
	(precedingEvent [GK_75238])
	(species [GK_48887])
	(stableIdentifier [GK_362019])
	(summation [GK_179245]))

([GK_75238] of Reaction
	(_displayName "[Hsa] TRAIL Binds TRAIL-Receptor2")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 75238)
	(input
		[GK_66186]
		[GK_65505])
	(literatureReference [GK_141147])
	(name "TRAIL Binds TRAIL-Receptor2")
	(output [GK_141118])
	(species [GK_48887])
	(stableIdentifier [GK_358527])
	(summation [GK_179243]))

([GK_75240] of Reaction
	(_displayName "[Hsa] TRADD:TRAF2:RIP1:FADD complex binds Pro-Caspase 8  ")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 75240)
	(input
		[GK_57031]
		[GK_140977])
	(literatureReference [GK_140979])
	(name "TRADD:TRAF2:RIP1:FADD complex binds Pro-Caspase 8  ")
	(output [GK_140976])
	(precedingEvent [GK_140978])
	(species [GK_48887])
	(stableIdentifier [GK_360371])
	(summation [GK_179240]))

([GK_75244] of Reaction
	(_displayName "[Hsa] FASL binds FAS Receptor")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 75244)
	(figure [GK_141237])
	(goBiologicalProcess [GK_25446])
	(input
		[GK_66212]
		[GK_66248])
	(literatureReference [GK_140513])
	(name "FASL binds FAS Receptor")
	(output [GK_76564])
	(species [GK_48887])
	(stableIdentifier [GK_361795])
	(summation [GK_178761]))

([GK_75542] of Person
	(_displayName "Teplow, DB")
	(DB_ID 75542)
	(firstname "D B")
	(initial "DB")
	(surname "Teplow"))

([GK_75579] of Person
	(_displayName "Klisak, I")
	(DB_ID 75579)
	(firstname "I")
	(initial "I")
	(surname "Klisak"))

([GK_75582] of Person
	(_displayName "Mohandas, T")
	(DB_ID 75582)
	(firstname "T")
	(initial "T")
	(surname "Mohandas"))

([GK_75583] of Person
	(_displayName "Sparkes, RS")
	(DB_ID 75583)
	(firstname "R S")
	(initial "RS")
	(surname "Sparkes"))

([GK_75642] of Person
	(_displayName "Lem, J")
	(DB_ID 75642)
	(firstname "Janis")
	(initial "J")
	(surname "Lem"))

([GK_75643] of Person
	(_displayName "Simon, M")
	(DB_ID 75643)
	(firstname "Melvin")
	(initial "M")
	(surname "Simon"))

([GK_75697] of Person
	(_displayName "Goeddel, DV")
	(DB_ID 75697)
	(firstname "D V")
	(initial "DV")
	(surname "Goeddel"))

([GK_75893] of Pathway
	(_displayName "[Hsa] TNF signaling")
	(_doRelease TRUE)
	(authored [GK_140936])
	(compartment [GK_356])
	(DB_ID 75893)
	(edited [GK_165085])
	(hasEvent
		[GK_83660]
		[GK_83656]
		[GK_83582]
		[GK_140978]
		[GK_75240])
	(literatureReference [GK_140939])
	(name "TNF signaling")
	(species [GK_48887])
	(stableIdentifier [GK_361228])
	(summation [GK_140942]))

([GK_75975] of EntityWithAccessionedSequence
	(_displayName "[Hsa] p18 subunit of Caspase 8 [cytosol]")
	(compartment [GK_70101])
	(DB_ID 75975)
	(endCoordinate 374)
	(name "p18 subunit of Caspase 8")
	(referenceEntity [GK_57032])
	(species [GK_48887])
	(stableIdentifier [GK_365034])
	(startCoordinate 217))

([GK_76158] of EntityWithAccessionedSequence
	(_displayName "[Hsa] p10 subunit of Caspase 8 [cytosol]")
	(compartment [GK_70101])
	(DB_ID 76158)
	(endCoordinate 479)
	(name "p10 subunit of Caspase 8")
	(referenceEntity [GK_57032])
	(species [GK_48887])
	(stableIdentifier [GK_367761])
	(startCoordinate 385))

([GK_76195] of Complex
	(_displayName "[Hsa] FASL:FAS Receptor Trimer [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 76195)
	(hasComponent
		[GK_76564]
		[GK_76564]
		[GK_76564])
	(name "FASL:FAS Receptor Trimer")
	(species [GK_48887])
	(stableIdentifier [GK_371020]))

([GK_76564] of Complex
	(_displayName "[Hsa] FASL:FAS Receptor monomer [plasma membrane]")
	(compartment [GK_876])
	(DB_ID 76564)
	(hasComponent
		[GK_66212]
		[GK_66248])
	(name "FASL:FAS Receptor monomer")
	(species [GK_48887])
	(stableIdentifier [GK_365522]))

([GK_76786] of Person
	(_displayName "Seto, Y")
	(DB_ID 76786)
	(firstname "Y")
	(initial "Y")
	(surname "Seto"))

([GK_77151] of Person
	(_displayName "el-Deiry, WS")
	(DB_ID 77151)
	(firstname "W S")
	(initial "WS")
	(surname "el-Deiry"))

([GK_77249] of Affiliation
	(_displayName "St. John's University")
	(address "8000 Utopia Parkway")
	(DB_ID 77249)
	(name "St. John's University"))

([GK_77293] of Person
	(_displayName "Tschopp, J")
	(affiliation [GK_157508])
	(DB_ID 77293)
	(eMailAddress "jtschopp@mail-eliot.unil.ch")
	(firstname "Jurg")
	(initial "J")
	(surname "Tschopp"))

([GK_83582] of Reaction
	(_displayName "[Hsa] TRADD:TRAF2:RIP1 complex dissociates from the TNF-alpha:TNF-R1 complex.")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 83582)
	(edited [GK_165085])
	(input [GK_140946])
	(literatureReference [GK_140979])
	(name "TRADD:TRAF2:RIP1 complex dissociates from the TNF-alpha:TNF-R1 complex.")
	(output
		[GK_74277]
		[GK_140935])
	(precedingEvent [GK_83656])
	(reviewed [GK_165094])
	(species [GK_48887])
	(stableIdentifier [GK_358712])
	(summation [GK_74353]))

([GK_83586] of Reaction
	(_displayName "[Hsa] FASL:FAS Receptor Trimer:FADD complex binds pro-Caspase-8")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 83586)
	(figure [GK_141228])
	(input
		[GK_43124]
		[GK_57031])
	(literatureReference [GK_140941])
	(name "FASL:FAS Receptor Trimer:FADD complex binds pro-Caspase-8")
	(output [GK_75114])
	(precedingEvent [GK_83650])
	(species [GK_48887])
	(stableIdentifier [GK_360537])
	(summation [GK_178764]))

([GK_83650] of Reaction
	(_displayName "[Hsa] FasL:Fas binds FADD")
	(_doRelease TRUE)
	(authored [GK_386948])
	(compartment [GK_356])
	(DB_ID 83650)
	(figure [GK_141226])
	(input
		[GK_76195]
		[GK_54639])
	(literatureReference [GK_140495])
	(name "FasL:Fas binds FADD")
	(output [GK_43124])
	(precedingEvent [GK_71050])
	(reviewed [GK_386956])
	(species [GK_48887])
	(stableIdentifier [GK_362003])
	(summation [GK_178762]))

([GK_83656] of Reaction
	(_displayName "[Hsa] TNF:TNF-R1 binds TRADD, TRAF2 and RIP Complex")
	(_doRelease TRUE)
	(authored [GK_386948])
	(compartment [GK_356])
	(DB_ID 83656)
	(edited [GK_165085])
	(input
		[GK_74277]
		[GK_66376]
		[GK_63118]
		[GK_66370])
	(literatureReference [GK_140948])
	(name "TNF:TNF-R1 binds TRADD, TRAF2 and RIP Complex")
	(output [GK_140946])
	(precedingEvent [GK_83660])
	(reviewed [GK_386956])
	(species [GK_48887])
	(stableIdentifier [GK_361068])
	(summation [GK_74302]))

([GK_83660] of Reaction
	(_displayName "[Hsa] TNF Binds TNF-R1")
	(_doRelease TRUE)
	(compartment [GK_356])
	(DB_ID 83660)
	(input
		[GK_66220]
		[GK_66344])
	(literatureReference [GK_140945])
	(name "TNF Binds TNF-R1")
	(output [GK_74277])
	(species [GK_48887])
	(stableIdentifier [GK_360533])
	(summation [GK_179238]))

([GK_84039] of Person
	(_displayName "Wang, J")
	(DB_ID 84039)
	(firstname "J")
	(initial "J")
	(surname "Wang"))

([GK_876] of EntityCompartment
	(_displayName "plasma membrane")
	(accession "0005886")
	(componentOf [GK_1042833])
	(DB_ID 876)
	(definition "The membrane surrounding a cell that separates the cell from its external environment. It consists of a phospholipid bilayer and associated proteins.")
	(instanceOf [GK_383187])
	(name "plasma membrane")
	(referenceDatabase [GK_1]))

([GK_879340] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Beta-amyloid protein 42 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 879340)
	(endCoordinate 713)
	(name
		"Beta-amyloid protein 42"
		"Amyloid beta A4 protein"
		"APP"
		"A4_HUMAN")
	(referenceEntity [GK_69781])
	(species [GK_48887])
	(stableIdentifier [GK_1110572])
	(startCoordinate 672))

([GK_879404] of Person
	(_displayName "Perry, G")
	(affiliation [GK_1247883])
	(DB_ID 879404)
	(firstname "George")
	(initial "G")
	(surname "Perry"))

([GK_893611] of Person
	(_displayName "Gibson, G")
	(DB_ID 893611)
	(firstname "Gordon")
	(initial "G")
	(surname "Gibson"))

([GK_913920] of Person
	(_displayName "Aebi, U")
	(DB_ID 913920)
	(initial "U")
	(surname "Aebi"))

([GK_936419] of Person
	(_displayName "Wright, A")
	(DB_ID 936419)
	(initial "A")
	(surname "Wright"))

([GK_947995] of Person
	(_displayName "Nichols, WC")
	(DB_ID 947995)
	(initial "WC")
	(surname "Nichols"))

([GK_97] of GO_MolecularFunction
	(_displayName "catalytic activity")
	(accession "0003824")
	(componentOf [GK_504])
	(DB_ID 97)
	(definition "Catalysis of a biochemical reaction at physiological temperatures. In biologically catalyzed reactions, the reactants are known as substrates, and the catalysts are naturally occurring macromolecular substances known as enzymes. Enzymes possess specific binding sites for substrates, and are usually composed wholly or largely of protein, but RNA that has catalytic activity (ribozyme) is often also regarded as enzymatic.")
	(instanceOf [GK_43])
	(name "catalytic activity")
	(referenceDatabase [GK_1]))

([GK_976720] of Summation
	(_displayName "Serum amyloid P component (SAP) is a member of the pentraxin...")
	(DB_ID 976720)
	(literatureReference [GK_976803])
	(text "Serum amyloid P component (SAP) is a member of the pentraxin family, characterized by the formation of pentameric ring structures. Each member of the ring has two associated calcium ions. SAP is an acute phase reactant, highly induced by IL-6. It has 50% homology with the related C-reactive peptide. "))

([GK_976721] of Person
	(_displayName "Butler, PJ")
	(DB_ID 976721)
	(initial "PJ")
	(surname "Butler"))

([GK_976723] of Reaction
	(_displayName "[Hsa] Serum amyloid P-component forms homopentamers")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 976723)
	(edited [GK_1247884])
	(input
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112])
	(isChimeric FALSE)
	(literatureReference [GK_976803])
	(name "Serum amyloid P-component forms homopentamers")
	(output [GK_976776])
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357634])
	(summation [GK_976720]))

([GK_976725] of Person
	(_displayName "White, HE")
	(DB_ID 976725)
	(initial "HE")
	(surname "White"))

([GK_976727] of Person
	(_displayName "O'Hara, BP")
	(DB_ID 976727)
	(initial "BP")
	(surname "O'Hara"))

([GK_976731] of Person
	(_displayName "Wood, SP")
	(DB_ID 976731)
	(initial "SP")
	(surname "Wood"))

([GK_976733] of Person
	(_displayName "Tickle, IJ")
	(DB_ID 976733)
	(initial "IJ")
	(surname "Tickle"))

([GK_976734] of Reaction
	(_displayName "[Hsa] Amyloid fibrils have additional components")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 976734)
	(edited [GK_1247884])
	(input
		[GK_977144]
		[GK_977180]
		[GK_976776]
		[GK_1011570])
	(isChimeric FALSE)
	(literatureReference
		[GK_976742]
		[GK_977126]
		[GK_977109]
		[GK_977094]
		[GK_977121])
	(name "Amyloid fibrils have additional components")
	(output [GK_977084])
	(precedingEvent
		[GK_976723]
		[GK_977136])
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357637])
	(summation [GK_977174]))

([GK_976737] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Serum amyloid P-component [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976737)
	(endCoordinate 223)
	(name
		"Serum amyloid P-component"
		"APCS"
		"SAMP_HUMAN"
		"APCS")
	(referenceEntity [GK_64128])
	(species [GK_48887])
	(stableIdentifier [GK_1358325])
	(startCoordinate 20))

([GK_976739] of Person
	(_displayName "Pepys, MB")
	(DB_ID 976739)
	(initial "MB")
	(surname "Pepys"))

([GK_976740] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Beta-amyloid protein 40 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976740)
	(endCoordinate 711)
	(name
		"Beta-amyloid protein 40"
		"APP"
		"A4_HUMAN"
		"APP")
	(referenceEntity [GK_69781])
	(species [GK_48887])
	(stableIdentifier [GK_1358524])
	(startCoordinate 672))

([GK_976741] of Person
	(_displayName "Dyck, RF")
	(DB_ID 976741)
	(initial "RF")
	(surname "Dyck"))

([GK_976742] of LiteratureReference
	(_displayName "Binding of serum amyloid P-component (SAP) by amyloid fibrils")
	(author
		[GK_976739]
		[GK_976741]
		[GK_976780]
		[GK_976771]
		[GK_976747])
	(DB_ID 976742)
	(journal "Clin Exp Immunol")
	(pages "284-93")
	(pubMedIdentifier 118839)
	(title "Binding of serum amyloid P-component (SAP) by amyloid fibrils")
	(volume 38)
	(year 1979))

([GK_976746] of Person
	(_displayName "Srinivasan, N")
	(DB_ID 976746)
	(initial "N")
	(surname "Srinivasan"))

([GK_976747] of Person
	(_displayName "Cohen, AS")
	(DB_ID 976747)
	(initial "AS")
	(surname "Cohen"))

([GK_976748] of Polymer
	(_displayName "[Hsa] Beta amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976748)
	(name "Beta amyloid fibril")
	(repeatedUnit [GK_976800])
	(species [GK_48887])
	(stableIdentifier [GK_1357699]))

([GK_976760] of DefinedSet
	(_displayName "[Hsa] Systemic amyloid fibril main peptide chains [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976760)
	(hasMember
		[GK_976898]
		[GK_976889]
		[GK_976945]
		[GK_976929]
		[GK_976893]
		[GK_976916]
		[GK_976919]
		[GK_976860]
		[GK_976911]
		[GK_976935]
		[GK_976871])
	(literatureReference [GK_976859])
	(name "Systemic amyloid fibril main peptide chains")
	(species [GK_48887])
	(stableIdentifier [GK_1358393])
	(summation [GK_976920]))

([GK_976771] of Person
	(_displayName "Skinner, M")
	(DB_ID 976771)
	(initial "M")
	(surname "Skinner"))

([GK_976776] of Complex
	(_displayName "[Hsa] Serum amyloid P-component homopentamer [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976776)
	(hasComponent
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_976737]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112]
		[GK_74112])
	(isChimeric FALSE)
	(name "Serum amyloid P-component homopentamer")
	(species [GK_48887])
	(stableIdentifier [GK_1358060]))

([GK_976780] of Person
	(_displayName "de Beer, FC")
	(DB_ID 976780)
	(initial "FC")
	(surname "de Beer"))

([GK_976786] of Person
	(_displayName "Oliva, G")
	(DB_ID 976786)
	(initial "G")
	(surname "Oliva"))

([GK_976787] of Complex
	(_displayName "[Hsa] Serum amyloid P decamer [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976787)
	(hasComponent
		[GK_976776]
		[GK_976776])
	(isChimeric FALSE)
	(name "Serum amyloid P decamer")
	(species [GK_48887])
	(stableIdentifier [GK_1358195]))

([GK_976790] of LiteratureReference
	(_displayName "Serum amyloid P component is the major calcium-dependent specific DNA binding protein of the serum")
	(author
		[GK_976739]
		[GK_976721])
	(DB_ID 976790)
	(journal "Biochem Biophys Res Commun")
	(pages "308-13")
	(pubMedIdentifier 3675579)
	(title "Serum amyloid P component is the major calcium-dependent specific DNA binding protein of the serum")
	(volume 148)
	(year 1987))

([GK_976796] of OpenSet
	(_displayName "Double-stranded DNA [extracellular region]")
	(compartment [GK_984])
	(crossReference [GK_30151])
	(DB_ID 976796)
	(name "Double-stranded DNA")
	(referenceEntity [GK_114961])
	(stableIdentifier [GK_1358566]))

([GK_976798] of Person
	(_displayName "Emsley, J")
	(DB_ID 976798)
	(initial "J")
	(surname "Emsley"))

([GK_976800] of DefinedSet
	(_displayName "[Hsa] Beta-amyloid [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976800)
	(hasMember
		[GK_976740]
		[GK_879340])
	(name "Beta-amyloid")
	(species [GK_48887])
	(stableIdentifier [GK_1358579]))

([GK_976803] of LiteratureReference
	(_displayName "Structure of pentameric human serum amyloid P component")
	(author
		[GK_976798]
		[GK_976725]
		[GK_976727]
		[GK_976786]
		[GK_976746]
		[GK_976733]
		[GK_976811]
		[GK_976739]
		[GK_976731])
	(DB_ID 976803)
	(journal "Nature")
	(pages "338-45")
	(pubMedIdentifier 8114934)
	(title "Structure of pentameric human serum amyloid P component")
	(volume 367)
	(year 1994))

([GK_976806] of Person
	(_displayName "Hirschfield, GM")
	(DB_ID 976806)
	(initial "GM")
	(surname "Hirschfield"))

([GK_976811] of Person
	(_displayName "Blundell, TL")
	(DB_ID 976811)
	(initial "TL")
	(surname "Blundell"))

([GK_976815] of Summation
	(_displayName "At physiological pH serum amyloid P component is a decamer o...")
	(DB_ID 976815)
	(literatureReference [GK_976803])
	(text "At physiological pH serum amyloid P component is a decamer of two pentameric rings lying face to face. This non-covalent interaction is readily dissociated by reducing the pH."))

([GK_976817] of Reaction
	(_displayName "[Hsa] Formation of serum amyloid P decamer")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 976817)
	(edited [GK_1247884])
	(input
		[GK_976776]
		[GK_976776])
	(isChimeric FALSE)
	(literatureReference [GK_976803])
	(name "Formation of serum amyloid P decamer")
	(output [GK_976787])
	(precedingEvent
		[GK_976723]
		[GK_976723])
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357610])
	(summation [GK_976815]))

([GK_976849] of Person
	(_displayName "Murphy, CL")
	(DB_ID 976849)
	(initial "CL")
	(surname "Murphy"))

([GK_976850] of LiteratureReference
	(_displayName "Serum amyloid A and protein AA: molecular mechanisms of a transmissible amyloidosis")
	(author
		[GK_374884]
		[GK_976884])
	(DB_ID 976850)
	(journal "FEBS Lett")
	(pages "2685-90")
	(pubMedIdentifier 19393650)
	(title "Serum amyloid A and protein AA: molecular mechanisms of a transmissible amyloidosis")
	(volume 583)
	(year 2009))

([GK_976851] of Person
	(_displayName "Terry, CJ")
	(DB_ID 976851)
	(initial "CJ")
	(surname "Terry"))

([GK_976852] of LiteratureReference
	(_displayName "Gelsolin-related amyloidosis. Identification of the amyloid protein in Finnish hereditary amyloidosis as a fragment of variant gelsolin")
	(author [GK_976854])
	(DB_ID 976852)
	(journal "J Clin Invest")
	(pages "1195-9")
	(pubMedIdentifier 1849145)
	(title "Gelsolin-related amyloidosis. Identification of the amyloid protein in Finnish hereditary amyloidosis as a fragment of variant gelsolin")
	(volume 87)
	(year 1991))

([GK_976853] of Person
	(_displayName "Dwulet, FE")
	(DB_ID 976853)
	(initial "FE")
	(surname "Dwulet"))

([GK_976854] of Person
	(_displayName "Maury, CP")
	(DB_ID 976854)
	(initial "CP")
	(surname "Maury"))

([GK_976855] of Person
	(_displayName "Abrahamson, M")
	(DB_ID 976855)
	(initial "M")
	(surname "Abrahamson"))

([GK_976856] of Person
	(_displayName "Totty, N")
	(DB_ID 976856)
	(initial "N")
	(surname "Totty"))

([GK_976857] of Person
	(_displayName "Gozu, M")
	(DB_ID 976857)
	(initial "M")
	(surname "Gozu"))

([GK_976858] of Person
	(_displayName "Solomon, A")
	(DB_ID 976858)
	(initial "A")
	(surname "Solomon"))

([GK_976859] of LiteratureReference
	(_displayName "Aspects on human amyloid forms and their fibril polypeptides")
	(author [GK_976884])
	(DB_ID 976859)
	(journal "FEBS J")
	(pages "5942-9")
	(pubMedIdentifier 16302959)
	(title "Aspects on human amyloid forms and their fibril polypeptides")
	(volume 272)
	(year 2005))

([GK_976860] of Polymer
	(_displayName "[Hsa] Variant lysozyme C fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976860)
	(literatureReference [GK_976877])
	(name "Variant lysozyme C fibril")
	(repeatedUnit [GK_976944])
	(species [GK_48887])
	(stableIdentifier [GK_1358239]))

([GK_976861] of Person
	(_displayName "Guenther, B")
	(DB_ID 976861)
	(initial "B")
	(surname "Guenther"))

([GK_976862] of LiteratureReference
	(_displayName "Polymorphism in the intermediates and products of amyloid assembly")
	(author
		[GK_976866]
		[GK_976917])
	(DB_ID 976862)
	(journal "Curr Opin Struct Biol")
	(pages "48-57")
	(pubMedIdentifier 17251001)
	(title "Polymorphism in the intermediates and products of amyloid assembly")
	(volume 17)
	(year 2007))

([GK_976863] of ReplacedResidue
	(_displayName "L-glutamine residue 94 replaced with unknown")
	(coordinate 94)
	(DB_ID 976863)
	(psiMod [GK_611088])
	(referenceSequence [GK_53331]))

([GK_976864] of Person
	(_displayName "Liepnieks, J")
	(DB_ID 976864)
	(initial "J")
	(surname "Liepnieks"))

([GK_976865] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Variant apolipoprotein AI [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976865)
	(endCoordinate 107)
	(hasModifiedResidue [GK_976875])
	(literatureReference [GK_976941])
	(name
		"Variant apolipoprotein AI"
		"APOA1"
		"APOA1_HUMAN"
		"APOA1")
	(referenceEntity [GK_50094])
	(species [GK_48887])
	(stableIdentifier [GK_1358084])
	(startCoordinate 25))

([GK_976866] of Person
	(_displayName "Kodali, R")
	(DB_ID 976866)
	(initial "R")
	(surname "Kodali"))

([GK_976867] of Summation
	(_displayName "This protein is formed when the normal stop codon is skipped...")
	(DB_ID 976867)
	(literatureReference [GK_976942])
	(text "This protein is formed when the normal stop codon is skipped, adding an extra 21 residues to the normal C terminus of ApoAII. An almost identical variant was reported by Benson et al. (2001)."))

([GK_976868] of Person
	(_displayName "Barats, MS")
	(DB_ID 976868)
	(initial "MS")
	(surname "Barats"))

([GK_976869] of Person
	(_displayName "Hawkins, PN")
	(DB_ID 976869)
	(initial "PN")
	(surname "Hawkins"))

([GK_976870] of GenomeEncodedEntity
	(_displayName "[Hsa] Variant apolipoprotein AII [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976870)
	(literatureReference [GK_976913])
	(name "Variant apolipoprotein AII")
	(species [GK_48887])
	(stableIdentifier [GK_1357707])
	(summation [GK_976867]))

([GK_976871] of Polymer
	(_displayName "[Hsa] ABri/ADan amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976871)
	(literatureReference
		[GK_976939]
		[GK_976873])
	(name "ABri/ADan amyloid fibril")
	(repeatedUnit [GK_976878])
	(species [GK_48887])
	(stableIdentifier [GK_1357802]))

([GK_976872] of Person
	(_displayName "Saraiva, MJ")
	(DB_ID 976872)
	(initial "MJ")
	(surname "Saraiva"))

([GK_976873] of LiteratureReference
	(_displayName "Oligomerization and neurotoxicity of the amyloid ADan peptide implicated in familial Danish dementia")
	(author
		[GK_893611]
		[GK_976903]
		[GK_217036]
		[GK_976948]
		[GK_976894]
		[GK_936419]
		[GK_976890])
	(DB_ID 976873)
	(journal "J Neurochem")
	(pages "281-90")
	(pubMedIdentifier 14690516)
	(title "Oligomerization and neurotoxicity of the amyloid ADan peptide implicated in familial Danish dementia")
	(volume 88)
	(year 2004))

([GK_976874] of Person
	(_displayName "Liepnieks, JJ")
	(DB_ID 976874)
	(initial "JJ")
	(surname "Liepnieks"))

([GK_976875] of ReplacedResidue
	(_displayName "L-arginine residue 50 replaced with unknown")
	(coordinate 50)
	(DB_ID 976875)
	(psiMod [GK_611066])
	(referenceSequence [GK_50094]))

([GK_976876] of Person
	(_displayName "Ghiso, J")
	(DB_ID 976876)
	(initial "J")
	(surname "Ghiso"))

([GK_976877] of LiteratureReference
	(_displayName "Human lysozyme gene mutations cause hereditary systemic amyloidosis")
	(author
		[GK_976739]
		[GK_976869]
		[GK_976907]
		[GK_976936]
		[GK_976947]
		[GK_171090]
		[GK_976856]
		[GK_976899]
		[GK_976934]
		[GK_976851])
	(DB_ID 976877)
	(journal "Nature")
	(pages "553-7")
	(pubMedIdentifier 8464497)
	(title "Human lysozyme gene mutations cause hereditary systemic amyloidosis")
	(volume 362)
	(year 1993))

([GK_976878] of EntityWithAccessionedSequence
	(_displayName "[Hsa] ABri/ADan amyloid peptide [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976878)
	(endCoordinate 266)
	(name
		"ABri/ADan amyloid peptide"
		"Integral membrane protein 2B"
		"ITM2B_HUMAN"
		"ITM2B")
	(referenceEntity [GK_57627])
	(species [GK_48887])
	(stableIdentifier [GK_1358324])
	(startCoordinate 244)
	(summation [GK_976914]))

([GK_976879] of LiteratureReference
	(_displayName "Mutation in cystatin C gene causes hereditary brain haemorrhage")
	(author
		[GK_976933]
		[GK_976855]
		[GK_976909]
		[GK_976943]
		[GK_976888]
		[GK_976938]
		[GK_976887])
	(DB_ID 976879)
	(journal "Lancet")
	(pages "603-4")
	(pubMedIdentifier 2900981)
	(title "Mutation in cystatin C gene causes hereditary brain haemorrhage")
	(volume 2)
	(year 1988))

([GK_976880] of Person
	(_displayName "Goto, Y")
	(DB_ID 976880)
	(initial "Y")
	(surname "Goto"))

([GK_976881] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Amyloid protein A [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976881)
	(endCoordinate 94)
	(name
		"Amyloid protein A"
		"SAA1"
		"SAA_HUMAN"
		"SAA1")
	(referenceEntity [GK_64108])
	(species [GK_48887])
	(stableIdentifier [GK_1358246])
	(startCoordinate 19))

([GK_976882] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Apolipoprotein A-IV amyloid fragment [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976882)
	(endCoordinate 94)
	(name
		"Apolipoprotein A-IV amyloid fragment"
		"APOA4"
		"APOA4_HUMAN"
		"APOA4")
	(referenceEntity [GK_50098])
	(species [GK_48887])
	(stableIdentifier [GK_1357778])
	(startCoordinate 21))

([GK_976883] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Transthyretin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976883)
	(endCoordinate 147)
	(name
		"Transthyretin"
		"TTR"
		"TTHY_HUMAN"
		"TTR")
	(referenceEntity [GK_66545])
	(species [GK_48887])
	(stableIdentifier [GK_1358281])
	(startCoordinate 21))

([GK_976884] of Person
	(_displayName "Westermark, P")
	(DB_ID 976884)
	(initial "P")
	(surname "Westermark"))

([GK_976885] of LiteratureReference
	(_displayName "Two different types of amyloid deposits--apolipoprotein A-IV and transthyretin--in a patient with systemic amyloidosis")
	(author
		[GK_976946]
		[GK_976849]
		[GK_976922]
		[GK_976858]
		[GK_976906]
		[GK_109477]
		[GK_976884])
	(DB_ID 976885)
	(journal "Lab Invest")
	(pages "981-8")
	(pubMedIdentifier 15146166)
	(title "Two different types of amyloid deposits--apolipoprotein A-IV and transthyretin--in a patient with systemic amyloidosis")
	(volume 84)
	(year 2004))

([GK_976886] of Person
	(_displayName "Yazaki, M")
	(DB_ID 976886)
	(initial "M")
	(surname "Yazaki"))

([GK_976887] of Person
	(_displayName "Jensson, O")
	(DB_ID 976887)
	(initial "O")
	(surname "Jensson"))

([GK_976888] of Person
	(_displayName "Olafsson, I")
	(DB_ID 976888)
	(initial "I")
	(surname "Olafsson"))

([GK_976889] of Polymer
	(_displayName "[Hsa] Apolipoprotein A-IV fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976889)
	(literatureReference [GK_976885])
	(name "Apolipoprotein A-IV fibril")
	(repeatedUnit [GK_976882])
	(species [GK_48887])
	(stableIdentifier [GK_1358185]))

([GK_976890] of Person
	(_displayName "Austen, B")
	(DB_ID 976890)
	(initial "B")
	(surname "Austen"))

([GK_976891] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Variant cystatin-C [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976891)
	(endCoordinate 146)
	(hasModifiedResidue [GK_976863])
	(literatureReference [GK_976879])
	(name
		"Variant cystatin-C"
		"CST3"
		"CYTC_HUMAN"
		"CST3")
	(referenceEntity [GK_53331])
	(species [GK_48887])
	(stableIdentifier [GK_1357725])
	(startCoordinate 27))

([GK_976892] of Person
	(_displayName "Naiki, H")
	(DB_ID 976892)
	(initial "H")
	(surname "Naiki"))

([GK_976893] of Polymer
	(_displayName "[Hsa] Variant apolipoprotein AI fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976893)
	(literatureReference [GK_976941])
	(name "Variant apolipoprotein AI fibril")
	(repeatedUnit [GK_976865])
	(species [GK_48887])
	(stableIdentifier [GK_1357799]))

([GK_976894] of Person
	(_displayName "El-Agnaf, OM")
	(DB_ID 976894)
	(initial "OM")
	(surname "El-Agnaf"))

([GK_976895] of Person
	(_displayName "Mead, S")
	(DB_ID 976895)
	(initial "S")
	(surname "Mead"))

([GK_976896] of LiteratureReference
	(_displayName "Conformation of beta 2-microglobulin amyloid fibrils analyzed by reduction of the disulfide bond")
	(author
		[GK_976918]
		[GK_976857]
		[GK_189563]
		[GK_976892]
		[GK_976880])
	(DB_ID 976896)
	(journal "J Biol Chem")
	(pages "21554-60")
	(pubMedIdentifier 11943769)
	(title "Conformation of beta 2-microglobulin amyloid fibrils analyzed by reduction of the disulfide bond")
	(volume 277)
	(year 2002))

([GK_976897] of Person
	(_displayName "Rostagno, A")
	(DB_ID 976897)
	(initial "A")
	(surname "Rostagno"))

([GK_976898] of Polymer
	(_displayName "[Hsa] Amyloid protein A fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976898)
	(literatureReference
		[GK_976908]
		[GK_976850])
	(name "Amyloid protein A fibril")
	(repeatedUnit [GK_976881])
	(species [GK_48887])
	(stableIdentifier [GK_1358419]))

([GK_976899] of Person
	(_displayName "Nguyen, O")
	(DB_ID 976899)
	(initial "O")
	(surname "Nguyen"))

([GK_976900] of Person
	(_displayName "Chatani, E")
	(DB_ID 976900)
	(initial "E")
	(surname "Chatani"))

([GK_976901] of Person
	(_displayName "Vidal, R")
	(DB_ID 976901)
	(initial "R")
	(surname "Vidal"))

([GK_976902] of ReplacedResidue
	(_displayName "L-leucine residue 573 replaced with unknown")
	(coordinate 573)
	(DB_ID 976902)
	(psiMod [GK_611093])
	(referenceSequence [GK_54840]))

([GK_976903] of Person
	(_displayName "Gunasekera, N")
	(DB_ID 976903)
	(initial "N")
	(surname "Gunasekera"))

([GK_976904] of Person
	(_displayName "Benson, MD")
	(DB_ID 976904)
	(initial "MD")
	(surname "Benson"))

([GK_976905] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Variant fibrinogen alpha chain [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976905)
	(endCoordinate 866)
	(hasModifiedResidue [GK_976902])
	(literatureReference [GK_976921])
	(name "Variant fibrinogen alpha chain")
	(referenceEntity [GK_54840])
	(species [GK_48887])
	(stableIdentifier [GK_1358175])
	(startCoordinate 20))

([GK_976906] of Person
	(_displayName "Sletten, K")
	(DB_ID 976906)
	(initial "K")
	(surname "Sletten"))

([GK_976907] of Person
	(_displayName "Booth, DR")
	(DB_ID 976907)
	(initial "DR")
	(surname "Booth"))

([GK_976908] of LiteratureReference
	(_displayName "Serum amyloid A protein in amyloidosis, rheumatic, and enoplastic diseases")
	(author
		[GK_976904]
		[GK_976747])
	(DB_ID 976908)
	(journal "Arthritis Rheum")
	(pages "36-42")
	(pubMedIdentifier 103558)
	(title "Serum amyloid A protein in amyloidosis, rheumatic, and enoplastic diseases")
	(volume 22)
	(year 1979))

([GK_976909] of Person
	(_displayName "Thorsteinsson, L")
	(DB_ID 976909)
	(initial "L")
	(surname "Thorsteinsson"))

([GK_976910] of Person
	(_displayName "RÃ©vÃ©sz, T")
	(DB_ID 976910)
	(initial "T")
	(surname "RÃ©vÃ©sz"))

([GK_976911] of Polymer
	(_displayName "[Hsa] Variant fibrinogen alpha chain fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976911)
	(literatureReference [GK_976921])
	(name "Variant fibrinogen alpha chain fibril")
	(repeatedUnit [GK_976905])
	(species [GK_48887])
	(stableIdentifier [GK_1357842]))

([GK_976912] of Person
	(_displayName "Wheeler, G")
	(DB_ID 976912)
	(initial "G")
	(surname "Wheeler"))

([GK_976913] of LiteratureReference
	(_displayName "Hereditary systemic amyloidosis associated with a new apolipoprotein AII stop codon mutation Stop78Arg")
	(author
		[GK_976886]
		[GK_976874]
		[GK_976868]
		[GK_976923]
		[GK_976904])
	(DB_ID 976913)
	(journal "Kidney Int")
	(pages "11-6")
	(pubMedIdentifier 12787390)
	(title "Hereditary systemic amyloidosis associated with a new apolipoprotein AII stop codon mutation Stop78Arg")
	(volume 64)
	(year 2003))

([GK_976914] of Summation
	(_displayName "The ABri and ADan peptides are extensions of the normal C te...")
	(DB_ID 976914)
	(text "The ABri and ADan peptides are extensions of the normal C terminus of ITM2B (BRI). The sequence of ABri results from mutatin of the normal stop codon to R, resulting in an additional 11 residues. The ABri peptide is the last 34 residues of this mutated peptide -  EASNCFAIRHFENKFAVETLICSRTVKKNIIEEN.\nThe ADan peptide is the result of a 10 nucleotide insertion between the codons for residue 265 and 266, introducing a frameshift that adds a different extension to the normal peptide. The ADan peptide is the last 34 residues of this mutated peptide, identical to ABri for the first 22 residues.\n\nEASNCFAIRHFENKFAVETLICFNLFLNSQEKHY "))

([GK_976915] of Person
	(_displayName "Plant, G")
	(DB_ID 976915)
	(initial "G")
	(surname "Plant"))

([GK_976916] of Polymer
	(_displayName "[Hsa] Variant apolipoprotein AII fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976916)
	(literatureReference [GK_976913])
	(name "Variant apolipoprotein AII fibril")
	(repeatedUnit [GK_976870])
	(species [GK_48887])
	(stableIdentifier [GK_1358575]))

([GK_976917] of Person
	(_displayName "Wetzel, R")
	(DB_ID 976917)
	(initial "R")
	(surname "Wetzel"))

([GK_976918] of Person
	(_displayName "Hong, DP")
	(DB_ID 976918)
	(initial "DP")
	(surname "Hong"))

([GK_976919] of Polymer
	(_displayName "[Hsa] Gelsolin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976919)
	(literatureReference [GK_976852])
	(name "Gelsolin amyloid fibril")
	(repeatedUnit [GK_976940])
	(species [GK_48887])
	(stableIdentifier [GK_1358387]))

([GK_976920] of Summation
	(_displayName "Amyloid is a term used to describe typically extracellular d...")
	(DB_ID 976920)
	(literatureReference
		[GK_977172]
		[GK_1247722]
		[GK_1247762]
		[GK_1247745]
		[GK_1247696]
		[GK_1247719]
		[GK_1247704]
		[GK_1247703]
		[GK_1247812]
		[GK_1247715]
		[GK_1247805])
	(text "Amyloid is a term used to describe typically extracellular deposits of aggregated proteins, sometimes known as plaques. Abnormal accumulation of amyloid is amyloidosis, a term associated with diseased organs and tissues, particularly neurodegenerative diseases such as Alzheimer's, Parkinson's and Huntingdon's. Amyloid deposits consist predominantly of amyloid fibrils, rigid, non-branching structures that form ordered assemblies, characteristically with a cross beta-sheet structure where the sheets run parallel to the direction of the fibril (Sawaya et al. 2007). Often the fibril has a left-handed twist (Nelson & Eisenberg 2006). At least 27 human proteins form amyloid fibrils (Sipe et al. 2010). Many of these proteins have non-pathological functions; the trigger that leads to abnormal aggregations differs between proteins and is not well understood but in many cases the peptides are abnormal fragments or mutant forms arising from polymorphisms, suggesting that the initial event may be aggregation of misfolded or unfolded peptides. Early studies of Amyloid-Beta assembly led to a widely accepted model that assembly was a nucleation-dependent polymerization reaction (Teplow 1998) but it is now understood to be more complex, with multiple 'off-pathway' events leading to a variety of oligomeric structures in addition to fibrils (Roychaudhuri et al. 2008). An increasing body of evidence suggests that these oligomeric forms are primarily responsible for the neurotoxic effects of Amyloid-beta (Roychaudhuri et al. 2008), alpha-synuclein (Winner et al. 2011) and tau (Dance & Strobel 2009, Meraz-Rios et al. 2010). Amyloid oligomers are believed to have a common structural motif that is independent of the protein involved and not present in fibrils (Kayed et al. 2003). Conformation dependent, aggregation specific antibodies suggest that there are 3 general classes of amyloid oligomer structures (Glabe 2009) including annular structures which may be responsible for the widely reported membrane permeabilization effect of amyloid oligomers. Toxicity of amyloid oligomers preceeds the appearance of plaques in mouse models (Ferretti et al. 2011). \nFibrils are often associated with other molecules, notably heparan sulfate proteoglycans and Serum Amyloid P-component, which are universally associated and seem to stabilize fibrils, possibly by protecting them from degradation."))

([GK_976921] of LiteratureReference
	(_displayName "Hereditary renal amyloidosis associated with a mutant fibrinogen alpha-chain")
	(author
		[GK_976904]
		[GK_976864]
		[GK_976927]
		[GK_976912]
		[GK_976930])
	(DB_ID 976921)
	(journal "Nat Genet")
	(pages "252-5")
	(pubMedIdentifier 8097946)
	(title "Hereditary renal amyloidosis associated with a mutant fibrinogen alpha-chain")
	(volume 3)
	(year 1993))

([GK_976922] of Person
	(_displayName "Weiss, DT")
	(DB_ID 976922)
	(initial "DT")
	(surname "Weiss"))

([GK_976923] of Person
	(_displayName "Cohen, AH")
	(DB_ID 976923)
	(initial "AH")
	(surname "Cohen"))

([GK_976924] of LiteratureReference
	(_displayName "Hereditary transthyretin amyloidosis: molecular basis and therapeutical strategies")
	(author [GK_976872])
	(DB_ID 976924)
	(journal "Expert Rev Mol Med")
	(pages "1-11")
	(pubMedIdentifier 14987380)
	(title "Hereditary transthyretin amyloidosis: molecular basis and therapeutical strategies")
	(volume 4)
	(year 2002))

([GK_976926] of ReplacedResidue
	(_displayName "L-threonine residue 74 replaced with unknown")
	(coordinate 74)
	(DB_ID 976926)
	(psiMod [GK_611082])
	(referenceSequence [GK_58841]))

([GK_976927] of Person
	(_displayName "Uemichi, T")
	(DB_ID 976927)
	(initial "T")
	(surname "Uemichi"))

([GK_976928] of Person
	(_displayName "Frangione, B")
	(DB_ID 976928)
	(initial "B")
	(surname "Frangione"))

([GK_976929] of Polymer
	(_displayName "[Hsa] Transthyretin fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976929)
	(literatureReference [GK_976924])
	(name "Transthyretin fibril")
	(repeatedUnit [GK_976883])
	(species [GK_48887])
	(stableIdentifier [GK_1358552]))

([GK_976930] of Person
	(_displayName "Correa, R")
	(DB_ID 976930)
	(initial "R")
	(surname "Correa"))

([GK_976931] of Person
	(_displayName "Hamidi Asl, K")
	(DB_ID 976931)
	(initial "K")
	(surname "Hamidi Asl"))

([GK_976932] of Person
	(_displayName "Kluve-Beckerman, B")
	(DB_ID 976932)
	(initial "B")
	(surname "Kluve-Beckerman"))

([GK_976933] of Person
	(_displayName "Palsdottir, A")
	(DB_ID 976933)
	(initial "A")
	(surname "Palsdottir"))

([GK_976934] of Person
	(_displayName "Blake, CC")
	(DB_ID 976934)
	(initial "CC")
	(surname "Blake"))

([GK_976935] of Polymer
	(_displayName "[Hsa] Variant cystatin-C fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976935)
	(name "Variant cystatin-C fibril")
	(repeatedUnit [GK_976891])
	(species [GK_48887])
	(stableIdentifier [GK_1357844]))

([GK_976936] of Person
	(_displayName "Vigushin, DM")
	(DB_ID 976936)
	(initial "DM")
	(surname "Vigushin"))

([GK_976937] of LiteratureReference
	(_displayName "Structural stability of amyloid fibrils of beta(2)-microglobulin in comparison with its native fold")
	(author
		[GK_976900]
		[GK_976880])
	(DB_ID 976937)
	(journal "Biochim Biophys Acta")
	(pages "64-75")
	(pubMedIdentifier 16213801)
	(title "Structural stability of amyloid fibrils of beta(2)-microglobulin in comparison with its native fold")
	(volume 1753)
	(year 2005))

([GK_976938] of Person
	(_displayName "Grubb, A")
	(DB_ID 976938)
	(initial "A")
	(surname "Grubb"))

([GK_976939] of LiteratureReference
	(_displayName "A stop-codon mutation in the BRI gene associated with familial British dementia")
	(author
		[GK_976901]
		[GK_976928]
		[GK_976897]
		[GK_976895]
		[GK_976910]
		[GK_976915]
		[GK_976876])
	(DB_ID 976939)
	(journal "Nature")
	(pages "776-81")
	(pubMedIdentifier 10391242)
	(title "A stop-codon mutation in the BRI gene associated with familial British dementia")
	(volume 399)
	(year 1999))

([GK_976940] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Gelsolin amyloid fragment [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976940)
	(endCoordinate 270)
	(name "Gelsolin amyloid fragment")
	(referenceEntity [GK_55564])
	(species [GK_48887])
	(stableIdentifier [GK_1358177])
	(startCoordinate 200))

([GK_976941] of LiteratureReference
	(_displayName "Variant apolipoprotein AI as a major constituent of a human hereditary amyloid")
	(author
		[GK_947995]
		[GK_976853]
		[GK_976864]
		[GK_976904])
	(DB_ID 976941)
	(journal "Biochem Biophys Res Commun")
	(pages "762-8")
	(pubMedIdentifier 3142462)
	(title "Variant apolipoprotein AI as a major constituent of a human hereditary amyloid")
	(volume 156)
	(year 1988))

([GK_976942] of LiteratureReference
	(_displayName "A new human hereditary amyloidosis: the result of a stop-codon mutation in the apolipoprotein AII gene")
	(author
		[GK_976904]
		[GK_976874]
		[GK_976886]
		[GK_194488]
		[GK_976931]
		[GK_976861]
		[GK_976932])
	(DB_ID 976942)
	(journal "Genomics")
	(pages "272-7")
	(pubMedIdentifier 11401442)
	(title "A new human hereditary amyloidosis: the result of a stop-codon mutation in the apolipoprotein AII gene")
	(volume 72)
	(year 2001))

([GK_976943] of Person
	(_displayName "Arnason, A")
	(DB_ID 976943)
	(initial "A")
	(surname "Arnason"))

([GK_976944] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Variant lysozyme C [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976944)
	(endCoordinate 148)
	(hasModifiedResidue [GK_976926])
	(literatureReference [GK_976877])
	(name
		"Variant lysozyme C"
		"LYZ"
		"LYSC_HUMAN"
		"LYZ")
	(referenceEntity [GK_58841])
	(species [GK_48887])
	(stableIdentifier [GK_1357692])
	(startCoordinate 19))

([GK_976945] of Polymer
	(_displayName "[Hsa] Beta2-microglobulin fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976945)
	(literatureReference
		[GK_976896]
		[GK_976937])
	(name "Beta2-microglobulin fibril")
	(repeatedUnit [GK_167743])
	(species [GK_48887])
	(stableIdentifier [GK_1358224]))

([GK_976946] of Person
	(_displayName "BergstrÃ¶m, J")
	(DB_ID 976946)
	(initial "J")
	(surname "BergstrÃ¶m"))

([GK_976947] of Person
	(_displayName "Tennent, GA")
	(DB_ID 976947)
	(initial "GA")
	(surname "Tennent"))

([GK_976948] of Person
	(_displayName "Lelyveld, V")
	(DB_ID 976948)
	(initial "V")
	(surname "Lelyveld"))

([GK_976949] of LiteratureReference
	(_displayName "Codeposition of apolipoprotein A-IV and transthyretin in senile systemic (ATTR) amyloidosis")
	(author
		[GK_976946]
		[GK_976953]
		[GK_207287]
		[GK_976922]
		[GK_374884]
		[GK_976858]
		[GK_976884])
	(DB_ID 976949)
	(journal "Biochem Biophys Res Commun")
	(pages "903-8")
	(pubMedIdentifier 11467836)
	(title "Codeposition of apolipoprotein A-IV and transthyretin in senile systemic (ATTR) amyloidosis")
	(volume 285)
	(year 2001))

([GK_976950] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Atrial natriuretic factor [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976950)
	(endCoordinate -1)
	(name
		"Atrial natriuretic factor"
		"NPPA"
		"ANF_HUMAN"
		"NPPA")
	(referenceEntity [GK_49984])
	(species [GK_48887])
	(stableIdentifier [GK_1358061])
	(startCoordinate 1))

([GK_976952] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Medin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976952)
	(endCoordinate 317)
	(name
		"Medin"
		"MFGE8"
		"MFGM_HUMAN"
		"MFGE8")
	(referenceEntity [GK_59185])
	(species [GK_48887])
	(stableIdentifier [GK_1357984])
	(startCoordinate 268))

([GK_976953] of Person
	(_displayName "Murphy, C")
	(DB_ID 976953)
	(initial "C")
	(surname "Murphy"))

([GK_976954] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Alpha-synuclein [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976954)
	(endCoordinate -1)
	(name
		"Alpha-synuclein"
		"SNCA"
		"SYUA_HUMAN"
		"SNCA")
	(referenceEntity [GK_65462])
	(species [GK_48887])
	(stableIdentifier [GK_1358359])
	(startCoordinate 1))

([GK_976957] of Person
	(_displayName "Agarwal, A")
	(DB_ID 976957)
	(initial "A")
	(surname "Agarwal"))

([GK_976958] of Person
	(_displayName "Hayden, DW")
	(DB_ID 976958)
	(initial "DW")
	(surname "Hayden"))

([GK_976959] of LiteratureReference
	(_displayName "Prolactin-derived amyloid in the aging pituitary gland")
	(author
		[GK_976884]
		[GK_976962]
		[GK_976986]
		[GK_976965]
		[GK_976906])
	(DB_ID 976959)
	(journal "Am J Pathol")
	(pages "67-73")
	(pubMedIdentifier 9006323)
	(title "Prolactin-derived amyloid in the aging pituitary gland")
	(volume 150)
	(year 1997))

([GK_976960] of Person
	(_displayName "Slavin, G")
	(DB_ID 976960)
	(initial "G")
	(surname "Slavin"))

([GK_976961] of Person
	(_displayName "O'Brien, TD")
	(DB_ID 976961)
	(initial "TD")
	(surname "O'Brien"))

([GK_976962] of Person
	(_displayName "Eriksson, L")
	(DB_ID 976962)
	(initial "L")
	(surname "Eriksson"))

([GK_976963] of DefinedSet
	(_displayName "[Hsa] Localized amyloid fibril main peptide chains [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976963)
	(hasMember
		[GK_976748]
		[GK_976978]
		[GK_976981]
		[GK_976987]
		[GK_976974]
		[GK_977219]
		[GK_977096]
		[GK_977188]
		[GK_977101]
		[GK_977079]
		[GK_977087])
	(literatureReference [GK_976859])
	(name "Localized amyloid fibril main peptide chains")
	(species [GK_48887])
	(stableIdentifier [GK_1358199])
	(summation [GK_976920]))

([GK_976965] of Person
	(_displayName "EnestrÃ¶m, S")
	(DB_ID 976965)
	(initial "S")
	(surname "EnestrÃ¶m"))

([GK_976967] of LiteratureReference
	(_displayName "Isolated atrial amyloid contains atrial natriuretic peptide: a report of six cases")
	(author
		[GK_976980]
		[GK_976994]
		[GK_976973]
		[GK_976975]
		[GK_976985]
		[GK_976960])
	(DB_ID 976967)
	(journal "Br Heart J")
	(pages "317-20")
	(pubMedIdentifier 2945573)
	(title "Isolated atrial amyloid contains atrial natriuretic peptide: a report of six cases")
	(volume 56)
	(year 1986))

([GK_976968] of LiteratureReference
	(_displayName "Unraveling the amyloid associated with human medullary thyroid carcinoma")
	(author
		[GK_976988]
		[GK_976957]
		[GK_976972]
		[GK_976969]
		[GK_976971]
		[GK_976989]
		[GK_976992])
	(DB_ID 976968)
	(journal "Endocrinology")
	(pages "5465-70")
	(pubMedIdentifier 15459123)
	(title "Unraveling the amyloid associated with human medullary thyroid carcinoma")
	(volume 145)
	(year 2004))

([GK_976969] of Person
	(_displayName "Verma, N")
	(DB_ID 976969)
	(initial "N")
	(surname "Verma"))

([GK_976970] of LiteratureReference
	(_displayName "Amyloid fibrils in human insulinoma and islets of Langerhans of the diabetic cat are derived from a neuropeptide-like protein also present in normal islet cells")
	(author
		[GK_976884]
		[GK_163570]
		[GK_976979]
		[GK_976958]
		[GK_976961]
		[GK_976995])
	(DB_ID 976970)
	(journal "Proc Natl Acad Sci U S A")
	(pages "3881-5")
	(pubMedIdentifier 3035556)
	(title "Amyloid fibrils in human insulinoma and islets of Langerhans of the diabetic cat are derived from a neuropeptide-like protein also present in normal islet cells")
	(volume 84)
	(year 1987))

([GK_976971] of Person
	(_displayName "Sharma, AK")
	(DB_ID 976971)
	(initial "AK")
	(surname "Sharma"))

([GK_976972] of Person
	(_displayName "Bajpai, VK")
	(DB_ID 976972)
	(initial "VK")
	(surname "Bajpai"))

([GK_976973] of Person
	(_displayName "d'Ardenne, AJ")
	(DB_ID 976973)
	(initial "AJ")
	(surname "d'Ardenne"))

([GK_976974] of Polymer
	(_displayName "[Hsa] Prolactin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976974)
	(literatureReference [GK_976959])
	(name "Prolactin amyloid fibril")
	(repeatedUnit [GK_976984])
	(species [GK_48887])
	(stableIdentifier [GK_1357875]))

([GK_976975] of Person
	(_displayName "Edmondson, SJ")
	(DB_ID 976975)
	(initial "SJ")
	(surname "Edmondson"))

([GK_976978] of Polymer
	(_displayName "[Hsa] Calcitonin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976978)
	(literatureReference [GK_976968])
	(name "Calcitonin amyloid fibril")
	(repeatedUnit [GK_419781])
	(species [GK_48887])
	(stableIdentifier [GK_1358284]))

([GK_976979] of Person
	(_displayName "Wilander, E")
	(DB_ID 976979)
	(initial "E")
	(surname "Wilander"))

([GK_976980] of Person
	(_displayName "Kaye, GC")
	(DB_ID 976980)
	(initial "GC")
	(surname "Kaye"))

([GK_976981] of Polymer
	(_displayName "[Hsa] Islet amyloid polypeptide fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976981)
	(literatureReference [GK_976970])
	(name "Islet amyloid polypeptide fibril")
	(repeatedUnit [GK_420076])
	(species [GK_48887])
	(stableIdentifier [GK_1357672]))

([GK_976984] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Prolactin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976984)
	(endCoordinate 227)
	(name
		"Prolactin"
		"PRL"
		"PRL_HUMAN"
		"PRL")
	(referenceEntity [GK_62178])
	(species [GK_48887])
	(stableIdentifier [GK_1358225])
	(startCoordinate 29))

([GK_976985] of Person
	(_displayName "Camm, AJ")
	(DB_ID 976985)
	(initial "AJ")
	(surname "Camm"))

([GK_976986] of Person
	(_displayName "EngstrÃ¶m, U")
	(DB_ID 976986)
	(initial "U")
	(surname "EngstrÃ¶m"))

([GK_976987] of Polymer
	(_displayName "[Hsa] Atrial natriuretic factor amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 976987)
	(literatureReference
		[GK_976967]
		[GK_976993])
	(name "Atrial natriuretic factor amyloid fibril")
	(repeatedUnit [GK_976950])
	(species [GK_48887])
	(stableIdentifier [GK_1357872]))

([GK_976988] of Person
	(_displayName "Khurana, R")
	(DB_ID 976988)
	(initial "R")
	(surname "Khurana"))

([GK_976989] of Person
	(_displayName "Gupta, RP")
	(DB_ID 976989)
	(initial "RP")
	(surname "Gupta"))

([GK_976990] of Person
	(_displayName "Johansson, B")
	(DB_ID 976990)
	(initial "B")
	(surname "Johansson"))

([GK_976992] of Person
	(_displayName "Madhusudan, KP")
	(DB_ID 976992)
	(initial "KP")
	(surname "Madhusudan"))

([GK_976993] of LiteratureReference
	(_displayName "The relation of atrial natriuretic factor to isolated atrial amyloid")
	(author
		[GK_976990]
		[GK_976884])
	(DB_ID 976993)
	(journal "Exp Mol Pathol")
	(pages "266-78")
	(pubMedIdentifier 2142465)
	(title "The relation of atrial natriuretic factor to isolated atrial amyloid")
	(volume 52)
	(year 1990))

([GK_976994] of Person
	(_displayName "Butler, MG")
	(DB_ID 976994)
	(initial "MG")
	(surname "Butler"))

([GK_976995] of Person
	(_displayName "Johnson, KH")
	(DB_ID 976995)
	(initial "KH")
	(surname "Johnson"))

([GK_977077] of LiteratureReference
	(_displayName "Glycosaminoglycan and proteoglycan inhibit the depolymerization of beta2-microglobulin amyloid fibrils in vitro")
	(author
		[GK_186930]
		[GK_977108]
		[GK_977193]
		[GK_977107]
		[GK_217173]
		[GK_114197]
		[GK_189563]
		[GK_445564]
		[GK_204598]
		[GK_977120]
		[GK_976892])
	(DB_ID 977077)
	(journal "Kidney Int")
	(pages "1080-8")
	(pubMedIdentifier 12911560)
	(title "Glycosaminoglycan and proteoglycan inhibit the depolymerization of beta2-microglobulin amyloid fibrils in vitro")
	(volume 64)
	(year 2003))

([GK_977078] of Person
	(_displayName "Kisilevsky, R")
	(DB_ID 977078)
	(initial "R")
	(surname "Kisilevsky"))

([GK_977079] of Polymer
	(_displayName "[Hsa] Semenogelin-1 amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977079)
	(literatureReference [GK_977189])
	(name "Semenogelin-1 amyloid fibril")
	(repeatedUnit [GK_977100])
	(species [GK_48887])
	(stableIdentifier [GK_1357980]))

([GK_977080] of Person
	(_displayName "Klintworth, GK")
	(DB_ID 977080)
	(initial "GK")
	(surname "Klintworth"))

([GK_977081] of LiteratureReference
	(_displayName "Apolipoprotein E, amyloid, and Alzheimer disease")
	(author
		[GK_977160]
		[GK_977124]
		[GK_977132]
		[GK_977178]
		[GK_428598])
	(DB_ID 977081)
	(journal "Mol Interv")
	(pages "363-75, 339")
	(pubMedIdentifier 14993413)
	(title "Apolipoprotein E, amyloid, and Alzheimer disease")
	(volume 2)
	(year 2002))

([GK_977082] of Person
	(_displayName "JimÃ©nez, JL")
	(DB_ID 977082)
	(initial "JL")
	(surname "JimÃ©nez"))

([GK_977083] of Person
	(_displayName "Donnell, RL")
	(DB_ID 977083)
	(initial "RL")
	(surname "Donnell"))

([GK_977084] of Complex
	(_displayName "[Hsa] Amyloid fibrils [extracellular region]")
	(compartment
		[GK_984]
		[GK_876])
	(DB_ID 977084)
	(hasComponent
		[GK_977144]
		[GK_976776]
		[GK_174719]
		[GK_977180])
	(isChimeric FALSE)
	(name "Amyloid fibrils")
	(species [GK_48887])
	(stableIdentifier [GK_1358358]))

([GK_977085] of LiteratureReference
	(_displayName "Multiple assembly pathways underlie amyloid-beta fibril polymorphisms")
	(author
		[GK_977214]
		[GK_977095]
		[GK_977204]
		[GK_913920]
		[GK_977129])
	(DB_ID 977085)
	(journal "J Mol Biol")
	(pages "282-98")
	(pubMedIdentifier 16095615)
	(title "Multiple assembly pathways underlie amyloid-beta fibril polymorphisms")
	(volume 352)
	(year 2005))

([GK_977086] of Person
	(_displayName "Chiti, F")
	(DB_ID 977086)
	(initial "F")
	(surname "Chiti"))

([GK_977087] of Polymer
	(_displayName "[Hsa] Odontogenic ameloblast-associated protein amyloid fibrils [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977087)
	(literatureReference [GK_977213])
	(name "Odontogenic ameloblast-associated protein amyloid fibrils")
	(repeatedUnit [GK_977149])
	(species [GK_48887])
	(stableIdentifier [GK_1357973]))

([GK_977088] of Person
	(_displayName "Brunden, KR")
	(DB_ID 977088)
	(initial "KR")
	(surname "Brunden"))

([GK_977089] of Person
	(_displayName "Purvis, A")
	(DB_ID 977089)
	(initial "A")
	(surname "Purvis"))

([GK_977090] of Person
	(_displayName "Baratz, KH")
	(DB_ID 977090)
	(initial "KH")
	(surname "Baratz"))

([GK_977091] of LiteratureReference
	(_displayName "Insulin as an amyloid-fibril protein at sites of repeated insulin injections in a diabetic patient")
	(author
		[GK_977133]
		[GK_163570]
		[GK_374884]
		[GK_976884]
		[GK_976739]
		[GK_977159]
		[GK_469669]
		[GK_977200])
	(DB_ID 977091)
	(journal "Diabetologia")
	(pages "158-61")
	(pubMedIdentifier 3286343)
	(title "Insulin as an amyloid-fibril protein at sites of repeated insulin injections in a diabetic patient")
	(volume 31)
	(year 1988))

([GK_977092] of Person
	(_displayName "Rocken, C")
	(DB_ID 977092)
	(initial "C")
	(surname "Rocken"))

([GK_977093] of Person
	(_displayName "Glennert, J")
	(DB_ID 977093)
	(initial "J")
	(surname "Glennert"))

([GK_977094] of LiteratureReference
	(_displayName "Temporal relationship between glycosaminoglycan accumulation and amyloid deposition during experimental amyloidosis. A histochemical study")
	(author
		[GK_977167]
		[GK_977078])
	(DB_ID 977094)
	(journal "Lab Invest")
	(pages "37-44")
	(pubMedIdentifier 2409350)
	(title "Temporal relationship between glycosaminoglycan accumulation and amyloid deposition during experimental amyloidosis. A histochemical study")
	(volume 53)
	(year 1985))

([GK_977095] of Person
	(_displayName "Frey, P")
	(DB_ID 977095)
	(initial "P")
	(surname "Frey"))

([GK_977096] of Polymer
	(_displayName "[Hsa] Medin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977096)
	(literatureReference
		[GK_977154]
		[GK_977187])
	(name "Medin amyloid fibril")
	(repeatedUnit [GK_976952])
	(species [GK_48887])
	(stableIdentifier [GK_1358567]))

([GK_977097] of Person
	(_displayName "Dobson, CM")
	(DB_ID 977097)
	(initial "CM")
	(surname "Dobson"))

([GK_977098] of Person
	(_displayName "Nordstedt, C")
	(DB_ID 977098)
	(initial "C")
	(surname "Nordstedt"))

([GK_977099] of LiteratureReference
	(_displayName "The protofilament structure of insulin amyloid fibrils")
	(author
		[GK_977082]
		[GK_977113]
		[GK_977116]
		[GK_358192]
		[GK_977097]
		[GK_977210])
	(DB_ID 977099)
	(journal "Proc Natl Acad Sci U S A")
	(pages "9196-201")
	(pubMedIdentifier 12093917)
	(title "The protofilament structure of insulin amyloid fibrils")
	(volume 99)
	(year 2002))

([GK_977100] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Semenogelin-1 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977100)
	(endCoordinate -1)
	(name
		"Semenogelin-1"
		"SEMG1"
		"SEMG1_HUMAN"
		"SEMG1")
	(referenceEntity [GK_64296])
	(species [GK_48887])
	(stableIdentifier [GK_1358399])
	(startCoordinate 1))

([GK_977101] of Polymer
	(_displayName "[Hsa] Lactotransferrin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977101)
	(literatureReference [GK_977118])
	(name
		"Lactotransferrin amyloid fibril"
		"Lactoferrin amyloid fibril")
	(repeatedUnit [GK_977171])
	(species [GK_48887])
	(stableIdentifier [GK_1358001]))

([GK_977102] of Person
	(_displayName "Blasi, MA")
	(DB_ID 977102)
	(initial "MA")
	(surname "Blasi"))

([GK_977103] of Person
	(_displayName "Escoto, R")
	(DB_ID 977103)
	(initial "R")
	(surname "Escoto"))

([GK_977104] of Person
	(_displayName "Bernstein, SL")
	(DB_ID 977104)
	(initial "SL")
	(surname "Bernstein"))

([GK_977105] of DefinedSet
	(_displayName "[Hsa] Systemic amyloid fibrim monomers [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977105)
	(hasMember
		[GK_976881]
		[GK_976882]
		[GK_1302721]
		[GK_976883]
		[GK_976865]
		[GK_976870]
		[GK_976940]
		[GK_976944]
		[GK_976891]
		[GK_976905]
		[GK_976878])
	(name "Systemic amyloid fibrim monomers")
	(species [GK_48887])
	(stableIdentifier [GK_1357748]))

([GK_977106] of Person
	(_displayName "Alexandrescu, AT")
	(DB_ID 977106)
	(initial "AT")
	(surname "Alexandrescu"))

([GK_977107] of Person
	(_displayName "Seto, K")
	(DB_ID 977107)
	(initial "K")
	(surname "Seto"))

([GK_977108] of Person
	(_displayName "Suda, H")
	(DB_ID 977108)
	(initial "H")
	(surname "Suda"))

([GK_977109] of LiteratureReference
	(_displayName "Heparan sulfate proteoglycans in amyloidosis")
	(author
		[GK_114129]
		[GK_977158])
	(DB_ID 977109)
	(journal "Prog Mol Biol Transl Sci")
	(pages "309-34")
	(pubMedIdentifier 20807650)
	(title "Heparan sulfate proteoglycans in amyloidosis")
	(volume 93)
	(year 2010))

([GK_977110] of Person
	(_displayName "Cousin, P")
	(DB_ID 977110)
	(initial "P")
	(surname "Cousin"))

([GK_977111] of Summation
	(_displayName "Amyloid fibril formation is associated with a wide range of ...")
	(DB_ID 977111)
	(literatureReference
		[GK_977131]
		[GK_1247805]
		[GK_977199]
		[GK_976862]
		[GK_977195]
		[GK_977085])
	(text "Amyloid fibril formation is associated with a wide range of diseases (Chiti & Dobson 2006), thoughthe accumulation and deposition of fibrillar material does not correlate well with disease pathogenesis and it is now widely believed that oligomeric amyloid forms are  largely responsible for the cytotoxic effects of amyloid (Glabe 2009). Fibrils have been described as more like crystalline polymer structures than the protein monomers they are derived from (Wetzel et al. 2007). Fibril formation is usually preceded by the association of monomers into oligomeric structures (Kodali & Wetzel 2007). For Beta-amyloid, these are spherical structures with around 12 units (Bernstein et al. 2005). Larger structures called protofibrils are also observed, non-spherical filamentous structures lacking a periodic substructure (Goldsbury 2005). "))

([GK_977112] of Person
	(_displayName "Hansen, JB")
	(DB_ID 977112)
	(initial "JB")
	(surname "Hansen"))

([GK_977113] of Person
	(_displayName "Nettleton, EJ")
	(DB_ID 977113)
	(initial "EJ")
	(surname "Nettleton"))

([GK_977114] of Person
	(_displayName "Ngo, C")
	(DB_ID 977114)
	(initial "C")
	(surname "Ngo"))

([GK_977115] of LiteratureReference
	(_displayName "Proteoglycans in the pathogenesis of Alzheimer's disease and other amyloidoses")
	(author
		[GK_977167]
		[GK_977185])
	(DB_ID 977115)
	(journal "Neurobiol Aging")
	(pages "481-97")
	(pubMedIdentifier 2682326)
	(title "Proteoglycans in the pathogenesis of Alzheimer's disease and other amyloidoses")
	(volume 10)
	(year 1989))

([GK_977116] of Person
	(_displayName "Bouchard, M")
	(DB_ID 977116)
	(initial "M")
	(surname "Bouchard"))

([GK_977117] of Person
	(_displayName "Hrncic, R")
	(DB_ID 977117)
	(initial "R")
	(surname "Hrncic"))

([GK_977118] of LiteratureReference
	(_displayName "Familial subepithelial corneal amyloidosis--a lactoferrin-related amyloidosis")
	(author
		[GK_977080]
		[GK_977208]
		[GK_977134]
		[GK_977090]
		[GK_977201]
		[GK_538696])
	(DB_ID 977118)
	(journal "Invest Ophthalmol Vis Sci")
	(pages "2756-63")
	(pubMedIdentifier 9418728)
	(title "Familial subepithelial corneal amyloidosis--a lactoferrin-related amyloidosis")
	(volume 38)
	(year 1997))

([GK_977119] of Person
	(_displayName "Linke, RP")
	(DB_ID 977119)
	(initial "RP")
	(surname "Linke"))

([GK_977120] of Person
	(_displayName "Gejyo, F")
	(DB_ID 977120)
	(initial "F")
	(surname "Gejyo"))

([GK_977121] of LiteratureReference
	(_displayName "Interactions of Alzheimer amyloid-beta peptides with glycosaminoglycans effects on fibril nucleation and growth")
	(author
		[GK_977202]
		[GK_977211]
		[GK_114129]
		[GK_977186]
		[GK_977130])
	(DB_ID 977121)
	(journal "Eur J Biochem")
	(pages "1101-10")
	(pubMedIdentifier 10583407)
	(title "Interactions of Alzheimer amyloid-beta peptides with glycosaminoglycans effects on fibril nucleation and growth")
	(volume 266)
	(year 1999))

([GK_977122] of Person
	(_displayName "Shea, JE")
	(DB_ID 977122)
	(initial "JE")
	(surname "Shea"))

([GK_977123] of Person
	(_displayName "Eisenberg, D")
	(DB_ID 977123)
	(initial "D")
	(surname "Eisenberg"))

([GK_977124] of Person
	(_displayName "Dodart, JC")
	(DB_ID 977124)
	(initial "JC")
	(surname "Dodart"))

([GK_977125] of Person
	(_displayName "Othenin-Girard, P")
	(DB_ID 977125)
	(initial "P")
	(surname "Othenin-Girard"))

([GK_977126] of LiteratureReference
	(_displayName "Amyloid P component. A critical review")
	(author
		[GK_976739]
		[GK_976907]
		[GK_977153]
		[GK_977145]
		[GK_977170]
		[GK_70650])
	(DB_ID 977126)
	(journal "Amyloid")
	(title "Amyloid P component. A critical review")
	(volume 4)
	(year 1997))

([GK_977127] of LiteratureReference
	(_displayName "BIGH3 mutation spectrum in corneal dystrophies")
	(author
		[GK_216603]
		[GK_977212]
		[GK_977125]
		[GK_977150]
		[GK_977110]
		[GK_977143]
		[GK_977137]
		[GK_977217]
		[GK_977102]
		[GK_977128]
		[GK_419837]
		[GK_977103]
		[GK_977215]
		[GK_977194]
		[GK_977164]
		[GK_977179]
		[GK_977176]
		[GK_977209]
		[GK_977135]
		[GK_216645])
	(DB_ID 977127)
	(journal "Invest Ophthalmol Vis Sci")
	(pages "949-54")
	(pubMedIdentifier 11923233)
	(title "BIGH3 mutation spectrum in corneal dystrophies")
	(volume 43)
	(year 2002))

([GK_977128] of Person
	(_displayName "Balestrazzi, E")
	(DB_ID 977128)
	(initial "E")
	(surname "Balestrazzi"))

([GK_977129] of Person
	(_displayName "MÃ¼ller, SA")
	(DB_ID 977129)
	(initial "SA")
	(surname "MÃ¼ller"))

([GK_977130] of Person
	(_displayName "Fraser, PE")
	(DB_ID 977130)
	(initial "PE")
	(surname "Fraser"))

([GK_977131] of LiteratureReference
	(_displayName "Protein misfolding, functional amyloid, and human disease")
	(author
		[GK_977086]
		[GK_977097])
	(DB_ID 977131)
	(journal "Annu Rev Biochem")
	(pages "333-66")
	(pubMedIdentifier 16756495)
	(title "Protein misfolding, functional amyloid, and human disease")
	(volume 75)
	(year 2006))

([GK_977132] of Person
	(_displayName "DeMattos, RB")
	(DB_ID 977132)
	(initial "RB")
	(surname "DeMattos"))

([GK_977133] of Person
	(_displayName "Dische, FE")
	(DB_ID 977133)
	(initial "FE")
	(surname "Dische"))

([GK_977134] of Person
	(_displayName "Kielar, RA")
	(DB_ID 977134)
	(initial "RA")
	(surname "Kielar"))

([GK_977135] of Person
	(_displayName "Zografos, L")
	(DB_ID 977135)
	(initial "L")
	(surname "Zografos"))

([GK_977136] of Polymerisation
	(_displayName "[Hsa] Amyloid precursor proteins form ordered fibrils")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 977136)
	(edited [GK_1247884])
	(input [GK_977175])
	(isChimeric FALSE)
	(literatureReference
		[GK_1247791]
		[GK_1247809]
		[GK_1247702]
		[GK_1247697]
		[GK_1247691]
		[GK_1247711]
		[GK_976941]
		[GK_976942]
		[GK_976949]
		[GK_976852]
		[GK_976877]
		[GK_976921]
		[GK_976879]
		[GK_976939]
		[GK_1247724]
		[GK_1247757]
		[GK_1247784]
		[GK_976970]
		[GK_1247766]
		[GK_1247781]
		[GK_976959]
		[GK_1247801]
		[GK_977154]
		[GK_977166]
		[GK_1247709]
		[GK_1247717]
		[GK_977189])
	(name "Amyloid precursor proteins form ordered fibrils")
	(output [GK_977144])
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357608])
	(summation [GK_977111]))

([GK_977137] of Person
	(_displayName "HÃ©on, E")
	(DB_ID 977137)
	(initial "E")
	(surname "HÃ©on"))

([GK_977138] of Person
	(_displayName "Rimvall, K")
	(DB_ID 977138)
	(initial "K")
	(surname "Rimvall"))

([GK_977139] of LiteratureReference
	(_displayName "Molecular chaperone properties of serum amyloid P component")
	(author
		[GK_977196]
		[GK_977089]
		[GK_500144]
		[GK_976739]
		[GK_976731])
	(DB_ID 977139)
	(journal "FEBS Lett")
	(pages "199-202")
	(pubMedIdentifier 10812074)
	(title "Molecular chaperone properties of serum amyloid P component")
	(volume 473)
	(year 2000))

([GK_977140] of Person
	(_displayName "Tjernberg, LO")
	(DB_ID 977140)
	(initial "LO")
	(surname "Tjernberg"))

([GK_977141] of Person
	(_displayName "DjemaÃ¯, A")
	(DB_ID 977141)
	(initial "A")
	(surname "DjemaÃ¯"))

([GK_977142] of InstanceEdit
	(_displayName "Jupe, S, 2010-10-15")
	(author [GK_391309])
	(dateTime "2010-10-15 13:19:12")
	(DB_ID 977142))

([GK_977143] of Person
	(_displayName "Wang, MX")
	(DB_ID 977143)
	(initial "MX")
	(surname "Wang"))

([GK_977144] of DefinedSet
	(_displayName "[Hsa] Amyloid fibril main peptide chains [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977144)
	(hasMember
		[GK_976963]
		[GK_976760]
		[GK_1247852])
	(name "Amyloid fibril main peptide chains")
	(species [GK_48887])
	(stableIdentifier [GK_1357743]))

([GK_977145] of Person
	(_displayName "Gallimore, J")
	(DB_ID 977145)
	(initial "J")
	(surname "Gallimore"))

([GK_977146] of Person
	(_displayName "Nelson, R")
	(DB_ID 977146)
	(initial "R")
	(surname "Nelson"))

([GK_977147] of Person
	(_displayName "Cummings, J")
	(DB_ID 977147)
	(initial "J")
	(surname "Cummings"))

([GK_977148] of LiteratureReference
	(_displayName "Amyloidosis: new strategies for treatment")
	(author
		[GK_976806]
		[GK_976869])
	(DB_ID 977148)
	(journal "Int J Biochem Cell Biol")
	(pages "1608-13")
	(pubMedIdentifier 12962700)
	(title "Amyloidosis: new strategies for treatment")
	(volume 35)
	(year 2003))

([GK_977149] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Odontogenic ameloblast-associated protein [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977149)
	(endCoordinate -1)
	(name
		"Odontogenic ameloblast-associated protein"
		"Apin"
		"ODAM_HUMAN"
		"ODAM")
	(referenceEntity [GK_240941])
	(species [GK_48887])
	(stableIdentifier [GK_1358376])
	(startCoordinate 1))

([GK_977150] of Person
	(_displayName "Uffer, S")
	(DB_ID 977150)
	(initial "S")
	(surname "Uffer"))

([GK_977151] of Person
	(_displayName "Korvatska, E")
	(DB_ID 977151)
	(initial "E")
	(surname "Korvatska"))

([GK_977152] of Person
	(_displayName "Le Paslier, D")
	(DB_ID 977152)
	(initial "D")
	(surname "Le Paslier"))

([GK_977153] of Person
	(_displayName "Hutchinson, WL")
	(DB_ID 977153)
	(initial "WL")
	(surname "Hutchinson"))

([GK_977154] of LiteratureReference
	(_displayName "Medin: an integral fragment of aortic smooth muscle cell-produced lactadherin forms the most common human amyloid")
	(author
		[GK_977173]
		[GK_977218]
		[GK_976906]
		[GK_374884]
		[GK_977198]
		[GK_977140]
		[GK_977098]
		[GK_976986]
		[GK_976884])
	(DB_ID 977154)
	(journal "Proc Natl Acad Sci U S A")
	(pages "8669-74")
	(pubMedIdentifier 10411933)
	(title "Medin: an integral fragment of aortic smooth muscle cell-produced lactadherin forms the most common human amyloid")
	(volume 96)
	(year 1999))

([GK_977155] of Person
	(_displayName "Bowers, MT")
	(DB_ID 977155)
	(initial "MT")
	(surname "Bowers"))

([GK_977156] of Person
	(_displayName "Frederickson, RC")
	(DB_ID 977156)
	(initial "RC")
	(surname "Frederickson"))

([GK_977157] of Person
	(_displayName "Baumketner, A")
	(DB_ID 977157)
	(initial "A")
	(surname "Baumketner"))

([GK_977158] of Person
	(_displayName "Li, JP")
	(DB_ID 977158)
	(initial "JP")
	(surname "Li"))

([GK_977159] of Person
	(_displayName "Rennie, JA")
	(DB_ID 977159)
	(initial "JA")
	(surname "Rennie"))

([GK_977160] of Person
	(_displayName "Bales, KR")
	(DB_ID 977160)
	(initial "KR")
	(surname "Bales"))

([GK_977161] of Person
	(_displayName "Shivaprasad, S")
	(DB_ID 977161)
	(initial "S")
	(surname "Shivaprasad"))

([GK_977162] of LiteratureReference
	(_displayName "Sulfate content and specific glycosaminoglycan backbone of perlecan are critical for perlecan's enhancement of islet amyloid polypeptide (amylin) fibril formation")
	(author
		[GK_977169]
		[GK_977197]
		[GK_203163]
		[GK_977191]
		[GK_977207]
		[GK_977138]
		[GK_977112]
		[GK_977167])
	(DB_ID 977162)
	(journal "Diabetes")
	(pages "612-20")
	(pubMedIdentifier 9568695)
	(title "Sulfate content and specific glycosaminoglycan backbone of perlecan are critical for perlecan's enhancement of islet amyloid polypeptide (amylin) fibril formation")
	(volume 47)
	(year 1998))

([GK_977163] of LiteratureReference
	(_displayName "Serum amyloid P component prevents proteolysis of the amyloid fibrils of Alzheimer disease and systemic amyloidosis")
	(author
		[GK_976947]
		[GK_977182]
		[GK_976739])
	(DB_ID 977163)
	(journal "Proc Natl Acad Sci U S A")
	(pages "4299-303")
	(pubMedIdentifier 7753801)
	(title "Serum amyloid P component prevents proteolysis of the amyloid fibrils of Alzheimer disease and systemic amyloidosis")
	(volume 92)
	(year 1995))

([GK_977164] of Person
	(_displayName "Gloor, B")
	(DB_ID 977164)
	(initial "B")
	(surname "Gloor"))

([GK_977165] of Person
	(_displayName "Wyttenbach, T")
	(DB_ID 977165)
	(initial "T")
	(surname "Wyttenbach"))

([GK_977166] of LiteratureReference
	(_displayName "Kerato-epithelin mutations in four 5q31-linked corneal dystrophies")
	(author
		[GK_216603]
		[GK_977151]
		[GK_977141]
		[GK_977152]
		[GK_977135]
		[GK_977184]
		[GK_216645])
	(DB_ID 977166)
	(journal "Nat Genet")
	(pages "247-51")
	(pubMedIdentifier 9054935)
	(title "Kerato-epithelin mutations in four 5q31-linked corneal dystrophies")
	(volume 15)
	(year 1997))

([GK_977167] of Person
	(_displayName "Snow, AD")
	(DB_ID 977167)
	(initial "AD")
	(surname "Snow"))

([GK_977168] of Person
	(_displayName "Williams, AD")
	(DB_ID 977168)
	(initial "AD")
	(surname "Williams"))

([GK_977169] of Person
	(_displayName "Castillo, GM")
	(DB_ID 977169)
	(initial "GM")
	(surname "Castillo"))

([GK_977170] of Person
	(_displayName "Collins, PM")
	(DB_ID 977170)
	(initial "PM")
	(surname "Collins"))

([GK_977171] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Lactotransferrin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977171)
	(endCoordinate 710)
	(name
		"Lactotransferrin"
		"Lactoferrin"
		"TRFL_HUMAN"
		"LTF")
	(referenceEntity [GK_66401])
	(species [GK_48887])
	(stableIdentifier [GK_1357954])
	(startCoordinate 20))

([GK_977172] of LiteratureReference
	(_displayName "Structural models of amyloid-like fibrils")
	(author
		[GK_977146]
		[GK_977123])
	(DB_ID 977172)
	(journal "Adv Protein Chem")
	(pages "235-82")
	(pubMedIdentifier 17190616)
	(title "Structural models of amyloid-like fibrils")
	(volume 73)
	(year 2006))

([GK_977173] of Person
	(_displayName "HÃ¤ggqvist, B")
	(DB_ID 977173)
	(initial "B")
	(surname "HÃ¤ggqvist"))

([GK_977174] of Summation
	(_displayName "In addition to the main fibril peptide, mature amyloid fibri...")
	(DB_ID 977174)
	(literatureReference
		[GK_977163]
		[GK_976859]
		[GK_977139]
		[GK_977177]
		[GK_977148]
		[GK_977077]
		[GK_977190]
		[GK_977115]
		[GK_977162]
		[GK_977183]
		[GK_977081])
	(text "In addition to the main fibril peptide, mature amyloid fibrils have additional components. Serum amyloid P component (SAP) binds to all types of amyloid fibrils and is a universal constituent of amyloid deposits. SAP binding protects amyloid fibrils from proteolytic degradation (Tennent et al. 1995, Westermark 2005). SAP may function as a chaperone for amyloid formation (Coker et al. 2000).\n\nGlycosaminoglycans (GAGs) and proteoglycans are found associated with all types of amyloid deposits (Alexandrescu 2005). Of the different types of GAG heparan sulfate and dermatan sulfate are the most prominent in amyloid deposits (Hirschfield & Hawkins, 2003). GAGs have been implicated in the nucleation of fibrils, they can also stabilize mature fibrils against dissociation (Yamaguchi et al. 2003) and proteolytic degradation (Gupta-Bansal et al. 1995).\n\nPerlecan coimmunolocalizes with all types of amyloids (Snow & Wright 1989), accelerating fibril formation (Castillo et al. 1998), stabilizing them once formed (Castillo et al. 1997), and protecting them from proteolytic degradation (Gupta-Bansal et al. 1995).\n\nApoE tightly binds to soluble ABeta peptide forming complexes that resist dissociation; it also binds to ABeta in its fibril form (Bales et al. 2002).  "))

([GK_977175] of DefinedSet
	(_displayName "[Hsa] Amyloid fibril monomers [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977175)
	(hasMember
		[GK_977181]
		[GK_977105]
		[GK_1247707])
	(name "Amyloid fibril monomers")
	(species [GK_48887])
	(stableIdentifier [GK_1358010]))

([GK_977176] of Person
	(_displayName "Singh, AD")
	(DB_ID 977176)
	(initial "AD")
	(surname "Singh"))

([GK_977177] of LiteratureReference
	(_displayName "Amyloid accomplices and enforcers")
	(author [GK_977106])
	(DB_ID 977177)
	(journal "Protein Sci")
	(pages "1-12")
	(pubMedIdentifier 15576561)
	(title "Amyloid accomplices and enforcers")
	(volume 14)
	(year 2005))

([GK_977178] of Person
	(_displayName "Holtzman, DM")
	(DB_ID 977178)
	(initial "DM")
	(surname "Holtzman"))

([GK_977179] of Person
	(_displayName "Fossarello, M")
	(DB_ID 977179)
	(initial "M")
	(surname "Fossarello"))

([GK_977180] of SimpleEntity
	(_displayName "Glycosaminoglycan [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977180)
	(name "Glycosaminoglycan")
	(referenceEntity [GK_977192])
	(stableIdentifier [GK_1358187]))

([GK_977181] of DefinedSet
	(_displayName "[Hsa] Localized amyloid fibril monomers [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977181)
	(hasMember
		[GK_976800]
		[GK_419781]
		[GK_420076]
		[GK_976950]
		[GK_976984]
		[GK_429407]
		[GK_976952]
		[GK_1302722]
		[GK_977171]
		[GK_977100]
		[GK_977149])
	(name "Localized amyloid fibril monomers")
	(species [GK_48887])
	(stableIdentifier [GK_1358592]))

([GK_977182] of Person
	(_displayName "Lovat, LB")
	(DB_ID 977182)
	(initial "LB")
	(surname "Lovat"))

([GK_977183] of LiteratureReference
	(_displayName "Perlecan binds to the beta-amyloid proteins (A beta) of Alzheimer's disease, accelerates A beta fibril formation, and maintains A beta fibril stability")
	(author
		[GK_977169]
		[GK_977114]
		[GK_977147]
		[GK_977185]
		[GK_977167])
	(DB_ID 977183)
	(journal "J Neurochem")
	(pages "2452-65")
	(pubMedIdentifier 9375678)
	(title "Perlecan binds to the beta-amyloid proteins (A beta) of Alzheimer's disease, accelerates A beta fibril formation, and maintains A beta fibril stability")
	(volume 69)
	(year 1997))

([GK_977184] of Person
	(_displayName "Pescia, G")
	(DB_ID 977184)
	(initial "G")
	(surname "Pescia"))

([GK_977185] of Person
	(_displayName "Wight, TN")
	(DB_ID 977185)
	(initial "TN")
	(surname "Wight"))

([GK_977186] of Person
	(_displayName "Deng, J")
	(DB_ID 977186)
	(initial "J")
	(surname "Deng"))

([GK_977187] of LiteratureReference
	(_displayName "Medin-amyloid: a recently characterized age-associated arterial amyloid form affects mainly arteries in the upper part of the body")
	(author
		[GK_500361]
		[GK_977093]
		[GK_976884])
	(DB_ID 977187)
	(journal "Amyloid")
	(pages "96-102")
	(pubMedIdentifier 16011985)
	(title "Medin-amyloid: a recently characterized age-associated arterial amyloid form affects mainly arteries in the upper part of the body")
	(volume 12)
	(year 2005))

([GK_977188] of Polymer
	(_displayName "[Hsa] Kerato-epithelin amyloid fibril [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977188)
	(literatureReference
		[GK_977127]
		[GK_977166])
	(name "Kerato-epithelin amyloid fibril")
	(repeatedUnit [GK_204605])
	(species [GK_48887])
	(stableIdentifier [GK_1358373]))

([GK_977189] of LiteratureReference
	(_displayName "Senile seminal vesicle amyloid is derived from semenogelin I")
	(author
		[GK_977119]
		[GK_977206]
		[GK_976849]
		[GK_202881]
		[GK_571213]
		[GK_977220]
		[GK_977092]
		[GK_976884]
		[GK_976922]
		[GK_976858])
	(DB_ID 977189)
	(journal "J Lab Clin Med")
	(pages "187-93")
	(pubMedIdentifier 15962837)
	(title "Senile seminal vesicle amyloid is derived from semenogelin I")
	(volume 145)
	(year 2005))

([GK_977190] of LiteratureReference
	(_displayName "Proteoglycan-mediated inhibition of A beta proteolysis. A potential cause of senile plaque accumulation")
	(author
		[GK_977221]
		[GK_977156]
		[GK_977088])
	(DB_ID 977190)
	(journal "J Biol Chem")
	(pages "18666-71")
	(pubMedIdentifier 7629198)
	(title "Proteoglycan-mediated inhibition of A beta proteolysis. A potential cause of senile plaque accumulation")
	(volume 270)
	(year 1995))

([GK_977191] of Person
	(_displayName "Judge, ME")
	(DB_ID 977191)
	(initial "ME")
	(surname "Judge"))

([GK_977192] of ReferenceMolecule
	(_displayName "ChEBI:18085 Glycosaminoglycan")
	(DB_ID 977192)
	(identifier "18085")
	(name "Glycosaminoglycan")
	(referenceDatabase [GK_114984]))

([GK_977193] of Person
	(_displayName "Tsuzuike, N")
	(DB_ID 977193)
	(initial "N")
	(surname "Tsuzuike"))

([GK_977194] of Person
	(_displayName "Hoeltzenbein, M")
	(DB_ID 977194)
	(initial "M")
	(surname "Hoeltzenbein"))

([GK_977195] of LiteratureReference
	(_displayName "Amyloid beta-protein: monomer structure and early aggregation states of Abeta42 and its Pro19 alloform")
	(author
		[GK_977104]
		[GK_977165]
		[GK_977157]
		[GK_977122]
		[GK_977205]
		[GK_75542]
		[GK_977155])
	(DB_ID 977195)
	(journal "J Am Chem Soc")
	(pages "2075-84")
	(pubMedIdentifier 15713083)
	(title "Amyloid beta-protein: monomer structure and early aggregation states of Abeta42 and its Pro19 alloform")
	(volume 127)
	(year 2005))

([GK_977196] of Person
	(_displayName "Coker, AR")
	(DB_ID 977196)
	(initial "AR")
	(surname "Coker"))

([GK_977197] of Person
	(_displayName "Cummings, JA")
	(DB_ID 977197)
	(initial "JA")
	(surname "Cummings"))

([GK_977198] of Person
	(_displayName "Mucchiano, G")
	(DB_ID 977198)
	(initial "G")
	(surname "Mucchiano"))

([GK_977199] of LiteratureReference
	(_displayName "Plasticity of amyloid fibrils")
	(author
		[GK_976917]
		[GK_977161]
		[GK_977168])
	(DB_ID 977199)
	(journal "Biochemistry")
	(pages "1-10")
	(pubMedIdentifier 17198370)
	(title "Plasticity of amyloid fibrils")
	(volume 46)
	(year 2007))

([GK_977200] of Person
	(_displayName "Watkins, PJ")
	(DB_ID 977200)
	(initial "PJ")
	(surname "Watkins"))

([GK_977201] of Person
	(_displayName "Campbell, RJ")
	(DB_ID 977201)
	(initial "RJ")
	(surname "Campbell"))

([GK_977202] of Person
	(_displayName "McLaurin, J")
	(DB_ID 977202)
	(initial "J")
	(surname "McLaurin"))

([GK_977203] of Person
	(_displayName "Weaver, K")
	(DB_ID 977203)
	(initial "K")
	(surname "Weaver"))

([GK_977204] of Person
	(_displayName "Olivieri, V")
	(DB_ID 977204)
	(initial "V")
	(surname "Olivieri"))

([GK_977205] of Person
	(_displayName "Bitan, G")
	(DB_ID 977205)
	(initial "G")
	(surname "Bitan"))

([GK_977206] of Person
	(_displayName "Joswig, R")
	(DB_ID 977206)
	(initial "R")
	(surname "Joswig"))

([GK_977207] of Person
	(_displayName "Sheardown, MJ")
	(DB_ID 977207)
	(initial "MJ")
	(surname "Sheardown"))

([GK_977208] of Person
	(_displayName "Valnickova, Z")
	(DB_ID 977208)
	(initial "Z")
	(surname "Valnickova"))

([GK_977209] of Person
	(_displayName "Arsenijevic, Y")
	(DB_ID 977209)
	(initial "Y")
	(surname "Arsenijevic"))

([GK_977210] of Person
	(_displayName "Saibil, HR")
	(DB_ID 977210)
	(initial "HR")
	(surname "Saibil"))

([GK_977211] of Person
	(_displayName "Franklin, T")
	(DB_ID 977211)
	(initial "T")
	(surname "Franklin"))

([GK_977212] of Person
	(_displayName "Frueh, BE")
	(DB_ID 977212)
	(initial "BE")
	(surname "Frueh"))

([GK_977213] of LiteratureReference
	(_displayName "Calcifying epithelial odontogenic (Pindborg) tumor-associated amyloid consists of a novel human protein")
	(author
		[GK_976858]
		[GK_976849]
		[GK_977203]
		[GK_976922]
		[GK_977117]
		[GK_207287]
		[GK_977083]
		[GK_976906]
		[GK_977216]
		[GK_976884])
	(DB_ID 977213)
	(journal "J Lab Clin Med")
	(pages "348-55")
	(pubMedIdentifier 14647039)
	(title "Calcifying epithelial odontogenic (Pindborg) tumor-associated amyloid consists of a novel human protein")
	(volume 142)
	(year 2003))

([GK_977214] of Person
	(_displayName "Goldsbury, C")
	(DB_ID 977214)
	(initial "C")
	(surname "Goldsbury"))

([GK_977215] of Person
	(_displayName "Barraquer, R")
	(DB_ID 977215)
	(initial "R")
	(surname "Barraquer"))

([GK_977216] of Person
	(_displayName "Westermark, G")
	(DB_ID 977216)
	(initial "G")
	(surname "Westermark"))

([GK_977217] of Person
	(_displayName "Black, GC")
	(DB_ID 977217)
	(initial "GC")
	(surname "Black"))

([GK_977218] of Person
	(_displayName "NÃ¤slund, J")
	(DB_ID 977218)
	(initial "J")
	(surname "NÃ¤slund"))

([GK_977219] of Polymer
	(_displayName "[Hsa] Human insulin analogue amyloid fibrils [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977219)
	(literatureReference
		[GK_977091]
		[GK_977099])
	(name "Human insulin analogue amyloid fibrils")
	(repeatedUnit [GK_429407])
	(species [GK_48887])
	(stableIdentifier [GK_1357931]))

([GK_977220] of Person
	(_displayName "Gross, U")
	(DB_ID 977220)
	(initial "U")
	(surname "Gross"))

([GK_977221] of Person
	(_displayName "Gupta-Bansal, R")
	(DB_ID 977221)
	(initial "R")
	(surname "Gupta-Bansal"))

([GK_977223] of Complex
	(_displayName "[Hsa] Serum amyloid P-component pentamer:Double-stranded DNA [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977223)
	(hasComponent
		[GK_976776]
		[GK_977589])
	(isChimeric FALSE)
	(name "Serum amyloid P-component pentamer:Double-stranded DNA")
	(species [GK_48887])
	(stableIdentifier [GK_1358194]))

([GK_977224] of Reaction
	(_displayName "[Hsa] Serum amyloid P binds DNA and chromatin")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 977224)
	(edited [GK_1247884])
	(input
		[GK_976776]
		[GK_977589])
	(isChimeric FALSE)
	(literatureReference
		[GK_976790]
		[GK_977414])
	(name "Serum amyloid P binds DNA and chromatin")
	(output [GK_977223])
	(precedingEvent [GK_976723])
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357590])
	(summation [GK_977425]))

([GK_977225] of Pathway
	(_displayName "[Hsa] Amyloids")
	(_doRelease TRUE)
	(authored [GK_977142])
	(compartment [GK_984])
	(DB_ID 977225)
	(edited [GK_1247884])
	(hasEvent
		[GK_976723]
		[GK_977136]
		[GK_976734]
		[GK_976817]
		[GK_977224])
	(literatureReference [GK_976859])
	(name "Amyloids")
	(releaseDate "2011-06-14")
	(reviewed [GK_1247882])
	(species [GK_48887])
	(stableIdentifier [GK_1357657])
	(summation [GK_976920]))

([GK_977412] of Person
	(_displayName "Walport, MJ")
	(DB_ID 977412)
	(initial "MJ")
	(surname "Walport"))

([GK_977413] of LiteratureReference
	(_displayName "Serum amyloid P component controls chromatin degradation and prevents antinuclear autoimmunity")
	(author
		[GK_977419]
		[GK_977423]
		[GK_977153]
		[GK_977421]
		[GK_976947]
		[GK_977415]
		[GK_977418]
		[GK_977417]
		[GK_976721]
		[GK_977412]
		[GK_976739])
	(DB_ID 977413)
	(journal "Nat Med")
	(pages "694-7")
	(pubMedIdentifier 10371509)
	(title "Serum amyloid P component controls chromatin degradation and prevents antinuclear autoimmunity")
	(volume 5)
	(year 1999))

([GK_977414] of LiteratureReference
	(_displayName "Binding of pentraxins to different nuclear structures: C-reactive protein binds to small nuclear ribonucleoprotein particles, serum amyloid P component binds to chromatin and nucleoli")
	(author
		[GK_976739]
		[GK_977427]
		[GK_976947]
		[GK_976721]
		[GK_977424])
	(DB_ID 977414)
	(journal "Clin Exp Immunol")
	(pages "152-7")
	(pubMedIdentifier 8033412)
	(title "Binding of pentraxins to different nuclear structures: C-reactive protein binds to small nuclear ribonucleoprotein particles, serum amyloid P component binds to chromatin and nucleoli")
	(volume 97)
	(year 1994))

([GK_977415] of Person
	(_displayName "Bybee, A")
	(DB_ID 977415)
	(initial "A")
	(surname "Bybee"))

([GK_977416] of LiteratureReference
	(_displayName "Pentraxin-chromatin interactions: serum amyloid P component specifically displaces H1-type histones and solubilizes native long chromatin")
	(author
		[GK_976721]
		[GK_976947]
		[GK_976739])
	(DB_ID 977416)
	(journal "J Exp Med")
	(pages "13-8")
	(pubMedIdentifier 2358775)
	(title "Pentraxin-chromatin interactions: serum amyloid P component specifically displaces H1-type histones and solubilizes native long chromatin")
	(volume 172)
	(year 1990))

([GK_977417] of Person
	(_displayName "Cook, HT")
	(DB_ID 977417)
	(initial "HT")
	(surname "Cook"))

([GK_977418] of Person
	(_displayName "Mitchell, DA")
	(DB_ID 977418)
	(initial "DA")
	(surname "Mitchell"))

([GK_977419] of Person
	(_displayName "Bickerstaff, MC")
	(DB_ID 977419)
	(initial "MC")
	(surname "Bickerstaff"))

([GK_977421] of Person
	(_displayName "Herbert, J")
	(DB_ID 977421)
	(initial "J")
	(surname "Herbert"))

([GK_977423] of Person
	(_displayName "Botto, M")
	(DB_ID 977423)
	(initial "M")
	(surname "Botto"))

([GK_977424] of Person
	(_displayName "Williams, DG")
	(DB_ID 977424)
	(initial "DG")
	(surname "Williams"))

([GK_977425] of Summation
	(_displayName "Serum amyloid P component (SAP) binds DNA and chromatin in a...")
	(DB_ID 977425)
	(literatureReference
		[GK_976790]
		[GK_977416]
		[GK_977413])
	(text "Serum amyloid P component (SAP) binds DNA and chromatin in a calcium dependent manner in physiological conditions (Pepys et al. 1987). This binding displaces H1-type histones (Butler et al. 1990), solubilizing chromatin which is otherwise insoluble in extracellular fluids. SAP may therefore participate in the in vivo handling of chromatin exposed by cell death. SAP knockout mice spontaneously develop antinuclear autoimmunity and severe glomerulonephritis, a phenotype resembling human systemic lupus erythematosus, a serious autoimmune disease, suggesting that SAP binding may play a role in reducing the immunogenicity of chromatin and preventing autoimmunity (Bickerstaff et al. 1999). "))

([GK_977427] of Person
	(_displayName "Booth, SE")
	(DB_ID 977427)
	(initial "SE")
	(surname "Booth"))

([GK_977554] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.g [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977554)
	(endCoordinate -1)
	(name "Histone H2A.g")
	(referenceEntity [GK_56136])
	(species [GK_48887])
	(stableIdentifier [GK_1357676])
	(startCoordinate 1))

([GK_977555] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.a [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977555)
	(endCoordinate -1)
	(name "Histone H2A.a")
	(referenceEntity [GK_56142])
	(species [GK_48887])
	(stableIdentifier [GK_1358244])
	(startCoordinate 1))

([GK_977556] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A-Bbd [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977556)
	(endCoordinate -1)
	(name "Histone H2A-Bbd")
	(referenceEntity [GK_231427])
	(species [GK_48887])
	(stableIdentifier [GK_1358637])
	(startCoordinate 1))

([GK_977557] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.n [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977557)
	(endCoordinate -1)
	(name "Histone H2B.n")
	(referenceEntity [GK_56184])
	(species [GK_48887])
	(stableIdentifier [GK_1358045])
	(startCoordinate 1))

([GK_977558] of CandidateSet
	(_displayName "[Hsa] Histone H2A [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977558)
	(hasCandidate
		[GK_977556]
		[GK_977555]
		[GK_977573]
		[GK_977554]
		[GK_977560]
		[GK_977577]
		[GK_977587]
		[GK_977563]
		[GK_977583]
		[GK_977575])
	(name "Histone H2A")
	(species [GK_48887])
	(stableIdentifier [GK_1357839]))

([GK_977559] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.d [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977559)
	(endCoordinate -1)
	(name "Histone H2B.d")
	(referenceEntity [GK_56172])
	(species [GK_48887])
	(stableIdentifier [GK_1358639])
	(startCoordinate 1))

([GK_977560] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.l [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977560)
	(endCoordinate -1)
	(name "Histone H2A.l")
	(referenceEntity [GK_56140])
	(species [GK_48887])
	(stableIdentifier [GK_1358509])
	(startCoordinate 1))

([GK_977561] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.b [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977561)
	(endCoordinate -1)
	(name "Histone H2B.b")
	(referenceEntity [GK_56168])
	(species [GK_48887])
	(stableIdentifier [GK_1358546])
	(startCoordinate 1))

([GK_977562] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.e [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977562)
	(endCoordinate -1)
	(name "Histone H2B.e")
	(referenceEntity [GK_56174])
	(species [GK_48887])
	(stableIdentifier [GK_1358096])
	(startCoordinate 1))

([GK_977563] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.q [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977563)
	(endCoordinate -1)
	(name "Histone H2A.q")
	(referenceEntity [GK_56148])
	(species [GK_48887])
	(stableIdentifier [GK_1358143])
	(startCoordinate 1))

([GK_977564] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.a/g/h/k/l [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977564)
	(endCoordinate -1)
	(name "Histone H2B.a/g/h/k/l")
	(referenceEntity [GK_56164])
	(species [GK_48887])
	(stableIdentifier [GK_1358054])
	(startCoordinate 1))

([GK_977565] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.r [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977565)
	(endCoordinate -1)
	(name "Histone H2B.r")
	(referenceEntity [GK_56188])
	(species [GK_48887])
	(stableIdentifier [GK_1357996])
	(startCoordinate 1))

([GK_977566] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.f [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977566)
	(endCoordinate -1)
	(name "Histone H2B.f")
	(referenceEntity [GK_56176])
	(species [GK_48887])
	(stableIdentifier [GK_1358170])
	(startCoordinate 1))

([GK_977567] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H3.3 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977567)
	(endCoordinate 136)
	(name "Histone H3.3")
	(referenceEntity [GK_355448])
	(species [GK_48887])
	(stableIdentifier [GK_1357834])
	(startCoordinate 2))

([GK_977569] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H4 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977569)
	(endCoordinate -1)
	(name "Histone H4")
	(referenceEntity [GK_355449])
	(species [GK_48887])
	(stableIdentifier [GK_1358435])
	(startCoordinate 1))

([GK_977570] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H3.1 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977570)
	(endCoordinate 136)
	(name "Histone H3.1")
	(referenceEntity [GK_355446])
	(species [GK_48887])
	(stableIdentifier [GK_1357967])
	(startCoordinate 2))

([GK_977571] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.q [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977571)
	(endCoordinate -1)
	(name "Histone H2B.q")
	(referenceEntity [GK_56186])
	(species [GK_48887])
	(stableIdentifier [GK_1358327])
	(startCoordinate 1))

([GK_977572] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B type 12 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977572)
	(endCoordinate -1)
	(name "Histone H2B type 12")
	(referenceEntity [GK_148296])
	(species [GK_48887])
	(stableIdentifier [GK_1357950])
	(startCoordinate 1))

([GK_977573] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.e [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977573)
	(endCoordinate -1)
	(name "Histone H2A.e")
	(referenceEntity [GK_56134])
	(species [GK_48887])
	(stableIdentifier [GK_1358008])
	(startCoordinate 1))

([GK_977574] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B K [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977574)
	(endCoordinate -1)
	(name "Histone H2B K")
	(referenceEntity [GK_148293])
	(species [GK_48887])
	(stableIdentifier [GK_1358155])
	(startCoordinate 1))

([GK_977575] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.z [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977575)
	(endCoordinate -1)
	(name "Histone H2A.z")
	(referenceEntity [GK_231437])
	(species [GK_48887])
	(stableIdentifier [GK_1358027])
	(startCoordinate 1))

([GK_977576] of CandidateSet
	(_displayName "[Hsa] Histone H2B [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977576)
	(hasCandidate
		[GK_977574]
		[GK_977572]
		[GK_977582]
		[GK_977564]
		[GK_977561]
		[GK_977579]
		[GK_977559]
		[GK_977562]
		[GK_977566]
		[GK_977580]
		[GK_977557]
		[GK_977571]
		[GK_977565]
		[GK_977588])
	(name "Histone H2B")
	(species [GK_48887])
	(stableIdentifier [GK_1358114]))

([GK_977577] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.m [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977577)
	(endCoordinate -1)
	(name "Histone H2A.m")
	(referenceEntity [GK_56142])
	(species [GK_48887])
	(stableIdentifier [GK_1357757])
	(startCoordinate 1))

([GK_977578] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H3.2 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977578)
	(endCoordinate 136)
	(name "Histone H3.2")
	(referenceEntity [GK_355447])
	(species [GK_48887])
	(stableIdentifier [GK_1358248])
	(startCoordinate 2))

([GK_977579] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.c [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977579)
	(endCoordinate -1)
	(name "Histone H2B.c")
	(referenceEntity [GK_56170])
	(species [GK_48887])
	(stableIdentifier [GK_1357703])
	(startCoordinate 1))

([GK_977580] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.j [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977580)
	(endCoordinate -1)
	(name "Histone H2B.j")
	(referenceEntity [GK_56180])
	(species [GK_48887])
	(stableIdentifier [GK_1358076])
	(startCoordinate 1))

([GK_977582] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B, testis [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977582)
	(endCoordinate -1)
	(name "Histone H2B, testis")
	(referenceEntity [GK_148294])
	(species [GK_48887])
	(stableIdentifier [GK_1358072])
	(startCoordinate 1))

([GK_977583] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.x [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977583)
	(endCoordinate -1)
	(name
		"Histone H2A.x"
		"H2a/x")
	(referenceEntity [GK_56152])
	(species [GK_48887])
	(stableIdentifier [GK_1357805])
	(startCoordinate 1))

([GK_977584] of Complex
	(_displayName "[Hsa] Chromatin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977584)
	(hasComponent
		[GK_977585]
		[GK_976796])
	(isChimeric FALSE)
	(name "Chromatin")
	(species [GK_48887])
	(stableIdentifier [GK_1358067]))

([GK_977585] of Complex
	(_displayName "[Hsa] Nucleosome (Deacetylated) [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977585)
	(hasComponent
		[GK_977576]
		[GK_977586]
		[GK_977586]
		[GK_977558]
		[GK_977558]
		[GK_977576]
		[GK_977569]
		[GK_977569])
	(name "Nucleosome (Deacetylated)")
	(species [GK_48887])
	(stableIdentifier [GK_1357767]))

([GK_977586] of DefinedSet
	(_displayName "[Hsa] Histone H3 [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977586)
	(hasMember
		[GK_977570]
		[GK_977578]
		[GK_977567])
	(name "Histone H3")
	(species [GK_48887])
	(stableIdentifier [GK_1358465]))

([GK_977587] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2A.o [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977587)
	(endCoordinate -1)
	(name "Histone H2A.o")
	(referenceEntity [GK_231418])
	(species [GK_48887])
	(stableIdentifier [GK_1357848])
	(startCoordinate 1))

([GK_977588] of EntityWithAccessionedSequence
	(_displayName "[Hsa] Histone H2B.s [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977588)
	(endCoordinate -1)
	(name "Histone H2B.s")
	(referenceEntity [GK_56190])
	(species [GK_48887])
	(stableIdentifier [GK_1358620])
	(startCoordinate 1))

([GK_977589] of DefinedSet
	(_displayName "[Hsa] Double-stranded DNA and chromatin [extracellular region]")
	(compartment [GK_984])
	(DB_ID 977589)
	(hasMember
		[GK_976796]
		[GK_977584])
	(name "Double-stranded DNA and chromatin")
	(species [GK_48887])
	(stableIdentifier [GK_1358102]))

([GK_981768] of Person
	(_displayName "Wiltzius, JJ")
	(DB_ID 981768)
	(initial "JJ")
	(surname "Wiltzius"))

([GK_984] of EntityCompartment
	(_displayName "extracellular region")
	(accession "0005576")
	(DB_ID 984)
	(definition "The space external to the outermost structure of a cell. For cells without external protective or external encapsulating structures this refers to space outside of the plasma membrane. This term covers the host cell environment outside an intracellular parasite.")
	(instanceOf [GK_357])
	(name "extracellular region")
	(referenceDatabase [GK_1]))

