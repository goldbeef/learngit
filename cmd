git init
git add 
git commit -m
git status
git diff filename
git log
git log --pretty=oneline
git reset --hard HEAD
    HEAD^ HEAD^^   HEAD~100
git reset --hard commit_id
git reflog
git checkout -- filename
    recover last git_commit/git_add
git reset HEAD filename 
    drop the added file to stage

git rm filename
git commit -m "rm file"
git checkout -- filename

git remote add origin git@github.com:goldbeef/learngit.git

git push -u origin master
git push  origin master

git clone git@github.com:goldbeef/gitskills.git
git clone https://github.com/goldbeef/gitskills.git

-----------------
git checkout -b dev

git branch dev 
git checkout dev

git branch

git merge dev

git branch -d dev 
git push origin :dev
-----------------
git log --graph
-----------------
git merge --no-ff -m "merge with no-ff" dev
-----------------
debug branch
-----------------
git stash
git stash list
git stash pop
git stash apply stash@{0}
-----------------

git branch -D dev
-----------------
git remote
git remote -v
-----------------
git checkout -b dev origin/dev
git pull
git pull <remote> <branch>
git branch --set-upstream dev origin/dev
 git push origin dev
 -----------------
