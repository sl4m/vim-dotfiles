function! RustInitialise()
  let g:rustfmt_autosave = 1

  map <silent> <LocalLeader>r :RustTest<CR>
endfunction

autocmd! User rust.vim call RustInitialise()
