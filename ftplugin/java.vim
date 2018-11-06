"let g:EclimCompletionMethod = 'omnifunc'
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
nnoremap <c-LeftMouse> :JavaSearch -p <c-r>=expand("<cword>")<cr> -t all -x declarations<CR>"
