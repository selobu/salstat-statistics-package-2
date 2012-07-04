# Auto-generated by EclipseNSIS Script Wizard
# 06/05/2012 16:43:35

Name Salstat2

SetCompressor /SOLID LZMA

# General Symbol Definitions
!define CURRPATH "f:\SalStatdist"
!define REGKEY "SOFTWARE\$(^Name)"
!define VERSION 2.1
!define COMPANY "Sebasti�n L�pez Buritic�"
!define URL http://selobu.blogspot.com

# MultiUser Symbol Definitions
!define MULTIUSER_EXECUTIONLEVEL Standard
!define MULTIUSER_INSTALLMODE_COMMANDLINE
!define MULTIUSER_INSTALLMODE_INSTDIR Salstat2
!define MULTIUSER_INSTALLMODE_INSTDIR_REGISTRY_KEY "${REGKEY}"
!define MULTIUSER_INSTALLMODE_INSTDIR_REGISTRY_VALUE "Path"

# MUI Symbol Definitions
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install-colorful.ico"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT HKLM
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_REGISTRY_KEY ${REGKEY}
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME StartMenuGroup
!define MUI_STARTMENUPAGE_DEFAULTFOLDER Salstat2
!define MUI_FINISHPAGE_RUN $INSTDIR\salstat.exe
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall-colorful.ico"

# Included files
!include MultiUser.nsh
!include Sections.nsh
!include MUI2.nsh

# Variables
Var StartMenuGroup
Var vcredist2008set

# Installer pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "src\gnu license.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_STARTMENU Application $StartMenuGroup
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

# Installer languages
!insertmacro MUI_LANGUAGE English
!insertmacro MUI_LANGUAGE SpanishInternational

# Installer attributes
OutFile "Salstat 2 setup.exe"
InstallDir Salstat2
CRCCheck on
XPStyle on
ShowInstDetails nevershow
VIProductVersion 2.0.0.0
VIAddVersionKey /LANG=${LANG_ENGLISH} ProductName Salstat2
VIAddVersionKey /LANG=${LANG_ENGLISH} ProductVersion "${VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} CompanyName "${COMPANY}"
VIAddVersionKey /LANG=${LANG_ENGLISH} CompanyWebsite "${URL}"
VIAddVersionKey /LANG=${LANG_ENGLISH} FileVersion "${VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} FileDescription ""
VIAddVersionKey /LANG=${LANG_ENGLISH} LegalCopyright ""
InstallDirRegKey HKLM "${REGKEY}" Path
ShowUninstDetails show

Section -Main Section2
    call vcredist2008installer
    SetOutPath $INSTDIR
    SetOverwrite on
    File /r ${CURRPATH}\*
    #File ${CURRPATH}\salstat.exe
    SetOutPath $SMPROGRAMS\$StartMenuGroup
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Salstat2.lnk" "$INSTDIR\salstat.exe" \
        "" "$INSTDIR\Salstat2.ico" 0 SW_SHOWNORMAL # "" "Paquete de e2stadistica"
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\Ayuda.lnk" "$INSTDIR\help\index.html"
    SetOutPath $DESKTOP
    CreateShortcut "$DESKTOP\Salstat2.lnk" "$INSTDIR\salstat.exe" "" \
                "$INSTDIR\Salstat2.ico" 0
    WriteRegStr HKLM "${REGKEY}\Components" Main 1
SectionEnd

Section "src" Section3
     SetOutPath $INSTDIR\src
     SetOverwrite on
     File /r src\*
     SetOutPath $SMPROGRAMS\$StartMenuGroup
     CreateShortcut "$SMPROGRAMS\$StartMenuGroup\src.lnk" "$INSTDIR\src\"
SectionEnd

Section "script examples" Section4
     SetOutPath $INSTDIR\scripts
     SetOverwrite on
     File /r "script examples\*"
     SetOutPath $SMPROGRAMS\$StartMenuGroup
     CreateShortcut "$SMPROGRAMS\$StartMenuGroup\scripts.lnk" "$INSTDIR\scripts\"
SectionEnd

Section -post SEC0001
    WriteRegStr HKLM "${REGKEY}" Path $INSTDIR
    SetOutPath $INSTDIR
    WriteUninstaller $INSTDIR\uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
    SetOutPath $SMPROGRAMS\$StartMenuGroup
    CreateShortcut "$SMPROGRAMS\$StartMenuGroup\$(^UninstallLink).lnk" $INSTDIR\uninstall.exe
    !insertmacro MUI_STARTMENU_WRITE_END
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayName "$(^Name)"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayVersion "${VERSION}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" Publisher "${COMPANY}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" URLInfoAbout "${URL}"
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" DisplayIcon $INSTDIR\uninstall.exe
    WriteRegStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" UninstallString $INSTDIR\uninstall.exe
    WriteRegDWORD HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoModify 1
    WriteRegDWORD HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)" NoRepair 1
SectionEnd

# Macro for selecting uninstaller sections
!macro SELECT_UNSECTION SECTION_NAME UNSECTION_ID
    Push $R0
    ReadRegStr $R0 HKLM "${REGKEY}\Components" "${SECTION_NAME}"
    StrCmp $R0 1 0 next${UNSECTION_ID}
    !insertmacro SelectSection "${UNSECTION_ID}"
    GoTo done${UNSECTION_ID}
next${UNSECTION_ID}:
    !insertmacro UnselectSection "${UNSECTION_ID}"
done${UNSECTION_ID}:
    Pop $R0
!macroend

# Uninstaller sections
Section /o -un.Main UNSEC0000
    SetOverwrite on
    Delete $DESKTOP\Salstat2.lnk ;/REBOOTOK
    RmDir /r $SMPROGRAMS\$StartMenuGroup
    ;Delete $SMPROGRAMS\$StartMenuGroup\Salstat2.lnk
    ;Delete $SMPROGRAMS\$StartMenuGroup\*.*
    ;Delete $INSTDIR\salstat.exe
    ;Delete $INSTDIR\help\*.*
    RmDir /r  $INSTDIR\help
    ;Delete  $INSTDIR\src\*.*
    RmDir /r  $INSTDIR\src
    RmDir /r  $INSTDIR
    ;RmDir /r  $INSTDIR
    DeleteRegValue HKLM "${REGKEY}\Components" Main
SectionEnd

Section -un.post UNSEC0001
    DeleteRegKey HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$(^Name)"
    ;Delete /REBOOTOK "$SMPROGRAMS\$StartMenuGroup\$(^UninstallLink).lnk"
    ;Delete /REBOOTOK $INSTDIR\uninstall.exe
    DeleteRegValue HKLM "${REGKEY}" StartMenuGroup
    DeleteRegValue HKLM "${REGKEY}" Path
    DeleteRegKey /IfEmpty HKLM "${REGKEY}\Components"
    DeleteRegKey /IfEmpty HKLM "${REGKEY}"
    RmDir /r $SMPROGRAMS\$StartMenuGroup
    ;RmDir /REBOOTOK $INSTDIR\src
    RmDir /r $INSTDIR
    ;RmDir /r SMPROGRAMS\$StartMenuGroup
    ;RmDir /REBOOTOK SMPROGRAMS\$StartMenuGroup   
SectionEnd

Function vcredist2008installer
  SetOutPath "$INSTDIR\Prerequisites"
  SetOverwrite on
  File /r ${CURRPATH}\Prerequisites\*
  StrCmp $vcredist2008set "" 0 vcredist2008_done
  StrCpy $vcredist2008set "true"
  ;Check if VC++ 2008 runtimes are already installed.
  ;NOTE Both the UID in the registry key and the DisplayName string must be updated here (and below)
  ;whenever the Redistributable package is upgraded:
  ReadRegStr $0 HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9BE518E6-ECC6-35A9-88E4-87755C07200F}" "DisplayName"
  StrCmp $0 "Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161" vcredist2008_done vcredist2008_silent_install
  ;If VC++ 2008 runtimes are not installed...
  vcredist2008_silent_install:
    DetailPrint "Installing Microsoft Visual C++ 2008 Redistributable"
    #File ..\vcredist2008_x86.exe
    ExecWait '"$INSTDIR\Prerequisites\vcredist_x86.exe" /q' $0
    ;Check for successful installation of our 2008 version of vcredist_x86.exe...
    ReadRegStr $0 HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{9BE518E6-ECC6-35A9-88E4-87755C07200F}" "DisplayName"
    StrCmp $0 "Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161" vcredist2008_success vcredist2008_not_present
    vcredist2008_not_present:
      DetailPrint "Microsoft Visual C++ 2008 Redistributable failed to install"
      IfSilent vcredist2008_done vcredist2008_messagebox
      vcredist2008_messagebox:
        MessageBox MB_OK "Microsoft Visual C++ 2008 Redistributable Package (x86) failed to install ($INSTDIR\Prerequisites\vcredist_x86.exe). Please ensure your system meets the minimum requirements before running the installer again."
        Goto vcredist2008_done
    vcredist2008_success:
      Delete "$INSTDIR\Prerequisites\vcredist_x86.exe"
      DetailPrint "Microsoft Visual C++ 2008 Redistributable was successfully installed"
  vcredist2008_done:
FunctionEnd

# Installer functions
Function .onInit
    InitPluginsDir
    !insertmacro MULTIUSER_INIT
FunctionEnd

# Uninstaller functions
Function un.onInit
    ;SetAutoClose true
    !insertmacro MUI_STARTMENU_GETFOLDER Application $StartMenuGroup
    !insertmacro MULTIUSER_UNINIT
    !insertmacro SELECT_UNSECTION Main ${UNSEC0000}
FunctionEnd

# Installer Language Strings
# TODO Update the Language Strings with the appropriate translations.

LangString ^UninstallLink ${LANG_ENGLISH} "Uninstall $(^Name)"
LangString ^UninstallLink ${LANG_SPANISHINTERNATIONAL} "Uninstall $(^Name)"
