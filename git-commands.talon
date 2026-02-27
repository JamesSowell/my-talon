tag: terminal
-



git discard changes:
    insert("git checkout -- .")

git discard untracked:
    insert("git clean -fd") 

git onstage changes:
    insert("git reset")
    key(enter)

git stage changes:
    insert("git add .")
    key(enter)



git previous branch:
    insert("git switch -")
    key(enter)

git next branch:
    insert("gnb")
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



git push this branch: user.git_push_this_branch()
git pull this branch: user.git_pull_this_branch()
git copy branch name: user.git_copy_branch_name()
git copy branch hash: user.git_copy_branch_hash()
