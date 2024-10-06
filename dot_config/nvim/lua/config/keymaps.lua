-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "ss", "<cmd>w<cr>", { silent = true })

-- Obsidian keymaps
map("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { silent = true, desc = "Search in current vault" })
map("n", "<leader>ow", "<cmd>ObsidianWorkspace<cr>", { silent = true, desc = "Set the current vault" })
map("n", "<leader>of", "<cmd>ObsidianQuickSwitch<cr>", { silent = true, desc = "Quick switch to a note" })
map("n", "<leader>on", "<cmd>ObsidianNew<cr>", { silent = true, desc = "Create a new note" })
map("n", "<leader>or", "<cmd>ObsidianRename<cr>", { silent = true, desc = "Rename the current note" })

-- Move lines
map("n", "<c-j>", "<cmd>m .+1<cr>==", { silent = true })
map("n", "<c-k>", "<cmd>m .-2<cr>==", { silent = true })
map("v", "<c-j>", ":m '>+1<cr>gv=gv", { silent = true })
map("v", "<c-k>", ":m '<-2<cr>gv=gv", { silent = true })
map("i", "<c-j>", "<esc>:m .+1<cr>==gi", { silent = true })
map("i", "<c-k>", "<esc>:m .-2<cr>==gi", { silent = true, noremap = true })
