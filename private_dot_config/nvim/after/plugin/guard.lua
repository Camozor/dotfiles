local ft = require("guard.filetype")

ft("typescript,vue"):fmt("prettierd")

require("guard").setup({
	fmt_on_save = true,
	lsp_as_default_formatter = false,
})
