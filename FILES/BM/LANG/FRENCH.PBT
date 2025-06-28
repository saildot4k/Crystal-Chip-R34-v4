# Traduction Française du menu BootManager pour BMMENUS.PBT v1.4
# Uniquement prévue pour une utilisation avec une release R34 v3+ par R3Z3N

# Contrôlez la version du script du menu pour assurer que ce script la supporte.
IF NEQ "$BM.MENU_MAJOR_VER$" "1"
    ECHO "Version non supportée : v$BM.MENU_MAJOR_VER$.$BM.MENU_MINOR_VER$!"
    EXIT 0
ELSEIF NEQ "$BM.MENU_MINOR_VER$" "5"
    ECHO "Version non supportée : v$BM.MENU_MAJOR_VER$.$BM.MENU_MINOR_VER$!"
    EXIT 0
ENDIF

SET "TITLE" "Français"
SET "DESC" "Fichier de langue française."

# Ne pas changer ces deux lignes!
GOTO "$ARG1$"
RETURN -1

:LABEL_NAME
    ADDWIDGET "LABEL" "$ARG2$$TITLE$"
    EXIT 0

:QUERY
    ADDWIDGET "CALL" "$TITLE$" "$DESC$" $ARG2$ "$ARG0$" "$ARG3$" "$ARG4$" "$ARG5$"
    EXIT 0

:INSTALL
    COPY "$PWD$/FRENCH.PBT" "$BM.BM_PATH$/LANG/FRENCH.PBT"
    EXIT 0

:REMOVE
    RRM "$ARG0$"
    EXIT 0

:LOAD
ECHO "Chargement texte Français..."

# Miscellaneous
SET "BM.TXT_YES" "Oui"
SET "BM.TXT_NO" "Non"
SET "BM.TXT_ON" "ACTIVÉ"
SET "BM.TXT_AUTO" "AUTO"
SET "BM.TXT_OFF" "DÉSACTIVÉ"
SET "BM.TXT_BOOT" "DÉMARRER"
SET "BM.TXT_APP" "APP"
SET "BM.TXT_STANDARD" "STANDARD"
SET "BM.TXT_FAST" "RAPIDE"
SET "BM.TXT_SMOOTH" "NORMAL"
SET "BM.TXT_AUTHOR" "Autheur(s)"
SET "BM.TXT_VERSION" "Version"
SET "BM.TXT_DESC" "Description"
SET "BM.TXT_DELAY" "Délai(sec)"
SET "BM.TXT_CONFIRM" "Êtes-vous sûr?"
SET "BM.TXT_BACK" "Retour en haut"
SET "BM.TXT_HINT_BACK" "Retour au sommet du menu"
SET "BM.TXT_CHOOSE_DEST" "Choisissez la destination"
SET "BM.TXT_MAIN" "Retour au menu principal"
SET "BM.TXT_CURRENT" "Actuel"
SET "BM.TXT_CONFIRM_CHOICE" "Confirmer le choix"
SET "BM.TXT_HINT_CANCEL_CHOICE" "Annuler et revenir au menu précédent"
SET "BM.TXT_HINT_CONFIRM_CHOICE" "Confirmer le choix"
SET "BM.TXT_POWER_OFF" "Éteindre"
SET "BM.TXT_RESTART" "Redémarrer"
SET "BM.TXT_THE_PS2" "la PS2"

# Media
SET "BM.TXT_PS1" "PS1"
SET "BM.TXT_PS2" "PS2"
SET "BM.TXT_DVDV" "DVD Video"
SET "BM.TXT_CDDA" "CD Audio"
SET "BM.TXT_OTHER" "Autre"
SET "BM.TXT_NODISC" "Aucun disque"
SET "BM.TXT_LANGUAGE" "Language"
SET "BM.TXT_HINT_BM_LANG" "Définir la langue utilisée par BootManager."
SET "BM.TXT_INSTALL_LANG" "Installer la langue"
SET "BM.TXT_HINT_INSTALL_LANG" "Installer des fichiers de langue supplémentaires."
SET "BM.TXT_REMOVE_LANG" "Supprimer la langue"
SET "BM.TXT_HINT_REMOVE_LANG" "Supprimer les fichiers de langue installés."
SET "BM.TXT_CHOOSE_LANG" "Choisir la langue"
SET "BM.TXT_SOURCE_DEV" "Choisir le périphérique source"
SET "BM.TXT_LANG_INST_AVAIL" "Langues disponibles"
SET "BM.TXT_LANG_REMOVE_AVAIL" "Langues installées"

# Main Menu
SET "BM.TXT_MAIN_MENU" "Menu Principal"

# Install BootManager
SET "BM.TXT_INST_BM" "Installer BootManager"
SET "BM.TXT_HINT_INST_BM" "Installer BootManager."
SET "BM.TXT_INSTALL_BM_TO" "Installer BootManager sur..."

# Firmware Manager
SET "BM.TXT_UPG_FIRMWARE" "Mettre à jour le firmware"
SET "BM.TXT_HINT_UPG_FIRMWARE" "Mettre à jour le firmware de Crystal Chip depuis ce disque."
SET "BM.TXT_FORMAT_DFFS" "Formatter DFFS"
SET "BM.TXT_HINT_FORMAT_DFFS" "Formatter mémoire flash de Crystal Chip."
SET "BM.TXT_DFFS_REM_BM" "Supprimer dffs:/BM"
SET "BM.TXT_HINT_DFFS_REM_BM" "Supprimer dossier BootManager de la mémoire flash de Crystal Chip."
SET "BM.TXT_FW_MANAGER" "Gestionnaire firmware"
SET "BM.TXT_HINT_FW_MANAGER" "Le Gestionnaire firmware vous permet de màj et effacer votre firmware Crystal Chip."
SET "BM.TXT_UPG_FW" "Màj firmware"
SET "BM.TXT_HINT_UPG_FW" "Màj du firmware de Crystal Chip à partir d'un fichier CCI."
SET "BM.TXT_ERASE_FW" "Effacer firmware"
SET "BM.TXT_HINT_ERASE_FW" "Effacer complètement la mémoire flash de Crystal Chip."
SET "BM.TXT_ASK_ERASE_FW" "Êtes-vous sûr de vouloir effacer le firmware?"
SET "BM.TXT_FW_TITLE" "Déclinaisons Firmware:"
SET "BM.TXT_FW_QUESTION" "Lancer Boot Manager depuis quelle interface?"
SET "BM.TXT_FW_MC0" "1- BM se lance depuis Carte Mémoire 1"
SET "BM.TXT_FW_MC0_HINT" "Installer FW CC et lancer BM depuis MC1."
SET "BM.TXT_FW_MC1" "2- BM se lance depuis Carte Mémoire 2"
SET "BM.TXT_FW_MC1_HINT" "Installer FW CC et lancer BM depuis MC2."
SET "BM.TXT_FW_USB" "3- BM se lance depuis USB"
SET "BM.TXT_FW_USB_HINT" "Installer FW CC et lancer BM depuis USB. IMPORTANT: Les pilotes USB doivent être installés sur MC1 via Gestionnaire périphériques."
SET "BM.TXT_FW_HDD" "4- BM se lance depuis HDD"
SET "BM.TXT_FW_HDD_HINT" "Installer FW CC et lancer BM depuis HDD. IMPORTANT: Les pilotes HDD doivent être installés sur MC1 via Gestionnaire périphériques."

# Recharger Menu
SET "BM.TXT_RELOAD_MENU" "Recharger menu"
SET "BM.TXT_HINT_RELOAD_MENU" "Recharger le fichier BMMENUS.PBT"

# Menu Démarrage
SET "BM.TXT_BOOT_MEDIA" "Démarrer le disque"
SET "BM.TXT_HINT_BOOT_MENU" "Lancer jeu/application depuis le disque"

# Menu Applications
SET "BM.TXT_APP_BROWSER" "Menu Applications"
SET "BM.TXT_HINT_APP_BROWSER" "Lancer applications depuis Carte Mémoire, CD/DVD, USB, HDD, etc."
SET "BM.TXT_APP" "Application(s)"
SET "BM.TXT_APPS" "Applications"
SET "BM.TXT_DEV" "Périphérique(s)"
SET "BM.TXT_DEVS" "Périphériques"
SET "BM.TXT_THM" "Thème(s)"
SET "BM.TXT_THMS" "Thèmes"
SET "BM.TXT_MENU_INSTALL" "Installer"
SET "BM.TXT_INSTALL_AVAIL" "Disponible sur"
SET "BM.TXT_MENU_REMOVE" "Supprimer"
SET "BM.TXT_REMOVE_AVAIL" "Installé sur"

# Menu Lancement Application
SET "BM.TXT_MENU_RUN" "Lancer"
SET "BM.TXT_HINT_RUN_APP" "Lancer une application depuis un périphérique"
SET "BM.TXT_RUN_APP_FROM" "Lancer une application depuis"
SET "BM.TXT_RUN_AVAIL" "Exécutable sur"
SET "BM.TXT_RUN_UNAVAIL" "Exécution depuis ce périphérique non disponible."

# Menu Installation Applications
SET "BM.TXT_HINT_INSTALL_APP" "Installer une application depuis un périphérique vers un autre"
SET "BM.TXT_INSTALL_APP_FROM" "Installer application(s) depuis"
SET "BM.TXT_INSTALL_APP_TO" "Installer application sur"
SET "BM.TXT_NO_INSTALL" "Installation sur même périphérique non faisable!"
SET "BM.TXT_NO_INSTALL_CDROM" "Installation sur CD/DVD non faisable!"
SET "BM.TXT_NO_REMOVE_CDROM" "Suppression sur CD/DVD non faisable!"

# Menu Suppression Applications
SET "BM.TXT_HINT_REMOVE_APP" "Supprimer une application sur un périphérique"
SET "BM.TXT_REMOVE_APP_FROM" "Supprimer application sur"

# Gestionnaire périphériques
SET "BM.TXT_DEV_MANAGER" "Gestionnaire périphériques"
SET "BM.TXT_HINT_DEV_MANAGER" "Installer/supprimer pilotes pour périphériques."

# Menu installation périphérique
SET "BM.TXT_HINT_INSTALL_DEV" "Installer les pilotes pour périphériques."
SET "BM.TXT_INSTALL_DEV_FROM" "Installer pilote depuis"
SET "BM.TXT_INSTALL_DEV_TO" "Installer pilote vers"

# Remove Device
SET "BM.TXT_HINT_REMOVE_DEV" "Supprimer les pilotes pour périphériques."
SET "BM.TXT_REMOVE_DEV_FROM" "Supprimer pilote de périphérique sur"

# Devices
SET "BM.TXT_MC_DESC" "Emplacement carte mémoire"
SET "BM.TXT_MMCE_DESC" "Emplacement Multipurpose Memory Card Emulator (MMCE)"
SET "BM.TXT_MMCE_DESC_1" "Pilote MMCE"
SET "BM.TXT_CCFLASH_DESC" "Mémoire flash de Crystal Chip"
SET "BM.TXT_CDVD_DESC" "Lecteur CD/DVD"
SET "BM.TXT_HOST_DESC" "Hôte PC via PS2Client"
SET "BM.TXT_HOST_DESC_1" "Pilote Hôte PC"
SET "BM.TXT_USB_DESC" "Clé USB"
SET "BM.TXT_USB_DESC_1" "Pilotes USB"
SET "BM.TXT_HDD_DESC" "Disque dur PS2"
SET "BM.TXT_HDD_DESC_1" "Pilotes disque dur PS2"
SET "BM.TXT_FTP_DESC" "Pilote FTP"
SET "BM.TXT_NET" "Réseau"
SET "BM.TXT_NET_DESC" "Pilote réseau PS2"

# Gestionnaire carte mémoire
SET "BM.TXT_MC_MANAGER" "Gestionnaire carte mémoire"
SET "BM.TXT_HINT_MC_MANAGER" "Formatter carte mémoires, supprimer BootManager, etc."
SET "BM.TXT_MC_REM_ALL_APPS" "Supprimer toutes les applications"
SET "BM.TXT_HINT_MC_REM_ALL_APPS" "Supprimer toutes les applications de carte mémoire 1."
SET "BM.TXT_MC_REM_BOOT" "Supprimer mc0:/BOOT"
SET "BM.TXT_HINT_MC_REM_BOOT" "Supprimer le dossier de BootManager dans carte mémoire 1."
SET "BM.TXT_MC_REM_BM" "Supprimer mc0:/BM"
SET "BM.TXT_HINT_MC_REM_BM" "Supprimer le dossier de BootManager 2.x dans carte mémoire 1."
SET "BM.TXT_MC0_COPY_HOST" "Copier mc0:/* vers hôte"
SET "BM.TXT_HINT_MC0_COPY_HOST" "Copier tout le contenu de carte mémoire 1 vers l'hôte."
SET "BM.TXT_MC1_COPY_HOST" "Copier mc1:/* vers hôte"
SET "BM.TXT_HINT_MC1_COPY_HOST" "Copier tout le contenu de carte mémoire 2 vers l'hôte."
SET "BM.TXT_MC0_ERASE" "Effacer mc0:/*"
SET "BM.TXT_HINT_MC0_ERASE" "Effacer tout le contenu de carte mémoire 1."
SET "BM.TXT_MC1_ERASE" "Effacer mc1:/*"
SET "BM.TXT_HINT_MC1_ERASE" "ffacer tout le contenu de carte mémoire 2."

# Information système
SET "BM.TXT_SYS_INFO" "Information système"
SET "BM.TXT_HINT_SYS_INFO" "Voir informations concernant le matériel système."
SET "BM.TXT_CONSOLE_BIOS" "BOOTROM de la console"
SET "BM.TXT_CONSOLE_VERSION" "Version de la console"
SET "BM.TXT_CONSOLE_REGION" "Région"
SET "BM.TXT_CONSOLE_MODEL" "Modèle de la console"

# Menu configuration
SET "BM.TXT_CONFIGURATION" "Configuration"
SET "BM.TXT_HINT_CONFIGURATION" "Changer paramètres de BootManager et Crystal Chip."
SET "BM.TXT_INTERF_CONFIG" "Interface"
SET "BM.TXT_SOFTWARE_CONFIG" "Configuration software"

# Configuration BootManager
SET "BM.TXT_BM_CONFIG" "Configuration BootManager"
SET "BM.TXT_HINT_BM_CONFIG" "Changer paramètres BootManager."

SET "BM.TXT_BM_VIDEO_MODE" "Mode vidéo BM"
SET "BM.TXT_HINT_BM_VIDEO_MODE" "!! ATTENTION !! Cela changera le mode vidéo que BootManager utilise!"

SET "BM.TXT_BM_SCREEN_POS" "Position écran BM"
SET "BM.TXT_HINT_BM_SCREEN_POS" "Ajuster la position de BootManager."

SET "BM.TXT_HINT_SCROLLBAR" "Aide contextuelle"
SET "BM.TXT_HINT_HINT_SCROLLBAR" "Activer/désactiver l'aide contextuelle au bas de l'écran."

SET "BM.TXT_SCROLLBAR_SPEED" "Vitesse aide contextuelle"
SET "BM.TXT_HINT_SCROLLBAR_SPEED" "Définir la vitesse de défilement de l'aide contextuelle."

SET "BM.TXT_APP_DIR" "Dossiers navigateur d'applications"
SET "BM.TXT_HINT_APP_DIR" "Activer/désactiver les dossiers dans le navigateur d'applications."

# Menu configuration réseau
SET "BM.TXT_NET_CONFIG" "Réseau"
SET "BM.TXT_HINT_NET_CONFIG" "Changer vos paramètres réseau PS2."

SET "BM.TXT_START_NET" "Démarrer Réseau"
SET "BM.TXT_HINT_START_NET" "Démarrer réseau PS2."
SET "BM.TXT_START_HOST" "Démarrer serveur PC hôte"
SET "BM.TXT_HINT_START_HOST" "Démarrer le serveur PC hôte PS2."
SET "BM.TXT_START_FTP" "Démarrer serveur FTP"
SET "BM.TXT_HINT_START_FTP" "Démarrer le serveur FTP PS2."

SET "BM.TXT_AUTOSTART_NET" "Démarrage automatique réseau"
SET "BM.TXT_HINT_AUTOSTART_NET" "Démarrer automatiquement le réseau quand BM démarre."
SET "BM.TXT_AUTOSTART_HOST" "Démarrage automatique serveur PC hôte"
SET "BM.TXT_HINT_AUTOSTART_HOST" "Démarrer automatiquement le serveur PC hôte quand BM démarre."
SET "BM.TXT_AUTOSTART_FTP" "Démarrage automatique serveur FTP"
SET "BM.TXT_HINT_AUTOSTART_FTP" "Démarrer automatiquement le serveur FTP quand BM démarre."

SET "BM.TXT_PS2_IP" "IP PS2"
SET "BM.TXT_HINT_PS2_IP" "Adresse IP de la PS2."
SET "BM.TXT_SUBNET_MASK" "Masque de sous-réseau"
SET "BM.TXT_HINT_SUBNET_MASK" "Masque de sous-réseau du réseau, typiquement 255.255.255.0."
SET "BM.TXT_DEF_GATEWAY" "Passerelle par défaut"
SET "BM.TXT_HINT_DEF_GATEWAY" "Adresse IP de la passerelle par défaut du réseau."

SET "BM.TXT_PRIMARY_DNS" "Serveur DNS Primaire"
SET "BM.TXT_HINT_PRIMARY_DNS" "Adresse IP du serveur DNS Primaire."
SET "BM.TXT_SECONDARY_DNS" "Serveur DNS Secondaire"
SET "BM.TXT_HINT_SECONDARY_DNS" "Adresse IP du serveur DNS Secondaire."

# Menu configuration disque dur
SET "BM.TXT_HDD_CONFIG" "Disque dur"
SET "BM.TXT_HINT_HDD_CONFIG" "Changer vos paramètres de disque dur PS2."

SET "BM.TXT_START_HDD" "Démarrer disque dur"
SET "BM.TXT_HINT_START_HDD" "Charge les pilotes et monte le disque dur HDD."

SET "BM.TXT_AUTOSTART_HDD" "Démarrage automatique disque dur"
SET "BM.TXT_HINT_AUTOSTART_HDD" "Charger automatiquement les pilotes et monter le disque dur au démarrage de BM."

# Configuration chargement automatique
SET "BM.TXT_AUTOLOAD_CONFIG" "Chargement automatique"
SET "BM.TXT_HINT_AUTOLOAD_CONFIG" "Paramétrer le chargement automatique de divers types de softs."

SET "BM.TXT_AUTOLOAD" "Chargement automatique"
SET "BM.TXT_HINT_AUTOLOAD" "Activer et désactiver le chargement automatique."

SET "BM.TXT_ACTION" "Action"

SET "BM.TXT_AUTOLOAD_PS1" "Action automatique PS1"
SET "BM.TXT_HINT_AL_ACT_PS1" "Choisir l'application/action qui est exécutée quand un disque PS1 est détecté."
SET "BM.TXT_AL_PS1_APP_FROM" "Choisir l'application auto PS1 depuis"
SET "BM.TXT_AL_PS1_AVAIL" "Application disponible pour action auto PS1 sur"

SET "BM.TXT_AUTOLOAD_PS2" "Action automatique PS2"
SET "BM.TXT_HINT_AL_ACT_PS2" "Choisir l'application/action qui est exécutée quand un disque PS2 est détecté."
SET "BM.TXT_AL_PS2_APP_FROM" "Choisir l'application auto PS2 depuis"
SET "BM.TXT_AL_PS2_AVAIL" "Application disponible pour action auto PS2 sur"

SET "BM.TXT_AUTOLOAD_DVDV" "Action automatique DVD"
SET "BM.TXT_HINT_AL_ACT_DVDV" "Choisir l'application/action qui est exécutée quand un disque DVD est détecté."
SET "BM.TXT_AL_DVDV_APP_FROM" "Choisir l'application auto DVD depuis"
SET "BM.TXT_AL_DVDV_AVAIL" "Application disponible pour action auto DVD sur"

SET "BM.TXT_AUTOLOAD_CDDA" "Action automatique CD Audio"
SET "BM.TXT_HINT_AL_ACT_CDDA" "Choisir l'application/action qui est exécutée quand un CD Audio est détecté."
SET "BM.TXT_AL_CDDA_APP_FROM" "Choisir l'application auto CD audio depuis"
SET "BM.TXT_AL_CDDA_AVAIL" "Application disponible pour action auto CD audio sur"

SET "BM.TXT_AUTOLOAD_OTHER" "Action automatique CD Autre"
SET "BM.TXT_HINT_AL_ACT_OTHER" "Choisir l'application/action qui est exécutée quand un disque de type 'Autre' est détecté."
SET "BM.TXT_AL_OTHER_APP_FROM" "Choisir l'application auto disque de type 'Autre' depuis"
SET "BM.TXT_AL_OTHER_AVAIL" "Application disponible pour action auto disque de type 'Autre' sur"

SET "BM.TXT_AUTOLOAD_NODISC" "Action automatique aucun disque"
SET "BM.TXT_HINT_AL_ACT_NODISC" "Choisir l'application/action qui est exécutée quand aucun disque est inséré."
SET "BM.TXT_AL_NODISC_APP_FROM" "Choisir l'application auto aucun disque depuis"
SET "BM.TXT_AL_NODISC_AVAIL" "Application disponible pour action auto aucun disque sur"

SET "BM.TXT_SET_AL_APP" "Set Autoload ApplicationDéfinir "
SET "BM.TXT_HINT_SET_AL_APP" "Choose the application that will be executed on Autoload of this disc."

SET "BM.TXT_AL_DELAY" "Autoload Delay(sec)"
SET "BM.TXT_HINT_AL_DELAY" "Set the idle delay, in seconds, before BM will Autoload."

# Configuration Menu PS1
SET "BM.TXT_PS1_CONFIG" "PS1"
SET "BM.TXT_HINT_PS1_CONFIG" "Changer les paramètres pour les jeux et softs PS1."

SET "BM.TXT_DISC_SPEED" "Vitesse de lecture PS1"
SET "BM.TXT_HINT_DISC_SPEED" "Cette option vous permet d'accelérer les accès disque PS1. Cette option peut ne pas être compatible avec certains jeux PS1."

SET "BM.TXT_TEX_MAPPING" "Mapping textures PS1"
SET "BM.TXT_HINT_TEX_MAPPING" "Cette option vous permet de lisser les textures dans les jeux PS1. Cette option peut ne pas être compatible avec certains jeux PS1."

# Common for PS1 and PS2
SET "BM.TXT_NTSC_SW_VID_FIXES" "Correctifs vidéo NTSC"
SET "BM.TXT_HINT_NTSC_SW_VID_FIXES" "Activer ou désactiver les correctifs vidéo NTSC."

SET "BM.TXT_PAL_SW_VID_FIXES" "Correctifs vidéo PAL"
SET "BM.TXT_HINT_PAL_SW_VID_FIXES" "Activer ou désactiver les correctifs vidéo PAL."

SET "BM.TXT_FORCE_VSYNC" "Forcer la synchronisation verticale"
SET "BM.TXT_HINT_FORCE_VSYNC" "Forcer la synchronisation verticale pour votre software."

SET "BM.TXT_FORCE_COLOR" "Forcer les couleurs"
SET "BM.TXT_HINT_FORCE_COLOR" "Forcer les couleurs pour votre software."

SET "BM.TXT_SCREEN_MODS" "Modification position écran"
SET "BM.TXT_HINT_SCREEN_MODS" "Ce paramètre vous permet d'activer/désactiver la modification de la position de l'écran."

SET "BM.TXT_SCREEN_MOD" "Changement position X/Y écran"
SET "BM.TXT_HINT_SCREEN_MOD" "Ces paramètres sont utilisés pour décaler la position X(horizontale) et Y(verticale) de l'écran."

# PS2 Configuration Menu
SET "BM.TXT_PS2_CONFIG" "PS2"
SET "BM.TXT_HINT_PS2_CONFIG" "Changer les paramètres pour les softs et pour les jeux PS2."

SET "BM.TXT_MEGAMEM_PATCHER" "Patch MegaMemory"
SET "BM.TXT_HINT_MEGAMEM_PATCHER" "Activer/désactiver le patch pour l'utilisation d'anciennes carte mémoires MegaMemory/MAX."

SET "BM.TXT_ATAD_PATCHER" "Patch ATAD(HDD)"
SET "BM.TXT_HINT_ATAD_PATCHER" "Activer/désactiver le patch ATAD pour l'utilisation des disques durs non-Sony pour les jeux qui utilisent le disque dur."

SET "BM.TXT_DVDDL_PATCHER" "Patch DVD+R double couche"
SET "BM.TXT_HINT_DVDDL_PATCHER" "Activer/désactiver le patch pour les disques DVD+R double couche."

# DVD Configuration Menu
SET "BM.TXT_DVD_CONFIG" "Vidéo DVD"
SET "BM.TXT_HINT_DVD_CONFIG" "Changer les paramètres pour la vidéo DVD."

SET "BM.TXT_DVD_VIDEO_FIXES" "Correctifs vidéo DVD"
SET "BM.TXT_HINT_DVD_VIDEO_FIXES" "Activer ou désactiver les correctifs vidéo DVD."

SET "BM.TXT_REGION_FREE" "Dézonnage Région"
SET "BM.TXT_HINT_REGION_FREE" "Cette fonctionnalité vous permet de visionner des DVD imports sur votre PS2."

SET "BM.TXT_DVD_PLAYER_REGION" "Région Lecteur DVD"
SET "BM.TXT_HINT_DVD_PLAYER_REGION" "Cette fonctionnalité vous permet de définir la région du lecteur DVD pour les films protégés par RCE. Par défaut il est mieux de laisser à 1."

SET "BM.TXT_RGB_FIX" "Correctif RGB"
SET "BM.TXT_HINT_RGB_FIX" "Cette fonctionnalité vous permet de corriger le problème de 'l'écran vert' lors du visionnage d'un DVD."

SET "BM.TXT_VIDEO_STAB" "Stabilisateur vidéo"
SET "BM.TXT_HINT_VIDEO_STAB" "Cela vous permet de désactiver la sortie Macrovision et d'améliorer la qualité vidéo dans certains cas."

SET "BM.TXT_HINT_FORCE_COLOR_DVD" "Cette fonctionnalité vous permet de forcer les couleurs pour la vidéo DVD."

# Menu démarrage disque
SET "BM.TXT_BOOT_MENU" "Menu démarrage disque"
SET "BM.TXT_BOOT_ENHANCED" "Démarrer en mode amélioré"
SET "BM.TXT_HINT_BOOT_ENHANCED" "Démarrer le disque avec les améliorations choisies."
SET "BM.TXT_BOOT_MINIMAL" "Démarrer en mode minimal"
SET "BM.TXT_HINT_BOOT_MINIMAL" "Démarrer le disque avec le minimum d'améliorations activées."
SET "BM.TXT_BOOT_SLEEP" "Démarrer en mode veille CC"
SET "BM.TXT_HINT_BOOT_SLEEP" "Démarrer le disque avec les améliorations et Crystal Chip désactivés."

# Gestionnaire thème
SET "BM.TXT_THEME_MANAGER" "Thème"
SET "BM.TXT_HINT_THEME_MANAGER" "Configurer, changer, installer et supprimer vos thèmes BootManager."
SET "BM.TXT_SELECTED_THEME" "Thème choisi"
SET "BM.TXT_MANAGE_THEME" "Gérer les thèmes"

# Configuration Thèmes
SET "BM.TXT_THEMES" "Thèmes"
SET "BM.TXT_THEME_CONFIG" "Thème"
SET "BM.TXT_HINT_THEME_CONFIG" "Configurer le thème du menu BootManager."

SET "BM.TXT_XY" "Position X/Y"
SET "BM.TXT_WH" "Largeur/Hauteur"

SET "BM.TXT_THEME_MENU_IMG" "Image du menu"
SET "BM.TXT_HINT_THEME_MENU_IMG_XY" "Ajustez la position X/Y sur l'écran pour l'image du menu."
SET "BM.TXT_HINT_THEME_MENU_IMG_WH" "Ajustez la largeur/hauteur sur l'écran pour l'image du menu."

SET "BM.TXT_THEME_DISC_IMG" "Image disque"
SET "BM.TXT_HINT_DISC_IMG_XY" "Ajustez la position X/Y sur l'écran pour l'icône du disque."
SET "BM.TXT_HINT_DISC_IMG_WH" "Ajustez la largeur/hauteur pour l'icône du disque."

SET "BM.TXT_THEME_MENU_TEXT" "Menu"
SET "BM.TXT_HINT_THEME_MENU_XY" "Ajustez la position X/Y sur l'écran pour le menu."
SET "BM.TXT_HINT_THEME_MENU_WH" "Ajustez la largeur/hauteur pour le menu."

SET "BM.TXT_THEME_MENU_TITLE" "Titre de menu"
SET "BM.TXT_HINT_THEME_MENU_TITLE_XY" "Ajustez la position X/Y sur l'écran pour le titre du menu."
SET "BM.TXT_HINT_THEME_MENU_TITLE_WH" "Ajustez la largeur/hauteur pour le titre du menu."

SET "BM.TXT_BM_VERSION" "Libellé version BM"
SET "BM.TXT_HINT_BM_VERSION" "Ajustez la position X/Y sur l'écran pour le texte de la version BM."

SET "BM.TXT_THEME_SCROLLER" "Aide contextuelle"
SET "BM.TXT_HINT_THEME_SCROLLER_XY" "Ajustez la position X/Y sur l'écran pour l'aide contextuelle."
SET "BM.TXT_HINT_THEME_SCROLLER_WH" "Ajustez la largeur/hauteur pour l'aide contextuelle."

SET "BM.TXT_THEME_COLOR" "Couleurs du thème"
SET "BM.TXT_THEME_BG_COLOR" "Couleur arrière-plan"
SET "BM.TXT_HINT_THEME_BG_COLOR" "Choisir la couleur de l'arrière-plan."
SET "BM.TXT_THEME_FONT_COLOR" "Couleur de la police"
SET "BM.TXT_HINT_THEME_FONT_COLOR" "Choisir la couleur de la police."
SET "BM.TXT_THEME_FONT_COLOR_LABEL" "Couleur de la police des titres"
SET "BM.TXT_HINT_THEME_FONT_COLOR_LABEL" "Choisir la couleur de la police des titres."
SET "BM.TXT_THEME_FONT_COLOR_SCROLLER" "Couleur aide contextuelle"
SET "BM.TXT_HINT_THEME_FONT_COLOR_SCROLLER" "Choisir la couleur de l'aide contextuelle."

# Changement thème
SET "BM.TXT_MENU_CHANGE" "Changer"
SET "BM.TXT_HINT_THEME_CHANGE" "Choisir et changer le thème de BootManager."
SET "BM.TXT_CHANGE_THM_FROM" "Choisir un thème depuis"
SET "BM.TXT_CHANGE_AVAIL" "Thèmes disponibles sur"

# Installation thèmes
SET "BM.TXT_HINT_THEME_INSTALL" "Installer un thème depuis un périphérique vers un autre."
SET "BM.TXT_INSTALL_THM_FROM" "Installer thème(s) depuis"
SET "BM.TXT_INSTALL_THM_TO" "Installer thème sur"

# Suppression thèmes
SET "BM.TXT_HINT_THEME_REMOVE" "Supprimer un thème sur un périphérique."
SET "BM.TXT_REMOVE_THM_FROM" "Supprimer thème(s) sur"

# Test disque
SET "BM.TXT_PS1_TEST_INFO" "Le test disque va maintenant contôler l'authentification PS1 (SCEx) de Crystal Chip. "
SET "BM.TXT_START_PS1_TEST" "Démarrer test disque PS1"

SET "BM.TXT_DISC_TEST" "Test disque"
SET "BM.TXT_HINT_DISC_TEST" "Le test disque permet de contôler l'installation de Crystal Chip en testant l'authentification PS1 (SCEx)."

SET "BM.TXT_PS1_WORK" "Authentification du disque PS1 réussie!"
SET "BM.TXT_PS1_FAIL" "Authentification du disque PS1 échouée!"

SET "BM.TXT_CHECK_SX" "Contrôlez le fil SX de Crystal Chip svp."

# Configuration diverses
SET "BM.TXT_MISC_CONFIG" "Divers"
SET "BM.TXT_HINT_MISC_CONFIG" "Configurations diverses qui ne rentre pas dans les autres catégories."

SET "BM.TXT_GS_HOOK" "Hook GS"
SET "BM.TXT_HINT_GS_HOOK" "Le hook GS de Crystal Chip permet des correctifs vidéos avancés mais peut ne pas être compatible avec certains jeux."

SET "BM.TXT_IGR" "In-Game Reset"
SET "BM.TXT_HINT_IGR" " Le in-game reset(IGR) permet de redémarrer la console en maintenant enfoncés L1+L2+R1+R2+Start+Select depuis un jeu PS2."

# Assistant Video
SET "BM.TXT_VID_WIZ" "Assistant Video"
SET "BM.TXT_VID_WIZ_1" "Cet assistant vous aide à déterminer quels modes vidéos votre TV supporte."
SET "BM.TXT_VID_WIZ_2" "Quand l'assistant a terminé, il choisira automatiquement la meilleure configuration vidéo pour votre TV."
SET "BM.TXT_VID_WIZ_3" "Chaque étape test un mode vidéo différent et nécessite de choisir une option sur la base de ce qui s'affiche."
SET "BM.TXT_VID_WIZ_4" "Si vous avez aucun affichage après 10 secondes, appuyez sur X et patientez 10 secondes pour l'affichage de l'écran suivant."
SET "BM.TXT_VID_WIZ_START" "Démarrer les tests"
SET "BM.TXT_HINT_VID_WIZ_START" "Démarrer l'assistant mode vidéo."

#Video Test
SET "BM.TXT_TEST_50HZ" "Test 50Hz"
SET "BM.TXT_TEST_PAL" "Test couleurs PAL"
SET "BM.TXT_TEST_60HZ" "Test 60Hz"
SET "BM.TXT_TEST_NTSC" "Test couleurs NTSC"
SET "BM.TXT_CAN_YOU_READ" "L'écran s'affiche-t-il correctement?"
SET "BM.TXT_YES_BUT" "L'affichage est instable"
SET "BM.TXT_SCREEN_COLOR" "L'écran s'affiche-t-il en couleur?"

SET "BM.TXT_TEST_RESULTS" "Résultats test vidéo"
SET "BM.TXT_TEST_COMPLETE" "Tests terminés!"
SET "BM.TXT_50HZ_YES" "Votre TV peut afficher le 50Hz."
SET "BM.TXT_50HZ_NO" "Votre TV ne peut pas afficher le 50Hz."
SET "BM.TXT_60HZ_YES" "Votre TV peut afficher le 60Hz."
SET "BM.TXT_60HZ_NO" "Votre TV ne peut pas afficher le 60Hz."
SET "BM.TXT_PAL_YES" "Votre TV peut afficher les couleurs PAL."
SET "BM.TXT_PAL_NO" "Votre TV ne peut pas afficher les couleurs PAL."
SET "BM.TXT_NTSC_YES" "Votre TV peut afficher les couleurs NTSC."
SET "BM.TXT_NTSC_NO" "Votre TV ne peut pas afficher les couleurs NTSC."
SET "BM.TXT_DONE" "Fin"
SET "BM.TXT_RETURN_CONFIG" "Retourner au menu de configuration."

#Vérouillage/mode pin
SET "BM.TXT_CNF_LOCKOUT" "Securité"
SET "BM.TXT_CNF_LOCKOUT_HINT" "Vérouillage des fonctions BootManager avec PIN."
SET "BM.TXT_CNF_LOCKOUT_LABEL1" "Vérouillage de toutes les fonctions sauf"
SET "BM.TXT_CNF_LOCKOUT_LABEL2" "démarrage des disques et applications."
SET "BM.TXT_CNF_LOCKOUT_LABEL3" "Entrez votre PIN pour vérouiller toutes les fonctions."
SET "BM.TXT_CNF_LOCKOUT_LABEL4" "Si PIN oublié, ré-installez BootManager."
SET "BM.TXT_PIN_SETUP" "Choisissez un PIN."
SET "BM.TXT_PIN_SETUP_HINT" "Entrez un PIN à utiliser pour les fonctions avancées dans BootManager."
SET "BM.TXT_PIN_CONF" "Confirmez le PIN."
SET "BM.TXT_PIN_CONF_HINT" "Confirmez le PIN à utiliser pour les fonctions avancées BootManager."
SET "BM.TXT_PIN_UNLOCK" "Entrez le PIN pour dévérouiller les menus."
SET "BM.TXT_PIN_UNLOCK_HINT" "Entrez votre PIN pour dévérouiller toutes les fonctions. Le dévérouillage sera actif jusqu'à paramétrage d'un nouveau PIN."
SET "BM.TXT_INCORRECT_PIN" "PIN incorrect. Ré-essayez ou si PIN oublié ré-installez BM via disque installation."
SET "BM.TXT_PIN_SET" "Menus BootManager vérouillés!"
SET "BM.TXT_UNLOCKED" "Menus BootManger dévérouillés!"
SET "BM.TXT_LOCKOUT_WARNING" "Fonctions avancées vérouillées."

#Messages
SET "BM.TXT_SAVE_CONF_FAIL" "Sauvegarde paramètres de configuration échouée!"
SET "BM.TXT_SAVE_THM_FAIL" "Sauvegarde paramètres de thème échouée!"
SET "BM.TXT_DEL_FW_FAIL" "Échec suppression firmware!"
SET "BM.TXT_CREATE_FAIL" "Échec de la création"
SET "BM.TXT_COPY_FAIL" "Échec de la copie"
SET "BM.TXT_COPY_DEF_THM_FAIL" "Échec copie thème par défaut!"
SET "BM.TXT_INST_FAIL" "Échec installation"
SET "BM.TXT_REM_FAIL" "Échec suppression"
SET "BM.TXT_NO_CC" "Modèle Crystal Chip non supporté"
SET "BM.TXT_PROGFW_FAIL" "Échec màj firmware!"
SET "BM.TXT_PROGFW_DONE" "Màj firmware réussie!"

#Confirmation choix
SET "BM.TXT_FROM" "depuis"
SET "BM.TXT_TO" "vers"
SET "BM.TXT_CONFIRM_REM_INST" "Confirmer Suppression/Installation"
SET "BM.TXT_CONFIRM_REM_INST_HINT" "Invite pour Suppression/Installation avant poursuite de l'action."
SET "BM.TXT_BOTH" "Les deux"

#Tutoriels
SET "BM.TXT_TUTORIAL" "Tutoriels"
SET "BM.TXT_MENU_HK" "Raccourcis" 
SET "BM.TXT_MENU_HK_HINT" "R1, R2, L1, L2 info Raccourcis"
SET "BM.TXT_TITLE_HK" "Tutoriel Raccourcis"
SET "BM.TXT_HK_TUTORIAL1" "Pour définir des raccourcis, appuyez sur SELECT"
SET "BM.TXT_HK_TUTORIAL2" "sur l'item de votre choix,"
SET "BM.TXT_HK_TUTORIAL3" "ensuite entrez une touche parmi R1,R2,L1,L2,"
SET "BM.TXT_HK_TUTORIAL4"  "TRIANGLE, CARRÉ et START."
SET "BM.TXT_HK_TUTORIAL5" "Confirmez avec X, annulez avec SELECT."
SET "BM.TXT_HK_TUTORIAL6" "Pour supprimer des racourcis,"
SET "BM.TXT_HK_TUTORIAL7" "appuyez sur SELECT, BUTTON, SELECT sur l'élément de menu."
SET "BM.TXT_MENU_BMRTFLDR" "Màj dossier racine" 
SET "BM.TXT_MENU_BMRTFLDR_HINT" "Tutoriel màj dossier racine"
SET "BM.TXT_TITLE_BMRTFLDR" "Tutoriel fichier BMRTFLDER.PBT"
SET "BM.TXT_BMRTFLDR_TUTORIAL1" "Editez BM/SCRIPTS/BMRTFLDR.PBT"
SET "BM.TXT_BMRTFLDR_TUTORIAL2" "selon les besoin de BootManager"
SET "BM.TXT_BMRTFLDR_TUTORIAL3" "pour spécifier les applications dans device:/*"
SET "BM.TXT_BMRTFLDR_TUTORIAL4" "Une fois terminé, placer le fichier à l'emplacement"
SET "BM.TXT_BMRTFLDR_TUTORIAL5" "périphérique:/BMRTFLDER.PBT"
SET "BM.TXT_BMRTFLDR_TUTORIAL6" "Explorer le périphérique pour action"
SET "BM.TXT_BMRTFLDR_TUTORIAL7" "mettra à jour et supprimera le source."
SET "BM.TXT_BMRTFLDR_TUTORIAL8" "APPINFO.PBT est toujours requis pour chaque application."

SET "BM.TXT_MISSING" "manquant"
SET "BM.TXT_UNSUPPORTED" "non pris en charge sur"

EXIT 0