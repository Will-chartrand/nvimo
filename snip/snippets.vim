set nocompatible
filetype plugin on

" Wrap stuff
nnoremap ;" wbcw"<Esc>pa"
nnoremap ;' wbcw'<Esc>pa'
nnoremap ;{ wbcw{<Esc>pa}
nnoremap ;( wbcw(<Esc>pa)
nnoremap ;[ wbcw[<Esc>pa]
nnoremap ;$ WBcW$<Esc>pa$

vnoremap ;" c"<Esc>pa"
vnoremap ;' c'<Esc>pa'
vnoremap ;{ c{<Esc>pa}
vnoremap ;( c(<Esc>pa)
vnoremap ;[ c[<Esc>pa]
vnoremap ;$ c$<Esc>pa$

" Latex snippets
autocmd FileType tex inoremap ;def \noindent \textbf{Definition.}%<CR>\hspace{0.5em}%<CR>\hangindent=1.5em%<CR>
autocmd FileType tex inoremap ;ni \noindent<CR>

