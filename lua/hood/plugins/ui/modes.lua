-- For using a diffrent color for each mode in neovim.

return {
	"mvllow/modes.nvim",
	config = function()
		require("modes").setup({
			-- Oxocarbon
			colors = {
				copy = "#CDCDCD", -- #939c5b
				delete = "#CDCDCD", -- #fffd40
				insert = "#CDCDCD", -- #3ddbd9
				visual = "#CDCDCD", -- #82cfff
			},

			-- Set opacity for cursorline and number background
			line_opacity = 0.15,

			-- Disable modes highlights in specified filetypes
			-- Please PR commonly ignored filetypes
			ignore_filetypes = { "NvimTree", "TelescopePrompt" },
		})
	end,
	enabled = true,
}
