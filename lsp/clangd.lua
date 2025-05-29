return {
	cmd = {
		'clangd',
		'--background-index',
		'--enable-config',
		'--header-insertion=never',
	},
	root_markers = {
		'compile_commands.json',
		'compile_flags.txt',
	},
	filetypes = {
		'c',
		'cpp',
	},
}
