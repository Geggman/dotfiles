# The .zshrc of Guy Levitzky
# Github: Geggman

# ***********
# * Exports *
# ***********

export ZSH="/home/$(whoami)/.oh-my-zsh/"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="nvim"
export ZSH_THEME="dpoggi"


plugins=(git zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh

# ***********
# * Aliases *
# ***********

# tmux aliases
alias tmux='tmux -2'
alias tmls="tmux list-sessions"
alias tmlk="tmux kill-server"

# kitty terminal
alias kitty-source="kitty -c /home/gegg/.config/kitty/kitty.conf"

# Cron alias
alias rootcron="sudo EDITOR=nvim crontab -e"
alias usercron="EDITOR=nvim crontab -e"

# Some source
alias sbash="source ~/.bashrc"
alias szsh="source ~/.zshrc"

# Vim is Neovim
alias vim='nvim'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# 'ls' is 'exa' now
alias ls='exa -al --color=always --group-directories-first --icons'
alias la='exa -a --color=always --group-directories-first --icons'
alias l.='exa -a | egrep "^\."'

# Grep Color
alias grep='rg --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'

# Shutdown/Reboot
alias ssn='sudo shutdown now'
alias sr='sudo reboot'

# Check win10 vm log
alias win10log='sudo bat /var/log/libvirt/qemu/win10.log'

# youtube-dl
alias yta-mp3='youtube-dl --extract-audio --audio-format mp3'
alias yta-m4a='youtube-dl --extract-audio --audio-format m4a'

# Switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# Git automation script
alias gitauto="~/dotfiles/.scripts/.scripts/git-automation.sh"

# Fix the displays
alias fixd='xrandr --output DP-1 --left-of HDMI-0 --output DVI-D-0 --right-of HDMI-0'

# python3? more like p3
alias p3='python3'

# bat cool
alias cat="bat"

# kickoff.sh
alias ko="bash ~/.scripts/kickoff.sh"

# shred is more secure
alias rmshred="shred -uv"

# luamake
alias luamake=/home/guy/.config/nvim/lua-language-server/3rd/luamake/luamake

# ***************
# *  Functions  *
# ***************

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



# ***************
# * Other Stuff *
# ***************

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
