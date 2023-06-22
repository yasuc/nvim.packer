local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	window = {
		completion = cmp.config.window.bordered({
			border = "single",
		}),
		documentation = cmp.config.window.bordered({
			border = "single",
		}),
	},

	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol",
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "nvim_lsp_signature_help" },
		{ name = "calc" },
	}, {
		{ name = "buffer", keyword_length = 2 },
	}),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "nvim_lsp_document_symbol" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline", keyword_length = 2 },
	}),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.cmd("let g:vsnip_filetypes = {}")

require("jaq-nvim").setup({
	cmds = {
		-- Uses vim commands
		internal = {
			lua = "luafile %",
			vim = "source %",
		},

		-- Uses shell commands
		external = {
			java = "java %",
			markdown = "glow %",
			python = "python %",
			go = "go run %",
			sh = "sh %",
		},
	},

	behavior = {
		-- Default type
		default = "float",

		-- Start in insert mode
		startinsert = false,

		-- Use `wincmd p` on startup
		wincmd = false,

		-- Auto-save files
		autosave = false,
	},

	ui = {
		float = {
			-- See ':h nvim_open_win'
			border = "none",

			-- See ':h winhl'
			winhl = "Normal",
			borderhl = "FloatBorder",

			-- See ':h winblend'
			winblend = 0,

			-- Num from `0-1` for measurements
			height = 0.8,
			width = 0.8,
			x = 0.5,
			y = 0.5,
		},

		terminal = {
			-- Window position
			position = "bot",

			-- Window size
			size = 10,

			-- Disable line numbers
			line_no = false,
		},

		quickfix = {
			-- Window position
			position = "bot",

			-- Window size
			size = 10,
		},
	},
})
