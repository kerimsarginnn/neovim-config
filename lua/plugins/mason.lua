return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- gopls için LSP yapılandırması
			lspconfig.gopls.setup({
				capabilities = capabilities,
				settings = {
					gopls = {
						analyses = {
							unusedparams = true, -- Kullanılmayan parametre analizi
						},
						staticcheck = true, -- Staticcheck etkinleştirme
					},
				},
			})

			-- tsserver için LSP yapılandırması
			lspconfig.ts_ls.setup({ capabilities = capabilities })

			-- eslint

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<C-.>", vim.lsp.buf.code_action, {})
		end,
	},
}
