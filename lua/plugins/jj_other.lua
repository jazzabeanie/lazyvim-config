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

  -- To try:
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-cursorword.md
  -- use something like this to trim whitespace (may need to create an autogroup command): https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-trailspace.md
  -- Use vim-slime: https://github.com/jpalardy/vim-slime
  -- https://github.com/img-paste-devs/img-paste.vim
}
