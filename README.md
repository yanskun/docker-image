# Docker

## docker hub

<https://hub.docker.com/r/yasudanaoya/initial>

## docker

### run command

```sh
docker run -it --rm -v $(pwd):/app
```

## docker-compose

### run command

```sh
# only first time
docker-compose build

docker-compose up -d
docker-compose exec yasuda zsh
```

## 使い方

DockerHub に image を push しているので、  
docker-compose.yml さえあれば動きます。
