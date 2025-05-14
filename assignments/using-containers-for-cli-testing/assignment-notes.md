# Assignment: Using Containers for CLI Testing

This assignment is for using different Linux distributions to check on the `curl` cli tool version.

A CentOS 7 and Ubuntu 14.04 container will be used.

## Commands Used

```bash
docker container run -it --rm --name centos7 centos:7
curl --version
docker container run -it --rm --name alpine alpine:latest
curl --version
apk update && apk upgrade
apk add curl
docker container run -it --rm --name ubuntu ubuntu:latest
curl --version
apt update && apt upgrade && apt install curl -y
docker container run -it --rm --name ubuntu ubuntu:25.04
curl --version
apt update && apt upgrade && apt install curl -y
```

### Curl Versions

- CentOS 7 had `curl 7.29.0 (x86_64-redhat-linux-gnu)`
- Ubuntu 14.04 no longer supported
- Ubuntu (latest - 24.04 [noble]) `curl 7.81.0 (x86_64-pc-linux-gnu)` 
- Ubuntu (latest - 25.04 [plucky]) `curl 8.12.1 (x86_64-pc-linux-gnu)` 
- Alpine (latest) had `curl 8.12.1 (x86_64-alpine-linux-musl)`
