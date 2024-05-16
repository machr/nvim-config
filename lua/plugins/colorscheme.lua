return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = true,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"maxmx03/fluoromachine.nvim",
		enabled = false,
		lazy = false,
		priority = 10001,
		config = function()
			local fm = require("fluoromachine")

			fm.setup({
				glow = false,
				theme = "fluoromachine",
			})

			vim.cmd.colorscheme("fluoromachine")
		end,
	},

	{
		"folke/tokyonight.nvim",
		enabled = false,
		config = function()
			vim.cmd("colorscheme tokyonight-moon")
			vim.cmd("highlight CursorLineNr guifg=orange")
			vim.cmd("highlight CursorLine guibg=#3f3d3b")
			vim.cmd("highlight LineNr guifg=#5b5b5b")
		end,
	},
}
