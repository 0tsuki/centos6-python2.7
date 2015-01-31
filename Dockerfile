FROM centos:6
MAINTAINER OTSUKI Shinsuke
RUN yum groupinstall -y "Development tools"
RUN yum install -y zlib-devel
RUN yum install -y bzip2-devel
RUN yum install -y openssl-devel
RUN yum install -y ncurses-devel
RUN yum install -y sqlite-devel
RUN yum install -y mysql
RUN yum install -y tar
RUN cd /opt \
  && curl --remote-name https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz \
  && tar xf Python-2.7.6.tar.xz \
  && cd Python-2.7.6 \
  && ./configure --prefix=/usr/local \
  && make \
  && make altinstall
