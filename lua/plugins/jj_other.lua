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

  -- To try:
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-cursorword.md
  -- use something like this to trim whitespace (may need to create an autogroup command): https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-trailspace.md
  -- Use vim-slime: https://github.com/jpalardy/vim-slime
  -- https://github.com/img-paste-devs/img-paste.vim
}
