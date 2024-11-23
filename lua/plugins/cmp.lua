return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer", -- Buffer tabanlı tamamlamalar
		"hrsh7th/cmp-path", -- Dosya yolu tamamlamaları
		"hrsh7th/cmp-nvim-lsp", -- LSP desteği
		"hrsh7th/cmp-emoji", -- Emoji desteği (isteğe bağlı)
		"L3MON4D3/LuaSnip", -- Snippet desteği
		"saadparwaiz1/cmp_luasnip", -- LuaSnip ile entegrasyon
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body) -- Snippetleri genişletmek için LuaSnip kullan
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(), -- Manuel tamamlama
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Seçimi onayla
				["<Tab>"] = cmp.mapping.select_next_item(), -- Sonraki seçeneğe git
				["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Önceki seçeneğe git
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "copilot" },
				{ name = "emoji" }, -- Emoji desteği
			}),
		})
	end,
}
