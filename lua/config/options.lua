-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- set here because leader must be set before lazy.nvim
-- vim.keymap.set("n", ",", "<Nop>", { silent = true })
vim.g.mapleader = ","
vim.opt.winbar = "%=%m %f"
-- vim.g.codeium_disable_bindings = 1
vim.opt.linebreak = true
vim.g.autoformat = false -- globally
-- vim.b.autoformat = false -- buffer-local
vim.g.ai_cmp = false

if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
