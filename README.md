
# 编译方法：

    docker build -t bt/dev .

# 创建容器

    docker run -td -p 8888:8888 -p 888:888 -p 80:80 -p 8080:8080 -p 3306:3306 -v /Users/wang12/Workspace/docker/workspace:/www/wwwroot:cached --name btdev  -i bt/dev /bin/bash
    
    ## 记得修改 -v 参数里面本地目录路径
    ## bt 默认不会启动 

# 启动BT
    docker exec -it btdev /etc/init.d/bt start
    
    # 到shell 执行去启动 （重置密码也是这里）
    
# 开始配置:
    # http://localhost:8888
    
    
