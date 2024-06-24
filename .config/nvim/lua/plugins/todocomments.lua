-- https://github.com/folke/todo-comments.nvim
-- Highlight, list and search todo comments in your projects

return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
}
