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

# Branching Methods
git merge theirs:
    insert("git merge   -X theirs")
    key(left:10)

git merge ours:
    insert("git merge   -X ours")
    key(left:8)

git previous branch:
    insert("git switch -")
    key(enter)

git next branch:
    insert("gnb")
    key(enter)

git push this branch:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)
    insert("git push origin ")
    edit.paste()

git pull this branch:
    insert("git rev-parse --abbrev-ref HEAD | scb")
    key(enter)
    insert("git push origin ")
    edit.paste()

git copy branch name:
    insert("git rev-parse --abbrev-ref HEAD | scb")

git copy branch hash:
    insert("git rev-parse --short HEAD")

git create branch from remote:
    insert("git switch --track origin/")
