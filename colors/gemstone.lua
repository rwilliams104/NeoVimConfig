
-- Gemstone - A pastel gemstone Neovim colorscheme

vim.cmd("highlight clear")
vim.g.colors_name = "gemstone"
vim.opt.termguicolors = true
vim.opt.background = "dark"

local c = {
  bg       = "#1A1B1E", -- Coal
  surface  = "#24262B", -- Smoky grey
  fg       = "#E6E6E6", -- Moonstone
  muted    = "#A0A7B4", -- Pale quartz

  ruby     = "#F28B8B",
  amethyst = "#C4A7E7",
  emerald  = "#9ED5A6",
  diamond  = "#8ECBFF",
  topaz    = "#F6D186",
  rose     = "#F7B7D4",
  aqua     = "#7DDAD6",
  sapphire = "#B7C1F7",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor appearance
hl("Normal",       { fg = c.fg, bg = c.bg })
hl("NormalFloat",  { fg = c.fg, bg = c.surface })
hl("FloatBorder",  { fg = c.amethyst, bg = c.surface })
hl("LineNr",       { fg = c.muted })
hl("CursorLineNr", { fg = c.diamond, bold = true })
hl("CursorLine",   { bg = c.surface })
hl("Visual",       { bg = "#38334A" })
hl("Search",       { fg = c.bg, bg = c.topaz })
hl("IncSearch",    { fg = c.bg, bg = c.aqua })
hl("StatusLine",   { fg = c.fg, bg = c.surface })
hl("StatusLineNC", { fg = c.muted, bg = c.surface })
hl("VertSplit",    { fg = c.surface })
hl("WinSeparator", { fg = c.surface })
hl("Pmenu",        { fg = c.fg, bg = c.surface })
hl("PmenuSel",     { fg = c.bg, bg = c.amethyst })
hl("Comment",      { fg = c.muted, italic = true })

-- Standard syntax highlighting
hl("Keyword",      { fg = c.ruby })
hl("Conditional",  { fg = c.ruby })
hl("Repeat",       { fg = c.ruby })
hl("Statement",    { fg = c.ruby })
hl("Function",     { fg = c.amethyst })
hl("String",       { fg = c.emerald })
hl("Character",    { fg = c.emerald })
hl("Number",       { fg = c.topaz })
hl("Boolean",      { fg = c.topaz })
hl("Constant",     { fg = c.topaz })
hl("Type",         { fg = c.diamond })
hl("StorageClass", { fg = c.sapphire })
hl("Identifier",   { fg = c.rose })
hl("Operator",     { fg = c.aqua })
hl("PreProc",      { fg = c.ruby })
hl("Special",      { fg = c.sapphire })
hl("Delimiter",    { fg = c.fg })

-- Diagnostics
hl("DiagnosticError", { fg = c.ruby })
hl("DiagnosticWarn",  { fg = c.topaz })
hl("DiagnosticInfo",  { fg = c.diamond })
hl("DiagnosticHint",  { fg = c.aqua })

-- Treesitter syntax highlighting
hl("@keyword",           { fg = c.ruby })
hl("@keyword.function",  { fg = c.ruby })
hl("@keyword.return",    { fg = c.ruby })
hl("@keyword.import",    { fg = c.ruby })
hl("@function",          { fg = c.amethyst })
hl("@function.call",     { fg = c.amethyst })
hl("@function.method",   { fg = c.amethyst })
hl("@method",            { fg = c.amethyst })
hl("@string",            { fg = c.emerald })
hl("@number",            { fg = c.topaz })
hl("@boolean",           { fg = c.topaz })
hl("@type",              { fg = c.diamond })
hl("@type.builtin",      { fg = c.diamond })
hl("@variable",          { fg = c.fg })
hl("@variable.parameter",{ fg = c.rose })
hl("@property",          { fg = c.rose })
hl("@constant",          { fg = c.topaz })
hl("@operator",          { fg = c.aqua })
hl("@comment",           { fg = c.muted, italic = true })

