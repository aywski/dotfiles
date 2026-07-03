-- jellybeans-oled: jellybeans with true black background for OLED
vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "jellybeans-oled"

local hi = function(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

-- Base colors from jellybeans
local c = {
  bg        = "#000000",  -- true black (OLED)
  bg1       = "#1a1a1a",  -- slightly lighter bg
  bg2       = "#252525",  -- selection bg
  border    = "#3b3b3b",
  fg        = "#e8e8d3",
  comment   = "#888888",
  red       = "#cf6a4c",
  green     = "#99ad6a",
  yellow    = "#d8ad4c",
  blue      = "#597bc5",
  magenta   = "#a037b0",
  cyan      = "#71b9f8",
  white     = "#adadad",
  br_red    = "#e07b54",
  br_green  = "#b0c47a",
  br_yellow = "#f0c050",
  br_blue   = "#708ee0",
  br_cyan   = "#88ccff",
  orange    = "#c77c3a",
  string    = "#99ad6a",
  type      = "#71b9f8",
  keyword   = "#8197bf",
  func      = "#fad07a",
  number    = "#cf6a4c",
  special   = "#c6b6ee",
  error     = "#902020",
  warn      = "#d8ad4c",
  diff_add  = "#113311",
  diff_del  = "#331111",
  diff_chg  = "#112233",
}

-- Editor
hi("Normal",        { fg = c.fg,      bg = "#0d0d0d" })
hi("NormalNC",      { fg = c.fg,      bg = "#0d0d0d" })
hi("NormalFloat",   { fg = c.fg,      bg = c.bg1 })
hi("LineNr",        { fg = c.border,  bg = "#0d0d0d" })
hi("CursorLine",    { bg = c.bg1 })
hi("CursorLineNr",  { fg = c.yellow,  bg = c.bg1, bold = true })
hi("ColorColumn",   { bg = c.bg1 })
hi("SignColumn",    { fg = c.fg,      bg = "#0d0d0d" })
hi("VertSplit",     { fg = c.border,  bg = "#0d0d0d" })
hi("WinSeparator",  { fg = c.border,  bg = "#0d0d0d" })
hi("StatusLine",    { fg = c.fg,      bg = c.bg1 })
hi("StatusLineNC",  { fg = c.comment, bg = "#0d0d0d" })
hi("TabLine",       { fg = c.comment, bg = c.bg1 })
hi("TabLineSel",    { fg = c.fg,      bg = c.bg2, bold = true })
hi("TabLineFill",   { bg = "#0d0d0d" })
hi("Pmenu",         { fg = c.fg,      bg = c.bg1 })
hi("PmenuSel",      { fg = c.fg,      bg = c.bg2, bold = true })
hi("PmenuSbar",     { bg = c.bg1 })
hi("PmenuThumb",    { bg = c.border })
hi("Visual",        { bg = c.bg2 })
hi("Search",        { fg = c.bg,      bg = c.yellow })
hi("IncSearch",     { fg = c.bg,      bg = c.br_yellow })
hi("MatchParen",    { fg = c.yellow,  bold = true, underline = true })
hi("NonText",       { fg = c.border })
hi("Whitespace",    { fg = c.border })
hi("Folded",        { fg = c.comment, bg = c.bg1 })
hi("FoldColumn",    { fg = c.border,  bg = "#0d0d0d" })

-- Syntax
hi("Comment",       { fg = c.comment, italic = true })
hi("String",        { fg = c.string })
hi("Number",        { fg = c.number })
hi("Float",         { fg = c.number })
hi("Boolean",       { fg = c.number })
hi("Keyword",       { fg = c.keyword })
hi("Conditional",   { fg = c.keyword })
hi("Repeat",        { fg = c.keyword })
hi("Statement",     { fg = c.keyword })
hi("Operator",      { fg = c.white })
hi("Function",      { fg = c.func })
hi("Identifier",    { fg = c.fg })
hi("Type",          { fg = c.type })
hi("Special",       { fg = c.special })
hi("PreProc",       { fg = c.cyan })
hi("Include",       { fg = c.cyan })
hi("Define",        { fg = c.cyan })
hi("Constant",      { fg = c.br_red })
hi("Todo",          { fg = c.bg, bg = c.yellow, bold = true })
hi("Error",         { fg = c.fg, bg = c.error })
hi("Underlined",    { underline = true })

-- Diagnostics
hi("DiagnosticError",          { fg = c.red })
hi("DiagnosticWarn",           { fg = c.yellow })
hi("DiagnosticInfo",           { fg = c.blue })
hi("DiagnosticHint",           { fg = c.cyan })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })

-- Diff
hi("DiffAdd",    { bg = c.diff_add })
hi("DiffDelete", { bg = c.diff_del })
hi("DiffChange", { bg = c.diff_chg })
hi("DiffText",   { bg = c.diff_chg, bold = true })

-- Git signs
hi("GitSignsAdd",    { fg = c.green })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.red })

-- Telescope
hi("TelescopeNormal",         { fg = c.fg,      bg = "#0d0d0d" })
hi("TelescopeBorder",         { fg = c.border,  bg = "#0d0d0d" })
hi("TelescopePreviewNormal",  { fg = c.fg,      bg = "#0d0d0d" })
hi("TelescopePreviewBorder",  { fg = c.border,  bg = "#0d0d0d" })
hi("TelescopeResultsNormal",  { fg = c.fg,      bg = "#0d0d0d" })
hi("TelescopeResultsBorder",  { fg = c.border,  bg = "#0d0d0d" })
hi("TelescopePromptNormal",   { fg = c.fg,      bg = "#0d0d0d" })
hi("TelescopePromptBorder",   { fg = c.border,  bg = "#0d0d0d" })
hi("TelescopePromptTitle",    { fg = c.yellow,  bg = c.bg, bold = true })
hi("TelescopePreviewTitle",   { fg = c.green,   bg = "#0d0d0d" })
hi("TelescopeResultsTitle",   { fg = c.blue,    bg = "#0d0d0d" })
hi("TelescopeSelection",      { fg = c.fg,      bg = c.bg2 })
hi("TelescopeSelectionCaret", { fg = c.yellow,  bg = c.bg2 })
hi("TelescopeMatching",       { fg = c.br_yellow, bold = true })

-- Lazy.nvim
hi("LazyH1",            { fg = c.yellow,  bg = c.bg,  bold = true })
hi("LazyH2",            { fg = c.blue,    bg = c.bg,  bold = true })
hi("LazyButton",        { fg = c.fg,      bg = c.bg1 })
hi("LazyButtonActive",  { fg = c.bg,      bg = c.yellow, bold = true })
hi("LazySpecial",       { fg = c.cyan })
hi("LazyDir",           { fg = c.blue })
hi("LazyUrl",           { fg = c.cyan,    underline = true })
hi("LazyCommit",        { fg = c.green })
hi("LazyDimmed",        { fg = c.comment })
hi("LazyProp",          { fg = c.white })
hi("LazyValue",         { fg = c.string })
hi("LazyReasonCmd",     { fg = c.orange })
hi("LazyReasonEvent",   { fg = c.magenta })
hi("LazyReasonFt",      { fg = c.cyan })
hi("LazyReasonImport",  { fg = c.blue })
hi("LazyReasonKeys",    { fg = c.yellow })
hi("LazyReasonPlugin",  { fg = c.green })
hi("LazyReasonRuntime", { fg = c.red })
hi("LazyReasonSource",  { fg = c.cyan })
hi("LazyReasonStart",   { fg = c.green })
hi("LazyNormal",        { fg = c.fg,      bg = "#0d0d0d" })
