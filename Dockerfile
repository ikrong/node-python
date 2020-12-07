FROM node:10.19.0-alpine
WORKDIR /usr/src/app

LABEL maintainer ikrong <contact@ikrong.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && apk upgrade && \
    apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python

VOLUME /git
WORKDIR /git

CMD tail -f /dev/null
