set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set noshowmode
set termguicolors
set encoding=utf-8
set nobackup nowritebackup
set noswapfile
set cursorline
let g:python3_host_prog = '~/myenv/bin/python3.11'

source $HOME/.config/nvim/settings/plugins/plugins.vim
source $HOME/.config/nvim/settings/configs/airline.vim
source $HOME/.config/nvim/settings/configs/coc.vim
source $HOME/.config/nvim/settings/configs/others.vim
colorscheme catppuccin
