local overrides = require "custom.configs.overrides"

local plugins = {
  {
    import = "custom.plugins.neotest",
  },
  {
    import = "custom.plugins.dap",
  },
  {
    "zbirenbaum/copilot.lua",
    opts = overrides.copilot,
    cmd = { "Copilot" },
  },
  { "tpope/vim-fugitive", cmd = { "Git" } },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "stevearc/conform.nvim",
    opts = overrides.conform,
  },
}

return plugins
