" File: today.vim
" Source: https://github.com/kh3phr3n/today-theme

" Initialization
" --------------

hi clear
set background=light
let g:colors_name='today'

if exists('syntax_on')
    syntax reset
endif

if !has('gui_running') && &t_Co != 256
    finish
endif

" Color Palette
" -------------

let s:colors = {}

let s:colors.red        = ['cc6666', 167]
let s:colors.aqua       = ['8abeb7', 109]
let s:colors.blue       = ['81a2be', 110]
let s:colors.green      = ['b5bd68', 143]
let s:colors.orange     = ['de935f', 173]
let s:colors.yellow     = ['ded35f', 185]
let s:colors.purple     = ['b294bb', 139]

let s:colors.addbg      = ['5f875f',  65]
let s:colors.addfg      = ['d7ffaf', 193]
let s:colors.changebg   = ['5f5f87',  60]
let s:colors.changefg   = ['d7d7ff', 189]

let s:colors.darkred    = ['5f0000',  52]
let s:colors.darkblue   = ['00005f',  17]
let s:colors.darkcyan   = ['005f5f',  24]
let s:colors.darkpurple = ['5f005f',  53]
let s:colors.darkcolumn = ['1c1c1c', 234]

let s:colors.line       = ['efefef', 255]
let s:colors.window     = ['efefef', 255]
let s:colors.comment    = ['b4b4b4', 249]
let s:colors.selection  = ['d6d6d6', 188]
let s:colors.background = ['fafafa', 231]
let s:colors.foreground = ['8e908c', 245]

" Highlighting Function
" ---------------------

function! s:Hl(group, fg, bg, attr)
    if a:fg != ''
        exec 'highlight ' . a:group . ' guifg=#' . s:colors[a:fg][0] . ' ctermfg=' . s:colors[a:fg][1]
    endif
    if a:bg != ''
        exec 'highlight ' . a:group . ' guibg=#' . s:colors[a:bg][0] . ' ctermbg=' . s:colors[a:bg][1]
    endif
    if a:attr != ''
        exec 'highlight ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
    endif
endfunction

" Generic Syntax Highlighting: (see :help group-name)
" ---------------------------------------------------

" Type: StorageClass, Typedef
" PreProc: Include, Define, Macro, PreCondit
" Constant: Character, Number, Boolean, Float
" Statement: Conditional, Repeat, Label, Keyword, Exception
" Special: SpecialChar, Tag, Delimiter, SpecialComment, Debug

call s:Hl('Comment'   , 'comment'   , 'background', 'none')
call s:Hl('Constant'  , 'red'       , 'background', 'none')
call s:Hl('String'    , 'green'     , 'background', 'none')
call s:Hl('Identifier', 'purple'    , 'background', 'none')
call s:Hl('Function'  , 'yellow'    , 'background', 'none')
call s:Hl('Statement' , 'blue'      , 'background', 'none')
call s:Hl('Operator'  , 'aqua'      , 'background', 'none')
call s:Hl('PreProc'   , 'aqua'      , 'background', 'none')
call s:Hl('Type'      , 'orange'    , 'background', 'none')
call s:Hl('Structure' , 'aqua'      , 'background', 'none')
call s:Hl('Special'   , 'green'     , 'background', 'none')
call s:Hl('Underlined', 'blue'      , 'background', 'none')
call s:Hl('Ignore'    , 'foreground', 'background', 'none')
call s:Hl('Error'     , 'red'       , 'background', 'none')
call s:Hl('Todo'      , 'orange'    , 'background', 'none')

" Vim Highlighting: (see :help highlight-groups)
" ----------------------------------------------

" Optionals: VisualNOS, WildMenu
" Optionals: Conceal, Cursor, CursorIM

call s:Hl('Title'       , 'yellow'    , ''          , 'none')
call s:Hl('ColorColumn' , 'foreground', 'line'      , 'none')
call s:Hl('CursorColumn', 'foreground', 'line'      , 'none')
call s:Hl('CursorLine'  , 'purple'    , 'background', 'none')
call s:Hl('Directory'   , 'blue'      , 'background', 'none')
call s:Hl('DiffAdd'     , 'addfg'     , 'addbg'     , 'none')
call s:Hl('DiffChange'  , 'changefg'  , 'changebg'  , 'none')
call s:Hl('DiffDelete'  , 'background', 'red'       , 'none')
call s:Hl('DiffText'    , 'background', 'blue'      , 'none')
call s:Hl('ErrorMsg'    , 'red'       , 'background', 'none')
call s:Hl('VertSplit'   , 'window'    , 'background', 'none')
call s:Hl('Folded'      , 'comment'   , 'background', 'none')
call s:Hl('FoldColumn'  , 'foreground', 'background', 'none')
call s:Hl('SignColumn'  , 'foreground', 'background', 'none')
call s:Hl('IncSearch'   , 'background', 'green'     , 'none')
call s:Hl('LineNr'      , 'selection' , 'background', 'none')
call s:Hl('CursorLineNr', 'yellow'    , 'background', 'none')
call s:Hl('MatchParen'  , 'background', 'selection' , 'none')
call s:Hl('ModeMsg'     , 'foreground', 'background', 'none')
call s:Hl('MoreMsg'     , 'green'     , 'background', 'none')
call s:Hl('NonText'     , 'selection' , 'background', 'none')
call s:Hl('Normal'      , 'foreground', 'background', 'none')
call s:Hl('Pmenu'       , 'foreground', 'window'    , 'none')
call s:Hl('PmenuSel'    , 'foreground', 'selection' , 'none')
call s:Hl('PmenuSbar'   , 'window'    , 'window'    , 'none')
call s:Hl('PmenuThumb'  , 'selection' , 'selection' , 'none')
call s:Hl('Question'    , 'green'     , 'background', 'none')
call s:Hl('Search'      , 'background', 'yellow'    , 'none')
call s:Hl('SpecialKey'  , 'selection' , 'background', 'none')
call s:Hl('SpellBad'    , 'red'       , 'darkred'   , 'none')
call s:Hl('SpellCap'    , 'blue'      , 'darkblue'  , 'none')
call s:Hl('SpellLocal'  , 'aqua'      , 'darkcyan'  , 'none')
call s:Hl('SpellRare'   , 'purple'    , 'darkpurple', 'none')
call s:Hl('StatusLine'  , 'blue'      , 'window'    , 'none')
call s:Hl('StatusLineNC', 'foreground', 'window'    , 'none')
call s:Hl('TabLine'     , 'foreground', 'window'    , 'none')
call s:Hl('TabLineFill' , 'foreground', 'window'    , 'none')
call s:Hl('TabLineSel'  , 'blue'      , 'background', 'none')
call s:Hl('Visual'      , 'foreground', 'selection' , 'none')
call s:Hl('WarningMsg'  , 'red'       , 'background', 'none')
" call s:Hl('', '', '', 'none')

" Local Cleanup
" -------------

" Delete variables
unlet s:colors
" Delete functions
delfunction s:Hl

