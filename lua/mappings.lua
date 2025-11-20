require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map('n', '<C-p>', "<cmd>Telescope find_files<cr>", {desc = "Telescope find files"})
-- map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", {desc = "live grep"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
