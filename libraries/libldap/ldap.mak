!IF "$(CFG)" == ""
CFG=ldap - Win32 Release
!MESSAGE No configuration specified. Defaulting to ldap - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "ldap - Win32 Release" && "$(CFG)" != "ldap - Win32 Debug" && "$(CFG)" != "ldap - x64 Release" && "$(CFG)" != "ldap - x64 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ldap.mak" CFG="ldap - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ldap - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ldap - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "ldap - x64 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ldap - x64 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ldap - Win32 Release"

OUTDIR=.\LibR
INTDIR=.\LibR

ALL : "$(OUTDIR)\ldap.lib"


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
	-@erase "$(INTDIR)\ldap.idb"
	-@erase "$(INTDIR)\ldap.pdb"
	-@erase "$(OUTDIR)\ldap.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\ldap" /FD /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ldap.lib" 
LIB32_OBJS= \
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
	"$(INTDIR)\fetch.obj"

"$(OUTDIR)\ldap.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ldap - Win32 Debug"

OUTDIR=.\LibD
INTDIR=.\LibD

ALL : "$(OUTDIR)\ldap.lib"


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
	-@erase "$(INTDIR)\ldap.idb"
	-@erase "$(INTDIR)\ldap.pdb"
	-@erase "$(OUTDIR)\ldap.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\ldap" /FD /EHsc /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ldap.lib" 
LIB32_OBJS= \
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
	"$(INTDIR)\fetch.obj"

"$(OUTDIR)\ldap.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ldap - x64 Release"

OUTDIR=.\x64\LibR
INTDIR=.\x64\LibR

ALL : "$(OUTDIR)\ldap.lib"


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
	-@erase "$(INTDIR)\ldap.idb"
	-@erase "$(INTDIR)\ldap.pdb"
	-@erase "$(OUTDIR)\ldap.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "NDEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\ldap" /FD /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ldap.lib" 
LIB32_OBJS= \
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
	"$(INTDIR)\fetch.obj"

"$(OUTDIR)\ldap.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ldap - x64 Debug"

OUTDIR=.\x64\LibD
INTDIR=.\x64\LibD

ALL : "$(OUTDIR)\ldap.lib"


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
	-@erase "$(INTDIR)\ldap.idb"
	-@erase "$(INTDIR)\ldap.pdb"
	-@erase "$(OUTDIR)\ldap.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./../../include" /D "_CRT_SECURE_NO_WARNINGS" /D "_DEBUG" /D "LDAP_DEBUG" /D "_WIN32" /D "WIN32" /D "WINNT" /D "_WINNT" /D "LDAP_LIBRARY" /Fo"$(INTDIR)\\" /Fd"$(OUTDIR)\ldap" /FD /EHsc /c 
RSC=rc.exe
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\ldap.lib" 
LIB32_OBJS= \
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
	"$(INTDIR)\fetch.obj"

"$(OUTDIR)\ldap.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
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

SOURCE=.\bind.c

"$(INTDIR)\bind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\open.c

"$(INTDIR)\open.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\result.c

"$(INTDIR)\result.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\error.c

"$(INTDIR)\error.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\compare.c

"$(INTDIR)\compare.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\search.c

"$(INTDIR)\search.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\controls.c

"$(INTDIR)\controls.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\messages.c

"$(INTDIR)\messages.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\references.c

"$(INTDIR)\references.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\extended.c

"$(INTDIR)\extended.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\cyrus.c

"$(INTDIR)\cyrus.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modify.c

"$(INTDIR)\modify.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\add.c

"$(INTDIR)\add.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modrdn.c

"$(INTDIR)\modrdn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\delete.c

"$(INTDIR)\delete.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\abandon.c

"$(INTDIR)\abandon.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sasl.c

"$(INTDIR)\sasl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gssapi.c

"$(INTDIR)\gssapi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sbind.c

"$(INTDIR)\sbind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\unbind.c

"$(INTDIR)\unbind.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\cancel.c

"$(INTDIR)\cancel.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\filter.c

"$(INTDIR)\filter.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\free.c

"$(INTDIR)\free.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sort.c

"$(INTDIR)\sort.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\passwd.c

"$(INTDIR)\passwd.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\whoami.c

"$(INTDIR)\whoami.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getdn.c

"$(INTDIR)\getdn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getentry.c

"$(INTDIR)\getentry.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getattr.c

"$(INTDIR)\getattr.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\getvalues.c

"$(INTDIR)\getvalues.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\addentry.c

"$(INTDIR)\addentry.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\request.c

"$(INTDIR)\request.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os-ip.c

"$(INTDIR)\os-ip.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\url.c

"$(INTDIR)\url.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\pagectrl.c

"$(INTDIR)\pagectrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sortctrl.c

"$(INTDIR)\sortctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\vlvctrl.c

"$(INTDIR)\vlvctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\init.c

"$(INTDIR)\init.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\options.c

"$(INTDIR)\options.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\print.c

"$(INTDIR)\print.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\string.c

"$(INTDIR)\string.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\util-int.c

"$(INTDIR)\util-int.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\schema.c

"$(INTDIR)\schema.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\charray.c

"$(INTDIR)\charray.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os-local.c

"$(INTDIR)\os-local.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\dnssrv.c

"$(INTDIR)\dnssrv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\utf-8.c

"$(INTDIR)\utf-8.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\utf-8-conv.c

"$(INTDIR)\utf-8-conv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls2.c

"$(INTDIR)\tls2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_o.c

"$(INTDIR)\tls_o.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_g.c

"$(INTDIR)\tls_g.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tls_m.c

"$(INTDIR)\tls_m.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\turn.c

"$(INTDIR)\turn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ppolicy.c

"$(INTDIR)\ppolicy.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\dds.c

"$(INTDIR)\dds.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\txn.c

"$(INTDIR)\txn.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ldap_sync.c

"$(INTDIR)\ldap_sync.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\stctrl.c

"$(INTDIR)\stctrl.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\assertion.c

"$(INTDIR)\assertion.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\deref.c

"$(INTDIR)\deref.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\ldif.c

"$(INTDIR)\ldif.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\fetch.c

"$(INTDIR)\fetch.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

