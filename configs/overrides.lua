local M = {}

M.copilot = {
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    markdown = true,
    help = true,
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "bash",
  },
}
M.mason = {
  ensure_installed = {
    "lua-language-server",
    "vtsls",
    "html-lsp",
    "prettierd",
    "stylua",
    "isort",
    "black",
    "eslint_d",
  },
}

M.conform = {
  formatters_by_ft = {

    lua = { "stylua" },
    python = { "isort", "black" },
    css = { { "prettierd" } },
    html = { { "prettierd" } },
    yaml = { { "prettierd" } },
    json = { { "prettierd" } },
    javascript = { { "prettierd" } },
    typescript = { { "prettierd" } },
    typescriptreact = { { "prettierd" } },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

M.indentscope = {
  symbol = "│",
  options = { try_as_border = true },
}

return M
