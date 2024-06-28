-- https://github.com/numToStr/Comment.nvim
-- A neovim plugin to comment out code quickly

return {
	"numToStr/Comment.nvim",
	opts = {},
	config = function()
		require("Comment").setup()
	end,
}
