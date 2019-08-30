FROM tomcat:8.5.38
# 设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/shanghai" > /etc/timezone

ENV LANG="zh_CN.UTF-8"
ENV JAVA_OPTS="-server -Dfile.encoding=UTF-8 -Xms1024m -Xmx1024m -XX:PermSize=256M -XX:MaxPermSize=600m -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=50983"

VOLUME ["/usr/local/tomcat/logs"]