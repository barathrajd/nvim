local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top"
    },
    file_ignore_patterns = { "node_modules", ".git" },
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
    },
  },
})
