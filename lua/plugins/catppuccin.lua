return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				nvimtree = true,
				treesitter = true,
				mason = true,
				cmp = true,
			},
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.rosewater },
					LineNrAbove = { fg = colors.flamingo, italic = true },
					LineNr = { fg = "white", italic = true },
					LineNrBelow = { fg = colors.flamingo, italic = true },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
