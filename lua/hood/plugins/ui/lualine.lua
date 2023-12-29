-- For a custumized statuline, there's some stuff that are hided from lualine checks.
-- their repository on github to change them if you want.

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- enabled = false,
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		-- configure lualine with modified theme
		lualine.setup({
			-- If you wanna disable it.
			options = {
				disabled_filetypes = {
					-- 'c', -- If you wanna hide it in C files.
					"neo-tree",
					"alpha",
					"aerial",
					"Outline",
					"qf",
					"sagaoutline",
					"dapui_scopes",
					"dapui_breakpoints",
					"dapui_stacks",
					"dapui_watches",
					"dapui_console",
					"dap-repl",
				},
				theme = "oxocarbon",
				-- section_separators = { left = '', right = '' },
				-- component_separators = { left = '', right = '' },
				-- section_separators = { left = '', right = '' },
				-- component_separators = { left = '', right = '' },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {},
				lualine_c = {},
				lualine_z = {},
				lualine_y = {},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					-- { "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
