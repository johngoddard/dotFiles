require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local gitsigns = require "gitsigns"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>n", ":NvimTreeToggle <CR>")
map("n", "<leader><leader>", ":bprev <CR>")

-- File saving
map("n", "<leader>q", ":q <CR>")
map("n", "<leader>w", ":w <CR>")
map("n", "<leader>e", ":e <CR>")

-- terminal
map("n", "<leader>t", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

-- global lsp mappings
map("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist" })

-- Splits
map("n", "<leader>v", ":vsplit<CR>")
map("n", "<leader>h", ":split<CR>")

-- Split navigation
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")

-- Telescope file search and such
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<C-b>", "<cmd>Telescope buffers<cr>", { desc = "telescope find buffers" })
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { desc = "telescope search for term" })
map("n", "<C-g>", "<cmd>Telescope grep_string<cr>", { desc = "telescope search for word under cursor" })
map("n", "<C-z>", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })

-- Git
map("n", "<leader>gb", ":Git blame <CR>")
map("n", "<leader>gh", function()
  gitsigns.blame_line { full = true }
end)
map("n", "<leader>gl", gitsigns.toggle_current_line_blame)
map("n", "<leader>gd", ":Gdiffsplit <CR>")
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })

-- Other
map("n", "<leader>s", ":set spell! <cr>")
map("n", "<leader>ln", ":set number! <cr>")
map("n", "<leader>lr", ":set relativenumber! <cr>")
map("n", "<leader>cl", ":nohl<cr>")
map("n", "<leader>cb", ':%bdelete|edit #|normal ` " <cr>')

-- Jump to linting errors
map("n", "<C-]>", vim.diagnostic.goto_next, { desc = "Go to next linting error" })
map("n", "<C-q>", vim.diagnostic.goto_prev, { desc = "Go to prev linting error" })
