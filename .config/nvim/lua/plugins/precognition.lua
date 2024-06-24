-- https://github.com/tris203/precognition.nvim
-- Tool that assists you in discovering new motions

return {
	"tris203/precognition.nvim",
	config = function()
		local precognition = require("precognition")
		precognition:setup({})
		-- Add keymap for toggling precognition
		vim.keymap.set("n", "<leader>p", function()
			precognition:toggle()
		end, { desc = "Toggle [P]recognition" })
		-- Disable precognition by default
		precognition:toggle()
	end,
}
