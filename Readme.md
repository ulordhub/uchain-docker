# ulord docker 部署方法
## 编译
docker build -t ut/ulord .

## 运行
docker run -d -p 19887:19887 -p 19889:19889 --name ulord -v /data/ulordcore:/root/.ulordcore ut/ulord

## 停止
docker stop ulord

## 其他
* RPC
 rpc 端口 19887

* 进入docker
 `docker exec -it ulord /bin/bash`

* 查看日志
 `sudo tail -f /date/ulordcore/debug.log`
