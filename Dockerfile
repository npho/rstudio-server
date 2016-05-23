## nampho2/rstudio-server a minimum functionality RStudio server in a CentOS environment.

FROM centos:latest

MAINTAINER "Nam Pho" nampho@me.com

RUN yum upgrade -y

RUN yum install initscripts -y # not included in Docker container

RUN yum install epel-release -y \
 && yum install R -y 

RUN yum install https://download2.rstudio.org/rstudio-server-rhel-0.99.902-x86_64.rpm -y
RUN export PATH=/usr/lib/rstudio-server/bin/:$PATH
RUN useradd rstudio
RUN echo "rstudio:rstudio" | chpasswd

CMD exec /usr/lib/rstudio-server/bin/rserver --server-daemonize 0

EXPOSE 8787 
