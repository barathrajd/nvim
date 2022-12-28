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
        separator = false,
        text_align = "center"
      }
    },
  }
}
