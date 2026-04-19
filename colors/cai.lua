vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "cai"
vim.o.termguicolors = true

local c = {
  bg       = "#09111a",
  fg       = "#d9e6f2",
  black    = "#000000",
  red      = "#ca274d",
  green    = "#4dca27",
  yellow   = "#caa427",
  blue     = "#274dca",
  magenta  = "#a427ca",
  cyan     = "#27caa4",
  white    = "#808080",
  br_black = "#808080",
  br_red   = "#e98da3",
  br_green = "#a3e98d",
  br_yellow= "#e9d48d",
  br_blue  = "#8da3e9",
  br_mag   = "#d48de9",
  br_cyan  = "#8de9d4",
  br_white = "#ffffff",
  -- derived
  bg_light = "#0f1923",
  bg_sel   = "#1a2a3a",
  bg_vis   = "#1e3348",
  comment  = "#506882",
  gutter   = "#2a3a4a",
  border   = "#1e3040",
  none     = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Terminal colors
vim.g.terminal_color_0  = c.black
vim.g.terminal_color_1  = c.red
vim.g.terminal_color_2  = c.green
vim.g.terminal_color_3  = c.yellow
vim.g.terminal_color_4  = c.blue
vim.g.terminal_color_5  = c.magenta
vim.g.terminal_color_6  = c.cyan
vim.g.terminal_color_7  = c.white
vim.g.terminal_color_8  = c.br_black
vim.g.terminal_color_9  = c.br_red
vim.g.terminal_color_10 = c.br_green
vim.g.terminal_color_11 = c.br_yellow
vim.g.terminal_color_12 = c.br_blue
vim.g.terminal_color_13 = c.br_mag
vim.g.terminal_color_14 = c.br_cyan
vim.g.terminal_color_15 = c.br_white

-- Editor
hi("Normal",       { fg = c.fg, bg = c.bg })
hi("NormalFloat",  { fg = c.fg, bg = c.bg_light })
hi("FloatBorder",  { fg = c.border, bg = c.bg_light })
hi("Cursor",       { fg = c.bg, bg = c.fg })
hi("CursorLine",   { bg = c.bg_light })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn",  { bg = c.bg_light })
hi("LineNr",       { fg = c.gutter })
hi("CursorLineNr", { fg = c.br_yellow, bold = true })
hi("SignColumn",   { fg = c.gutter, bg = c.bg })
hi("VertSplit",    { fg = c.border })
hi("WinSeparator", { fg = c.border })
hi("Folded",       { fg = c.comment, bg = c.bg_light })
hi("FoldColumn",   { fg = c.gutter })
hi("NonText",      { fg = c.gutter })
hi("SpecialKey",   { fg = c.gutter })
hi("EndOfBuffer",  { fg = c.bg })

-- Search / selection
hi("Visual",       { bg = c.bg_vis })
hi("VisualNOS",    { bg = c.bg_vis })
hi("Search",       { fg = c.black, bg = c.br_yellow })
hi("IncSearch",    { fg = c.black, bg = c.br_cyan })
hi("CurSearch",    { fg = c.black, bg = c.br_green })
hi("MatchParen",   { fg = c.br_cyan, bold = true, underline = true })

-- Statusline / tabline
hi("StatusLine",   { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.comment, bg = c.bg_light })
hi("TabLine",      { fg = c.comment, bg = c.bg_light })
hi("TabLineFill",  { bg = c.bg })
hi("TabLineSel",   { fg = c.fg, bg = c.bg_sel })
hi("WildMenu",     { fg = c.black, bg = c.br_blue })

-- Popup menu
hi("Pmenu",        { fg = c.fg, bg = c.bg_light })
hi("PmenuSel",     { fg = c.fg, bg = c.bg_sel })
hi("PmenuSbar",    { bg = c.bg_light })
hi("PmenuThumb",   { bg = c.comment })

-- Messages
hi("ErrorMsg",     { fg = c.red })
hi("WarningMsg",   { fg = c.yellow })
hi("ModeMsg",      { fg = c.fg, bold = true })
hi("MoreMsg",      { fg = c.cyan })
hi("Question",     { fg = c.cyan })
hi("Title",        { fg = c.br_blue, bold = true })
hi("Directory",    { fg = c.br_blue })

-- Diff
hi("DiffAdd",      { bg = "#0a2a1a" })
hi("DiffChange",   { bg = "#1a1a2a" })
hi("DiffDelete",   { fg = c.red, bg = "#2a0a1a" })
hi("DiffText",     { bg = "#2a2a3a" })

-- Diagnostics
hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn",  { fg = c.yellow })
hi("DiagnosticInfo",  { fg = c.br_blue })
hi("DiagnosticHint",  { fg = c.br_cyan })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.br_blue })
hi("DiagnosticUnderlineHint",  { undercurl = true, sp = c.br_cyan })

-- Syntax
hi("Comment",      { fg = c.comment, italic = true })
hi("Constant",     { fg = c.br_cyan })
hi("String",       { fg = c.br_green })
hi("Character",    { fg = c.br_green })
hi("Number",       { fg = c.br_yellow })
hi("Boolean",      { fg = c.br_yellow })
hi("Float",        { fg = c.br_yellow })
hi("Identifier",   { fg = c.fg })
hi("Function",     { fg = c.br_blue })
hi("Statement",    { fg = c.red })
hi("Conditional",  { fg = c.red })
hi("Repeat",       { fg = c.red })
hi("Label",        { fg = c.red })
hi("Operator",     { fg = c.fg })
hi("Keyword",      { fg = c.magenta })
hi("Exception",    { fg = c.red })
hi("PreProc",      { fg = c.cyan })
hi("Include",      { fg = c.magenta })
hi("Define",       { fg = c.magenta })
hi("Macro",        { fg = c.cyan })
hi("PreCondit",    { fg = c.cyan })
hi("Type",         { fg = c.br_yellow })
hi("StorageClass", { fg = c.red })
hi("Structure",    { fg = c.br_yellow })
hi("Typedef",      { fg = c.br_yellow })
hi("Special",      { fg = c.br_mag })
hi("SpecialChar",  { fg = c.br_mag })
hi("Tag",          { fg = c.red })
hi("Delimiter",    { fg = c.fg })
hi("Debug",        { fg = c.br_red })
hi("Underlined",   { underline = true })
hi("Error",        { fg = c.red })
hi("Todo",         { fg = c.br_yellow, bold = true })

-- Treesitter
hi("@variable",           { fg = c.fg })
hi("@variable.builtin",   { fg = c.br_red })
hi("@variable.parameter", { fg = c.br_red, italic = true })
hi("@constant",           { fg = c.br_cyan })
hi("@constant.builtin",   { fg = c.br_cyan })
hi("@module",             { fg = c.br_blue })
hi("@string",             { fg = c.br_green })
hi("@string.escape",      { fg = c.br_mag })
hi("@string.regex",       { fg = c.br_cyan })
hi("@character",          { fg = c.br_green })
hi("@number",             { fg = c.br_yellow })
hi("@boolean",            { fg = c.br_yellow })
hi("@float",              { fg = c.br_yellow })
hi("@function",           { fg = c.br_blue })
hi("@function.builtin",   { fg = c.cyan })
hi("@function.call",      { fg = c.br_blue })
hi("@function.method",    { fg = c.br_blue })
hi("@constructor",        { fg = c.br_yellow })
hi("@keyword",            { fg = c.magenta })
hi("@keyword.function",   { fg = c.magenta })
hi("@keyword.return",     { fg = c.red })
hi("@keyword.operator",   { fg = c.magenta })
hi("@keyword.import",     { fg = c.magenta })
hi("@keyword.conditional",{ fg = c.red })
hi("@keyword.repeat",     { fg = c.red })
hi("@keyword.exception",  { fg = c.red })
hi("@operator",           { fg = c.fg })
hi("@punctuation",        { fg = c.fg })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.delimiter", { fg = c.fg })
hi("@punctuation.special", { fg = c.br_mag })
hi("@comment",            { fg = c.comment, italic = true })
hi("@type",               { fg = c.br_yellow })
hi("@type.builtin",       { fg = c.br_yellow })
hi("@type.qualifier",     { fg = c.red })
hi("@attribute",          { fg = c.br_yellow })
hi("@property",           { fg = c.br_cyan })
hi("@tag",                { fg = c.red })
hi("@tag.attribute",      { fg = c.br_yellow })
hi("@tag.delimiter",      { fg = c.comment })
hi("@markup.heading",     { fg = c.br_blue, bold = true })
hi("@markup.link",        { fg = c.cyan, underline = true })
hi("@markup.link.url",    { fg = c.br_blue, underline = true })
hi("@markup.raw",         { fg = c.br_green })
hi("@markup.emphasis",    { italic = true })
hi("@markup.strong",      { bold = true })

-- Git signs
hi("GitSignsAdd",    { fg = c.green })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.red })

-- NvimTree
hi("NvimTreeNormal",      { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon",  { fg = c.br_blue })
hi("NvimTreeFolderName",  { fg = c.br_blue })
hi("NvimTreeOpenedFolderName", { fg = c.br_blue, bold = true })
hi("NvimTreeRootFolder",  { fg = c.magenta })
hi("NvimTreeSpecialFile", { fg = c.br_mag })
hi("NvimTreeGitDirty",    { fg = c.yellow })
hi("NvimTreeGitNew",      { fg = c.green })
hi("NvimTreeGitDeleted",  { fg = c.red })
hi("NvimTreeIndentMarker",{ fg = c.border })

-- Telescope
hi("TelescopeNormal",       { fg = c.fg, bg = c.bg })
hi("TelescopeBorder",       { fg = c.border })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopePromptBorder", { fg = c.border })
hi("TelescopePromptTitle",  { fg = c.br_blue, bold = true })
hi("TelescopeResultsTitle", { fg = c.br_blue, bold = true })
hi("TelescopePreviewTitle", { fg = c.br_blue, bold = true })
hi("TelescopeSelection",    { bg = c.bg_sel })
hi("TelescopeMatching",     { fg = c.br_yellow, bold = true })

-- Bufferline
hi("BufferLineFill",       { bg = c.bg })
hi("BufferLineBackground", { fg = c.comment, bg = c.bg })
hi("BufferLineBuffer",     { fg = c.comment, bg = c.bg })
hi("BufferLineBufferSelected",   { fg = c.fg, bg = c.bg_light, bold = true })
hi("BufferLineBufferVisible",    { fg = c.comment, bg = c.bg })
hi("BufferLineSeparator",        { fg = c.bg, bg = c.bg })
hi("BufferLineSeparatorSelected",{ fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorVisible", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected",{ fg = c.br_blue, bg = c.bg_light })

-- Indent blankline
hi("IblIndent", { fg = c.border })
hi("IblScope",  { fg = c.comment })
