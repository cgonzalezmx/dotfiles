local Snacks = require "snacks"
local picker = Snacks.picker
local pupup_config = {
	border = 'rounded',
	max_height = 25,
	max_width = 120,
}
local l = '<leader>'
local config_dir = vim.fn.stdpath('config')

function set_keymaps(keymap_definitions)
	for _, definition in ipairs(keymap_definitions) do
		Snacks.keymap.set(unpack(definition))
	end
end

function quit_all()
	Snacks.bufdelete.all()
	vim.cmd('qa')
end

local keymaps = {
	{ 'n', l..',s', '<cmd>new<cr>', { desc = 'División horizontal' } },
	{ 'n', l..',v', '<cmd>vnew<cr>', { desc = 'División vertical' }},
	{ { 'n', 'i', 't' }, '<a-t>', function() Snacks.terminal.toggle() end, { desc = 'Mostrar ocultar terminal' } },
	{ 'n', l..'q', function() quit_all() end, { desc = 'Salir' } },
	{ 'n', l..'w', '<cmd>w<cr>', { desc = 'Guardar' } },
	{ 'n', l..'<left>', '<c-w>h', { desc = 'Ir al split izquierdo' } },
	{ 'n', l..'<down>', '<c-w>j', { desc = 'Ir al split de abajo' } },
	{ 'n', l..'<up>', '<c-w>k', { desc = 'Ir al split de arriba' } },
	{ 'n', l..'<right>', '<c-w>l', { desc = 'Ir al split derecho' } },
	{ 'n', l..'<space>', function() picker.smart() end, { desc = 'Búsqueda inteligente' } },
	{ 'n', l..',', function() picker.buffers() end, { desc = 'Buffers' } },
	{ 'n', l..'/', function() picker.grep() end, { desc = 'Grep' } },
	{ 'n', l..':', function() picker.command_history() end, { desc = 'Historial de comandos' } },
	{ 'n', l..'n', function() picker.notifications() end, { desc = 'Historial de notificaciones' } },
	{ 'n', l..'e', function() Snacks.explorer() end, { desc = 'Explorador' } },
	{ 'n', l..'fb', function() picker.buffers() end, { desc = 'Buffers' } },
	{ 'n', l..'fc', function() picker.files({ cwd = config_dir }) end, { desc = 'Configuración' } },
	{ 'n', l..'fh', function() picker.files({ cwd = '~/.config/hypr/' }) end, { desc = 'Configuración Hyprland' }},
	{ 'n', l..'ff', function() picker.files() end, { desc = 'Búsqueda de archivos' } },
	{ 'n', l..'fr', function() picker.recent() end, { desc = 'Recientes' } },
	{ 'n', l..'gb', function() picker.git_branches() end, { desc = 'Ramas de git' } },
	{ 'n', l..'gl', function() picker.git_log() end, { desc = 'Git log' } },
	{ 'n', l..'gL', function() picker.git_log_line() end, { desc = 'Git log line' } },
	{ 'n', l..'gs', function() picker.git_status() end, { desc = 'Estatus de git' } },
	{ 'n', l..'gS', function() picker.git_stash() end, { desc = 'Estatus de git' } },
	{ 'n', l..'gd', function() picker.git_diff() end, { desc = 'Git diff' } },
	{ 'n', l..'gf', function() picker.git_log_file() end, { desc = 'Git diff' } },
	{ 'n', l..'s', function() picker.registers() end, { desc = 'Registros' } },
	{ 'n', l..'s/', function() picker.search_history() end, { desc = 'Buscar en historial' } },
	{ 'n', l..'sa', function() picker.autocmds() end, { desc = 'Autocmds' } },
	{ 'n', l..'sb', function() picker.lines() end, { desc = 'Líneas del buffer' } },
	{ 'n', l..'sB', function() picker.grep_buffers() end, { desc = 'Grep en buffers abiertos' } },
	{ 'n', l..'sc', function() picker.command_history() end, { desc = 'Historial de comandos' } },
	{ 'n', l..'sC', function() picker.commands() end, { desc = 'Comandos' } },
	{ 'n', l..'sd', function() picker.diagnostics() end, { desc = 'Diagnóstico' } },
	{ 'n', l..'sD', function() picker.diagnostics_buffer() end, { desc = 'Diagnóstico del buffer' } },
	{ 'n', l..'sh', function() picker.help() end, { desc = 'Páginas de ayuda' } },
	{ 'n', l..'sH', function() picker.highlights() end, { desc = 'Resaltados' } },
	{ 'n', l..'si', function() picker.icons() end, { desc = 'Icónos' } },
	{ 'n', l..'sj', function() picker.jumps() end, { desc = 'Saltos' } },
	{ 'n', l..'sk', function() picker.keymaps() end, { desc = 'Atajos' } },
	{ 'n', l..'sl', function() picker.loclist() end, { desc = 'Lista de ubicaciones' } },
	{ 'n', l..'sm', function() picker.marks() end, { desc = 'Marcas' } },
	{ 'n', l..'sM', function() picker.man() end, { desc = 'Páginas man' } },
	{ 'n', l..'sp', function() picker.lazy() end, { desc = 'Buscar plugin spec' } },
	{ 'n', l..'sq', function() picker.qflist() end, { desc = 'Lista de quickfixes' } },
	{ 'n', l..'sR', function() picker.resume() end, { desc = 'Resumir' } },
	{ 'n', l..'su', function() picker.undo() end, { desc = 'Historial de undo' } },
	{ 'n', l..'ss', function() picker.lsp_symbols() end, { desc = 'Símbolos LSP' } },
	{ 'n', 'gd', function() picker.lsp_definitions() end, { desc = 'Definiciones Goto' } },
	{ 'n', 'gD', function() picker.lsp_declarations() end, { desc = 'Declaraciones Goto' } },
	{ 'n', 'gr', function() picker.lsp_references() end, { desc = 'Referencias' } }
}

set_keymaps(keymaps)
