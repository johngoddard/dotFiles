-- Use hybrid line numbers in Normal mode and relative number in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  desc = "Absolute line numbers in insert mode",
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  desc = "Hybrid line numbers in insert mode",
  callback = function()
    vim.opt.relativenumber = true
  end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
  end,
})
