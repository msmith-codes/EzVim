local config = require("config")

vim.o.background = config.color_mode
vim.cmd("colorscheme " .. config.color_theme)
