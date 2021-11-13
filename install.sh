sudo pacman -S alacritty zsh stow git tmux ripgrep xclip # Install some basic stuff

# symlink everything using stow
rm ~/.bashrc
stow i3 tmux nvim alacritty bash zsh

cd $HOME

# Install packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install the status bar for i3
git clone git://github.com/tobi-wan-kenobi/bumblebee-status

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


