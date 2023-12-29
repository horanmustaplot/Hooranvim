-- Here we load plugins,
-- NOTE: those plugins are devided depending on the category,
-- and somehow in subjective way.

return {
	{ import = "hood.plugins.theming" }, -- For colorschemes.
	{ import = "hood.plugins.completion" }, -- For auto completion.
	{ import = "hood.plugins.lsp" },
	{ import = "hood.plugins.debugging" },
	{ import = "hood.plugins.mason" },
	{ import = "hood.plugins.language-support.cc" }, -- Supporting for c and cpp
	-- languages.
	{ import = "hood.plugins.helpers" },
	{ import = "hood.plugins.ui" },
	{ import = "hood.plugins.productivity" },
	{ import = "hood.plugins.file-navigation" },
	{ import = "hood.plugins.utils" },
	{ import = "hood.plugins.games" },
}
