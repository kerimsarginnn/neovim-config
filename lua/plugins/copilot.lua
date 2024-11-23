return {
	"zbirenbaum/copilot-cmp",
	config = function()
		require("copilot_cmp").setup()
	end,
	dependencies = {
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = true },
				panel = { enabled = true },
				preview = { enabled = true },
				auto_trigger = { enabled = true },
			})
		end,
	},
}
