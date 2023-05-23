# Contributing to Radiation Therapy Ontology

:+1: First of all: Thank you for taking the time to contribute!

The following is a set of guidelines for contributing to RTO. 
These guidelines are not strict rules. Use your best judgment, and feel free to propose 
changes to this document in a pull request.

## Table Of Contents

- [Code of Conduct](#code-of-conduct)
- [Guidelines for Contributions and Requests](#contributions)
    * [Reporting problems](#reporting-bugs)
    * [Editing](#editingm)
- [Best practices](#best-practices)
    * [How to write a great issue?](#great-issues)
    * [How to create a great pull/merge request?](#great-pulls)

<a id="code-of-conduct"></a>

## Code of Conduct

The Radiation Therapy Ontology team strives to create a
welcoming environment for editors, users and other contributors.
Please carefully read our [Code of Conduct](CODE_OF_CONDUCT.md).

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
1. Write an issue about your edits
1. (if not already done) Clone the repository 
1. Fetch the main branch and create a new branch the code using XXXISSUEXXX as the branch name on your local machine
1. Switch to the right branch
1. If you want to change the RTO itself: Open src/ontology/rto-edit.owl in your favourite editor, e.g. [Protege](https://protege.stanford.edu/).
OR
1. If you want to change the Imports: Open src/ontology/imports/?.owl in your favourite editor, e.g. [Protege](https://protege.stanford.edu/).
1. Make your edits
1. Commit the changes and push changes to origin
1. Create pull request


<a id="checking"></a>

#### Check whether the term exist 
Check whether the term exists, either as a primary term or a synonym term in an OBO foundry ontology. 
You can search for your term using [Ontobee](https://ontobee.org/) 
or [OLS](http://www.ebi.ac.uk/ols/ontologies/rto).


<a id="checking"></a>

#### Write an issue about your edits

Before you write a new request, please consider the following: 

- **Does the term already exist?** Before submitting suggestions for new ontology terms, 
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