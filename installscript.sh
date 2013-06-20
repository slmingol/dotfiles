#! /bin/bash
# This should be run as a normal user!
# This is designed to work on Fedora 19

# Update everything
sudo yum update -y

# Install other useful things
sudo yum install \
  vim \
  zsh \
  tmux \
  git \
  mongodb \
  nodejs \
  npm \
  python-pip \
  python-ipython \
  python-psutil \
  https://dl.google.com/linux/direct/google-chrome-unstable_current_x86_64.rpm \
  -y

# Configure Git
git config --global push.default simple
git config --global credential.helper store

# Clone in Powerline
pip install --user git+git://github.com/Lokaltog/powerline

# Dotfiles
git clone https://github.com/Hoverbear/dotfiles.git ~/dotfiles
mkdir -p ~/.config
mv ~/.config/powerline ~/powerline_old
ln -s ~/dotfiles/config/powerline ~/.config/powerline
mv ~/.vimrc ~/vimrc_old
ln -s ~/dotfiles/vimrc ~/.vimrc
mv ~/.tmux.conf ~/tmux.conf_old
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
mv ~/.zshrc ~/zshrc_old
ln -s ~/dotfiles/zshrc ~/.zshrc
mv ~/.bashrc ~/bashrc_old
ln -s ~/dotfiles/bashrc ~/.bashrc

# Font
mkdir -p ~/.fonts/DejaVu\ Sans\ Mono\ for\ Powerline
cp ~/dotfiles/fonts/DejaVu\ Sans\ Mono\ for\ Powerline.ttf ~/.fonts/DejaVu\ Sans\ Mono\ for\ Powerline/DejaVu\ Sans\ Mono\ for\ Powerline.ttf 
fc-cache -v

# Change Shell
chsh -s /bin/zsh
