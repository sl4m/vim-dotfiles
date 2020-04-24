" taken from https://github.com/neoclide/coc.nvim#example-vim-configuration

function! CocInitialise()
  if !exists('g:did_coc_loaded')
    echo 'coc not installed!'
    return
  endif

  set nobackup
  set nowritebackup
  set updatetime=300
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  inoremap <silent><expr> <c-space> coc#refresh()

  if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
  else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  endif
endfunction

autocmd! User coc.nvim call CocInitialise()
