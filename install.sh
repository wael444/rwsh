#!/usr/bin/env bash
print() {
  case $1 in
    info) mark="$(tput bold)[$(tput setaf 2)*$(tput sgr0)$(tput bold)]$(tput sgr0)";;
    err) mark="$(tput bold)[$(tput setaf 1)X$(tput sgr0)$(tput bold)]$(tput sgr0)";;
  esac
  printf "%s %s\n" "$mark" "$2"
}

[ "$EUID" -eq 0 ] && print err "Script cannot be run as root!" && exit 1;

configfile="$HOME/.config/ronix/config"

yesno() {
  read -p "$1 ";
  case $REPLY in
    y|Y|yes|Yes|YES) $2 ;;
    *) print info "Exiting..." && exit ;;
  esac
}

print info "Installing Ronix"
print info "Creating Directories"
mkdir -pv $HOME/.local/bin
mkdir -pv $HOME/.config/ronix
print info "Copying Ronix"
cp -v ronix $HOME/.local/bin/ronix
[ -f "$configfile" ] && print err "Configuration Exists, Not Copying..." || cp -v config $HOME/.config/ronix/config
print info "Installation Complete"
