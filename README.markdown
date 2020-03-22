## Requirements

For MacOS, install the latest stable `vim` via homebrew:

    homebrew install vim

For Linux, install the latest vim using your distro's package manager

These dotfiles work on vim8 and up.

## Install

After cloning the project, run the following:

    ./activate.rb

    # Start vim to install plugins
    vim
    :PlugInstall

WARNING: running `./activate.rb` will overwrite existing .vimrc and .vim you
have in your home directory.

### Setting up LSP (Language Server Protocol)

This vim setup contains plugins for LSP support.

* autozimu/LanguageClient-neovim
* Shougo/deoplete.nvim
* roxma/nvim-yarp
* roxma/vim-hug-neovim-rpc

At the moment, it's only configured to handle Rust, but more languages can be added as needed.

Follow the [instructions](https://rust-analyzer.github.io/manual.html#language-server-binary) to install the `rust-analyzer` binary.

### Troubleshooting

If there was an issue with the post-install for `deoplete` vim plugin, it might mean you have an older version of vim (this requires vim8) or your version of vim is not compiled with python3.
To verify you have python3 support, run this command in vim: `:echo has("python3")`. It should return `1`.

## Notes

This uses [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins. It also uses Chris Kempson's [Tomorrow Night](https://github.com/chriskempson/vim-tomorrow-theme/) colorscheme by default.

## Credit

This was originally a fork of Drew Olsen's [vim_dotfiles](https://github.com/drewolson/vim_dotfiles). Some things were also taken from [here](https://bitbucket.org/sjl/dotfiles).
