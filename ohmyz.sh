#!/bin/bash

# Details: https://ohmyz.sh
#   Before running ensure file is executable
# > chmod +x ohmyz.sh
# > ./ohmyz.sh


echo "Downloading ZSH"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Downloading Powerline Fonts"
# Patch Powerline Fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Change the default font to one of these fontsgs: https://github.com/powerline/fonts#font-families in your terminal"

echo "Replace/Update file ~/.zshrc"
