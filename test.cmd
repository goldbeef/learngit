install git 
	sudo apt-get install git 
config 
	git config --global user.name "goldbeef"
	git config --global user.eamil "goldbeef@163.com"

	
git init //初始化目录
git add file1 //添加文件
git commit -m　"test" //提交
git status　//查看状态
git diff filename　//查看文件变动
git log [--pretty=oneline]查看日志
git reflog //查看git命令的记录
git reset --hard HEAD　//回退某个版本
    HEAD^ HEAD^^   HEAD~100
git reset --hard commit_id
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
 o
 -----------------
