# vim:fileencoding=utf-8:foldmethod=marker

#############################################################
#
#  ███████╗███████╗██╗  ██╗██████╗  ██████╗
#  ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#    ███╔╝ ███████╗███████║██████╔╝██║     
#   ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#  ███████╗███████║██║  ██║██║  ██║╚██████╗
#  ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#                                          
#############################################################
#===============================
#  ____  _  _     ____  _  _ 
# (  _ \( \/ )___(  _ \( \/ )
#  )   / )  ((___))___/ \  / 
# (_)\_)(_/\_)   (__)   (__) 
#===============================


# --------------------------------------------------

# Exports and Options {{{
# ----------- zsh options ----------
bindkey -e
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=2
# export GDK_SCALE=2
# export GDK_DPI_SCALE=1.0
export VISUAL=nvim
export PATH="$HOME/bin:/usr/local/bin:$PATH"      
export ZSH="$HOME/.oh-my-zsh"   


setopt COMPLETE_ALIASES
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt appendhistory
setopt autocd
setopt extendedglob
setopt incappendhistory
setopt nomatch
setopt notify
setopt sharehistory

# }}}

# --------------------------------------------------

#: gen config {{{
# ---------- zsh specific tweaks ----------

# to know which specific one was loaded, run: echo $RANDOM_THEME

#ZSH_THEME="murilasso"                          
ZSH_THEME="random"                          

#ZSH_THEME_RANDOM_CANDIDATES=( murilasso, cloud, gallois, afowler, sonicradish, amuse, kiwi, daveverwer, muse, lambda )

DISABLE_AUTO_TITLE="true"                   # Uncomment line to disable auto-setting terminal title.
DISABLE_UNTRACKED_FILES_DIRTY="true"        # makes repo status check for large repos much faster
HIST_STAMPS="yyyy-mm-dd"                    # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
zstyle ':omz:update' mode reminder          # just remind me to update when it's time
zstyle ':omz:update' frequency 7            # Uncomment the following line to change how often to auto-update (in days).



# zstyle ':omz:update' mode disabled        # disable automatic updates
# zstyle ':omz:update' mode auto            # update automatically without asking
# DISABLE_MAGIC_FUNCTIONS="true"            # Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_LS_COLORS="true"                  # Uncomment the following line to disable colors in ls. 
# CASE_SENSITIVE="true"                     # Uncomment to use case-sensitive completion.
# HYPHEN_INSENSITIVE="true"                 # Uncomment for hyphen-insensitive completion, CASE_SENSITIVE must be off. _ and - will be interchangeable.
# ENABLE_CORRECTION="true"                  # Uncomment to enable command auto-correction.
# ZSH_CUSTOM=/path/to/new-custom-folder     # another custom folder than $ZSH/custom?

#: }}}

# --------------------------------------------------

#: plugins {{{
# ----------- plugins --------------

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    fzf
    aliases
    z
    git
    ufw
    colorize
    zbell
    history
    sublime
    history-substring-search
    zsh-autosuggestions
    colored-man-pages
    zsh-syntax-highlighting
    systemd
    themes
    zsh-interactive-cd
)

#: }}}

# --------------------------------------------------

#: user config {{{

# ---------- User configuration ----------

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


#: }}}

# --------------------------------------------------

#: other {{{

# The following lines were added by compinstall
zstyle :compinstall filename '/$HOME/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

#: }}}

# --------------------------------------------------




# ------ SOURCES ------
source $ZSH/oh-my-zsh.sh
source ~/.zsh/aliases.zsh


#Display Pokemon
# pokemon-colorscripts --no-title -r 1,3,6


#to display pacman logo on terminal startup
#~/.custom_scriptx/pacman.sh

#Display random gifs
# kitten icat --align left $(find $HOME/Documents/wallpaper/gifs/ -name "*.gif" | sort -R | head -1)

#Colorscripts
cc


# --------------------------------------------------


# Created by `pipx` on 2023-10-11 03:02:38
export PATH="$PATH:/home/rx-py/.local/bin"
