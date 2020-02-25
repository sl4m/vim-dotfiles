call plug#begin('~/.vim/plugged')

" tools

Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'scrooloose/nerdtree'
Plug 'mtth/scratch.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'reedes/vim-wordy'

" languages

Plug 'guns/vim-clojure-static',  {'for': 'clojure'}
Plug 'elixir-lang/vim-elixir',   {'for': 'elixir'}
Plug 'fatih/vim-go',             {'for': 'go'}
Plug 'fatih/vim-hclfmt',         {'for': ['hcl', 'nomad', 'tf']}
Plug 'pangloss/vim-javascript',  {'for': 'javascript'}
Plug 'mxw/vim-jsx',              {'for': 'javascript'}
Plug 'vim-ruby/vim-ruby',        {'for': 'ruby'}
Plug 'tpope/vim-endwise',        {'for': 'ruby'}
Plug 'rust-lang/rust.vim',       {'for': 'rust'}
Plug 'sl4m/swift.vim',           {'for': 'swift', 'branch': 'vim-only'}
Plug 'cespare/vim-toml',         {'for': 'toml'}
Plug 'kana/vim-vspec',           {'for': 'vim'}

" misc

Plug 'takac/vim-hardtime'

call plug#end()
