call plug#begin('~/.vim/plugged')

" tools

Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'mtth/scratch.vim'

" languages

Plug 'guns/vim-clojure-static',  {'for': 'clojure'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'fatih/vim-go',             {'for': 'go'}
Plug 'fatih/vim-hclfmt',         {'for': ['hcl', 'nomad', 'tf']}
Plug 'vim-ruby/vim-ruby',        {'for': 'ruby'}
Plug 'rust-lang/rust.vim',       {'for': 'rust'}
Plug 'kana/vim-vspec',           {'for': 'vim'}

" misc

Plug 'wikitopian/hardmode'

call plug#end()
