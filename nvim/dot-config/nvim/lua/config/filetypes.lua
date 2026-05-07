vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		'javascript',
		'typescript',
		'vue',
		'svelte',
		'astro',
		'php',
		'blade',
		'hyprlang',
		'bash'
	},
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end
})

