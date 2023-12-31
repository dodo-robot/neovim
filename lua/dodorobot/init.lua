require("dodorobot.set")
require("dodorobot.remap")
require("packer")

local augroup = vim.api.nvim_create_augroup
local dodorobotGroup = augroup('dodorobot', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = dodorobotGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Enable the plugin
require('nvim-web-devicons').setup()

-- Use a patched font for icons (change this to your installed font)
vim.cmd('set guifont=Hack:h10')

-- Refresh the icons
require('nvim-web-devicons').get_icons()


