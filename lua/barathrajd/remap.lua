local options = { noremap = true }
local builtin = require("telescope.builtin")
local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- Escape Remape
map("i", "jj", "<esc>", options)

-- Nvim Tree
map("n", "<C-b>", ":NvimTreeToggle<CR>", options)

-- Telescope
vim.keymap.set("n", "<C-f>", builtin.find_files, options)
vim.keymap.set("n", "<C-g>", builtin.git_files, options)
vim.keymap.set("n", "<C-s>", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, options)
vim.keymap.set("n", "<C-c>", builtin.buffers, options)
vim.keymap.set("n", "<C-h>", builtin.help_tags, options)
vim.keymap.set("n", "<C-l>", builtin.live_grep, options)

-- Trouble
vim.keymap.set("n", "<C-t>", ":TroubleToggle<CR>")
