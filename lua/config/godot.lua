-- Listens to godot, for autoswitching between files in godot
local projectfile = vim.fn.getcwd() .. '/project.godot'
if projectfile then
	vim.fn.serverstart '.godothost'
end
