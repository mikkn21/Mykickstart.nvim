if vim.g.vscode then
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/vscode-file-commands.vim]])
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/vscode-code-actions.vim]])
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/vscode-jumplist.vim]])
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/vscode-tab-commands.vim]])
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/vscode-window-commands.vim]])
  vim.cmd([[source $HOME/.config/nvim/lua/baneboo/vscode/my_settings.vim]])
-- Optional plugin
else
  require("baneboo.core")
  require("baneboo.lazy")
end
