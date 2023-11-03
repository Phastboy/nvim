call plug#begin("~/.local/share/nvim")

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " vim airline theme
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}  " Auto Completion
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'on': 'MarkdownPreviewToggle' } " Preview markdown in the browser
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " colorscheme

call plug#end()
