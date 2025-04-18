return {
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({
        "telescope",
        fzf_opts = {
          ["--layout"] = "reverse",
          ["--marker"] = "+",
        },
        winopts = {
          preview = {
            winopts = {
              number = true,
            },
          },
        },
        files = {
          formatter = "path.filename_first",
        },
      })
    end,
  },
}
