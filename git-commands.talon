tag: terminal
-



git discard changes:
    insert("git checkout -- .")

git discard untracked:
    insert("git clean -fd") 

git onstage changes:
    insert("git reset")

git stage changes:
    insert("git add .")



git previous branch:
    insert("git switch -")
    key(enter)

git next branch:
    insert("gnb")
    key(enter)


# figure out how to make this windows only
git push this branch:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)
    sleep(200ms)
    insert("git push origin ")
    edit.paste()
    key(enter)

git pull this branch:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)
    sleep(200ms)
    insert("git push origin ")
    edit.paste()
    key(enter)

git copy branch name:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)

git copy branch hash:
    insert("git rev-parse --short HEAD | scb")
    key(enter)


git cherry-pick:
    insert("git cherry-pick ")

git create branch from remote:
    insert("git switch --track origin/")


# not necessary but fun
git logo:
    insert("git log --oneline -n 25")
    key(enter)