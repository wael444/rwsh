# PREMADE CONFIG INSTALLED BY THE RONIX INSTALL SCRIPT.
# 
# Fallback wine binary incase one isn't set.
FALLBACK_WINEBINARY="/usr/bin/wine"
PLAYER_WINEPREFIX="player"
STUDIO_WINEPREFIX="studio"

# WINEPREFIX-SPECIFIC CONFIG
# Replace "player" or "studio" with your desired wineprefix name (CaSe SeNsEtIvE)
player_config() {
	# Set a wineprefix-specific wine binary here.
	WINEBINARY="shartyr"
	# Put all your wine env for your wineprefix here
	WINE_ENV=""
}

# WINEPREFIX-SPECIFIC CONFIG
# Replace "player" or "studio" with your desired wineprefix name (CaSe SeNsEtIvE)
studio_config() {
	# Set a wineprefix-specific wine binary here.
	WINEBINARY=""
	# Put all your wine env for your wineprefix here
	WINE_ENV=""
}
# First time setup (automatically runs the first time setup on ronix if this is true.)
FIRST_TIME="true"
