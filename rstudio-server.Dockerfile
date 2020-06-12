## npho/rstudio-server a minimum functionality RStudio server in a CentOS environment

FROM centos:7

MAINTAINER "Nam Pho" nampho@me.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum upgrade -y

RUN yum install -y initscripts # not included in Docker container

RUN rpm --import https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
RUN yum install -y epel-release
RUN yum install -y R make gcc gcc-c++ libcurl-devel libxml2-devel openssl-devel

RUN yum install -y https://download2.rstudio.org/server/centos6/x86_64/rstudio-server-rhel-1.3.959-x86_64.rpm 
RUN export PATH=/usr/lib/rstudio-server/bin/:$PATH
RUN useradd rstudio
RUN echo "rstudio:rstudio" | chpasswd

CMD exec /usr/lib/rstudio-server/bin/rserver --server-daemonize 0

EXPOSE 8787 
