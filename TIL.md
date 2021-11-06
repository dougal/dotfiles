# Today I learned

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

`gi` will jump back to the last insert in the current buffer.


## Commands

When executing a command, `%` is the current file path. For example, if editing
the current `.vimrc`, it could be reloaded with:

    :so %
