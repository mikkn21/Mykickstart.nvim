" Spawn a terminal 
nnoremap <Space>t <Cmd>call VSCodeNotify('workbench.action.terminal.new')<CR>
xnoremap <Space>t <Cmd>call VSCodeNotify('workbench.action.terminal.new')<CR>

" Kill terminal 
" Using <C-1> will bring you out of the terminal in vscode 
nnoremap <Space>q <Cmd>call VSCodeNotify('workbench.action.terminal.kill')<CR>
xnoremap <Space>q <Cmd>call VSCodeNotify('workbench.action.terminal.kill')<CR>

" toogle file explore 
nnoremap <Space>fe <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
xnoremap <Space>fe <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

nnoremap <Space>am <Cmd>call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>
xnoremap <Space>am <Cmd>call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>


nnoremap K <Cmd>call VSCodeNotify('editor.action.moveLinesUpAction')<CR>
xnoremap K <Cmd>call VSCodeNotify('editor.action.moveLinesUpAction')<CR>

nnoremap J <Cmd>call VSCodeNotify('editor.action.moveLinesDownAction')<CR>
xnoremap J <Cmd>call VSCodeNotify('editor.action.moveLinesDownAction')<CR>

