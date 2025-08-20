vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", "<cmd>Ex<cr>")

-- Format code
vim.keymap.set("n", "<leader>l", function()
    require("conform").format({ bufnr = 0 })
end)

-- Quickfix bindings
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- Potentially useful
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
