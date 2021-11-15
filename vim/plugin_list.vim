call plug#begin('~/.vim/plugged')

" tools

Plug 'mileszs/ack.vim'
Plug 'ap/vim-buftabline'
Plug 'neoclide/coc.nvim',             {'for': ['rust', 'toml'], 'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf',                  {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree',
Plug 'airblade/vim-rooter'
Plug 'mtth/scratch.vim',              {'on': 'Scratch'}

" languages

Plug 'guns/vim-clojure-static',     {'for': 'clojure'}
Plug 'elixir-lang/vim-elixir',      {'for': 'elixir'}
Plug 'fatih/vim-go',                {'for': 'go'}
Plug 'fatih/vim-hclfmt',            {'for': ['hcl', 'nomad', 'tf']}
Plug 'pangloss/vim-javascript',     {'for': 'javascript'}
Plug 'MaxMEllon/vim-jsx-pretty',    {'for': 'javascript'}
Plug 'peitalin/vim-jsx-typescript', {'for': ['tsx', 'typescript']}
Plug 'protocolbuffers/protobuf',    {'rtp': 'editors'}
Plug 'vim-ruby/vim-ruby',           {'for': 'ruby'}
Plug 'tpope/vim-endwise',           {'for': 'ruby'}
Plug 'rust-lang/rust.vim',          {'for': 'rust'}
Plug 'sl4m/swift.vim',              {'for': 'swift', 'branch': 'vim-only'}
Plug 'cespare/vim-toml',            {'for': 'toml'}
Plug 'leafgarland/typescript-vim',  {'for': ['tsx', 'typescript']}
Plug 'kana/vim-vspec',              {'for': 'vim'}

" misc

Plug 'takac/vim-hardtime'

call plug#end()
