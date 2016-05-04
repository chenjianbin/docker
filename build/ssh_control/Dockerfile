FROM centos
MAINTAINER jianbin_c, 546391242@qq.com
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
RUN yum update -y && yum clean all
RUN yum install openssh-server subversion git -y && yum clean all
#生成秘钥对
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
#于宿主机www用户的uid,gid保持一直
RUN groupadd www -g 302; useradd -u 302 -g www -c "Web Server" www -s /sbin/nologin -M
COPY files/authorized_keys /root/.ssh/authorized_keys
COPY files/sshd_config /etc/ssh/sshd_config
#解决ssh登录无ENV设置的变量的问题
COPY files/profile /etc/profile
CMD ["/usr/sbin/sshd","-D"]
