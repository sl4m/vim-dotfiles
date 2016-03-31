## Requirements

For Mac OS X, install the latest stable `vim` via homebrew:

    homebrew install vim

For Linux, install the latest vim using your distro's package manager

## Notes

This uses [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins. It also uses Chris Kempson's [Tomorrow Night](https://github.com/chriskempson/vim-tomorrow-theme/) colorscheme by default.

## Install

After cloning the project, run the following:

    ./activate.rb

    # Start vim to install plugins
    vim
    :PlugInstall

WARNING: running `./activate.rb` will overwrite existing .vimrc and .vim you
have in your home directory.

## Credit

This was originally a fork of Drew Olsen's [vim_dotfiles](https://github.com/drewolson/vim_dotfiles). Some things were also taken from [here](https://bitbucket.org/sjl/dotfiles).
