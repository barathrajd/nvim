local status_ok, bufferLine = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferLine.setup {}
