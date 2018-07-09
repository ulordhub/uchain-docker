# ulord docker 部署方法
## 编译
docker build -t ut/ulord .

## 运行
docker run -d -p 19887:19887 -p 19889:19889 --name ulord -v ./ulordcore:/root/.ulordcore ut/ulord

## 停止
docker stop ulord

# 使用docker-compose 一键部署
`docker-compose up`

# 其他
* RPC
 rpc 端口 19887

* 进入docker
 `docker exec -it ulord /bin/bash`

* 查看日志
 `sudo tail -f ./ulordcore/debug.log`

* 导入钱包
 请将 `wallet.dat` 放入 `./ulordcore/` 下面
