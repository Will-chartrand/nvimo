
-- local status, mason = pcall(require, "mason")
-- if (not status) then return end
-- local status2, lspconfig = pcall(require, "mason-lspconfig")
-- if (not status2) then return end
--
-- mason.setup({});
--
-- lspconfig.setup {
--   ensure_installed = { "sumneko_lua", "tailwindcss" },
-- }
--
-- local nvim_lsp = require "lspconfig"
-- nvim_lsp.tailwindcss.setup {}

-- require('oil').setup()

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'



  use 'joshdick/onedark.vim'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'nvim-treesitter/nvim-treesitter'
  use 'ryanoasis/vim-devicons'
  use 'preservim/nerdtree'

  use { 'junegunn/fzf', run = './install --all' }
  use 'junegunn/fzf.vim'

  use 'BurntSushi/ripgrep'

  -- use { 'neoclide/coc.nvim', branch = 'release' }

  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim' 

  use 'sbdchd/neoformat'


  use 'xolox/vim-session'
  use 'xolox/vim-misc'

  use 'MeanderingProgrammer/render-markdown.nvim'
  use 'nvim-mini/mini.nvim'

  use {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup({
        default_file_explorer = false,
        buf_options = {
          buflisted = true
        }
      })
    end
  }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
