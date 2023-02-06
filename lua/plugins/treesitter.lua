require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"vim",
		"bash", 
		"c", 
		"cpp", 
		"javascript", 
		"c_sharp", 
		"json", 
		"html", 
		"lua", 
		"python", 
		"java", 
		"rust",
		"go",
		"ruby",
		"perl",
		"dockerfile",
		"make",
		"vue",
		"css",
		"yang",
		"glsl",
		"hlsl"
	},
	highlight = { enable = true },
	indent = { enable = true },

	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
})
