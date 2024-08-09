return {
  -- escape without lagging
  { "nvim-zh/better-escape.vim" },

  -- load gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      -- `nvim-lspconfig.opts.autoformat` is deprecated. Please use `vim.g.autoformat` instead
      -- autoformat = false, 
      -- Enable this to show formatters used in a notification
      -- Useful for debugging formatter issues
      format_notify = true,
    },
  },

  -- I don't think this is required as I can use the OS clipboard manager
  -- -- clipboard manager: https://github.com/AckslD/nvim-neoclip.lua
  -- {
  --   "AckslD/nvim-neoclip.lua",
  --   cmd = "Telescope neoclip",
  --   keys = {
  --     { "<leader>y", "<cmd>Telescope neoclip<CR>", desc = "Neoclip (Yank History)" },
  --   },
  --   config = function()
  --     require("neoclip").setup({
  --       history = 10,
  --       default_register = { '"', "+", "*" },
  --     })
  --     require("telescope").load_extension("neoclip")
  --   end,
  -- },

  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown", "quarto" },
    config = function()
      vim.fn["mkdp#util#install"]()
      vim.g.mkdp_filetypes = { "markdown", "quarto" }
    end,
  },

  {
    "godlygeek/tabular",
  },

  -- allows you to close the buffer without messing up splits
  {
    "moll/vim-bbye",
    keys = { { "<leader>qw", ":Bdelete<CR>", "Close buffer without messing up splits" } },
  },

  -- {
  -- 'Exafunction/codeium.vim',
  -- config = function ()
  --   vim.keymap.set('i', '<leader><Right>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --   -- vim.keymap.set('i', '<leader>?', function () return vim.fn['codeium#Complete']() end, { expr = true })  -- why does this not work?
  --   -- vim.g.codeium_manual = true
  -- end
  -- },
  
  {
    -- TODO: consider going back to mini-surround and makeing the key bindings like vim-surround. mini-surround supports dot repeat out of the box.
    "tpope/vim-surround",  -- may not be better than mini.surround. Maybe I just like they key bindings.
  },
  -- To try:
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-cursorword.md
  -- use something like this to trim whitespace (may need to create an autogroup command): https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-trailspace.md
  -- Use vim-slime: https://github.com/jpalardy/vim-slime
  -- https://github.com/img-paste-devs/img-paste.vim
}
