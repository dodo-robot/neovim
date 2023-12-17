-- Enable the plugin
require('nvim-web-devicons').setup()

-- Use a patched font for icons (change this to your installed font)
vim.cmd('set guifont=Hack:style=Regular')

-- Refresh the icons
require('nvim-web-devicons').get_icons()
