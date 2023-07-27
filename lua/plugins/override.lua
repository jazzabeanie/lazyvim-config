-- For overriding config of default plugins

return {
  {
    "nvim-pack/nvim-spectre",
    keys = {
      {
        "<leader>rg",
        function()
          require("spectre").open()
        end,
        desc = "Replace in files (Spectre)",
      }, -- I chose to use rg as a shortcut instead of the default sr because I already remember rg for searching with ripgrep.
    },
  },

  -- This is required in order to be able to run `:Telescope notify` according to docs https://github.com/rcarriga/nvim-notify
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").load_extension("notify")
    end,
  },

  -- I added this to make it fast, but it seems still slow for big jumps.
  -- {
  --   "echasnovski/mini.animate",
  --   opts = {
  --     cursor = {
  --       timing = function()
  --         return 5
  --       end,
  --     },
  --     scroll = {
  --       timing = function()
  --         return 5
  --       end,
  --     },
  --   },
  -- },

  -- { "echasnovski/mini.pairs" }, -- I may want to add spacing to pair at some point. see https://github.com/echasnovski/mini.nvim/discussions/272
}
