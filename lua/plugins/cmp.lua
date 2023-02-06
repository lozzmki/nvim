local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require('snippy').expand_snippet(args.body)
		end
	},
	window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
	mapping = cmp.mapping.preset.insert({
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
      	['<C-k>'] = cmp.mapping.scroll_docs(4),
      	['<C-Space>'] = cmp.mapping.complete(),
      	['<C-e>'] = cmp.mapping.abort(),
      	['<Tab>'] = cmp.mapping.confirm({ select = true })
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'snippy' }
	})
})


