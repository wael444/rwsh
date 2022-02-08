#!/usr/bin/env bash
# if you see this, stuff went down
# Version
VERSION="b0.0.1";
# Colors
G='\033[0;32m';
NC='\033[0;0m';
B='\033[1m';
NB='\033[0m';
BL='\033[0;34m';
R='\033[0;31m';
O='\033[0;33m';
[ "$EUID" -eq 0 ] && printf "${R}${B}[E] ${NC}Running on root is not supported.\n" && exit 1;
LOGFOLDER="$HOME/.local/var/log/ronix";
ROOTFOLDER="$HOME/.local/share/ronix";
date=$(date +"%Y%m%d-%H-%M-%S");
function="installer";
CONFIGFOLDER="$HOME/.config/ronix";
mkdir -p "$LOGFOLDER";
mkdir -p "$CONFIGFOLDER";
mkdir -p "$ROOTFOLDER";
source "$CONFIGFOLDER/config.sh";
# Code from stackexchange
# This justs make a cool animated spinning |
spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' ';
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}";
    done
}

if [ -f "$HOME/.local/bin/ronix" ]; then
	printf "${R}${B}[E] ${NC}Ronix is already installed!\n"
else
	printf "${BL}${B}[I] ${NC}Log file is stored in $LOGFOLDER/$function-$date\n" 2>&1 | tee -a "$LOGFOLDER/$function-$date"; 
	printf "${BL}${B}[I] ${NC}Installing Ronix...\n" 2>&1 | tee -a "$LOGFOLDER/$function-$date";
	printf "${BL}${B}[I] ${NC}Copying Files" 2>&1 | tee -a "$LOGFOLDER/$function-$date";
	printf "\n" >> "$LOGFOLDER/$function-$date";
	spinner &
	sleep 3;
	mkdir -p $HOME/.local/bin;
	cp --verbose files/.local/bin/ronix ~/.local/bin/ronix >> "$LOGFOLDER/$function-$date";
	cp --verbose files/.config/ronix/config.sh ~/.config/ronix/config.sh >> "$LOGFOLDER/$function-$date";
	kill $!;
	printf "\n${BL}${B}[I] ${NC}Install finished!\n" 2>&1 | tee -a "$LOGFOLDER/$function-$date";
	read -p "Start the Ronix first-time setup? [y/N] ";
	case $REPLY in
		Y) $HOME/.local/bin/ronix ;;
		y) $HOME/.local/bin/ronix ;;
		*) exit ;;
	esac
fi
