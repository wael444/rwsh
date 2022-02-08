# PREMADE CONFIG INSTALLED BY THE RONIX INSTALL SCRIPT.
# 
# Fallback wine binary incase one isn't set.
WINEBINARY="/usr/bin/wine"
PLAYER_WINEPREFIX="player"
STUDIO_WINEPREFIX="studio"

# WINEPREFIX-SPECIFIC CONFIG
# Replace "player" or "studio" with your desired wineprefix name (CaSe SeNsEtIvE)
# Set a wineprefix-specific wine binary here.
player_WINEBINARY="/usr/bin/wine"
# Put all your wine env for your wineprefix here
player_WINE_ENV=""

# WINEPREFIX-SPECIFIC CONFIG
# Replace "player" or "studio" with your desired wineprefix name (CaSe SeNsEtIvE)
# Set a wineprefix-specific wine binary here.
studio_WINEBINARY="/usr/bin/wine"
# Put all your wine env for your wineprefix here
studio_WINE_ENV=""

# First time setup (automatically runs the first time setup on ronix if this is true.)
FIRST_TIME="true"
