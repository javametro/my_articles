Git对象包括三个部分：
类型
大小
内容

四种类型的对象： blob， tree， commit， tag
blob： 用来存储文件数据，通常是一个文件
tree： 有点像一个目录，它管理一些tree或者blob
commit： 一个commit指向一个tree，它用来标记项目某一个特定时间点的状态，包括时间点的元数据， 如时间戳， 最近一次提交的作者， 指向上次提交的指针。
tag： 用来标记一个提交

与SVN的区别：
SVN： 增量文件系统，它们存储每次提交之间的差异
Git： 把每次提交的文件的全部内容都会记录下来

git show 用来查看一个blob对象里面的内容
git ls-tree 用来查看Tree对象
git show -s --pretty=raw 2a3a2a80 查看某个commit
git cat-file tag v1.5.0 查看tag对象
