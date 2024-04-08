local wk = require("which-key")

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
    ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    ["c"] = { "<cmd>bdelete<CR>", "Close Buffer" },
    g = {
        d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto Definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Goto Declaration" },
        r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Goto References" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
        h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show Hover" },
        s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Show Signature" },
        a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
        f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
        n = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
        p = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
    },
    l = {
        r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    }
}


wk.register(mappings, opts)

