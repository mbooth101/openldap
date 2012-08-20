!IF "$(CFG)" == ""
CFG=liblber - Win32 Release
!MESSAGE No configuration specified. Defaulting to liblber - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "liblber - Win32 Release" && "$(CFG)" != "liblber - Win32 Debug" && "$(CFG)" != "liblber - x64 Release" && "$(CFG)" != "liblber - x64 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "liblber.mak" CFG="liblber - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "liblber - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "liblber - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "liblber - x64 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "liblber - x64 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "liblber - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\liblber.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\bprint.obj"
	-@erase "$(INTDIR)\debug.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\encode.obj"
	-@erase "$(INTDIR)\io.obj"
	-@erase "$(INTDIR)\memory.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\sockbuf.obj"
	-@erase "$(INTDIR)\nt_err.obj"
	-@erase "$(INTDIR)\liblber_src.idb"
	-@erase "$(INTDIR)\liblber_src.pdb"
	-@erase "$(OUTDIR)\liblber.dll"
	-@erase "$(OUTDIR)\liblber.exp"
	-@erase "$(OUTDIR)\liblber.lib"
	-@erase "$(OUTDIR)\liblber.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\liblber_src" /FD /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\liblber.res" /I "./../../include" /d "NDEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\liblber.pdb" /debug /out:"$(OUTDIR)\liblber.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\liblber.lib" /MACHINE:X86 /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\bprint.obj" \
	"$(INTDIR)\debug.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\encode.obj" \
	"$(INTDIR)\io.obj" \
	"$(INTDIR)\memory.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\sockbuf.obj" \
	"$(INTDIR)\nt_err.obj"
DEF_FILE=.\lber.def

"$(OUTDIR)\liblber.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\liblber.dll"
   if exist .\Release\liblber.dll.manifest mt.exe -manifest .\Release\liblber.dll.manifest -outputresource:.\Release\liblber.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "liblber - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\liblber.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\bprint.obj"
	-@erase "$(INTDIR)\debug.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\encode.obj"
	-@erase "$(INTDIR)\io.obj"
	-@erase "$(INTDIR)\memory.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\sockbuf.obj"
	-@erase "$(INTDIR)\nt_err.obj"
	-@erase "$(INTDIR)\liblber_src.idb"
	-@erase "$(INTDIR)\liblber_src.pdb"
	-@erase "$(OUTDIR)\liblber.dll"
	-@erase "$(OUTDIR)\liblber.exp"
	-@erase "$(OUTDIR)\liblber.lib"
	-@erase "$(OUTDIR)\liblber.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\liblber_src" /FD /EHsc /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\liblber.res" /I "./../../include" /d "_DEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\liblber.pdb" /debug /out:"$(OUTDIR)\liblber.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\liblber.lib" /MACHINE:X86 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\bprint.obj" \
	"$(INTDIR)\debug.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\encode.obj" \
	"$(INTDIR)\io.obj" \
	"$(INTDIR)\memory.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\sockbuf.obj" \
	"$(INTDIR)\nt_err.obj"
DEF_FILE=.\lber.def

"$(OUTDIR)\liblber.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\liblber.dll"
   if exist .\Debug\liblber.dll.manifest mt.exe -manifest .\Debug\liblber.dll.manifest -outputresource:.\Debug\liblber.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "liblber - x64 Release"

OUTDIR=.\x64\Release
INTDIR=.\x64\Release
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\liblber.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\bprint.obj"
	-@erase "$(INTDIR)\debug.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\encode.obj"
	-@erase "$(INTDIR)\io.obj"
	-@erase "$(INTDIR)\memory.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\sockbuf.obj"
	-@erase "$(INTDIR)\nt_err.obj"
	-@erase "$(INTDIR)\liblber_src.idb"
	-@erase "$(INTDIR)\liblber_src.pdb"
	-@erase "$(OUTDIR)\liblber.dll"
	-@erase "$(OUTDIR)\liblber.exp"
	-@erase "$(OUTDIR)\liblber.lib"
	-@erase "$(OUTDIR)\liblber.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\liblber_src" /FD /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\liblber.res" /I "./../../include" /d "NDEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\liblber.pdb" /debug /out:"$(OUTDIR)\liblber.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\liblber.lib" /MACHINE:X64 /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\bprint.obj" \
	"$(INTDIR)\debug.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\encode.obj" \
	"$(INTDIR)\io.obj" \
	"$(INTDIR)\memory.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\sockbuf.obj" \
	"$(INTDIR)\nt_err.obj"
DEF_FILE=.\lber.def

"$(OUTDIR)\liblber.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\liblber.dll"
   if exist .\x64\Release\liblber.dll.manifest mt.exe -manifest .\x64\Release\liblber.dll.manifest -outputresource:.\x64\Release\liblber.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "liblber - x64 Debug"

OUTDIR=.\x64\Debug
INTDIR=.\x64\Debug
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\liblber.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\bprint.obj"
	-@erase "$(INTDIR)\debug.obj"
	-@erase "$(INTDIR)\decode.obj"
	-@erase "$(INTDIR)\encode.obj"
	-@erase "$(INTDIR)\io.obj"
	-@erase "$(INTDIR)\memory.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\sockbuf.obj"
	-@erase "$(INTDIR)\nt_err.obj"
	-@erase "$(INTDIR)\liblber_src.idb"
	-@erase "$(INTDIR)\liblber_src.pdb"
	-@erase "$(OUTDIR)\liblber.dll"
	-@erase "$(OUTDIR)\liblber.exp"
	-@erase "$(OUTDIR)\liblber.lib"
	-@erase "$(OUTDIR)\liblber.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\liblber_src" /FD /EHsc /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\liblber.res" /I "./../../include" /d "_DEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\liblber.pdb" /debug /out:"$(OUTDIR)\liblber.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\liblber.lib" /MACHINE:X64 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\bprint.obj" \
	"$(INTDIR)\debug.obj" \
	"$(INTDIR)\decode.obj" \
	"$(INTDIR)\encode.obj" \
	"$(INTDIR)\io.obj" \
	"$(INTDIR)\memory.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\sockbuf.obj" \
	"$(INTDIR)\nt_err.obj"
DEF_FILE=.\lber.def

"$(OUTDIR)\liblber.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\liblber.dll"
   if exist .\x64\Debug\liblber.dll.manifest mt.exe -manifest .\x64\Debug\liblber.dll.manifest -outputresource:.\x64\Debug\liblber.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

SOURCE=.\assert.c

"$(INTDIR)\assert.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\bprint.c

"$(INTDIR)\bprint.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\debug.c

"$(INTDIR)\debug.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\decode.c

"$(INTDIR)\decode.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\encode.c

"$(INTDIR)\encode.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\io.c

"$(INTDIR)\io.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\memory.c

"$(INTDIR)\memory.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\options.c

"$(INTDIR)\options.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sockbuf.c

"$(INTDIR)\sockbuf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\nt_err.c

"$(INTDIR)\nt_err.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)
