local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    previewer = false,
    mappings = {
      n = {
        ["q"] = actions.close
      },
      i = {
        ["<esc>"] = actions.close
      }
    },
  },
  pickers = {
    find_files = {
      hidden = true,
      file_ignore_patterns = {
        "node_modules",
        ".git"
      },
      theme = "dropdown"
    },
    git_files = {
      theme = "dropdown"
    },
    live_grep = {
      theme = "dropdown"
    },
    grep_string = {
      theme = "dropdown"
    }
  },
})
