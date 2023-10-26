# ---------- .zshrc alias ----------
#
# add 'source ~/.zsh/aliases.zsh' to the end of '.zshrc' config
#
# **************************************************************

alias ze='vi ~/.zsh/aliases.zsh'

# ****** Merge Xresources ******
alias merge='xrdb -merge ~/.Xresources'


# ****** custom alias ******
alias df='duf'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias open="xdg-open"
alias vi='nvim'
alias sclock='loginctl lock-session'
alias zz='theme'
alias xx='cd && clear && pokemon'
alias cc='cd && clear && colorscripts'
alias pp='/$HOME/.custom_scriptx/pipes'
alias update='/usr/local/sbin/scriptx/sys_update.sh'
alias pokemon='/$HOME/.custom_scriptx/pokemon.sh'
alias pacmanghost='/$HOME/.custom_scriptx/pacman.sh'
alias dda='sudo dd if=/dev/zero of=/dev/sda bs=4M status=progress'
alias spoof='/usr/local/sbin/scriptx/spoof.sh'
alias rmspoof='/usr/local/sbin/scriptx/rmspoof.sh'
alias umount='sudo /usr/local/sbin/scriptx/umount.sh'
alias kush='~/.custom_scriptx/kushog.sh'
alias cheetah='~/.custom_scriptx/cheetAHpss.sh'
alias vpn='python3 /usr/local/sbin/scriptx/vpn_status.py'

alias ddiso='custom_ddiso'

custom_ddiso() {
    local src="$1"  
    local dest="$2" 

    if [ -z "$src" ] || [ -z "$dest" ]; then
        echo "Usage: ddiso <source_path> <destination_path>"
        return 1
    fi

    sudo dd if="$src" of="$dest" bs=4M status=progress
}



# ****** dmesg kernerl errors ******
alias derror='sudo dmesg | grep -i error'



# ****** journalctl aliases ******
alias jctl='sudo journalctl -u'               # View log output of active systemctl service
alias jctlerror='sudo journalctl -p 3 -xb'    # Show error messages from journalctl
alias jctllsboot='journalctl --list-boots'    # List boots recorded in journal
alias jctlboot='sudo journalctl -b'           # Show log entries related to your last boot
alias jctlpac='jctl pacman-updates.service'
alias jctlsshd='journalctl _COMM=sshd'
alias jctlnm='sudo journalctl -xe NM_CONNECTION=441945cc-6051-419a-bb1a-adeb5d197198 + NM_DEVICE=wlan0'

alias ilogrotate='sudo logrotate -v /etc/logrotate.conf '



# ****** systemctl aliases ******
alias sctlt2='sudo systemctl enable --now t2wifi.service'
alias sctl='sudo systemctl list-units --type service --all'  
alias sctlactive='sudo systemctl list-units --type=service'  
alias sctlenabled='sudo systemctl list-unit-files --state=enabled'
alias sctldr='sudo systemctl daemon-reload'



# ****** Change "ls" to "exa" ******
alias va='exa -la --color=always --group-directories-first' # lists hidden files + long format
alias vs='exa -a --color=always --group-directories-first'  # all files and dirslist all the services using the systemctl command regardless of their current status.
alias vl='exa -l --color=always --group-directories-first'  # long format
alias vt='exa -aT --color=always --group-directories-first' # tree listing
alias v='exa -a | egrep "^\."'



# ****** pacman and yay aliases ******
alias update='/usr/local/sbin/scriptx/sys_update.sh'
alias pg='sudo pacman -S'  
alias pacs='pacman -Ss'             
alias pu='pacman -Qu'                          
alias unlock='sudo rm /var/lib/pacman/db.lck'           
alias cleanup='sudo pacman -Rns $(pacman -Qtd)'         
alias pd='sudo pacman -Rns'                      
alias prmlib='sudo pacman -R $(comm -12 <(pacman -Qq | sort) <(pacman -Slq multilib | sort))'



# ****** neofetch ******
alias nf='cd && clear && nfp'
alias nfaf='neofetch --config ~/.config/neofetch/af++/config.conf'
alias nfbej='neofetch --config ~/.config/neofetch/bejkon/config.conf'
alias nfken='neofetch --config ~/.config/neofetch/kenielf/Kenielf.conf'
alias nfoz='neofetch --config ~/.config/neofetch/ozozFetch/ozozfetch2.conf'
alias nfp='neofetch --config ~/.config/neofetch/predatorfetch/config.conf'



# ****** blackArch ******
alias blackls='sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u'  
alias blackcat='sudo pacman -Sg | grep blackarch'                            
alias blackins='sudo pacman -S'                                           



# ****** Colorize grep output (good for log files) ******
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'



# ****** .ssh ******
alias start-sshagent='eval "$(ssh-agent -s)"'



# ****** ClamAV ******
alias scansys='sudo clamscan -riaol --quiet --bell /var/log/clamav/clamscan.log /'  # Scan all files on the system
alias scanrm='clamscan -rivo --remove --quiet --bell /home/$USER'                  # Scan user's home directory and remove infected files
alias scanlog='sudo clamscan -rivol --quiet /var/log/clamav/clamscan.log /home/'

# clamscan -ir /home/ | grep FOUND >> /var/log/clamav/scanreport.log"            # Move all affected files to a separate file for later analysis.



# ********** scripts ********
alias cpdf='cp /usr/local/sbin/scriptx/updatedf.sh ~/Documents/tech/git-repos/arcDotfi/scripts/'


alias cpscripts='for script in ~/.custom_scriptx/{cbonsai.sh,cheetAHpss.sh,kushog.sh,pacman.sh,pokemon.sh};
do sudo cp "$script" $HOME/.git-repos/repo_scripts; done'


alias cpsysfi='for script in /usr/local/sbin/scriptx/{BATstat.sh,omzupdate.sh,rmspoof.sh,spoof.sh,sys_update.sh,umount.sh,wifi.sh,vimrc_update.sh};
do sudo cp "$script" $HOME/.git-repos/sys_scriptx/; done'


alias colorscripts='script_list=(~/.custom_scriptx/colorscripts/*); script_to_run=${script_list[RANDOM % ${#script_list[@]}]}; source "$script_to_run"'



# ****** Git Aliases ******
alias ga='git add'
alias gaa='git add .'
alias gau='git add -u'
alias gb='git branch'
alias gbd='git branch -d'
alias gco='git checkout'
alias gcom='git commit -m'
alias gcl='git clone'
alias gdt='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git log'
alias gll='git log --oneline --decorate'
alias gm='git merge'
alias gpr='git pull --rebase'
alias gr='git remote'
alias grs='git reset'
alias gstat='git status'
alias gt='git tag'
alias gta='git tag -a'
alias gp='gpp pull'
alias gps='gpp push'

# Git Functions
gpp() {
  if [ $# -ne 3 ]; then
    echo "Usage: gpp <git_operation> <remote_name> <branch_name>"
    return 1
  fi

  git_operation="$1"
  remote_name="$2"
  branch_name="$3"

  case "$git_operation" in
    pull)
      git pull "$remote_name" "$branch_name"
      ;;
    push)
      git push "$remote_name" "$branch_name"
      ;;
    *)
      echo "Invalid git operation. Use 'pull' or 'push'."
      return 1
      ;;
  esac
}


# git remote add origin git@github.com:<username>/<repository_name>.git
#   "origin would be name of repo"
# git push -u origin main
#   "main" woulb be name of branch





# ****** updating configs ******
alias cpconfigs='cpkitty && cppolybar && cprofi && cpneofetch && cpxinitrc && cpzshrc && cpi3 && cpnvim && cppicom && cpaustart && cpssh && cpgit && cpgtk && cpxsettingsd && cpwofi && cpwaybar && cpqtile && cpdunst && cphypr && cpalacritty'

alias cpkitty='cp -rT ~/.config/kitty/ $HOME/.git-repos/arcDotfi/.configs/kitty'
alias cppolybar='cp -rT ~/.config/polybar/ $HOME/.git-repos/arcDotfi/.configs/polybar'
alias cprofi='cp -rT ~/.config/rofi/ $HOME/.git-repos/arcDotfi/.configs/rofi'
alias cpneofetch='cp -rT ~/.config/neofetch/ $HOME/.git-repos/arcDotfi/.configs/neofetch'
alias cpxinitrc='cp ~/.xinitrc $HOME/.git-repos/arcDotfi/.configs/.xinitrc'
alias cpzshrc='cp ~/.zshrc $HOME/.git-repos/arcDotfi/.configs/.zshrc'
alias cpi3='cp -rT ~/.config/i3/ $HOME/.git-repos/arcDotfi/.configs/i3'
alias cpnvim='cp -rT ~/.config/nvim/ $HOME/.git-repos/arcDotfi/.configs/nvim'
alias cppicom='cp -rT ~/.config/picom/ $HOME/.git-repos/arcDotfi/.configs/picom'
alias cpaustart='cp -rT ~/.config/autostart/ $HOME/.git-repos/arcDotfi/.configs/autostart'
alias cpssh='cp ~/.ssh/config $HOME/.git-repos/arcDotfi/.configs/ssh/config'
alias cpgit='cp ~/.gitconfig $HOME/.git-repos/arcDotfi/.configs/git/.gitconfig'
alias cpxsettingsd='cp -rT ~/.config/xsettingsd/ $HOME/.git-repos/arcDotfi/.configs/xsettingsd'
alias cpwofi='cp -rT ~/.config/wofi/ $HOME/.git-repos/arcDotfi/.configs/wofi'
alias cpwaybar='cp -rT ~/.config/waybar/ $HOME/.git-repos/arcDotfi/.configs/waybar'
alias cpqtile='cp -rT ~/.config/qtile/ $HOME/.git-repos/arcDotfi/.configs/qtile'
alias cpdunst='cp -rT ~/.config/dunst/ $HOME/.git-repos/arcDotfi/.configs/dunst'
alias cphypr='cp -rT ~/.config/hypr/ $HOME/.git-repos /arcDotfi/.configs/hypr'
alias cpalacritty='cp -rT ~/.config/alacritty/ $HOME/.git-repos/arcDotfi/.configs/alacritty'
alias cpwlogout='cp -rT ~/.config/wlogout/ $HOME/.git-repos/arcDotfi/.configs/wlogout'
alias cpsystemd='cp -rT ~/.config/systemd/ $HOME/.git-repos/arcDotfi/.configs/systemd'
alias cpswaylock='cp -rT ~/.config/swaylock/ $HOME/.git-repos/arcDotfi/.configs/swaylock'
alias cpgtk='copy_gtk_files'
copy_gtk_files() {
    cp ~/.config/gtkrc ~/Documents/tech/git-repos/arcDotfi/configs/
    cp ~/.config/gtkrc-2.0 ~/Documents/tech/git-repos/arcDotfi/configs/
    cp -rT ~/.config/gtk-3.0/ ~/Documents/tech/git-repos/arcDotfi/configs/gtk-3.0
    cp -rT ~/.config/gtk-4.0/ ~/Documents/tech/git-repos/arcDotfi/configs/gtk-4.0
}



