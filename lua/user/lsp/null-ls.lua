local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  print("null_ls_status_ok")
	return
end

local mason_null_ls_status_ok, mason_null_ls = pcall(require, "null-ls")
if not mason_null_ls_status_ok then
  print("mason_null_ls_status_ok")
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup()

mason_null_l.setup({
    ensure_installed = {'stylua', 'jq'},
    handlers = {
        function() end, -- disables automatic setup of all null-ls sources
        stylua = function(source_name, methods)
          null_ls.register(null_ls.builtins.formatting.stylua)
        end,
        shfmt = function(source_name, methods)
          -- custom logic
          require('mason-null-ls').default_setup(source_name, methods) -- to maintain default behavior
        end,
    },
})
