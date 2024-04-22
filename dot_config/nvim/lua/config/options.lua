-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.wiki_root = "~/wiki"

local opt = vim.opt

opt.list = true
opt.listchars = { tab = "• ", trail = "-", nbsp = "␣", leadmultispace = "•" }

opt.scrolloff = 20
