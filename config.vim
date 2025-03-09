"Tab length
set tabstop=2
set shiftwidth=2
set expandtab
set linebreak
set softtabstop=2

autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab " Prevent ftplugin from setting tab width

let g:session_autosave = 'no'

syntax enable

" colorscheme sacredforest
colorscheme gruvbox
" Set background to clear
"hi Normal guibg=NONE ctermbg=NONE
"let g:airline_theme='onedark'
set rnu
set nu 

set scrolloff=15

set encoding=UTF-8

set completeopt=menuone
set shortmess+=c

set ignorecase smartcase


" Remove default maps for bullet-list plugin
let g:bullets_set_mappings = 0
" add in ctrl+Enter for making a new bullet point
let g:bullets_custom_mappings = [
      \ ['imap', '<C-CR>', '<Plug>(bullets-newline)'],
      \ ]


" Allow treesitter to collapse
"set foldmethod=indent
"set foldexpr=nvim_treesitter#foldexpr()

" Keep everything uncollapsed upon opening a file
autocmd BufReadPost,FileReadPost * normal zR

let g:indent_guides_guide_size = 1

" Integrated terminal configuration
" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" Autoclosing tags configs
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'

" Flutter/Dart
""lua << EOF
""  require("flutter-tools").setup {} -- use defaults
""EOF

" Coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ ]
