local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    -- previewer = false,
    mappings = {
      n = {
        ["q"] = actions.close
      },
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
