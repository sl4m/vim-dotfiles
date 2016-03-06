call plug#begin('~/.vim/plugged')

" tools

Plug 'mileszs/ack.vim'
Plug 'wincent/Command-T'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'mtth/scratch.vim'

" languages

Plug 'guns/vim-clojure-static',  {'for': 'clojure'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'fatih/vim-go',             {'for': 'go'}
Plug 'vim-ruby/vim-ruby',        {'for': 'ruby'}
Plug 'rust-lang/rust.vim',       {'for': 'rust'}

" misc
Plug 'wikitopian/hardmode'

call plug#end()
