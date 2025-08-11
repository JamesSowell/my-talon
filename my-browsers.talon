tag: browser
-

new window:
    app.tab_open()
    insert('google')
    key(shift-enter)
    app.tab_open()
    key(ctrl-shift-tab)
    app.tab_close()
    key(shift-enter)

# devtools
show devtools:
    key(ctrl-shift-i)

dev right:
    key(ctrl-])


dev left:
    key(ctrl-[)

inspect element:
    key(ctrl-shift-c)

clear console:
    key(ctrl-l)

scout:
    key(ctrl-f)


# for night reader extension
dark theme:
    key(alt-shift-d)