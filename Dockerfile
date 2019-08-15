FROM alpine:3.7

LABEL maintainer="yasudanoya"

ENV mydir /app

WORKDIR ${mydir}

RUN apk update && \
  apk add zsh git vim docker && \
  apk --no-cache add tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del tzdata

ADD https://raw.githubusercontent.com/yasudanaoya/dotfiles/docker/zsh/.zshrc /root/.zshrc
ADD https://raw.githubusercontent.com/yasudanaoya/dotfiles/docker/vim/.vimrc /root/.vimrc

CMD /bin/zsh
