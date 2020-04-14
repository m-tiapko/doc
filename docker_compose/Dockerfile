FROM centos:7
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
ADD nginx-1.16.1-1.el7.ngx.x86_64.rpm /nginx-1.16.1-1.el7.ngx.x86_64.rpm
RUN yum install -y emacs mc tcl tk epel-release 
RUN yum install -y /nginx-1.16.1-1.el7.ngx.x86_64.rpm
#EXPOSE 443
#EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
