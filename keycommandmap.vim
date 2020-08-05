"let NERDTreeMapOpenInTab='<ENTER>'

nnoremap gc :JavaSearch -p <c-r>=expand("<cword>")<cr>  -x declarations<CR>"
nnoremap gm :JavaSearch -p <c-r>=expand("<cword>")<cr>  -x implementors<CR>"
nnoremap ga :JavaSearch -p <c-r>=expand("<cword>")<cr>  -x all<CR>"
"nnoremap <c-LeftMouse> :JavaSearch -p <c-r>=expand("<cword>")<cr>  -x declarations<CR>"
imap jk <ESC>
imap jj <ESC>
"inoremap <C-i>  <ESC>:JCimportAdd<CR>
map <leader>t :TlistToggle<CR>
"map <C-m> :TlistOpen<CR>
map <leader>l :NERDTreeToggle<cr>
nnoremap <leader>sv :source $MYVIMRC<CR>     
map <C-f> :NERDTreeFind %<CR>
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <ALT-a> :echo "You just pressed Alt-a!"<CR>
" Unmap the arrow keys
"no <down> ddp
"no <left> <Nop>
"no <right> <Nop>
"no <up> ddkP
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>
"vno <down> <Nop>
"vno <left> <Nop>
"vno <right> <Nop>
"vno <up> <Nop>
"
"============== Custom Mappings ===============
" general mapping
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>

"turn off search highlighting
nmap <C-n> :noh<CR>

"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

" delete surrounding characters
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

nmap cu ct_
nmap cU cf_

" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

" diff
nmap ]c ]czz
nmap [c [czz

" default to very magic
no / /\v

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"open tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

" replace string contents with recently copied text
nmap <Leader>r" "_di"P
nmap <Leader>c" "_di"Pa
nmap <Leader>r' '_di'P
nmap <Leader>c' '_di'Pa

autocmd FileType twig imap <leader>a[ [{[  ]}]<ESC>Bhi

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nnoremap <leader>gt :YcmCompleter GoTo<CR>
