FROM alpine:3.7

LABEL maintainer="yasudanoya"

# https://wiki.alpinelinux.org/wiki/Setting_the_timezone

RUN apk update && \
  apk add tzdata && \
  cp /usr/share/zoneinfo/Japan /etc/localtime && \
  apk del tzdata

RUN apk add zsh
RUN apk add vim
RUN apk add git
RUN apk add docker

CMD ["/bin/zsh"]
