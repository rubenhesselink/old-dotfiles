-- https://github.com/folke/noice.nvim

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			lsp = {
				-- override markdown rendering so the cmp and other plugins use Treesitter
				override = {
					["vim.lsp.util.convert_input_to_markdown"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {},
		})
	end,
}
