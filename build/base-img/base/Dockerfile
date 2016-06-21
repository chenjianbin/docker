FROM centos
MAINTAINER jianbin_c, 546391242@qq.com
#于宿主机www用户的uid,gid保持一直,否则文件属组会出现问题
RUN yum install -y http://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN yum update -y && yum clean all
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
COPY files/localtime /etc/localtime
