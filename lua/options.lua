require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- tambahkan di bagian bawah options.lua
vim.diagnostic.config {
  float = {
    border = "rounded",
    max_width = 80,
    wrap = true,
    source = "always",
  },
  virtual_text = false, -- matikan virtual text yang terpotong
}
