return {
	{
		"rebelot/kanagawa.nvim",
		enabled = true,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanagawa")
		end,
	},
}
