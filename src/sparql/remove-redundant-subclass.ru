# Remove redundant direct SubClassOf axioms where an indirect path exists.
# If A SubClassOf B and B SubClassOf C, then A SubClassOf C is entailed
# and the explicit axiom is redundant. This transitive reduction prevents
# flattened hierarchy artifacts from ROBOT complement remove stitching.
# Safe in OWL DL: removing an entailed explicit axiom does not change
# the logical theory.

PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

DELETE {
  ?a rdfs:subClassOf ?c .
}
WHERE {
  ?a rdfs:subClassOf ?c .
  ?a rdfs:subClassOf ?b .
  ?b rdfs:subClassOf ?c .
  FILTER(?a != ?b)
  FILTER(?b != ?c)
  FILTER(?a != ?c)
}
