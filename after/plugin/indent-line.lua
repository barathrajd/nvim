local status, indent_blankline = pcall(require, 'indent_blankline')
if not status then
  return
end

vim.opt.list = true

indent_blankline.setup {
  char = "|"
}
