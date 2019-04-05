#!/bin/bash

# Brew is a command-line app package manager to download CLI apps/utilities (called formulas) or apps (called casks)
# Before running ensure execute permissions
# > chmod +x brew.sh
# > ./brew.sh
# Note: some cask apps require sudo. Do not run script as sudo, add password interactively

echo "brew.sh script started"

# Check for install, if not install it
if test ! "$(which brew)"; then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Echo brew version
echo "Brew version brew --version"
brew --version

# Update before install
brew update

# Run Brew bundle, which will install everything in the file "Brewfile"
brew bundle 

echo "Brew List:"
brew list

echo "Brew Cask List:"
brew cask list 

echo "brew.sh script finished"