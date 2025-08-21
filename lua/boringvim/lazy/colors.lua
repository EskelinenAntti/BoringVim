return {
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox", -- optional
		config = function()
			vim.cmd("colorscheme gruvbox")

			-- opaque background
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
}
