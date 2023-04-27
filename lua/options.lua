local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	title = true,
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	hlsearch = true,
	wrapscan = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	incsearch = false,
	smartindent = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 300,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	shell = "cmd.exe",
	backupskip = { "/tmp/*", "/private/tmp/*" },
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	list = true,
	relativenumber = false,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = false,
	winblend = 0,
	wildoptions = "pum",
	pumblend = 5,
	background = "dark",
	scrolloff = 5,
	sidescrolloff = 8,
	guifont = "monospace:h17",
	splitbelow = false, -- オンのとき、ウィンドウを横分割すると新しいウィンドウはカレントウィンドウの下に開かれる
	splitright = false, -- オンのとき、ウィンドウを縦分割すると新しいウィンドウはカレントウィンドウの右に開かれる

	textwidth = 0, -- 一行に長い文章を書いていても自動折り返しをしない
	autoread = true, -- 他で書き換えられたら自動で読み直す
	hidden = true, -- 編集中でも他のファイルを開けるようにする
	backspace = "indent,eol,start", -- バックスペースでなんでも消せるように
	formatoptions = "lmoq", -- テキスト整形オプション，マルチバイト系を追加
	visualbell = false, -- ビジュアルベル抑止
	browsedir = "buffer", -- Exploreの初期ディレクトリ
	whichwrap = "b,s,h,l,<,>,[,]", -- カーソルを行頭、行末で止まらないようにする
	showcmd = true, -- コマンドをステータス行に表示
	modelines = 0, -- モードラインは無効
	ttimeoutlen = 50,
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work
