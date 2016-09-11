# Docker: qorbani/curl

This is simple docker container for running bash with `curl` command.

## How to use it

This container can run separately and link to your container for debugging purposes.

```bash
docker run -p 80:80 --name=hello google/nodejs-hello
docker run -ti --link hello:hello qorbani/curl
```

## How to build it

```bash
docker login --username=qorbani
docker build -t qorbani/curl:latest -t qorbani/curl:v1.0 .
docker push qorbani/curl
```

