FROM centos
MAINTAINER jianbin_c, 546391242@qq.com
#于宿主机www用户的uid,gid保持一直,否则文件属组会出现问题
RUN groupadd www -g 302; useradd -u 302 -g www -c "Web Server" www -s /sbin/nologin -M
RUN yum install -y http://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN yum update -y && yum clean all
RUN yum install -y supervisor  http://storage.ops.zhangshangduobao.net/Packages/nginx/docker-nginx-1.8.1-1.centos7.x86_64.rpm \
			       http://storage.ops.zhangshangduobao.net/Packages/php/docker-php-5.6.22-1.centos7.x86_64.rpm  && yum clean all
COPY files/supervisor/ /etc/supervisord.d/
COPY files/supervisor/supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
