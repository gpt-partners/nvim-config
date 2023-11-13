local autocmd = vim.api.nvim_create_autocmd

-- Format on save
autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

-- Run pytest on save
autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function()
    require("neotest").run.run(vim.loop.cwd())
  end,
})
