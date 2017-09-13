## Ubuntu
* 更新系统到最新状态
* sudo sh -c "echo deb https://get.docker.io/ubuntu docker main" > /etc/apt/sources.list.d/docker.list
* 更新APT源 curl -s https://get.docker.io/gpg | sudo apt-key add -
* sudo apt-get update
* sudo apt-get install lxc-docker or curl https://get.docker.io | sudo sh
