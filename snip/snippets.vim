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
" HTML
" -------------
autocmd FileType html nnoremap ;wb wbcw<b><Esc>pa</b><Esc>
autocmd FileType html nnoremap ;wi wbcw<em><Esc>pa</em><Esc>
autocmd FileType html nnoremap ;wu wbcw<u><Esc>pa</u><Esc>

autocmd FileType html vnoremap ;wb  c<b><Esc>pa</b><Esc>
autocmd FileType html vnoremap ;wi  c<em><Esc>pa</em><Esc>
autocmd FileType html vnoremap ;wu  c<u><Esc>pa</u><Esc>
autocmd FileType html nnoremap <Space><Space> /<++><Enter>"_c4l

" -------------
" LaTeX
" -------------
autocmd FileType tex inoremap ;def \noindent \textbf{Definition.}%<CR>\hspace{0.5em}%<CR>\hangindent=1.5em%<CR>
autocmd FileType tex inoremap ;ni \noindent
autocmd FileType tex inoremap ;vs \vspace{0.5em}<CR>
autocmd FileType tex inoremap ;np \newpage
autocmd FileType tex inoremap ;cite \cite{}<Esc>i
autocmd FileType tex inoremap ;sec \section{}<Esc>i
autocmd FileType tex inoremap ;ssec \subsection{}<Esc>i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Esc>i
autocmd FileType tex inoremap ;beg \begin{<__>}<CR>\end{<__>}<Esc>kVj:s/<__>/

autocmd FileType tex nnoremap <Space><Space> /<++><Enter>"_c4l

autocmd FileType tex nnoremap ;wb wbcw\textbf{<Esc>pa}<Esc>
autocmd FileType tex nnoremap ;wi wbcw\textit{<Esc>pa}<Esc>
autocmd FileType tex nnoremap ;wu wbcw\underline{<Esc>pa}<Esc>

autocmd FileType tex vnoremap ;wb  c\textbf{<Esc>pa}<Esc>
autocmd FileType tex vnoremap ;wi  c\textit{<Esc>pa}<Esc>
autocmd FileType tex vnoremap ;wu  c\underline{<Esc>pa}<Esc>


autocmd FileType tex vnoremap ;wu  c\underline{<Esc>pa}<Esc>


