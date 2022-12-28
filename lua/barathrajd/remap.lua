local options = { noremap = true }
local builtin = require("telescope.builtin")
local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- Escape Remape
map("i", "jk", "<esc>", options)

-- Nvim Tree
map("n", "<C-b>", ":NvimTreeToggle<CR>", options)

-- Telescope
vim.keymap.set("n", "<C-f>", builtin.find_files, options)
vim.keymap.set("n", "<C-g>", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, options)
vim.keymap.set("n", "<C-c>", builtin.buffers, options)
vim.keymap.set("n", "<leader>h", builtin.help_tags, options)
vim.keymap.set("n", "<leader>l", builtin.live_grep, options)

-- Trouble
vim.keymap.set("n", "<C-t>", ":TroubleToggle<CR>")

-- Switch Windows
map("n", "<C-h>", "<C-w><C-h>", options)
map("n", "<C-j>", "<C-w><C-j>", options)
map("n", "<C-k>", "<C-w><C-k>", options)
map("n", "<C-l>", "<C-w><C-l>", options)
