local options = { noremap = true }
local builtin = require("telescope.builtin")

-- Escape Remape
vim.keymap.set("i", "jj", "<esc>", options)

-- Nvim Tree
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", options)

-- Telescope
vim.keymap.set("n", "<C-f>", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.git_files, {})
vim.keymap.set("n", "<C-s>", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
