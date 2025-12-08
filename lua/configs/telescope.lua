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
          local builtin = require "telescope.builtin"
          local state = require("telescope").extensions._toggle_state

          builtin.find_files {
            hidden = state.hidden,
            no_ignore = state.no_ignore,
          }
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
      {
        "<C-h>",
        function()
          local state = require("telescope").extensions._toggle_state
          state.hidden = not state.hidden
          state.no_ignore = not state.no_ignore
        end,
        desc = "Toggle hidden + gitignored files",
      },
    },
    opts = function(_, opts)
      opts.extensions = opts.extensions or {}
      opts.extensions["ui-select"] = require("telescope.themes").get_dropdown {}

      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = opts.pickers.find_files or {}
      opts.pickers.find_files.hidden = true
      opts.pickers.find_files.no_ignore = false

      local builtin = require "telescope.builtin"
      local find_files_state = {
        hidden = false,
        no_ignore = false,
      }

            -- initial toggle state
      opts.extensions._toggle_state = {
        hidden = false,
        no_ignore = false,
      }

      return opts
    end,
    config = function(_, opts)
      local telescope = require "telescope"
      telescope.setup(opts)
      telescope.load_extension "ui-select"
      telescope.extensions._toggle_state = opts.extensions._toggle_state
    end,
  },
}
