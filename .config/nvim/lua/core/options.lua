vim.cmd("set expandtab")      -- 
vim.cmd("set tabstop=4")      --
vim.cmd("set softtabstop=4")  --
vim.cmd("set shiftwidth=4")   -- these four set tab to 2 spaces
vim.cmd("set number")         -- code numbers
vim.cmd("set laststatus=0")   -- disables statusbar
vim.cmd("set shortmess=A")    -- disables annoying swapfile msg
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus' -- clipboard sync
vim.o.ignorecase = true
vim.cmd("set textwidth=0") -- disables wrapping
vim.cmd("set wrapmargin=0")
