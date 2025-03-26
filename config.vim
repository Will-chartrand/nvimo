"Tab length
set tabstop=2
set shiftwidth=2
set expandtab
set linebreak
set softtabstop=2

autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab " Prevent ftplugin from setting tab width

let g:session_autosave = 'no'

" Remove annoying message
let g:session_autoload = 'no'

syntax enable

" colorscheme sacredforest
colorscheme onedark

" Set background to clear
hi Normal guibg=NONE ctermbg=NONE

"let g:airline_theme='onedark'

set rnu
set nu 

set scrolloff=15

set encoding=UTF-8

set completeopt=menuone
set shortmess+=c

" Paste from global clipboard
set clipboard+=unnamedplus

set ignorecase smartcase

filetype indent on

" Go to the last cursor location when a file is opened, unless this is a
" git commit (in which case it's annoying)
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
        \ execute("normal `\"") |
    \ endif

" Remove default maps for bullet-list plugin
let g:bullets_set_mappings = 0
" add in ctrl+Enter for making a new bullet point
let g:bullets_custom_mappings = [
      \ ['imap', '<C-CR>', '<Plug>(bullets-newline)'],
      \ ]


" Set of pairs which will be autoclosed
let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

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

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd TermOpen * setlocal winfixheight

" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" Autoclosing tags configs
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'

" Coc config
let g:coc_global_extensions = [
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-go',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ 'coc-texlab',
  \ ]

" Open help dialog in new buffer in the same window
command! -nargs=1 -complete=help H :enew | :set buftype=help | :h <args>

" Make sure terminal always scrolls to the bottom
autocmd BufEnter,WinEnter term://* startinsert

" Flutter/Dart
""lua << EOF
""  require("flutter-tools").setup {} -- use defaults
""EOF

