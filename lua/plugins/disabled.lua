-- start by disabling every plugin

return {
  -- coding
  { "echasnovski/mini.surround", enabled = false }, -- alternative to vim-surround?
  -- editor
  { "nvim-neo-tree/neo-tree.nvim", enabled = false }, -- this is about navigating the file tree. Implement later
  -- { "RRethy/vim-illuminate", enabled = false },  -- Doesn't seem to work in all languages
  { "echasnovski/mini.bufremove", enabled = false }, -- this is about buffers. Implement later
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = false,
  },
  -- ui
  -- { "rcarriga/nvim-notify", enabled = false }, -- puts messages in the top right corner instead of at the bottom. Means I will have to use :Notifications instead of :Messages
  { "stevearc/dressing.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "goolord/alpha-nvim", enabled = false },
  { "SmiteshP/nvim-navic", enabled = false },
  { "nvim-tree/nvim-web-devicons", enabled = false },
  { "MunifTanjim/nui.nvim", enabled = false },
  -- util
  { "dstein64/vim-startuptime", enabled = false },
  { "folke/persistence.nvim", enabled = false },
  { "tpope/vim-repeat", enabled = false },
}
