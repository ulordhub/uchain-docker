# ulord docker 编译安装
## build
docker build -t ut/ulord .

## run
docker run -d -p 19887:19887 -p 19889:19889 --name ulord -v /data/ulordcore:/root/.ulordcore ut/ulord

## RPC
rpc 端口 19887

## 进入docker
 `docker exec -it ulord /bin/bash`

## 查看日志
 `sudo tail -f /date/ulordcore/debug.log`
