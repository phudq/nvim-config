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
    ["c"] = { "<cmd>bdelete<CR>", "Close Buffer" }
}


wk.register(mappings, opts)

