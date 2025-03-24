local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "cmdline" },
        { name = "nvim_lsp_signature_help" }
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-y>"] = cmp.mapping.complete(),
		["<C-c>"] = cmp.mapping.abort(),
		["<C-l>"] = cmp.mapping.confirm({ select = true }),
	}),
	experimental = {
		ghost_text = false,
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol",
			maxwidth = 50,
            show_labelDetails = true,
			ellipsis_char = "...",
		}),
	},
})

cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "path" },
		{ name = "cmdline" },
	},
})
