# docker 安装
ubuntu 16.04 64位安装方法:
https://docs.docker.com/install/linux/docker-ce/ubuntu

# docker 部署方式一
dockerfile 手动部署
* 编译
 `docker build -t ulord:master .`

* 运行
 `docker run -d -p 19887:19887 -p 19889:19889 --name ulord -v `pwd`/ulordcore:/root/.ulordcore ulord:master`

* 停止
 `docker stop ulord`

# docker 部署方式二
Docker-compose 一键部署

* 启动
 `docker-compose up -d`

* 停止
 `docker-compose down`


# 其他
* RPC 端口 19887

* 查看日志
 `sudo tail -f ./ulordcore/debug.log`

* 导入钱包
 请将 `wallet.dat` 放入 `./ulordcore/` 下面

# 问题
本环境跑在ubuntu 16.04, 如果其他系统存在问题请提下issue, 谢谢!
