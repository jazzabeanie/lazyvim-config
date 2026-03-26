return {
  {
    "sudo-tee/opencode.nvim",
    config = function()
      require("opencode").setup({})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },
      -- completion
      "saghen/blink.cmp",
      -- file picker
      "nvim-telescope/telescope.nvim",
    },
  },
}
