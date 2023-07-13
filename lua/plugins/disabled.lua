-- start by disabling every plugin

return {
  -- coding
  -- { "L3MON4D3/LuaSnip", enabled = false },
  -- { "rafamadriz/friendly-snippets", enabled = false },
  -- { "hrsh7th/nvim-cmp", enabled = true },
  -- { "hrsh7th/cmp-nvim-lsp", enabled = true },
  -- { "hrsh7th/cmp-buffer", enabled = false },
  -- { "hrsh7th/cmp-path", enabled = false },
  -- { "saadparwaiz1/cmp_luasnip", enabled = false },
  { "echasnovski/mini.pairs", enabled = false }, -- alternative to vim-surround?
  { "echasnovski/mini.surround", enabled = false }, -- alternative to vim-surround?
  -- { "JoosepAlviste/nvim-ts-context-commentstring", enabled = false },
  -- { "echasnovski/mini.comment", enabled = false },
  -- { "echasnovski/mini.ai", enabled = false },
  -- { "nvim-treesitter-textobjects", enabled = false },
  -- editor
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  -- { "nvim-pack/nvim-spectre", enabled = false },
  -- { "nvim-telescope/telescope.nvim", enabled = false },
  { "ggandor/flit.nvim", enabled = false },
  { "ggandor/leap.nvim", enabled = false },
  -- { "folke/which-key.nvim", enabled = false },
  { "lewis6991/gitsigns.nvim", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  { "echasnovski/mini.bufremove", enabled = false },
  -- { "folke/trouble.nvim", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = false,
  },
  -- ui
  -- { "rcarriga/nvim-notify", enabled = false }, -- puts messages in the top right corner instead of at the bottom. Means I will have to use :Notifications instead of :Messages
  { "stevearc/dressing.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  -- { "nvim-lualine/lualine.nvim", enabled = false },
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
  -- { "nvim-lua/plenary.nvim", enabled = true },
  { "tpope/vim-repeat", enabled = false },
}
