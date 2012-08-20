# OpenLDAP for Windows

This repository contains files necessary for building OpenLDAP on Windows. Currently this only builds the *liblber*, *libldap*, and *libldap_r* static libraries and DLLs.

### Patching

OpenLDAP cannot currently be built on Windows without applying patches, but I am working on getting them commited upstream for inclusion in future releases.

##### Patches for Building 2.4.32

http://people.apache.org/~mbooth/0001-Fix-build-error-syntax-error-missing-before-type-whe.patch

Submitted upstream as ITS#7358.

##### Patches for Building 2.4.31

http://people.apache.org/~mbooth/0001-Changes-required-to-build-with-Microsoft-Visual-Stud.patch

Submitted upstream as ITS#7332, commited for inclusion in 2.4.32.

### Building

The files in this repository should be placed into the OpenLDAP source tree and the build invoked by:

    nmake -f Makefile.win PREFIX=C:\openldap buildall installall