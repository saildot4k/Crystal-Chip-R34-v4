# For use only with Crystal Chips hardware and software by R3Z3N
#
# Modification Info:
# If you add support, please infom info@ps2modchiptutorials.com and attach the modified file with a synopsis of changes
#
# Description:
#
# This script is used by BootManager(BM) to load and execute Homebrew from root folders.
# SAS, Save Application Support is meant to make apps easily installable by extracting a APPFOLDER.PSU
# packed file to anywhere on memory card as multi level directories is unwise for memory card drivers.
# This also allows users to easily update apps without messing anything up. Due to a bug in PS2DEV drivers,
# Not every device supports scanning for all rootcard folders with * for example
# "$ARG5$:/*/APPINFO.PBT
# So this was added in the same idea that FMCB/OSDMenu uses where everthing is defined,
# in this case only root folder needs to be defined. Please modify as needed, but please only add folders
# that exist from https://ps2wiki.github.io


# Keep this script resident in memory to speed up calls to it.
KEEP


:MENU_CHOOSE_COMP
###################################################################################################

    # IF needed add additional LOADEXEC... for more folders. Be sure to fix the root folder name!
    # Example: LOADEXEC "PBAT" "$ARG5$:/MY_FOLDER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^""
    #
    # Hint: The last ARG2 ends up being ARG3 in APPINFO.PBT. This can be used in the QUERY section to hide an app
    # For RUN, INSTALL or REMOVE. Reference BM/APPS/BM/APPINFO.PBT to see how it is used.

    # APP_ (APPLICATION)
    LOADEXEC "PBAT" "$ARG5$:/APP_APOLLO/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_ARGON/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/BOOT/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_CHEATDEVICE-MMCE/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_GSM/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_HDLOADER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_NHDDL/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OSDMENU/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-120B2207/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-120B2049/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-120B2049GID/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-120B2201/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-MMCE-BETA3/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-MMCE-BETA2/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_OPL-MMCE-HDD/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_PSBBN-LAUNCHER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_SMS/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_UOPL/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_UOPL-BETRAYAL/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_WLE-ISR-HDD/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_WLE-ISR-XF-MM/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_WLE-ISR-XF-MX/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_WLE-KHN/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/APP_WLE-XFW/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # DBG_ (DEBUG)
    LOADEXEC "PBAT" "$ARG5$:/DBG_PS2LINK/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DBG_PS2LINK-EXTIRX/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DBG_PS2LINK-HILDING/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DBG_PS2LINK-HILDINGEXTIRX/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # DST_ (Diagnostic Service Tool)
    LOADEXEC "PBAT" "$ARG5$:/DST_BIOS-DRAIN/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_HDDCHECKER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_MCA/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_MX4SIO-TESTER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_OGMC/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_PADTEST/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_PS2-HDD-TESTER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST-PS2-RDRAM-TEST/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_PS2TEMPS/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/DST_PS2-ID-TOOL/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # EMU_ (Emulation)
    LOADEXEC "PBAT" "$ARG5$:/EMU_PICODRIVE/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/RETROLAUNCHER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/EMU_X2P/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/EMU_X2PMC/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # GME_ (Games)
    LOADEXEC "PBAT" "$ARG5$:/GME_3DPINBALL-PLAYER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/GME_HERMES/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/GME_SM64/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/GME_SMWAR-20060223/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # RTE_ (Run Time Environments)
    LOADEXEC "PBAT" "$ARG5$:/NEUTRINO/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/OSDXMB/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/XEBPLUS/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # PS1_ (Playstation 1)
    LOADEXEC "PBAT" "$ARG5$:/PS1_DKWDRV/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/PS1_POPSLOADER/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

    # SYS_ (System)
    LOADEXEC "PBAT" "$ARG5$:/SYS_IGR/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"
    LOADEXEC "PBAT" "$ARG5$:/SYS-CONF/APPINFO.PBT" "QUERY" "^"$ARG0$^" ^"$ARG4$^" ^"$ARG2$^" ^"$ARG3$^"" "$ARG2$"

###################################################################
    # DO NOT EDIT!
    IF MATCHES "ACTION RUN APP" "$ARG1$ $ARG2$ $ARG3$"
        LOADEXEC "PBAT" "$BM.SCRIPTS$/BMMENUS.PBT" "$ARG1$" "$ARG2$" "$ARG3$" "$ARG4$" "$ARG5$" "$ARG6$"
        RETURN 0
    ELSEIF MATCHES "ACTION REMOVE APP" "$ARG1$ $ARG2$ $ARG3$"
        LOADEXEC "PBAT" "$BM.SCRIPTS$/BMMENUS.PBT" "$ARG1$" "$ARG2$" "$ARG3$" "$ARG4$" "$ARG5$" "$ARG6$"
        RETURN 0
    ELSEIF MATCHES "MENU_CONFIRM_YESNO REMOVE APP" "$ARG1$ $ARG2$ $ARG3$"
        LOADEXEC "PBAT" "$BM.SCRIPTS$/BMMENUS.PBT" "$ARG1$" "$ARG2$" "$ARG3$" "$ARG4$" "$ARG5$" "$ARG6$" "$ARG7$" "$ARG8$" "$ARG9$" "$ARG10$" "$ARG11$"
        RETURN 0
    ELSEIF MATCHES "MENU_CHOOSE_INST_DEV INSTALL APP" "$ARG1$ $ARG2$ $ARG3$"
        LOADEXEC "PBAT" "$BM.SCRIPTS$/BMMENUS.PBT" "$ARG1$" "$ARG2$" "$ARG3$" "$ARG4$" "$ARG5$" "$ARG6$" "$ARG7$" "$ARG8$" "$ARG9$" "$ARG10$" "$ARG11$"
        RETURN 0
    ELSEIF MATCHES "SET_LOAD_APP" "$ARG1$"
        LOADEXEC "PBAT" "$BM.SCRIPTS$/CONFMENU.PBT" "$ARG1$" "$ARG2$" "$ARG3$" "$ARG4$" "$ARG5$" "$ARG6$"
        RETURN 0
    ENDIF
    RETURN 0
    