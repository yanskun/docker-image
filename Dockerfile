FROM alpine:3.7

LABEL maintainer="yasudanoya"

# https://wiki.alpinelinux.org/wiki/Setting_the_timezone

RUN apk update && \
  apk add tzdata && \
  cp /usr/share/zoneinfo/Japan /etc/localtime && \
  apk del tzdata

RUN apk add zsh vim git docker

CMD /bin/zsh
