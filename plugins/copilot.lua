return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = { "InsertEnter" },
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<S-k>",
          next = "<S-j>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
