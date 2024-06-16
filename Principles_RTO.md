# General Principles Guiding Development of Radiation Therapy Ontology (RTO)

1.  To follow the guidelines of the [Open Biological and Biomedical Ontology (OBO) Foundry](http:/obofoundry.org)
1. RTO is intended for the open use of the medical and biomedical communities.
1. RTO seeks to encompass the domain of radiation therapy as opposed to the larger domain of radiation oncology.  RTO focusses on the equipmentt, procedures, and physics of radiation therapy; it does not claim to describe the clinical, and medical aspects of radiation oncology, tumor biology and disease physiology.  However, the close linkage between the two domains is not ignored and concepts and relationships that are necessary and useful to the broader domain are included.
1. RTO uses the conceptual scaffolding of the [Basic Formal Ontology](https://basic-formal-ontology.org) and [Relation Ontology](obofoundry.org/ontology/ro.html).  (See Arp, R, Smith B, Spear AD. Building ontologies with basic formal ontology. MIT Press, 2015.)
1. RTO is built using the [Web Ontology Language, OWL](https://www.w3.org/OWL/).
1. RTO falls under the general class of "formal" ontologies.  The classes and properties are meant to be fundamental and relatively general.  It is understood that practical applications may need a practical ontology to be merged with RTO in order to meet the specifications and constraints of particular applications.  However, the intent is that the use of RTO will relieve application implementers of significant effort and establish a uniform knowledge representation and vocabulary, which characteristics have been shoown to have significant synergisgtic properties.
1. To the extent tpossible, use if made of classes and properties that have been defined in other OBO Foundry ontologies.  It is understood that there can be considerable overlap between concepts in different biomedical domains, yet the overlap is not sufficiently complete to base an RTO class or property on it.  In those cases, a new class is implemented in RTO, but pointers to the related concept should be present.

Prepared 28 June 2023


