#        _                   __  __            _           
#       | | __ _ _ __       |  \/  | __ _ _ __(_)_   _ ___ 
#    _  | |/ _` | '_ \ _____| |\/| |/ _` | '__| | | | / __|
#   | |_| | (_| | | | |_____| |  | | (_| | |  | | |_| \__ \
#    \___/ \__,_|_| |_|     |_|  |_|\__,_|_|  |_|\__,_|___/
#                                                          
#              _              
#      _______| |__  _ __ ___ 
#     |_  / __| '_ \| '__/ __|
#    _ / /\__ \ | | | | | (__ 
#   (_)___|___/_| |_|_|  \___|
#
# Reloading the .zshrc: source ~/.zshrc


###############################################################################
###                              Quotes Script                              ###
###############################################################################

. ~/.scripts/cowsay-terminal.sh





###############################################################################
###                                 Aliases                                 ###
###############################################################################

alias v="nvim"
alias g.c="cd ~/.config"
alias gdo="cd ~/Downloads"
alias gde="cd ~/Desktop"
alias god="cd /home/onedrive"
alias gog="cd /home/onedrive/Guides"





###############################################################################
###                                 Exports                                 ###
###############################################################################

export VISUAL=nvim





###############################################################################
###                           Oh My Zsh - Settings                          ###
###############################################################################

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# To hide user@hostname
DEFAULT_USER=$USER
prompt_context() {}

# Plugins
plugins=(
  git
)


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13


ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
#source ~/.oh-my-zsh/agnoster.zsh-theme
#source ~/.oh-my-zsh/bullet-train.zsh-theme
source ~/.oh-my-zsh/oxide.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh





###############################################################################
###                                 vi-mode                                 ###
###############################################################################

bindkey -v









export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi







