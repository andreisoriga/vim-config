# Moving commands


`h`, `j`, `k`, `l` - move left, down, up, right

`w` - beginning of the next word

`W` - beginning of the next WORD

`e` - end of word

`E` - end of WORD

`b` - previous word

`B` - previous WORD

`$` - end of line

`^` - first non-blank character of line

`0` - very beginning of line

`gg` - first line

`G` - last line``

`<C-u>` - up 1/2 of a page

`<C-d>` - down 1/2 of a page

`<C-b>` - up 1 page

`<C-f>` - down 1 page

`M` - go to the middle of the window

`H` - go to top line of current window

`L` - go to bottom line of current window

`zt` / `zz` / `zb` - put carret at top / middle / bottom of the window

`{` / `}` - next / prev paragraph

`[{` / `]}` - begin / end of block

`%` - jump to the matching parenthesis (cursor mus be on parenthesis)

`fP` - find first occurrence of P moving forward

`bE` - find first occurrence of E moving backward

`2fg` - find seccond occurrence of g on that line

`:14` - jump to line 14

`gf` - Open file name under cursor

# Editing


`i` - enter insert mode after cursor

`a` - enter insert mode before cursor

`I` - enter insert mode at bol

`A` - enter insert mode at eol

`o` - enter insert mode right after the current line

`O` - enter insert mode right before the current line

`s` - delete char under cursor and enter insert mode

`S` - substitute line

`x` - delete char under cursor

`X` - delete char behind cursor

`dd` - delete line

`dw` - delete word

`db` - delete word backwards

`dj` - delete current and following line

`cw` - change word (delete word and put in insert mode)

`cc` - change whole line

`ci"` - change everything between "

`ct"` - change everything until first occurrence of "

`ca"` - change everything between " including "

`y` - yank, copy

`yy` - copy entire line

`yw` - yank word

`>>` - indent line

`<<` - unindent line

`d0` - delete tab

`5>>` - indent 5 lines

`=3j` - autoindent next 3 lines

`=G` - autoindent whole file

`imode` + `<C-t>` - indent in insert mode

`imode` + `<C-d>` - unindent in insert mode

`U` - convert selected text to uppercase 
                                    
`u` - convert selected text to lowercase

`u` - undo

`<C-r>` - redo

# Visual mode


`v` - enter visual mode

`V` - enter line selection visual mode

`<C-v>` - enter block visual mode

`vib` - select all between parenthesis

`viB` - select all between curly braces

`vi"` - select all between `"`

`vi[` - select all between `[`

`vmode` + `carret under bracket (e.g. { )` + `%` - select all untill end `}`

`vmode` + `selection` + `>` - indent selected lines

`vmode` + `selection` + `=` - autoindent selected lines

# Searching


`:/searchterm` - top-down searching for `searchterm`

`:?searchterm` - bottom-up searching for `searchterm`

`*` - search word under carret

`:noh` - clear search highlights

`c/term` - change everything until `term` word

`:%s/term1/term2/g` - search and replace `term1` by `term2` in file. Valid operators are: `g` global, `c` confirmation, `i` insensitive

# Commands

`:w` - write modification in file

`:wq` - write modifications and quit

`:q` - quit

`:q!` - force quit without saving changes

`ZZ` - save and quit

`ZQ` - force quit without saving changes

`:e filepath` - open file from `filepath`

`:ene` - create a new file and open for editing

`:! lspci` - execute command `lspci` in terminal

`:r !curl --silent httplink` - get content from `httplink` and write it in current file

`:e $MYVIMRC` - edit .vimrc

`:so %` - source current file

`:ls` - list active buffers

`:bn` - open next buffer

`:bp` - open previous buffer

`:bf` - open first buffer

`:bd` - delete current buffer

`:bd3` - delete buffer 3

`:b2` - open buffer 2

`:tabe filepath` - open filepath in a new tab

`:tabe %` - open current buffer in a new tab

`gt` / `gT` - move forward / backward a tab

`:1,10 w outfile` - Saves lines 1 to 10 in outfile

`:1,10 w >> outfile`- Appends lines 1 to 10 to outfile

`:r infile`	- Insert the content of infile

`:23r infile` - Insert the content of infile under line 23


# Plugin specific

## EasyMotion

`<leader><leader>w` - activate easymotion forward search
`<leader><leader>b` - activate easymotion backwards search

## Emmet

`<C-y>,` - run emmet

## tComment

`<leader>c` - comment line or selections (remaped)

## Unite

`<leader>f` - file search (remaped)
`<leader>s` - fuzzy search files (remaped)
`<leader>space` - search buffer (remaped)
`<leader>b` - show bookmarks (remaped)

## Surround

`cs"<strong>` - change tags from `"` to `<strong></strong>`
`cst"` - surround with tag `"`
`ds"` - remove `"` tags from selection
`Vmode` + `S<p class="important">` - wrap selected line in tags