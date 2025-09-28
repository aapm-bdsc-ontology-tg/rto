
## Introduction
The below documents the workflow I used to update the RTO ontology and all imports to prepare the first release.
This was done on a Windows 11 machine with WSL
Andre Dekker, Sep 2025

# Prerequisites
Start Docker
Start GitHub desktop and fetch latest version of main branch RTO
Start Linux terminal
Install dos2unix
Install bc
Navigate to cd rto/src/ontology

# Update ODK
Run docker pull obolibrary/odkfull
[for windows] convert run.sh usng dos2unix (dos2unix run.sh)

# Make run.sh suitable for WSL
Replace
DEFAULT_MAX_MEM=$(bc <<<"($(docker info --format={{.MemTotal}}) * .9) / (1024*1024*1024)")G
with
DEFAULT_MAX_MEM=$(echo "($(docker info --format={{.MemTotal}}) * .9) / (1024*1024*1024)" | bc)G 
as WSL doesn't seem to handel bc well. 

# Update RTO
sudo sh run.sh make update_repo

# Make run.sh suitable for WSL
The update_repo changes run.sh back to its default, redo "Make run.sh suitable for WSL"

# Commit changes
Push changes to GitHub 

# Check ontology
Open ontology in Protege and check

# Update imports
Run the below
sudo sh run.sh make refresh-bfo
sudo sh run.sh make refresh-ro
sudo sh run.sh make refresh-rbo
sudo sh run.sh make refresh-iao
sudo sh run.sh make refresh-ogms
sudo sh run.sh make refresh-pato
sudo sh run.sh make refresh-cob
sudo sh run.sh make refresh-obi
optional sudo sh run.sh make refresh-chebi (note that this may take while as chebi is big)

# Commit changes
Push changes to GitHub

# Check ontology
Open ontology in Protege and check

# Do the ODK release workflow
Make an isse and checkout a branch releasce-vX
sudo sh run.sh make prepare_release -B

# Commit changes
Push changes to GitHub

# Check ontology
Open ontology in Protege and check

# Create a new release 
On GitHub create a release

# Note
I did the above workflow on main, this is not correct. Better is to checkout a branch, e.g. pre-release-vX and then a pull request

