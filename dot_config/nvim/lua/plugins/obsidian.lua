return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      ui = { enable = false },
      workspaces = {
        { name = "dev", path = "~/vaults/dev" },
        { name = "zumma", path = "~/vaults/zumma" },
        { name = "university", path = "~/vaults/university" },
      },
      mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        -- Toggle check-boxes.
        ["<leader>ch"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        -- Smart action depending on context, either follow link or toggle checkbox.
        ["<cr>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
    },
  },
}
