安装 git 
	sudo apt-get install git 
配置 git 
	git config --global user.name "goldbeef"
	git config --global user.eamil "goldbeef@163.com"

本地仓库操作:
	git init //初始化目录
	git add file1 //添加文件
	git commit -m　"test" //提交
	git status　//查看状态
	git diff [commit_id] filename　//比较工作区和某个提交的版本
	git log [--pretty=oneline]查看日志
	git reflog //查看git命令的记录
	git reset --hard HEAD　//回退某个版本
		HEAD^ HEAD^^   HEAD~100
		git reset --hard commit_id
		git reset HEAD filename 
	git checkout -- filename
		撤销操作，回到最近一个 git-commit/git-add
	git rm filename //删除文件
远程仓库:
	git remote add origin git@github.com:goldbeef/learngit.git　//和远程仓库关联
	git push -u origin master　//推送到远端
		git push  origin master
	git clone git@github.com:goldbeef/gitskills.git //克隆代码
		git clone https://github.com/goldbeef/gitskills.git
分支管理:
	git branch -a //查看所有分支
	git checkout -b dev　//创建新的分支并切换
		git branch dev //创建新的
		git checkout dev　//切换


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
