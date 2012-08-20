!IF "$(CFG)" == ""
CFG=libldap_r - Win32 Release
!MESSAGE No configuration specified. Defaulting to libldap_r - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "libldap_r - Win32 Release" && "$(CFG)" != "libldap_r - Win32 Debug" && "$(CFG)" != "libldap_r - x64 Release" && "$(CFG)" != "libldap_r - x64 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libldap_r.mak" CFG="libldap_r - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libldap_r - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libldap_r - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libldap_r - x64 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libldap_r - x64 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "libldap_r - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\libldap_r.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\bind.obj"
	-@erase "$(INTDIR)\open.obj"
	-@erase "$(INTDIR)\result.obj"
	-@erase "$(INTDIR)\error.obj"
	-@erase "$(INTDIR)\compare.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\controls.obj"
	-@erase "$(INTDIR)\messages.obj"
	-@erase "$(INTDIR)\references.obj"
	-@erase "$(INTDIR)\extended.obj"
	-@erase "$(INTDIR)\cyrus.obj"
	-@erase "$(INTDIR)\modify.obj"
	-@erase "$(INTDIR)\add.obj"
	-@erase "$(INTDIR)\modrdn.obj"
	-@erase "$(INTDIR)\delete.obj"
	-@erase "$(INTDIR)\abandon.obj"
	-@erase "$(INTDIR)\sasl.obj"
	-@erase "$(INTDIR)\gssapi.obj"
	-@erase "$(INTDIR)\sbind.obj"
	-@erase "$(INTDIR)\unbind.obj"
	-@erase "$(INTDIR)\cancel.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\free.obj"
	-@erase "$(INTDIR)\sort.obj"
	-@erase "$(INTDIR)\passwd.obj"
	-@erase "$(INTDIR)\whoami.obj"
	-@erase "$(INTDIR)\getdn.obj"
	-@erase "$(INTDIR)\getentry.obj"
	-@erase "$(INTDIR)\getattr.obj"
	-@erase "$(INTDIR)\getvalues.obj"
	-@erase "$(INTDIR)\addentry.obj"
	-@erase "$(INTDIR)\request.obj"
	-@erase "$(INTDIR)\os-ip.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\pagectrl.obj"
	-@erase "$(INTDIR)\sortctrl.obj"
	-@erase "$(INTDIR)\vlvctrl.obj"
	-@erase "$(INTDIR)\init.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\print.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\util-int.obj"
	-@erase "$(INTDIR)\schema.obj"
	-@erase "$(INTDIR)\charray.obj"
	-@erase "$(INTDIR)\os-local.obj"
	-@erase "$(INTDIR)\dnssrv.obj"
	-@erase "$(INTDIR)\utf-8.obj"
	-@erase "$(INTDIR)\utf-8-conv.obj"
	-@erase "$(INTDIR)\tls2.obj"
	-@erase "$(INTDIR)\tls_o.obj"
	-@erase "$(INTDIR)\tls_g.obj"
	-@erase "$(INTDIR)\tls_m.obj"
	-@erase "$(INTDIR)\turn.obj"
	-@erase "$(INTDIR)\ppolicy.obj"
	-@erase "$(INTDIR)\dds.obj"
	-@erase "$(INTDIR)\txn.obj"
	-@erase "$(INTDIR)\ldap_sync.obj"
	-@erase "$(INTDIR)\stctrl.obj"
	-@erase "$(INTDIR)\assertion.obj"
	-@erase "$(INTDIR)\deref.obj"
	-@erase "$(INTDIR)\ldif.obj"
	-@erase "$(INTDIR)\fetch.obj"
	-@erase "$(INTDIR)\threads.obj"
	-@erase "$(INTDIR)\rdwr.obj"
	-@erase "$(INTDIR)\rmutex.obj"
	-@erase "$(INTDIR)\tpool.obj"
	-@erase "$(INTDIR)\rq.obj"
	-@erase "$(INTDIR)\thr_posix.obj"
	-@erase "$(INTDIR)\thr_cthreads.obj"
	-@erase "$(INTDIR)\thr_thr.obj"
	-@erase "$(INTDIR)\thr_nt.obj"
	-@erase "$(INTDIR)\thr_pth.obj"
	-@erase "$(INTDIR)\thr_stub.obj"
	-@erase "$(INTDIR)\thr_debug.obj"
	-@erase "$(INTDIR)\libldap_r_src.idb"
	-@erase "$(INTDIR)\libldap_r_src.pdb"
	-@erase "$(OUTDIR)\libldap_r.dll"
	-@erase "$(OUTDIR)\libldap_r.exp"
	-@erase "$(OUTDIR)\libldap_r.lib"
	-@erase "$(OUTDIR)\libldap_r.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /I "./../libldap" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /D "LDAP_R_COMPILE" /D "LDAP_LIBS_DYNAMIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\libldap_r_src" /FD /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\libldap_r.res" /I "./../../include" /I "./../libldap" /d "NDEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib liblber.lib libeay32.lib ssleay32.lib /LIBPATH:"../liblber/$(OUTDIR)" /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\libldap_r.pdb" /debug /out:"$(OUTDIR)\libldap_r.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\libldap_r.lib" /MACHINE:X86 /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\bind.obj" \
	"$(INTDIR)\open.obj" \
	"$(INTDIR)\result.obj" \
	"$(INTDIR)\error.obj" \
	"$(INTDIR)\compare.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\controls.obj" \
	"$(INTDIR)\messages.obj" \
	"$(INTDIR)\references.obj" \
	"$(INTDIR)\extended.obj" \
	"$(INTDIR)\cyrus.obj" \
	"$(INTDIR)\modify.obj" \
	"$(INTDIR)\add.obj" \
	"$(INTDIR)\modrdn.obj" \
	"$(INTDIR)\delete.obj" \
	"$(INTDIR)\abandon.obj" \
	"$(INTDIR)\sasl.obj" \
	"$(INTDIR)\gssapi.obj" \
	"$(INTDIR)\sbind.obj" \
	"$(INTDIR)\unbind.obj" \
	"$(INTDIR)\cancel.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\free.obj" \
	"$(INTDIR)\sort.obj" \
	"$(INTDIR)\passwd.obj" \
	"$(INTDIR)\whoami.obj" \
	"$(INTDIR)\getdn.obj" \
	"$(INTDIR)\getentry.obj" \
	"$(INTDIR)\getattr.obj" \
	"$(INTDIR)\getvalues.obj" \
	"$(INTDIR)\addentry.obj" \
	"$(INTDIR)\request.obj" \
	"$(INTDIR)\os-ip.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\pagectrl.obj" \
	"$(INTDIR)\sortctrl.obj" \
	"$(INTDIR)\vlvctrl.obj" \
	"$(INTDIR)\init.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\print.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\util-int.obj" \
	"$(INTDIR)\schema.obj" \
	"$(INTDIR)\charray.obj" \
	"$(INTDIR)\os-local.obj" \
	"$(INTDIR)\dnssrv.obj" \
	"$(INTDIR)\utf-8.obj" \
	"$(INTDIR)\utf-8-conv.obj" \
	"$(INTDIR)\tls2.obj" \
	"$(INTDIR)\tls_o.obj" \
	"$(INTDIR)\tls_g.obj" \
	"$(INTDIR)\tls_m.obj" \
	"$(INTDIR)\turn.obj" \
	"$(INTDIR)\ppolicy.obj" \
	"$(INTDIR)\dds.obj" \
	"$(INTDIR)\txn.obj" \
	"$(INTDIR)\ldap_sync.obj" \
	"$(INTDIR)\stctrl.obj" \
	"$(INTDIR)\assertion.obj" \
	"$(INTDIR)\deref.obj" \
	"$(INTDIR)\ldif.obj" \
	"$(INTDIR)\fetch.obj" \
	"$(INTDIR)\threads.obj" \
	"$(INTDIR)\rdwr.obj" \
	"$(INTDIR)\rmutex.obj" \
	"$(INTDIR)\tpool.obj" \
	"$(INTDIR)\rq.obj" \
	"$(INTDIR)\thr_posix.obj" \
	"$(INTDIR)\thr_cthreads.obj" \
	"$(INTDIR)\thr_thr.obj" \
	"$(INTDIR)\thr_nt.obj" \
	"$(INTDIR)\thr_pth.obj" \
	"$(INTDIR)\thr_stub.obj" \
	"$(INTDIR)\thr_debug.obj"
DEF_FILE=.\ldap_r.def

"$(OUTDIR)\libldap_r.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\libldap_r.dll"
   if exist .\Release\libldap_r.dll.manifest mt.exe -manifest .\Release\libldap_r.dll.manifest -outputresource:.\Release\libldap_r.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "libldap_r - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\libldap_r.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\bind.obj"
	-@erase "$(INTDIR)\open.obj"
	-@erase "$(INTDIR)\result.obj"
	-@erase "$(INTDIR)\error.obj"
	-@erase "$(INTDIR)\compare.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\controls.obj"
	-@erase "$(INTDIR)\messages.obj"
	-@erase "$(INTDIR)\references.obj"
	-@erase "$(INTDIR)\extended.obj"
	-@erase "$(INTDIR)\cyrus.obj"
	-@erase "$(INTDIR)\modify.obj"
	-@erase "$(INTDIR)\add.obj"
	-@erase "$(INTDIR)\modrdn.obj"
	-@erase "$(INTDIR)\delete.obj"
	-@erase "$(INTDIR)\abandon.obj"
	-@erase "$(INTDIR)\sasl.obj"
	-@erase "$(INTDIR)\gssapi.obj"
	-@erase "$(INTDIR)\sbind.obj"
	-@erase "$(INTDIR)\unbind.obj"
	-@erase "$(INTDIR)\cancel.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\free.obj"
	-@erase "$(INTDIR)\sort.obj"
	-@erase "$(INTDIR)\passwd.obj"
	-@erase "$(INTDIR)\whoami.obj"
	-@erase "$(INTDIR)\getdn.obj"
	-@erase "$(INTDIR)\getentry.obj"
	-@erase "$(INTDIR)\getattr.obj"
	-@erase "$(INTDIR)\getvalues.obj"
	-@erase "$(INTDIR)\addentry.obj"
	-@erase "$(INTDIR)\request.obj"
	-@erase "$(INTDIR)\os-ip.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\pagectrl.obj"
	-@erase "$(INTDIR)\sortctrl.obj"
	-@erase "$(INTDIR)\vlvctrl.obj"
	-@erase "$(INTDIR)\init.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\print.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\util-int.obj"
	-@erase "$(INTDIR)\schema.obj"
	-@erase "$(INTDIR)\charray.obj"
	-@erase "$(INTDIR)\os-local.obj"
	-@erase "$(INTDIR)\dnssrv.obj"
	-@erase "$(INTDIR)\utf-8.obj"
	-@erase "$(INTDIR)\utf-8-conv.obj"
	-@erase "$(INTDIR)\tls2.obj"
	-@erase "$(INTDIR)\tls_o.obj"
	-@erase "$(INTDIR)\tls_g.obj"
	-@erase "$(INTDIR)\tls_m.obj"
	-@erase "$(INTDIR)\turn.obj"
	-@erase "$(INTDIR)\ppolicy.obj"
	-@erase "$(INTDIR)\dds.obj"
	-@erase "$(INTDIR)\txn.obj"
	-@erase "$(INTDIR)\ldap_sync.obj"
	-@erase "$(INTDIR)\stctrl.obj"
	-@erase "$(INTDIR)\assertion.obj"
	-@erase "$(INTDIR)\deref.obj"
	-@erase "$(INTDIR)\ldif.obj"
	-@erase "$(INTDIR)\fetch.obj"
	-@erase "$(INTDIR)\threads.obj"
	-@erase "$(INTDIR)\rdwr.obj"
	-@erase "$(INTDIR)\rmutex.obj"
	-@erase "$(INTDIR)\tpool.obj"
	-@erase "$(INTDIR)\rq.obj"
	-@erase "$(INTDIR)\thr_posix.obj"
	-@erase "$(INTDIR)\thr_cthreads.obj"
	-@erase "$(INTDIR)\thr_thr.obj"
	-@erase "$(INTDIR)\thr_nt.obj"
	-@erase "$(INTDIR)\thr_pth.obj"
	-@erase "$(INTDIR)\thr_stub.obj"
	-@erase "$(INTDIR)\thr_debug.obj"
	-@erase "$(INTDIR)\libldap_r_src.idb"
	-@erase "$(INTDIR)\libldap_r_src.pdb"
	-@erase "$(OUTDIR)\libldap_r.dll"
	-@erase "$(OUTDIR)\libldap_r.exp"
	-@erase "$(OUTDIR)\libldap_r.lib"
	-@erase "$(OUTDIR)\libldap_r.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /I "./../libldap" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /D "LDAP_R_COMPILE" /D "LDAP_LIBS_DYNAMIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\libldap_r_src" /FD /EHsc /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\libldap_r.res" /I "./../../include" /I "./../libldap" /d "_DEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib liblber.lib libeay32.lib ssleay32.lib /LIBPATH:"../liblber/$(OUTDIR)" /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\libldap_r.pdb" /debug /out:"$(OUTDIR)\libldap_r.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\libldap_r.lib" /MACHINE:X86 
LINK32_OBJS= \
	"$(INTDIR)\bind.obj" \
	"$(INTDIR)\open.obj" \
	"$(INTDIR)\result.obj" \
	"$(INTDIR)\error.obj" \
	"$(INTDIR)\compare.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\controls.obj" \
	"$(INTDIR)\messages.obj" \
	"$(INTDIR)\references.obj" \
	"$(INTDIR)\extended.obj" \
	"$(INTDIR)\cyrus.obj" \
	"$(INTDIR)\modify.obj" \
	"$(INTDIR)\add.obj" \
	"$(INTDIR)\modrdn.obj" \
	"$(INTDIR)\delete.obj" \
	"$(INTDIR)\abandon.obj" \
	"$(INTDIR)\sasl.obj" \
	"$(INTDIR)\gssapi.obj" \
	"$(INTDIR)\sbind.obj" \
	"$(INTDIR)\unbind.obj" \
	"$(INTDIR)\cancel.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\free.obj" \
	"$(INTDIR)\sort.obj" \
	"$(INTDIR)\passwd.obj" \
	"$(INTDIR)\whoami.obj" \
	"$(INTDIR)\getdn.obj" \
	"$(INTDIR)\getentry.obj" \
	"$(INTDIR)\getattr.obj" \
	"$(INTDIR)\getvalues.obj" \
	"$(INTDIR)\addentry.obj" \
	"$(INTDIR)\request.obj" \
	"$(INTDIR)\os-ip.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\pagectrl.obj" \
	"$(INTDIR)\sortctrl.obj" \
	"$(INTDIR)\vlvctrl.obj" \
	"$(INTDIR)\init.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\print.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\util-int.obj" \
	"$(INTDIR)\schema.obj" \
	"$(INTDIR)\charray.obj" \
	"$(INTDIR)\os-local.obj" \
	"$(INTDIR)\dnssrv.obj" \
	"$(INTDIR)\utf-8.obj" \
	"$(INTDIR)\utf-8-conv.obj" \
	"$(INTDIR)\tls2.obj" \
	"$(INTDIR)\tls_o.obj" \
	"$(INTDIR)\tls_g.obj" \
	"$(INTDIR)\tls_m.obj" \
	"$(INTDIR)\turn.obj" \
	"$(INTDIR)\ppolicy.obj" \
	"$(INTDIR)\dds.obj" \
	"$(INTDIR)\txn.obj" \
	"$(INTDIR)\ldap_sync.obj" \
	"$(INTDIR)\stctrl.obj" \
	"$(INTDIR)\assertion.obj" \
	"$(INTDIR)\deref.obj" \
	"$(INTDIR)\ldif.obj" \
	"$(INTDIR)\fetch.obj" \
	"$(INTDIR)\threads.obj" \
	"$(INTDIR)\rdwr.obj" \
	"$(INTDIR)\rmutex.obj" \
	"$(INTDIR)\tpool.obj" \
	"$(INTDIR)\rq.obj" \
	"$(INTDIR)\thr_posix.obj" \
	"$(INTDIR)\thr_cthreads.obj" \
	"$(INTDIR)\thr_thr.obj" \
	"$(INTDIR)\thr_nt.obj" \
	"$(INTDIR)\thr_pth.obj" \
	"$(INTDIR)\thr_stub.obj" \
	"$(INTDIR)\thr_debug.obj"
DEF_FILE=.\ldap_r.def

"$(OUTDIR)\libldap_r.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\libldap_r.dll"
   if exist .\Debug\libldap_r.dll.manifest mt.exe -manifest .\Debug\libldap_r.dll.manifest -outputresource:.\Debug\libldap_r.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "libldap_r - x64 Release"

OUTDIR=.\x64\Release
INTDIR=.\x64\Release
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\libldap_r.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\bind.obj"
	-@erase "$(INTDIR)\open.obj"
	-@erase "$(INTDIR)\result.obj"
	-@erase "$(INTDIR)\error.obj"
	-@erase "$(INTDIR)\compare.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\controls.obj"
	-@erase "$(INTDIR)\messages.obj"
	-@erase "$(INTDIR)\references.obj"
	-@erase "$(INTDIR)\extended.obj"
	-@erase "$(INTDIR)\cyrus.obj"
	-@erase "$(INTDIR)\modify.obj"
	-@erase "$(INTDIR)\add.obj"
	-@erase "$(INTDIR)\modrdn.obj"
	-@erase "$(INTDIR)\delete.obj"
	-@erase "$(INTDIR)\abandon.obj"
	-@erase "$(INTDIR)\sasl.obj"
	-@erase "$(INTDIR)\gssapi.obj"
	-@erase "$(INTDIR)\sbind.obj"
	-@erase "$(INTDIR)\unbind.obj"
	-@erase "$(INTDIR)\cancel.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\free.obj"
	-@erase "$(INTDIR)\sort.obj"
	-@erase "$(INTDIR)\passwd.obj"
	-@erase "$(INTDIR)\whoami.obj"
	-@erase "$(INTDIR)\getdn.obj"
	-@erase "$(INTDIR)\getentry.obj"
	-@erase "$(INTDIR)\getattr.obj"
	-@erase "$(INTDIR)\getvalues.obj"
	-@erase "$(INTDIR)\addentry.obj"
	-@erase "$(INTDIR)\request.obj"
	-@erase "$(INTDIR)\os-ip.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\pagectrl.obj"
	-@erase "$(INTDIR)\sortctrl.obj"
	-@erase "$(INTDIR)\vlvctrl.obj"
	-@erase "$(INTDIR)\init.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\print.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\util-int.obj"
	-@erase "$(INTDIR)\schema.obj"
	-@erase "$(INTDIR)\charray.obj"
	-@erase "$(INTDIR)\os-local.obj"
	-@erase "$(INTDIR)\dnssrv.obj"
	-@erase "$(INTDIR)\utf-8.obj"
	-@erase "$(INTDIR)\utf-8-conv.obj"
	-@erase "$(INTDIR)\tls2.obj"
	-@erase "$(INTDIR)\tls_o.obj"
	-@erase "$(INTDIR)\tls_g.obj"
	-@erase "$(INTDIR)\tls_m.obj"
	-@erase "$(INTDIR)\turn.obj"
	-@erase "$(INTDIR)\ppolicy.obj"
	-@erase "$(INTDIR)\dds.obj"
	-@erase "$(INTDIR)\txn.obj"
	-@erase "$(INTDIR)\ldap_sync.obj"
	-@erase "$(INTDIR)\stctrl.obj"
	-@erase "$(INTDIR)\assertion.obj"
	-@erase "$(INTDIR)\deref.obj"
	-@erase "$(INTDIR)\ldif.obj"
	-@erase "$(INTDIR)\fetch.obj"
	-@erase "$(INTDIR)\threads.obj"
	-@erase "$(INTDIR)\rdwr.obj"
	-@erase "$(INTDIR)\rmutex.obj"
	-@erase "$(INTDIR)\tpool.obj"
	-@erase "$(INTDIR)\rq.obj"
	-@erase "$(INTDIR)\thr_posix.obj"
	-@erase "$(INTDIR)\thr_cthreads.obj"
	-@erase "$(INTDIR)\thr_thr.obj"
	-@erase "$(INTDIR)\thr_nt.obj"
	-@erase "$(INTDIR)\thr_pth.obj"
	-@erase "$(INTDIR)\thr_stub.obj"
	-@erase "$(INTDIR)\thr_debug.obj"
	-@erase "$(INTDIR)\libldap_r_src.idb"
	-@erase "$(INTDIR)\libldap_r_src.pdb"
	-@erase "$(OUTDIR)\libldap_r.dll"
	-@erase "$(OUTDIR)\libldap_r.exp"
	-@erase "$(OUTDIR)\libldap_r.lib"
	-@erase "$(OUTDIR)\libldap_r.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /I "./../libldap" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /D "LDAP_R_COMPILE" /D "LDAP_LIBS_DYNAMIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\libldap_r_src" /FD /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\libldap_r.res" /I "./../../include" /I "./../libldap" /d "NDEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib liblber.lib libeay32.lib ssleay32.lib /LIBPATH:"../liblber/$(OUTDIR)" /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\libldap_r.pdb" /debug /out:"$(OUTDIR)\libldap_r.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\libldap_r.lib" /MACHINE:X64 /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\bind.obj" \
	"$(INTDIR)\open.obj" \
	"$(INTDIR)\result.obj" \
	"$(INTDIR)\error.obj" \
	"$(INTDIR)\compare.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\controls.obj" \
	"$(INTDIR)\messages.obj" \
	"$(INTDIR)\references.obj" \
	"$(INTDIR)\extended.obj" \
	"$(INTDIR)\cyrus.obj" \
	"$(INTDIR)\modify.obj" \
	"$(INTDIR)\add.obj" \
	"$(INTDIR)\modrdn.obj" \
	"$(INTDIR)\delete.obj" \
	"$(INTDIR)\abandon.obj" \
	"$(INTDIR)\sasl.obj" \
	"$(INTDIR)\gssapi.obj" \
	"$(INTDIR)\sbind.obj" \
	"$(INTDIR)\unbind.obj" \
	"$(INTDIR)\cancel.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\free.obj" \
	"$(INTDIR)\sort.obj" \
	"$(INTDIR)\passwd.obj" \
	"$(INTDIR)\whoami.obj" \
	"$(INTDIR)\getdn.obj" \
	"$(INTDIR)\getentry.obj" \
	"$(INTDIR)\getattr.obj" \
	"$(INTDIR)\getvalues.obj" \
	"$(INTDIR)\addentry.obj" \
	"$(INTDIR)\request.obj" \
	"$(INTDIR)\os-ip.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\pagectrl.obj" \
	"$(INTDIR)\sortctrl.obj" \
	"$(INTDIR)\vlvctrl.obj" \
	"$(INTDIR)\init.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\print.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\util-int.obj" \
	"$(INTDIR)\schema.obj" \
	"$(INTDIR)\charray.obj" \
	"$(INTDIR)\os-local.obj" \
	"$(INTDIR)\dnssrv.obj" \
	"$(INTDIR)\utf-8.obj" \
	"$(INTDIR)\utf-8-conv.obj" \
	"$(INTDIR)\tls2.obj" \
	"$(INTDIR)\tls_o.obj" \
	"$(INTDIR)\tls_g.obj" \
	"$(INTDIR)\tls_m.obj" \
	"$(INTDIR)\turn.obj" \
	"$(INTDIR)\ppolicy.obj" \
	"$(INTDIR)\dds.obj" \
	"$(INTDIR)\txn.obj" \
	"$(INTDIR)\ldap_sync.obj" \
	"$(INTDIR)\stctrl.obj" \
	"$(INTDIR)\assertion.obj" \
	"$(INTDIR)\deref.obj" \
	"$(INTDIR)\ldif.obj" \
	"$(INTDIR)\fetch.obj" \
	"$(INTDIR)\threads.obj" \
	"$(INTDIR)\rdwr.obj" \
	"$(INTDIR)\rmutex.obj" \
	"$(INTDIR)\tpool.obj" \
	"$(INTDIR)\rq.obj" \
	"$(INTDIR)\thr_posix.obj" \
	"$(INTDIR)\thr_cthreads.obj" \
	"$(INTDIR)\thr_thr.obj" \
	"$(INTDIR)\thr_nt.obj" \
	"$(INTDIR)\thr_pth.obj" \
	"$(INTDIR)\thr_stub.obj" \
	"$(INTDIR)\thr_debug.obj"
DEF_FILE=.\ldap_r.def

"$(OUTDIR)\libldap_r.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\libldap_r.dll"
   if exist .\x64\Release\libldap_r.dll.manifest mt.exe -manifest .\x64\Release\libldap_r.dll.manifest -outputresource:.\x64\Release\libldap_r.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "libldap_r - x64 Debug"

OUTDIR=.\x64\Debug
INTDIR=.\x64\Debug
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : "$(OUTDIR)\libldap_r.dll" "$(DS_POSTBUILD_DEP)"


CLEAN :
	-@erase "$(INTDIR)\bind.obj"
	-@erase "$(INTDIR)\open.obj"
	-@erase "$(INTDIR)\result.obj"
	-@erase "$(INTDIR)\error.obj"
	-@erase "$(INTDIR)\compare.obj"
	-@erase "$(INTDIR)\search.obj"
	-@erase "$(INTDIR)\controls.obj"
	-@erase "$(INTDIR)\messages.obj"
	-@erase "$(INTDIR)\references.obj"
	-@erase "$(INTDIR)\extended.obj"
	-@erase "$(INTDIR)\cyrus.obj"
	-@erase "$(INTDIR)\modify.obj"
	-@erase "$(INTDIR)\add.obj"
	-@erase "$(INTDIR)\modrdn.obj"
	-@erase "$(INTDIR)\delete.obj"
	-@erase "$(INTDIR)\abandon.obj"
	-@erase "$(INTDIR)\sasl.obj"
	-@erase "$(INTDIR)\gssapi.obj"
	-@erase "$(INTDIR)\sbind.obj"
	-@erase "$(INTDIR)\unbind.obj"
	-@erase "$(INTDIR)\cancel.obj"
	-@erase "$(INTDIR)\filter.obj"
	-@erase "$(INTDIR)\free.obj"
	-@erase "$(INTDIR)\sort.obj"
	-@erase "$(INTDIR)\passwd.obj"
	-@erase "$(INTDIR)\whoami.obj"
	-@erase "$(INTDIR)\getdn.obj"
	-@erase "$(INTDIR)\getentry.obj"
	-@erase "$(INTDIR)\getattr.obj"
	-@erase "$(INTDIR)\getvalues.obj"
	-@erase "$(INTDIR)\addentry.obj"
	-@erase "$(INTDIR)\request.obj"
	-@erase "$(INTDIR)\os-ip.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\pagectrl.obj"
	-@erase "$(INTDIR)\sortctrl.obj"
	-@erase "$(INTDIR)\vlvctrl.obj"
	-@erase "$(INTDIR)\init.obj"
	-@erase "$(INTDIR)\options.obj"
	-@erase "$(INTDIR)\print.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\util-int.obj"
	-@erase "$(INTDIR)\schema.obj"
	-@erase "$(INTDIR)\charray.obj"
	-@erase "$(INTDIR)\os-local.obj"
	-@erase "$(INTDIR)\dnssrv.obj"
	-@erase "$(INTDIR)\utf-8.obj"
	-@erase "$(INTDIR)\utf-8-conv.obj"
	-@erase "$(INTDIR)\tls2.obj"
	-@erase "$(INTDIR)\tls_o.obj"
	-@erase "$(INTDIR)\tls_g.obj"
	-@erase "$(INTDIR)\tls_m.obj"
	-@erase "$(INTDIR)\turn.obj"
	-@erase "$(INTDIR)\ppolicy.obj"
	-@erase "$(INTDIR)\dds.obj"
	-@erase "$(INTDIR)\txn.obj"
	-@erase "$(INTDIR)\ldap_sync.obj"
	-@erase "$(INTDIR)\stctrl.obj"
	-@erase "$(INTDIR)\assertion.obj"
	-@erase "$(INTDIR)\deref.obj"
	-@erase "$(INTDIR)\ldif.obj"
	-@erase "$(INTDIR)\fetch.obj"
	-@erase "$(INTDIR)\threads.obj"
	-@erase "$(INTDIR)\rdwr.obj"
	-@erase "$(INTDIR)\rmutex.obj"
	-@erase "$(INTDIR)\tpool.obj"
	-@erase "$(INTDIR)\rq.obj"
	-@erase "$(INTDIR)\thr_posix.obj"
	-@erase "$(INTDIR)\thr_cthreads.obj"
	-@erase "$(INTDIR)\thr_thr.obj"
	-@erase "$(INTDIR)\thr_nt.obj"
	-@erase "$(INTDIR)\thr_pth.obj"
	-@erase "$(INTDIR)\thr_stub.obj"
	-@erase "$(INTDIR)\thr_debug.obj"
	-@erase "$(INTDIR)\libldap_r_src.idb"
	-@erase "$(INTDIR)\libldap_r_src.pdb"
	-@erase "$(OUTDIR)\libldap_r.dll"
	-@erase "$(OUTDIR)\libldap_r.exp"
	-@erase "$(OUTDIR)\libldap_r.lib"
	-@erase "$(OUTDIR)\libldap_r.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /I "./../libldap" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /D "LDAP_R_COMPILE" /D "LDAP_LIBS_DYNAMIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\libldap_r_src" /FD /EHsc /c 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\libldap_r.res" /I "./../../include" /I "./../libldap" /d "_DEBUG"
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib liblber.lib libeay32.lib ssleay32.lib /LIBPATH:"../liblber/$(OUTDIR)" /nologo /subsystem:console /dll /incremental:no /pdb:"$(OUTDIR)\libldap_r.pdb" /debug /out:"$(OUTDIR)\libldap_r.dll" /def:"$(DEF_FILE)" /implib:"$(OUTDIR)\libldap_r.lib" /MACHINE:X64 
LINK32_OBJS= \
	"$(INTDIR)\bind.obj" \
	"$(INTDIR)\open.obj" \
	"$(INTDIR)\result.obj" \
	"$(INTDIR)\error.obj" \
	"$(INTDIR)\compare.obj" \
	"$(INTDIR)\search.obj" \
	"$(INTDIR)\controls.obj" \
	"$(INTDIR)\messages.obj" \
	"$(INTDIR)\references.obj" \
	"$(INTDIR)\extended.obj" \
	"$(INTDIR)\cyrus.obj" \
	"$(INTDIR)\modify.obj" \
	"$(INTDIR)\add.obj" \
	"$(INTDIR)\modrdn.obj" \
	"$(INTDIR)\delete.obj" \
	"$(INTDIR)\abandon.obj" \
	"$(INTDIR)\sasl.obj" \
	"$(INTDIR)\gssapi.obj" \
	"$(INTDIR)\sbind.obj" \
	"$(INTDIR)\unbind.obj" \
	"$(INTDIR)\cancel.obj" \
	"$(INTDIR)\filter.obj" \
	"$(INTDIR)\free.obj" \
	"$(INTDIR)\sort.obj" \
	"$(INTDIR)\passwd.obj" \
	"$(INTDIR)\whoami.obj" \
	"$(INTDIR)\getdn.obj" \
	"$(INTDIR)\getentry.obj" \
	"$(INTDIR)\getattr.obj" \
	"$(INTDIR)\getvalues.obj" \
	"$(INTDIR)\addentry.obj" \
	"$(INTDIR)\request.obj" \
	"$(INTDIR)\os-ip.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\pagectrl.obj" \
	"$(INTDIR)\sortctrl.obj" \
	"$(INTDIR)\vlvctrl.obj" \
	"$(INTDIR)\init.obj" \
	"$(INTDIR)\options.obj" \
	"$(INTDIR)\print.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\util-int.obj" \
	"$(INTDIR)\schema.obj" \
	"$(INTDIR)\charray.obj" \
	"$(INTDIR)\os-local.obj" \
	"$(INTDIR)\dnssrv.obj" \
	"$(INTDIR)\utf-8.obj" \
	"$(INTDIR)\utf-8-conv.obj" \
	"$(INTDIR)\tls2.obj" \
	"$(INTDIR)\tls_o.obj" \
	"$(INTDIR)\tls_g.obj" \
	"$(INTDIR)\tls_m.obj" \
	"$(INTDIR)\turn.obj" \
	"$(INTDIR)\ppolicy.obj" \
	"$(INTDIR)\dds.obj" \
	"$(INTDIR)\txn.obj" \
	"$(INTDIR)\ldap_sync.obj" \
	"$(INTDIR)\stctrl.obj" \
	"$(INTDIR)\assertion.obj" \
	"$(INTDIR)\deref.obj" \
	"$(INTDIR)\ldif.obj" \
	"$(INTDIR)\fetch.obj" \
	"$(INTDIR)\threads.obj" \
	"$(INTDIR)\rdwr.obj" \
	"$(INTDIR)\rmutex.obj" \
	"$(INTDIR)\tpool.obj" \
	"$(INTDIR)\rq.obj" \
	"$(INTDIR)\thr_posix.obj" \
	"$(INTDIR)\thr_cthreads.obj" \
	"$(INTDIR)\thr_thr.obj" \
	"$(INTDIR)\thr_nt.obj" \
	"$(INTDIR)\thr_pth.obj" \
	"$(INTDIR)\thr_stub.obj" \
	"$(INTDIR)\thr_debug.obj"
DEF_FILE=.\ldap_r.def

"$(OUTDIR)\libldap_r.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

"$(DS_POSTBUILD_DEP)" : "$(OUTDIR)\libldap_r.dll"
   if exist .\x64\Debug\libldap_r.dll.manifest mt.exe -manifest .\x64\Debug\libldap_r.dll.manifest -outputresource:.\x64\Debug\libldap_r.dll;2
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

SOURCE=.\bind.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\bind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\open.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\open.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\result.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\result.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\error.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\error.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\compare.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\compare.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\search.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\search.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\controls.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\controls.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\messages.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\messages.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\references.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\references.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\extended.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\extended.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\cyrus.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\cyrus.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modify.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\modify.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\add.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\add.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modrdn.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\modrdn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\delete.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\delete.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\abandon.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\abandon.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sasl.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\sasl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gssapi.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\gssapi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sbind.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\sbind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\unbind.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\unbind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\cancel.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\cancel.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\filter.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\filter.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\free.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\free.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sort.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\sort.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\passwd.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\passwd.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\whoami.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\whoami.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getdn.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\getdn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getentry.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\getentry.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getattr.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\getattr.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getvalues.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\getvalues.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\addentry.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\addentry.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\request.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\request.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os-ip.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\os-ip.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\url.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\url.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\pagectrl.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\pagectrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sortctrl.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\sortctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\vlvctrl.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\vlvctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\init.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\init.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\options.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\options.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\print.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\print.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\string.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\string.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\util-int.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\util-int.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\schema.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\schema.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\charray.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\charray.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os-local.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\os-local.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\dnssrv.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\dnssrv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\utf-8.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\utf-8.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\utf-8-conv.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\utf-8-conv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls2.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\tls2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_o.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\tls_o.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_g.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\tls_g.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_m.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\tls_m.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\turn.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\turn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ppolicy.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\ppolicy.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\dds.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\dds.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\txn.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\txn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ldap_sync.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\ldap_sync.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\stctrl.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\stctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\assertion.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\assertion.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\deref.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\deref.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ldif.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\ldif.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\fetch.c

"$(SOURCE)" :
	copy "..\libldap\$(SOURCE)" "$(SOURCE)"

"$(INTDIR)\fetch.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\threads.c

"$(INTDIR)\threads.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\rdwr.c

"$(INTDIR)\rdwr.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\rmutex.c

"$(INTDIR)\rmutex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tpool.c

"$(INTDIR)\tpool.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\rq.c

"$(INTDIR)\rq.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_posix.c

"$(INTDIR)\thr_posix.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_cthreads.c

"$(INTDIR)\thr_cthreads.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_thr.c

"$(INTDIR)\thr_thr.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_nt.c

"$(INTDIR)\thr_nt.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_pth.c

"$(INTDIR)\thr_pth.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_stub.c

"$(INTDIR)\thr_stub.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\thr_debug.c

"$(INTDIR)\thr_debug.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)
