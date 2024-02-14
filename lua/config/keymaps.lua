-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

set("n", "+", "<C-a>")
set("n", "-", "<C-x>")

-- Select all
set("n", "<C-a>", "ggVG")

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
copilot_enabled = true
set("n", "<C-c>", function()
    copilot_enabled = not copilot_enabled
    if copilot_enabled then
        vim.cmd("Copilot disable")
    else
        vim.cmd("Copilot enable")
    end
    vim.notify("Copilot is now " .. (copilot_enabled and "enabled" or "disabled"))
end)
