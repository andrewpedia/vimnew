let g:wordUnderCursor = expand("<cword>")
let g:JaveComplete_AutoStartServer =1 
let g:currentLine   = getline(".")
let EasyGrepRecursive =1 
let Tlist_Use_Right_Window=1
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:BASH_Ctrl_j   = 'off'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:mapleader='\'
set nu
set nocompatible
set hlsearch
set mouse=nicr
set foldmethod=syntax
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

