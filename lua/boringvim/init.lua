require("boringvim.set")
require("boringvim.remap")
require("boringvim.lazy_init")

local augroup = vim.api.nvim_create_augroup
local BoringVimGroup = augroup('BoringVim', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = BoringVimGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Keeping this only if needd to set the overall color
-- autocmd('BufEnter', {
--     group = BoringVimGroup,
--     callback = function()
--         if vim.bo.filetype == "zig" then
--             pcall(vim.cmd.colorscheme, "tokyonight-night")
--         else
--             pcall(vim.cmd.colorscheme, "rose-pine-moon")
--         end
--     end
-- })


autocmd('LspAttach', {
    group = BoringVimGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- just use the build in filebrowser
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
