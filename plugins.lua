local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "zbirenbaum/copilot.lua",
    opts = overrides.copilot,
  },
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
