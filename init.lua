-- Include keymap file

-- Lua
require('maps')
require('plugins')

-- Vimscript
vim.cmd('source ~/.config/nvim/config.vim')
vim.cmd('source ~/.config/nvim/snip/snippets.vim')


-- Refresh vim as soon as configurations have changed
vim.o.autoread = true

-- "au CursorHold * checktime

vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

vim.g.rainbow_active = 1 --set to 0 if you want to enable it later via :RainbowToggle

if vim.fn.has("termguicolors") == 1 then
	vim.o.termguicolors = true
end


-- NERDTREE CONFIG
--===========================
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeIgnore = {} 
vim.g.NERDTreeStatusline = ''

-- Automaticaly close nvim if NERDTree is only thing left open
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  command = 'if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | q | endif'
})


-- Toggle
-- vim.keymap.set('n', '<C-b>', ':NERDTreeToggle<CR>', { silent = true })
--===========================

  -- Enable Flutter menu
  --call FlutterMenu()

