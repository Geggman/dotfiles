# !/bin/bash

# colors
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

# Text effects
bold=$(tput bold)

if [ $EUID -ne 0 ] 
then 
  echo "$red[$bold!$reset$red] Please run the script as root"
  exit
fi

read -p "Username: " name

cd /home/$name


echo "$green[+]$reset $blue Installing some packages"
pacman -S bpytop fd neofetch nodejs npm fzf virt-manager alacritty zsh exa stow git tmux ripgrep xclip # Install some basic stuff

# Fetch dotfiles
git clone https://github.com/Geggman/dotfiles.github
cd dotfiles

# symlink everything using stow
echo "$green[+]$reset $blue Stowing everthing"
rm /home/$name/.bashrc
stow i3 tmux nvim alacritty bash zsh .scripts

cd /home/$name

# Install packer.nvim
echo "$green[+]$reset $blue Installing Packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install the status bar for i3
echo "$green[+]$reset $blue Installing bumblebee-status"
git clone git://github.com/tobi-wan-kenobi/bumblebee-status

# Install oh-my-zsh
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Stow zsh
echo "$green[+]$reset $blue Stowing zsh"

rm .zshrc
cd dotfiles 
stow zsh/

# Create Project folder
echo "$green[+]$reset $blue Creating projects folder"
mkdir /home/$name/projects/

# Install alacritty-themes
echo "$green[+]$reset $blue Installing alacritty-themes"
npm install -g alacritty-themes

# -------- INSTALL SUMNEKO LUA LSP --------

cd /home/$name

echo "$green[+]$reset $blue Installing Lua LSP"
# Clone
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive

# Build
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

# Finish the script
clear
echo "$GREEN ALL SET!"
neofetch


