" Nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" auto save
augroup auto_save
  autocmd!
  autocmd InsertLeave,TextChanged * if &buftype == '' | silent write | endif
augroup END

