return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	config = function()
		require("barbar").setup({
			filetype = {
				-- Sets the icon's highlight group.
				-- If false, will use nvim-web-devicons colors
				custom_colors = true,

				-- Requires `nvim-web-devicons` if `true`
				enabled = true,
			},
			sidebar_filetypes = {
				-- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
				NvimTree = true,
				-- Or, specify the text used for the offset:
				undotree = {
					text = "undotree",
					align = "center", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
				},
				-- Or, specify the event which the sidebar executes when leaving:
				["neo-tree"] = { event = "BufWipeout" },
				-- Or, specify all three
				--Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
			},
		})

		vim.keymap.set("n", "<leader>x", ":BufferClose<CR>", {})
		vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "none" })
		vim.api.nvim_set_hl(0, "BufferVisible", { bg = "none" })
		vim.api.nvim_set_hl(0, "BufferAlternate", { bg = "none" })
		vim.api.nvim_set_hl(0, "BufferInactive", { bg = "none", fg = "#aaaaaa" })
		vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "none", fg = "" })
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
