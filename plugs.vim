call plug#begin('~/.config/nvim/plugged')
" colorschemes:
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'rmehri01/onenord.nvim'
Plug 'dracula/vim'

Plug 'bullets-vim/bullets.vim' " Auto bullets for lists

"Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'glepnir/dashboard-nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim' " tab bar

"Plug 'luochen1990/rainbow'

Plug 'sbdchd/neoformat' " formats many filetypes
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim'
""Plug 'alvan/vim-closetag'
""Plug 'tpope/vim-surround' " Surround words with characters

"Dart/Flutter
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'
"Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'

Plug 'nvim-lua/plenary.nvim'
"" Plug 'stevearc/dressing.nvim' " optional for vim.ui.select
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
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'
""Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'MeanderingProgrammer/render-markdown.nvim'

Plug 'nvim-mini/mini.nvim' " Indentation guides
" Plug 'stevearc/oil.nvim'
call plug#end()
