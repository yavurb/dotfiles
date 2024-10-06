return {
  {
    "https://github.com/apple/pkl-neovim",
    lazy = true,
    event = {
      "BufReadPre *.pkl",
      "BufReadPre *.pcf",
      "BufReadPre PklProject",
    },
    build = function()
      vim.cmd("TSInstall pkl")
    end,
  },
}
