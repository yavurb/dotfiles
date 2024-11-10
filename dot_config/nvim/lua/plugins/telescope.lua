return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        pickers = {
          find_files = {
            no_ignore = true,
            no_ignore_parent = true,
            cwd = function()
              return require("telescope").actions.utils.buffer_dir()
            end,
          },
        },
        -- preview = {
        --   filesize_limit = 0.3, -- MB
        -- },
        path_display = {
          filename_first = {
            reverse_direcytory = true,
          },
        },
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
        winblend = 0,
        -- border = false,
        results_title = false,
        prompt_title = "",
        file_ignore_pattern = { "node_modules", ".venv", ".git" },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
      },
    },
  },
}
