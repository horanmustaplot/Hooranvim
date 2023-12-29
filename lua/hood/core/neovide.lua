if vim.g.neovide then
	vim.cmd("let g:neovide_hide_mouse_when_typing = 1")

	vim.g.neovide_padding_top = 10
	vim.g.neovide_padding_left = 10
	vim.g.neovide_padding_right = 10
	vim.g.neovide_padding_bottom = 10

	vim.g.neovide_transparency = 0.90

	local map = vim.keymap.set

	local function neovideScale(amount)
		local temp = vim.g.neovide_scale_factor + amount

		if temp < 0.5 then
			return
		end

		vim.g.neovide_scale_factor = temp
	end

	map("n", "<C-=>", function()
		neovideScale(0.1)
	end)

	map("n", "<C-->", function()
		neovideScale(-0.1)
	end)
end
