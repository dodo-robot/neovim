local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    --:help lsp-zero-keybindings
    -- to learn the available actions
    client.server_capabilities.semanticTokensProvider = nil
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

end)

-- (Optional) configure lua language server
--local lua_opts = lsp_zero.nvim_lua_ls()

lsp_zero.setup_servers({'jdtls', 'pyright', 'tsserver', 'marksman'})

---
---
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup({
    mapping = cmp.mapping.preset.insert({

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-n>'] = cmp_action.luasnip_jump_forward(),
        ['<C-p>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion documentation
        ['<leader> '] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
})


lsp_zero.set_preferences({
    sign_icons = {}
})

lsp_zero.setup()
