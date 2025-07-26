-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "H", "^", { desc = "" })
vim.keymap.set("n", "L", "$", { desc = "" })
vim.keymap.set("v", "H", "^", { desc = "" })
vim.keymap.set("v", "L", "$", { desc = "" })
if vim.g.vscode then
  vim.keymap.set(
    "n",
    "]d",
    "<cmd>lua require('vscode').call('editor.action.marker.next')<cr>",
    { desc = "Next Diagnostic" }
  )
  vim.keymap.set(
    "n",
    "[d",
    "<cmd>lua require('vscode').call('editor.action.marker.previous')<cr>",
    { desc = "Prev Diagnostic" }
  )
  vim.keymap.set(
    "n",
    "grr",
    "<cmd>lua require('vscode').call('editor.action.goToReferences')<cr>",
    { desc = "Goto References" }
  )
  vim.keymap.set(
    "n",
    "gd",
    "<cmd>lua require('vscode').call('editor.action.revealDefinition')<cr>",
    { desc = "Goto Definition" }
  )
  vim.keymap.set(
    "n",
    "gi",
    "<cmd>lua require('vscode').call('editor.action.goToImplementation')<cr>",
    { desc = "Goto Implementation" }
  )
  vim.keymap.set(
    "n",
    "gy",
    "<cmd>lua require('vscode').call('editor.action.goToTypeDefinition')<cr>",
    { desc = "Goto Type Definition" }
  )
  vim.keymap.set(
    "n",
    "<leader>cf",
    "<cmd>lua require('vscode').call('editor.action.format')<cr>",
    { desc = "code format" }
  )
  vim.keymap.set(
    "n",
    "<leader>r",
    "<cmd>lua require('vscode').call('editor.action.rename')<cr>",
    { desc = "focus explorer" }
  )
  vim.keymap.set(
    "n",
    "<leader>ff",
    "<cmd>lua require('vscode').call('workbench.action.quickOpen')<cr>",
    { desc = "find file" }
  )
  vim.keymap.set(
    "n",
    "<leader>fw",
    "<cmd>lua require('vscode').call('workbench.action.findInFiles')<cr>",
    { desc = "find word" }
  )
  vim.keymap.set("n", "<leader>ghr", "<cmd>lua require('vscode').call('git.revertChange')<cr>", { desc = "git revert" })
  vim.keymap.set(
    "n",
    "<leader>tf",
    "<cmd>lua require('vscode').call('workbench.action.terminal.toggleTerminal')<cr>",
    { desc = "open terminal" }
  )
  vim.keymap.set(
    "n",
    "<leader>e",
    "<cmd>lua require('vscode').call('workbench.files.action.focusFilesExplorer')<cr>",
    { desc = "focus explorer" }
  )
  vim.keymap.set(
    "n",
    "zz",
    "<cmd>lua require('vscode').call('debug.toggleBreakpoint')<cr>",
    { desc = "toggleBreakpoint" }
  )
  vim.keymap.set("n", "zc", "<cmd>lua require('vscode').call('editor.fold')<cr>", { desc = "fold" })
  vim.keymap.set("n", "zo", "<cmd>lua require('vscode').call('editor.unfold')<cr>", { desc = "unfold" })
end
