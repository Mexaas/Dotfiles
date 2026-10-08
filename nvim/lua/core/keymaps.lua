-- keymaps module 
local key = vim.keymap.set

key("n", "<C-h>", "<C-w>h", { desc = "Window switch left" })
key("n", "<C-j>", "<C-w>j", { desc = "Window switch down" })
key("n", "<C-k>", "<C-w>k", { desc = "Window switch up" })
key("n", "<C-l>", "<C-w>l", { desc = "Window switch right" })
key("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Escape Terminal move left"})
key("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Escape Terminal move down"})
key("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Escape Terminal move up"})
key("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Escape Terminal move right"})
key({ "n", "t" }, "<S-h>", "<cmd>vertical resize -2<cr>", { desc = "Window resize left"})
key({ "n", "t" }, "<S-j>", "<cmd>resize -2<cr>", { desc = "Window resize down"})
key({ "n", "t" }, "<S-k>", "<cmd>resize +2<cr>", { desc = "Window resize up"})
key({ "n", "t" }, "<S-l>", "<cmd>vertical resize +2<cr>", { desc = "Window resize right"})

key("v", "<Tab>", ">gv", { desc = "Move text to right with TAB" })
key("v", "<S-Tab>", "<gv", { desc = "Move text to left with TAB" })

key("n", "<leader>h", function() Snacks.dashboard() end, { desc = "Back to dasboard" })
key("n", "<leader>e", "<cmd>Neotree<cr>", { desc = "File browser open" })
key("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })

key("i", "jk", "<Esc>", { desc = "Insert mode escap" })
