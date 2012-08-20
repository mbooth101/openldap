!IF "$(CFG)" == ""
CFG=lber - Win32 Release
!MESSAGE No configuration specified. Defaulting to lber - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "lber - Win32 Release" && "$(CFG)" != "lber - Win32 Debug" && "$(CFG)" != "lber - x64 Release" && "$(CFG)" != "lber - x64 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lber.mak" CFG="lber - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lber - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lber - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lber - x64 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lber - x64 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "lber - Win32 Release"

OUTDIR=.\LibR
INTDIR=.\LibR

ALL : "$(OUTDIR)\lber.lib"


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
	-@erase "$(INTDIR)\lber.idb"
	-@erase "$(INTDIR)\lber.pdb"
	-@erase "$(OUTDIR)\lber.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\lber" /FD /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\lber.lib" 
LIB32_OBJS= \
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

"$(OUTDIR)\lber.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lber - Win32 Debug"

OUTDIR=.\LibD
INTDIR=.\LibD

ALL : "$(OUTDIR)\lber.lib"


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
	-@erase "$(INTDIR)\lber.idb"
	-@erase "$(INTDIR)\lber.pdb"
	-@erase "$(OUTDIR)\lber.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\lber" /FD /EHsc /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\lber.lib" 
LIB32_OBJS= \
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

"$(OUTDIR)\lber.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lber - x64 Release"

OUTDIR=.\x64\LibR
INTDIR=.\x64\LibR

ALL : "$(OUTDIR)\lber.lib"


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
	-@erase "$(INTDIR)\lber.idb"
	-@erase "$(INTDIR)\lber.pdb"
	-@erase "$(OUTDIR)\lber.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\lber" /FD /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\lber.lib" 
LIB32_OBJS= \
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

"$(OUTDIR)\lber.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lber - x64 Debug"

OUTDIR=.\x64\LibD
INTDIR=.\x64\LibD

ALL : "$(OUTDIR)\lber.lib"


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
	-@erase "$(INTDIR)\lber.idb"
	-@erase "$(INTDIR)\lber.pdb"
	-@erase "$(OUTDIR)\lber.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "_WINDOWS" /D "LBER_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\lber" /FD /EHsc /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\lber.lib" 
LIB32_OBJS= \
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

"$(OUTDIR)\lber.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

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

