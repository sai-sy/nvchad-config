require "nvchad.mappings"

-- add yours here
-- Move by visual (wrapped) lines instead of logical lines
vim.keymap.set("n", "<Up>", "gk", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", "gj", { noremap = true, silent = true })
vim.keymap.set("v", "<Up>", "gk", { noremap = true, silent = true })
vim.keymap.set("v", "<Down>", "gj", { noremap = true, silent = true })

-- Wrapped line movement in INSERT mode
vim.keymap.set("i", "<Up>", "<C-o>gk", { noremap = true, silent = true })
vim.keymap.set("i", "<Down>", "<C-o>gj", { noremap = true, silent = true })

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-Left>", "<C-o>", { desc = "Jump back in jumplist" })
map("n", "<A-Right>", "<C-i>", { desc = "Jump forward in jumplist" })
-- map('n', '<C-p>', "<cmd>Telescope find_files<cr>", {desc = "Telescope find files"})
-- map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", {desc = "live grep"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
