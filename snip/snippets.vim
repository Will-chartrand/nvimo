set nocompatible
filetype plugin on

let mapleader = "\<Space>"

" Wrap stuff
nnoremap ;" wbcw"<Esc>pa"
nnoremap ;' wbcw'<Esc>pa'
nnoremap ;{ wbcw{<Esc>pa}
nnoremap ;( wbcw(<Esc>pa)
nnoremap ;b wbcw(<Esc>pa)
nnoremap ;[ wbcw[<Esc>pa]
nnoremap ;$ WBcW$<Esc>pa$

vnoremap ;" c"<Esc>pa"
vnoremap ;' c'<Esc>pa'
vnoremap ;{ c{<Esc>pa}
vnoremap ;( c(<Esc>pa)
vnoremap ;b c(<Esc>pa)
vnoremap ;[ c[<Esc>pa]
vnoremap ;$ c$<Esc>pa$

" -------------
" Html
" -------------
autocmd FileType html nnoremap <Space><Space> /<++><Enter>"_c4l
autocmd FileType html nnoremap ;wb wbcw<b><Esc>pa</b>
autocmd FileType html nnoremap ;wi wbcw<em><Esc>pa</em>
autocmd FileType html nnoremap ;wu wbcw<u><Esc>pa</u>

autocmd FileType html vnoremap ;wb  c<b><Esc>pa</b><Esc>
autocmd FileType html vnoremap ;wi  c<em><Esc>pa</em><Esc>
autocmd FileType html vnoremap ;wu  c<u><Esc>pa</u><Esc>


" Latex snippets
autocmd FileType tex inoremap ;def \noindent \textbf{Definition.}%<CR>\hspace{0.5em}%<CR>\hangindent=1.5em%<CR>


autocmd FileType tex inoremap ;ni \noindent<CR>

