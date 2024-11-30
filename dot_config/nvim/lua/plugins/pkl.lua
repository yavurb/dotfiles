return {
  "apple/pkl-neovim",
  lazy = true,
  ft = "pkl",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = function(_)
        vim.cmd("TSUpdate")
      end,
    },
  },
  build = function()
    require("pkl-neovim.internal").init()

    -- Set up syntax highlighting.
    vim.cmd("TSInstall! pkl")
  end,
}
