"Put this file in ~/.vim/nerdtree_plugin
"
"There are definitely more efficient ways to check a file to see if it
"is a class/interface/etc but this is really just a proof of concept.

if exists("loaded_nerdtree_ft_flags_plugin")
    finish
endif
let g:loaded_nerdtree_ft_flags_plugin = 1

let s:flagNamespace = "filetype"

function! NERDTreeFtFlagsListener(event)
    let path = a:event.subject

    let current = path.str()
    if path.isDirectory
	let files = split(globpath(current, '*.java'), '\n')
	for i in files
	    let pathi=g:NERDTreePath.New(i)
	    if s:IsClass(pathi)
	        call pathi.flagSet.addFlag(s:flagNamespace, 'C')
	    elseif s:IsInterface(pathi)
	        call pathi.flagSet.addFlag(s:flagNamespace, 'I')
	    endif

	endfor

	"echom webapi#json#encode(path)
        return
    endif

    if s:IsClass(path)
        call path.flagSet.addFlag(s:flagNamespace, 'C')
    elseif s:IsInterface(path)
        call path.flagSet.addFlag(s:flagNamespace, 'I')
    endif

endfunction
call g:NERDTreePathNotifier.AddListener("init", "NERDTreeFtFlagsListener")
call g:NERDTreePathNotifier.AddListener("refreshFlags", "NERDTreeFtFlagsListener")

function! s:IsClassByStr(path)
    call system('grep -q ''^[ \t]*class '' ' . a:path)
    return v:shell_error == 0
endfunction

function! s:IsInterfaceByStr(path)
    call system('grep -q ''^[ \t]*interface'' ' . a:path)
    return v:shell_error == 0
endfunction
function! s:IsClass(path)
    call system('grep  ''[ \t]*class '' ' . a:path.str())
    return v:shell_error == 0
endfunction

function! s:IsInterface(path)
    call system('grep  ''[ \t]*interface'' ' . a:path.str())
    return v:shell_error == 0
endfunction
