-- :help options 
local options = { 
	backup = false, 
	cmdheight = 1,
	clipboard = "unnamedplus",
 	conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true ,
  splitright = true,
  expandtab = true,
  shiftwidth = 2 ,
  tabstop = 2,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  completeopt = {"menuone","noselect"}, 
}

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

for k, v in pairs(options) do
    vim.opt[k] = v
end
