return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "mfussenegger/nvim-dap",
    "gpt-partners/neotest-jest",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-jest" {
          jestCommand = "npm test --",
        },
      },
    }
  end,
}
