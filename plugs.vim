call plug#begin('~/.config/nvim/plugged')
" colorschemes:
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'rmehri01/onenord.nvim'

Plug 'bullets-vim/bullets.vim' " Auto bullets for lists

"Plug 'jiangmiao/auto-pairs'

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
Plug 'romgrk/barbar.nvim' " tab bar

"Plug 'luochen1990/rainbow'
Plug 'christoomey/vim-sort-motion'

Plug 'LoricAndre/OneTerm.nvim'
Plug 'sbdchd/neoformat' " formats many filetypes
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim'
Plug 'is0n/jaq-nvim' " runs code from inside nvim
Plug 'nathanaelkane/vim-indent-guides'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' " Surround words with characters

"Dart/Flutter
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'
"Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'

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
