local lsp = require("lsp-zero")
local util = require 'lspconfig.util'

-- Fix Undefined global 'vim'
-- lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer", keyword_length = 3 },
    { name = "tags" },
    { name = "path" },
    -- { name = "luasnip" },
    }
})

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

-- vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- local lspkind = require "lspkind"
-- lspkind.init()

-- local cmp = require "cmp"

-- local select_opts = {behaviour = cmp.SelectBehavior.Select}

-- cmp.setup {
--   mapping = {
--     ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
--     ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
--     ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--     ["<C-f>"] = cmp.mapping.scroll_docs(4),
--     ["<C-e>"] = cmp.mapping.close(),
--     ["<c-y>"] = cmp.mapping(
--       cmp.mapping.confirm {
--         behavior = cmp.ConfirmBehavior.Insert,
--         select = true,
--       },
--       { "i", "c" }
--     ),
--   },

--   sources = {
--     { name = "nvim_lsp" },
--     { name = "buffer", keyword_length = 3 },
--     { name = "tags" },
--     { name = "path" },
--     -- { name = "luasnip" },
--   },

--   formatting = {
--     format = lspkind.cmp_format {
--       mode = "text",
--       menu = {
--         buffer = "[buf]",
--         nvim_lsp = "[LSP]",
--         path = "[path]",
--         tags = "[tags]",
--       },

--       -- Disable symbols.
--       symbol_map = {
--         Class         = '',
--         Color         = '',
--         Constant      = '',
--         Constructor   = '',
--         Enum          = '',
--         EnumMember    = '',
--         Event         = '',
--         Field         = '',
--         File          = '',
--         Folder        = '',
--         Function      = '',
--         Interface     = '',
--         Keyword       = '',
--         Method        = '',
--         Module        = '',
--         Operator      = '',
--         Property      = '',
--         Reference     = '',
--         Snippet       = '',
--         Struct        = '',
--         Text          = '',
--         TypeParameter = '',
--         Unit          = '',
--         Variable      = '',
--       }
--     },
--   },

--   experimental = {
--     -- native_menu = false,

--     ghost_text = false,
--   },
-- }

cmp.setup.cmdline("/", {
  completion = {
    autocomplete = false,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp_document_symbol" },
  }, {
    -- { name = "buffer", keyword_length = 5 },
  }),
})

cmp.setup.cmdline(":", {
  completion = {
    autocomplete = false,
  },

  sources = cmp.config.sources({
    {
      name = "path",
    },
  }, {
    {
      name = "cmdline",
      max_item_count = 20,
      keyword_length = 4,
    },
  }),
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it
-- to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)


-- local util = require 'lspconfig.util'
-- Setup:
-- $ gem install --user-install solargraph solargraph-rails
-- $ solargraph config
-- $ yard gems
-- Add `solargraph-rails` to `plugins` in `.solargraph.yml`
require'lspconfig'.solargraph.setup{}

-- Install Sorbet gem.
-- gem install sorbet
require'lspconfig'.sorbet.setup{
  cmd = { "srb", "tc", "--lsp", "--disable-watchman" }
}

require'lspconfig'.terraform_lsp.setup{
  -- Add .tf to default types.
  filetypes = { "terraform", "hcl", "tf" },
  root_dir = util.root_pattern(".terraform") -- remove .git
}

-- local lspconfig = require("lspconfig")
-- local configs = require("lspconfig.configs")
-- local util = require("lspconfig.util")

-- if not configs.ruby_lsp then
-- 	local enabled_features = {
-- 		"documentHighlights",
-- 		"documentSymbols",
-- 		"foldingRanges",
-- 		"selectionRanges",
-- 		-- "semanticHighlighting",
-- 		"formatting",
-- 		"codeActions",
-- 	}

-- 	configs.ruby_lsp = {
-- 		default_config = {
-- 			-- cmd = { "bundle", "exec", "ruby-lsp" },
-- 			cmd = { "ruby-lsp" },
-- 			filetypes = { "ruby" },
-- 			root_dir = util.root_pattern("Gemfile", ".git"),
-- 			init_options = {
-- 				enabledFeatures = enabled_features,
-- 			},
-- 			settings = {},
-- 		},
-- 		commands = {
-- 			FormatRuby = {
-- 				function()
-- 					vim.lsp.buf.format({
-- 						name = "ruby_lsp",
-- 						async = true,
-- 					})
-- 				end,
-- 				description = "Format using ruby-lsp",
-- 			},
-- 		},
-- 	}
-- end

-- lspconfig.ruby_lsp.setup({ on_attach = on_attach, capabilities = capabilities })

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspconfig'.rust_analyzer.setup{}

require'lspconfig'.bashls.setup{}

require'lspconfig'.gopls.setup{}

-- Automatically manage Golang imports
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})
