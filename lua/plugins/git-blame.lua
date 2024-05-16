return {
	"f-person/git-blame.nvim",
	init = function()
		require("gitblame").setup({
			--Note how the `gitblame_` prefix is omitted in `setup`
			enabled = true,
			date_format = "%r",
			message_when_not_commited = " ",
		})
	end,
}
