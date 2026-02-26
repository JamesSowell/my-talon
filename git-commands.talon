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
    insert("git pull origin ")
    edit.paste()
    key(enter)

git copy branch name:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)

git copy branch hash:
    insert("git rev-parse --short HEAD | scb")
    key(enter)

git checkout main:
    insert("git checkout main")
    key(enter)

git checkout develop:
    insert("git checkout develop")
    key(enter)

git checkout development:
    insert("git checkout development")
    key(enter)

git checkout trunk:
    insert("git checkout trunk")
    key(enter)

git cherry-pick:
    insert("git cherry-pick ")

git create branch from remote:
    insert("git switch --track origin/")


# not necessary but fun
git logo:
    insert("git log --oneline -n 25")
    key(enter)