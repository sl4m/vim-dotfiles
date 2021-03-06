## Requirements

Note: This is compatible in both vim and nvim. If you prefer nvim, replace vim with nvim in the instructions below.

For MacOS, install the latest stable `vim` via homebrew:

    homebrew install vim

For Linux, install the latest vim using your distro's package manager

These dotfiles work on vim 8.0.1453 and up or nvim.

## Install

After cloning the project, run the following setup script for vim:

    ./setup_vim

WARNING: running `./setup_vim` will overwrite the existing .vim and .vimrc in your home directory.

### Requirements for coc.nvim plugin

[coc.nvim](https://github.com/neoclide/coc.nvim) plugin provides an intellisense engine plus full support for the language server protocol.

For MacOS, install `node` via homebrew:

    homebrew install node

For Linux, install the latest node (>= 8.10) using your distro's package manager

To enable Rust Analyzer extension for Rust:

    # Start vim
    vim
    :CocInstall coc-rust-analyzer

For other languages, browse [here](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions) for coc extensions.

## Notes

This uses [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins. It also uses Chris Kempson's [Tomorrow Night](https://github.com/chriskempson/vim-tomorrow-theme/) colorscheme by default.

## Credit

This was originally a fork of Drew Olsen's [vim_dotfiles](https://github.com/drewolson/vim_dotfiles). Some things were also taken from [here](https://bitbucket.org/sjl/dotfiles).
