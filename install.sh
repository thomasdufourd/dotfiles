#!/bin/sh

echo "Setting up your Mac..."


read -p "Is oh-my-zshell installed? (y/n)?" choice
case "$choice" in 
  y|Y ) echo "Ok, let's continue";;
  n|N ) echo "You have to install Oh-my-Zsh";exit 0;;
  * ) echo "invalid";;
esac

echo " -> giving you the rights to change brew"
sudo chown -R $(whoami) /usr/local/*
#sudo chown -R $(whoami) /usr/local/var/Homebrew
#sudo chown -R $(whoami) /usr/local/homebrew

# Update Homebrew recipes
echo "First update brew"
brew update


# Install all our dependencies with bundle (See Brewfile)
echo "tap homebrew/bundle" 
brew tap homebrew/bundle
echo "brew bundle"
brew bundle


# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

# Set macOS preferences
# We will run this last because this will reload the shell
echo "running .macos"
source .macos

# finished installing
echo "Done with automatic install!"

# Just say which apps/programm should be installed manually
echo " "
echo "Following applications should be installed manually"
echo "--> install ExpressVpn"
