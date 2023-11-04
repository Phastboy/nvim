" Nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" auto save
augroup auto_save
  autocmd!
  autocmd InsertLeave,TextChanged * if &buftype == '' | silent write | endif
augroup END

" Disable undesired built-in plugins and features
let g:loaded_2html_plugin = 1
let g:loaded_tohtml = 1
let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_matchit = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1
let g:loaded_tutor = 1
let g:loaded_rplugin = 1
let g:loaded_syntax = 1
let g:loaded_synmenu = 1
let g:loaded_optwin = 1
let g:loaded_compiler = 1
let g:loaded_bugreport = 1
let g:loaded_ftplugin = 1

