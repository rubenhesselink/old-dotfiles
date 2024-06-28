-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
-- Harpoon is a bookmarking plugin for neovim. It allows you to quickly jump to different locations in your project.

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		-- Add a few keymaps to make it easier to use
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "[HARPOON] Add a bookmark" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "[HARPOON] Toggle quick menu" })

		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(1)
		end, { desc = "[HARPOON] Select bookmark 1" })
		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(2)
		end, { desc = "[HARPOON] Select bookmark 2" })
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end, { desc = "[HARPOON] Select bookmark 3" })
		vim.keymap.set("n", "<C-s>", function()
			harpoon:list():select(4)
		end, { desc = "[HARPOON] Select bookmark 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "[HARPOON] Previous bookmark" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "[HARPOON] Next bookmark" })
	end,
}
