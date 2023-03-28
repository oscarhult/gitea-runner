![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oscarhult/gitea-runner/latest)

https://hub.docker.com/r/oscarhult/gitea-runner

```sh
docker run \
  --detach \
  --restart always \
  --env INSTANCE="https://gitea.com" \
  --env TOKEN="ZZZZZZZZZZZzzzzzzzzz" \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  oscarhult/gitea-runner:latest
```
