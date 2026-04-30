local function run(callbacks)
	for _, cmd in ipairs(callbacks) do
		cmd()
	end
end

local function notify(code, messages)
	vim.schedule(function()
		if code == 0 then
			vim.notify(messages.ok, vim.log.levels.INFO, { title = 'Hugo' })
		else
			vim.notify(messages.error, vim.log.levels.ERROR, { title = 'Hugo Error'})
		end
	end)
end

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile', 'BufEnter' }, {
	callback = function(args)
		local root_markers = {
			'hugo.toml',
			'hugo.yaml',
			'hugo.json',
			'.hugo',
			'config/_default/hugo.toml'
		}
		local root = vim.fs.find(root_markers, {
			upward = true,
			stop = vim.uv.os_homedir(),
			path = vim.fs.dirname(args.file),
		})[1]

		if root then
			local project_dir = vim.fs.dirname(root)
			run({
				function()
					vim.keymap.set(
						'n',
						'<leader>hn',
						function()
							vim.ui.input({ prompt = 'Nuevo contenido: ' }, function(route)
								if not route or route == '' then return end
								vim.system({ 'hugo', 'new', route }, { cwd = project_dir }, function(result)
									notify(result.code, { ok = result.stdout, error = result.stderr })
								end)
							end)
						end,
						{ buffer = arg.buf, desc = 'Nuevo contenido' }
					)
				end,
				function()
					vim.keymap.set(
						'n',
						'<leader>hb',
						function()
							vim.system({ 'hugo', 'build' }, { cwd = project_dir }, function(result)
								notify(result.code, { ok = 'Sitio contruido.', error = 'Algo salió mal.' })
							end)
						end,
						{ buffer = arg.buf, desc = 'Construir sitio' }
					)
				end
			})
		end
	end
})
