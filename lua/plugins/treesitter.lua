return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"css",
					"comment",
					"dockerfile",
					"html",
					"javascript",
					"typescript",
					"json",
					"lua",
					"regex",
					"typescript",
					"php",
					"yaml",
				},
				sync_install = true,
				highlight = {
					enable = true,
					use_languagetree = true,
					additional_vim_regex_highlighting = false,
					disable = function(_, bufnr)
						local buf_name = vim.api.nvim_buf_get_name(bufnr)
						local num_of_lines = vim.api.nvim_buf_line_count(bufnr)
						return num_of_lines > 50000
					end,
				},
				indent = {
					enable = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<cr>",
						node_incremental = "<cr>",
						scope_incremental = "<s-cr>",
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
