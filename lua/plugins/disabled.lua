-- start by disabling every plugin

return {
  -- coding
  -- { "echasnovski/mini.surround", enabled = false }, -- alternative to vim-surround?
  -- { "echasnovski/mini.animate", enabled = false }, -- makes bit cursor jumps and scrolling look nice, but is slow for big files. Needs to be also added in lua/config/lazy.lua
  -- editor
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false }, -- this is about navigating the file tree.
  -- { "RRethy/vim-illuminate", enabled = false },  -- Doesn't seem to work in all languages
  { "echasnovski/mini.bufremove", enabled = false }, -- this is about buffers. Implement later
  -- { "hrsh7th/nvim-cmp", enabled = false }, -- this give autocompletions
  -- { "hrsh7th/cmp-nvim-lsp", enabled = false }, -- this is the lsp for nvim-cmp
  -- { "folke/flash.nvim", enabled = false }, -- :checkhealth will issue a warning about <vscode>, I think because it's not installed.
  -- treesitter
  -- {"niim-treesitter/nvim-treesitter", enabled = false },
  -- ui
  -- { "rcarriga/nvim-notify", enabled = false }, -- puts messages in the top right corner instead of at the bottom. Means I will have to use :Notifications instead of :Messages
  -- { "stevearc/dressing.nvim", enabled = false }, -- what does this actually do? I couldn't see a difference when it was dissabled
  -- { "akinsho/bufferline.nvim", enabled = false }, - Not sure what this does. Maybe you need to have buffers in tabs to be able to see it. Not sure how to do that. Also, I need to fix termguicolors for this to work. See :CheckHealth
  -- { "lukas-reineke/indent-blankline.nvim", enabled = false },

  -- Needs nui.nvim to run properly. I think this might conflict with my own <leader>s mapping
  -- Has an issue with formatting the out put of `:map`. https://github.com/folke/noice.nvim/issues/259
  -- { "folke/noice.nvim", enabled = false },  

  -- { "MunifTanjim/nui.nvim", enabled = false },  -- noice.nvim needs this (as it's currently setup)
  { "goolord/alpha-nvim", enabled = false }, -- This is a dashboard when you open nvim without opening a file. I don't think I want it because I almost always want a new file when I open nvim
  -- { "SmiteshP/nvim-navic", enabled = false },  -- Doesn't seem to work for python
  -- util
  -- { "folke/persistence.nvim", enabled = false }, -- session management. Work with buffers, which I haven't figured out yet.
}
