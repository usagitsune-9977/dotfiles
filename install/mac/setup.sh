#!/bin/sh

# Install command line tools
${HOME}/dotfiles/install/mac/install_cmdlinetools.sh

# Install homebrew
${HOME}/dotfiles/install/mac/install_homebrew.sh

# Install apps with homebrew
${HOME}/dotfiles/install/mac/brew.sh

# Make links from dotfiles to ${HOME}
${HOME}/dotfiles/install/mac/make_links.sh
