## nampho2/rstudio-server a minimum functionality RStudio server in a CentOS environment.

FROM centos:7

MAINTAINER "Nam Pho" nampho@me.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum upgrade -y

RUN yum install initscripts -y # not included in Docker container

RUN rpm --import https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
RUN yum install epel-release -y \
 && yum install R -y

RUN yum install https://download2.rstudio.org/server/centos6/x86_64/rstudio-server-rhel-1.3.959-x86_64.rpm -y
RUN export PATH=/usr/lib/rstudio-server/bin/:$PATH
RUN useradd rstudio
RUN echo "rstudio:rstudio" | chpasswd

CMD exec /usr/lib/rstudio-server/bin/rserver --server-daemonize 0

EXPOSE 8787 
