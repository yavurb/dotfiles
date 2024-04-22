return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
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
        borderchars = {
          "█",
          "█",
          "█",
          "█",
          "█",
          "█",
          "█",
          "█",
        },
      },
    },
  },
}
