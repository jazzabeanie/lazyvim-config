-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>a", "gg^VGy", { desc = "Copy entire file" })
-- vim.keymap.set("i", "<leader>p", '"+p', { desc = "Paste in insert mode" })
vim.keymap.set("n", "<leader>yp", ":let @+ = expand('%:p:h')<cr>", { desc = "Copy the path of the current file" })
-- conflicts with some plugins, dissabling for now:
-- vim.keymap.set(
--   "v",
--   "<leader>s",
--   "y:.,$s/\\V<c-r>\"//gc|1,''-&&|'<<left><left><left><left><left><left><left><left><left><left><left><left><left><left>",
--   { desc = "Substitue the select text" }
-- )
