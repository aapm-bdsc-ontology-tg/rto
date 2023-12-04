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
