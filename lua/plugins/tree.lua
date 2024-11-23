return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set({ "n", "v" }, "<C-n>", ":Neotree toggle<CR>", {})
		require("neo-tree").setup({
			window = {
				position = "left", -- Tam ekran yerine yüzer pencere
				width = 40, -- Pencere genişliği
				mappings = {
					["<Tab>"] = nil, -- Neo-tree içinde Tab tuşunu devre dışı bırak
				},
			},
			filesystem = {
				follow_current_file = true, -- Mevcut dosyayı takip et
				hijack_netrw_behavior = "open_default", -- Netrw yerine neo-tree kullan
			},
		})
	end,
}
