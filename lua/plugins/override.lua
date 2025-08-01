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
      -- Not using neoclip anymore
      -- require("telescope").load_extension("neoclip") -- required to make neoclip work immidiatly on startup
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
      stages = "static",
      -- Used to limit the maximum width of a notification
      max_width = function()
        local current_window = vim.api.nvim_get_current_win()
        local window_width = vim.api.nvim_win_get_width(current_window)
        local max = math.floor(window_width * 0.2)
        return max
      end,
    },
  },
  
  {
  "folke/flash.nvim",
  keys = {
      -- The only thing I really used was the search flash functionality, so I don't need the other bindings. Also, they get in the way of 
      -- vim-surrou's default binding
      -- { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "x" }, false },  -- because in visual mode "S" clashes with vim-surround
      -- { "r", mode = "o", false },
      -- { "R", mode = { "o", "x" }, false },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",  -- GitHub Copilot Chat plugin
    opts = {
      model = "gpt-4.1",
      prompts = {
        TODOs = {
          prompt = "Make change to the code to address areas flagged with TODO.",
          system_prompt = "You are a expert software engineer. You are given a code snippet with TODO comments. Change only the code that is relevant to the TODO. Do not make any other changes.",
          mapping = "<leader>at",
          description = "Address TODOs",
        },
      },
      -- Keymap for chat window only
      window = {
        chat = {
          mappings = {
            ["<leader>m"] = {
              action = ":CopilotChatModels<CR>",
              description = "Show Copilot Chat Models",
              mode = "n",
            },
          },
        },
      },
    },
  },

  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     terminal = {
  --       win = {
  --         -- Makes all terminals open on the right instead of the bottom.
  --         -- However, also applies when a cmd is provdied which means lazyvim
  --         -- will open on the right instead of floating.
  --         position = "right",
  --       },
  --     },
  --   }
  -- }

  -- removing prettierd when null-ls was renamed to none-ls. I think the default formatter and linter changed also
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.ensure_installed, "prettierd")
  --   end,
  -- },

  --{
  --  "jose-elias-alvarez/none-ls.nvim",
  --  opts = function(_, opts)
  --    local nls = require("none-ls")
  --    table.insert(opts.sources, nls.builtins.formatting.prettierd)
  --  end,
  --},

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
