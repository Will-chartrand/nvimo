" Use lua init file aswell
"
"lua require('config')

call plug#begin('~/.config/nvim/plugged')
" colorschemes:
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'rmehri01/onenord.nvim'

Plug 'bullets-vim/bullets.vim' " Auto bullets for lists

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree-project-plugin'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree' " Line 45 of project.vim changed 0 to ?

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'

Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'glepnir/dashboard-nvim'
"Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'b3nj5m1n/kommentary'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

"Plug 'luochen1990/rainbow'
Plug 'christoomey/vim-sort-motion'

Plug 'LoricAndre/OneTerm.nvim'
Plug 'sbdchd/neoformat' 
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim'
Plug 'is0n/jaq-nvim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

Plug 'nvim-lua/plenary.nvim'
Plug 'stevearc/dressing.nvim' " optional for vim.ui.select
"Plug 'akinsho/flutter-tools.nvim'

"Persistence
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Snippet and Code Completion
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'
"Plug 'natebosch/dartlang-snippets'
call plug#end()

" Remove annoying message
:let g:session_autoload = 'no'


"Refresh vim as soon as configurations have changed
"set autoread
"au CursorHold * checktime

hi Normal guibg=NONE ctermbg=NONE

let g:coc_global_extensions = ['coc-emmet', 'coc-css',  'coc-go', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver'] 
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

if (has("termguicolors"))
	set termguicolors
endif

" Include keymap file
source ~/.config/nvim/maps.vim 
source ~/.config/nvim/config.vim 

" NERDTREE CONFIG
"===========================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"===========================

" FILE SEARCH CONFIG
" Fuzzy finder (find files)
"===========================
nnoremap <S-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
"===========================

" Paste from global clipboard
set clipboard+=unnamedplus

" Flutter
  let g:lsc_auto_map = v:true

  " Enable Flutter menu
  "call FlutterMenu()

