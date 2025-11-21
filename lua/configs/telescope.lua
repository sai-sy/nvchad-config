return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.9",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    keys = {
      {
        "<C-p>",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Telescope find files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Telescope live grep",
      },
    },
    opts = function(_, opts)
      opts.extensions = opts.extensions or {}
      opts.extensions["ui-select"] = require("telescope.themes").get_dropdown {}

      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = opts.pickers.find_files or {}
      opts.pickers.find_files.hidden = true
      opts.pickers.find_files.no_ignore = true

      return opts
    end,
    config = function(_, opts)
      local telescope = require "telescope"
      telescope.setup(opts)
      telescope.load_extension "ui-select"
    end,
  },
}
