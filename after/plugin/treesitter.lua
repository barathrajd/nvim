require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"css",
		"javascript",
		"typescript",
		"lua",
		"rust",
		"python",
		"html",
		"json",
		"scss",
	},
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
	},
})
