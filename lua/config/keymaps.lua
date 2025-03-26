-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cy", "gg^VGy", { desc = "Copy/yank entire file" })
-- vim.keymap.set("i", "<leader>p", '"+p', { desc = "Paste in insert mode" })
vim.keymap.set("n", "<leader>fp", ":let @+ = expand('%:p:h')<cr>", { desc = "Copy the path of the current file" })
-- conflicts with some plugins, dissabling for now:
vim.keymap.set(
  "v",
  "<leader>ss",
  "y:.,$s/\\V<c-r>\"//gc|1,''-&&|'<<left><left><left><left><left><left><left><left><left><left><left><left><left><left>",
  { desc = "Substitue the selected text" }
)
vim.keymap.set("n", "<leader>tn", ":Telescope notify<cr>", { desc = "Opens up a list of notifications" })
vim.keymap.set("n", "<leader>rr", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename current variable under cursor" })
-- vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bd", ":Bdelete<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>qw", ":echo 'use <leader>bd to close buffer'<CR>", { desc = "deprecated" })
vim.keymap.set("n", "<leader>ft-", ':lua Snacks.terminal.toggle({"bash"}, { win = { position = "bottom" }})<CR>', { desc = "Open a terminal at the bottom" })
vim.keymap.set("n", "<leader>ft|", ':lua Snacks.terminal.toggle({"bash"}, { win = { position = "right" }})<CR>', { desc = "open a terminal at the right" })

-- Quarto
vim.keymap.set(
  "n",
  "<leader>cq",
  ":!quarto render %:p --to html<CR>",
  { desc = "Render the current file to html with quarto" }
)

-- vim.keymap.set('i', '<Right>', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '<C-h>', "<C-w>", { expr = false })
