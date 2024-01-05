-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

set("n", "+", "<C-a>")
set("n", "-", "<C-x>")

-- Select all
set("n", "<C-a>", "ggVG")

-- Center screen after jumping
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- delete to void with uppercase motion
set({ "n", "v" }, "dd", [["_dd]])

set({ "n", "v" }, "dw", [["_dW]])
set({ "n", "v" }, "de", [["_dE]])
set({ "n", "v" }, "db", [["_dB]])

set({ "n", "v" }, "cw", "cW")
set({ "n", "v" }, "ce", "cE")
set({ "n", "v" }, "cb", "cB")

set({ "n", "v" }, "vw", "vW")
set({ "n", "v" }, "ve", "vE")
set({ "n", "v" }, "vb", "vB")

-- Replace Selection without yanking
set("x", "<leader>p", [["_dP]])

-- yanking to system clipboard
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])

-- delete to void
set({ "n", "v" }, "<leader>d", [["_d]])

set("n", "Q", "<nop>")

-- replace all
set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- New tab
set("n", "te", ":tabedit<Return>", opts)
set("n", "<tab>", ":tabnext<Return>", opts)
set("n", "<S-tab>", ":tabprev<Return>", opts)

-- Split Window
set("n", "<leader>ws", ":split<Return>")
set("n", "<leader>wv", ":vsplit<Return>")

-- Move Window
set("n", "<leader>wh", "<C-w>h")
set("n", "<leader>wj", "<C-w>j")
set("n", "<leader>wk", "<C-w>k")
set("n", "<leader>wl", "<C-w>l")

-- Resize Window
set("n", "<C-w><left>", "<C-w><")
set("n", "<C-w><right>", "<C-w>>")
set("n", "<C-w><up>", "<C-w>+")
set("n", "<C-w><down>", "<C-w>-")

-- Functions
-- Toggle Copilot, use <C-c> maybe?
set("n", "<leader>cc", function()
    vim.g.copilot_enabled = not vim.g.copilot_enabled
    vim.notify("Copilot is now " .. (vim.g.copilot_enabled and "enabled" or "disabled"))
end)
