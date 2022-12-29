local status, colorscheme = pcall(require, 'onedarkpro')
if not status then
  return
end

colorscheme.setup({
  colors = {
    red = "#e06c75"
  },
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "italic", -- Style that is applied to types
    numbers = "NONE", -- Style that is applied to numbers
    strings = "NONE", -- Style that is applied to strings
    comments = "italic", -- Style that is applied to comments
    keywords = "bold,italic", -- Style that is applied to keywords
    constants = "bold", -- Style that is applied to constants
  },
  plugins = {
    native_lsp = false,
    treesitter = false,
    nvim_cmp = false,
    lsp_saga = false
  },
  options = {
    transparency = true,
  },
})

vim.cmd('colorscheme onedark')
