return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				'laravel_ls', 'intelephense', 'emmet_language_server', 'vtsls', 'vue_ls',
				'tailwindcss'
			}
		},
		dependencies = {
			{"mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig"
		},
	},
}
