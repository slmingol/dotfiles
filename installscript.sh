#! /bin/bash
# This should be run as a normal user!
# This is designed to work on Fedora 19

# Update everything
sudo yum update -y

# Install flash player
sudo yum install http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm -y
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
sudo yum install flash-plugin -y

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
  -y

# Configure Git
git config --global push.default simple

# Clone in Powerline
pip install --user git+git://github.com/Lokaltog/powerline

# Dotfiles
git clone https://github.com/Hoverbear/dotfiles.git dotfiles
