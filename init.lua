--vim.g.use_lazy = true

--if not vim.g.use_lazy then
--	local ok, impatient = pcall(require, "impatient")
--	if ok then
--		impatient.enable_profile()
--	else
--		vim.notify("cannot load impatient", vim.log.levels.WARN)
--	end
--end

require("base")
require("autocmds")
require("options")
require("keymaps")
require("colorscheme")
require("plugins")
require("plugin-setting")
require("mason").setup()
require("mason-lspconfig").setup()
