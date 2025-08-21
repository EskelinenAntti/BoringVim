return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				elixir = { "mix" },
				markdown = { "prettier" },
			},
		})

		-- Format code
		vim.keymap.set("n", "<leader>l", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
