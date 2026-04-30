return {
	'folke/snacks.nvim',
	name = 'snacks.nvim',
	priority = 1000,
	lazy = false,
	---@type snack.Config
	opts = {
		dashboard = { enabled = true },
		input = { enabled = true },
		indent = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		git = {},
		gitbrowse = {},
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		scroll = { enabled = true },
		scope = { enabled = true },
		picker = { enabled = true }
	}
}
