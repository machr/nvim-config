return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					file_ignore_patterns = { ".git", "node_moudules" },
				},
				pickers = {
					live_grep = {
						hidden = true,
						no_ignore = true,
					},
				},
				find_files = {
					hidden = true,
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
			vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, {})
			vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, {})
			vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
