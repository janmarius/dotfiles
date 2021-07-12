#        _                   __  __            _           
#       | | __ _ _ __       |  \/  | __ _ _ __(_)_   _ ___ 
#    _  | |/ _` | '_ \ _____| |\/| |/ _` | '__| | | | / __|
#   | |_| | (_| | | | |_____| |  | | (_| | |  | | |_| \__ \
#    \___/ \__,_|_| |_|     |_|  |_|\__,_|_|  |_|\__,_|___/
#   
#              _                     
#      _______| |__   ___ _ ____   __
#     |_  / __| '_ \ / _ \ '_ \ \ / /
#    _ / /\__ \ | | |  __/ | | \ V / 
#   (_)___|___/_| |_|\___|_| |_|\_/  


###############################################################################
###                             Man Page Colors                             ###
###############################################################################

# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)				# green
# Start bold mode
export LESS_TERMCAP_md=$(tput bold; tput setaf 2)				# green
# Start standout mode
export LESS_TERMCAP_so=$(tput bold; tput setaf 3)				# yellow
# End standout mode
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underlining
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1)	# red
# End Underlining
export LESS_TERMCAP_ue=$(tput sgr0)
# End all mode like so, us, mb, md, and mr
export LESS_TERMCAP_me=$(tput sgr0)
