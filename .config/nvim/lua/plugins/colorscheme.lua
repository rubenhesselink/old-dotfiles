return {
	"zootedb0t/citruszest.nvim",
	priority = 1000,
	lazy = false,
	init = function()
		-- Load the colorscheme here.
		-- Like many other themes, this one has different styles, and you could load
		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
		vim.cmd.colorscheme("citruszest")
	end,
}
