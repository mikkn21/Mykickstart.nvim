
function! s:split(...) abort
    let direction = a:1
    let file = exists('a:2') ? a:2 : ''
    call VSCodeCall(direction ==# 'h' ? 'workbench.action.splitEditorDown' : 'workbench.action.splitEditorRight')
    if !empty(file)
        call VSCodeExtensionNotify('open-file', expand(file), 'all')
    endif
endfunction

function! s:splitNew(...)
    let file = a:2
    call s:split(a:1, empty(file) ? '__vscode_new__' : file)
endfunction

function! s:closeOtherEditors()
    call VSCodeNotify('workbench.action.closeEditorsInOtherGroups')
    call VSCodeNotify('workbench.action.closeOtherEditors')
endfunction

function! s:manageEditorHeight(...)
    let count = a:1
    let to = a:2
    for i in range(1, count ? count : 1)
        call VSCodeNotify(to ==# 'increase' ? 'workbench.action.increaseViewHeight' : 'workbench.action.decreaseViewHeight')
    endfor
endfunction

function! s:manageEditorWidth(...)
    let count = a:1
    let to = a:2
    for i in range(1, count ? count : 1)
        call VSCodeNotify(to ==# 'increase' ? 'workbench.action.increaseViewWidth' : 'workbench.action.decreaseViewWidth')
    endfor
endfunction

command! -complete=file -nargs=? Split call <SID>split('h', <q-args>)
command! -complete=file -nargs=? Vsplit call <SID>split('v', <q-args>)
command! -complete=file -nargs=? New call <SID>split('h', '__vscode_new__')
command! -complete=file -nargs=? Vnew call <SID>split('v', '__vscode_new__')
command! -bang Only if <q-bang> ==# '!' | call <SID>closeOtherEditors() | else | call VSCodeNotify('workbench.action.joinAllGroups') | endif

AlterCommand sp[lit] Split
AlterCommand vs[plit] Vsplit
AlterCommand new New
AlterCommand vne[w] Vnew
AlterCommand on[ly] Only

" buffer management
nnoremap <C-w>n <Cmd>call <SID>splitNew('h', '__vscode_new__')<CR>
xnoremap <C-w>n <Cmd>call <SID>splitNew('h', '__vscode_new__')<CR>

nnoremap <Space>sx <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <Space>sx <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" window/splits management  
nnoremap <Space>sv <Cmd>call <SID>split('h')<CR>
xnoremap <Space>sv <Cmd>call <SID>split('h')<CR>

nnoremap <Space>sh  <Cmd>call <SID>split('v')<CR>
xnoremap <Space>sh  <Cmd>call <SID>split('v')<CR>


nnoremap <Space>s= <Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
xnoremap <Space>s= <Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
nnoremap <Space>sm <Cmd>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>
xnoremap <Space>sm <Cmd>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

nnoremap <Space>s+ <Cmd>call <SID>manageEditorHeight(v:count, 'increase')<CR>
xnoremap <Space>s+ <Cmd>call <SID>manageEditorHeight(v:count, 'increase')<CR>
nnoremap <Space>s- <Cmd>call <SID>manageEditorHeight(v:count, 'decrease')<CR>
xnoremap <Space>s- <Cmd>call <SID>manageEditorHeight(v:count, 'decrease')<CR>


" window navigation
nnoremap <C-j> <Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <C-j> <Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <C-k> <Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <C-k> <Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <C-h> <Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <C-h> <Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <C-l> <Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <C-l> <Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>


