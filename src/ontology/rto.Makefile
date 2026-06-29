## Customize Makefile settings for rto
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

## Module for ontology: ro
## original (from https://obo-communitygroup.slack.com/archives/C01BKKED8R2/p1700148648326779?thread_ts=1700060342.167129&cid=C01BKKED8R2)
$(IMPORTDIR)/ro_import.owl: $(MIRRORDIR)/ro.owl
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/ro_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method subset --intermediates none \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## this line was originally added but seems not necessary for us (see post) filter -T $(IMPORTDIR)/ro_filter_terms.txt --select "self annotations" --trim false \

## Module for ontology: uo (filter)
## Override: preprocess with uo-depunn.ru to remove owl:oneOf equivalentClass axioms
## and NamedIndividual declarations for punned entities (e.g. UO_0000031 minute)
## before BOT extraction, so ROBOT doesn't drop them during complement remove.
$(IMPORTDIR)/uo_import.owl: $(MIRRORDIR)/uo.owl $(IMPORTDIR)/uo_terms.txt $(IMPORTSEED) | all_robot_plugins
	$(ROBOT) query -i $< --update ../sparql/uo-depunn.ru \
		 extract --term-file $(IMPORTDIR)/uo_terms.txt $(T_IMPORTSEED) \
		         --copy-ontology-annotations true --force true --method BOT \
		 remove --axioms external --preserve-structure false --trim false \
		        --base-iri http://purl.obolibrary.org/obo/UO_ \
		 remove $(foreach p, $(ANNOTATION_PROPERTIES), --term $(p)) \
		        --term rdfs:label \
		        --term IAO:0000115 \
		        --term OMO:0002000 \
		        --term-file $(IMPORTDIR)/uo_terms.txt $(T_IMPORTSEED) \
		        --select complement \
		 odk:normalize --base-iri http://purl.obolibrary.org/obo \
		               --subset-decls true --synonym-decls true \
		 repair --merge-axiom-annotations true \
		 $(ANNOTATE_CONVERT_FILE)
