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
autocmd FileType tex inoremap ;ni \noindent<CR>
autocmd FileType tex inoremap ;vs \vspace{12pt}
autocmd FileType tex inoremap ;np \newpage
autocmd FileType tex inoremap ;cite \cite{}<Esc>i
autocmd FileType tex inoremap ;sec \section{}<Esc>i
autocmd FileType tex inoremap ;ssec \subsection{}<Esc>i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Esc>i

autocmd FileType tex nnoremap <Space><Space> /<++><Enter>"_c4l

autocmd FileType tex nnoremap ;wb wbcw\textbf{<Esc>pa}<Esc>
autocmd FileType tex nnoremap ;wi wbcw\textit{<Esc>pa}<Esc>
autocmd FileType tex nnoremap ;wu wbcw\underline{<Esc>pa}<Esc>

autocmd FileType tex vnoremap ;wb  c\textbf{<Esc>pa}<Esc>
autocmd FileType tex vnoremap ;wi  c\textit{<Esc>pa}<Esc>
autocmd FileType tex vnoremap ;wu  c\underline{<Esc>pa}<Esc>

" Comment out lines
autocmd FileType tex nnoremap <expr> <C-/> (matchstr(getline('.'), '\S') == '%' ? "^x" : "I%<Esc>")
vnoremap <expr> <C-/> ':g/^/call ApplyExpressionToLine()<CR>:noh<CR>'

function! ApplyExpressionToLine()
  let line = getline('.')
  let first_char = matchstr(line, '\S')

  if first_char == '%'
    normal! ^x
  else
    normal! I%
  endif
endfunction

" Run pdflatex and open pdf
nnoremap <Leader>po :execute 'silent !xdg-open *.pdf >/dev/null 2>&1 & disown'<CR><CR>
nnoremap <Leader>pr :call OpenTerminal()<CR>ls *.tex \| entr -n pdflatex *.tex<CR><C-\><C-n><C-w><C-w>
nnoremap <Leader>ps :!pkill pdflatex<CR>
nnoremap <Leader>pb :!bibtex research<CR><CR>
