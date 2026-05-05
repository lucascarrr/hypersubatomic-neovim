local M = {}

local palette = require("hypersubatomic.palette")

local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function syntax()
  local c = palette

  return {
    Comment = { fg = c.fg_muted, italic = true },
    Constant = { fg = c.red },
    String = { fg = c.red },
    Character = { fg = c.magenta },
    Number = { fg = c.violet },
    Boolean = { fg = c.red },
    Float = { fg = c.violet },
    Identifier = { fg = c.fg_bright },
    Function = { fg = c.green },
    Statement = { fg = c.green },
    Conditional = { fg = c.violet },
    Repeat = { fg = c.violet },
    Label = { fg = c.violet },
    Operator = { fg = c.blue_alt },
    Keyword = { fg = c.green },
    Exception = { fg = "#e54545" },
    PreProc = { fg = c.violet_alt },
    Include = { fg = c.green },
    Define = { fg = c.violet_alt },
    Macro = { fg = c.violet_alt },
    PreCondit = { fg = c.violet_alt },
    Type = { fg = c.orange },
    StorageClass = { fg = c.red },
    Structure = { fg = c.orange },
    Typedef = { fg = c.orange },
    Special = { fg = c.magenta },
    SpecialChar = { fg = c.magenta },
    Tag = { fg = c.yellow },
    Delimiter = { fg = c.grey },
    SpecialComment = { fg = c.fg_muted, italic = true },
    Debug = { fg = c.red },
    Underlined = { fg = c.blue, underline = true },
    Ignore = { fg = c.fg_dim },
    Error = { fg = c.red },
    Todo = { fg = c.yellow, bold = true },

    htmlTag = { fg = c.grey },
    htmlEndTag = { fg = c.grey },
    htmlTagName = { fg = c.yellow },
    htmlArg = { fg = c.green },
    cssBraces = { fg = c.grey },
    cssClassName = { fg = c.yellow },
    cssProp = { fg = c.fg_bright },
    jsonKeyword = { fg = c.yellow },
    jsonString = { fg = "#bfbfbf" },
    markdownH1 = { fg = c.yellow, bold = true },
    markdownH2 = { fg = c.yellow, bold = true },
    markdownH3 = { fg = c.yellow, bold = true },
    markdownLinkText = { fg = c.blue, underline = true },
    markdownCode = { fg = c.cyan },
    markdownCodeBlock = { fg = c.cyan },
    markdownBlockquote = { fg = c.violet, italic = true },
  }
end

local function treesitter()
  local c = palette

  return {
    ["@annotation"] = { fg = c.yellow },
    ["@attribute"] = { fg = c.green },
    ["@boolean"] = { fg = c.red },
    ["@character"] = { fg = c.magenta },
    ["@character.special"] = { fg = c.magenta },
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { fg = c.violet },
    ["@constant"] = { fg = c.red },
    ["@constant.builtin"] = { fg = c.red },
    ["@constant.macro"] = { fg = c.violet_alt },
    ["@constructor"] = { fg = c.red },
    ["@diff.delta"] = { fg = c.yellow },
    ["@diff.minus"] = { fg = c.red },
    ["@diff.plus"] = { fg = c.green },
    ["@function"] = { fg = c.green },
    ["@function.builtin"] = { fg = c.green },
    ["@function.call"] = { fg = c.green },
    ["@function.macro"] = { fg = c.violet_alt },
    ["@keyword"] = { fg = c.green },
    ["@keyword.conditional"] = { fg = c.violet },
    ["@keyword.directive"] = { fg = c.violet_alt },
    ["@keyword.exception"] = { fg = c.violet },
    ["@keyword.function"] = { fg = c.green },
    ["@keyword.import"] = { fg = c.violet },
    ["@keyword.operator"] = { fg = c.blue_alt },
    ["@keyword.repeat"] = { fg = c.violet },
    ["@label"] = { fg = c.violet },
    ["@markup.heading"] = { fg = c.yellow, bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.blue, underline = true },
    ["@markup.list"] = { fg = c.green },
    ["@markup.quote"] = { fg = c.violet, italic = true },
    ["@markup.raw"] = { fg = c.cyan },
    ["@markup.strong"] = { bold = true },
    ["@module"] = { fg = c.orange },
    ["@number"] = { fg = c.violet },
    ["@number.float"] = { fg = c.violet },
    ["@operator"] = { fg = c.blue_alt },
    ["@property"] = { fg = c.yellow },
    ["@punctuation.bracket"] = { fg = c.grey },
    ["@punctuation.delimiter"] = { fg = c.grey },
    ["@punctuation.special"] = { fg = c.grey_alt },
    ["@string"] = { fg = c.red },
    ["@string.documentation"] = { fg = c.fg_muted },
    ["@string.escape"] = { fg = c.magenta },
    ["@string.regexp"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.magenta },
    ["@tag"] = { fg = c.yellow },
    ["@tag.attribute"] = { fg = c.green },
    ["@tag.delimiter"] = { fg = c.grey },
    ["@type"] = { fg = c.orange },
    ["@type.builtin"] = { fg = c.blue_alt },
    ["@type.definition"] = { fg = c.orange },
    ["@variable"] = { fg = c.fg_bright },
    ["@variable.builtin"] = { fg = c.yellow },
    ["@variable.member"] = { fg = c.yellow },
    ["@variable.parameter"] = { fg = c.red },
  }
end

local function semantic_tokens()
  local c = palette

  return {
    ["@lsp.type.class"] = { fg = c.orange },
    ["@lsp.type.decorator"] = { fg = c.yellow },
    ["@lsp.type.enum"] = { fg = c.orange },
    ["@lsp.type.enumMember"] = { fg = c.red },
    ["@lsp.type.function"] = { fg = c.green },
    ["@lsp.type.interface"] = { fg = c.orange },
    ["@lsp.type.keyword"] = { fg = c.green },
    ["@lsp.type.macro"] = { fg = c.violet_alt },
    ["@lsp.type.method"] = { fg = c.green },
    ["@lsp.type.namespace"] = { fg = c.orange },
    ["@lsp.type.number"] = { fg = c.violet },
    ["@lsp.type.operator"] = { fg = c.blue_alt },
    ["@lsp.type.parameter"] = { fg = c.red },
    ["@lsp.type.property"] = { fg = c.yellow },
    ["@lsp.type.string"] = { fg = c.red },
    ["@lsp.type.struct"] = { fg = c.orange },
    ["@lsp.type.type"] = { fg = c.orange },
    ["@lsp.type.typeParameter"] = { fg = c.orange },
    ["@lsp.type.variable"] = { fg = c.fg_bright },
  }
end

local function editor()
  local c = palette

  return {
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.fg_dim, bg = c.bg_dark },
    FloatTitle = { fg = c.green, bg = c.bg_dark, bold = true },
    Cursor = { fg = c.bg, bg = c.yellow },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    CursorLineNr = { fg = c.fg_dim },
    LineNr = { fg = "#3B3F51" },
    SignColumn = { fg = c.fg, bg = c.bg },
    FoldColumn = { fg = c.fg_dim, bg = c.bg },
    Folded = { fg = c.fg_dim, bg = c.bg_dark },
    ColorColumn = { bg = c.bg_dark },
    Conceal = { fg = c.fg_dim },
    Directory = { fg = c.blue },
    EndOfBuffer = { fg = c.bg },
    ErrorMsg = { fg = c.red },
    WarningMsg = { fg = c.yellow },
    MoreMsg = { fg = c.green },
    ModeMsg = { fg = c.green },
    Question = { fg = c.cyan },
    NonText = { fg = c.fg_dim },
    SpecialKey = { fg = c.fg_dim },
    Whitespace = { fg = "#343946" },
    MatchParen = { fg = c.yellow, bg = "#300089", bold = true },
    Search = { fg = c.black, bg = c.yellow },
    IncSearch = { fg = c.black, bg = c.green },
    CurSearch = { fg = c.black, bg = c.green },
    Substitute = { fg = c.black, bg = c.cyan },
    Visual = { bg = c.bg_selection },
    VisualNOS = { bg = c.bg_selection },
    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { fg = c.yellow, bg = c.bg_highlight },
    PmenuSbar = { bg = c.bg_float },
    PmenuThumb = { bg = c.green },
    StatusLine = { fg = c.fg_dim, bg = c.bg_dark },
    StatusLineNC = { fg = c.fg_dim, bg = c.bg_dark },
    WinSeparator = { fg = "#383a3f", bg = c.bg },
    VertSplit = { link = "WinSeparator" },
    TabLine = { fg = c.fg, bg = c.bg },
    TabLineFill = { fg = c.fg, bg = c.bg_dark },
    TabLineSel = { fg = c.white, bg = "#272937" },
    Title = { fg = c.green, bold = true },
    WildMenu = { fg = c.yellow, bg = c.bg_dark },
    MsgArea = { fg = c.fg },
    MsgSeparator = { fg = c.fg_dim },
    QuickFixLine = { bg = c.bg_highlight },
    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.cyan, undercurl = true },
    SpellRare = { sp = c.violet, undercurl = true },
    TermCursor = { fg = c.bg, bg = c.yellow },
    TermCursorNC = { fg = c.bg, bg = c.fg_dim },
  }
end

local function integrations()
  local c = palette

  return {
    DiagnosticError = { fg = c.red_alt },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.cyan },
    DiagnosticHint = { fg = c.green },
    DiagnosticOk = { fg = c.green },
    DiagnosticUnderlineError = { sp = c.red_alt, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.cyan, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.green, undercurl = true },
    DiagnosticVirtualTextError = { fg = c.red_alt, bg = "#211018" },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = "#24200f" },
    DiagnosticVirtualTextInfo = { fg = c.cyan, bg = "#0d2027" },
    DiagnosticVirtualTextHint = { fg = c.green, bg = "#0d2119" },

    DiffAdd = { fg = c.green, bg = "#0d2119" },
    DiffChange = { fg = c.yellow, bg = "#24200f" },
    DiffDelete = { fg = c.red, bg = "#241018" },
    DiffText = { fg = c.yellow, bg = "#33290f" },
    Added = { fg = c.green },
    Changed = { fg = c.yellow },
    Removed = { fg = c.red },

    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    GitGutterAdd = { fg = c.green },
    GitGutterChange = { fg = c.yellow },
    GitGutterDelete = { fg = c.red },

    LspReferenceText = { bg = c.bg_highlight },
    LspReferenceRead = { bg = c.bg_highlight },
    LspReferenceWrite = { bg = c.bg_highlight },
    LspSignatureActiveParameter = { fg = c.yellow, bold = true },
    LspInlayHint = { fg = c.fg_dim, bg = c.bg_dark },

    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_dim, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.green },
    CmpItemAbbrMatchFuzzy = { fg = c.green },
    CmpItemKind = { fg = c.violet },
    CmpItemMenu = { fg = c.fg_dim },

    TelescopeBorder = { fg = c.fg_dim, bg = c.bg_dark },
    TelescopeNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopePromptBorder = { fg = c.green, bg = c.bg_dark },
    TelescopePromptNormal = { fg = c.fg_bright, bg = c.bg_dark },
    TelescopePromptPrefix = { fg = c.green, bg = c.bg_dark },
    TelescopeSelection = { fg = c.yellow, bg = c.bg_highlight },
    TelescopeMatching = { fg = c.green, bold = true },

    NvimTreeNormal = { fg = c.fg, bg = c.bg_dark },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.blue, bold = true },
    NvimTreeRootFolder = { fg = c.green, bold = true },
    NvimTreeGitDirty = { fg = c.yellow },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.red },

    NeoTreeNormal = { fg = c.fg, bg = c.bg_dark },
    NeoTreeDirectoryName = { fg = c.blue },
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeGitModified = { fg = c.yellow },
    NeoTreeGitAdded = { fg = c.green },
    NeoTreeGitDeleted = { fg = c.red },

    WhichKey = { fg = c.green },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg_bright },
    WhichKeySeparator = { fg = c.fg_dim },
    WhichKeyFloat = { bg = c.bg_dark },
    WhichKeyBorder = { fg = c.fg_dim, bg = c.bg_dark },

    LazyNormal = { fg = c.fg, bg = c.bg_dark },
    LazyButton = { fg = c.fg, bg = c.bg_float },
    LazyButtonActive = { fg = c.yellow, bg = c.bg_highlight },
    LazyH1 = { fg = c.black, bg = c.green, bold = true },
    LazyH2 = { fg = c.green, bold = true },
  }
end

local function terminal()
  local c = palette

  return {
    terminal_color_0 = c.black,
    terminal_color_1 = c.red,
    terminal_color_2 = c.green,
    terminal_color_3 = c.yellow,
    terminal_color_4 = c.blue,
    terminal_color_5 = c.violet,
    terminal_color_6 = c.cyan,
    terminal_color_7 = c.white,
    terminal_color_8 = "#464B5D",
    terminal_color_9 = c.red,
    terminal_color_10 = c.green,
    terminal_color_11 = c.yellow,
    terminal_color_12 = c.blue,
    terminal_color_13 = c.violet,
    terminal_color_14 = c.cyan,
    terminal_color_15 = c.white,
  }
end

function M.setup(opts)
  opts = opts or {}

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "hypersubatomic"

  local highlights = vim.tbl_extend(
    "force",
    editor(),
    syntax(),
    treesitter(),
    semantic_tokens(),
    integrations(),
    opts.overrides or {}
  )

  for group, settings in pairs(highlights) do
    highlight(group, settings)
  end

  for name, value in pairs(terminal()) do
    vim.g[name] = value
  end
end

M.palette = palette

return M
