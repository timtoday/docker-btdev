# 编译方法：
# docker build -t bt/dev .

#username: jofaokuo
#password: 888a0f05

FROM centos:7

WORKDIR /root
RUN yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && echo y | sh install.sh
EXPOSE 80 888 8888 3306 8080

RUN rm -f /www/server/panel/data/admin_path.pl

# 安装完成记得 复制bt的密码
# 启动起来 
# docker run -td -p 8888:8888 -p 888:888 -p 80:80 -p 8080:8080 -p 3306:3306 -v /Users/wang12/Workspace/docker/workspace:/www/wwwroot:cached --name btdev  -i bt/dev /bin/bash
# 记得修改 -v 参数里面本地目录路径
# bt 默认不会启动 
#去要attach 到里面 
# docker exec -it btdev bash
# 到shell 执行去启动 （重置密码也是这里）
#/etc/init.d/bt start
# 开始配置:
# http://localhost:8888


# 开启服务器方法
# docker start btdev
# docker exec -it btdev /etc/init.d/bt start
# 再去启动 bt里面的php mysql nginx

#停止
# docker stop btdev
