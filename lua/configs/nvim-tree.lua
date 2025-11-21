local options = require "nvchad.configs.nvimtree"

options.view = options.view or {}
options.view.side = "right"
options.git = { ignore = false }

return options
