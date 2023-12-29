local keymap = vim.keymap -- for conciseness
local api = vim.api

-- --> Split philosopy plugins start
-- Splits
keymap.set("n", "<leader>hs", "<cmd>sp<CR>")
keymap.set("n", "<leader>vs", "<cmd>vs<CR>")
-- Files
-- telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- Neotree.
api.nvim_set_keymap("n", "<leader>f", ":Neotree toggle<CR>", { noremap = true, silent = true })
-- Aerial
keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")
-- Lsp saga
keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>")

-- Moving btw splits.
api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })
-- -> Splits changing size start.
-- Horizontal
vim.api.nvim_set_keymap("n", "<C-S-k>", "<C-W>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-j>", "<C-W>-", { noremap = true, silent = true })

-- Vertical
vim.api.nvim_set_keymap("n", "<C-S-h>", "<C-W>>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-l>", "<C-W><", { noremap = true, silent = true })
-- -> Splits changing size end.
-- --> Split philosopy plugins end

-- Languages support.
-- Dap & cmake
keymap.set("n", "<leader>i", "<cmd>lua require('dapui').toggle()<cr>")
keymap.set("n", "<leader>bp", "<cmd>DapToggleBreakpoint<cr>")

keymap.set("n", "<leader>q", "<cmd>CMakeClose<cr>")
keymap.set("n", "<leader>k", "<cmd>CMake build_and_run<cr>")

-- Saga
keymap.set("n", "<C-;>", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "<leader>t", "<cmd>Lspsaga term_toggle<cr>")
keymap.set("n", "<C-p>", "<cmd>Lspsaga peek_definition<cr>")

-- Using ; to open cmd
-- vim.cmd([[nnoremap ; :]])

vim.api.nvim_set_keymap("n", "<Leader>nh", ":nohlsearch<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ll", ":lua require('lsp_lines').toggle()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
