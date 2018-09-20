" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <joshorourke@me.com>
" License:     public domain
"
" A GUI Only port of the RailsCasts TextMate theme [1] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [2].
"
" [1] http://railscasts.com/about
" [2] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #CC7833
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guifg=#E6E1DC guibg=#2B2B2B ctermfg=254 ctermbg=234
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermfg=0 ctermbg=15
hi CursorLine                guibg=#333435 ctermbg=234 cterm=NONE
hi Search                    guifg=#FFFFFF guibg=#5A647E ctermfg=255 ctermbg=60 cterm=NONE
hi Visual                    guibg=#5A647E ctermbg=60
hi LineNr                    guifg=#888888 ctermfg=242

hi StatusLine                guifg=#E6E1DC guibg=#414243 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC              guibg=#414243 gui=NONE gui=NONE ctermfg=240 ctermbg=234 cterm=NONE
hi VertSplit                 guifg=#414243 guibg=#414243 gui=NONE ctermfg=238 ctermbg=234 cterm=NONE

hi CursorLineNr              guifg=#bbbbbb ctermfg=248
hi ColorColumn               guibg=#333435 ctermbg=234

" Folds
" -----------------------------------------------------------------------------
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE

" Invisible Characters
" -----------------------------------------------------------------------------
hi NonText                   guifg=#777777 gui=NONE cterm=NONE ctermfg=243
hi SpecialKey                guifg=#777777 gui=NONE cterm=NONE ctermfg=243

" Misc
" -----------------------------------------------------------------------------
hi Directory                 guifg=#A5C261 gui=NONE ctermfg=107 cterm=NONE

" Popup Menu
" -----------------------------------------------------------------------------
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE ctermfg=0 ctermbg=107 cterm=NONE
hi PMenuSbar                 guibg=#5A647E gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
hi PMenuThumb                guibg=#AAAAAA gui=NONE ctermfg=15 ctermbg=248 cterm=NONE

" Code constructs
" -----------------------------------------------------------------------------
hi Comment                   guifg=#BC9458 gui=italic ctermfg=137
hi Todo                      guifg=#BC9458 guibg=NONE gui=italic ctermfg=167 ctermbg=NONE cterm=bold
hi Constant                  guifg=#6D9CBE ctermfg=73
hi Define                    guifg=#CC7833 ctermfg=173
hi Delimiter                 guifg=#519F50
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88
hi Function                  guifg=#FFC66D gui=NONE ctermfg=221 cterm=NONE
hi Identifier                guifg=#D0D0FF gui=NONE ctermfg=221 cterm=NONE
hi Include                   guifg=#CC7833 gui=NONE ctermfg=173 cterm=NONE
hi Keyword                   guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi Macro                     guifg=#CC7833 gui=NONE ctermfg=172
hi Number                    guifg=#A5C261 ctermfg=107
hi PreCondit                 guifg=#CC7833 gui=NONE ctermfg=172 cterm=NONE
hi PreProc                   guifg=#CC7833 gui=NONE ctermfg=208
hi Statement                 guifg=#CC7833 gui=NONE ctermfg=130 cterm=NONE
hi String                    guifg=#A5C261 ctermfg=107
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 gui=NONE ctermfg=167 cterm=NONE

" Diff
" -----------------------------------------------------------------------------
hi DiffAdd                   guifg=#e4e4e4 guibg=#519F50 ctermfg=254 ctermbg=22
hi DiffDelete                guifg=#000000 guibg=#660000 gui=bold ctermfg=16 ctermbg=52 cterm=bold
hi DiffChange                guifg=#FFFFFF guibg=#870087 ctermfg=15 ctermbg=90
hi DiffText                  guifg=#FFFFFF guibg=#FF0000 gui=bold ctermfg=15 ctermbg=9 cterm=bold

" XML/HTML
" -----------------------------------------------------------------------------
hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179
hi! link htmlTag             xmlTag
hi! link htmlTagName         xmlTagName
hi! link htmlEndTag          xmlEndTag

" Ruby
" -----------------------------------------------------------------------------
" hi rubyTodo                  guifg=#df5f5f guibg=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
" hi rubyClass                 guifg=#FFFFFF ctermfg=15
" hi rubyConstant              guifg=#df5f5f ctermfg=167
" hi rubyInterpolation         guifg=#FFFFFF ctermfg=15
" hi rubyBlockParameter        guifg=#dfdfff ctermfg=189
" hi rubyPseudoVariable        guifg=#ffdf5f ctermfg=221
" hi rubyStringDelimiter       guifg=#87af5f ctermfg=107
" hi rubyInstanceVariable      guifg=#dfdfff ctermfg=189
" hi rubyPredefinedConstant    guifg=#df5f5f ctermfg=167
" hi rubyLocalVariableOrMethod guifg=#dfdfff ctermfg=189
