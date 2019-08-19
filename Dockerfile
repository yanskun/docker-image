FROM alpine:3.7

LABEL maintainer="yasudanaoya"

ENV mydir /app

WORKDIR ${mydir}

RUN apk update && \
  apk add zsh git vim docker zsh-vcs && \
  apk add py-pip python-dev python3 libffi-dev openssl-dev gcc libc-dev make && \
  pip install --upgrade pip && \
  pip install --quiet docker-compose~=1.24.1 && \
  apk --no-cache add tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del --purge tzdata gcc libc-dev make libffi-dev py-pip python3 && \
  rm -rf /var/cache/apk/*

ADD https://raw.githubusercontent.com/yasudanaoya/dotfiles/docker/zsh/.zshrc /root/.zshrc
ADD https://raw.githubusercontent.com/yasudanaoya/dotfiles/docker/vim/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/yasudanaoya/dotfiles/docker/.gitconfig /root/.gitconfig

CMD /bin/zsh
