return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
		config = function()
			require("window-picker").setup()
			require("neo-tree").setup({
				default_component_configs = {
					indent = {
						with_expanders = true,
					},
				},
				window = {
					position = "float",
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {
						["o"] = "open_with_window_picker",
						["x"] = "close_node",
						["X"] = "cut_to_clipboard",
						["W"] = "close_all_nodes",
						["z"] = "",
						["H"] = "",
						["h"] = "toggle_hidden",
						["/"] = "",
					},
				},
				filesystem = {
					follow_current_file = {
						enable = true,
					},
					filtered_items = {
						--visible = true,
						hide_dotfiles = false,
						hide_gitignored = true,
						hide_by_name = {
							".github",
							"node_modules",
							".gitignore",
							"package-lock.json",
						},
						never_show = { ".git" },
					},
					event_handlers = {
						{
							event = "neo_tree_buffer_enter",
							handler = function()
								vim.cmd([[ setlocal relativenumber ]])
							end,
						},
					},
				},
			})

			-- mappings
			local set = vim.keymap.set
			local opts = { noremap = true, silent = true }

			set("n", "<leader>r", ":Neotree reveal reveal_force_cwd<cr>", opts)
			set("n", "<leader>b", ":Neotree toggle reveal reveal_force_cwd<cr>", opts)
		end,
	},
}
