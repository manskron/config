# Random tips

### Navigation
`zz` centers current line.
`zt` puts current line at the top.
`zb` puts current line at the bottom.

`<ctrl>+e` scrolls down, while keeping cursor on line (accepts a count.)
`<ctrl>+y` scrolls up, while keeping cursor on line(accepts a count.)

`<ctrl>+o` / `<ctrl>+i` cycles back/forward through :jumps.
`g;` `g,` cycles back/forward through :changes.

---

Search can be chained after `c`.
So if I want to change everything up until `snakes` in the line below,
I can do `c/snakes<CR>`

`I want to change up until the word snakes`

This also works backward with `?`.

---

`ZZ` to close pane and save file.
`ZQ` to close pane without saving file.

### Commands

Using `:r`, we can insert the output of whatever command we run.
Example: `:r !ls` will give us the output of the ´ls` command.
