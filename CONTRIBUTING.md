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
1. [Write an issue about your proposed edits](#issues)
1. [Create a new branch linked to your issue](#create_branch)
1. (if not already done) Clone the repository (https://github.com/aapm-bdsc-ontology-tg/rto.git)
1. [Fetch / update the local copy of the repository and switch ot the new branch](#switch_to_branch)]
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

#### Write an issue about your proposed edits
Go to the [issue section](https://github.com/aapm-bdsc-ontology-tg/rto/issues/) and create a new issue. 
Follow the template given for new issues and use a free form for oher edits.

<a id="create_branch"></a>

#### Create a branch linked to your issue
In the [list of issues](https://github.com/aapm-bdsc-ontology-tg/rto/issues/)
, click the issue that you would like to create a branch for.
In the right sidebar under "Development", click Create a branch, select an appropriat optne and click Create branch. 
![process](/src/assets/create-a-branch.webp)

<a id="switch_to_branch"></a>

### Start working locally in the new branch
Fetch / update the local copy of the repository and switch to the new branch in your git manager (e.g. GitHub Dekstop)
