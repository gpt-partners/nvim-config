local M = {}

M.ui = {
  theme = "tokyonight",
  statusline = {
    theme = "vscode_colored",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
