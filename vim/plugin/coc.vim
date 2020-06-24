" taken from https://github.com/neoclide/coc.nvim#example-vim-configuration

function! CocInitialise()
  if !exists('g:did_coc_loaded')
    echo 'coc not installed!'
    return
  endif

  set updatetime=300
  set shortmess+=c
  set signcolumn=yes
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

  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  nmap <leader>rn <Plug>(coc-rename)

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! FindCursorPopUp()
     let radius = get(a:000, 0, 2)
     let srow = screenrow()
     let scol = screencol()

     for r in range(srow - radius, srow + radius)
       for c in range(scol - radius, scol + radius)
         let winid = popup_locate(r, c)
         if winid != 0
           return winid
         endif
       endfor
     endfor

     return 0
   endfunction

   function! ScrollPopUp(down)
     let winid = FindCursorPopUp()
     if winid == 0
       return 0
     endif

     let pp = popup_getpos(winid)
     call popup_setoptions( winid,
           \ {'firstline' : pp.firstline + ( a:down ? 1 : -1 ) } )

     return 1
   endfunction

   nnoremap <expr> <c-d> ScrollPopUp(1) ? '<esc>' : '<c-d>'
   nnoremap <expr> <c-u> ScrollPopUp(0) ? '<esc>' : '<c-u>'
endfunction

autocmd! User coc.nvim call CocInitialise()
