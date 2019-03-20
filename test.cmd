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
	git push origin dev:dev //创建远端分支　

	git branch -d dev //删除本地分支 
	git push origin --delete dev //删除远端分支
	git branch -D dev //强制删除某个未合并分支

	git merge dev //合分支
		冲突解决:
			手动的将一个一个的文件解决，add, commit 
	git merge --no-ff -m "merge with no-ff" dev
		禁用fast-forward
	git log --graph//查看分支合并图
暂存状态:
	git stash //保存状态
	git stash list　//查看状态
	git stash pop　//pop一个状态
	git stash apply stash@{0}　//使用一个状态　
	git stash drop stash@{0} //删除一个状态
多人协作
	git remote //查看远端分支
		git remote -v

	git checkout -b dev origin/dev //从远端拉取分支
	git pull　//远端拉取代码
	git push origin dev //代码推到远端
	git branch --set-upstream dev origin/dev　//设置本地和远端的关联
标签管理
	git tag v0.1 //创建tag
		－a //签名
		-m //描述
	git tag v0.1 12321312//在某个提交上打标签
	
	git tag //查看所有tag
	git show v0.1 //查看指定版本的tag 
	
	git tag -d v0.1 //本地删除tag
	git push origin v0.1 //推送指定tag到远端
	git push origin --tags //一次推送所有tag到远端


	git tag -d v0.1 //删除远端tag
	git push origin refs/tags/v0.1

	git fetch origin --tags//拉去远端所有tag

	
