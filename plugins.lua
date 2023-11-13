local overrides = require "custom.configs.overrides"

local plugins = {
  {
    import = "custom.plugins.copilot",
  },
  {
    import = "custom.plugins.neotest",
  },
  {
    import = "custom.plugins.dap",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
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
  { "preservim/nerdcommenter" },
  {
    "echasnovski/mini.indentscope",
    opts = overrides.indentscope,
  },
}

return plugins
