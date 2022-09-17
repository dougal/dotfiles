vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require "lspkind"
lspkind.init()

local cmp = require "cmp"

cmp.setup {
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),

    ["<c-space>"] = cmp.mapping {
      i = cmp.mapping.complete(),
      c = function(
        _ --[[fallback]]
      )
        if cmp.visible() then
          if not cmp.confirm { select = true } then
            return
          end
        else
          cmp.complete()
        end
      end,
    },

    -- Testing
    ["<c-q>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },

    -- If you want tab completion :'(
    --  First you have to just promise to read `:help ins-completion`.
    
     -- ["<Tab>"] = function(fallback)
     --   if cmp.visible() then
     --     cmp.select_next_item()
     --   else
     --     fallback()
     --   end
     -- end,
     -- ["<S-Tab>"] = function(fallback)
     --   if cmp.visible() then
     --     cmp.select_prev_item()
     --   else
     --     fallback()
     --   end
     -- end,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "buffer", keyword_length = 4 },
    { name = "tags" },
    { name = "path" },
    -- { name = "luasnip" },
  },

  -- Youtube: mention that you need a separate snippets plugin
  -- snippet = {
  --   expand = function(args)
  --     require("luasnip").lsp_expand(args.body)
  --   end,
  -- },

  formatting = {
    format = lspkind.cmp_format {
      mode = "text",
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        path = "[path]",
      },

      -- Disable symbols.
      symbol_map = {
        Class         = '',
        Color         = '',
        Constant      = '',
        Constructor   = '',
        Enum          = '',
        EnumMember    = '',
        Event         = '',
        Field         = '',
        File          = '',
        Folder        = '',
        Function      = '',
        Interface     = '',
        Keyword       = '',
        Method        = '',
        Module        = '',
        Operator      = '',
        Property      = '',
        Reference     = '',
        Snippet       = '',
        Struct        = '',
        Text          = '',
        TypeParameter = '',
        Unit          = '',
        Variable      = '',
      }
    },
  },

  experimental = {
    -- native_menu = false,

    ghost_text = false,
  },
}

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
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Install Solargraph gem.
-- gem install --user-install solargraph
require'lspconfig'.solargraph.setup{}

-- Install Sorbet gem.
-- gem install sorbet
require'lspconfig'.sorbet.setup{}

-- Download terraform-lsp binary from
-- https://github.com/juliosueiras/terraform-lsp/releases and put in
-- /usr/local/bin
require'lspconfig'.terraform_lsp.setup{
  -- Add .tf to default types.
  filetypes = { "terraform", "hcl", "tf" }
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
