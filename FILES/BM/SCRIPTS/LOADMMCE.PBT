# Crystal Chips BootManager MMCE PBAT Script v1.0
# R3Z3N aka ps2modchiptutorials added this so that MMCE can be enabled/disabled without removing drivers.
#
# Modification Info:
# This file is unmodified.
#
# Description:
# This script is used by BootManager(BM) to load the MMCE modules and mount MMCE.

IF NEQ "$BM.MMCE_STARTED$" "1"
    ECHO "Starting MMCE..."

    IF NOT MODLOADED "filexio"
        IF FAIL LOADEXEC "IRX" "$BM.DRIVER_PATH$/FILEXIO.IRX"
            ECHO "Failed loading FILEXIO.IRX!"
            RETURN -1
        ENDIF
    ENDIF

    IF NOT MODLOADED "mmceman"
        IF FAIL LOADEXEC "IRX" "$BM.DRIVER_PATH$/MMCEMAN.IRX"
            ECHO "Failed loading MMCEMAN.IRX!"
            RETURN -1
        ENDIF
    ENDIF

    SET "BM.MMCE_STARTED" "1"

    RETURN 0
ENDIF
