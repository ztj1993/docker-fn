# Docker is Fn Project Cli

这是一个 Fn Project Cli 程序。

### 项目应用
```
# 构建镜像
docker compose build
# 查看命令示例
docker compose run fn --help
# 启动服务(默认已启动)
# docker compose run fn start -d
# 查看上下文
docker compose run fn list contexts
# 创建一个函数
docker compose run fn init --runtime python hello-fn
# 创建一个应用
docker compose run fn create app hello-app
# 部署函数到应用
docker compose run fn --verbose deploy --app hello-app --working-dir /srv/hello-fn --local
# 查看所有应用
docker compose run fn list apps
# 查看应用下的函数
docker compose run fn list functions hello-app
# 调用应用下的函数
docker compose run fn invoke hello-app hello-fn
# 检查应用下的函数
docker compose run fn inspect function hello-app hello-fn
```

### 环境变量
- FN_API_URL
- FN_REGISTRY

### 容器数据
- /srv
- /root/.fn
- /var/run/docker.sock

### 参考连接
- https://github.com/fnproject/cli/blob/master/CONTEXT.md
- https://github.com/fnproject/ui
