return {
	"akinsho/bufferline.nvim",
	requires = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				close_command = "bdelete! %d", -- X ile buffer kapama
				right_mouse_command = "bdelete! %d", -- Sağ tık ile kapama
				show_buffer_close_icons = true, -- Buffer kapama ikonları
				diagnostics = "nvim_lsp", -- LSP hatalarını göster
				offsets = {
					{
						filetype = "neo-tree",
						text = "Nvim Tree",
						separator = true,
						text_align = "left",
					},
				},
			},
		})
		vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { noremap = true, silent = true })
	end,
}
