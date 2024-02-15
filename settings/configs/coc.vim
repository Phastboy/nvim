let g:coc_global_extensions = [
            \ 'coc-json', 'coc-pairs', 'coc-diagnostic', 'coc-spell-checker', 'coc-highlight', 'coc-lists',
            \ 'coc-zi', 'coc-translator', 'coc-emoji', 'coc-dictionary',
            \ 'coc-react-refactor', 'coc-html', 'coc-unocss', 'coc-cssmodules', 'coc-html-css-support', 'coc-emmet', '@yaegassy/coc-tailwindcss3',
            \ 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-biome',
            \ 'coc-pyright', 'coc-clangd',
            \ 'coc-sh',
            \ 'coc-copilot',
            \ 'coc-git', 'coc-yaml',
            \ 'coc-snippets'
            \ ]
" Keymappings
" <cr> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" movement
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
