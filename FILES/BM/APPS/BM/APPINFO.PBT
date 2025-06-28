# BootManager 2 Application Manager Script for PS2 Browser

# Change this information to describe the application.
SET "TITLE" "BootManager"
SET "VERSION" "2.1.6"
SET "AUTHOR" "CrystalChips"
SET "DESC" "BootManager allows you to boot PS1, PS2 and DVD discs as well as homebrew applications and more!"
SET "MEDIAS" ""
#
GOTO "$ARG1$"

:LABEL_NAME
    ADDWIDGET "LABEL" "$ARG2$$TITLE$ v$VERSION$"
    EXIT 0

:QUERY
    PARSEPATH "$PWD$" "SRC_DEV" "SRC_PATH" "SRC_FILE"
    IF MATCHES "INSTALL" "$ARG3$"
        ADDWIDGET "CALL" "$TITLE$" "$BM.TXT_VERSION$: $VERSION$ $BM.TXT_AUTHOR$: $AUTHOR$ $BM.TXT_DESC$: $DESC$" $ARG2$ "$ARG0$" "$ARG3$" "$ARG4$" "$ARG5$" "$TITLE$" "$SRC_DEV$:/BM" "BM" "BM"
    ENDIF
    EXIT 0

:INSTALL
    SKIPBACK
    KEEP
    CLEARWIDGETS
    SETTITLE "BootManager Installer Device Choices:"
    PARSEPATH "$PWD$" "SRC_DEV" "SRC_PATH" "SRC_FILE"
    SET "BMINST_LOADED" "1"
    ADDWIDGET "LABEL" "Memory Card and CDVD included!"
    # All drivers should be on CDVD...
    IF MATCHES "cdrom0" "$ARG2$"
        ADDWIDGET "CHOICE" "USB        (78KB)" "Install USB (MBR/Fat32) drivers?" "USB_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        # No need to install HDD drivers for BOOTROM 2.20 or later
        IF GTE "$BM.BIOS_MAJOR_VER$$BM.BIOS_MINOR_VER$" "220"
            ADDWIDGET "LABEL" "HDD is not supported on $BM.CONSOLE_MODEL$"
        ELSE
            ADDWIDGET "CHOICE" "HDD        (97KB)" "Install PS2 HDD drivers?" "HDD_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ENDIF
        ADDWIDGET "CHOICE" "MMCE      (41KB)" "Install MMCE (Multipurpose Memory Card Emulator) drivers?" "MMCE_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ADDWIDGET "CHOICE" "Network  (90KB)" "Install Network drivers?" "NET_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        # IF Network is not going to be installed, FTP and PC Host will also be disabled
        IF NEQ "1" "$NET_INST_CHOICE$"
            ADDWIDGET "CHOICE" "FTP         (32KB)" "Install FTP drivers?" "FTP_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
            ADDWIDGET "CHOICE" "PC Host   (23KB)" "Install PC Host drivers for use with PS2 Client?" "HOST_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ELSE
            SET "FTP_INST_CHOICE" "1"
            SET "HOST_INST_CHOICE" "1"
        ENDIF

    # And all other devices check if driver exists on source device...
    ELSE

        IF EXISTS "$SRC_DEV$:/BM/DEVS/USB"
            ADDWIDGET "CHOICE" "USB        (78KB)" "Install USB (MBR/Fat32) drivers?" "USB_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ELSE
            ADDWIDGET "LABEL" "USB drivers not avaliable on source!"
        ENDIF
        # No need to install drivers for BOOTROM 2.20 or later
        IF EXISTS "$SRC_DEV$:/BM/DEVS/PS2HDD"
            IF GTE "$BM.BIOS_MAJOR_VER$$BM.BIOS_MINOR_VER$" "220"
                ADDWIDGET "LABEL" "HDD is not supported on $BM.CONSOLE_MODEL$"
            ELSE
                ADDWIDGET "CHOICE" "HDD        (97KB)" "Install PS2 HDD drivers?" "HDD_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
            ENDIF
        ELSE
            ADDWIDGET "LABEL" "HDD drivers not avaliable on source!"
        ENDIF
  
        IF EXISTS "$SRC_DEV$:/BM/DEVS/MMCE"
            ADDWIDGET "CHOICE" "MMCE      (41KB)" "Install MMCE (Multipurpose Memory Card Emulator) drivers?" "MMCE_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ELSE
            ADDWIDGET "LABEL" "MMCE drivers not avaliable on source!"
        ENDIF

        IF EXISTS "$SRC_DEV$:/BM/DEVS/NET"
            ADDWIDGET "CHOICE" "Network  (90KB)" "Install Network drivers?" "NET_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
        ELSE
            ADDWIDGET "LABEL" "NETWORK drivers not avaliable on source!"
        ENDIF
        
        # IF Network is not going to be installed, FTP and PC Host will also be disabled
        IF NEQ "1" "$NET_INST_CHOICE$"
            IF EXISTS "$SRC_DEV$:/BM/DEVS/FTP"    
                ADDWIDGET "CHOICE" "FTP         (32KB)" "Install FTP drivers?" "FTP_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
            ELSE
                ADDWIDGET "LABEL" "FTP drivers not avaliable on source!"
            ENDIF

            IF EXISTS "$SRC_DEV$:/BM/DEVS/HOST"
                ADDWIDGET "CHOICE" "PC Host   (23KB)" "Install PC Host drivers for use with PS2 Client?" "HOST_INST_CHOICE" "$BM.TXT_YES$" "$BM.TXT_NO$"
            ELSE
                ADDWIDGET "LABEL" "PC HOST drivers not avaliable on source!"
            ENDIF
        ELSE
            SET "FTP_INST_CHOICE" "1"
            SET "HOST_INST_CHOICE" "1"
        ENDIF
    ENDIF
    ADDWIDGET "LABEL" ""
# See if I can calculate install....
    ADDWIDGET "LABEL" "Note: Min Install = 490KB"
    ADDWIDGET "LABEL" "Note: Full Install = 854KB"
    IF EQU "1" "$CRITICAL_FAIL$"
        ADDWIDGET "LABEL" "$BM.TXT_INST_FAIL$ BootManager!"
    ENDIF
    ADDWIDGET "CALL" "Install to $ARG2$:/BM ?" "Proceed installing..." "$ARG0$" "INSTALL_BM" "$ARG2$"
    RETURN -1

:INSTALL_BM
    SKIPBACK
    RM "$ARG2$:/BM"

    IF FAIL MKDIR "$ARG2$:/BM"
        MESSAGE "Failed to create $ARG2$:/BM!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/BM2.ELF" "$ARG2$:/BM/BM2.ELF"
        MESSAGE "Failed to copy BM2.ELF!"
        GOTO "FAILED_INST"
    ELSEIF MATCHES "$SRC_DEV$" "cdrom0"
        GOTO "ICNS_FROM_CDROM0"
    ELSEIF NOT MATCHES "$SRC_DEV$" "cdrom0"
        GOTO "ICNS_FROM_NON_CDROM0"
    ENDIF

#Source Files on cdrom0 have to be uppercase
:ICNS_FROM_CDROM0
    SKIPBACK
    IF FAIL COPY "$SRC_DEV$:/BM/BMAN.ICN" "$ARG2$:/BM/bman.icn"
        MESSAGE "Failed to copy bman.icn! ...continuing install..."
        SET "ERROR" "1"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/ICON.SYS" "$ARG2$:/BM/icon.sys"
        MESSAGE "Failed to copy icon.sys! ...continuing install..."
        SET "ERROR" "1"
    ENDIF
    GOTO "CONTINUE"

#But may not be uppercase for other devices
:ICNS_FROM_NON_CDROM0
    SKIPBACK
    IF FAIL COPY "$SRC_DEV$:/BM/bman.icn" "$ARG2$:/BM/bman.icn"
        MESSAGE "Failed to copy bman.icn! ...continuing install..."
        SET "ERROR" "1"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/icon.sys" "$ARG2$:/BM/icon.sys"
        MESSAGE "Failed to copy icon.sys! ...continuing install..."
        SET "ERROR" "1"
    ENDIF
    GOTO "CONTINUE"

:CONTINUE
    SKIPBACK
    IF FAIL COPY "$SRC_DEV$:/BM/SCRIPTS" "$ARG2$:/BM/SCRIPTS"
        MESSAGE "Failed to copy SCRIPTS!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/GFX" "$ARG2$:/BM/GFX"
        MESSAGE "Failed to copy GFX!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/THMS"
        MESSAGE "Failed to create $ARG2$:/BM/THMS"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/THMS/DEFAULT" "$ARG2$:/BM/THMS/DEFAULT"
        MESSAGE "Failed to copy default theme!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/LANG"
        MESSAGE "Failed to create LANG!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/LANG/BMENGL.PBT" "$ARG2$:/BM/LANG/BMENGL.PBT"
        MESSAGE "Failed to copy BMENGL.PBT!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/SHARED"
        MESSAGE "Failed to create SHARED!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/SHARED/PS2DEV9.IRX" "$ARG2$:/BM/SHARED/PS2DEV9.IRX"
        MESSAGE "Failed to copy PS2DEV9.IRX!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/SHARED/IOMANX.IRX" "$ARG2$:/BM/SHARED/IOMANX.IRX"
        MESSAGE "Failed to copy IOMANX.IRX!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/SHARED/POWEROFF.IRX" "$ARG2$:/BM/SHARED/POWEROFF.IRX"
        MESSAGE "Failed to copy POWEROFF.IRX!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/SHARED/POWEROFF.ELF" "$ARG2$:/BM/SHARED/POWEROFF.ELF"
        MESSAGE "Failed to copy POWEROFF.ELF!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/STARTUP" "$ARG2$:/BM/STARTUP"
        MESSAGE "Failed to copy STARTUP!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/APPS"
        MESSAGE "Failed to create APPS!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/CONFIG"
        MESSAGE "Failed to create CONFIG!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/APPS/OSDSYS" "$ARG2$:/BM/APPS/OSDSYS"
        MESSAGE "Failed to copy OSDSYS!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/APPS/SCEDVD" "$ARG2$:/BM/APPS/SCEDVD"
        MESSAGE "Failed to copy SCEDVD!"
        GOTO "FAILED_INST"
    ELSEIF FAIL MKDIR "$ARG2$:/BM/DEVS"
        MESSAGE "Failed to create DEVS!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/DEVS/MEMCARD" "$ARG2$:/BM/DEVS/MEMCARD"
        MESSAGE "Failed to copy MEMCARD!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/DEVS/DFFS" "$ARG2$:/BM/DEVS/DFFS"
        MESSAGE "Failed to copy DFFS!"
        GOTO "FAILED_INST"
    ELSEIF FAIL COPY "$SRC_DEV$:/BM/DEVS/CDVD" "$ARG2$:/BM/DEVS/CDVD"
        MESSAGE "Failed to copy CDVD!"
        GOTO "FAILED_INST"
    ENDIF

    # 0=Included 1=Excluded
    IF EQU "0" "$USB_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/USB/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF
    IF EQU "0" "$HDD_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/PS2HDD/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF
    IF EQU "0" "$MMCE_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/MMCE/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF
    IF EQU "0" "$NET_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/NET/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF
    IF EQU "0" "$FTP_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/FTP/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF
    IF EQU "0" "$HOST_INST_CHOICE$"
        LOADEXEC "PBAT" "$SRC_DEV$:/BM/DEVS/HOST/DEVINFO.PBT" "INSTALL" "$ARG2$"
    ENDIF

    # Only install CC2.0 FW on DFFS
    IF MATCHES "$ARG2$" "dffs"
        IF FAIL MKDIR "$ARG2$:/BM/FWS"
            MESSAGE "Failed to create FWS!"
            GOTO "FAILED_INST"
        ELSEIF FAIL COPY "$SRC_DEV$:/BM/FWS/PS1LOGO.BIN" "$ARG2$:/BM/FWS/PS1LOGO.BIN"
            MESSAGE "Failed to copy PS1LOGO.BIN"
            GOTO "FAILED_INST"
        ELSEIF FAIL COPY "$SRC_DEV$:/BM/FWS/PS1LOGO2.BIN" "$ARG2$:/BM/FWS/PS1LOGO2.BIN"
            MESSAGE "Failed to copy PS1LOGO2.BIN"
            GOTO "FAILED_INST"
        ELSEIF FAIL MKDIR "$ARG2$:/BM/FWS/LATEST"
            MESSAGE "Failed to create $ARG2$:/BM/FWS/LATEST   ...continuing install..."
            SET "ERROR" "1"
        ELSEIF FAIL COPY "$SRC_DEV$:/BM/FWS/LATEST/FWARE20.CCI" "$ARG2$:/BM/FWS/LATEST/FWARE20.CCI"
            MESSAGE "Failed to copy FWARE20.CCI ...continuing install...!"
            SET "ERROR" "1"
        ENDIF
    ELSEIF NOT MATCHES "$ARG2$" "dffs"
        IF FAIL COPY "$SRC_DEV$:/BM/FWS" "$ARG2$:/BM/FWS"
            MESSAGE "Failed to copy FWS ...continuing install...!"
            SET "ERROR" "1"
        ENDIF
    ENDIF

    IF NEQ "1" "$ERROR$"
        MESSAGE "BM successfully installed!"
    ENDIF
    IF EQU "1" "$ERROR$"
        MESSAGE "BM installed with non-critical files."
    ENDIF
    LOADEXEC "PBAT" "$SRC_DEV$:/BM/SCRIPTS/BMMENUS.PBT" "MENU_MAIN"
    EXIT 0

:FAILED_INST
    SKIPBACK
    SET "CRITICAL_FAIL" "1"
    GOTO "INSTALL"

:REMOVE
    EXIT 0

:RUN
    EXIT 0
    