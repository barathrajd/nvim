local status, indent_blankline = pcall(require, 'indent_blankline')
if not status then
  return
end

vim.opt.list = true

require("indent_blankline").setup {
}

indent_blankline.setup {
}
