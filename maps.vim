" Leader key set to space
let mapleader = "\<Space>"
nnoremap <Leader><Space> :Files<CR>
nnoremap <Leader>/ :RG<CR>
"Map j and k such that you may navigate soft-wrapped lines with the same keys
" as you would normal lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Relaod init.vim
nnoremap <leader>sv :source init.vim<CR>

" BARBAR TAB MANAGER
"============================
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-w> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-TAB>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <leader>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <leader>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <leader>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <leader>bw :BufferOrderByWindowNumber<CR>

map <leader><TAB> <C-^>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"
"============================

nnoremap <silent> <C-A-f>    :Neoformat<CR>

" For Lspsaga
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
noremap <silent>K :Lspsaga hover_doc<CR>

"nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

nnoremap <silent> gs :Lspsaga signature_help<CR>

" vsplit
nnoremap <C-A-s> :vsplit<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h


" tnoremap <A-j> <C-\><C-n><C-w>j
" tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <silent> <C-i> :IndentGuidesToggle <CR>

" Move lines up or down
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv

" Ctrl-s to save
  noremap <silent> <C-S>          :update<CR>
  vnoremap <silent> <C-S>         <C-C>:update<CR>
  inoremap <silent> <C-S>         <C-O>:update<CR>

" Toggle autoclosing brackets
  noremap <silent> <C-_>          :CloseTagToggleBuffer<CR>

" <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" COC
""""""""""""""""""""""""""""""""""""""""
" <CR>: completion
  "let g:coc_snippet_next = '<TAB>'
  "let g:coc_snippet_prev = '<S-TAB>'

  inoremap <expr><CR> pumvisible() ? '<C-y>' : (coc#pum#visible() ? coc#_select_confirm() : "\<CR>")

  " Mappings for CoCList

  " Show all diagnostics.
  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions.
  nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
  " Show commands.
  nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document.
  nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
  " Search workspace symbols.
  nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list.
  nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>c

""""""""""""""""""""""""""""""""""""""""

" PREVENT CTRL+z FROM BREAKING THE NEOVIM INSTANCE (mapped to UNDO (u))
  nnoremap <C-z> u
  inoremap <C-z> <C-O>u
  vnoremap <C-z> u

" Redo functionality
  nnoremap <C-S-z> <C-r>
  inoremap <C-S-z> <C-O><C-r>
  vnoremap <C-S-z> <C-r>

" Allow CTRL+BackSpace to delete whole word, and CTRL+SHIFT+BS to delete word
" containing special characters
  inoremap <C-w> <C-\><C-o>dB
  inoremap <C-BS> <C-\><C-o>db


" Coc go to definition map
  nmap <silent> gd <Plug>(coc-definition)

" Flutter Coc trigger actions while on a widget
  nmap <silent><leader>ca <Plug>(coc-codelens-action)
  vmap <silent><leader>a  <Plug>(coc-codeaction-selected)
  nmap <silent><leader>a  <Plug>(coc-codeaction)

" VSnip Snippet Maps


" Flutter
  " Open code actions using the default lsp UI, if you want to change this please see the plugins above
  nnoremap <leader>ca <Cmd>lua vim.lsp.buf.code_action()<CR>

  " Some of these key choices were arbitrary;
  " it's just an example.
  nnoremap <leader>fa :FlutterRun<cr>
  nnoremap <leader>fq :FlutterQuit<cr>
  nnoremap <leader>fr :FlutterHotReload<cr>
  nnoremap <leader>fR :FlutterHotRestart<cr>
  nnoremap <leader>fD :FlutterVisualDebug<cr>

" Show documentation with shift K

  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

" jump forward or backward
"imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
"smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
"imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
"smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

