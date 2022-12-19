require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		previewer = false,
	},
	pickers = {
		find_files = {
			previewer = false,
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
			previewer = false,
		},
		buffers = {
			theme = "dropdown",
			previewer = false,
		},
		git_files = {
			theme = "dropdown",
			previewer = false,
		},
		grep_string = {
			theme = "dropdown",
			previewer = false,
		},
	},
})
