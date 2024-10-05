return {
  {
    "nvim-neotest/neotest",
    lazy = true,
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
        ["neotest-python"] = {
          args = { "-vv" },
        },
      },
    },
  },
  { "nvim-neotest/nvim-nio", lazy = true },
  { "antoinemadec/FixCursorHold.nvim", lazy = true },
  { "nvim-treesitter/nvim-treesitter", lazy = true },
  { "fredrikaverpil/neotest-golang", lazy = true },
  { "nvim-neotest/neotest-python", lazy = true },
}
