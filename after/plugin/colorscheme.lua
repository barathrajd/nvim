local status, colorscheme = pcall(require, 'onedarkpro')
if not status then
  return
end

colorscheme.setup({})

vim.cmd('colorscheme onedark')
