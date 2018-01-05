#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
#brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install dnsmasq
brew install dark-mode
brew install git
brew install git-lfs
brew install htop
brew install imagemagick --with-webp
brew install jmeter
brew install lua
brew install lynx
brew install mtr
brew install nmap
brew install openvpn
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
brew install zopfli

# Virtual Box
brew cask install virtualbox

# Install the most recent versions of Python
brew install python
brew install python3

# PHP Tools
brew install homebrew/php/composer

# OpenVPN and tunnelblick
brew cask install tunnelblick

# Meld
brew cask install meld

# Toys
brew install cowsays
brew install freeciv
brew install simutrans
brew cask install 0ad

# Remove outdated versions from the cellar.
brew cleanup
