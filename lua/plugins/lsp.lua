require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"bashls",
		"clangd",
		"dockerls",
		"pylsp",
		"omnisharp",
		"vuels",
		"yamlls",
		"jdtls",
		"marksman",
		"rust_analyzer",
		"quick_lint_js",
		"jsonls",
		"gopls",
		"cssls"
	},
	automatic_installation = true
})
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp = require("lspconfig")
lsp.sumneko_lua.setup {}

