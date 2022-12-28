local status_ok, bufferLine = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferLine.setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        separator = true,
        text_align = "center"
      }
    },
  }
}
