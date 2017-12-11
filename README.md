# OpenLDAP for Windows

This repository contains files necessary for building OpenLDAP on Windows. Currently this only builds the *liblber*, *libldap*, and *libldap_r* static libraries and DLLs.

### Building

The files in this repository should be placed into the OpenLDAP source tree and the build invoked by:

    nmake -f Makefile.win PREFIX=C:\openldap buildall installall ARCH="x64 Release"
