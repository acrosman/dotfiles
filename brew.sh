#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew link coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget`
brew install wget

# Install more recent versions of some macOS tools.
brew install vim
brew install screen

# Install other useful binaries.
brew install dnsmasq
#brew install dark-mode
brew install git
brew install git-lfs
brew install htop
brew install imagemagick
brew install jmeter
brew install lua
brew install luarocks
brew install lynx
brew install mtr
brew install nmap
brew install p7zip
brew install pigz
brew install pngcheck
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install web100clt
brew install webkit2png
#brew install zopfli

# Browsers
brew cask install google-chrome
brew cask install firefox

# Other Tools I use a lot
brew cask install slack
brew cask install visual-studio-code  
brew cask install atom
brew cask install inkscape
brew cask install yakyak
brew cask install cyberduck 

# Install Docker
brew cask install docker

# Install the most recent versions of Python
brew install python

# PHP Tools
#brew install php7 # not currently needed but we'll see what the future holds
brew install composer

# OpenVPN and tunnelblick
brew install openvpn
brew cask install tunnelblick

# Meld
brew cask install meld

# Office
brew cask install libreoffice

# Toys
brew install freeciv
brew install simutrans
brew cask install 0-ad
brew cask install endless-sky

# Remove outdated versions from the cellar.
brew cleanup
