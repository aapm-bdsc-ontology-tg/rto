# Remove owl:equivalentClass axioms that use owl:oneOf (punned singleton classes)
# and remove NamedIndividual declarations for entities also declared as owl:Class
# This allows ROBOT extract to properly include punned classes like UO_0000031

PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

DELETE {
  ?cls owl:equivalentClass ?equiv .
  ?cls rdf:type owl:NamedIndividual .
}
WHERE {
  ?cls owl:equivalentClass ?equiv .
  ?equiv owl:oneOf ?list .
}
