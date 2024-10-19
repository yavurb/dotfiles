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
map("n", "<c-s-j>", "<cmd>m .+1<cr>==", { silent = true })
map("n", "<c-s-k>", "<cmd>m .-2<cr>==", { silent = true })
map("v", "<c-s-j>", ":m '>+1<cr>gv=gv", { silent = true })
map("v", "<c-s-k>", ":m '<-2<cr>gv=gv", { silent = true })
map("i", "<c-s-j>", "<esc>:m .+1<cr>==gi", { silent = true })
map("i", "<c-s-k>", "<esc>:m .-2<cr>==gi", { silent = true, noremap = true })

-- Markview keymaps (subset of Obsidian keymaps)
map("n", "<leader>op", "<cmd>Markview splitToggle<cr>", { silent = true, desc = "Toggle preview" })
map("n", "<leader>oa", "<cmd>Markview toggle<cr>", { silent = true, desc = "Toggle" })

-- Smart splits
map("n", "<C-h>", require("smart-splits").move_cursor_left)
map("n", "<C-j>", require("smart-splits").move_cursor_down)
map("n", "<C-k>", require("smart-splits").move_cursor_up)
map("n", "<C-l>", require("smart-splits").move_cursor_right)
map("n", "<C-\\>", require("smart-splits").move_cursor_previous)
