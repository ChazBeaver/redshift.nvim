local M = {}
function M.setup()
  vim.g.colors_name = "redshift"
  vim.o.background = "dark"
  local palette = require("redshift.palette")
  require("redshift.highlights").apply(palette)
end
return M
