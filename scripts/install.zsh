#!/bin/zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
echo "Installing Homebrew packages..."
xargs brew install < ~/dotfiles/brew/brew_formulaes.txt

# Install Homebrew casks
echo "Installing Homebrew casks..."
xargs brew install --cask < ~/dotfiles/brew/brew_casks.txt

