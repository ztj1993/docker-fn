# Docker is Fn Project Cli

这是一个 Fn Project Cli 程序。

### 项目应用
```
docker-compose build
docker-compose run fn --help
docker-compose run fn start -d
docker-compose run fn list contexts
docker-compose run fn init --runtime python hello-fn
docker-compose run fn create app hello-app
docker-compose run fn --verbose deploy --app hello-app --working-dir /srv/hello-fn --local
docker-compose run fn list apps
docker-compose run fn list functions hello-app
docker-compose run fn invoke hello-app hello-fn
docker-compose run fn inspect function hello-app hello-fn
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
