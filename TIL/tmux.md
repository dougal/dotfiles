# Today I learned - Tmux

Random things I have discovered about Tmux that I will probably forget if I
don't write them down.

## Moving windows

To swap windows at positions `1` and `3`, use `move-window`:

```
move-window -s 1 -t 3
```

`move-window` is aliased to `movew`.

## Renumbering all windows

Renumber all windows in sequential order:

```
movew -r
```
