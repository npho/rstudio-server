# rstudio-server

[![Build Status](https://travis-ci.org/nampho2/rstudio-server.svg?branch=master)](https://travis-ci.org/nampho2/rstudio-server)

CentOS container based deployment of RStudio server.

Run the container with the following command and navigate to `127.0.0.1` or to the IP addressed provided from the `docker-machine ip` command on your local machine. Login with the username and password of `rstudio`.
```
docker run -d -p 80:8787 nampho2/rstudio-server
```
