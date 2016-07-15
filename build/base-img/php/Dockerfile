FROM registry.miguan.com/base
MAINTAINER jianbin_c, 546391242@qq.com
RUN yum install -y supervisor http://storage.ops.zhangshangduobao.net/Packages/nginx/docker-nginx-1.8.1-1.centos7.x86_64.rpm \
			       http://storage.ops.zhangshangduobao.net/Packages/php/docker-php-5.6.22-1.centos7.x86_64.rpm  && yum clean all
#于宿主机www用户的uid,gid保持一直,否则文件属组会出现问题
RUN groupadd www -g 302; useradd -u 302 -g www -c "Web Server" www -s /sbin/nologin -M
USER www
COPY files/supervisor/ /etc/supervisord.d/
COPY files/supervisor/supervisord.conf /etc/supervisord.conf
COPY files/php/etc/php.ini /usr/local/webserver/php/etc/php.ini
ENTRYPOINT ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
