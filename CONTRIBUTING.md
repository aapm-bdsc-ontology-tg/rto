# Contributing to Radiation Therapy Ontology

## Table Of Contents

- [Guidelines for Contributions and Requests](#contributions)
    * [Reporting problems](#reporting-bugs)
    * [Editing](#editing)
- [Best practices](#best-practices)
    * [How to write a great issue?](#great-issues)
    * [How to create a great pull/merge request?](#great-pulls)

<a id="contributions"></a>

## Guidelines for Contributions and Requests

<a id="reporting-bugs"></a>

### Reporting problems

Use our [Issue Tracker](https://github.com/aapm-bdsc-ontology-tg/rto/issues/) for reporting problems with the ontology. 
To learn how to write a good issue [see here](#great-issues).

<a id="editing"></a>

### Editing the ontology

The overall process for editing the  Radiation Therapy Ontology is as follows:

1. [If you want to create/import a new term: Check if the term already exists in an OBO foundry ontology](#checking)
1. [Write an issue about your edits](https://github.com/aapm-bdsc-ontology-tg/rto/issues/)
1. Create a new branch linked to your issue
1. (if not already done) Clone the repository (https://github.com/aapm-bdsc-ontology-tg/rto.git)
1. Fetch / update the local copy of the repository and switch ot the new branch
1. If you want to change the RTO itself: Open src/ontology/rto-edit.owl in your favourite editor, e.g. [Protege](https://protege.stanford.edu/).
OR
1. If you want to change the Imports: Open src/ontology/imports/?.owl in your favourite editor, e.g. [Protege](https://protege.stanford.edu/).
1. Make your edits and save your file locally
1. Commit the local changes and push changes to origin
1. Create pull request

![process](/src/assets/git_process_overview.png)


<a id="checking"></a>

#### Check whether the term exist 
Check whether the term exists, either as a primary term or a synonym term in an OBO foundry ontology. 
You can search for your term using [Ontobee](https://ontobee.org/) 
or [OLS](http://www.ebi.ac.uk/ols/ontologies/rto).


<a id="issue"></a>

#### Write an issue about your edits


<a id="create_branch"></a>

#### Create a branch linked to your issue
In the [list of issues](https://github.com/aapm-bdsc-ontology-tg/rto/issues/)
, click the issue that you would like to create a branch for.
In the right sidebar under "Development", click Create a branch and then Create Bracnc. 



- **Can you provide a definition for the term?** It should be very clear what the term means, and you should be
able to provide a concise definition, ideally with a scientific reference. 
We define terms using an aristotelian definition following the book of Arp et al. NEED REF
**Is the ontology in scope for the term?** Sometimes, it is hard to tell whether a term "belongs" in
and ontology. A rule of thumb is "if a similar term already exists, the new term is probably in scope."
It can be very helpful to mention a very similar concept as part of the term request!

#### Who can request a term?

Anyone can request new terms. However, there is not guarantee that your term will be added automatically. Since this is a 
community resource, it is often necessary to do at least some of the work of adding the term yourself, see below.

#### How to write a new term request

Request a new term _via_ the GitHub [Issue Tracker](https://github.com/aapm-bdsc-ontology-tg/rto/issues/).

It is important to remember that it takes a lot of time for curators to process issues submitted to the tracker.
To make this work easier, please always use issue templates if they are available (https://github.com/aapm-bdsc-ontology-tg/rto/issues/new/choose).

For how to write a good term request, please read the [best practices carefully](#great-issues).

<a id="adding-terms"></a>

### How to add a new term

If you have never editted this ontology before, first follow a [general tutorial](https://oboacademy.github.io/obook/lesson/contributing-to-obo-ontologies)


## Best Practices

<a id="great-issues"></a>

### How to write great issues?

Please refer to the [OBO Academy best practices](https://oboacademy.github.io/obook/lesson/term-request/).

<a id="great-pulls"></a>

### How to create a great pull/merge request?

Please refer to the [OBO Academy best practices](https://oboacademy.github.io/obook/howto/github-create-pull-request/)