#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
# At this time, these are focused on Python development, an attempt to get through the SICP book, and octopress
brew install autoconf git pcre texinfo automake gnu-sed pkg-config the_silver_searcher bash-completion libevent python
tmux cmake macvim rbenv unrar cscope maven readline watchman ctags mit-scheme ruby-build wget gdbm openssl sqlite xz

exit 0

