require "nvchad.options"

-- add yours here!
vim.g.mapleader = " "

-- hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Use Emmet in .jsx files
vim.g.user_emmet_settings = "{ 'javascript.jsx' : { 'extends' : 'jsx' } }"
vim.g.qs_highlight_on_keys = "['f', 'F', 't', 'T']"

local o = vim.o
o.laststatus = 2
-- o.cursorlineopt = "both" -- to enable cursorline!
