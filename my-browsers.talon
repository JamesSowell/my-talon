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


# music
go ambience oblivion:
    app.tab_open()
    browser.go("https://www.youtube.com/watch?v=xFjpTF4-PgI&t=350s")

go ambience oblivion too:
    app.tab_open()
    browser.go("https://www.youtube.com/watch?v=vXj71r-WrQk&t=1199s")


go ambience lord of the rings:
    app.tab_open()
    browser.go("https://www.youtube.com/watch?v=d9YM_9CVmtc&t=1701s")

go ambience lord of the rings too:
    app.tab_open()
    browser.go("https://www.youtube.com/watch?v=5jceNNZD4oY")
