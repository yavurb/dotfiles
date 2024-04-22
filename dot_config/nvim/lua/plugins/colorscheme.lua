vim.g.gruvbox_material_background = "hard"
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
  pattern = "gruvbox-material",
  callback = function()
    local config = vim.fn["gruvbox_material#get_configuration"]()
    local palette = vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
    local set_hl = vim.fn["gruvbox_material#highlight"]

    set_hl("TelescopeNormal", palette.none, palette.bg_dim)
    set_hl("TelescopeBorder", palette.bg_dim, palette.bg_dim)
  end,
})

return {
  {
    "sainnhe/gruvbox-material",
  },
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
