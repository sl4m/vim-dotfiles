## Requirements

For Mac OS X, install the latest stable `vim` via homebrew:

    homebrew install vim

For Linux, install the latest vim using your distro's package manager

## Install

After cloning the project, run the following:

    git submodule update --init
    ./activate.rb

    cd vim/bundle/command-t/ruby/command-t
    <switch to your system ruby>	
    ruby extconf.rb
    make clean
    make

Be warned, running `./activate.rb` will overwrite any existing .vimrc, .gvimrc or .vim/ files you
have in your home directory.

## Credit

This was originally a fork of Drew Olsen's [vim_dotfiles](https://github.com/drewolson/vim_dotfiles).
