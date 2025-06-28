# BootManager 2 Application Manager Script for PS2 Browser

# Change this information to describe the application.
SET "TITLE" "PS2 Browser"
SET "VERSION" "1.1"
SET "AUTHOR" "Jones23"
SET "DESC" "Use PS2s internal Browser and System Configuration."
SET "MEDIAS" ""
#

# Do not change these 2 lines!
GOTO "$ARG1$"
RETURN "-1"

:LABEL_NAME
    ADDWIDGET "LABEL" "$ARG2$$TITLE$ v$VERSION$"
    EXIT 0

:QUERY
    IF NOT MATCHES "REMOVE" "$ARG3$"
        ADDWIDGET "CALL" "$TITLE$" "$BM.TXT_VERSION$: $VERSION$ $BM.TXT_AUTHOR$: $AUTHOR$ $BM.TXT_DESC$: $DESC$" $ARG2$ "$ARG0$" "$ARG3$" "$ARG4$" "$ARG5$" "$TITLE$" "$PWD$" "BM/APPS/OSDSYS" "BM/APPS/OSDSYS"
    ENDIF
    EXIT 0

:INSTALL
    IF FAIL COPY "$PWD$" "$ARG2$:/BM/APPS/OSDSYS"
        MESSAGE "Failed installing $TITLE$!"
        RRM "$ARG2$:/BM/APPS/OSDSYS"
        RETURN -1
    ENDIF
    EXIT "0"

:REMOVE
    MESSAGE "$TITLE$ cannot be removed!"
    EXIT "0"

:RUN
    LOADEXEC "EEELF" "rom0:OSDSYS" "BootOpening"
    EXIT "0"
