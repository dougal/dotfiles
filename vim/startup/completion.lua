-- TODO: Get lspkind working
local util = require 'lspconfig.util'
local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer",  keyword_length = 3 },
    { name = "tags" },
    { name = "path" },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete({}), -- TODO: Should the argument be something more significant?
  }),
})

-- Sign icons (replaces lsp.set_preferences sign_icons)
vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = 'E',
      [vim.diagnostic.severity.WARN]  = 'W',
      [vim.diagnostic.severity.HINT]  = 'H',
      [vim.diagnostic.severity.INFO]  = 'I',
    },
  },
})

-- Global on_attach (replaces lsp.on_attach)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  end
})

-- TODO: Setup cmp-cmdline

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- ===========
-- LSP Configs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- ===========

-- Setup:
-- $ gem install --user-install solargraph solargraph-rails
-- $ solargraph config
-- Add `solargraph-rails` to `plugins` in `.solargraph.yml`
vim.lsp.enable('solargraph')

-- OR use ruby_lsp
-- vim.lsp.enable('ruby_lsp')

-- gem install sorbet
vim.lsp.config('sorbet', {
  cmd = { "srb", "tc", "--lsp", "--disable-watchman" }
})
vim.lsp.enable('sorbet')

vim.lsp.config('terraform_lsp', {
  -- Add .tf to default types.
  filetypes = { "terraform", "hcl", "tf" },
  root_dir = util.root_pattern(".terraform") -- remove .git
})
vim.lsp.enable('terraform_lsp')


vim.lsp.config('lua_ls', {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths
          -- here.
          -- '${3rd}/luv/library',
          -- '${3rd}/busted/library',
        },
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = vim.api.nvim_get_runtime_file('', true),
      },
    })
  end,
  settings = {
    Lua = {},
  },
})
vim.lsp.enable('lua_ls')

vim.lsp.enable('rust_analyzer')

vim.lsp.enable('bashls')

vim.lsp.enable('gopls')

-- Automatically manage Golang imports
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})
