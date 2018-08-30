# docker 安装
ubuntu 16.04 64位安装方法:
https://docs.docker.com/install/linux/docker-ce/ubuntu

# 部署

* 启动 `docker-compose up -d`
* 停止 `docker-compose down`

# 其他
* RPC 端口 19887，可在`docker-compse.yml`配置映射

* 查看日志
 `sudo tail -f ./ulordcore/debug.log`

* 导入钱包
 请将 `wallet.dat` 放入 `./ulordcore/` 下面

# 问题
本环境跑在ubuntu 16.04, 如果其他系统存在问题请提下issue, 谢谢!
