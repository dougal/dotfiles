# Today I learned - Vim / Neovim

Random things I have discovered about Vim that I will probably forget if I
don't write them down.


## Navigation

Go to the previous buffer in the current window with `CTRL-^` or `CTRL-6` (same
key).

Step back through the jumplist with `CTRL-o`, and forward with `ctrl-i`


## Find and Replace

Get confirmation on each substitution by adding a `c` to the options at the end of
the statement:

```shell
:s%/find/replace/gc
```

Making a visual selection then typing a substitution command will replace only
the matches in the selection. 


## Text Objects

`CTRL-a` will increment numbers. Either the number under the cursor, or the
next number on the line. `CTRL-x` does the opposite. Be careful not to hit `z`.
Both of these will operate on every number in a visual selection.

`gCTRL-a` will increment all numbers in a visual selection to be a sequence.

Using a movement with a bracket/quote/etc will operate on the current or next
matching node in the line. For example, `ci"` will enter insert mode in the
current or next set of double quotes on the current line.

`gi` will jump back to the last insert in the current buffer, and enter insert
mode.

`gI` will jump to the first column, and enter insert mode. `I` only goes to the
first non-blank character on the line.

`gcap` will comment out a paragraph, which works for methods/functions in
languages. This works in Ruby. `gcgc` will uncomment the current line and any
adjacent commented lines. If using `comment.nvim`,
then `gcA` will open a trailing comment on the current line.


## Alignment

`=` in visual mode will automatically align the selected lines. Also works in
normal mode with a motion.

`==` in normal mode will automatically align the current line.

## Files

When executing a command, `%` is the current file path. For example, if editing
the current `.vimrc`, it could be reloaded with:

    :so %

To reload the current file, discarding changes since last write:

    :e!


## Variables

To see the value of a variable, use `set`, the variable name, followed by `?`.
For example, to see how many items of history there are:

    :set history?


## Syntax Highlighting

Nginx syntax highlighting can be found on the [vim.org scripts
site](https://www.vim.org/scripts/script.php?script_id=1886), and after
download can be enabled with:

    :setfiletype nginx

The short version of this is:

    :setf nginx


## HTML Output

The current buffer can be outputted as HTML complete with syntax highlighting with:

    :TOhtml


## URLs

Whilst hovering over a URL or file path use `gx` to use the system `open`
functionality.


## Normal Mode for Commands

When in the command line (`:` or `/` etc), hit `CTRL-f` to enter the command
window. Edit as required, then hit `<enter>`.

Allows use of regular Vim keystrokes to edit a command.


## LSP Stuff

Use `K` in normal mode to view information about the variable or function under
the cursor.

Navigate between diagnostics with `[d` to go to the next diagnostic, and `]d`
to go to the previous diagnostic.
