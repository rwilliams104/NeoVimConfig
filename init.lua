
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.termguicolors = true

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

require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      "neovim-treesitter/treesitter-parser-registry",
    },
  },
})


-- Automatically enable Tree-sitter syntax highlighting
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "ruby", "lua" },
  callback = function(args)
    local ok = pcall(vim.treesitter.start, args.buf)

    if not ok then
      vim.notify(
        "Tree-sitter parser unavailable for " .. vim.bo[args.buf].filetype,
        vim.log.levels.WARN
      )
    end
  end,
})

-- Enable Tree-sitter highlighting for supported file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "ruby", "lua" },
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})

-- Load Gemstone
vim.cmd.colorscheme("gemstone")
