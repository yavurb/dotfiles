-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "ss", "<cmd>w<cr>", { silent = true })

-- Obsidian keymaps
map("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { silent = true })
map("n", "<leader>ow", "<cmd>ObsidianWorkspace<cr>", { silent = true })
map("n", "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", { silent = true })
map("n", "<leader>on", "<cmd>ObsidianNew<cr>", { silent = true })
map("n", "<leader>or", "<cmd>ObsidianRename<cr>", { silent = true })
