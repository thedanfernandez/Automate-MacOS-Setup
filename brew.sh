#!/bin/bash
# Use Brewfile bundle instead
brew bundle 

# # brew is a command-line app package manager to download CLI apps/utilities (called formulas) or apps (called casks)

# # Check for install, if not install it
# if test ! "$(which brew)"; then
#   echo "Installing homebrew"
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# fi

# # Echo brew version
# echo "Brew version brew --version"
# brew --version

# # Echo brew download location
# echo "Brew install download location: brew --cache"
# brew --cache

# # Update before install
# brew update

# # Developer Formula
# devformula=(
# aircrack-ng
# azure-cli
# bash-completion
# brew-cask-completion
# dotnet-sdk
# golang
# goenv
# gnu-sed
# hugo
# jq
# kubectx
# kubernetes-cli
# kubernetes-helm
# npm
# python3
# typescript
# yarn
# yarn-completion
# )

# # CLI & Utility
# cliformula=(
# baobab
# ffmpeg
# nmap
# shpotify
# wget
# youtube-dl
# )

# # Install Formulas
# for var in "${devformula[@]}"
#   do
#     brew install "${var}" --force
#   done
  
#   for var in "${cliformula[@]}"
#   do
#     brew install "${var}" --force
#   done

# # Install cask to install GUI apps
# brew install cask

# # Cask Apps & Utilities
# appcasks=(
# 1password
# airserver
# avast-security
# discord
# firefox
# geoip
# google-chrome
# kindle
# mas
# microsoft-office
# microsoft-teams
# pencil
# skype
# slack
# spectacle
# spotify
# steam
# vyprvpn
# )

# # Developer apps
# v=(
# dash
# docker
# iterm2
# gitter
# microsoft-azure-storage-explorer
# minikube
# nosqlclient
# postman
# skitch
# visual-studio-code
# )

# # Install Casks
# for var in "${appcasks[@]}"
#   do
#     brew cask install "${var}" --force
#   done
  
#   for var in "${devcasks[@]}"
#   do
#     brew cask install "${var}" --force
#   done

# # TODO Add mas install apps - requires login first
# # mas lucky todoist
# # mas lucky giphy
# # mas lucky slack
# # mas lucky "Microsoft Remote Desktop"
