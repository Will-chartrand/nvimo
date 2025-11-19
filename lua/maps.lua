vim.g.mapleader = " "

vim.keymap.set('n', '<Leader>f', vim.cmd.Files) -- fuzzyfind files
vim.keymap.set('n', '<Leader>/', vim.cmd.RG) -- ripgrep for strings in files of directory tree


-- Make it so curly braces auto return and indent
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O')
vim.keymap.set('i', '(<CR>', '(<CR>)<Esc>O')

-- Go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)


----
-- File Explorer
----
-- Open File Explorer
-- vim.keymap.set('n', '<C-b>', vim.cmd.Lex)
vim.keymap.set("n", "<C-b>", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })



-- move up and down through wrapped lines
vim.keymap.set("n", "j", function()
  return vim.v.count > 0 and "j" or "gj"
end, { expr = true, silent = true })

vim.keymap.set("n", "k", function()
  return vim.v.count > 0 and "k" or "gk"
end, { expr = true, silent = true })


-- BARBAR TAB MANAGER
--============================
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', ':BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', ':BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', ':BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', ':BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', ':BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', ':BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', ':BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', ':BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', ':BufferLast<CR>')

-- Close buffer
vim.keymap.set('n', '<A-w>', '<cmd>BufferClose!<cr>', { silent = true })

-- Wipeout buffer
--                          :BufferWipeout<CR>
-- Close commands
--                          :BufferCloseAllButCurrent<CR>
--                          :BufferCloseAllButPinned<CR>
--                          :BufferCloseBuffersLeft<CR>
--                          :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
vim.keymap.set('n', '<leader>d', vim.cmd.BufferPick)

vim.keymap.set('n', '<leader><TAB>', '<C-^>')


vim.keymap.set('n', '<C-A-f>', vim.cmd.Neoformat, { silent = true })

vim.keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', { silent = true })


-- Move lines up or down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Ctrl-s to save
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', vim.cmd.update)


-- Reload init.vim
vim.keymap.set('n', '<Leader>r', ':source ~/.config/nvim/init.lua<CR>')

-- <TAB>: completion.
-- inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
-- inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"


-- PREVENT CTRL+z FROM BREAKING THE NEOVIM INSTANCE (mapped to UNDO (u))
vim.keymap.set({ 'n', 'v' }, '<C-z>', 'u')
vim.keymap.set('i', '<C-z>', '<C-O>u')

-- Redo functionality
vim.keymap.set({ 'n', 'v' }, '<C-Z>', 'C-r')
vim.keymap.set('i', '<C-Z>', '<C-O><C-r>')

-- Allow CTRL+BackSpace to delete whole word, and CTRL+SHIFT+BS to delete word
-- containing special characters
vim.keymap.set('i', '<C-w>', '<C-\\><C-o>dB')
vim.keymap.set('i', '<C-BS>', '<C-\\><C-o>db')

-- Toggle spell-check
vim.keymap.set('n', '<M-c>', ':set spell! spelllang=en_us<CR>')




-- Define the terminal-opening function
local function open_terminal()
  vim.cmd('split term://bash')
  vim.cmd('resize 5')
  -- Map <Esc> to exit terminal mode, buffer-local
  vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = true })
end

-- Map <Leader>pr to open terminal and run pdflatex watcher
vim.keymap.set('n', '<Leader>pr', function()
  open_terminal()
  vim.cmd([[call feedkeys("ls *.tex | entr -n pdflatex *.tex\r<C-\><C-n><C-w><C-w>")]])
end, { silent = true })

-- Map <Leader>po to open PDF silently
vim.keymap.set('n', '<Leader>po', function()
  vim.fn.system('xdg-open *.pdf >/dev/null 2>&1 & disown')
end, { silent = true })

