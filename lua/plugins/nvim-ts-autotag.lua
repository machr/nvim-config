return {
	"windwp/nvim-ts-autotag",
	Lazy = true,
	event = "InsertEnter",
	ft = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"handlebars",
		"html",
		"vue",
		"svelte",
		"blade",
	},
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
