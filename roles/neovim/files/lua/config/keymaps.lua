-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map({ "i" }, "jk", "<esc>", { desc = "Fast escape", noremap = true })
map({ "v" }, "<leader>/", "gc", { desc = "Toggle Comment", remap = true })
map({ "n" }, "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })

-- Tmux Navigate keymaps
map({ "n" }, "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "window left", silent = true })
map({ "n" }, "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "window right", silent = true })
map({ "n" }, "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "window down", silent = true })
map({ "n" }, "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "window up", silent = true })
