return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			stages = "fade", -- Animasyon stili
			timeout = 3000, -- Mesajın ekranda kalma süresi
		})
	end,
}
