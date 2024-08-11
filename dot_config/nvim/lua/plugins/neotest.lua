return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",

    "fredrikaverpil/neotest-golang",
    "nvim-neotest/neotest-python",
  },
  opts = {
    adapters = {
      ["neotest-golang"] = {
        go_test_args = {
          "-v",
          "-race",
          "-count=1",
          "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
        },
        dap_go_enabled = true,
      },
    },
    "neotest-python",
  },
}
