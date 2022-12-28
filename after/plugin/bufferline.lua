local status_ok, bufferLine = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferLine.setup {
  options = {
    -- offsets = {
    --   filetype = "NvimTree",
    --   text = function()
    --     return vim.fn.cwd()
    --   end,
    --   highlights = "Directory",
    --   separator = true,
    --   text_align = "center"
    -- }
    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          return vim.loop.cwd();
        end,
        separator = true,
        text_align = "left"
      }
    },
  }
}
