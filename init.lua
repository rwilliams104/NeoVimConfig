vim.opt.background = "dark"
vim.opt.number = true

-- Add shift arrow to be quick 20 line jumps
vim.keymap.set("n", "<S-Up>", "20k")
vim.keymap.set("n", "<S-Down>", "20j")
vim.keymap.set("n", "<S-Left>", "20h")
vim.keymap.set("n", "<S-Right>", "20l")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Install and configure Ashen
require("lazy").setup({
  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("ashen").setup({})
      vim.cmd.colorscheme("ashen")
    end,
  },
})

