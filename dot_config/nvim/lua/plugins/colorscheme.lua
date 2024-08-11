return {
  {
    "sainnhe/everforest",
    enable = false,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "sainnhe/gruvbox-material",
    enable = false,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
        pattern = "gruvbox-material",
        callback = function()
          local config = vim.fn["gruvbox_material#get_configuration"]()
          local palette =
            vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
          local set_hl = vim.fn["gruvbox_material#highlight"]

          set_hl("TelescopeTitle", palette.yellow, palette.none, "bold")
          set_hl("TelescopePromptNormal", palette.none, palette.bg3)
          set_hl("TelescopePromptBorder", palette.bg3, palette.bg3)
          set_hl("TelescopeResultsNormal", palette.fg0, palette.bg1)
          set_hl("TelescopeResultsBorder", palette.bg1, palette.bg1)
          set_hl("TelescopePreviewNormal", palette.none, palette.bg_dim)
          set_hl("TelescopePreviewBorder", palette.bg_dim, palette.bg_dim)
        end,
      })
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    enable = false,
    opts = {
      options = {
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "italic",
          variables = "italic",
        },
      },
      groups = {
        all = {
          -- TelescopeTitle = { fg = "palette.sel1", style = "bold" },
          TelescopePromptNormal = { bg = "palette.bg3" },
          TelescopePromptBorder = { fg = "palette.bg3", bg = "palette.bg3" },
          TelescopeResultsNormal = { fg = "palette.fg0", bg = "palette.bg2" },
          TelescopeResultsBorder = { fg = "palette.bg2", bg = "palette.bg2" },
          TelescopePreviewNormal = { bg = "palette.bg0" },
          TelescopePreviewBorder = { bg = "palette.bg0", fg = "palette.bg0" },
        },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    enable = false,
    opts = {
      commentStyle = { italic = true },
      overrides = function(colors)
        local theme = colors.theme
        return {
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        }
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {
        mocha = {
          base = "#0e0e0e",
          mantle = "#0e0e0e",
          crust = "#0e0e0e",
        },
      },
      highlight_overrides = {
        mocha = function(_)
          return {
            LspInlayHint = { bg = "bg" },
            CursorLine = { bg = "bg" },
          }
        end,
      },
      integrations = {
        telescope = {
          enable = true,
          style = "nvchad",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
