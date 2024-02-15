call plug#begin("~/.local/share/nvim")

Plug 'f-person/git-blame.nvim' " Git Blame
Plug 'FabijanZulj/blame.nvim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " vim airline theme
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}  " Auto Completion
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'nvim-tree/nvim-web-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' } " Preview markdown in the browser
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " colorscheme
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

call plug#end()
