--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl  = lush.hsl

local black     = hsl(213,  12, 17)
local white     = hsl(  0,   0, 92)
local grey      = hsl(  0,   0, 47)
local lightgrey = hsl(  0,   0, 82)
local accent    = hsl(  3,  84, 59)
local green     = hsl(100, 100, 80)
local red       = hsl(  0, 100, 80)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = grey }, -- any comment
    -- TODO: this probably looks bad
    ColorColumn  { bg = lightgrey }, -- used for the columns set with 'colorcolumn'
    Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- TODO: how to omit? does it need to be omitted?
    Cursor       { }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = lightgrey }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { fg = black, bg = green }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = black, bg = red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = white, bg = accent, gui = "bold" }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { }, -- the column separating vertically split windows
    Folded       { }, -- line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { fg = black, bg = white }, -- column where |signs| are displayed
    IncSearch    { fg = white, bg = accent, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = white, bg = black }, -- |:substitute| replacement text highlighting
    LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = accent, bg = white }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { fg = grey }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = black, bg = white }, -- normal text
    NormalFloat  { fg = black, bg = lightgrey }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = black, bg = lightgrey }, -- Popup menu: normal item.
    PmenuSel     { fg = white, bg = accent, gui = "bold" }, -- Popup menu: selected item.
    PmenuSbar    { bg = lightgrey }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = white, bg = accent, gui = "bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = accent, bg = white, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = white, bg = black }, -- status line of current window
    StatusLineNC { fg = black, bg = lightgrey }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- tab pages line, not active tab page label
    TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { fg = white, bg = black }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { fg = white, bg = black }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = accent }, -- warning messages
    Whitespace   { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { fg = white, bg = black }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = black }, -- (preferred) any constant
    -- String         { }, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier     { fg = black }, -- (preferred) any variable name
    -- Function       { }, -- function name (also: methods for classes)

    Statement      { fg = black, gui = "bold" }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = black }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = black }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = black }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = white, bg = accent, gui = "bold" }, -- (preferred) any erroneous construct

    Todo           { fg = accent, gui = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText  { bg = lightgrey }, -- used for highlighting "text" references
    LspReferenceRead  { LspReferenceText }, -- used for highlighting "read" references
    LspReferenceWrite { LspReferenceText }, -- used for highlighting "write" references

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    DiagnosticError { fg = accent }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn  { fg = accent }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo  { fg = grey }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint  { fg = grey }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)

    -- DiagnosticVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- DiagnosticVirtualTextWarn        { }, -- Used for "Warn" diagnostic virtual text
    -- DiagnosticVirtualTextInfo        { }, -- Used for "Info" diagnostic virtual text
    -- DiagnosticVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- DiagnosticUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- DiagnosticUnderlineWarn          { }, -- Used to underline "Warn" diagnostics
    -- DiagnosticUnderlineInfo          { }, -- Used to underline "Info" diagnostics
    -- DiagnosticUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- DiagnosticFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- DiagnosticFloatingWarn           { }, -- Used to color "Warn" diagnostic messages in diagnostics float
    -- DiagnosticFloatingInfo           { }, -- Used to color "Info" diagnostic messages in diagnostics float
    -- DiagnosticFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- DiagnosticSignError              { }, -- Used for "Error" signs in sign column
    -- DiagnosticSignWarn               { }, -- Used for "Warn" signs in sign column
    -- DiagnosticSignInfo               { }, -- Used for "Info" signs in sign column
    -- DiagnosticSignHint               { }, -- Used for "Hint" signs in sign column

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym("@attribute") { },
    -- sym("@boolean") { },
    -- sym("@character") { },
    -- sym("@character.special") { },
    -- sym("@comment") { },
    -- sym("@conditional") { },
    -- sym("@constant") { },
    -- sym("@constant.builtin") { },
    -- sym("@constant.macro") { },
    -- sym("@constructor") { },
    -- sym("@debug") { },
    -- sym("@define") { },
    -- sym("@error") { },
    -- sym("@exception") { },
    -- sym("@field") { },
    -- sym("@float") { },
    -- sym("@function") { },
    -- sym("@function.builtin") { },
    -- sym("@function.macro") { },
    -- sym("@include") { },
    -- sym("@keyword") { },
    -- sym("@keyword.function") { },
    -- sym("@keyword.operator") { },
    -- sym("@keyword.return") { },
    -- sym("@label") { },
    -- sym("@method") { },
    -- sym("@namespace") { },
    -- sym("@none") { },
    -- sym("@number") { },
    -- sym("@operator") { },
    -- sym("@parameter") { },
    -- sym("@preproc") { },
    -- sym("@property") { },
    -- sym("@punctuation.delimiter") { },
    -- sym("@punctuation.bracket") { },
    -- sym("@punctuation.special") { },
    -- sym("@repeat") { },
    -- sym("@storageclass") { },
    -- sym("@string") { },
    -- sym("@string.regex") { },
    -- sym("@string.escape") { },
    -- sym("@string.special") { },
    -- sym("@symbol") { },
    -- sym("@tag") { },
    -- sym("@tag.attribute") { },
    -- sym("@tag.delimiter") { },
    -- sym("@text") { },
    -- sym("@text.strong") { },
    -- sym("@text.emphasis") { },
    -- sym("@text.underline") { },
    -- sym("@text.strike") { },
    -- sym("@text.title") { },
    -- sym("@text.literal") { },
    -- sym("@text.uri") { },
    -- sym("@text.math") { },
    -- sym("@text.reference") { },
    sym("@text.diff.add") { DiffAdd },
    sym("@text.diff.delete") { DiffDelete },
    -- sym("@text.environment") { },
    -- sym("@text.environment.name") { },
    sym("@text.todo") { Todo },
    sym("@text.note") { Todo },
    -- sym("@text.warning") { },
    -- sym("@text.danger") { },
    -- sym("@type") { },
    -- sym("@type.builtin") { },
    -- sym("@variable") { },
    -- sym("@variable.builtin") { },

    -- External Plugins

    -- these are needed for things like inline diffs in Fugitive to work.
    -- from runtime/syntax/diff.vim
    diffAdded   { DiffAdd },
    diffRemoved { DiffDelete },

    -- https://github.com/dense-analysis/ale
    ALEError       { DiagnosticError },
    ALEWarning     { DiagnosticWarn },
    ALEInfo        { DiagnosticInfo },
    ALEErrorSign   { ALEError },
    ALEWarningSign { ALEWarning },
    ALEInfoSign    { ALEInfo },

    -- https://github.com/ntpeters/vim-better-whitespace
    ExtraWhitespace { WarningMsg },
    -- https://github.com/echasnovski/mini.nvim#minitrailspace
    MiniTrailspace { WarningMsg },

    -- when editing git commit text, highlight the overflow in the first line (over 50 characters).
    gitcommitOverflow { WarningMsg },

    -- https://github.com/williamboman/mason.nvim
    -- https://github.com/williamboman/mason.nvim/blob/main/lua/mason/ui/colors.lua
    MasonNormal { NormalFloat },
    MasonHeader { gui = "bold" },
    MasonHeaderSecondary { fg = grey },

    MasonHighlight { fg = accent },
    MasonHighlightBlock { bg = accent, fg = white },
    MasonHighlightBlockBold { MasonHighlightBlock, gui = "bold" },

    MasonHighlightSecondary { fg = accent.desaturate(25) },
    MasonHighlightBlockSecondary { bg = accent.desaturate(25), fg = white.desaturate(25) },
    MasonHighlightBlockBoldSecondary { MasonHighlightBlockSecondary, gui = "bold" },

    MasonLink { Underlined },

    MasonMuted { fg = grey },
    MasonMutedBlock { bg = lightgrey, fg = black },
    MasonMutedBlockBold { MasonMutedBlock, gui = "bold" },

    MasonError { fg = accent },

    MasonHeading { bold = true },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
