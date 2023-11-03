let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pairs', 'coc-zi', 'coc-translator', 'coc-diagnostic', '@hexuhua/coc-copilot', 'coc-sh', 'coc-webview', 'coc-markdown-preview-enhanced', 'coc-dictionary', 'coc-emmet', 'coc-ultisnips', 'coc-snippets', 'coc-spell-checker', 'coc-highlight', 'coc-prettier', '@yaegassy/coc-marksman', 'coc-html', 'coc-markmap', 'coc-unocss', 'coc-cssmodules', 'coc-yaml', 'coc-html-css-support',
            \ 'coc-pyright', 'coc-emoji', 'coc-tsserver', 'coc-eslint', 'coc-lists', 'coc-clangd', 'coc-chatgpt', 'coc-lightbulb', 'coc-react-refactor', '@yaegassy/coc-tailwindcss3', 'coc-biome'
            \ ]
" Keymappings
" <cr> to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" movement
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
