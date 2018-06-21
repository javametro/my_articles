## config the git

* git config --global user.name "Your name"
* git config --global user.email "email@example.com"
* --global这个参数代表这台机器上所有的Git仓库都会使用这个配置
* git init
* git add file
* git commit -m "your comment"
* git status
* git diff 查看修改了什么
* git log / git log --pretty=oneline
* HEAD表示当前版本，上一个版本就是HEAD^,上上一个版本就是HEAD^^,再往上100个版本就是HEAD~100
* git reset --hard HEAD^ 回退到上一个版本 git reset --hard commit_id 跳转到指定版本。
* git reflog 查看每一次的命令
