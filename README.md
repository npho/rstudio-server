# rstudio-server

[![Build Status](https://api.travis-ci.com/npho/rstudio-server.svg?branch=master&status=passed)](https://travis-ci.com/github/npho/rstudio-server)

CentOS container based deployment of RStudio server [[doc](https://rstudio.com/products/rstudio/download-server/redhat-centos/)].

Run the container with the following command and navigate to `127.0.0.1` or to the IP addressed provided from the `docker-machine ip` command on your local machine. Login with the username and password of `rstudio`.
```
docker run -d -p 80:8787 npho/rstudio-server
```
