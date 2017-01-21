# docker-agendash

[![dockeri.co](http://dockeri.co/image/lgatica/docker-agendash)](https://hub.docker.com/r/lgatica/docker-agendash/)

> Docker image for agendash

## Use

## Run with mongo docker instance

```sh
docker run -d --restart=always --name mongo mongo
docker run -d --restart=always --name agendash -p 3000:3000 --link mongo:mongo lgatica/docker-agendash
```

## Run with a mongo uri

```sh
docker run -d --restart=always --name agendash -p 3000:3000 -e MONGODB_URI=mongodb://192.168.1.2/agenda lgatica/docker-agendash
```

## Run with a mongo uri and other collection

```sh
docker run -d --restart=always --name agendash -p 3000:3000 -e MONGODB_URI=mongodb://192.168.1.2/agenda -e MONGODB_COLLECTION=agendaCollection lgatica/docker-agendash
```
