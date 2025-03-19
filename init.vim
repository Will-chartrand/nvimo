" Include keymap file
source ~/.config/nvim/plugs.vim 
source ~/.config/nvim/config.vim 
source ~/.config/nvim/maps.vim 
source ~/.config/nvim/snip/snippets.vim

"Refresh vim as soon as configurations have changed
set autoread
"au CursorHold * checktime

hi Normal guibg=NONE ctermbg=NONE

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

if (has("termguicolors"))
	set termguicolors
endif


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

" Flutter
  let g:lsc_auto_map = v:true

  " Enable Flutter menu
  "call FlutterMenu()

