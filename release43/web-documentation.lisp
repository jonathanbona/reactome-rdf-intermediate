(annotation-assertion !rdfs:seeAlso !<http://purl.obolibrary.org/obo/reactome/records.owl> !<http://www.reactome.org/data_model.html>)
(annotation-assertion !rdfs:seeAlso !<http://purl.obolibrary.org/obo/reactome/records.owl> !<http://wiki.reactome.org/index.php/Glossary_Data_Model>)
(annotation-assertion !dc:creator !<http://purl.obolibrary.org/obo/reactome/records.owl> "Group:Reactome team")
(annotation-assertion !owl:versionIRI !<http://purl.obolibrary.org/obo/reactome/records.owl> !<http://purl.obolibrary.org/obo/reactome/43/records.owl>)


(annotation-assertion !rdfs:comment  !<http://purl.obolibrary.org/obo/reactome/records.owl> "Reactome uses a frame-based knowledge representation. The data model consists of classes (frames) that describe the different concepts (e.g., reaction, molecule). These classes are hierarchically arranged into classes and parental superclasses. Thus, the 'PhysicalEntity' superclass has as children classes such as Complex and GenomeEncodedEntity. Superclasses are used to organize the data structure, but not for annotation by curators. Data are captured by creating instances of classes. Classes have attributes (slots) which hold properties of the instances (e.g., the names and numbers of copies of the molecules that make up a complex). 'Defining' slots are used to identify and distinguish instances in the knowledgebase and help to ensure that essentially identical information is not represented in Reactome in multiple copies. In this glossary, class names are in boldface type (CatalystActivity) and attribute (slot) names are in italic type (text). Source:http://www.reactome.org/data_model.html")

(annotation-assertion !rdfs:comment   !<http://purl.obolibrary.org/obo/reactome/records.owl> "Life on the cellular level is a network of molecular interactions. Molecules are synthesized and degraded, undergo a bewildering array of temporary and permanent modifications, are transported from one location to another, and form complexes with other molecules. Reactome represents all of this complexity as reactions in which input physical entities are converted to output entities. These reactions can occur spontaneously or be facilitated by physical entities acting as catalysts, and their progress can be modulated by regulatory effects of other physical entities. Reactions are linked together by shared physical entities: a product from one reaction may be a substrate in another reaction and may catalyze yet a third. It is often convenient, if sometimes arbitrary, to group such sets of interlinked reactions into pathways.

The functions of macromolecular entities such as proteins are often determined not only by their primary sequences, but by chemical modifications they have undergone. In Reactome, unmodified and modified forms of a protein are distinct physical entities and the modification process is treated as an explicit reaction. A macromolecule's function may depend on whether the molecule is free or complexed with specific other molecules. Reactome treats complexes as physical entities distinct from their components, and the multimerization events that build up complexes are modeled explicitly as reactions.

Cellular compartments play a key role in biological processes. The segregation of molecules into different compartments often regulates the reactions in which those entities can participate, or can be responsible for driving a reaction forward. In Reactome, a molecule in one compartment is distinct from that molecule in another compartment. Thus, extracellular and cytosolic glucose are different Reactome entities and, e.g., the movement of glucose across the plasma membrane is a reaction that converts the extracellular glucose entity into the cytosolic one.

Many biochemical entities and processes appear redundant: there are two or more chemically distinct entities that can act more or less interchangeably. It is often useful to treat functionally equivalent protein isoforms, splice variants, and paralogues as a single entity, implying that any individual entity from the given set could fulfill the same role in a given situation. The Reactome data model allows this type of generalization, but does so explicitly in a way that allows us to trace specific functions back to the individual molecules covered by the generalization.

The goal of the Reactome knowledgebase is to represent human biological processes, but many of these processes have not been directly studied in humans. Rather, a human event has been inferred from experiments on material from a model organism. In such cases, the model organism reaction is annotated in Reactome, the inferred human reaction is annotated as a separate event, and the inferential link between the two reactions is explicitly noted.

Reactome is authored using a frame-based knowledge representation. The data model consists of classes (frames) that describe the different concepts (e.g., reaction, simple entity). Knowledge is captured as instances of these classes (e.g., 'glucose transport across the plasma membrane', 'cytosolic ATP'). Classes have attributes (slots) which hold properties of the instances (e.g., the identities of the molecules that participate as inputs and outputs in a reaction).

Key data classes

PhysicalEntity - PhysicalEntities include individual molecules, multi-molecular complexes, and sets of molecules or complexes grouped together on the basis of shared characteristics. Molecules are further classified as genome encoded (DNA, RNA, and proteins) or not (all others). Attributes of a PhysicalEntity instance capture the chemical structure of an entity, including any covalent modifications in the case of a macromolecule, and its subcellular localization.

PhysicalEntity instances that represent, e.g., the same chemical in different compartments, or different post-translationally modified forms of a single protein, share numerous invariant features such as names, molecular structure and links to external databases like UniProt or ChEBI. To enable storage of this shared information in a single place, and to create an explicit link among all the variant forms of what can also be seen as a single chemical entity, Reactome creates instances of the separate ReferenceEntity class. A ReferenceEntity instance captures the invariant features of a molecule. A PhysicalEntity instance is then the combination of a ReferenceEntity attribute (e.g., Glycogen phosphorylase UniProt:P06737) and attributes giving specific conditional information (e.g., localization to the cytosol and phosphorylation on serine residue 14).

The PhysicalEntity class has subclasses to distinguish between different kinds of entities and to ensure data integrity while enabling different handling rules for different categories:

EntityWithAccessionedSequence - proteins and nucleic acids with known sequences.

GenomeEncodedEntity - a species-specific protein or nucleic acid whose sequence is unknown, such as an enzyme that has been characterized functionally but not yet purified and sequenced, e.g., cytosolic triokinase 

SimpleEntity - other fully characterized molecules, e.g., nucleoplasmic ATP or cytosolic glutathione

Complex - a complex of two or more PhysicalEntities, e.g., FASL:FAS Receptor Trime!r:FADD complex associated with the plasma membrane

EntitySet - a set of PhysicalEntities (molecules or complexes) which function interchangeably in a given situation, e.g., Notch ligand associated with the plasma membrane. This notation allows collective properties of multiple individual entities to be described explicitly.

CatalystActivity - PhysicalEntities are paired with molecular functions taken from the Gene Ontology molecular function controlled vocabulary to describe instances of biological catalysis. An optional ActiveUnit attribute indicates the specific domain of a protein or subunit of a complex that mediates the catalysis. If a PhysicalEntity has multiple catalytic activities, a separate CatalystActivity is created for each. This strategy allows the association of specific activities with specific variant forms of a protein or complex, and also enables easy retrieval of all activities of a protein, or all proteins capable of mediating a specific molecular function.

Events - the conversion of input entities to output entities in one or more steps - are the building blocks used in Reactome to represent all biological processes. Two subclasses of Event are recognized, ReactionlikeEvent and Pathway. A ReactionlikeEvent is an event that converts inputs into outputs. A Pathway is any grouping of related Events. An event may be a member of more than one Pathway.

The ReactionlikeEvent class is further divided into Reaction, BlackBoxEvent, Polymerisation and Depolymerisation. The Reaction class holds bona fide reactions with balanced inputs and outputs. The BlackBoxEvent class is used for 'unbalanced' reactions like protein synthesis or degradation, as well as 'shortcut' reactions for more complex processes that essentially convert inputs into outputs, e.g. the series of cyclical reactions involved in fatty acid biosynthesis. The De-/Polymerisation classes can hold reactions that describe the mechanics of a de-/polymerisation reaction, which is inherently 'unbalanced' due to the nature of a Polymer (that remains the 'same' entity even after adding or subtracting a unit).

Source: http://www.reactome.org/data_model.html")

(annotation-assertion !definition !r:_AttributeValueBeforeChange "A class used for database management. Should not be manually edited by curators." )

(annotation-assertion !definition !r:_InstanceBeforeChange "A class used for database management. Should not be manually edited by curators." )

(annotation-assertion !definition !r:Affiliation "The name and address of an institution,. Any Person can have an affiliation, but at present this information is recorded only for Reactome authors, reviewers, and curators. Example: Cold Spring Harbor Laboratory / 1 Bungtown Road, Cold Spring Harbor NY USA ([1])" )

(annotation-assertion !definition !r:CatalystActivity "Associates a specific PhysicalEntity with a specific GO MolecularFunction. A PhysicalEntity has as many CatalystActivity instances associated with it as it has distinct activities. Example: GTPase activity of 80S ribosome [cytosol] ([2]) Overloading: The GO molecular function ontology recognizes fourteen kinds of function in addition to catalysis (e.g., transporter activity, signal transducer activity) and function terms from these fourteen classes also can be used as molecular functions. Example: glucose transporter activity of GLUT1 homotetramer [plasma membrane] ([3])" )

(annotation-assertion !definition !r:ConcurrentEventSet "A ConcurrentEventSet is a set of simultaneous, non-competitive events which all involve the same PhysicalEntity. This entity is the FocusEntity of the EventSet. Example: ConcurrentEventSet:74667 links three Events in the pathway of insulin receptor activation and recycling via the FocusEntity, 'activated insulin receptor [integral to plasma membrane]' IRS and Shc2 bind the active insulin receptor independently of each other, e.g. binding of IRS and the following IRS-specific signaling events happens regardless of binding of Shc2 and vice versa. Without the ConcurrentEventSet the reactions of Shc2 binding and IRS binding would appear to compete with each other as alternative events, rather than as parallel ones. ([4])" )

(annotation-assertion !definition !r:DatabaseIdentifier "Unique identifiers from external databases (ReferenceDatabases), used to link Reactome entities to these external records. Database identifiers for nucleotide or protein sequences are held in the subclass SequenceDatabaseIdentifier. Example: COMPOUND:C00114 ([5]) links the Reactome record for the molecule choline to the record maintained by KEGG." )

(annotation-assertion !definition !r:Disease "Used to specify the disease that is associated with mutant protein or event. Disease instances include the The EBI disease ontology (DO) identifier and name.
Domain [superclass]
A part or subregion of a PhysicalEntity that has a distinctive function. It can be attached to a PhysicalEntity via the hasDomain slot." )

(annotation-assertion !definition !r:ComplexDomain "A domain that consists of two or more non-contiguous parts of a physicalEntity. These individual parts can be subregions of a molecule (e.g., amino acid residues 1 - 109 of an immunoglobulin light chain) or entire molecules in a complex. The parts are identified as values of the hasMember slot of ComplexDomain. Example: Ceruloplasmin 3' UTR ([6])" )

(annotation-assertion !definition !r:GenericDomain "A domain that is shared by multiple physicalEntities. A genericDomain can be attached to an EntitySet, with the relevant Domains of the individual entities that make up the set listed in the in the hasInstance slot of the genericDomain. A genericDomain without instances may be used when the Domain cannot be further specified, other than by its name. Example (with instances): IRS-PTB domain ([7]) Example (without instances): AUG start codon ([8])" )

(annotation-assertion !definition !r:SequenceDomain "A defined subregion of a polypeptide or polynucleotide sequence. The sequence is identified by specifying a referenceEntity and the domain is identified by specifying its startCoordinate and endCoordinate." )

(annotation-assertion !definition !r:Event "An event is any biological process in which input entities are converted to output entities in one or  more steps." )

(annotation-assertion !definition !r:ConceptualEvent "Deprecated. Due to difficulties in finding clearcut criteria to distinguish such events from Pathways, the ConceptualEvent class has been merged to Pathway, which now has a hasEvent slot rather than hasComponent. Used to be: A set of Events that accomplish conceptually similar things, i.e. where the inputs and outputs are not identical but similar. For example, Pol I, II and III dependent transcription, and mitochondrial transcription, are 4 distinct and independent processes each producing a different type of RNA molecule. However, they all result in RNA (although different types) and it can be useful to annotate the concept of 'transcription' generally. The specific events to be linked in this way, which may be reactions or pathways, are entered as values of the hasSpecialisedForm slot. Example: Transcription [Homo sapiens] ([9])" )

(annotation-assertion !definition !r:EquivalentEventSet "Deprecated. A set of Events which accomplish exactly the same thing, i.e. inputs and outputs of all the set members are identical, as for a set of Reactions catalyzed by isozymes. However, the preferred way of dealing with such Reactions is to create a DefinedSet of the isozymes and to use that set as the physicalEntity of a catalystActivity of a single Reaction." )

(annotation-assertion !definition !r:Pathway "Any collection of related Events. The events in a pathway can be ReactionlikeEvents or other Pathways. This class is very broad because we have not been able to identify precisely defined, widely accepted, and distinct alternative strategies for grouping events. With such a set of strategies, this class could be subdivided. Note: Groups of Events that are very similar, e.g. have same inputs and outputs and only differ in the catalyst, should preferably be represented as ReactionlikeEvents using a DefinedSet for the entities that can vary. If an individual Reaction represented by this group has distinct features like literature references, or regulation, it can be spelled out and attached to the general Reaction via the hasMember slot. Slots: crossReference - Identifiers to point to the equivalent pathway in another database. Not used at present. definition - Deprecated. Do not use. hasEvent - defining attribute; holds reactions or pathways that make up this Pathway. List these events in the order in which they occur in the pathway. Example (a classical biochemical pathway): Fatty Acyl-CoA Biosynthesis [Homo sapiens] ([10]) Example (a less rigidly ordered group of events): Formation of Platelet plug [Homo sapiens] ([11])" )

(annotation-assertion !definition !r:ReactionlikeEvent  "Non-instantiable. Has four subclasses (Reaction, BlackBoxEvent, Polymerisation and Depolymerisation). Conversion of one or more input entities to output entities, possibly facilitated by a catalyst. Most reactions in Reactome involve a) the interaction of entities to form a complex, b) the movement of entities between compartment, or c) the chemical conversion of entities as part of a metabolic process. Example: a) 2 phosphorylated HSL monomers => phosphorylated HSL dimer [Homo sapiens] ([12]) b) adenine [cytosol] <=> adenine [extracellular] [Homo sapiens] ([13]) c) Adenine + PRPP => AMP + PPi [Homo sapiens] ([14]) Overloading: ReactionlikeEvent can be overloaded to serve as 'shorthand' to represent complex processes, such as expression of a specific protein or degradation of a specific protein, pathways whose individual steps are not annotated in Reactome. Example: Insulin degradation [Homo sapiens] (http://brie8.cshl.edu/cgi-bin/eventbrowser?DB=gk_central&ID=74730&)" )

(annotation-assertion !definition !r:Reaction "Bona fide reactions, i.e. reactions that have balanced input and output entities. Instances of this class are subjected to rigorous QA, among others by checking for imbalances." )

(annotation-assertion !definition !r:BlackBoxEvent "Holds reactions that have imbalances for various reasons, or more complex processes for which we either don't know all details or don't want to describe each individual step. Instances of this class represent 'shortcut' reactions to make a connection between input and output, or to describe the appearance or disappearance of an entity (e.g. protein synthesis or degradation). Slots: hasEvent allows to enter Events that represent steps between input and output, e.g. the Reactions forming one cycle of fatty acid beta oxidation - so this is where some mechanistic detail can be entered. templateEvent allows to enter the general Event that is serving as template for this process, e.g. 'Gene Expression'. catalystActivity is a multivalue slot as more than one catalyst may be involved in the event." )

(annotation-assertion !definition !r:Depolymerisation "Reactions that essentially follow the pattern: Polymer + Unit -> Polymer (there may also be catalysts or other entities involved). Such reactions have an apparent conflict/imbalance in that a Polymer, even when another Unit is added, results in the same Polymer entity. Serves to describe the mechanistic detail of a polymerisation reaction." )

(annotation-assertion  !definition !r:Polymerisation "Reactions that follow the pattern: Polymer -> Polymer + Unit (reverse situation of Polymerisation)." )

(annotation-assertion !definition !r:EvidenceType "GO evidence codes ([15]). At present, used only for flagging inferred orthologous events (IEA, inferred by electronic annotation)." )

(annotation-assertion !definition !r:Figure "An image in jpg format used to illustrate a Reactome data object. So far, figures have only been asso
ciated with events, although they can be associated with entities, persons, and several other classes. The url slot of the figure instance holds the address of the image jpg file in the Reactome CVS website repository, and the figure slot of the data object to be illustrated holds the name of the figure instance. Example: /figures/apoptotic_factor_responses.jpg is used to illustrate the pathway 'Apoptotic factor-mediated response [Homo sapiens]' ([16])" )

(annotation-assertion !definition !r:FrontPage "The topics on the front page of the Reactome website. The single instance of this class is normally maintained by the Editor-in-Chief and Managing Editor." )

(annotation-assertion !definition !r:GO_BiologicalProcess "A local copy of the GO Biological_Process ontology: [17] Instances of this class are used to create goBiologicalProcess cross-references for Reactome events. Curators should never create new instances of the class, but should request the creation of an appropriate new term in the GO ontology itself." )

(annotation-assertion !definition !r:GO_CellularComponent "A local copy of the GO Cellular_Component ontology: [18] Instances of this class are used to specify the compartment (subcellular location) of Reactome events. Curators should never create new instances of the class, but should request the creation of an appropriate new term in the GO ontology itself." )

(annotation-assertion !definition !r:Compartment "The subset of GO_CellularComponent terms that can be used to characterize the locations of events in Reactome. At present, this class is not used. Rather, curators localize events with instances of the GO_CellularComponent class, and are expected to abstain from using silly (e.g., 'chloroplast') or inappropriate (e.g., 'pyruvate dehydrogenase complex') instances. Should a more formal and disciplined approach be needed in the future, the Compartment class will be put into use." )

(annotation-assertion !definition !r:EntityCompartment "The subset of GO_CellularComponent terms that can be used to characterize the locations of physicalEntities in Reactome. These are non-overlapping so that Entities can be unequivocally assigned to only one compartment. Entities from different non-overlapping compartments are created as separate instances." )

(annotation-assertion !definition !r:GO_MolecularFunction "A local copy of the GO Molecular_Function ontology: [19] Instances of this class are used to specify the activity of a Reactome physicalEntity, to create an instance of catalystActivity. Curators should never create new instances of the class, but should request the creation of an appropriate new term in the GO ontology itself. Overloading: The Molecular_Function ontology identifies fourteen kinds of function in addition to catalysis (e.g., transporter activity, signal transducer activity). Function terms from these fourteen classes are also acceptable values of the activity slot." )

(annotation-assertion !definition !r:InstanceEdit "Records the date and time when a Reactome instance was created or modified and identifies the person responsible for the creation or modification. InstanceEdit instances are automatically generated when the central database is updated from the curator tool, and should not be manually edited." )

(annotation-assertion !definition !r:LiteratureReference "A publication, typically a journal article, cited in a summation or linked to an entity or event instance. Note: A literatureReference instance can be created for a publication in PubMed ([20]) simply by entering the PubMed ID (PMID) into the appropriate slot on the forms provided by the curator and author tools. The tools fetch the bibliographic information and create any person instances needed to annotate authorship. If the publication is not in PubMed, this information must be entered manually." )

(annotation-assertion !definition !r:ModifiedResidue "A specific modification of any residue in an EntityWithAccessionedSequence, e.g. gamma-carboxylation of glutamate residue 47 of coagulation factor X, or the conversion of lysine residue 50 of EIF5A to hypusine. A modification instance associates the modification as specified in the PSI-MOD ontology at a specific coordinate. e.g., 47, of a specific EntityWithAccessionedSequence (a ReferenceSequence). The modification itself, an instance of the psiMod class, identifies both the original amino acid residue and the chemical change it has undergone, e.g. L-gamma-carboxyglutamic acid. (Historical note: this replaces a previous annotation strategy in which the identities of the modified amino acid and its modification were specified separately.) ModifiedResidue instances should only be created if the chemical natures of the modifying group and residue can be specified in atomic detail with a psiMod term. If the position is unknown (e.g., a protein is known to be phosphorylated on three of its seven serine residues), this ambiguity can be captured by leaving the coordinate slot empty. If the modification cannot be fully specified, e.g., O-dextrin-tyrosine, where the number of glucose residues in the dextrin is indeterminate, create a GroupModifiedResidue instance instead. Notes: The modifedResidue instance has no subcellular location of its own, but inherits the location of the macromolecule with which it is associated. As shown in the example, this allows the modification details of a protein to be annotated once, and instances of the modified protein in different locations or involved in different complexes can be created without repeated annotation of the invariant modification features of the protein. When you create a new modifiedResidue instance, the form requires you to enter an EnityWithAccessionedSequence value. You must manually select the appropriate one. The curator tool does not prevent you from creating a modifiedResidue instance on hexokinase and then entering information for beta-globin into its EntityWithAccessionedSequence slot, and the confusion that results is substantial! Example: carboxyl group on L-Glutamate [MOD:00041] 47 ([21])" )

(annotation-assertion !definition !r:ReplacedResidue "The replacement of a conventional residue of a polypeptide or polynucleotide with a different conventional residue or residues. For instances of the ReplacedResidue class, the psiMod slot is multivalued (for ModifiedResidue and GroupModifiedResidue instances it is single-valued). The first psiMod slot value is the psiMod identifier for removal of the residue normally found at that position; the second (and optionally third, fourth, ...) value is that for the residue(s) replacing the removed one. The example shows the annotation of an insulin protein in which the proline normally found at position 52 has been replaced by an aspartate.([22]) The history of the modification process is not captured here: this variant insulin protein could equally well be used to annotate the post-translational modification of insulin to convert the proline residue to aspartate and the expression of a gene with a mutant codon. (Historical note: this replaces a previous annotation strategy in which replaced- and modified-residue instances were used to distinguish the degree of chemical change brought about by the modification: modifiedResidue instances were smaller changes (e.g., phosphorylation of tyrosine) and replacedResidue instances larger ones (e.g., replacement of lysine by hypusine). The PSI-MOD ontology does not make this distinction of degree, so we have changed the meaning of the replacedResidue class to enable us to capture substitutions of one amino acid for another in a protein, a form of variation that it was not previously possible to annotate in Reactome.)" )

(annotation-assertion !definition !r:GroupModifiedResidue "The modification of an amino acid residue in protein with a chemical entity that cannot be specified in atomic detail, e.g., the attachment of a dextrin or glycogen moiety to a tyrosine side chain in the protein glycogenin. Such incompletely specified chemical entities are beyond the scope of the PSI-MOD ontology but are available in the ChEBO ontology. The psiMod attribute would take a value such as MOD:00166 O4'-glucosyl-L-tyrosine, which describes the linkage between the protein and the modifying group. The modifying group is then specified with a ReferenceGroup instance (ChEBI terms) such as CHEBI:28912 'limit dextrin', as in the example: limit dextrins on L-Tyrosine [ChEBI:17895] 194 of UniProt:P46976 GYG1 ([23])." )

(annotation-assertion !definition !r:FragmentModification "The modification of a fragment of an EntityWithAccessionedSequence through deletion or insertion of consecutive amino acid residues, usually in a disease variant of a gene product." )

(annotation-assertion !definition !r:FragmentDeletionModification "The deletion of a continuous fragment of an EntityWithAccessionedSequence, e.g. deletion of amino acid residues 30 to 297 in the EGFR mutant protein EGFRvIII in glioblastoma. When creating a new FragmentDeletionModification instance, it is necessary to specify the referenceSequence, which should be equal to the referenceEntity (UniProt P00533 EGFR in the case of EGFRvIII), the startPositionInReferenceSequence, which is the first amino acid of the deleted fragment (30 in the case of EGFRvIII), and the endPositionInReferenceSequence, which equals the last amino acid of the deleted fragment (297 in the case of EGFRvIII)." )

(annotation-assertion !definition !r:FragmentInsertionModification "The modification of an EntityWithAccessionedSequence through insertion of a continuous fragment. The continuous fragment can originate from the same EntityWithAccessionedSequence, e.g. duplication of the kinase domain of EGFR in glioblastoma to create a tandem kinase domain TKD-EGFR, where amino acid residues 664 to 1030 are duplicated and inserted at the position 1031 within EGFR. Alternatively, the continuous fragment can originate from a different EntityWithAccessionedSequence, resulting in a fusion protein, e.g. BCR-ABL1 fusion protein in the chronic myeloid leukemia where amino acid residues 1 to 927 of BCR are fused to amino acid residues 27 to 1130 of ABL1. When creating a new FragmentInsertionModification instance, it is necessary to specify the referenceSequence, which is equal to the referenceEntity in the case of an internal duplication (UniProt P00533 EGFR for TKD-EGFR) or different from the referenceEntity in the case of a protein fusion (for BCR-ABL1, UniProt P00519 ABL1 is the referenceSequence for FragmentInsertionModification, while UniProt P11274 BCR is the referenceEntity for the EntityWithAccessionedSequence). A coordinate value of a FragmentInsertionModification instance is the position of the amino acid residue in a referenceEntity at which the inserted fragment starts (1031 for TKD-EGFR; 928 for BCR-ABL1). The startPositionInReferenceSequence and the endPositionInReferenceSequence represent the first and the last amino acid of the inserted fragment, respectively (664 and 1030 for TKD-EGFR; 27 and 1130 for BCR-ABL1)." )

(annotation-assertion !definition !r:Person "The name of a person. Used to identify curators, authors, reviewers, and literatureReference authors, and to associate curator persons with model organism pathway curation projects like FlyBase and Gallus Reactome." )

(annotation-assertion !definition !r:PhysicalEntity  "Something that can interact physically with something else, including all kinds of small molecules, proteins, nucleic acids, chemical compounds, complexes etc. (even photons)." )

(annotation-assertion !definition !r:Complex "A physicalEntity formed by the association of two or more other entities (which can themselves be complexes), which are its components. To create a valid complex instance, at least one component must be specified. Even if an entity is known to be composed of subunits, unless the subunits that allow it to be distinguished from other cellular entities can be identified, it cannot be annotated as a complex. Instead it must be an otherEntity (e.g., a generic bit of heterochromatin, or a lipid raft). However, complex instances can legitimately be created in cases in which experimental data suggest that additional subunits remain to be identified or that the stoichiometry of the complex is uncertain. Examples: A complex: Presenilin homodimer [plasma membrane] ([24]) A complex assembled from other complexes: pyruvate dehydrogenase complex [mitochondrial matrix] ([25]) A complex with several known subunits but uncertain complete composition and stoichiometry: GPI-N-acetylglucosaminyltransferase ([26])" )

(annotation-assertion !definition !r:EntitySet "Two or more physicalEntities grouped because of a shared molecular feature. The superclass for CandidateSet, DefinedSet, and OpenSet." )

(annotation-assertion !definition !r:CandidateSet "A group of entities hypothesized to perform a specified function. These hypothetical members of the set are identified as values of the hasCandidate slot. Entities known to perform the function can be identified as values of the hasMember slot. One or more hasCandidate values are required; hasMember values are optional. Example: Raptor [cytosol]. Two splice variants of Raptor mRNA encode closely related proteins. One (member) has been shown to participate in formation of active mTORC complex; the other (candidate) is thought to do so. ([27])" )

(annotation-assertion !definition !r:DefinedSet "Two or more physicalEntities, grouped to denote interchangeable function. Thus the addition of a single nucleotide residue during RNA transcription could be annotated with the definedSet NTP [nucleoplasm] (members ATP, CTP, GTP, and UTP) as input. This is useful to prevent combinatorial explosion. Any kind of physicalEntity can belong to a definedSet. Example: Cdk4/6 [nucleoplasm], with Cdk4 and Cdk6 as hasMember values. This set is used to annotate the formation of a single complex, 'Cyclin D:Cdk4/6 [nucleoplasm]', which in turn is an input entity for a single Reactome event, 'Phosphorylation of Cyclin D:Cdk4/6 complexes'. ([28]) The creation of single events that have entity sets as inputs, outputs, and the physicalEntity value of catalystActivities is preferred over the creation of eventSets in which each member event involves a different member of an isozyme family as its catalyst." )

(annotation-assertion !definition !r:OpenSet "A group of entities that can be counted in principle but not in practice, such as mRNA or long-chain fatty acid. Examples (ceruloplasmin mRNA; palmitic acid) can be attached as values of the hasMember slot, but such examples are not an exhaustive list of possible members of the set. The referenceEntity slot indicates the chemical feature that is common to all the members of this class, e.g. OpenSet 'Alcohol' would have the '-OH group' as referenceEntity. Example: 'messenger RNA', with 'ceruloplasmin mRNA' as a member. 'alcohol', with ()" )

(annotation-assertion !definition !r:GenomeEncodedEntity "A well-characterized polypeptide or polynucleotide whose sequence is unknown and which thus cannot be linked to external sequence databases or used for orthology inference. Example: triokinase [cytosol] ([29])" )

(annotation-assertion !definition !r:EntityWithAccessionedSequence "A full-length protein, RNA, or DNA or fragments of them. It must be linked to a protein or polynucleotide sequence in an external database entered as the value of referenceSequence. By default, an EntityWithAccessionedSequence corresponds to the entire protein or polynucleotide described in the external database. To annotate a fragment, the numbers of its first and last residues, following the numbering scheme used in the external database, are entered as values of the startCoordinate and endCoordinate slots. A value of 0 indicates an unknown coordinate. Default start and end coordinates for a full-length sequence entity, assigned automatically if no values are provided by the curator, are 1 and -1, respectively. (-1 is a Perl usage which means the last element of an array; here, the last residue). Separate EntityWithAccessionedSequence instances are needed for each subcellular location (compartment) in which a molecule is found, e.g., kallikrein light chain [extracellular] and kallikrein light chain [plasma membrane]. Example: A full-length protein: name (url) Example: A protein fragment: name (url)" )

(annotation-assertion !definition !r:OtherEntity "Entities that we are unable or unwilling to describe in chemical detail and which, therefore, cannot be put in any other class. OtherEntity can be used to represent complex structures in the cell that take part in a reaction but which we can't/don't want to define molecularly.
Example 1: Cell membrane. In a case in which protein X associates with the membrane, but the actual membrane component(s) with which protein X interacts are unknown, the membrane can be represented as an OtherEntity.
Example 2:kinesin-1, a microtubule motor protein, is involved in all kinds of movement in the cell, by 'walking' along microtubules, while dragging things like mitochondria, secretory vesicles, parts of the golgi, etc. They bind to these complicated structures that we would not want to describe molecularly and which we can create as 'otherEntities'.
Example 3: Holliday structure [nucleoplasm] ([30])" )

(annotation-assertion !definition !r:Polymer "Molecules that consist of indeterminate numbers of repeated units, and complexes whose stoichiometry is variable or unknown. The repeated unit(s) (identified in the repeatedUnit slot) can be any PhysicalEntity. The presence of more than one repeatedUnit value implies that the relative numbers of units in the polymer are unknown. If the units are present in known proportions, form a complex of the appropriate numers of units and use it as the repeatedUnit. The size range of a polymer can be specified with minUnitCount and maxUnitCount values. Examples: -'glycogen' with 'glucose' as repeatedUnit. -'fibrin multimer' with 'fibrin 'monomer'' (itself a Complex) as repeatedUnit. -A microtubule consisting of equal amounts of alpha and beta tubulin would be constructed as polymer containing a Complex of alpha and beta tubulins in the repeatedUnit slot. -Completely hypothetical Example: A complex consisting of 1 'part' of A and '4 'parts' of B (i.e. 1:4 ratio) would be represented as a polymer with a complex of one A and 4 B as its repeatedUnit. -Another hypothetical Example: a complex where the ratio of individual building blocks A and B is unknown or variable is represented as a polymer containing A and B directly in the repeatedUnit slot." )

(annotation-assertion !definition !r:SimpleEntity "A defined chemical species not encoded directly or indirectly in the genome, typically a small molecule such as ATP or ethanol. The detailed structure of a simpleEntity is specified by linking it to the information provided for the molecule in the ChEBI of KEGG external databases via the referenceEntity slot. (Use of KEGG is deprecated. Use ChEBI entities when available; request the expedited creation of a new one via Bernard de Bono if necessary.) Separate simpleEntity instances are needed for each subcellular location (compartment) in which a molecule is found, e.g., ATP [cytosol] and ATP [nucleoplasm]. Examples: name (url) name (url)" )

(annotation-assertion !definition !r:psiMod "A local copy of the PSI-MOD ontology. Instances of this class are used to create descriptions of chemically modified residues of proteins (see xxx). If a needed modification is not already present in gk_central, look up its identifier (a five-digit number) at the PSI-MOD web site; copy-paste it into the 'create new instance' form in the curator tool, and allow the wizard associated with the form to retrieve all other needed data from PSI-MOD. Once created, such an instance (like all other reference instances in gk_central) should not be modified. If an instance is needed that is not already in PSI-MOD, or if a PSI-MOD instance appears to be incorrect, contact PSI-MOD to resolve the problem." )

(annotation-assertion !definition !r:ReactionCoordinates "This class holds the x-y coordinates of the arrows representing reactions in the 'starry-sky' view of the Reactome data set. These coordinates are automatically generated by the visualization tool and should not be manually edited. This class will become obsolete when the new ELV-based web site is fully implemented." )

(annotation-assertion !definition !r:ReferenceDatabase "This class describes the source (database) of an identifier in the DatabaseIdentifier (and SequenceDatabaseIdentifier) instance. Generally there shouldn't be a need to create ReferenceDatabase instances. Contact dev@reactome.org if you think you need a new ReferenceDatabase instance. Slots: AccessURL- template used to form the url that will be used to link to a particular record in an external db. Generally this should not need to be touched. Contact the [dev@reactome.org-mailto:dev@reactome.org] list if you think any changes are necessary. URL- URL for site which gives 'summary information' about the database including a description of what information the db contains. This slot should not need to be modified manually." )

(annotation-assertion !definition !r:ReferenceEntity  "A ReferenceEntity captures the invariant features of a molecule such as its names, molecular structure and links to external databases like UniProt or ChEBI. The ReferenceEntity forms an explicit link between PhysicalEntities like 'Glucose, extracellular' and 'Glucose, cytosolic', indicating their identical chemical nature. ReferenceEntities are not used in Reactions directly; they are attached to the PhysicalEntities involved. ReferenceEntities usually don't need to be created by curators; they are imported automatically. In the case of as yet unexisting ChEBI entries, contact Bernard to request it from ChEBI." )

(annotation-assertion !definition !r:ReferenceGroup "Chemical groups from the ChEBI database." )

(annotation-assertion !definition !r:ReferenceMolecule "Individual chemical molecules from the ChEBI database." )

(annotation-assertion !definition !r:ReferenceMoleculeClass "Classes of chemical molecules. Not implemented yet." )

(annotation-assertion !definition !r:ReferenceSequence  "Molecules with an accessionedSequence. This class is a subclass of referenceEntity, but is also the superclass of ReferenceDNASequence, ReferenceGeneProduct, and ReferenceRNASequence, so instances of it should not be created manually.." )

(annotation-assertion !definition !r:ReferenceDNASequence "DNA molecules with an accessionedSequence." )

(annotation-assertion !definition !r:ReferenceGeneProduct "Protein molecules with an accessionedSequence. If the specific isoform of a protein involved in an annotated event is not known, the ReferenceGeneProduct is used as the referenceEntity for an EntitywithAccessionedSequence." )

(annotation-assertion !definition !r:ReferenceIsoform "If experimental data show that a function is due to a specific isoform of a protein, then the referenceIsoform is used as the referenceEntity for an EntitywithAccessionedSequence." )

(annotation-assertion !definition !r:ReferenceRNASequence "RNA molecules with an accessionedSequence." )

(annotation-assertion !definition !r:ReferenceGroupCount "Contains group count for chemical characterization. Does not need to be filled in by curators." )

(annotation-assertion !definition !r:Regulation "In Reactome, Events and CatalystActivities may be regulated by other Events, PhysicalEntities, CatalystActivities. The description of an instance of regulation includes the regulated entity (Event or CatalystActivity), the regulator (Event, PhysicalEntity, or CatalystActivity) and the mechanism by which regulation is achieved (Regulationtype). Regulation may be positive (if the Regulator facilitates an Event/increases a CatalystActivity), negative (if the Regulator inhibits an Event/decreases CatalystActivity) or a Requirement if the regulator is required for the CatalystActivity or for the Event to occur. Note that this class is mainly to be used when the exact nature of the regulation is not known as yet. If a mechanistic connection between the two instances can be established, the preferred way is to give these details by creating the appropriate reactions. No instances of the Regulation class need to be created in this case, as the connection becomes evident via the shared physical entities. Slots: regulator- Event,PhysicalEntity or CatalystActivity which is regulates the regulatedEntity (required). literatureReference- The reference that describes the Regulation 'event' regulatedEntity- Event or CatalystActivity that is regulated (required) summation- Text description of the regulatory event (optional). figure- The URL for the figure describing the regulation event (optional)." )

(annotation-assertion !definition !r:NegativeRegulation "This describes an Event/CatalystActivity that is negatively regulated by the Regulator (e.g., allosteric inhibition, competitive inhibition." )

(annotation-assertion !definition !r:PositiveRegulation "This describes an Event/CatalystActivity that is positively regulated by the Regulator (e.g., allosteric activation)." )

(annotation-assertion !definition !r:Requirement "A regulator that is absolutely required for an Event/CatalystActivity to happen." )

(annotation-assertion !definition !r:RegulationType "A free text description of the nature of Regulation, e.g allosteric inhibition." )

(annotation-assertion !definition !r:Summation "A free text description of an event or physicalEntity. Citations that provide useful background information, but that are not sources of primary data for the event or entity, can be linked to summations. (LiteratureReferences providing experimental data for the details of an event should be linked directly to the event.) Slots: Text- description of the event LiteratureReference- paper(s) that support the text description, but not the primary evidence for the event Example: 'The binding of RAD51 to ssDNA may be facilitated by associat ...' ([31])" )

(annotation-assertion !definition !r:Taxon "Taxon describes the organism in which Reactome events occur PhysicalEntities exist. The list of Taxons in Reactome is a subset of those listed in the NCBI Taxonomy database. Although other groupings (SuperTaxons) are listed under Taxon (i.e., Class, Family, Genus) only the instances of species should be applied. The species slot should be filled out for all Events and all PhysicalEntities which are or involve species specific PhysicalEntities (i.e. EntityWithAccessionedSequence)." )

(annotation-assertion !definition !r:Species "see Taxon, this class contains the instances that can actually be applied to reactions and entities" )

(annotation-assertion !definition !r:_displayName "This slot contains the name of the instance that will be displayed on the Reactome web site. It is automatically filled in by the curator tool each time a new instance is created, using slot values supplied for the instance by the curator. For example, the _displayName of an event consists of the event's manually generated name and its manually selected species." )

(annotation-assertion !definition !r:accession "Holds the numerical portions of identifiers assigned to GO terms in the local copies of the GO ontologies. Should not be manually edited." )

(annotation-assertion !definition !r:accessionUrl "template used to form the url that will be used to link to a particular record in an external db. Generally this should not need to be touched. Contact Imre if you think any changes are necessary." )

(annotation-assertion !definition !r:activity "contains the GO Molecular Function ontology. An Activity term is used to cross-reference a Reactome CatalystActivity. Curators should never create instances of class Activity directly. If curators want to use a GO term that is not in Reactome (yet) they should mail the list about it." )

(annotation-assertion !definition !r:address "This is a slot for the affiliation class. Enter the address of the research institute (etc)." )

(annotation-assertion !definition !r:affiliation "An Affiliation is the name and address of an institution, e.g., Cold Spring Harbor Laboratory / 1 Bungtown Road, Cold Spring Harbor NY USA. Affiliations can be created for any Person, but at present are created only for Persons actively involved in the Reactome project as authors or curators." )

(annotation-assertion !definition !r:author "This slot must be filled in for instances of LiteratureReference, (where it refers to name of the author of a particular reference) and for InstancEdit (where it refers to the curator that has generated the instanceEdit). Used to determine the information for the frontpage." )

(annotation-assertion !definition !r:comment "This slot is used for SequenceDatabaseIdentifier class instances and contains any sequence related comments that are provided by the reference database. It is filled in automatically. Curator should not handle this." )

(annotation-assertion !definition !r:componentOf "Choose a CP or a GP that have this CR as a component reaction. Will be removed as this is captured by HasComponent for the superpathway." )

(annotation-assertion !definition !r:concurrentEvents "This slot contains the events that constitute a concurrentEventSet. A concurrent event set consists of 2 or more Events that occur simultaneously and which utilize one (or more?) PhysicalEntity referred to as the FocusEntity, is common to all of them." )

(annotation-assertion !definition !r:coordinate "refers to the amino acid residue location at which a modification occurs within a protein." )

(annotation-assertion !definition !r:created "Automatically filled in. This shows up on the frontpage if this summation belongs to an event on the Reactome front page." )

(annotation-assertion !definition !r:crossReference "This slot is for holding references to the equivalent things in other databases. If the instance this slot is attached to represents an event the DatabaseIdentifier put into this slot must also point to some sort of event/processs/reaction/happening in some other db." )

(annotation-assertion !definition !r:databaseIdentifier "Holds database identifiers from external databases like UniProt and ChEBI (but not GO - see 'Accession' slot). Should not be manually edited." )

(annotation-assertion !definition !r:dateAccepted "Put in the date the topic was accepted, in the format YYYY-MM-DD" )

(annotation-assertion !definition !r:dateRevised "Put in the date the topic was revised, in the format YYYY-MM-DD" )

(annotation-assertion !definition !r:dateSubmitted "Put in the date the topic was submitted, in the format YYYY-MM-DD" )

(annotation-assertion !definition !r:dateTime "A timestamp generated automatically when the central database is updated from a curator tool project. Do not edit it manually." )

(annotation-assertion !definition !r:DB_ID "These are the unique stable identifiers applied to each instance in the Reactome database. They are generated automatically when newly created instances are first submitted to the database. They should never be modified or manually created by a curator." )

(annotation-assertion !definition !r:definition "This slot is used in Event, PhysicalEntity, Activity, Evidencetype and GO_BiologicalProcess instances. The definition of a Reactome Activity is the official Gene Ontology definition for the equivalent GO Molecular Function term. The GO_BiologicalProcess definition is the offcial Gene Ontology definition for the corresponding Biological process term. The Evidencetype definition is taken from the GO evidence code definitions." )

(annotation-assertion !definition !r:description "This is found in the class 'SequenceDBI'. This is for the 'Description DE' line from SwissProt." )

(annotation-assertion !definition !r:editor "Choose or create a Person instance/s for the editor/s. Used to determine the information for the frontpage." )

(annotation-assertion !definition !r:eMailAddress "This entry corresponds to the e-mail address of a 'person'" )

(annotation-assertion !definition !r:endCoordinate "the amino acid residue location at which an EntityWithAccessionedSequencepart ends." )

(annotation-assertion !definition !r:figure "choose or add the url for the figure that represents this CR, in the format, figures/xxxx.jpg." )

(annotation-assertion !definition !r:firstname "The first name of a person. Optional slot - can be left blank. Reactome uses only the first letter of the first name (entered separately in the initial slot) to create names of people for display on the web site." )

(annotation-assertion !definition !r:focusEntity "In a ConcurrentEventSet, the focusEntity is the PhysicalEntity that is common to all of the concurrent events." )

(annotation-assertion !definition !r:formula "The chemical formula of a simpleEntity. For example, ATP = C10H16N5O13P3." )

(annotation-assertion !definition !r:geneIdentifier "This slot is for storing information about what is the gene that this transcript/protein originates from. This is really just a shortcut. If the current instance is a gene identifier then this should be left empty. Accepts multiple values in order to be able to point to the SAME gene in different databases, e.g. EMBL, HUGO, Ensembl." )

(annotation-assertion !definition !r:geneName "GN lines from sequence record." )

(annotation-assertion !definition !r:hasComponent "holds instances of PhysicalEntity that are components of a Complex." )

(annotation-assertion !definition !r:hasEvent "holds instances of Event that are grouped into a Pathway. They should be entered in the order as they appear in the Pathway. On BlackBoxEvent this slot holds Event instances to describe known steps within the BlackBoxEvent, e.g. the reactions of the fatty acid beta oxidation cycle." )

(annotation-assertion !definition !r:hasMember "takes individual reactions for an instance of ReactionlikeEvent that represents a group of reactions via the use of an EntitySet. Such individual reactions do not need to be spelled out, unless they have a distinct feature like a literature reference or specific regulation." )

(annotation-assertion !definition !r:identifier "this slot holds the actual database identifier number for a given databaseidentifier instance." )

(annotation-assertion !definition !r:inferredFrom "points to the event or entity in another species that this event/entity has been inferred from. If the inference is based on computation only, this is indicated under evidenceType (= IEA)." )

(annotation-assertion !definition !r:initial "This slot holds the initials of a person." )

(annotation-assertion !definition !r:input "The 'input' physicalentities of a given event are each entered individually." )

(annotation-assertion !definition !r:instanceOf "Only used for GO classes" )

(annotation-assertion !definition !r:journal "The name of the scientific journal in which the reference was published (or the title of a book). For references retrieved from PubMed with the curator and author tools, this slot is filled automatically." )

(annotation-assertion !definition !r:keyword "contains keywords associated with sequence. This is pulled in (if available) automatically from the external DB" )

(annotation-assertion !definition !r:literatureReference "The primary paper(s) that provide evidence for the event." )

(annotation-assertion !definition !r:literatureReference "paper/s that support the text description, but not the primary evidence for the event.This shows up as hyperlinked lines on a web browser." )

(annotation-assertion !definition !r:modification "For a given modifiedResidue instance, enter the simpleEntity that represents the specific modification of the residue within the modified protein. For example, for the 'ModifiedResidue' instance: 'Orthophosphate on Serine [nucleus] 428 of SPTREMBL:O46469', the modification would be 'Orthophosphate'." )

(annotation-assertion !definition !r:modified "Filled in automatically." )

(annotation-assertion !definition !r:name "a short textual description of the event/entity/etc. For some classes it is defining attribute, so it should be chosen carefully to be unique." )

(annotation-assertion !definition !r:orthologousEvent "points to equivalent events in other species. In contrast to 'inferredFrom' this attribute is attached to the events in both species - it only indicates equivalence, not inference." )

(annotation-assertion !definition !r:output "The 'input' physicalentities of a given event are each entered individually." )

(annotation-assertion !definition !r:pages "The inclusive page numbers of a literatureReference. For references retrieved from PubMed with the curator and author tools, this slot is filled automatically." )

(annotation-assertion !definition !r:precedingEvent "points to the preceding event(s), which is usually events whose output is used as input for the present event. The preceding event can also point to a pathway, but make sure the connection is always given on the reaction level as well (this is important when it comes to visualization)." )

(annotation-assertion !definition !r:proteinIdentifier "This slot is for storing information about what are the protein that this transcript/gene produces. This is really just a shortcut. If the current instance is a protein identifier then this should be left empty. Accepts multiple values in order to be able to point to the same proteins in different databases, e.g. EMBL, HUGO, Ensembl, RefSeq." )

(annotation-assertion !definition !r:pubMedIdentifier "The pubmed identifier (number only). This information must be manually supplied by the curator." )

(annotation-assertion !definition !r:requiredCatalystComponent "Deprecated. Do not use this slot." )

(annotation-assertion !definition !r:requiredInputComponent "takes an input component that is essential for this event to happen, e.g. a defined domain of a protein. Use Domain, with the appropriate coordinates filled in.
Note: To be used only for 'non-trivial statements'. For example, repeating an entity here that is identical to a PhysicalEntity given for input is not helpful." )

(annotation-assertion !definition !r:residue "This is to hold the residue (like serine or tyrosine) which is modified. The value is instance of class ReferenceGroup or ReferenceMolecule, i.e. an instance representing serine." )

(annotation-assertion !definition !r:reverseReaction "Choose a Reaction that is the reverse of the current Reaction." )

(annotation-assertion !definition !r:reviewer "The name of the person who reviewed the event described in the summation. These slot values are the source of the reviewers given for high-level events listed on the Reactome table of contents." )

(annotation-assertion !definition !r:secondaryIdentifier "Generated automatically." )

(annotation-assertion !definition !r:species "This slot holds the name of the species in which the described physicalentity or Event is occurring." )

(annotation-assertion !definition !r:startCoordinate "the amino acid residue location at which an EntityWithAccessionedSequence starts." )

(annotation-assertion !definition !r:summation "Text that succinctly describes the Event." )

(annotation-assertion !definition !r:superTaxon "This refers to the 'parent' for a given taxon within the taxonomy hierarchy. For example the SuperTaxon for both Rattus and Mus is Murina and the SuperTaxon for Murina is Muridae. These entries are assigned automatically as dictated by the imported NCBI_Taxonomy hierarchy and should not be altered manually." )

(annotation-assertion !definition !r:surname "The last name of a person." )

(annotation-assertion !definition !r:text "Holds the text of the summation." )

(annotation-assertion !definition !r:templateEvent "allows making a reference to a general process that underlies a BlackBoxEvent, e.g. 'Gene Expression' as template for the synthesis of a specific protein." )

(annotation-assertion !definition !r:title "The title of a literatureReference. For references retrieved from PubMed with the curator and author tools, this slot is filled automatically." )

(annotation-assertion !definition !r:transcriptIdentifier "This slot is for storing information about what is the transcript that this protein originates from or that this gene produces. This is really just a shortcut. If the current instance is a transcript identifier then this should be left empty. Accepts multiple values in order to be able to point to the same gene and proteins in different databases, e.g. EMBL, Ensembl, RefSeq." )

(annotation-assertion !definition !r:url "Holds URL for site which gives 'summary information' about the database including a description of what information the db contains. This slot should not need to be modified manually. Contact Imre if any changes are necessary." )

(annotation-assertion !definition !r:volume "The volume number of the journal in a LiteratureReference. For references retrieved from PubMed with the curator and author tools, this slot is filled automatically." )

(annotation-assertion !definition !r:year "The year a LiteratureReference was published. For references retrieved from PubMed with the curator and author tools, this slot is filled automatically." )

(ANNOTATION-ASSERTION !definition-source !<http://purl.obolibary.org/obo/reactome/record.owl> "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !<http://purl.obolibary.org/obo/reactome/record.owl> "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !<http://purl.obolibary.org/obo/reactome/record.owl> "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !<http://purl.obolibary.org/obo/reactome/record.owl> "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:_AttributeValueBeforeChange "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:_AttributeValueBeforeChange "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:_InstanceBeforeChange "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:_InstanceBeforeChange "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Affiliation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Affiliation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:CatalystActivity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:CatalystActivity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ConcurrentEventSet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ConcurrentEventSet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:DatabaseIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:DatabaseIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Disease "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Disease "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ComplexDomain "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ComplexDomain "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GenericDomain "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GenericDomain "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:SequenceDomain "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:SequenceDomain "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Event "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Event "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ConceptualEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ConceptualEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:EquivalentEventSet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:EquivalentEventSet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Pathway "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Pathway "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReactionlikeEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReactionlikeEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Reaction "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Reaction "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:BlackBoxEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:BlackBoxEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Depolymerisation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Depolymerisation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Polymerisation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Polymerisation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:EvidenceType "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:EvidenceType "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Figure "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Figure "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:FrontPage "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:FrontPage "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GO_BiologicalProcess "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GO_BiologicalProcess "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GO_CellularComponent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GO_CellularComponent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Compartment "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Compartment "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:EntityCompartment "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:EntityCompartment "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GO_MolecularFunction "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GO_MolecularFunction "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:InstanceEdit "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:InstanceEdit "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:LiteratureReference "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:LiteratureReference "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ModifiedResidue "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ModifiedResidue "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReplacedResidue "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReplacedResidue "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GroupModifiedResidue "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GroupModifiedResidue "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:FragmentModification "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:FragmentModification "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:FragmentDeletionModification "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:FragmentDeletionModification "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:FragmentInsertionModification "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:FragmentInsertionModification "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Person "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Person "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:PhysicalEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:PhysicalEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Complex "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Complex "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:EntitySet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:EntitySet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:CandidateSet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:CandidateSet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:DefinedSet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:DefinedSet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:OpenSet "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:OpenSet "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:GenomeEncodedEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:GenomeEncodedEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:EntityWithAccessionedSequence "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:EntityWithAccessionedSequence "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:OtherEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:OtherEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Polymer "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Polymer "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:SimpleEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:SimpleEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:psiMod "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:psiMod "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReactionCoordinates "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReactionCoordinates "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceDatabase "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceDatabase "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceGroup "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceGroup "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceMolecule "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceMolecule "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceMoleculeClass "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceMoleculeClass "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceSequence "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceSequence "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceDNASequence "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceDNASequence "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceGeneProduct "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceGeneProduct "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceIsoform "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceIsoform "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceRNASequence "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceRNASequence "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:ReferenceGroupCount "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:ReferenceGroupCount "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Regulation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Regulation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:NegativeRegulation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:NegativeRegulation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:PositiveRegulation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:PositiveRegulation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Requirement "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Requirement "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:RegulationType "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:RegulationType "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Summation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Summation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Taxon "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Taxon "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:Species "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:Species "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:_displayName "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:_displayName "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:accession "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:accession "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:accessionUrl "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:accessionUrl "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:activity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:activity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:address "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:address "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:affiliation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:affiliation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:author "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:author "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:comment "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:comment "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:componentOf "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:componentOf "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:concurrentEvents "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:concurrentEvents "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:coordinate "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:coordinate "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:created "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:created "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:crossReference "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:crossReference "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:databaseIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:databaseIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:dateAccepted "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:dateAccepted "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:dateRevised "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:dateRevised "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:dateSubmitted "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:dateSubmitted "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:dateTime "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:dateTime "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:DB_ID "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:DB_ID "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:definition "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:definition "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:description "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:description "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:editor "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:editor "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:eMailAddress "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:eMailAddress "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:endCoordinate "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:endCoordinate "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:figure "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:figure "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:firstname "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:firstname "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:focusEntity "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:focusEntity "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:formula "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:formula "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:geneIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:geneIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:geneName "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:geneName "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:hasComponent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:hasComponent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:hasEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:hasEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:hasMember "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:hasMember "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:identifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:identifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:inferredFrom "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:inferredFrom "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:initial "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:initial "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:input "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:input "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:instanceOf "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:instanceOf "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:journal "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:journal "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:keyword "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:keyword "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:literatureReference "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:literatureReference "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:literatureReference "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:literatureReference "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:modification "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:modification "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:modified "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:modified "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:name "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:name "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:orthologousEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:orthologousEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:output "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:output "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:pages "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:pages "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:precedingEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:precedingEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:proteinIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:proteinIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:pubMedIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:pubMedIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:requiredCatalystComponent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:requiredCatalystComponent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:requiredInputComponent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:requiredInputComponent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:residue "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:residue "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:reverseReaction "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:reverseReaction "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:reviewer "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:reviewer "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:secondaryIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:secondaryIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:species "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:species "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:startCoordinate "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:startCoordinate "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:summation "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:summation "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:superTaxon "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:superTaxon "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:surname "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:surname "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:text "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:text "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:templateEvent "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:templateEvent "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:title "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:title "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:transcriptIdentifier "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:transcriptIdentifier "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:url "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:url "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:volume "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:volume "Group:Reactome team") 
(ANNOTATION-ASSERTION !definition-source !r:year "WEB:http://wiki.reactome.org/index.php/Glossary_Data_Model") 
(ANNOTATION-ASSERTION !definition-editor !r:year "Group:Reactome team")