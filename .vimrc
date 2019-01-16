 cat .vimrc 
set runtimepath+=~/.myvimnew

source ~/.myvimnew/vimrcs/syntax.vim
source ~/.myvimnew/vimrcs/basic.vim
source ~/.myvimnew/vimrcs/filetypes.vim
source ~/.myvimnew/vimrcs/plugins_config.vim

source ~/.myvimnew/vimrcs/extended.vim
source ~/.myvimnew/vimrcs/mappings.vim
try
source ~/.myvimnew/my_configs.vim
catch
endtry
colorscheme codedark
let g:airline_theme = 'codedark'

