# The .zshrc of Guy Levitzky
# Github: GuyLevitzky

#  ==========    ||
# ||             ||
# ||  =========  ||
# ||         ||  ||
#   ==========    =========




# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ***********
# * Aliases *
# ***********

# Git bare repo for my dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Navigate to Projects folder
alias Projects='cd ~/Projects/'

# vim
alias vim=nvim

# Pacman and Yay
alias pacs='sudo pacman -S'
alias pacr='sudo pacman -R'
alias pacsyu='sudo pacman -Syyu'
alias yaysua='yay -Sua --noconfirm'
alias yaysyu='yay -Syu --noconfirm'

# 'ls' is 'exa' now
alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# Grep Color
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
alias addup='git add -u'
alias branch='git branch'
alias addall='git add .'
alias checkout='git checkout'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'

# Shutdown/Reboot
alias ssn='sudo shutdown now'
alias sr='sudo reboot'

# youtube-dl
alias yta-mp3='youtube-dl --extract-audio --audio-format mp3'
alias yta-m4a='youtube-dl --extract-audio --audio-format m4a'

# Switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# Source .zshrc or .bashrc

alias szsh="source /home/guy/.zshrc"
alias sbash="source /home/guy/.bashrc"

# List all my gpg keys
alias gpglist="gpg --list-secret-keys --keyid-format LONG"

# git-automation
alias gitauto="~/.dotfiles/.scripts/.scripts/git-automation.sh"

# Monitor-Fix (NEED TO CHANGE IT LATER TO SUPPORT 3 MONITORS)
alias fix-displays='xrandr --output DP-1 --left-of HDMI-0 --output DVI-D-0 --right-of HDMI-0'

# Start tmux with unicode support 
alias tmux="tmux -u"

# ***************
# * Other Stuff *
# ***************

# EXTRACT ARCHIVE FILES
# usage: ex <file>

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# fetch-master 6000
#fm6000 -r -c magenta


# Prompt
PS1='\W \$ '
eval "$(starship init bash)"

